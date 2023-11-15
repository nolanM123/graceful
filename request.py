from typing import Dict


class HTTPRequest:
    def __init__(self, data: bytes) -> None:
        self.method: str = ""
        self.url: str = ""
        self.version: str = ""
        self.queries: Dict[str, str] = {}
        self.urlkeys: Dict[str, str] = {}
        self.headers: Dict[str, str] = {}
        self.cookies: Dict[str, str] = {}
        self.body: bytes = b""

        self._parse_request(data)

    def _parse_request(self, data: bytes) -> None:
        data, self.content = data.rsplit(b"\r\n", 1)
        headers = data.decode().split("\r\n")
        self.method, self.url, self.version = headers[0].split(" ")

        if "?" in self.url:
            self.url, queries = self.url.split("?", 1)

            for query in queries.split("&"):
                name, value = query.split("=", 1)
                self.queries[name.strip()] = value.strip()

        self.url = self.url.strip("/")

        for line in headers[1:-1]:
            name, value = line.split(":", 1)
            self.headers[name.strip().title()] = value.strip()

        if "Cookie" in self.headers:
            for cookie in self.headers["Cookie"].split(";"):
                name, value = cookie.split("=", 1)
                self.cookies[name.strip()] = value.strip()
