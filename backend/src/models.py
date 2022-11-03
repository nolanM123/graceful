import os
import sqlite3


db = sqlite3.connect("backend/models/db.sqlite3")

with open("backend/models/tables.sql", "r") as document:
	db.executescript(document.read())

for directory, directories, files in os.walk("backend/models/data"):
	for file in files:
		with open(os.path.join(directory, file)) as document:
			db.executescript(document.read())

db.commit()
db.close()
