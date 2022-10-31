import sqlite3


db = sqlite3.connect("backend/models/db.sqlite3")

with open("backend/models/tables.sql", "r") as document:
	db.executescript(document.read())

with open("backend/models/cough&cold.sql", "r") as document:
	db.executescript(document.read())

db.commit()
db.close()
