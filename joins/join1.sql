

/*Query:Need order id ,name of emp and salary */
CREATE TABLE employee (
    emp_id number(15) NOT NULL,
    full_name varchar2(20) NOT NULL,
    PRIMARY KEY(emp_id)
);

CREATE TABLE salary (
    order_id varchar2(15) NOT NULL,
    emp_id  number(15) NOT NULL,
    amount number(20) NOT NULL,
    PRIMARY KEY(order_id)
);

/*Note that both employee and the salary table contains 
the emp_id */

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
    ALL INTO salary (order_id, emp_id, amount)
VALUES
    ('TX-23-01', 19, 60000) INTO salary (order_id, emp_id, amount)
VALUES
    ('TX-23-02', 20, 358522) INTO salary (order_id, emp_id, amount) 
VALUES
    ('TX-23-03', 21, 358522) INTO salary (order_id, emp_id, amount)   
VALUES
    ('TX-23-04', 22, 358522) INTO salary (order_id, emp_id, amount)
VALUES
    ('TX-23-05', 23, 45200) INTO salary (order_id, emp_id, amount)
VALUES
    ('TX-23-06', 24, 45200) INTO salary (order_id, emp_id, amount)    
VALUES
    ('TX-23-07', 25, 58255)
SELECT
    *
FROM
    dual;
   

/*Natural Join*/
SELECT * FROM employee NATURAL JOIN salary;

/*CROSS Join or Cartition*/
SELECT * FROM salary CROSS  JOIN employee;

/*Inner join*/
SELECT * FROM salary INNER JOIN employee ON salary.emp_id = employee.emp_id

/*LEFT Left Outer join*/
SELECT * FROM employee LEFT JOIN salary ON salary.emp_id = employee.emp_id;

/*LEFT Rigth Outer join*/
SELECT * FROM employee RIGHT JOIN salary ON salary.emp_id = employee.emp_id;


/*Full Full Outer join*/
SELECT * FROM employee  FULL  JOIN salary ON salary.emp_id = employee.emp_id;
