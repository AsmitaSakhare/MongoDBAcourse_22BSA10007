show databases;

create database VIT;

drop database VIT;
use Vit;
create table CSE(
s_id int,
s_name varchar(30),
s_mark int 
);

show tables from vit;

select *from cse;
insert into cse values(1001, 'Ram Charan', 99);

use vit;
create table CSECloud(
s_id int,
s_class varchar(30),
s_attendance int
);

insert into CSECloud values(100, 'data management', 78);
insert into CSECloud values(101, 'security' , 56);
insert into CSECloud values(102, 'microservices', 98);
insert into CSECloud values(103, 'AWS', 100);
insert into CSECloud values(104, 'HPC', 97);

show tables from vit;
ALTER TABLE CSE ADD(
    address VARCHAR(200)
);

show tables from vit;
select * from cse;
desc cse;
alter table cse add(
s_country varchar(30) default 'india'
);

ALTER TABLE cse RENAME column 
    s_country TO s_state;
    
    desc cse;
    desc csecloud;
    select* from csecloud;
    
    insert into csecloud values (105, 'maths', 87),(106, 'english', 65);
    
    use vit;
    delete from CSECloud where s_id = 101;
    
    update csecloud set s_attendance = 87 where s_id = 104;
    
    update csecloud set s_attendance = s_attendance+1;

    
    select s_id, s_attendance from csecloud;
	select s_id, s_attendance from csecloud where s_id = 104;


    
    
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
		(1, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
		(2, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
		(3, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
		(4, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
		(5, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
		(6, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
		(7, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
		(8, 'Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');        
        drop table worker;
        
CREATE TABLE Bonus (
    BONUS_ID INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each bonus entry
    WORKER_REF_ID INT,
    BONUS_AMOUNT INT,  -- No need for (10)
    BONUS_DATE DATETIME,
    FOREIGN KEY (WORKER_REF_ID)
        REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);
drop table bonus;

INSERT INTO Bonus 
    (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) 
VALUES
    (1, 5000, '2020-02-16'),
    (2, 3000, '2011-06-16'),
    (3, 4000, '2020-02-16'),
    (1, 4500, '2020-02-16'),
    (2, 3500, '2011-06-16');
    
    CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
(1, 'Manager', '2016-02-20 00:00:00'),
(2, 'Executive', '2016-06-11 00:00:00'),
(8, 'Executive', '2016-06-11 00:00:00'),
(5, 'Manager', '2016-06-11 00:00:00'),
(4, 'Asst. Manager', '2016-06-11 00:00:00'),
(7, 'Executive', '2016-06-11 00:00:00'),
(6, 'Lead', '2016-06-11 00:00:00'),
(3, 'Lead', '2016-06-11 00:00:00');
    SELECT * 
FROM Worker 
WHERE FIRST_NAME NOT IN ('Vipul', 'Satish');

SELECT * 
FROM Worker 
WHERE FIRST_NAME LIKE '%a';

SELECT * 
FROM Worker 
WHERE FIRST_NAME LIKE '%h' 
AND LENGTH(FIRST_NAME) = 6;

SELECT DEPARTMENT, COUNT(*) AS WORKER_COUNT
FROM Worker
GROUP BY DEPARTMENT
ORDER BY WORKER_COUNT DESC;
        
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

create database org123;

use org123;

create table category(
c_id int primary key,
c_name varchar(25) not null unique,
c_decrp varchar(250) not null
);


insert into category values (102, 'furnitures','it stores all set of wooden items');

select * from category;
desc category;

CREATE TABLE Products(
P_ID int primary key,
p_Name varchar(250) NOT NULL,
c_id int,
constraint c_id foreign key (c_id)
references category(c_id)
);

desc products;

drop table products;

insert into products values(904,'Wooden table',null);

select * from products;

select* from category;

delete from category where c_id = 101;

drop table category;


show databases;
use org123;

create table Student(
sno int primary key,
sname varchar(20),
age int
);

insert into Student(sno,sname,age)
values (1,'Ankit',17),
(2,'Ramya',18),
(3,'Ram',16);

create table Course(
cno int primary key,
cname varchar(20)
);

select from Course;
insert into Course(cno,cname)
values(101,'c'),
(102,'c++'),
(103,'DBMS');

create table Enroll(
sno int,
cno int,
jdate date,
primary key (sno,cno),
foreign key(cno)
	references Course(cno)
	on delete cascade
);

insert into Enroll (sno,cno,jdate)
value (2,105,"2022/05/05");

select * from enroll;
desc enroll;

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

# distnict
select distinct (department) from worker;

#alias - help you to give some temp name for a coloumn
select worker_id from worker;
select worker_id as emp_code from worker;

select worker_id from worker
UNION
select worker_id from worker;

select worker_id from worker
UNION ALL
select worker_id from worker;

select worker_id from worker
UNION
select First_name from worker;

select department, worker_id from worker where salary = 100000
UNION
select department,worker_id from worker where salary = 200000
order by worker_id;

select worker_id, department from worker where department = 'HR'
UNION
select worker_id,department from worker where department = 'account';

select worker_id, first_name , department ,
CASE
when salary > 300000 then 'Rich people'
when salary <= 300000 && salary >=100000 then 'Middle class'
else 'Poor people'
END
AS 'People classes'
from worker;

select department, COUNT(WORKER_ID) as total_employees
from worker
group by department
order by department;

select * from worker where department = 'admin' order by salary;
select * from worker where department = 'admin' order by department desc;
select * from worker where department = 'admin' order by department desc limit 1;

select department, count(department) as total_employeees from worker
where department ='HR' or department = 'account' group by department;

select department, count(department) as total_employees from worker
group by department
order by total_employees desc limit 2;

(select department, count(department) as total_employees
from worker
group by department
order by total_employees asc
limit 1)
UNION ALL
(select department, count(department) as total_employees
from worker
group by department
order by total_employees desc
limit 1);

#1. Write an SQL query to print details of the Workers who are also Managers.
SELECT * FROM Worker w inner JOIN Title t ON 
(w.WORKER_ID = t.WORKER_REF_ID) WHERE t.WORKER_TITLE = 'Manager';

create table persons(
ID int not null unique,
LastName varchar(255) NOT null,
FirstNAme varchar(255),
Age int
);

desc persons;
ALTER TABLE persons DROP INDEX ID;  

ALTER TABLE Persons
ADD CONSTRAINT UC_Person UNIQUE (ID,LastName);

ALTER TABLE Persons
DROP INDEX UC_Person;

CHECK (salary>=200000 and salary=400000);

select * from worker where first_name like'_i_a%';
select * from worker where salary like '8%';

create view admin_more_salary AS
select * from worker where department = 'admin' and salary>100000 order by salary desc;

select * from admin_more_salary;

create or replace view admin_more as
select * from worker where department = 'admin' and salary>100000 order by salary desc;


select * from admin_more;

select department, count(department)as highest_head_count
from worker
group by department
having count(department)>=3;

SELECT department, COUNT(*) AS department_count
FROM worker
GROUP BY department
ORDER BY department_count DESC
LIMIT 1 OFFSET 1;
#LIMIT 1 OFFSET 1 : Skips the first row and shows the second row and limit it to 1 only

SELECT department, COUNT(*) AS departmentCount
FROM worker
GROUP BY department
HAVING COUNT(*) < (
    SELECT MAX(departmentCount)
    FROM (
        SELECT COUNT(*) AS departmentCount
        FROM worker
        GROUP BY department
    ) AS subquery
order by department limit 1
);

SELECT DEPARTMENT
FROM Worker
GROUP BY DEPARTMENT
HAVING COUNT(WORKER_ID) < 5;

SELECT * 
FROM Worker
ORDER BY WORKER_ID DESC
LIMIT 5;


create table vitBhopal (id int primary key, name varchar(20) not null,
department varchar(25) not null);
insert into vitbhopal values (104,'Karthik','cs'),(103,'Arun','cs');

create table vit (id int primary key, name varchar(20) not null,
college varchar(25) not null);
insert into vit values (104,'Karthik','chennai'),(103,'Arun','bhopal');
select * from vit;

select * from vitbhopal;

select name as WinnerOfTheYear from vitbhopal
where id = (select id from vit where college='bhopal');

drop table vitbhopal;
drop table vit;


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
		(1, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
		(2, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
		(3, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
		(4, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
		(5, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
		(6, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
		(7, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
		(8, 'Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');        
        drop table worker;
        
CREATE TABLE Bonus (
    BONUS_ID INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each bonus entry
    WORKER_REF_ID INT,
    BONUS_AMOUNT INT,  -- No need for (10)
    BONUS_DATE DATETIME,
    FOREIGN KEY (WORKER_REF_ID)
        REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);
drop table bonus;

INSERT INTO Bonus 
    (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) 
VALUES
    (1, 5000, '2020-02-16'),
    (2, 3000, '2011-06-16'),
    (3, 4000, '2020-02-16'),
    (1, 4500, '2020-02-16'),
    (2, 3500, '2011-06-16');
    
    CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
(1, 'Manager', '2016-02-20 00:00:00'),
(2, 'Executive', '2016-06-11 00:00:00'),
(8, 'Executive', '2016-06-11 00:00:00'),
(5, 'Manager', '2016-06-11 00:00:00'),
(4, 'Asst. Manager', '2016-06-11 00:00:00'),
(7, 'Executive', '2016-06-11 00:00:00'),
(6, 'Lead', '2016-06-11 00:00:00'),
(3, 'Lead', '2016-06-11 00:00:00');
    SELECT * 
FROM Worker 
WHERE FIRST_NAME NOT IN ('Vipul', 'Satish');

SELECT * 
FROM Worker 
WHERE FIRST_NAME LIKE '%a';

SELECT * 
FROM Worker 
WHERE FIRST_NAME LIKE '%h' 
AND LENGTH(FIRST_NAME) = 6;

SELECT DEPARTMENT, COUNT(*) AS WORKER_COUNT
FROM Worker
GROUP BY DEPARTMENT
ORDER BY WORKER_COUNT DESC;
        
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

# distnict
select distinct (department) from worker;

#alias - help you to give some temp name for a coloumn
select worker_id from worker;
select worker_id as emp_code from worker;

select worker_id from worker
UNION
select worker_id from worker;

select worker_id from worker
UNION ALL
select worker_id from worker;

select worker_id from worker
UNION
select First_name from worker;

select department, worker_id from worker where salary = 100000
UNION
select department,worker_id from worker where salary = 200000
order by worker_id;

select worker_id, department from worker where department = 'HR'
UNION
select worker_id,department from worker where department = 'account';

select worker_id, first_name , department ,
CASE
when salary > 300000 then 'Rich people'
when salary <= 300000 && salary >=100000 then 'Middle class'
else 'Poor people'
END
AS 'People classes'
from worker;

select department, COUNT(WORKER_ID) as total_employees
from worker
group by department
order by department;

select * from worker where department = 'admin' order by salary;
select * from worker where department = 'admin' order by department desc;
select * from worker where department = 'admin' order by department desc limit 1;

select department, count(department) as total_employeees from worker
where department ='HR' or department = 'account' group by department;

select department, count(department) as total_employees from worker
group by department
order by total_employees desc limit 2;

(select department, count(department) as total_employees
from worker
group by department
order by total_employees asc
limit 1)
UNION ALL
(select department, count(department) as total_employees
from worker
group by department
order by total_employees desc
limit 1);

#1. Write an SQL query to print details of the Workers who are also Managers.
SELECT * FROM Worker w inner JOIN Title t ON 
(w.WORKER_ID = t.WORKER_REF_ID) WHERE t.WORKER_TITLE = 'Manager';

create table persons(
ID int not null unique,
LastName varchar(255) NOT null,
FirstNAme varchar(255),
Age int
);

desc persons;
ALTER TABLE persons DROP INDEX ID;  

ALTER TABLE Persons
ADD CONSTRAINT UC_Person UNIQUE (ID,LastName);

ALTER TABLE Persons
DROP INDEX UC_Person;

CHECK (salary>=200000 and salary=400000);

select * from worker where first_name like'_i_a%';
select * from worker where salary like '8%';

create view admin_more_salary AS
select * from worker where department = 'admin' and salary>100000 order by salary desc;

select * from admin_more_salary;

create or replace view admin_more as
select * from worker where department = 'admin' and salary>100000 order by salary desc;


select * from admin_more;

select department, count(department)as highest_head_count
from worker
group by department
having count(department)>=3;

SELECT department, COUNT(*) AS department_count
FROM worker
GROUP BY department
ORDER BY department_count DESC
LIMIT 1 OFFSET 1;
#LIMIT 1 OFFSET 1 : Skips the first row and shows the second row and limit it to 1 only

SELECT department, COUNT(*) AS departmentCount
FROM worker
GROUP BY department
HAVING COUNT(*) < (
    SELECT MAX(departmentCount)
    FROM (
        SELECT COUNT(*) AS departmentCount
        FROM worker
        GROUP BY department
    ) AS subquery
order by department limit 1
);

SELECT DEPARTMENT
FROM Worker
GROUP BY DEPARTMENT
HAVING COUNT(WORKER_ID) < 5;

SELECT * 
FROM Worker
ORDER BY WORKER_ID DESC
LIMIT 5;


create table vitBhopal (id int primary key, name varchar(20) not null,
department varchar(25) not null);
insert into vitbhopal values (104,'Karthik','cs'),(103,'Arun','cs');

create table vit (id int primary key, name varchar(20) not null,
college varchar(25) not null);
insert into vit values (104,'Karthik','chennai'),(103,'Arun','bhopal');
select * from vit;

select * from vitbhopal;

select name as WinnerOfTheYear from vitbhopal
where id = (select id from vit where college='bhopal');

drop table vitbhopal;
drop table vit;




select * from vitbhopal;
select * from vit;
select name as WinnerOfTheYear from vitbhopal
where id = (select id from vit where place='delhi');



INSERT INTO Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
(1, 'Manager', '2016-02-20 00:00:00'),
(2, 'Executive', '2016-06-11 00:00:00'),
(8, 'Executive', '2016-06-11 00:00:00'),
(5, 'Manager', '2016-06-11 00:00:00'),
(4, 'Asst. Manager', '2016-06-11 00:00:00'),
(7, 'Executive', '2016-06-11 00:00:00'),
(6, 'Lead', '2016-06-11 00:00:00'),
(3, 'Lead', '2016-06-11 00:00:00');
    SELECT * 
FROM Worker 
WHERE FIRST_NAME NOT IN ('Vipul', 'Satish');

SELECT * 
FROM Worker 
WHERE FIRST_NAME LIKE '%a';

SELECT * 
FROM Worker 
WHERE FIRST_NAME LIKE '%h' 
AND LENGTH(FIRST_NAME) = 6;

SELECT DEPARTMENT, COUNT(*) AS WORKER_COUNT
FROM Worker
GROUP BY DEPARTMENT
ORDER BY WORKER_COUNT DESC;
        
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

# distnict
select distinct (department) from worker;

#alias - help you to give some temp name for a coloumn
select worker_id from worker;
select worker_id as emp_code from worker;

select worker_id from worker
UNION
select worker_id from worker;

select worker_id from worker
UNION ALL
select worker_id from worker;

select worker_id from worker
UNION
select First_name from worker;

select department, worker_id from worker where salary = 100000
UNION
select department,worker_id from worker where salary = 200000
order by worker_id;

select worker_id, department from worker where department = 'HR'
UNION
select worker_id,department from worker where department = 'account';

select worker_id, first_name , department ,
CASE
when salary > 300000 then 'Rich people'
when salary <= 300000 && salary >=100000 then 'Middle class'
else 'Poor people'
END
AS 'People classes'
from worker;

select department, COUNT(WORKER_ID) as total_employees
from worker
group by department
order by department;

select * from worker where department = 'admin' order by salary;
select * from worker where department = 'admin' order by department desc;
select * from worker where department = 'admin' order by department desc limit 1;

select department, count(department) as total_employeees from worker
where department ='HR' or department = 'account' group by department;

select department, count(department) as total_employees from worker
group by department
order by total_employees desc limit 2;

(select department, count(department) as total_employees
from worker
group by department
order by total_employees asc
limit 1)
UNION ALL
(select department, count(department) as total_employees
from worker
group by department
order by total_employees desc
limit 1);

#1. Write an SQL query to print details of the Workers who are also Managers.
SELECT * FROM Worker w inner JOIN Title t ON 
(w.WORKER_ID = t.WORKER_REF_ID) WHERE t.WORKER_TITLE = 'Manager';

create table persons(
ID int not null unique,
LastName varchar(255) NOT null,
FirstNAme varchar(255),
Age int
);

desc persons;
ALTER TABLE persons DROP INDEX ID;  

ALTER TABLE Persons
ADD CONSTRAINT UC_Person UNIQUE (ID,LastName);

ALTER TABLE Persons
DROP INDEX UC_Person;

CHECK (salary>=200000 and salary=400000);

select * from worker where first_name like'_i_a%';
select * from worker where salary like '8%';

create view admin_more_salary AS
select * from worker where department = 'admin' and salary>100000 order by salary desc;

select * from admin_more_salary;

create or replace view admin_more as
select * from worker where department = 'admin' and salary>100000 order by salary desc;


select * from admin_more;

select department, count(department)as highest_head_count
from worker
group by department
having count(department)>=3;

SELECT department, COUNT(*) AS department_count
FROM worker
GROUP BY department
ORDER BY department_count DESC
LIMIT 1 OFFSET 1;
#LIMIT 1 OFFSET 1 : Skips the first row and shows the second row and limit it to 1 only

SELECT department, COUNT(*) AS departmentCount
FROM worker
GROUP BY department
HAVING COUNT(*) < (
    SELECT MAX(departmentCount)
    FROM (
        SELECT COUNT(*) AS departmentCount
        FROM worker
        GROUP BY department
    ) AS subquery
order by department limit 1
);

SELECT DEPARTMENT
FROM Worker
GROUP BY DEPARTMENT
HAVING COUNT(WORKER_ID) < 5;

SELECT * 
FROM Worker
ORDER BY WORKER_ID DESC
LIMIT 5;


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
		(1, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
		(2, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
		(3, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
		(4, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
		(5, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
		(6, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
		(7, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
		(8, 'Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');        
        drop table worker;
        
CREATE TABLE Bonus (
    BONUS_ID INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each bonus entry
    WORKER_REF_ID INT,
    BONUS_AMOUNT INT,  -- No need for (10)
    BONUS_DATE DATETIME,
    FOREIGN KEY (WORKER_REF_ID)
        REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);
drop table bonus;

INSERT INTO Bonus 
    (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) 
VALUES
    (1, 5000, '2020-02-16'),
    (2, 3000, '2011-06-16'),
    (3, 4000, '2020-02-16'),
    (1, 4500, '2020-02-16'),
    (2, 3500, '2011-06-16');
    
    CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
(1, 'Manager', '2016-02-20 00:00:00'),
(2, 'Executive', '2016-06-11 00:00:00'),
(8, 'Executive', '2016-06-11 00:00:00'),
(5, 'Manager', '2016-06-11 00:00:00'),
(4, 'Asst. Manager', '2016-06-11 00:00:00'),
(7, 'Executive', '2016-06-11 00:00:00'),
(6, 'Lead', '2016-06-11 00:00:00'),
(3, 'Lead', '2016-06-11 00:00:00');
    SELECT * 
FROM Worker 
WHERE FIRST_NAME NOT IN ('Vipul', 'Satish');

SELECT * 
FROM Worker 
WHERE FIRST_NAME LIKE '%a';

SELECT * 
FROM Worker 
WHERE FIRST_NAME LIKE '%h' 
AND LENGTH(FIRST_NAME) = 6;

SELECT DEPARTMENT, COUNT(*) AS WORKER_COUNT
FROM Worker
GROUP BY DEPARTMENT
ORDER BY WORKER_COUNT DESC;
        
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

# distnict
select distinct (department) from worker;

#alias - help you to give some temp name for a coloumn
select worker_id from worker;
select worker_id as emp_code from worker;

select worker_id from worker
UNION
select worker_id from worker;

select worker_id from worker
UNION ALL
select worker_id from worker;

select worker_id from worker
UNION
select First_name from worker;

select department, worker_id from worker where salary = 100000
UNION
select department,worker_id from worker where salary = 200000
order by worker_id;

select worker_id, department from worker where department = 'HR'
UNION
select worker_id,department from worker where department = 'account';

select worker_id, first_name , department ,
CASE
when salary > 300000 then 'Rich people'
when salary <= 300000 && salary >=100000 then 'Middle class'
else 'Poor people'
END
AS 'People classes'
from worker;

select department, COUNT(WORKER_ID) as total_employees
from worker
group by department
order by department;

select * from worker where department = 'admin' order by salary;
select * from worker where department = 'admin' order by department desc;
select * from worker where department = 'admin' order by department desc limit 1;

select department, count(department) as total_employeees from worker
where department ='HR' or department = 'account' group by department;

select department, count(department) as total_employees from worker
group by department
order by total_employees desc limit 2;

(select department, count(department) as total_employees
from worker
group by department
order by total_employees asc
limit 1)
UNION ALL
(select department, count(department) as total_employees
from worker
group by department
order by total_employees desc
limit 1);

#1. Write an SQL query to print details of the Workers who are also Managers.
SELECT * FROM Worker w inner JOIN Title t ON 
(w.WORKER_ID = t.WORKER_REF_ID) WHERE t.WORKER_TITLE = 'Manager';

create table persons(
ID int not null unique,
LastName varchar(255) NOT null,
FirstNAme varchar(255),
Age int
);

desc persons;
ALTER TABLE persons DROP INDEX ID;  

ALTER TABLE Persons
ADD CONSTRAINT UC_Person UNIQUE (ID,LastName);

ALTER TABLE Persons
DROP INDEX UC_Person;

CHECK (salary>=200000 and salary=400000);

select * from worker where first_name like'_i_a%';
select * from worker where salary like '8%';

create view admin_more_salary AS
select * from worker where department = 'admin' and salary>100000 order by salary desc;

select * from admin_more_salary;

create or replace view admin_more as
select * from worker where department = 'admin' and salary>100000 order by salary desc;


select * from admin_more;

select department, count(department)as highest_head_count
from worker
group by department
having count(department)>=3;

SELECT department, COUNT(*) AS department_count
FROM worker
GROUP BY department
ORDER BY department_count DESC
LIMIT 1 OFFSET 1;
#LIMIT 1 OFFSET 1 : Skips the first row and shows the second row and limit it to 1 only

SELECT department, COUNT(*) AS departmentCount
FROM worker
GROUP BY department
HAVING COUNT(*) < (
    SELECT MAX(departmentCount)
    FROM (
        SELECT COUNT(*) AS departmentCount
        FROM worker
        GROUP BY department
    ) AS subquery
order by department limit 1
);

SELECT DEPARTMENT
FROM Worker
GROUP BY DEPARTMENT
HAVING COUNT(WORKER_ID) < 5;

SELECT * 
FROM Worker
ORDER BY WORKER_ID DESC
LIMIT 5;


create table vitBhopal (id int primary key, name varchar(20) not null,
department varchar(25) not null);
insert into vitbhopal values (104,'Karthik','cs'),(103,'Arun','cs');

create table vit (id int primary key, name varchar(20) not null,
college varchar(25) not null);
insert into vit values (104,'Karthik','chennai'),(103,'Arun','bhopal');
select * from vit;

select * from vitbhopal;

select name as WinnerOfTheYear from vitbhopal
where id = (select id from vit where college='bhopal');

drop table vitbhopal;
drop table vit;






select * from vitbhopal;
select * from vit;
select name as WinnerOfTheYear from vitbhopal
where id = (select id from vit where place='delhi');


create table vitBhopal (id int primary key, name varchar(20) not null,
department varchar(25) not null);
insert into vitbhopal values (104,'Karthik','cs'),(103,'Arun','cs');

create table vit (id int primary key, name varchar(20) not null,
college varchar(25) not null);
insert into vit values (104,'Karthik','chennai'),(103,'Arun','bhopal');
select * from vit;

select * from vitbhopal;

select name as WinnerOfTheYear from vitbhopal
where id = (select id from vit where college='bhopal');

drop table vitbhopal;
drop table vit;






select * from vitbhopal;
select * from vit;
select name as WinnerOfTheYear from vitbhopal
where id = (select id from vit where place='delhi');

use org123;

create table student(
  s_id int primary key,
  s_name varchar(25) not null,
  s_department varchar(25) not null
  );

insert into student values (1001, "Shubham","CSE"),(1002,"Joy","CSE"),(1003,"Ujjwal","CSE");

select * from student;


create table VIT(
  s_id int primary key,
  s_cgpa varchar(5) not null
  );

insert into vit values (1001,'8.2'),(1003,'8.5'),(1007,'9.5');
select * from vit;

use org123;

select * from student cross join vit;

select * from student INNER JOIN vit where student.s_id = vit.s_id;


select * from student NATURAL JOIN vit where student.s_id = vit.s_id;

select * from student LEFT JOIN vit ON (student.s_id = vit.s_id);

select * from student RIGHT JOIN vit ON (student.s_id = vit.s_id);

select * from student full JOIN vit;

select * from student FULL OUTER JOIN vit ON (student.s_id = vit.s_id);


create database friday;
use friday;
show tables from friday;

create table student(id int, name varchar(20), location varchar(20));
insert into student values (101, 'Shubham','Samastipur'),(102,'Joy','Kolkata');

select *from student;


create database saturday;
use saturday;
create table 'user'(
  'sl_no' INT(5) NULL DEFAULT NULL,
  'name' VARCHAR(100) NULL DEFAULT NULL,
  'email' VARCHAR(100) NULL DEFAULT NULL
);

select * from user;


create Database crud;
use crud;

create table user1(
  sl_no INT NULL DEFAULT NULL,
  name VARCHAR(100) NULL DEFAULT NULL,
  email VARCHAR(100) NULL DEFAULT NULL
  );

select * from user1

