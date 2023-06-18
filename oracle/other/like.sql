
CREATE TABLE employee (
    emp_id number(15) NOT NULL,
    full_name varchar2(20) NOT NULL,
    PRIMARY KEY(emp_id)
);



INSERT
	ALL
INTO employee (emp_id, full_name) VALUES (21, 'Samantha') 
INTO employee (emp_id, full_name) VALUES (22, 'Trump') 
INTO employee (emp_id, full_name) VALUES (23, 'Jackie Chan') 
INTO employee (emp_id, full_name) VALUES (24, 'Rama Siva')
INTO employee (emp_id,full_name) VALUES(27,'Ramana')
INTO employee (emp_id,full_name) VALUES(28,'Trump')
INTO employee (emp_id,full_name) VALUES(29,'Arpitha')
INTO employee (emp_id,full_name) VALUES (30,'Fold B')

SELECT * FROM dual;

​
/*The LIKE operator is used in a WHERE clause to search for a
 specified pattern in a column.*/
 /*WHERE FULL_NAME LIKE 'sa%'Finds any values that start with "sa"*/
SELECT * FROM EMPLOYEE
WHERE FULL_NAME LIKE 'sa%'; 

SELECT * FROM EMPLOYEE
WHERE FULL_NAME LIKE 'Sa%'; 