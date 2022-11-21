import sqlite3

db = sqlite3.connect("backend/models/db.sqlite3")

cursor = db.cursor()

questions = {f"qid{key}": True for key in range(100)}

for aid, cid, formula in cursor.execute("SELECT aid, cid, formula FROM criteria;"):
    try:
        eval(formula.format(**questions))
    
    except Exception as errormsg:
        print(f"aid: {aid}, cid: {cid}")
        print(errormsg)
