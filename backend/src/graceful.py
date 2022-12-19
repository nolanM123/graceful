import json
import socket
import asyncio
import mimetypes
from typing import Callable


class Request:
    def __init__(self, request: str) -> None:

        # preprocessing
        feilds: list[str] = request.split("\r\n")

        # status line
        self.method: str
        self.url: str
        self.scheme: str
        self.method, self.url, self.scheme = feilds[0].split(" ")

        # query
        self.query: dict[str, str] = dict()
        self.url, *queries = self.url.split("?")
        self.url = self.url.strip("/")

        for query in queries:
            self.query = {
                key: item
                for key, item in (kwargs.split("=") for kwargs in query.split("&"))
            }

        # headers
        self.headers: dict[str, str] = dict()

        if len(feilds[:-2]) > 2:
            self.headers = {
                key: item for key, item in (kwarg.split(": ") for kwarg in feilds[1:-2])
            }

        # cookies
        self.cookies: dict[str, str] = dict()

        if self.headers.get("cookies"):
            self.cookies = {
                key: item
                for key, item in (
                    kwargs.split("=") for kwargs in self.headers["cookies"].split("; ")
                )
            }

        # content
        self.content: str = feilds[-1]


class Response:
    def __init__(
        self,
        scheme: str = "HTTP/1.1",
        status: int = 200,
        reason: str = "OK",
        headers: dict[str, object] | None = None,
        cookies: dict[str, str] | None = None,
        content: object = "",
    ) -> None:

        if not headers:
            headers = dict()

        else:
            headers = {key.title(): item for key, item in headers.items()}

        if not cookies:
            cookies = dict()

        self.scheme: str = scheme
        self.status: int = status
        self.reason: str = reason
        self._headers: dict[str, object] = headers
        self._cookies: dict[str, str] = cookies
        self._content: object = content

    def get_header(self, header: str) -> object | None:

        return self._headers.get(header)

    def get_cookie(self, name: str) -> str | None:

        return self._cookies.get(name)

    def set_header(self, header: str, value: object, default: bool = False) -> None:

        if header not in self._headers and default or not default:
            self._headers[header.title()] = value

    def set_cookie(
        self,
        name: str,
        value: object,
        expires: str = "",
        max_age: str = "",
        domain: str = "",
        path: str = "",
        secure: bool = False,
        httponly: bool = False,
        samesite: str = "",
        default: bool = True,
    ) -> None:

        if name not in self._cookies and default or not default:
            self._cookies[name] = f"Set-Cookie: {name}={value}"
            self._cookies[name] += f"; Expires={expires}" if expires else ""
            self._cookies[name] += f"; Max-Age={max_age}" if max_age else ""
            self._cookies[name] += f"; Domain={domain}" if domain else ""
            self._cookies[name] += f"; Path={path}" if path else ""
            self._cookies[name] += f"; Secure" if secure else ""
            self._cookies[name] += f"; HttpOnly" if httponly else ""
            self._cookies[name] += f"; SameSite={samesite}" if samesite else ""

    def render(self, path: str) -> None:
        try:
            document = open(path, "rb")
            self.set_header(
                "content-type",
                "{}; charset={}".format(*mimetypes.guess_type(path)),
                True,
            )
            self._content = document.read()
            document.close()

        except FileNotFoundError:
            self.status = 404
            self.reason = "Not Found"

    def encode(self, encoding="UTF-8", errors="strict") -> bytes:

        # content
        fcontent: object = self._content

        if isinstance(fcontent, dict | tuple | list):
            fcontent = json.dumps(fcontent)

        if not isinstance(fcontent, bytes):
            fcontent = str(fcontent).encode(encoding, errors)

        # cookies
        fcookies: bytes = "".join(
            "{}\r\n".format(cookie) for cookie in self._cookies.values()
        ).encode(encoding, errors)

        # headers
        fheaders: bytes = "".join(
            "{}: {}\r\n".format(key, item) for key, item in self._headers.items()
        ).encode(encoding, errors)

        if not self.get_header("content-length"):
            fheaders += f"Content-Length: {len(fcontent)}\r\n".encode(encoding, errors)

        # status line
        fstatus: bytes = f"{self.scheme} {self.status} {self.reason}\r\n".encode(
            encoding, errors
        )

        return fstatus + fheaders + fcookies + b"\r\n" + fcontent

    @property
    def content(self) -> object:

        return self._content

    @content.setter
    def content(self, content: object) -> None:

        if not isinstance(content, bool | None):
            self._content = content


