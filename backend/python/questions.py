import graceful
import aiosqlite
from session import session


async def get_questions(aid):
    result = []

    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "SELECT qid, sid, question, description FROM questions WHERE aid == ?;",
        (aid,),
    )
    for qid, sid, question, description in await cursor.fetchall():
        result.append(
            {
                "aid": aid,
                "qid": qid,
                "sid": sid,
                "question": question,
                "description": description,
            }
        )

    await cursor.close()
    await db.close()
    return result


async def add_questions(item: graceful.BaseModel, session_id=None):
    await session(session_id)

    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "INSERT INTO questions (aid, qid, sid, question, description) VALUES (?, (SELECT COALESCE(MAX(qid), 0) + 1 FROM questions WHERE aid = ?), ?, ?, ?);",
        (item.aid, item.aid, item.sid, item.question, item.description),
    )

    await cursor.close()
    await db.commit()
    await db.close()


async def update_questions(item: graceful.BaseModel, session_id=None):
    await session(session_id)

    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "UPDATE questions SET sid = ?, question = ?, description = ? WHERE aid = ? AND qid = ?",
        (item.sid, item.question, item.description, item.aid, item.qid),
    )

    await cursor.close()
    await db.commit()
    await db.close()


async def delete_questions(item: graceful.BaseModel, session_id=None):
    await session(session_id)

    db = await aiosqlite.connect("backend/database/db.sqlite3")
    cursor = await db.cursor()

    await cursor.execute(
        "DELETE FROM questions WHERE aid = ? AND qid = ?;",
        (item.aid, item.qid),
    )

    qid_substring = f"{{qid{item.qid}}}"
    await cursor.execute(
        "SELECT cid, formula FROM criteria WHERE aid = ?;", (item.aid,)
    )
    for cid, formula in await cursor.fetchall():
        if qid_substring in formula:
            await cursor.execute(
                "DELETE FROM criteria WHERE aid = ? AND cid = ?;", (item.aid, cid)
            )

            cid_substring = f"{{cid{cid}}}"
            await cursor.execute(
                "SELECT pid, formula FROM products WHERE aid = ?;", (item.aid,)
            )
            for pid, formula in await cursor.fetchall():
                if cid_substring in formula:
                    await cursor.execute(
                        "DELETE FROM products WHERE aid = ? AND pid = ?;",
                        (item.aid, pid),
                    )

    await cursor.close()
    await db.commit()
    await db.close()
