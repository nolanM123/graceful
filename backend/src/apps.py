import os
import time
import json
import hashlib
import graceful
import aiosqlite
import aiosmtplib


app = graceful.Graceful()


@app.route("GET", "/ailments")
async def get_ailments():

    result = []

    db = await aiosqlite.connect("backend/models/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "SELECT aid, name, disclaimer FROM ailments;",
    )
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


@app.route("GET", "/questions")
async def get_questions(aid):

    result = []

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


@app.route("GET", "/products")
async def get_products(request, aid):

    result = []

    db = await aiosqlite.connect("backend/models/db.sqlite3")
    cursor = await db.cursor()

    criteria = {}
    await cursor.execute(
        "SELECT cid, formula FROM criteria WHERE aid == ?;",
        (aid,),
    )
    for cid, formula in await cursor.fetchall():
        criteria[f"cid{cid}"] = eval(formula.format(**request.queries), {})

    await cursor.execute(
        "SELECT name, url, description, image, formula FROM products WHERE aid == ?;",
        (aid,),
    )
    for name, url, description, image, formula in await cursor.fetchall():
        if eval(formula.format(**criteria), {}):
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


@app.route("POST", "/authenticate")
async def authenticate(response, body: json.dumps):

    db = await aiosqlite.connect("backend/models/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "SELECT password FROM admin WHERE username == ?;",
        (body["username"],),
    )
    for (identity,) in await cursor.fetchall():
        salt, identity = identity.split(":", 1)
        password = hashlib.sha256((salt + body["password"]).encode()).hexdigest()

        if len(password) == len(identity) and all(
            (x == y for x, y in zip(password, identity))
        ):
            session_id = hashlib.sha256(os.urandom(16) + password.encode()).hexdigest()
            response.set_cookie("session-id", session_id, expires=0)
            await cursor.execute(
                "UPDATE admin SET session_id = ?, time = ? WHERE username == ?;",
                (session_id, time.time(), body["username"]),
            )
            break

    else:
        response.status = 401
        response.reason = "Unauthorized"

    await cursor.close()
    await db.commit()
    await db.close()


@app.route("POST", "/session")
async def session(response, session_id=None):

    if session_id:
        db = await aiosqlite.connect("backend/models/db.sqlite3")
        cursor = await db.cursor()

        await cursor.execute(
            "SELECT time FROM admin WHERE session_id == ?;",
            (session_id,),
        )
        timestamp = await cursor.fetchone()

        await cursor.close()
        await db.close()

        if timestamp and time.time() - timestamp[0] < 1800:
            return True

    response.status = 401
    response.reason = "Unauthorized"

    return False


@app.route("POST", "/recovery")
async def recovery(response, body: json.dumps):

    db = await aiosqlite.connect("backend/models/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "SELECT password FROM admin WHERE username == ?;",
        (body["username"],),
    )
    password = await cursor.fetchone()

    if password:
        session_id = hashlib.sha256(os.urandom(16) + password[0].encode()).hexdigest()

        await cursor.execute(
            "UPDATE admin SET session_id = ?, time = ? WHERE username == ?;",
            (session_id, time.time(), body["username"]),
        )

        async with aiosmtplib.SMTP("smtp.gmail.com", 587) as server:
            await server.login("nolan.m.mcallister@gmail.com", "tmcvxwhfwbxqfaxc")
            await server.sendmail(
                "nolan.m.mcallister@gmail.com",
                body["username"],
                open("frontend/public/recovery.html", "r")
                .read()
                .format(session_id=session_id),
            )

    else:
        response.status = 401
        response.reason = "Unauthorized"

    await cursor.close()
    await db.commit()
    await db.close()


@app.route("POST", "/reset")
async def reset(response, body: json.dumps):
    if all(
        (
            8 <= len(body["password"]) <= 25,
            any(char.isdigit() for char in body["password"]),
            any(char.isupper() for char in body["password"]),
            any(char.islower() for char in body["password"]),
            any(not char.isalnum() for char in body["password"]),
        )
    ):
        db = await aiosqlite.connect("backend/models/db.sqlite3")
        cursor = await db.cursor()

        salt = os.urandom(16).hex()
        identity = (
            f"{salt}:{hashlib.sha256((salt + body['password']).encode()).hexdigest()}"
        )

        await cursor.execute(
            "UPDATE admin SET password = ? WHERE session_id == ?;",
            (identity, body["session-id"]),
        )

        await cursor.close()
        await db.commit()
        await db.close()

    else:
        response.status = 401
        response.reason = "Unauthorized"


@app.route("POST", "/reset")
async def reset(response, password, token):
    if all(
        (
            8 <= len(password) <= 25,
            any(char.isdigit() for char in password),
            any(char.isupper() for char in password),
            any(char.islower() for char in password),
            any(not char.isalnum() for char in password),
        )
    ):
        db = await aiosqlite.connect("backend/models/db.sqlite3")
        cursor = await db.cursor()

        salt = os.urandom(16).hex()
        password = f"{salt}:{hashlib.sha256((salt + password).encode()).hexdigest()}"

        await cursor.execute(
            "UPDATE admin SET password = ? WHERE session_id == ?;",
            (password, token),
        )

        await cursor.close()
        await db.commit()
        await db.close()

    else:
        response.status = 401
        response.reason = "Unauthorized"


@app.route("GET", "/users")
async def get_users():

    result = []

    db = await aiosqlite.connect("backend/models/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "SELECT rank, username, fname, lname FROM admin;",
    )
    for rank, username, fname, lname in await cursor.fetchall():
        result.append(
            {
                "rank": rank,
                "username": username,
                "fname": fname,
                "lname": lname,
            }
        )

    await cursor.close()
    await db.close()

    return result


@app.route("PUT", "/users")
async def update_users(item: graceful.BaseModel):

    db = await aiosqlite.connect("backend/models/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "UPDATE admin SET rank = ?, username = ?, fname = ?, lname = ? WHERE username = ?",
        (item.rank, item.username, item.fname, item.lname, item.username),
    )

    await cursor.close()
    await db.commit()
    await db.close()


@app.route("DELETE", "/users")
async def delete_users(item: graceful.BaseModel):
    pass


@app.route("GET", "/frontend/{:}", headers={"Content-Type": "text/file"})
def frontend(request):

    return request.url


@app.route("GET", "/{:path}", headers={"Content-Type": "text/file"})
def view(path):

    return f"frontend/public/views/{path or 'index'}.html"


app.run()
