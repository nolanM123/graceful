import sys
import unittest


sys.path.append("../graceful")


from graceful.response import HttpResponse


class TestHttpResponse(unittest.TestCase): ...


if __name__ == "__main__":
    unittest.main()
