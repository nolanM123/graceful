DROP TABLE IF EXISTS ailments;
DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS criteria;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS productCriteria;

CREATE TABLE ailments (
    aid int(100),
    ailment varchar(255)
);

CREATE TABLE questions (
    aid int(100),
    qid int(100),
    sid int(100),
    question varchar(255)
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
    link varchar(255),
    description text(1000),
    image binary(255)
);

CREATE TABLE productCriteria (
    aid int(100),
    pid int(100),
    cid int(100)
);
