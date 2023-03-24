import os
import time
import hashlib
import graceful
import aiosqlite
import aiosmtplib


def get_session_id(password):
    return hashlib.sha256(os.urandom(16) + password.encode()).hexdigest()


async def authenticate(response, item: graceful.BaseModel):
    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "SELECT password FROM admin WHERE username == ?;",
        (item.username,),
    )
    for (password,) in await cursor.fetchall():
        salt, password = password.split(":", 1)
        item.password = hashlib.sha256((salt + item.password).encode()).hexdigest()

        if len(item.password) == len(password) and all(
            (x == y for x, y in zip(item.password, password))
        ):
            session_id = get_session_id(item.password)
            response.set_cookie("session-id", session_id, expires=0)
            await cursor.execute(
                "UPDATE admin SET session_id = ?, time = ? WHERE username == ?;",
                (session_id, time.time(), item.username),
            )
            break

    else:
        response.status = 401
        response.reason = "Unauthorized"

    await cursor.close()
    await db.commit()
    await db.close()


async def session(session_id=None):
    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "SELECT rank, email, fname, lname, session_start FROM admin WHERE session_id == ?;",
        (session_id,),
    )
    result = await cursor.fetchone()

    await cursor.close()
    await db.close()

    if not result or time.time() - result[-1] > 1800:
        raise graceful.HTTPException(401, "Unauthorized")

    return {
        name: result[i] for i, name in enumerate(["rank", "email", "fname", "lname"])
    }


async def recovery(response, item: graceful.BaseModel):
    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "SELECT password FROM admin WHERE username == ?;",
        (item.username,),
    )
    password = await cursor.fetchone()

    if password:
        salt, password = password[0].split(":", 1)
        session_id = get_session_id(password + salt)

        await cursor.execute(
            "UPDATE admin SET session_id = ?, time = ? WHERE username == ?;",
            (session_id, time.time(), item.username),
        )

        async with aiosmtplib.SMTP("smtp.gmail.com", 587) as server:
            await server.login("nolan.m.mcallister@gmail.com", "tmcvxwhfwbxqfaxc")
            await server.sendmail(
                "nolan.m.mcallister@gmail.com", item.username, session_id
            )

    else:
        response.status = 401
        response.reason = "Unauthorized"

    await cursor.close()
    await db.commit()
    await db.close()


async def reset(response, item: graceful.BaseModel):
    if all(
        (
            8 <= len(item.password) <= 25,
            any(char.isdigit() for char in item.password),
            any(char.isupper() for char in item.password),
            any(char.islower() for char in item.password),
            any(not char.isalnum() for char in item.password),
        )
    ):
        db = await aiosqlite.connect("backend/database/db.sqlite3")
        cursor = await db.cursor()

        salt = os.urandom(16).hex()
        item.password = (
            f"{salt}:{hashlib.sha256((salt + item.password).encode()).hexdigest()}"
        )

        await cursor.execute(
            "UPDATE admin SET password = ? WHERE session_id == ?;",
            (item.password, item.session_id),
        )

        await cursor.close()
        await db.commit()
        await db.close()

    else:
        response.status = 401
        response.reason = "Unauthorized"
