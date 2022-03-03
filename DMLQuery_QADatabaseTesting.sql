

use employeedb;

show tables;


CREATE TABLE EMP_INFO (    
    Id int PRIMARY KEY AUTO_INCREMENT,     
    Name varchar(45) NOT NULL,  
    LastName varchar(40),
    Department varchar(40),     
    Country varchar(25) 
);   
ALTER TABLE EMP_INFO 
DROP COLUMN Countri;  

 ALTER TABLE EMP_INFO
ADD City varchar(25) Not null 
AFTER Department; 

select * from EMP_INFO;
-- insert  in directly  into table
insert into  EMP_INFO values(1,'vishal','Rathod','QAEngineer','INDIA');
insert into  EMP_INFO values(3,'Raj','pawar','HR','INDIA');
insert into  EMP_INFO values(2,'Rakesh','chavan','Dev','INDIA');

INSERT INTO EMP_INFO (Id, Name, LastName, Department,City)  
VALUES ( 3,'ABHIRAM', 'Jadhao','finance', 'ALLAHABAD');  
INSERT INTO EMP_INFO (Id, Name, LastName, Department,City)   
VALUES (4, 'ALKA','Verma','HR', 'GHAZIABAD');  
INSERT INTO EMP_INFO (Id, Name, LastName, Department,City)  
VALUES (5, 'DISHA','patni','dev', 'VARANASI');  
INSERT INTO EMP_INFO (Id, Name, LastName, Department,City)  
VALUES ( 6,'ESHA', 'Rane','Testing', 'DELHI');  
INSERT INTO EMP_INFO (Id, Name, LastName, Department,City)
VALUES (7, 'MANMEET', 'Rathor','QA','JALANDHAR'); 

select * from EMP_INFO;

 -- write a single query to insert multiple records in the EMP_INFO table:
 INSERT INTO EMP_INFO (Id, Name, LastName, Department,City)
 VALUES (8, 'Sanket', 'Jain', 'HR', 'Shimla'),(9, 'Sahil' ,'Wagh', 'Dev', 'Kolkata'),
 (10, 'Saurabh', 'Singh', 'Finance', 'Kashmir');

desc EMP_INFO;

-- UPDATE:COMMAND
--  Update Command is used to modify the data that is already in the database.
-- use a WHERE clause.
UPDATE EMP_INFO SET Name = 'PRATIK' WHERE Id = 3;
UPDATE EMP_INFO SET City = 'Pune' WHERE Id = 1 ;
UPDATE EMP_INFO SET City = 'mumbai' WHERE Id = 2;
UPDATE EMP_INFO SET NAME = 'PRATIK', LastName = 'Raje' WHERE Id = 3;
select * from EMP_INFO;

-- Update Date

 ALTER TABLE EMP_INFO
ADD Date  date 
AFTER City; 

UPDATE EMP_INFO   
SET Date = '1995-07-29'  
WHERE Id = 1; 

UPDATE EMP_INFO   
SET Date = '1999-07-10'  
WHERE Id = 2; 
select * from EMP_INFO;
 
-- DELETE: COMMAND :
-- DELETE statement removes one or more records from a table.
-- use a WHERE clause.
DELETE FROM EMP_INFO   WHERE Id = 3;
 
-- Deleted all record in the table
DELETE  FROM customer;  
select * from customer;

-- Deleted perticular row
DELETE FROM EMP_INFO  WHERE id = 5; 

-- when the databse delete then couldnot use the delete query, uses the drop command;
create database demo;  
show databases;
use demo;
drop database demo;

use employeedb;
show tables;
