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


/*Alies of cloumn names*/

  SELECT  EMP_ID AS EMPLOYEE_NO FROM employee;
  /*IOn the output table instead of EMP_ID label ,label will be 
  printed as EMPLOYEE_NO
   */

/*Alies of Tables names*/

  SELECT  E.EMP_ID  FROM employee E  INNER JOIN salary S ON E.EMP_ID=S.EMP_ID ;
  /*Here E is the alies for employee table 
  and S is the alies for the salary table
  */