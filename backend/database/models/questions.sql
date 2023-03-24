DROP TABLE IF EXISTS questions;

CREATE TABLE questions (
    aid int(100),
    qid int(100),
    section int(100),
    question varchar(255),
    description text(500),
    PRIMARY KEY (aid, qid),
    FOREIGN KEY (aid) REFERENCES ailments(aid)
);