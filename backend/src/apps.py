import os
import graceful
import aiosqlite


app = graceful.Graceful()


@app.route("get", "/ailments/")
async def ailments():

    result = []

    db = await aiosqlite.connect("backend/models/db.sqlite3")
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

    db = await aiosqlite.connect(os.path.abspath("backend/models/db.sqlite3"))
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

    db = await aiosqlite.connect(os.path.abspath("backend/models/db.sqlite3"))
    cursor1 = await db.cursor()

    criteria = dict()
    await cursor1.execute("SELECT cid, formula FROM criteria WHERE aid == ?;", (aid,))
    for cid, formula in await cursor1.fetchall():
        criteria[f"cid{cid}"] = eval(formula.format(**request.query), dict())

    await cursor1.execute(
        "SELECT name, url, description, image, formula FROM products WHERE aid == ?;",
        (aid,),
    )
    for name, url, description, image, formula in await cursor1.fetchall():
        if eval(formula.format(**criteria), dict()):
            result.append(
                {
                    "name": name,
                    "url": url,
                    "description": description,
                    "image": image,
                }
            )

    await cursor1.close()
    await db.close()

    return result


@app.route("get", "/frontend/{:}")
def recource(request, response):
    return response.render(os.path.abspath(request.url))


@app.route("get", "/{:path}")
def view(path, response):
    if not path:
        path = "index"

    return response.render(os.path.abspath(os.path.join("frontend/views/", path + ".html")))


app.run()
