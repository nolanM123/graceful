class HTTPRequest:
    method: str = ""
    url: str = ""
    version: str = ""
    queries: dict[str, str] = {}
    urlkeys: dict[str, str] = {}
    headers: dict[str, str] = {}
    cookies: dict[str, str] = {}
    body: bytes = b""

    def __init__(self, data: bytes) -> None:
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
