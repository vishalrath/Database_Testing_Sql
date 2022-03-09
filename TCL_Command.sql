/*# There are certain commands present in SQL known as TCL commands that help the user manage the 
transactions that take place in a database.
COMMIT. ROLLBACK and SAVEPOINT are the most commonly used TCL commands in SQL.*/
show databases;
use employeedb;

show tables;
select * from customer;
 start transaction;
 
insert into customer values(4,'raj','xcv','africa','2020');
insert into customer values(5,'ram','ccv','In','2001');
update customer set Name ='vishal' where Id = 5;

/*ROLLBACK statement ends the current transaction and a new one starts.
 If a session that has autocommit disabled ends without explicitly committing the final transaction, 
 MySQL rolls back that transaction.
rollback;

delete from customer where id =4;
select * from customer;

/* BEGIN / START TRANSACTION command is used to start the transaction.
 start transaction;
 
 /*Using the SAVEPOINT command in SQL, we can save these different parts
 of the same transaction using different names. 

 savepoint insertion;

insert into customer values(4,'raj','xcv','africa','2020');
insert into customer values(6,'ram','xcv','africa','2020');
update customer set Name ='vishal' where Id = 4;

/*
Consider the update operation as one part of our transaction. 
We will save this part using a savepoint named Updation.

savepoint updation;

/* we have rolled back to the savepoint named Insertion.
rollback to insertion;

/* COMMIT command in SQL is used to save all the transaction-related changes permanently to the disk.
commit;