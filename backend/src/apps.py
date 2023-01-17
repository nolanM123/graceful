import os
import time
import hashlib
import graceful
import aiosqlite


app = graceful.Graceful()


@app.route("GET", "/ailments")
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


@app.route("GET", "/questions/{aid}")
async def questions(aid):

    result = list()

    db = await aiosqlite.connect("backend/models/db.sqlite3")
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


@app.route("GET", "/products/{aid}")
async def products(request, aid):

    result = list()

    db = await aiosqlite.connect("backend/models/db.sqlite3")
    cursor = await db.cursor()

    criteria = dict()
    await cursor.execute("SELECT cid, formula FROM criteria WHERE aid == ?;", (aid,))
    for cid, formula in await cursor.fetchall():
        criteria[f"cid{cid}"] = eval(formula.format(**request.queries), dict())

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


@app.route("POST", "/session")
async def has_session(request, response):

    if "session-id" in request.cookies:
        db = await aiosqlite.connect("backend/models/db.sqlite3")
        cursor = await db.cursor()

        await cursor.execute(
            "SELECT time FROM admin WHERE session_id == ?",
            (request.cookies["session-id"],),
        )
        timestamp = await cursor.fetchone()

        await cursor.close()
        await db.close()

        if timestamp and time.time() - timestamp[0] < 10:
            return

    response.status = 401
    response.reason = "Unauthorized"


@app.route("POST", "/auth")
async def authenticate(response, username, password):

    db = await aiosqlite.connect("backend/models/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute("SELECT password FROM admin WHERE username == ?", (username,))
    for (identity,) in await cursor.fetchall():
        salt, identity = identity.split(":", 1)
        password = hashlib.sha256((salt + password).encode()).hexdigest()

        if len(password) == len(identity) and all(
            (x == y for x, y in zip(password, identity))
        ):
            session_id = hashlib.sha256(os.urandom(16) + password.encode()).hexdigest()
            response.set_cookie("session-id", session_id, expires=0)
            await cursor.execute(
                "UPDATE admin SET session_id = ?, time = ? WHERE username == ?",
                (session_id, time.time(), username),
            )
            await db.commit()
            break

    else:
        response.status = 401
        response.reason = "Unauthorized"

    await cursor.close()
    await db.close()


@app.route("GET", "/frontend/{:}", headers={"Content-Type": "text/file"})
def frontend(request):

    return request.url


@app.route("GET", "/{:path}", headers={"Content-Type": "text/file"})
def view(path):

    return f"frontend/views/{path or 'index'}.html"


app.run()
