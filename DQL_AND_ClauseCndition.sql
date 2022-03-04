-- Perform DCL QUERY COMMAND

show databases;
use employeedb;
show tables;

--  SELECT COMMAND
select * from emp_info;

-- Select Command with use  SQL Clause
-- 1) WHERE Clause
select * from emp_info where Id=1;
select * from emp_info where Name = 'Rakesh';
select * from emp_info where City = 'Pune';

-- 2)  WHERE Clause with AND
SELECT * FROM emp_info WHERE Department = "Dev" AND City = "Kolkata";  
SELECT * FROM emp_info WHERE Name = "ALKA" AND LastName = "Verma";  
select * from emp_info;

-- 2)  WHERE Clause with OR
SELECT *FROM emp_info WHERE Department = "QA" OR City = "Pune";  
SELECT *FROM emp_info WHERE Department = "QA" OR City = "Pune";  

-- 3) DISTINCT Clause
# DISTINCT Clause with single expression
SELECT DISTINCT Department  
FROM emp_info;  

# DISTINCT Clause with multiple expressions
SELECT DISTINCT Department, City  FROM emp_info; 

# FROM Clause
SELECT *  FROM emp_info  WHERE Id <= 3;  

# ORDER BY clause
SELECT *  FROM emp_info  WHERE Department = 'Dev'  ORDER BY Name;  

# ORDER BY: with ASC (ascending order)
SELECT *  FROM emp_info  WHERE Department = 'Dev'  ORDER BY Name ASC;  

# ORDER BY: with DESC(desending order)
SELECT *  FROM emp_info  WHERE Department = 'Dev'  ORDER BY Name DESC;  

# ORDER BY: using both ASC and DESC
SELECT Name, Department  FROM emp_info  WHERE Id < 5  ORDER BY Name DESC, Department ASC;  

# GROUP BY Clause
-- 1.GROUP BY Clause with COUNT function
SELECT Name, COUNT(*)  FROM   emp_info   GROUP BY Name;   
SELECT Department, COUNT(*)  FROM   emp_info   GROUP BY Department;  

-- 2.GROUP BY Clause with SUM function( not perform)
CREATE TABLE Employee ( Id int , Name varchar(45) NOT NULL,  Working_Hour int);
insert into Employee values(4,'smita',5),(2,'amol',15),(2,'amol',9),(3,'Rakesh',8),(1,'vishal',21),(3,'Rakesh',22);
select * from Employee;

--  perform sum clause
SELECT Name, SUM(working_Hour) AS "Total working hours"  FROM Employee  
GROUP BY Name;   

-- GROUP BY Clause with MIN function
SELECT Name, MIN(working_Hour) AS "Minimum working hour"  FROM Employee GROUP BY Name;

-- GROUP BY Clause with MAX function
SELECT Name, MAX(working_Hour) AS "Maximum working hour"  FROM Employee GROUP BY Name;

-- GROUP BY Clause with AVG function
SELECT Name, AVG(working_Hour) AS "Average working hour"  FROM Employee GROUP BY Name; 

# HAVING Clause
-- MySQL HAVING Clause is used with GROUP BY clause. It always returns the rows where condition is TRUE.
-- HAVING Clause with SUM function
SELECT Name, SUM(working_Hour) AS "Total working hours"  
FROM Employee  GROUP BY Name  HAVING SUM(working_Hour) > 5;  


# MySQL JOINS
/* JOINS are used with SELECT statement. It is used to retrieve data from multiple tables. 
It is performed whenever you need to fetch records from two or more tables.*/

-- 1.Inner JOIN (Simple Join)
SELECT emp_info.Name,  emp_info.LastName, emp_info.City, Employee.Name,Employee.Working_Hour
FROM emp_info   
INNER JOIN Employee  
ON emp_info.Id = Employee.Id;  

-- 2.Left Outer Join


SELECT emp_info.Name,  emp_info.LastName, emp_info.City, Employee.Name,Employee.Working_Hour
FROM emp_info   
LEFT JOIN Employee  
ON emp_info.Id = Employee.Id; 

-- 3.Right Outer Join
SELECT emp_info.Name,  emp_info.LastName, emp_info.City, Employee.Name,Employee.Working_Hour
FROM emp_info   
RIGHT JOIN Employee  
ON emp_info.Id = Employee.Id; 

-- 4.Inner Join
SELECT emp_info.Name,  emp_info.LastName, emp_info.City, Employee.Name,Employee.Working_Hour
FROM emp_info   
inner JOIN Employee  
ON emp_info.Id = Employee.Id;  

-- 5.Inner Join with Group By Clause
SELECT emp_info.Name,  emp_info.LastName, emp_info.City, Employee.Name,Employee.Working_Hour
FROM emp_info   
inner JOIN Employee  
ON emp_info.Id = Employee.Id GROUP BY City; 

-- 6. Inner Join with USING clause
SELECT  LastName, City, Department    
FROM emp_info   
INNER JOIN Employee    
USING (Name);  

-- 7.Inner Join with WHERE Clause
SELECT  LastName, City, Department    
FROM emp_info   
INNER JOIN Employee    
USING (Name) WHERE Working_Hour = 8  ;  

 show tables;
 select * from customer;

-- CROSS JOIN
SELECT *  
FROM emp_info  
CROSS JOIN customer;   