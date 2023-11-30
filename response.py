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
        self.headers: Dict[str, object] = headers or {}
        self.cookies: Dict[str, dict] = {}
        self.body: bytes = body

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

    def encode(self, encoding: str = "utf-8", errors: str = "strict") -> bytes:
        status = f"{self.version} {self.status} {self.reason}\r\n"
        headers = "".join(f"{name.title()}: {value}\r\n" for name, value in self.headers.items())
        cookies = "".join(f"{self.get_cookie(name)}\r\n" for name in self.cookies)

        return f"{status}{headers}{cookies}\r\n".encode(encoding, errors) + self.body


class HTTPException(HTTPResponse, Exception):
    pass
