from typing import Any, Callable, Dict, List, Optional, Type

from response import HTTPResponse


class App:
    """
    Represents a web application route and its associated action.
    """

    def __init__(
        self,
        url: str,
        action: Callable,
        response: Optional[Type[HTTPResponse]] = None,
        *args: Any,
        **kwargs: Any
    ) -> None:
        """
        Initialize an App instance.

        Args:
            url: The URL pattern for the route.
            action: The action to be executed when the route is accessed.
            response: The response class to be used for the route.
            *args: Additional positional arguments for the response class.
            **kwargs: Additional keyword arguments for the response class.
        """

        self.url: str = url.strip("/")
        self.action: Callable = action
        self.response: Type[HTTPResponse] = response or HTTPResponse
        self.args: List[Any] = list(args)
        self.kwargs: Dict[str, Any] = kwargs

    def get_response(self) -> HTTPResponse:
        """
        Get the http response for the route.

        Returns:
            HTTPResponse: An instance of the response class initialized with the provided arguments.
        """

        return self.response(*self.args, **self.kwargs)
