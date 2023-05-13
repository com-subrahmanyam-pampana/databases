/*
INTERSECT Operator is used to return the results of 2 or more SELECT 
statement. It picks the common or intersecting records from 
compound SELECT queries. 
*/


/*Check if any item is purched everyday at lease in one store*/
CREATE TABLE sold_items (
    dates varchar2(15) NOT NULL,
    store1 varchar2(20) NOT NULL,
    store2 varchar2(20) NOT NULL,
    store3 varchar2(20) NOT NULL,
    PRIMARY KEY(dates)
);


INSERT
    ALL INTO sold_items (dates, store1, store2,store3)
VALUES
    ('day1', 'Carrots', 'Onions','Beet') INTO sold_items (dates, store1, store2,store3)
VALUES
    ('day2', 'Asparagus', 'Carrots','Beet') INTO sold_items (dates, store1, store2,store3)
VALUES
    ('day3', 'Broccoli', 'Broccoli','Onions') INTO sold_items (dates, store1, store2,store3)
VALUES
    ('day4', 'Onions', 'Carrots','Onions')
SELECT
    *
FROM
    dual;
   
SELECT store1  FROM sold_items INTERSECT  SELECT store2  FROM sold_items INTERSECT  SELECT store3  FROM sold_items;


/*Result:
Onion is purched everyday
*/