class Graceful:

    TIMEOUT: int = 130
    BUFSIZE: int = 2**10

    def __init__(self, host: str = "localhost", port: int = 8080) -> None:

        self.live: bool = True
        self.host: str = host
        self.port: int = port
        self.routes = dict()

    def run(self) -> None:

        self._socket: socket.socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self._socket.bind((self.host, self.port))
        self._socket.setblocking(False)
        self._socket.listen()

        asyncio.run(self._server())

    async def _server(self) -> None:

        loop: asyncio.AbstractEventLoop = asyncio.get_event_loop()

        while self.live:
            loop.create_task(self._client(*await loop.sock_accept(self._socket)))

        self._socket.close()

    async def _client(self, conn: socket.socket, addr: str) -> None:

        loop: asyncio.AbstractEventLoop = asyncio.get_event_loop()

        while True:
            try:
                # get request
                request = (
                    await asyncio.wait_for(
                        loop.sock_recv(conn, self.BUFSIZE),
                        self.TIMEOUT,
                    )
                ).decode("utf8", "strict")

                # client disconnection test
                if not request:
                    raise TimeoutError

                # get response
                response = await loop.create_task(self._handler(Request(request)))

                # send response
                if response:
                    await loop.sock_sendall(conn, response.encode("utf8", "strict"))

            except TimeoutError:
                conn.close()
                break

            except UnicodeDecodeError or UnicodeEncodeError:
                pass

    async def _handler(self, request: Request) -> Response | None:

        loop: asyncio.AbstractEventLoop = asyncio.get_event_loop()

        global_params: dict[str, object] = {
            "request": request,
            **{key.replace("-", "_"): item for key, item in request.query.items()},
            **{key.replace("-", "_"): item for key, item in request.headers.items()},
            **{key.replace("-", "_"): item for key, item in request.cookies.items()},
        }

        # application path matching
        for path, meta in self.routes.get(request.method, dict()).items():
            path_vars = dict()
            app_dirs = path.split("/")
            req_dirs = request.url.split("/")

            # path matching
            while app_dirs and req_dirs:
                app_dir = app_dirs.pop(0)
                req_dir = req_dirs.pop(0)

                if app_dir.startswith("{") and app_dir.endswith("}"):
                    dir_var, *dir_path = app_dir[1:-1].split(":")

                    if app_dir:
                        path_vars[dir_var] = req_dir

                    if dir_path:
                        path_vars[dir_path[0]] = "/".join((req_dir, *req_dirs))

                        if not app_dirs:
                            req_dirs.clear()

                elif app_dir != req_dir:
                    app_dirs.append("__failed__")

                    break

            # application execution
            if not (app_dirs or req_dirs):
                # global / local variable initalization
                global_params.update(
                    {"response": Response(*meta["args"], **meta["kwargs"]), **path_vars}
                )
                local_params: tuple[object, ...] = tuple(
                    global_params.get(var)
                    for var in meta["app"].__code__.co_varnames[
                        : meta["app"].__code__.co_argcount
                    ]
                )

                # application async / non-async execution
                global_params["response"].content = (
                    await loop.create_task(meta["app"](*local_params))
                    if asyncio.iscoroutinefunction(meta["app"])
                    else meta["app"](*local_params)
                )

                # final response
                return global_params["response"]

    def route(
        self,
        method: str,
        path: str,
        *args: tuple[object, ...],
        **kwargs: dict[str, object],
    ) -> Callable:

        method = method.upper()

        if method not in self.routes:
            self.routes[method] = dict()

        def routing(app: Callable) -> None:
            self.routes[method][path.strip("/")] = {
                "app": app,
                "args": args,
                "kwargs": kwargs,
            }

        return routing
