import os
import sqlite3
from graceful import Graceful


app = Graceful()


@app.route("get", "/ailments/")
def ailments():

    result = []

    with sqlite3.connect(os.path.abspath("backend/models/db.sqlite3")) as db:
        cursor = db.cursor()

        for aid, name, disclaimer in cursor.execute(
            "SELECT aid, name, disclaimer FROM ailments;"
        ):
            result.append(
                {
                    "aid": aid,
                    "name": name,
                    "disclaimer": disclaimer,
                }
            )

        cursor.close()

    return result


@app.route("get", "/questions/{aid}/")
def questions(aid):

    result = list()

    with sqlite3.connect(os.path.abspath("backend/models/db.sqlite3")) as db:
        cursor = db.cursor()

        for qid, sid, question, description in cursor.execute(
            "SELECT qid, sid, question, description FROM questions WHERE aid == ?;",
            (aid,),
        ):
            result.append(
                {
                    "qid": qid,
                    "sid": sid,
                    "question": question,
                    "description": description,
                }
            )

        cursor.close()

    return result


@app.route("get", "/products/{aid}/")
def products(aid, request):

    result = list()

    with sqlite3.connect(os.path.abspath("backend/models/db.sqlite3")) as db:
        cursor1 = db.cursor()
        cursor2 = db.cursor()

        criteria_formulas = {
            f"cid{cid}": eval(formula.format(**request.query), dict())
            for cid, formula in cursor1.execute(
                "SELECT cid, formula FROM criteria WHERE aid == ?;", (aid,)
            )
        }

        for pid, name, link, description, url in cursor1.execute(
            "SELECT pid, name, link, description, url FROM products WHERE aid == ?;",
            (aid,),
        ):
            for product_formulas in cursor2.execute(
                "SELECT formula FROM productCriteria WHERE aid == ? AND pid == ?;",
                (aid, pid),
            ):
                if eval(product_formulas[0].format(**criteria_formulas), dict()):
                    result.append(
                        {
                            "name": name,
                            "link": link,
                            "description": description,
                            "url": url,
                        }
                    )

        cursor1.close()
        cursor2.close()

    return result


@app.route("get", "")
def index_view(response):
    return response.render(os.path.abspath("frontend/views/index.html"))

@app.route("get", "/login/")
def login_view(response):
    return response.render(os.path.abspath("frontend/views/login.html"))

@app.route("get", "/admin/")
def admin_view():
    return

@app.route("get", "/frontend/{:path}")
def filepath(request, response):
    return response.render(os.path.abspath(request.url.lstrip("/")))
