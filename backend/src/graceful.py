import socket
import asyncio
import threading
import mimetypes
from typing import Any, Callable


class Request:
    def __init__(self, request: str) -> None:

        feilds = request.split("\r\n")

        # repr
        self.request = request

        # status line
        self.method, self.url, self.scheme = feilds[0].split(" ")

        # query
        self.query = dict()
        self.url, *queries = self.url.split("?")

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

    scheme = "HTTP/1.1"
    status = 200
    reason = "OK"

    def __init__(
        self,
        scheme: str | None = None,
        status: int | None = None,
        reason: str | None = None,
        headers: dict[str, str] | None = None,
        cookies: list[dict[str, str | bool]] | None = None,
        content: Any = None,
    ):

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

    def get(self, header: str, default: Any = None):

        self._headers.get(header.title(), default)

    def set(self, header: str, value: str, default: bool = False):

        header = header.title()

        if not default or header not in self._headers:
            self._headers[header] = value

    def get_cookie(self, name: str):

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
        httponly: bool = False,
        samesite: str = "",
    ):

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

    def render(self, path: str):

        with open(path, "rb") as document:
            mimetype, charset = mimetypes.guess_type(path)
            self.set(
                "content-type",
                "{}; charset={}".format(mimetype, charset) if charset else mimetype,
            )
            self.content = document.read()

    def encode(self, encoding: str = "UTF-8", errors: str = "strict"):

        # status line
        status_line = "{} {} {}\r\n".format(
            self.scheme,
            self.status,
            self.reason,
        ).encode(encoding, errors)

        # content
        content = self.content

        if not isinstance(content, bytes):
            content = bytes(str(content).replace("'", '"'), encoding, errors)

        # headers
        headers = ""

        if "Content-Type" not in self._headers:
            headers += "Content-Type: text/plain\r\n"

        if "Content-Length" not in self._headers:
            headers += "Content-Length: {}\r\n".format(len(content))

        for key, item in self._headers.items():
            headers += "{}: {}\r\n".format(
                key,
                item,
            )

        headers = headers.encode(encoding, errors)

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

        cookies = cookies.encode(encoding, errors)

        # response
        return status_line + headers + cookies + b"\r\n" + content

    @property
    def content(self):

        return self._content

    @content.setter
    def content(self, content):

        if not isinstance(content, (str, bytes, tuple, list, dict)):
            return

        if isinstance(content, (str, bytes)):
            self.set("content-type", "text/plain", True)

        elif isinstance(content, (tuple, list, dict)):
            self.set("content-type", "application/json", True)

        self._content = content


class Graceful:

    BUFSIZE = 2**10
    TIMEOUT = 120.0

    def __init__(self, host: str = "localhost", port: int = 8080):

        self.live = True
        self.host = host
        self.port = port
        self.server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.server.bind((self.host, self.port))
        self.server.setblocking(False)
        self.server.listen()

        self.apps = dict()

        threading.Thread(target=asyncio.run, args=(self._server(),)).start()

    async def _server(self):

        loop = asyncio.get_event_loop()

        while self.live:
            loop.create_task(self._client(*await loop.sock_accept(self.server)))

        self.server.close()

    async def _client(self, conn: socket.socket, addr: tuple[str, int]):

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

                await loop.sock_sendall(conn, self._handler(Request(request)).encode())

        except TimeoutError:
            conn.close()

    def _handler(self, request: Request):

        response: Response = Response()

        for url, app in self.apps[request.method].items():
            dir_ids = dict()
            app_url = url.split("/")
            req_url = request.url.split("/")

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
                response.content = app(*params)

                break

        return response

    def route(self, method: str, url: str):

        method = method.upper()

        if method not in self.apps:
            self.apps[method] = dict()

        def inner(app: Callable[..., Any]):
            self.apps[method][url] = app

        return inner
