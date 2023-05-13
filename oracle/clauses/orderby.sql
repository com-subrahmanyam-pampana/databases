/*Order By clause:It is used to sort the records
This is only used with the select statement
*/


/*
Syntax:

WHERE condition
ORDER BY <your expression > [DESC | ASC]
*/

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

/*Order */
SELECT  * FROM users ORDER BY COUNTRY

/*Order in the DESC order */
SELECT  * FROM users ORDER BY COUNTRY DESC

/*Order in the ASC order */
SELECT  * FROM users ORDER BY COUNTRY