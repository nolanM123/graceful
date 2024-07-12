from typing import Any, Dict, Optional


class HTTPResponse:
    """
    Represents an HTTP response.
    """

    def __init__(
        self,
        version: str = "HTTP/1.1",
        status: int = 200,
        reason: str = "OK",
        headers: Optional[Dict[str, Any]] = None,
        body: bytes = b"",
    ) -> None:
        """
        Initialize the HTTPResponse.

        Args:
            version: The HTTP version.
            status: The HTTP status code.
            reason: The reason phrase corresponding to the status code.
            headers: The HTTP headers.
            body: The body of the HTTP response.
        """

        self.version: str = version
        self.status: int = status
        self.reason: str = reason
        self.headers: Dict[str, str] = headers or {}
        self.cookies: Dict[str, dict] = {}
        self.body: bytes = body

    def get_cookie(self, name: str) -> str:
        """
        Get the Set-Cookie header string for a specific cookie.

        Args:
            name: The name of the cookie.

        Returns:
            The Set-Cookie header string.
        """

        cookie = f"Set-Cookie: {name}={self.cookies[name]['value']}"

        for attr in [
            "expires",
            "max-age",
            "domain",
            "path",
            "secure",
            "httponly",
            "samesite",
        ]:
            if attr in self.cookies[name]:
                cookie += f"; {attr.replace('_', '-').capitalize()}={self.cookies[name][attr]}"

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
        """
        Set a cookie.

        Args:
            name: The name of the cookie.
            value: The value of the cookie.
            expires: The expiration date of the cookie.
            max_age: The maximum age of the cookie.
            domain: The domain of the cookie.
            path: The path of the cookie.
            secure: Whether the cookie is secure.
            httponly: Whether the cookie is HTTP only.
            samesite: The SameSite attribute of the cookie.
        """

        self.cookies[name] = {"value": value}

        for attr, attr_value in [
            ("expires", expires),
            ("max-age", max_age),
            ("domain", domain),
            ("path", path),
            ("secure", secure),
            ("httponly", httponly),
            ("samesite", samesite),
        ]:
            if attr_value:
                self.cookies[name][attr] = attr_value

    def del_cookie(self, name: str) -> None:
        """
        Delete a cookie.

        Args:
            name: The name of the cookie to delete.
        """

        if name in self.cookies:
            del self.cookies[name]

    def encode(self, encoding: str = "utf-8", errors: str = "strict") -> bytes:
        """
        Encode the HTTP response into bytes.

        Args:
            encoding: The encoding to use for encoding the response.
            errors: The error handling scheme.

        Returns:
            The encoded HTTP response as bytes.
        """

        status_line = f"{self.version} {self.status} {self.reason}\r\n"
        headers_lines = "".join(
            f"{name.title()}: {value}\r\n" for name, value in self.headers.items()
        )
        cookies_lines = "".join(f"{self.get_cookie(name)}\r\n" for name in self.cookies)

        return (
            f"{status_line}{headers_lines}{cookies_lines}\r\n".encode(encoding, errors)
            + self.body
        )


class HTTPException(HTTPResponse, Exception):
    """
    Represents an HTTP exception.
    """

    pass
