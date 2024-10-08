# Graceful Web Framework

Graceful is a lightweight, asynchronous web framework designed for Python, allowing you to build and manage web applications with ease. It handles HTTP requests and responses, supports various HTTP methods, and includes middleware support.

## Features

- **Asynchronous Processing**: Utilizes `asyncio` for handling requests and responses asynchronously.
- **Flexible Routing**: Define routes for different HTTP methods (GET, POST, PUT, DELETE, etc.).
- **Automatic Data Casting**: Uses Python built-in types for automatic data casting in request handlers.
- **Template Handling**: Convert data to and from Python types with a simple template casting mechanism.
- **Exception Handling**: Customizable exception handling with status codes.

## Installation

To use Graceful, you need Python 3.4 or higher. You can clone the repository and install the dependencies:

```bash
git clone https://github.com/nolanM123/graceful
cd graceful
pip install -r requirements.txt
```

Alternatively, you can install Graceful directly from PyPI:

```bash
pip install graceful-web
```

## Basic Usage

### Creating a Simple Application

Here's a basic example of how to set up a simple web application using Graceful:

```python
from graceful import Graceful


app = Graceful()


@app.get("/")
def index(request):
    return "Hello, world!"


if __name__ == "__main__":
    app.run()
```

### Routing

Graceful supports various HTTP methods:

- `app.get("/url")` - Handles GET requests.
- `app.post("/url")` - Handles POST requests.
- `app.put("/url")` - Handles PUT requests.
- `app.delete("/url")` - Handles DELETE requests.
- `app.head("/url")` - Handles HEAD requests.
- `app.connect("/url")` - Handles CONNECT requests.
- `app.options("/url")` - Handles OPTIONS requests.
- `app.trace("/url")` - Handles TRACE requests.
- `app.patch("/url")` - Handles PATCH requests.

### Parameters and Data Casting

In Graceful, the parameters of a handler function determine how data from the request is accessed and passed to the handler. The framework uses Python's built-in types to automatically cast incoming data to the appropriate types based on the annotations of the handler function parameters.

#### Example

Suppose you have a route that expects certain parameters in the request:

```python
from typing import Optional

from graceful import Graceful


app = Graceful()


@app.get("/greet/{name}")
def greet(name: str, age: Optional[int] = None):
    if age:
        return f"Hello, {name}. You are {age} years old."

    return f"Hello, {name}."


if __name__ == "__main__":
    app.run()
```

In this example:

- `name` is extracted from the URL path and is automatically cast to a `str`.
- `age` is an optional query parameter and is cast to an `int` if provided.

The casting mechanism ensures that:

- Data is automatically converted to the specified types (`str`, `int`, etc.).
- If the data cannot be converted, an appropriate error or default value is used.

**Note**: While asynchronous processing is supported, it is optional for handler functions. You can define handlers as either synchronous or asynchronous functions. The framework will handle them accordingly. For example, the `greet` function above is synchronous but can be defined as asynchronous if needed:

```python
@app.get("/greet/{name}")
async def greet(name: str, age: Optional[int] = None):
    # Asynchronous code here
    ...
```

### Middleware

You can define custom middleware to process requests and responses:

```python
async def custom_middleware(request, fetch):
    # Modify request or perform actions before handling
    response, action = await fetch(request)

    # Modify response or perform actions after handling
    return response, action


app = graceful.Graceful(middleware=custom_middleware)
```

### Exception Handling

Handle exceptions and customize responses for specific HTTP status codes:

```python
@app.exception(404)
def not_found():
    # Handle response for 404 Not Found errors.
    ...

@app.exception(500)
def internal_error():
    # Handle response for 500 Internal Server Error errors.
    ...
```

## Contributing

Contributions are welcome! Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a new Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
