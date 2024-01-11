from typing import Dict, Optional


class HTTPResponse:
    def __init__(
        self,
        version: str = "HTTP/1.1",
        status: int = 200,
        reason: str = "OK",
        headers: Optional[Dict[str, object]] = None,
        body: bytes = b"",
    ) -> None:
        self.version: str = version
        self.status: int = status
        self.reason: str = reason
        self.headers: Dict[str, str] = headers or {}
        self.cookies: Dict[str, dict] = {}
        self.body: bytes = body

    def get_cookie(self, name: str) -> str:
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
                cookie += f"; {attr.capitalize()}={self.cookies[name][attr]}"

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
        del self.cookies[name]

    def encode(self, encoding: str = "utf-8", errors: str = "strict") -> bytes:
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
    pass
