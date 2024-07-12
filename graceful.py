import json
import socket
import asyncio
import mimetypes
from typing import Any, Callable, Dict, List, Optional, Tuple, Type

from app import App
from request import HTTPRequest
from response import HTTPResponse, HTTPException
from template import Template


class Graceful:
    """
    Graceful is a simple web framework to handle HTTP requests and responses asynchronously.
    """

    VERSION: str = "1.0.0"
    DEFAULT_HOST: str = "localhost"
    DEFAULT_PORT: int = 8080
    BUFSIZE: int = 1024
    TIMEOUT: float = 180

    def __init__(self, host: str = DEFAULT_HOST, port: int = DEFAULT_PORT) -> None:
        """
        Initialize the Graceful server.

        Args:
            host: The hostname to bind the server to.
            port: The port to bind the server to.
        """

        self.live: bool = True
        self.host: str = host
        self.port: int = port
        self.apps: Dict[str, List[App]] = {}
        self.excp: Dict[int, Callable] = {}

    @staticmethod
    async def handle_request(
        request: HTTPRequest, response: HTTPResponse, action: Callable
    ) -> HTTPResponse:
        """
        Handle the incoming HTTP request.

        Args:
            request: The HTTP request object.
            response: The HTTP response object.
            action: The action to execute for this request.

        Returns:
            The HTTP response object after processing.
        """

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
    async def handle_response(response: HTTPResponse, result: Any) -> HTTPResponse:
        """
        Handle the response after processing the request.

        Args:
            response: The HTTP response object.
            result: The result from the action execution.

        Returns:
            The final HTTP response object.
        """

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
        """
        Fetch the incoming HTTP request from the connection.

        Args:
            conn: The socket connection.

        Returns:
            The HTTP request object.
        """

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
        """
        Fetch the appropriate response for the given request.

        Args:
            request: The HTTP request object.

        Returns:
            A tuple containing the HTTP response and the action to execute.
        """

        req_directories = request.url.split("/")

        for app in self.apps.get(request.method, []):
            app_directories = app.url.split("/")

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
                return app.get_response(), app.action

            request.urlkeys = {}

        raise HTTPException(status=404, reason="Not Found")

    def fetch_exception(self, error: Exception) -> Tuple[HTTPException, Callable]:
        """
        Fetch the appropriate exception handler for the given error.

        Args:
            error: The exception that was raised.

        Returns:
            A tuple containing the HTTP exception and the action to execute.
        """

        if not isinstance(error, HTTPException):
            error = HTTPException(status=500, reason="Server Internal Error")

        response = error
        action = self.excp.get(response.status, lambda: None)

        return response, action

    async def serve_request(self) -> None:
        """
        Serve incoming HTTP requests.
        """

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
        """
        Serve the response for the incoming request.

        Args:
            conn: The socket connection.
            addr: The address of the connection.
        """

        with conn:
            try:
                request = None
                request = await self.fetch_request(conn)
                response, action = self.fetch_response(request)
                result = await self.handle_request(request, response, action)
                response = await self.handle_response(response, result)

            except Exception as error:
                if request is None:
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
        """
        Run the Graceful server.
        """

        print(
            "[graceful {}] - Hello from the graceful community. http://{}:{}/".format(
                self.VERSION,
                self.host,
                self.port,
            )
        )

        asyncio.run(self.serve_request())

    def mount(self, extention: str, application: "Graceful") -> None:
        pass

    def route(
        self,
        method: str,
        url: str,
        response: Optional[Type[HTTPResponse]] = None,
        *args: Any,
        **kwargs: Any,
    ) -> Callable:
        """
        Define a route for the Graceful server.

        Args:
            method: The HTTP method for the route.
            url: The URL for the route.
            response: The response type for the route.

        Returns:
            A callable to handle the route.
        """

        if method not in self.apps:
            self.apps[method] = []

        def routing(action: Callable) -> None:
            self.apps[method].append(App(url, action, response, *args, **kwargs))

        return routing

    def get(
        self,
        url: str,
        response: Optional[Type[HTTPResponse]] = None,
        *args: Any,
        **kwargs: Any,
    ) -> Callable:
        """
        Define a GET route for the Graceful server.

        Args:
            url: The URL for the route.
            response: The response type for the route.

        Returns:
            A callable to handle the route.
        """

        return self.route("GET", url, response, *args, **kwargs)

    def post(
        self,
        url: str,
        response: Optional[Type[HTTPResponse]] = None,
        *args: Any,
        **kwargs: Any,
    ) -> Callable:
        """
        Define a POST route for the Graceful server.

        Args:
            url: The URL for the route.
            response: The response type for the route.

        Returns:
            A callable to handle the route.
        """

        return self.route("POST", url, response, *args, **kwargs)

    def put(
        self,
        url: str,
        response: Optional[Type[HTTPResponse]] = None,
        *args: Any,
        **kwargs: Any,
    ) -> Callable:
        """
        Define a PUT route for the Graceful server.

        Args:
            url: The URL for the route.
            response: The response type for the route.

        Returns:
            A callable to handle the route.
        """

        return self.route("PUT", url, response, *args, **kwargs)

    def delete(
        self,
        url: str,
        response: Optional[Type[HTTPResponse]] = None,
        *args: Any,
        **kwargs: Any,
    ) -> Callable:
        """
        Define a DELETE route for the Graceful server.

        Args:
            url: The URL for the route.
            response: The response type for the route.

        Returns:
            A callable to handle the route.
        """

        return self.route("DELETE", url, response, *args, **kwargs)

    def head(
        self,
        url: str,
        response: Optional[Type[HTTPResponse]] = None,
        *args: Any,
        **kwargs: Any,
    ) -> Callable:
        """
        Define a HEAD route for the Graceful server.

        Args:
            url: The URL for the route.
            response: The response type for the route.

        Returns:
            A callable to handle the route.
        """

        return self.route("HEAD", url, response, *args, **kwargs)

    def connect(
        self,
        url: str,
        response: Optional[Type[HTTPResponse]] = None,
        *args: Any,
        **kwargs: Any,
    ) -> Callable:
        """
        Define a CONNECT route for the Graceful server.

        Args:
            url: The URL for the route.
            response: The response type for the route.

        Returns:
            A callable to handle the route.
        """

        return self.route("CONNECT", url, response, *args, **kwargs)

    def options(
        self,
        url: str,
        response: Optional[Type[HTTPResponse]] = None,
        *args: Any,
        **kwargs: Any,
    ) -> Callable:
        """
        Define an OPTIONS route for the Graceful server.

        Args:
            url: The URL for the route.
            response: The response type for the route.

        Returns:
            A callable to handle the route.
        """

        return self.route("OPTIONS", url, response, *args, **kwargs)

    def trace(
        self,
        url: str,
        response: Optional[Type[HTTPResponse]] = None,
        *args: Any,
        **kwargs: Any,
    ) -> Callable:
        """
        Define a TRACE route for the Graceful server.

        Args:
            url: The URL for the route.
            response: The response type for the route.

        Returns:
            A callable to handle the route.
        """

        return self.route("TRACE", url, response, *args, **kwargs)

    def patch(
        self,
        url: str,
        response: Optional[Type[HTTPResponse]] = None,
        *args: Any,
        **kwargs: Any,
    ) -> Callable:
        """
        Define a PATCH route for the Graceful server.

        Args:
            url: The URL for the route.
            response: The response type for the route.

        Returns:
            A callable to handle the route.
        """

        return self.route("PATCH", url, response, *args, **kwargs)

    def exception(self, status: int) -> Callable:
        """
        Define an exception handler for the Graceful server.

        Args:
            status: The HTTP status code to handle.

        Returns:
            A callable to handle the exception.
        """

        def routing(action: Callable) -> None:
            self.excp[status] = action

        return routing
