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
