CREATE DATABASE ORG123;
SHOW DATABASES;
USE ORG123;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT,
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
        
        drop table worker;
        
        select* from worker where salary>=100000 && department = 'HR';
        select* from worker where salary>=200000;
        select* from worker where salary between 100000 and 200000;
		select* from worker where salary not between 100000 and 200000;
        
        select first_NAME from worker where worker_id = 2 or worker_id = 4;
        
        select * from worker where salary between 200000 and 400000 and worker_id in (1,2,3,4,5);
        
        desc worker;
        show table worker;
        select* from worker;
        
        SELECT MIN(salary)
FROM worker
WHERE department = 'HR';

SELECT FIRST_NAME, LAST_NAME  
FROM Worker  
WHERE DEPARTMENT = 'HR'  
AND SALARY = (SELECT MIN(SALARY) FROM Worker WHERE DEPARTMENT = 'HR');

COUNT() Syntax
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
AVG() Syntax
SELECT AVG(column_name)
FROM table_name
WHERE condition;
SUM() Syntax
SELECT SUM(column_name)
FROM table_name
WHERE condition;