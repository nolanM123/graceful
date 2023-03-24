import os
import hashlib
import sqlite3

rank: int = 0
username: str = "fkjgtifjgitjgtijtlp@gmail.com"
password: str = "123" 
fname: str = "Nolan"
lname: str = "McAllister"

db = sqlite3.connect("backend/models/db.sqlite3")
cursor = db.cursor()

cursor.execute("SELECT username FROM admin WHERE username == ?", (username, ))
if (username, ) in cursor.fetchall():
    print("Username has been taken!")

else:
    salt = os.urandom(16).hex()
    password = f"{salt}:{hashlib.sha256((salt + password).encode()).hexdigest()}"
    cursor.execute("INSERT INTO admin VALUES (?, ?, ?, ?, ?, NULL, NULL)", (rank, username, password, fname, lname))
    db.commit()
    print("Added admin!")

cursor.close()
db.close()
