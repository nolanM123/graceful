import graceful
import aiosqlite
from session import session


async def get_criteria(aid, session_id=None):
    await session(session_id)

    result = []

    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "SELECT aid, cid, name, formula FROM criteria WHERE aid == ?;",
        (aid,),
    )
    for aid, cid, name, formula in await cursor.fetchall():
        result.append(
            {
                "aid": aid,
                "cid": cid,
                "name": name,
                "formula": formula,
            }
        )

    await cursor.close()
    await db.close()
    return result


async def add_criteria(item: graceful.BaseModel, session_id=None):
    await session(session_id)

    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "INSERT INTO criteria (aid, cid, name, formula) VALUES (?, (SELECT COALESCE(MAX(cid), 0) + 1 FROM criteria WHERE aid = ?), ?, ?);",
        (item.aid, item.aid, item.name, item.formula),
    )

    await cursor.close()
    await db.commit()
    await db.close()


async def update_criteria(item: graceful.BaseModel, session_id=None):
    await session(session_id)

    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "UPDATE criteria SET name = ?, formula = ? WHERE aid = ? AND cid = ?",
        (item.name, item.formula, item.aid, item.cid),
    )

    await cursor.close()
    await db.commit()
    await db.close()


async def delete_criteria(item: graceful.BaseModel, session_id=None):
    await session(session_id)

    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "DELETE FROM criteria WHERE aid = ? AND cid = ?;",
        (item.aid, item.cid),
    )

    cid_substring = f"{{cid{item.cid}}}"
    await cursor.execute(
        "SELECT pid, formula FROM products WHERE aid = ?;", (item.aid,)
    )
    for pid, formula in await cursor.fetchall():
        if cid_substring in formula:
            await cursor.execute(
                "DELETE FROM products WHERE aid = ? AND pid = ?;", (item.aid, pid)
            )

    await cursor.close()
    await db.commit()
    await db.close()
