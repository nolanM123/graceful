import os
import json
import socket
import asyncio
import mimetypes
from typing import Dict, Tuple, Callable, Optional, Union

from template import Template
from request import HTTPRequest
from response import HTTPResponse, HTTPException


class Graceful:
    VERSION: str = "1.0"
    DEFAULT_PATH: str = os.getcwd()
    DEFAULT_HOST: str = "localhost"
    DEFAULT_PORT: int = 8080
    BUFSIZE: int = 1024
    TIMEOUT: float = 180

    def __init__(self, host: str = DEFAULT_HOST, port: int = DEFAULT_PORT) -> None:
        self.live: bool = True
        self.host: str = host
        self.port: int = port
        self.apps: Dict[str, Union[list, dict]] = {"EXCEPTION": {}}

    @staticmethod
    async def handle_request(
        request: HTTPRequest, response: HTTPResponse, action: callable
    ) -> HTTPResponse:
        try:
            kwargs = Template.convert(
                {"request": request, "response": response, "body": request.body}
                | request.queries
                | request.headers
                | request.cookies
                | request.urlkeys,
                action.__annotations__,
                False,
            )
            kwargs = {
                key: item
                for key, item in kwargs.items()
                if key in action.__code__.co_varnames[: action.__code__.co_argcount]
            }
            result = (
                await action(**kwargs)
                if asyncio.iscoroutinefunction(action)
                else action(**kwargs)
            )

            return result

        except Exception:
            raise HTTPException(status=400, reason="Bad Request")

    @staticmethod
    async def handle_response(response: HTTPResponse, result: object) -> HTTPResponse:
        if isinstance(result, HTTPResponse):
            return result

        if isinstance(result, (tuple, list, dict)):
            response.headers.setdefault("Content-Type", "application/json")

            try:
                result = json.dumps(result)

            except ValueError:
                raise HTTPException(status=400, reason="Bad Request")

        if isinstance(result, str):
            if response.headers.get("Content-Type", "").lower() == "text/x-file":
                try:
                    loop = asyncio.get_event_loop()

                    with open(result, "rb") as file:
                        content_type = "{}; {}".format(*mimetypes.guess_type(result))
                        response.headers["Content-Type"] = content_type
                        result = await loop.run_in_executor(None, file.read)

                except FileNotFoundError:
                    raise HTTPException(status=404, reason="Not Found")

            else:
                result = result.encode()

        if isinstance(result, bytes):
            response.body = result

        return response

    async def fetch_request(self, conn: socket.socket) -> HTTPRequest:
        try:
            loop = asyncio.get_event_loop()
            data = b""

            while True:
                data += await asyncio.wait_for(
                    loop.sock_recv(conn, self.BUFSIZE), self.TIMEOUT
                )

                if data.rfind(b"\r\n\r\n") != -1:
                    break

                if not data:
                    raise

            request = HTTPRequest(data)
            length = int(request.headers.get("Content-Length", 0))

            while length > 0:
                chunk = await asyncio.wait_for(
                    loop.sock_recv(conn, min(self.BUFSIZE, length)), self.TIMEOUT
                )

                if chunk:
                    request.body += chunk
                    length -= len(chunk)

                else:
                    raise HTTPException(
                        status=400, reason="Bad Request - Incomplete Data"
                    )

            return request

        except TimeoutError:
            raise HTTPException(status=408, reason="Request Timeout")

    def fetch_response(self, request: HTTPRequest) -> Tuple[HTTPResponse, Callable]:
        req_directories = request.url.split("/")

        for app in self.apps.get(request.method, []):
            app_directories = app["directories"]

            if len(req_directories) < len(app_directories):
                continue

            for i in range(len(app_directories)):
                if app_directories[i].startswith("{") and app_directories[i].endswith(
                    "}"
                ):
                    name, *extensions = app_directories[i].strip("{}").split(":")

                    if name:
                        request.urlkeys[name] = req_directories[i]

                    if len(req_directories[i:]) < len(extensions):
                        break

                    for j, extension in enumerate(extensions, i):
                        request.urlkeys[extension] = "/".join(req_directories[j:])

                elif app_directories[i] != req_directories[i]:
                    break

            else:
                response = app["response"](*app["args"], **app["kwargs"])
                action = app["action"]

                return response, action

            request.urlkeys = {}

        path = os.path.join(self.DEFAULT_PATH, request.url.lstrip("/"))

        if os.path.isfile(path):
            response = HTTPResponse(headers={"Content-Type": "text/x-file"})

            return response, lambda: path

        elif os.path.isfile(os.path.join(path, "index.html")):
            response = HTTPResponse(headers={"Content-Type": "text/x-file"})

            return response, lambda: os.path.join(path, "index.html")

        elif os.path.isdir(path):
            raise HTTPException(status=404, reason="Not Found")

        else:
            raise HTTPException(status=404, reason="Not Found")

    def fetch_exception(self, error: Exception) -> Tuple[HTTPException, Callable]:
        if not isinstance(error, HTTPException):
            error = HTTPException(status=500, reason="Server Internal Error")

        response = error
        action = self.apps["EXCEPTION"].get(response.status, lambda: None)

        return response, action

    async def serve_request(self) -> None:
        loop = asyncio.get_event_loop()
        server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        server.setblocking(False)
        server.bind((self.host, self.port))
        server.listen()

        while self.live:
            await loop.create_task(
                self.serve_response(*(await loop.sock_accept(server)))
            )

        server.close()

    async def serve_response(self, conn: socket.socket, addr: Tuple[str, int]) -> None:
        with conn:
            try:
                request = await self.fetch_request(conn)
                response, action = self.fetch_response(request)
                result = await self.handle_request(request, response, action)
                response = await self.handle_response(response, result)

            except Exception as error:
                if locals().get("request") is None:
                    print(
                        '[graceful {}] - [{}] "connection closed" {}'.format(
                            self.VERSION,
                            addr[0],
                            addr[1],
                        )
                    )

                    return

                response, action = self.fetch_exception(error)
                result = await self.handle_request(request, response, action)
                response = await self.handle_response(response, result)

            print(
                '[graceful {}] - [{}] "{} {} {}" {} {}'.format(
                    self.VERSION,
                    addr[0],
                    request.method,
                    request.url,
                    request.version,
                    response.status,
                    addr[1],
                )
            )

            loop = asyncio.get_event_loop()
            await loop.sock_sendall(conn, response.encode())

    def run(self) -> None:
        print(
            "[graceful {}] - Hello from the graceful community. http://{}:{}/".format(
                self.VERSION,
                self.host,
                self.port,
            )
        )

        asyncio.run(self.serve_request())

    def route(
        self,
        method: str,
        url: str,
        response: Optional[HTTPResponse] = None,
        *args: Tuple[object],
        **kwargs: Dict[str, object],
    ) -> Callable:
        if method not in self.apps:
            self.apps[method] = []

        url = url.strip("/")

        def routing(action: Callable) -> None:
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
        response: Optional[HTTPResponse] = None,
        *args: Tuple[object],
        **kwargs: Dict[str, object],
    ) -> Callable:
        return self.route("GET", url, response, *args, **kwargs)

    def post(
        self,
        url: str,
        response: Optional[HTTPResponse] = None,
        *args: Tuple[object],
        **kwargs: Dict[str, object],
    ) -> Callable:
        return self.route("POST", url, response, *args, **kwargs)

    def put(
        self,
        url: str,
        response: Optional[HTTPResponse] = None,
        *args: Tuple[object],
        **kwargs: Dict[str, object],
    ) -> Callable:
        return self.route("PUT", url, response, *args, **kwargs)

    def delete(
        self,
        url: str,
        response: Optional[HTTPResponse] = None,
        *args: Tuple[object],
        **kwargs: Dict[str, object],
    ) -> Callable:
        return self.route("DELETE", url, response, *args, **kwargs)

    def head(
        self,
        url: str,
        response: Optional[HTTPResponse] = None,
        *args: Tuple[object],
        **kwargs: Dict[str, object],
    ) -> Callable:
        return self.route("HEAD", url, response, *args, **kwargs)

    def connect(
        self,
        url: str,
        response: Optional[HTTPResponse] = None,
        *args: Tuple[object],
        **kwargs: Dict[str, object],
    ) -> Callable:
        return self.route("CONNECT", url, response, *args, **kwargs)

    def options(
        self,
        url: str,
        response: Optional[HTTPResponse] = None,
        *args: Tuple[object],
        **kwargs: Dict[str, object],
    ) -> Callable:
        return self.route("OPTIONS", url, response, *args, **kwargs)

    def trace(
        self,
        url: str,
        response: Optional[HTTPResponse] = None,
        *args: Tuple[object],
        **kwargs: Dict[str, object],
    ) -> Callable:
        return self.route("TRACE", url, response, *args, **kwargs)

    def patch(
        self,
        url: str,
        response: Optional[HTTPResponse] = None,
        *args: Tuple[object],
        **kwargs: Dict[str, object],
    ) -> Callable:
        return self.route("PATCH", url, response, *args, **kwargs)

    def exception(self, status: int) -> Callable:
        def routing(action: Callable) -> None:
            self.apps["EXCEPTION"][status] = action

        return routing
