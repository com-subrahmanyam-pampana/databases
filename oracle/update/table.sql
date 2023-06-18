
CREATE TABLE employee (
    emp_id number(15) NOT NULL,
    full_name varchar2(20) NOT NULL,
    PRIMARY KEY(emp_id)
);


/*Add city to employee */
 ALTER TABLE EMPLOYEE ADD city VARCHAR2(20);