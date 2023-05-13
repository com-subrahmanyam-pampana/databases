/*
The UNION operator:It is a set operator that combines result sets 
of two or more SELECT statements into a single result set.
The UNION operator is used to combine the result-set of two or more SELECT statements.

    Every SELECT statement within UNION must have the same number of columns
    The columns must also have similar data types
    The columns in every SELECT statement must also be in the same order

*/
/*
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2; 
*/

CREATE TABLE travel_expense (
    name varchar2(15) NOT NULL,
    day1 number(5) NOT NULL,
    day2 number(5) NOT NULL,
    day3 number(5) NOT NULL,
    PRIMARY KEY(name)
);


INSERT
    ALL INTO travel_expense (name, day1, day2,day3)
VALUES
    ('Trump', 100, 0,10) INTO travel_expense (name, day1, day2,day3)
VALUES
    ('Shiva', 45, 200,500) INTO travel_expense (name, day1, day2,day3)
VALUES
    ('ChanChi', 0, 0,52) INTO travel_expense (name, day1, day2,day3)
VALUES
    ('Samantha', 100, 100,100)
SELECT
    *
FROM
    dual;
   
 SELECT DAY1 FROM travel_expense UNION ALL SELECT  DAY2 FROM travel_expense UNION ALL SELECT  DAY3 FROM travel_expense  ;

/*
 100
45
0
100
0
200
0
100
10
500
52
100
*/
