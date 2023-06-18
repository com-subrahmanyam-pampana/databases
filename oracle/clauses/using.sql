



   

  

   
 CREATE TABLE employee (
    emp_id number(15) NOT NULL,
    full_name varchar2(20) NOT NULL,
    PRIMARY KEY(emp_id)
);

CREATE TABLE salary1 (
    order_id varchar2(15) NOT NULL,
    emp_id  number(15) NOT NULL,
    amount number(20) NOT NULL,
    PRIMARY KEY(order_id)
);

CREATE TABLE salary2 (
    order_id varchar2(15) NOT NULL,
    emp_id  number(15) NOT NULL,
    amount number(20) NOT NULL,
     full_name varchar2(20),
    PRIMARY KEY(order_id)
);

DROP TABLE salary1;

/*Note that both employee and the salary table contains 
the emp_id, full_name*/

INSERT
    ALL INTO employee (emp_id, full_name)
VALUES
    (21, 'Samantha') INTO employee (emp_id, full_name)
VALUES
    (22, 'Trump') INTO employee (emp_id, full_name)
VALUES
    (23, 'Jackie Chan') INTO employee (emp_id, full_name)
VALUES
    (24, 'Rama Siva')
SELECT
    *
FROM
    dual;

INSERT
    ALL INTO salary1 (order_id, emp_id, amount)
VALUES
    ('TX-23-01', 19, 60000) INTO salary1 (order_id, emp_id, amount)
VALUES
    ('TX-23-02', 20, 358522) INTO salary1 (order_id, emp_id, amount) 
VALUES
    ('TX-23-03', 21, 358522) INTO salary1 (order_id, emp_id, amount)   
VALUES
    ('TX-23-04', 22, 358522) INTO salary1 (order_id, emp_id, amount)
VALUES
    ('TX-23-05', 23, 45200) INTO salary1 (order_id, emp_id, amount)
VALUES
    ('TX-23-06', 24, 45200) INTO salary1 (order_id, emp_id, amount)    
VALUES
    ('TX-23-07', 25, 58255)
SELECT
    *
FROM
    dual;
   
   
   
   INSERT
    ALL INTO salary2 (order_id, emp_id, amount,full_name)
VALUES
    ('TX-23-01', 19, 60000,null) INTO salary2 (order_id, emp_id, amount,full_name)
VALUES
    ('TX-23-02', 20, 358522,null) INTO salary2 (order_id, emp_id, amount,full_name) 
VALUES
    ('TX-23-03', 21, 358522,null) INTO salary2 (order_id, emp_id, amount,full_name)   
VALUES
    ('TX-23-04', 22, 358522,null) INTO salary2 (order_id, emp_id, amount,full_name)
VALUES
    ('TX-23-05', 23, 45200,null) INTO salary2 (order_id, emp_id, amount,full_name)
VALUES
    ('TX-23-06', 24, 45200,null) INTO salary2 (order_id, emp_id, amount,full_name)    
VALUES
    ('TX-23-07', 25, 58255,null)
SELECT
    *
FROM
    dual;
   
   
   

/*Natural Join  employee with salary1:Prints 4 rows.
 * It comapres only the emp_id in both the table
 * */
SELECT * FROM employee  NATURAL JOIN salary1 ;
/*Natural Join employee with salary2:Prints 0 rows because it compare both the 
 emp_id and  full_name.Both emp_id and  full_name present in  both the tables and full_name  is null 
  in the slary2 table which gives us 0 rows
 * */
SELECT * FROM employee  NATURAL JOIN salary2 ;

/*Inner Join with salary2:
 Natural Join with salary gives 0 rows as full_name value are null in salary2.Use Inner join and use only emp_id only for comparion
 Prints 4 rows  but emp_id colum repeates twice in the result
 * */
SELECT * FROM employee   JOIN salary2 ON  employee.emp_id=salary2.emp_id ;

/*Using Join with salary2:Prints 4 rows 
 ans also empL-d colum exists only once
 * */
SELECT * FROM employee   JOIN salary2 using(emp_id) ;
