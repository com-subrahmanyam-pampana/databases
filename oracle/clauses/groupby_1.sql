/*Group By clause:It is used group the results.Collects the data from 
 multiple records and it groups by one or more colomns 
 This is  used with the select statement
 */
/*
 Syntax:
 
 
 Aggregate Expression=
 Aggregate Function=
 Eg:SUM,COUNT,MAX,MIN,AVG
 */
CREATE TABLE sales (
    item varchar2(20) NOT NULL,
    sale_count number(15) NOT NULL,
    country varchar2(20),
    PRIMARY KEY(country)
);

INSERT
    ALL INTO SALES (item, sale_count, country)
VALUES
    ('cap', 100, 'USA') INTO SALES (item, sale_count, country)
VALUES
    ('cap', 400, 'China') INTO SALES (item, sale_count, country)
VALUES
    ('cap', 50, 'India') INTO SALES (item, sale_count, country)
VALUES
    ('Shoes', 200, 'Germany') INTO SALES (item, sale_count, country)
VALUES
    ('Shoes', 100, 'SF') INTO SALES (item, sale_count, country)
VALUES
    ('T shirts', 500, 'Uk') INTO SALES (item, sale_count, country)
VALUES
    ('Pants', 100, 'Canada') INTO SALES (item, sale_count, country)
VALUES
    ('Pants', 100, 'Aus')
SELECT
    *
FROM
    dual;

/*Group By*/
SELECT
    item,
    SUM(sale_count) AS "Total-Sales"
FROM
    sales
GROUP BY
    item;

/*
 This result is the total sales of every individual items
 item     |  Total-Sales
 cap      |  550(i.e 100+400+50)
 Shoes    |  300(i.e200+100)
 T shirts |  500
 Pants    |  200(i.e100+100)
 */