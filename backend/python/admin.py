import os
import hashlib
import graceful
import aiosqlite
from session import session


async def get_admin(session_id=None):
    await session(session_id)

    result = []

    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "SELECT rank, email, fname, lname FROM admin;",
    )
    for rank, email, fname, lname in await cursor.fetchall():
        result.append(
            {
                "rank": rank,
                "email": email,
                "fname": fname,
                "lname": lname,
            }
        )

    await cursor.close()
    await db.close()

    return result


async def add_admin(response, item: graceful.BaseModel, session_id=None):
    user = await session(session_id)

    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "SELECT email FROM admin WHERE email == ?",
        (item.email,),
    )
    if user["rank"] < item.rank or await cursor.fetchall():
        response.status = 403
        response.reason = "Forbidden"

    else:
        salt = os.urandom(16).hex()
        item.password = (
            f"{salt}:{hashlib.sha256((salt + item.password).encode()).hexdigest()}"
        )

        await cursor.execute(
            "INSERT INTO admin VALUES (?, ?, ?, ?, ?, NULL, NULL)",
            (item.rank, item.email, item.password, item.fname, item.lname),
        )

    await cursor.close()
    await db.commit()
    await db.close()


async def update_admin(response, item: graceful.BaseModel, session_id=None):
    user = await session(session_id)

    if user["rank"] <= item.rank:
        response.status = 403
        response.reason = "Forbidden"
        return

    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "UPDATE admin SET rank = ?, email = ?, fname = ?, lname = ? WHERE email = ?;",
        (item.rank, item.email, item.fname, item.lname, item.condition),
    )

    await cursor.close()
    await db.commit()
    await db.close()


async def delete_admin(response, item: graceful.BaseModel, session_id=None):
    user = await session(session_id)

    if user["rank"] <= item.rank:
        response.status = 403
        response.reason = "Forbidden"
        return

    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "DELETE FROM admin WHERE email = ?;",
        (item.condition,),
    )

    await cursor.close()
    await db.commit()
    await db.close()
