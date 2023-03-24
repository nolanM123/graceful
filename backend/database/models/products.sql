DROP TABLE IF EXISTS products;

CREATE TABLE products (
    aid INTEGER,
    pid INTEGER,
    name VARCHAR,
    url VARCHAR,
    description TEXT,
    image VARCHAR,
    formula VARCHAR,
    PRIMARY KEY (aid, pid),
    FOREIGN KEY (aid) REFERENCES ailments(aid)
);
