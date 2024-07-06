drop table employee;
drop table salary;
drop table annual_bonus;

CREATE TABLE employee (
    emp_id int NOT NULL,
    full_name varchar(20) NOT NULL,
    PRIMARY KEY(emp_id)
);

CREATE TABLE annual_bonus (
    order_id varchar(15) NOT NULL,
    emp_id  int NOT NULL,
    amount int NOT NULL,
    PRIMARY KEY(order_id)
);



/*Note that both employee and the salary table contains 
the emp_id */

INSERT
     INTO employee (emp_id, full_name )
   values (100, 'Samantha'), 
    (250, 'Trump Donald'), 
    (323, 'Jackie Chan') ,
    (444, 'Rama Siva'),
	(500, 'Xyortman Henry'), 
	(600, 'Robert Sharma')
    

INSERT
   INTO annual_bonus (order_id, emp_id, amount)
    values ('TX-23-01', 1, 60000) ,
    ('TX-23-02', 2, 358522) ,
    ('TX-23-03', 323, 358522)  , 
    ('TX-23-04', 444, 358522) ,
    ('TX-23-05', 875, 45200) ,
	('TX-23-06', 788 , 45200) 

select * from employee inner join annual_bonus on employee.emp_id=annual_bonus.emp_id




select * from annual_bonus inner join employee  on employee.emp_id=annual_bonus.emp_id