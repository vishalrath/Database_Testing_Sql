-- Perform the DDL Command
 
-- #CREATE COMMAND:

-- creating database 
CREATE DATABASE employeedb; 

-- displayed the database 
show databases;

-- use the creating database
use employeedb;

-- create table in the database
CREATE TABLE employee_table(  
    id int NOT NULL AUTO_INCREMENT,  
    name varchar(45) NOT NULL,  
    occupation varchar(35) NOT NULL,  
    age int NOT NULL,  
    PRIMARY KEY (id)  
);

-- displayed the table in database   
show tables;
describe employee_table;

-- #DROP:COMMAND :

-- delete the table in databse
drop table employee_table;

-- again create table in the database
CREATE TABLE customer_table(  
    cus_id int AUTO_INCREMENT PRIMARY KEY,  
    cus_name varchar(45) NOT NULL,  
    cus_lastname varchar(35) NOT NULL,  
    cus_age int NOT NULL  
); 

-- displayed the table structure in database
describe customer_table;

-- #ALTER: cOMMAND :

-- modify the table coloum add one and more rows and coloum
ALTER TABLE employee_table  
ADD lastname varchar(40) NOT NULL;  

-- modify the table coloum add one and more coloum using after clouse condition
 ALTER TABLE customer_table
ADD cus_address varchar(100) NOT NULL  
AFTER cus_lastname,  
ADD cus_salary int(100) NOT NULL  
AFTER cus_age;  

describe customer_table;

-- modify the cus_lastname is apply null
 ALTER TABLE customer_table  
MODIFY cus_lastname varchar(40) NULL;

-- modify  in the  table delete the column 
ALTER TABLE customer_table 
DROP COLUMN cus_address;  

-- #RENAME: COMMAND :

-- rename the table name
ALTER TABLE customer_table  
RENAME TO cus_table;  

-- creating another table and apllying primary key, defalt values,not null


INSERT INTO customer ( Id, Name, Product, Country, Year)     
VALUES (1, 'Stephen', 'Computer', 'USA', 2015),     
(2, 'Joseph', 'Laptop', 'India', 2016),     
(3, 'John', 'TV', 'USA', 2016),    
(4, 'Donald', 'Laptop', 'England', 2015),    
(5, 'Joseph', 'Mobile', 'India', 2015),    
(6, 'Peter', 'Mouse', 'England', 2016);  

select * from customer;

desc customer;

-- #TRUNCATE:COMMAND :

-- truncate means delete the all data in the table but table structure not deleted
truncate table customer;

-- drop means delete table structure and delete the entries also( all information with table deleted)
drop table customer;

-- create table person and apllying the check constraint condition in the query
CREATE TABLE Persons (  
    ID int NOT NULL,  
    Name varchar(45) NOT NULL,  
    Age int CHECK (Age>=18)  
);  

-- insert value in tthe table person
INSERT INTO Persons(Id, Name, Age)   
VALUES (1,'Robert', 28), (2, 'Joseph', 35), (3, 'Peter', 40);  

INSERT INTO Persons(Id, Name, Age) VALUES (4,'Smith', 15);  

-- selct the table and displayed the entries in the table
select * from Persons;

-- delete table person
drop table Persons;

-- creating table and aplaying default contraint to column
CREATE TABLE PersonsInfo (  
    ID int NOT NULL,  
    Name varchar(45) NOT NULL,  
    Age int,  
    City varchar(25) DEFAULT 'New York'  
); 

select * from PersonsInfo;
