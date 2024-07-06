
# Inner join

An INNER JOIN merges ONLY the matching rows in BOTH tables
A intersection B

“employee “ table contains the list of all the employees.In these employees only few people got the annual bonus based on their performance.”annual_bonus” table contains only  the list of employees who got the bonus
# employee
100	"Samantha"
250	"Trump Donald"
323	"Jackie Chan"
444	"Rama Siva"
500	"Xyortman Henry"
600	"Robert Sharma"

# annual_bonus
"TX-23-01"	1	60000
"TX-23-02"	2	358522
"TX-23-03"	323	358522
"TX-23-04"	444	358522
"TX-23-05"	875	45200
"TX-23-06"	788	45200

# join
Join operation gives the list of employees who received the bonus
select * from employee inner join annual_bonus on employee.emp_id=annual_bonus.emp_id


323	"Jackie Chan"	"TX-23-03"	323	358522
444	"Rama Siva"	"TX-23-04"	444	358522


select * from annual_bonus inner join employee  on employee.emp_id=annual_bonus.emp_id

