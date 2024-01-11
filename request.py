from typing import Dict


class HTTPRequest:
    def __init__(self, data: bytes = b"") -> None:
        self.method: str = ""
        self.url: str = ""
        self.version: str = ""
        self.queries: Dict[str, str] = {}
        self.urlkeys: Dict[str, str] = {}
        self.headers: Dict[str, str] = {}
        self.cookies: Dict[str, str] = {}
        self.body: bytes = b""

        if data:
            self.decode(data)

    def decode(
        self, data: bytes, encoding: str = "utf-8", errors: str = "strict"
    ) -> None:
        data, self.body = data.rsplit(b"\r\n", 1)
        headers = data.decode(encoding, errors).split("\r\n")
        self.parse_request_line(headers[0])
        self.parse_url_queries()
        self.parse_headers(headers[1:-1])
        self.parse_cookies()

    def parse_request_line(self, request_line: str) -> None:
        self.method, self.url, self.version = request_line.split(" ")

    def parse_url_queries(self) -> None:
        if "?" in self.url:
            self.url, queries = self.url.split("?", 1)
            for query in queries.split("&"):
                name, value = query.split("=", 1)
                self.queries[name.strip()] = value.strip()

    def parse_headers(self, headers: list) -> None:
        for line in headers:
            name, value = line.split(":", 1)
            self.headers[name.strip().title()] = value.strip()

    def parse_cookies(self) -> None:
        if "Cookie" in self.headers:
            for cookie in self.headers["Cookie"].split(";"):
                name, value = cookie.split("=", 1)
                self.cookies[name.strip()] = value.strip()
