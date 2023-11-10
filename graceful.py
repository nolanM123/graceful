import os
import json
import socket
import asyncio
import mimetypes
from model import BaseModel
from request import HTTPRequest
from response import HTTPResponse, HTTPException


class Graceful:
    VERSION: str = "0.0.1"
    DEFAULT_HOST: str = "localhost"
    DEFAULT_PORT: int = 8080
    BUFSIZE: int = 1024
    TIMEOUT: float = 180

    def __init__(
        self,
        host: str = None,
        port: int = None,
    ) -> None:
        self.live: bool = True
        self.host: str = host or self.DEFAULT_HOST
        self.port: int = port or self.DEFAULT_PORT
        self.apps: dict[str, object] = {
            "EXCEPTION": {},
        }

    async def _handle(
        self,
        request: HTTPRequest,
        response: HTTPResponse,
        action: callable,
    ) -> HTTPResponse:
        result = action(
            **{
                key: value
                for key, value in BaseModel.Convert(
                    {
                        "request": request,
                        "response": response,
                        "body": request.body,
                    }
                    | request.queries
                    | request.headers
                    | request.cookies
                    | request.urlkeys,
                    action.__annotations__,
                ).items()
                if key in action.__code__.co_varnames[: action.__code__.co_argcount]
            }
        )

        if asyncio.iscoroutine(result):
            result = await result

        if isinstance(result, HTTPResponse):
            return result

        if isinstance(result, tuple | list | dict):
            result = json.dumps(result)
            response.headers.setdefault("Content-Type", "application/json")

        if isinstance(result, str):
            if response.headers.get("Content-Type", "").lower() == "text/x-file":
                try:
                    with open(result, "rb") as file:
                        response.headers["Content-Type"] = "{}; {}".format(
                            *mimetypes.guess_type(result)
                        )
                        result = file.read()

                except FileNotFoundError:
                    raise HTTPException(status=404, reason="Not Found")

            else:
                result = result.encode()

        if isinstance(result, bytes):
            response.body = result

        return response

    async def _serve(
        self,
        conn: socket.socket,
        addr: tuple[str, int],
    ) -> None:
        with conn:
            try:
                loop = asyncio.get_event_loop()

                try:
                    data = b""

                    while True:
                        data += await asyncio.wait_for(
                            loop.sock_recv(conn, self.BUFSIZE), self.TIMEOUT
                        )

                        if data.rfind(b"\r\n\r\n") != -1:
                            break

                        elif not data:
                            return

                except TimeoutError:
                    raise HTTPException(status=408, reason="Request Timeout")

                request = HTTPRequest(data)
                content = request.headers.get("Content-Encoding", "").lower()
                length = int(request.headers.get("Content-Length", 0))

                if content == "gzip":
                    raise NotImplementedError(
                        "Unable to process content with 'gzip' encoding."
                    )

                elif content == "deflate":
                    raise NotImplementedError(
                        "Unable to process content with 'deflate' encoding."
                    )

                elif content == "br":
                    raise NotImplementedError(
                        "Unable to process content with 'br' encoding."
                    )

                elif content == "identity":
                    raise NotImplementedError(
                        "Unable to process content with 'identity' encoding."
                    )

                elif length > 0:
                    while length > len(request.body):
                        request.body += await asyncio.wait_for(
                            loop.sock_recv(conn, self.BUFSIZE), self.TIMEOUT
                        )

                path = os.path.join(os.getcwd(), request.url)

                if os.path.isdir(path):
                    raise NotImplementedError("Unable to process")

                elif os.path.isfile(path):
                    response = await self._handle(
                        request,
                        HTTPResponse(headers={"Content-Type": "text/x-file"}),
                        lambda: path,
                    )

                else:
                    req_directories = request.url.split("/")

                    for app in self.apps.get(request.method, []):
                        app_directories = app["directories"]

                        if len(req_directories) < len(app_directories):
                            continue

                        for i in range(len(app_directories)):
                            if app_directories[i].startswith("{") and app_directories[
                                i
                            ].endswith("}"):
                                name, *extentions = (
                                    app_directories[i].strip("{}").split(":")
                                )

                                if name:
                                    request.urlkeys[name] = req_directories[i]

                                if len(req_directories[i:]) < len(extention):
                                    break

                                for j, extention in enumerate(extentions, i):
                                    request.urlkeys[extention] = "/".join(
                                        req_directories[j:]
                                    )

                            elif app_directories[i] != req_directories[i]:
                                break

                        else:
                            response = await self._handle(
                                request,
                                app["response"](*app["args"], **app["kwargs"]),
                                app["action"],
                            )
                            break

                        request.urlkeys = {}

                    else:
                        raise HTTPException(status=404, reason="Not Found")

            except Exception as error:
                if not isinstance(error, HTTPException):
                    error = HTTPResponse(status=500, reason="Server Internal Error")

                response = await self._handle(
                    request,
                    error,
                    self.apps["EXCEPTION"].get(
                        error.status,
                        lambda: None,
                    ),
                )

            print(
                '[Graceful {}] - [{}] "{} /{} {}" {} {}'.format(
                    self.VERSION,
                    addr[0],
                    request.method,
                    request.url,
                    request.version,
                    response.status,
                    addr[1],
                )
            )
            await loop.sock_sendall(conn, response.encode())

    async def _server(
        self,
    ) -> None:
        loop = asyncio.get_event_loop()
        server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        server.setblocking(False)
        server.bind((self.host, self.port))
        server.listen()

        while self.live:
            loop.create_task(self._serve(*(await loop.sock_accept(server))))

        server.close()

    def run(self) -> None:
        asyncio.run(self._server())

    def route(
        self,
        method: str,
        url: str,
        response: HTTPResponse = None,
        *args: tuple[object],
        **kwargs: dict[str, object],
    ) -> callable:
        if method not in self.apps:
            self.apps[method] = []

        url = url.strip("/")

        def routing(action: callable) -> None:
            self.apps[method].append(
                {
                    "url": url,
                    "directories": url.split("/"),
                    "action": action,
                    "response": response or HTTPResponse,
                    "args": args,
                    "kwargs": kwargs,
                }
            )

        return routing

    def get(
        self,
        url: str,
        response: HTTPResponse = None,
        *args: tuple[object],
        **kwargs: dict[str, object],
    ) -> callable:
        return self.route("GET", url, response, *args, **kwargs)

    def head(
        self,
        url: str,
        response: HTTPResponse = None,
        *args: tuple[object],
        **kwargs: dict[str, object],
    ) -> callable:
        return self.route("HEAD", url, response, *args, **kwargs)

    def post(
        self,
        url: str,
        response: HTTPResponse = None,
        *args: tuple[object],
        **kwargs: dict[str, object],
    ) -> callable:
        return self.route("POST", url, response, *args, **kwargs)

    def put(
        self,
        url: str,
        response: HTTPResponse = None,
        *args: tuple[object],
        **kwargs: dict[str, object],
    ) -> callable:
        return self.route("PUT", url, response, *args, **kwargs)

    def delete(
        self,
        url: str,
        response: HTTPResponse = None,
        *args: tuple[object],
        **kwargs: dict[str, object],
    ) -> callable:
        return self.route("DELETE", url, response, *args, **kwargs)

    def connect(
        self,
        url: str,
        response: HTTPResponse = None,
        *args: tuple[object],
        **kwargs: dict[str, object],
    ) -> callable:
        return self.route("CONNECT", url, response, *args, **kwargs)

    def options(
        self,
        url: str,
        response: HTTPResponse = None,
        *args: tuple[object],
        **kwargs: dict[str, object],
    ) -> callable:
        return self.route("OPTIONS", url, response, *args, **kwargs)

    def trace(
        self,
        url: str,
        response: HTTPResponse = None,
        *args: tuple[object],
        **kwargs: dict[str, object],
    ) -> callable:
        return self.route("TRACE", url, response, *args, **kwargs)

    def patch(
        self,
        url: str,
        response: HTTPResponse = None,
        *args: tuple[object],
        **kwargs: dict[str, object],
    ) -> callable:
        return self.route("PATCH", url, response, *args, **kwargs)

    def exception(
        self,
        status: int,
    ) -> callable:
        def routing(action: callable) -> None:
            self.apps["EXCEPTION"][status] = action

        return routing


Graceful().run()
