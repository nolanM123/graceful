DROP TABLE IF EXISTS criteria;

CREATE TABLE criteria (
    aid INTEGER,
    cid INTEGER,
    name VARCHAR,
    formula VARCHAR,
    PRIMARY KEY (aid, cid),
    FOREIGN KEY (aid) REFERENCES ailments(aid)
);