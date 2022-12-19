DROP TABLE IF EXISTS ailments;
DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS criteria;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS productCriteria;
DROP TABLE IF EXISTS admin;
DROP TABLE IF EXISTS sessionToken;

CREATE TABLE ailments (
    aid int(100),
    name varchar(255),
    disclaimer text(500)
);

CREATE TABLE questions (
    aid int(100),
    qid int(100),
    sid int(100),
    question varchar(255),
    description text(500)
);

CREATE TABLE criteria (
    aid int(100),
    cid int(100),
    name varchar(255),
    formula varchar(255)
);

CREATE TABLE products (
    aid int(100),
    pid int(100),
    name varchar(255),
    url varchar(255),
    description text(500),
    image varchar(255),
    formula varchar(255)
);

CREATE TABLE admin (
    rank int(100),
    username varchar(100),
    password varchar(100),
    sessionid varchar(100),
    expiry datetime
);
