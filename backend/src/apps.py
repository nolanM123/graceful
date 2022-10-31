import sqlite3
from graceful import Graceful


app = Graceful()


@app.route("get", "/")
def root(response):
    return response.render("frontend/index.html")


@app.route("get", "/favicon.ico")
def favicon(response):
    response.status = 204
    response.reason = "No Content"


@app.route("get", "/styles.css")
def style(response):
    return response.render("frontend/styles/styles.css")


@app.route("get", "/app.js")
def script(response):
    return response.render("frontend/scripts/app.js")


@app.route("get", "/questions/{aid}/")
def questions(aid):
    result = list()

    with sqlite3.connect("backend/models/db.sqlite3") as db:
        cursor = db.cursor()

        for qid, sid, question in cursor.execute(
            "SELECT qid, sid, question FROM questions WHERE aid == ?", aid
        ):
            result.append({"qid": qid, "sid": sid, "question": question})

        cursor.close()

    return result


@app.route("get", "/products/{aid}/")
def products(aid, request):
    result = list()

    with sqlite3.connect("backend/models/db.sqlite3") as db:
        cursor1 = db.cursor()
        cursor2 = db.cursor()

        formulas = {
            cid: eval(formula.format(**request.query), dict())
            for cid, formula in cursor1.execute(
                "SELECT cid, formula FROM criteria WHERE aid == ?", aid
            )
        }

        for pid, name, link, description, image in cursor1.execute(
            "SELECT pid, name, link, description, image FROM products WHERE aid == ?",
            aid,
        ):
            if all(
                formulas.get(cid, False)
                for cid in cursor2.execute(
                    "SELECT cid FROM productCriteria WHERE aid == ? && pid == ?",
                    (aid, pid),
                )
            ):
                result.append(
                    {
                        "name": name,
                        "link": link,
                        "description": description,
                        "image": image,
                    }
                )

        cursor1.close()
        cursor2.close()

    return result
