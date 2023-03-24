import graceful
import aiosqlite
from session import session


async def get_products(request, aid, session_id=None):
    result = []

    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    if len(request.queries) == 1:
        await session(session_id)

        await cursor.execute(
            "SELECT pid, name, url, description, image, formula FROM products WHERE aid == ?;",
            (aid,),
        )

        for pid, name, url, description, image, formula in await cursor.fetchall():
            result.append(
                {
                    "aid": aid,
                    "pid": pid,
                    "name": name,
                    "url": url,
                    "description": description,
                    "image": image,
                    "formula": formula,
                }
            )

    else:
        criteria = {}
        await cursor.execute(
            "SELECT cid, formula FROM criteria WHERE aid == ?;",
            (aid,),
        )
        for cid, formula in await cursor.fetchall():
            criteria[f"cid{cid}"] = eval(formula.format(**request.queries), {})

        await cursor.execute(
            "SELECT pid, name, url, description, image, formula FROM products WHERE aid == ?;",
            (aid,),
        )
        for pid, name, url, description, image, formula in await cursor.fetchall():
            if eval(formula.format(**criteria), {}):
                result.append(
                    {
                        "aid": aid,
                        "pid": pid,
                        "name": name,
                        "url": url,
                        "description": description,
                        "image": image,
                    }
                )

    await cursor.close()
    await db.close()
    return result


async def add_products(item: graceful.BaseModel, session_id=None):
    await session(session_id)

    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "INSERT INTO products (aid, pid, name, url, description, image, formula) VALUES (?, (SELECT COALESCE(MAX(pid), 0) + 1 FROM products WHERE aid = ?), ?, ?, ?, ?, ?);",
        (
            item.aid,
            item.aid,
            item.name,
            item.url,
            item.description,
            item.image,
            item.formula,
        ),
    )

    await cursor.close()
    await db.commit()
    await db.close()


async def update_products(item: graceful.BaseModel, session_id=None):
    await session(session_id)

    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "UPDATE products SET name = ?, url = ?, description = ?, image = ?, formula = ? WHERE aid = ? AND pid = ?",
        (
            item.name,
            item.url,
            item.description,
            item.image,
            item.formula,
            item.aid,
            item.pid,
        ),
    )

    await cursor.close()
    await db.commit()
    await db.close()


async def delete_products(item: graceful.BaseModel, session_id=None):
    await session(session_id)

    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "DELETE FROM products WHERE aid = ? AND pid = ?;",
        (item.aid, item.pid),
    )

    await cursor.close()
    await db.commit()
    await db.close()
