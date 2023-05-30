/*
Join query combine rows from 2 or more tables.
Rows are combined based on the related column between them
*/

/*Query:Need order id ,name of emp and salary */
CREATE TABLE employee (
    emp_id number(15) NOT NULL,
    full_name varchar2(20) NOT NULL,
    PRIMARY KEY(emp_id)
);

CREATE TABLE salary (
    order_id number(15) NOT NULL,
    emp_id  number(15) NOT NULL,
    amount number(20) NOT NULL,
    PRIMARY KEY(order_id)
);

/*Note that both employee and the salary table contains 
the emp_id */

INSERT
    ALL INTO employee (emp_id, full_name)
VALUES
    (1, 'Samantha') INTO employee (emp_id, full_name)
VALUES
    (2, 'Trump') INTO employee (emp_id, full_name)
VALUES
    (3, 'BradPrit') INTO employee (emp_id, full_name)
VALUES
    (4, 'Robin')
SELECT
    *
FROM
    dual;
   SELECT  * FROM employee;
  

   
   INSERT
    ALL INTO salary (order_id, emp_id, amount)
VALUES
    (1024, 1, 60000) INTO salary (order_id, emp_id, amount)
VALUES
    (1025, 2, 358522) INTO salary (order_id, emp_id, amount)
VALUES
    (1026, 3, 45200) INTO salary (order_id, emp_id, amount)
VALUES
    (1027, 4, 58255)
SELECT
    *
FROM
    dual;
   
   SELECT * FROM salary;


   SELECT employee.emp_id,employee.full_name,salary.amount FROM employee INNER JOIN salary ON salary.emp_id=employee.emp_id ;