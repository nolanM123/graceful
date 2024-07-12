# Graceful Web Framework

Graceful is a lightweight asynchronous web framework for building HTTP server applications in Python. It emphasizes simplicity, flexibility, and performance, making it suitable for a wide range of web development tasks.

## Features

- **Asynchronous Processing**: Utilizes asyncio for handling concurrent requests efficiently.
- **Routing and Middleware**: Supports routing HTTP requests to appropriate handler functions and middleware for custom request/response processing.
- **Template Conversion**: Simplifies data handling with automatic conversion based on type annotations.
- **Error Handling**: Provides robust error handling and response generation for various HTTP status codes.
- **Cookie Management**: Includes support for setting, getting, and deleting cookies.
- **Extensible**: Easily extend functionality by mounting additional applications.

## Requirements

- Python 3.7+
- Dependencies listed in `requirements.txt`

## Installation

1. Clone the repository:

   ```
   git clone https://github.com/yourusername/graceful.git
   cd graceful
   ```

2. Install dependencies:

   ```
   pip install -r requirements.txt
   ```

## Usage

### Running the Server

```bash
python main.py
```

By default, the server runs on `http://localhost:8080`.

### Defining Routes

```python
from graceful import Graceful

app = Graceful()

@app.get("/")
def index(request, response):
    response.body = "Hello, World!"
    return response

if __name__ == "__main__":
    app.run()
```

### Handling Requests

- Define routes using decorators (`@app.get`, `@app.post`, etc.) to map URLs to handler functions.
- Access request parameters, headers, cookies, and body through `request` object.
- Manipulate response data and set headers using `response` object.

### Adding Middleware

```python
@app.middleware
async def custom_middleware(request, response):
    # Perform actions before passing request to handler
    ...

@app.exception(404)
def handle_not_found(request, response):
    response.body = "404 Not Found"
    return response
```

### Error Handling

Customize error handling with `@app.exception(status_code)` decorator to handle specific HTTP status codes.

## Contributing

Contributions are welcome! Please fork the repository and submit pull requests with improvements or additional features.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Inspired by [FastAPI](https://fastapi.tiangolo.com/).