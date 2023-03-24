import graceful
import aiosqlite
from session import session


async def get_ailments():
    result = []

    db = await aiosqlite.connect("backend/database/db.sqlite3")
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


async def add_ailments(item: graceful.BaseModel, session_id=None):
    await session(session_id)

    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "INSERT INTO ailments (name, disclaimer) VALUES (?, ?);",
        (item.name, item.disclaimer),
    )

    await cursor.close()
    await db.commit()
    await db.close()


async def update_ailments(item: graceful.BaseModel, session_id=None):
    await session(session_id)

    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "UPDATE ailments SET name = ?, disclaimer = ? WHERE aid = ?;",
        (item.name, item.disclaimer, item.aid),
    )

    await cursor.close()
    await db.commit()
    await db.close()


async def delete_ailments(item: graceful.BaseModel, session_id=None):
    await session(session_id)

    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "DELETE FROM ailments WHERE aid = ?;",
        (item.aid,),
    )
    await cursor.execute(
        "DELETE FROM questions WHERE aid = ?;",
        (item.aid,),
    )
    await cursor.execute(
        "DELETE FROM criteria WHERE aid = ?;",
        (item.aid,),
    )
    await cursor.execute(
        "DELETE FROM products WHERE aid = ?;",
        (item.aid,),
    )

    await cursor.close()
    await db.commit()
    await db.close()
