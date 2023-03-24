import os
import hashlib
import sqlite3

rank: int = 1
email: str = "sample@gmail.com"
password: str = "123" 
fname: str = "John"
lname: str = "Doe"

db = sqlite3.connect("backend/database/db.sqlite3")
cursor = db.cursor()

cursor.execute("SELECT email FROM admin WHERE email == ?", (email, ))
if (email, ) in cursor.fetchall():
    print("email has been taken!")

else:
    salt = os.urandom(16).hex()
    password = f"{salt}:{hashlib.sha256((salt + password).encode()).hexdigest()}"
    cursor.execute("INSERT INTO admin VALUES (?, ?, ?, ?, ?, NULL, NULL)", (rank, email, password, fname, lname))
    db.commit()
    print("Added admin!")

cursor.close()
db.close()
