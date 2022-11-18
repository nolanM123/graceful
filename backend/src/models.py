import os
import sqlite3


db = sqlite3.connect("backend/models/db.sqlite3")

with open("backend/models/tables.sql", "r") as document:
	db.executescript(document.read())

for directory, directories, files in os.walk("backend/models/data"):
	for file in files:
		if file.endswith(".sql"):
			print(file)
			with open(os.path.join(directory, file), "r", encoding='utf-8') as document:
				db.executescript(document.read())

db.commit()
db.close()
