import os
import sqlite3

try:
	db = sqlite3.connect("backend/database/db.sqlite3")
	print("parsing model file/s...")

	for directory, directories, files in os.walk("backend/database/models"):
		for file in files:
			with open(os.path.join(directory, file), "r", encoding='utf-8') as document:
				db.executescript(document.read())
			
			print(f"model {file} has been added")

	print("model file/s have been added")
	print("parsing data file/s...")

	for directory, directories, files in os.walk("backend/database/data"):
		for file in files:
			with open(os.path.join(directory, file), "r", encoding='utf-8') as document:
				db.executescript(document.read())
				
			print(f"data {file} has been added")

	print("data file/s have been added")
	print("commiting and closing database...")
	db.commit()

except sqlite3.Error as error:
	print(f"sqlite3 error occured: {error}")
	print("closing uncommitted database...")

finally:

	db.close()
	print("database has been closed")
