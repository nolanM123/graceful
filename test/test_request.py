import sys
import unittest


sys.path.append("../graceful")


from graceful.request import HttpRequest


class TestHttpRequest(unittest.TestCase): ...


if __name__ == "__main__":
    unittest.main()
