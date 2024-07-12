import graceful

app = graceful.Graceful()


@app.get("/")
def index():
    return """
    <body>Hello, World!</body>
    """


if __name__ == "__main__":
    app.run()
