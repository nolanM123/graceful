import os
import sqlite3
import hashlib

username = "test"
password = "123"


salt = os.urandom(16).hex()
password = hashlib.sha256((salt + password).encode()).hexdigest()


db = sqlite3.connect(os.path.join(os.getcwd(), "backend", "models", "db.sqlite3"))
db.execute("INSERT INTO admin VALUES (?, ?);", (username, f"{salt}:{password}"))
db.commit()
db.close()
