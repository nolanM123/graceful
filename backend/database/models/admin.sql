DROP TABLE IF EXISTS admin;

CREATE TABLE admin (
    rank INTEGER,
    email VARCHAR PRIMARY KEY,
    password VARCHAR,
    fname VARCHAR,
    lname VARCHAR,
    session_id VARCHAR,
    session_start TIMESTAMP
);