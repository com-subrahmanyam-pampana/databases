CREATE TABLE users
   ( id number(10) NOT NULL,
     name varchar2(40) NOT NULL,
    country varchar2(10),
    PRIMARY KEY(id)
   );

   
INSERT
    ALL INTO users (id, name, country)
VALUES
    (1, 'James G', 'USA') INTO users (id, name, country)
VALUES
    (2, 'Jack', 'USA') INTO users (id, name, country)
VALUES
    (3, 'Samantha', 'USA') INTO users (id, name, country)
VALUES
    (4, 'Rose', 'USA') INTO users (id, name, country)
VALUES
    (5, 'Ram', 'India') INTO users (id, name, country)
VALUES
    (6, 'Sita', 'India') INTO users (id, name, country)
VALUES
    (7, 'Chan Che', 'China') INTO users (id, name, country)
VALUES
    (8, 'Shalok', 'UK') INTO users (id, name, country)
VALUES
    (9, 'Kinergan', 'Germany') INTO users (id, name, country)
VALUES
    (10, 'GutanTag', 'Germany')
SELECT
    *
FROM
    dual;


-- This will creates a view  and copies only  country 
--  columns from users
CREATE VIEW user_view AS SELECT country FROM users;
SELECT * FROM user_view;