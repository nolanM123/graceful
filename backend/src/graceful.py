import os
import json
import socket
import asyncio
import mimetypes


class Request:

    request: str
    mehtod: str
    url: str
    scheme: str
    query: dict[str:str]
    headers: dict[str:str]
    cookies: dict[str:str]
    content: str

    def __init__(self, request: str) -> None:

        feilds: list[str] = request.split("\r\n")

        # repr
        self.request = request

        # status line
        self.method, self.url, self.scheme = feilds[0].split(" ")

        # query
        self.query = dict()
        self.url, *queries = self.url.split("?")
        self.url = self.url.strip("/")

        for query in queries:
            self.query = {
                key: item
                for key, item in (kwargs.split("=") for kwargs in query.split("&"))
            }

        # headers
        self.headers = dict()

        if len(feilds[:-2]) > 2:
            self.headers = {
                key: item for key, item in (kwarg.split(": ") for kwarg in feilds[1:-2])
            }

        # cookies
        self.cookies = dict()

        if self.headers.get("cookies"):
            self.cookies = {
                key: item
                for key, item in (
                    kwargs.split("=") for kwargs in self.headers["cookies"].split("; ")
                )
            }

        # content
        self.content = feilds[-1]


class Response:

    scheme: str = "HTTP/1.1"
    status: int = 200
    reason: str = "OK"
    _headers: dict[str:str]
    _cookies: dict[str:str]
    _content: str

    def __init__(
        self,
        scheme: str | None = None,
        status: int | None = None,
        reason: str | None = None,
        headers: dict[str, str] | None = None,
        cookies: list[dict[str, str | bool]] | None = None,
        content: str | None = None,
    ) -> None:

        if scheme:
            self.scheme = scheme

        if status:
            self.status = status

        if reason:
            self.reason = reason

        if not headers:
            headers = dict()

        if not cookies:
            cookies = list()

        if not content:
            content = ""

        self._headers = headers
        self._cookies = cookies
        self._content = content

    def get(self, header: str, default: str = None) -> str:

        return self._headers.get(header.title(), default)

    def set(self, header: str, value: str, default: bool = False) -> None:

        header = header.title()

        if not default or header not in self._headers:
            self._headers[header] = value

    def get_cookie(self, name: str) -> dict[str : str | bool] | None:

        for cookie in self._cookies:
            if name in cookie:
                return cookie

    def set_cookie(
        self,
        name: str,
        value: str,
        expires: str = "",
        max_age: str = "",
        domain: str = "",
        path: str = "",
        secure: str = "",
        httponly: str = "",
        samesite: str = "",
    ) -> None:

        self._cookies.append(
            {
                name: value,
                "Expires": expires,
                "Max-Age": max_age,
                "Domain": domain,
                "Path": path,
                "Secure": secure,
                "HttpOnly": httponly,
                "SameSite": samesite,
            }
        )

    def render(self, path: str) -> None:
        mimetype: str
        charset: str

        if not os.path.isfile(path):
            return

        mimetype, charset = mimetypes.guess_type(path)
        with open(path, "rb") as document:
            self.content = document.read()
            self.set("content-type", "{}; charset={}".format(mimetype, charset))
            self.set("content-length", len(self.content))

    def encode(self, encoding: str = "UTF-8", errors: str = "strict") -> bytes:

        # status line
        status_line: str = "{} {} {}\r\n".format(
            self.scheme,
            self.status,
            self.reason,
        )

        # headers
        headers: str = ""

        for key, item in self._headers.items():
            headers += "{}: {}\r\n".format(
                key,
                item,
            )

        # cookies
        cookies = ""

        for cookie in self._cookies:
            cookies += "Set-Cookie: "

            for key, item in cookie.items():
                if key == "HttpOnly" and item:
                    cookies += "HttpOnly; "

                elif item:
                    cookies += "{}={}; ".format(
                        key,
                        item,
                    )

            cookies = cookies.rstrip("; ") + "\r\n"

        # content
        content: bytes = (
            self.content
            if isinstance(self.content, bytes)
            else str(self.content).encode(encoding, errors)
        )

        # response
        return (
            "{}{}{}\r\n".format(status_line, headers, cookies).encode(
                encoding, errors
            )
            + content
        )

    @property
    def content(self) -> str | bytes:

        return self._content

    @content.setter
    def content(self, content: any) -> None:
        if not isinstance(content, (str, bytes, list, dict)):
            return

        elif isinstance(content, (str, bytes)):
            self.set("content-type", "text/plain", True)

        elif isinstance(content, (list, dict)):
            content = json.dumps(content)
            self.set("content-type", "application/json", True)

        self._content = content
        self.set("content-length", len(self.content))


class Graceful:

    BUFSIZE = 2**10
    TIMEOUT = 120.0

    def __init__(self, host: str = "localhost", port: int = 8080) -> None:

        self.live = True
        self.host = host
        self.port = port
        self.server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.server.bind((self.host, self.port))
        self.server.setblocking(False)
        self.server.listen()

        self.apps = dict()

    def run(self) -> None:
        asyncio.run(self._server())

    async def _server(self) -> None:

        loop = asyncio.get_event_loop()

        while self.live:
            loop.create_task(self._client(*await loop.sock_accept(self.server)))

        self.server.close()

    async def _client(self, conn: socket.socket, addr: tuple[str, int]) -> None:

        loop = asyncio.get_event_loop()

        try:
            while True:
                request = (
                    await asyncio.wait_for(
                        loop.sock_recv(conn, self.BUFSIZE), self.TIMEOUT
                    )
                ).decode()

                if not request:
                    raise TimeoutError

                response = loop.create_task(self._handler(Request(request)))
                await loop.sock_sendall(conn, (await response).encode())

        except TimeoutError:
            conn.close()

    async def _handler(self, request: Request) -> Response:

        loop = asyncio.get_event_loop()
        response: Response = Response()

        for url, app in self.apps[request.method].items():
            dir_ids = dict()
            app_url = url.strip("/").split("/")
            req_url = request.url.strip("/").split("/")

            # get / match ids and path
            while app_url and req_url:
                app_dir = app_url.pop(0)
                req_dir = req_url.pop(0)

                if app_dir.startswith("{") and app_dir.endswith("}"):
                    app_dir, *path = app_dir[1:-1].split(":", 1)

                    if app_dir:
                        dir_ids[app_dir] = req_dir

                    if path:
                        dir_ids[path[0]] = "/".join((req_dir, *req_url))

                        if not app_url:
                            req_url.clear()

                elif app_dir != req_dir:
                    app_url.append("__failed__")

                    break

            # run application
            if not app_url and not req_url:
                pool = {
                    **dir_ids,
                    **{
                        key.replace("-", "_"): item
                        for key, item in request.query.items()
                    },
                    **{
                        key.replace("-", "_"): item
                        for key, item in request.headers.items()
                    },
                    **{
                        key.replace("-", "_"): item
                        for key, item in request.cookies.items()
                    },
                    "request": request,
                    "response": response,
                }
                params = (
                    pool.get(var)
                    for var in app.__code__.co_varnames[: app.__code__.co_argcount]
                )
                response.content = (
                    await loop.create_task(app(*params))
                    if asyncio.iscoroutinefunction(app)
                    else app(*params)
                )

                break

        return response

    def route(self, method: str, url: str) -> callable:

        method = method.upper()

        if method not in self.apps:
            self.apps[method] = dict()

        def application(app: callable):
            self.apps[method][url] = app

        return application
