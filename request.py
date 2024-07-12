from typing import Dict, List


class HTTPRequest:
    """
    Represents an HTTP request.
    """

    def __init__(self, data: bytes = b"") -> None:
        """
        Initialize the HTTPRequest.

        Args:
            data: The raw HTTP request data.
        """
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

    def decode(self, data: bytes, encoding: str = "utf-8", errors: str = "strict") -> None:
        """
        Decode the raw HTTP request data into its components.

        Args:
            data: The raw HTTP request data.
            encoding: The encoding to use for decoding the data.
            errors: The error handling scheme.
        """
        
        header_data, self.body = data.split(b"\r\n\r\n", 1)
        headers = header_data.decode(encoding, errors).split("\r\n")

        self.parse_request_line(headers[0])
        self.parse_url_queries()
        self.parse_headers(headers[1:])
        self.parse_cookies()

    def parse_request_line(self, request_line: str) -> None:
        """
        Parse the request line to extract method, URL, and version.

        Args:
            request_line: The request line string.
        """

        self.method, self.url, self.version = request_line.split(" ")

    def parse_url_queries(self) -> None:
        """
        Parse the URL to extract query parameters.
        """

        if "?" in self.url:
            self.url, query_string = self.url.split("?", 1)
            self.queries = {
                name.strip(): value.strip() for name, value in (
                    query.split("=", 1) for query in query_string.split("&")
                )
            }

        self.url = self.url.strip("/")

    def parse_headers(self, headers: List[str]) -> None:
        """
        Parse the headers from the raw header lines.

        Args:
            headers: The list of raw header lines.
        """

        self.headers = {
            name.strip().title(): value.strip() for name, value in (
                header.split(":", 1) for header in headers
            )
        }

    def parse_cookies(self) -> None:
        """
        Parse the cookies from the headers.
        """

        if "Cookie" in self.headers:
            self.cookies = {
                name.strip(): value.strip() for name, value in (
                    cookie.split("=", 1) for cookie in self.headers["Cookie"].split(";")
                )
            }
