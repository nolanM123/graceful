import os
import graceful
import aiosqlite


app = graceful.Graceful()


@app.route("get", "/ailments/")
async def ailments():

    result = []

    db = await aiosqlite.connect(os.path.join(os.getcwd(), "backend", "models", "db.sqlite3"))
    cursor = await db.cursor()

    await cursor.execute("SELECT aid, name, disclaimer FROM ailments;")
    for aid, name, disclaimer in await cursor.fetchall():
        result.append(
            {
                "aid": aid,
                "name": name,
                "disclaimer": disclaimer,
            }
        )

    await cursor.close()
    await db.close()

    return result


@app.route("get", "/questions/{aid}/")
async def questions(aid):

    result = list()

    db = await aiosqlite.connect(os.path.join(os.getcwd(), "backend", "models", "db.sqlite3"))
    cursor = await db.cursor()

    await cursor.execute(
        "SELECT qid, sid, question, description FROM questions WHERE aid == ?;",
        (aid,),
    )
    for qid, sid, question, description in await cursor.fetchall():
        result.append(
            {
                "qid": qid,
                "sid": sid,
                "question": question,
                "description": description,
            }
        )

    await cursor.close()
    await db.close()

    return result


@app.route("get", "/products/{aid}/")
async def products(aid, request):

    result = list()

    db = await aiosqlite.connect(os.path.join(os.getcwd(), "backend", "models", "db.sqlite3"))
    cursor = await db.cursor()

    criteria = dict()
    await cursor.execute("SELECT cid, formula FROM criteria WHERE aid == ?;", (aid,))
    for cid, formula in await cursor.fetchall():
        criteria[f"cid{cid}"] = eval(formula.format(**request.query), dict())

    await cursor.execute(
        "SELECT name, url, description, image, formula FROM products WHERE aid == ?;",
        (aid,),
    )
    for name, url, description, image, formula in await cursor.fetchall():
        if eval(formula.format(**criteria), dict()):
            result.append(
                {
                    "name": name,
                    "url": url,
                    "description": description,
                    "image": image,
                }
            )

    await cursor.close()
    await db.close()

    return result


@app.route("get", "/frontend/{:}")
def recource(request, response):
    return response.render(os.path.join(os.getcwd(), *request.url.split("/")))


@app.route("get", "/{:path}/")
def view(path, response):
    if not path:
        path = "index"
    
    return response.render(os.path.join(os.getcwd(), "frontend", "views", path + ".html"))


app.run()
