import json
import socket
import asyncio
import mimetypes


class BaseModel:

    default: str

    def __init__(self, s) -> None:
        temp = json.loads(s)

        for name, value in temp.items():
            if name in self.__annotations__:
                value = self.__annotations__[name](value)

            self.__setattr__(name, value)


class Request:

    method: str
    url: str
    version: str
    queries: dict[str, str]
    headers: dict[str, str]
    cookies: dict[str, str]
    pathvars: dict[str, str]
    content: bytes

    def __init__(self, byte_request: bytes) -> None:

        byte_request, self.content = byte_request.rsplit(b"\r\n", 1)
        request_lines = byte_request.decode().split("\r\n")

        self.method, self.url, self.version = request_lines[0].split(" ")

        self.queries = {"item": self.content}

        if "?" in self.url:
            self.url, queries = self.url.split("?", 1)

            for query in queries.split("&"):
                name, value = query.split("=", 1)
                self.queries[name.strip()] = value.strip()

        self.url = self.url.strip("/")

        self.headers = {}

        for line in request_lines[1:-1]:
            name, value = line.split(":", 1)
            self.headers[name.strip().title()] = value.strip()

        self.cookies = {}

        if "Cookie" in self.headers:
            for cookie in self.headers["Cookie"].split(";"):
                name, value = cookie.split("=", 1)
                self.cookies[name.strip()] = value.strip()

        self.pathvars = {}


class Response:

    closed: bool
    version: str
    status: int
    reason: str
    headers: dict[str, str]
    cookies: dict[str, dict[str, object]]
    content: bytes

    def __init__(
        self,
        status: int = 200,
        reason: str = "OK",
        headers: dict[str, str] = {},
        content: bytes = b"",
    ) -> None:

        self.version = "HTTP/1.1"
        self.status = status
        self.reason = reason
        self.headers = {name.title(): value for name, value in headers.items()}
        self.cookies = {}
        self.content = content

    def get_cookie(self, name: str) -> str:

        cookie = f"Set-Cookie: {name}={self.cookies[name]['value']}"

        if "expires" in self.cookies[name]:
            cookie += f"; Expires={self.cookies[name]['expires']}"

        if "max-age" in self.cookies[name]:
            cookie += f"; Max-Age={self.cookies[name]['max-age']}"

        if "domain" in self.cookies[name]:
            cookie += f"; Domain={self.cookies[name]['domain']}"

        if "path" in self.cookies[name]:
            cookie += f"; Path={self.cookies[name]['path']}"

        if "secure" in self.cookies[name]:
            cookie += "; Secure"

        if "httponly" in self.cookies[name]:
            cookie += "; HttpOnly"

        if "samesite" in self.cookies[name]:
            cookie += f"; SameSite={self.cookies[name]['samesite']}"

        return cookie

    def set_cookie(
        self,
        name: str,
        value: str,
        expires: str = "",
        max_age: int = 0,
        domain: str = "",
        path: str = "/",
        secure: bool = False,
        httponly: bool = False,
        samesite: str = "",
    ) -> None:

        self.cookies[name] = {"value": value}

        if expires:
            self.cookies[name]["expires"] = expires

        if max_age:
            self.cookies[name]["max-age"] = max_age

        if domain:
            self.cookies[name]["domain"] = domain

        if path:
            self.cookies[name]["path"] = path

        if secure:
            self.cookies[name]["secure"] = secure

        if httponly:
            self.cookies[name]["httponly"] = httponly

        if samesite:
            self.cookies[name]["samesite"] = samesite

    def del_cookie(self, name: str) -> None:

        del self.cookies[name]

    def close(self) -> bytes:

        status = f"{self.version} {self.status} {self.reason}\r\n"
        headers = "".join(
            f"{name.title()}: {value}\r\n" for name, value in self.headers.items()
        )
        cookies = "".join(f"{self.get_cookie(name)}\r\n" for name in self.cookies)

        return f"{status}{headers}{cookies}\r\n".encode() + self.content


class Graceful:

    Timeout: int = 130
    Bufsize: int = 2**10

    def __init__(self, host: str = "localhost", port: int = 8080) -> None:

        self.live: bool = True
        self.host: str = host
        self.port: int = port
        self.apps: dict[str, object] = {}

    async def _handler(
        self, request: Request, response: Response, app: callable
    ) -> bytes:

        kwargs = {
            "request": request,
            "response": response,
            **{
                name.replace("-", "_").lower(): value
                for name, value in request.queries.items()
            },
            **{
                name.replace("-", "_").lower(): value
                for name, value in request.headers.items()
            },
            **{
                name.replace("-", "_").lower(): value
                for name, value in request.cookies.items()
            },
            **{
                name.replace("-", "_").lower(): value
                for name, value in request.pathvars.items()
            },
        }

        for name, value in app.__annotations__.items():
            if name in kwargs and not isinstance(kwargs[name], value):
                for _type in value.__args__ if hasattr(value, "__args__") else (value,):
                    try:
                        kwargs[name] = _type(kwargs[name])
                        break

                    except TypeError:
                        kwargs[name] = _type()

        kwargs = {
            name: value
            for name, value in kwargs.items()
            if name in app.__code__.co_varnames[: app.__code__.co_argcount]
        }
        result = (
            await app(**kwargs) if asyncio.iscoroutinefunction(app) else app(**kwargs)
        )

        if isinstance(result, Response):
            return result.close()

        if isinstance(result, (tuple, list, dict)):
            response.headers.setdefault("Content-Type", "application/json")
            result = json.dumps(result)

        if isinstance(result, str):
            if response.headers.get("Content-Type") == "text/file":
                with open(result, "rb") as f:
                    mimetype, charset = mimetypes.guess_type(result)
                    response.headers["Content-Type"] = f"{mimetype}; charset={charset}"
                    result = f.read()

            else:
                result = result.encode()

        if isinstance(result, bytes):
            response.headers.setdefault("Content-Type", "application/json")
            response.headers.setdefault("Content-Length", len(result))
            response.content = result

        return response.close()

    async def _manager(self, request: Request) -> bytes:

        for url, kwargs in self.apps[request.method].items():
            pathvars = {}
            app_url = url.split("/")
            req_url = request.url.split("/")

            if len(app_url) > len(req_url):
                continue

            for i in range(len(app_url)):
                if app_url[i].startswith("{") and app_url[i].endswith("}"):
                    varname, *varpaths = app_url[i].strip("{}").split(":")
                    pathvars[varname] = req_url[i]

                    for j, varpath in enumerate(varpaths, i):
                        pathvars[varpath] = "/".join(req_url[j:])

                    if i == len(app_url) and i < len(req_url) and not varpaths:
                        break

                elif app_url[i] != req_url[i]:
                    break

            else:
                request.pathvars = pathvars
                app, response, args, kwargs = kwargs.values()

                return await self._handler(request, response(*args, **kwargs), app)

    async def _client(self, conn: socket.socket) -> None:

        loop = asyncio.get_event_loop()
        data = await asyncio.wait_for(loop.sock_recv(conn, self.Bufsize), self.Timeout)

        if data:
            await loop.sock_sendall(conn, await self._manager(Request(data)))

        conn.close()

    async def _server(self) -> None:

        loop = asyncio.get_event_loop()

        while self.live:
            conn, _ = await loop.sock_accept(self.server)
            loop.create_task(self._client(conn))

        self.server.close()

    def run(self) -> None:

        self.server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.server.bind((self.host, self.port))
        self.server.setblocking(False)
        self.server.listen()

        asyncio.run(self._server())

    def route(
        self,
        method: str,
        url: str,
        response: Response = Response,
        *args: tuple[object, ...],
        **kwargs: dict[str, object],
    ) -> callable:

        if method not in self.apps:
            self.apps[method] = dict()

        def routing(app: callable) -> None:
            self.apps[method][url.strip("/")] = {
                "app": app,
                "response": response,
                "args": args,
                "kwargs": kwargs,
            }

        return routing
