CREATE DATABASE ORG123;
USE ORG123;

create table category(
c_id int primary key,
c_name varchar(25) not null unique,
c_decrp varchar(250) not null
);

insert into category values(101,'furniture','it sotres wooden items');
select * from category;
desc category;

create table products(
 p_id int primary key,
 p_name varchar(250) NOT NULL,
 c_id int,
 constraint c_id foreign key(c_id),
  REFERENCES category(c_id)
);
show tables from org123;
desc products;

drop table products;

insert into products values (904, 'Wooden table', null);
select * from products;


select * from category;

delete from category where c_id=101;

drop table category;



CREATE TABLE Student (
    sno INT PRIMARY KEY,
    sname VARCHAR(20),
    age INT

);

INSERT INTO Student(sno, sname,age) 
 VALUES(1,'Ankit',17),
       (2,'Ramya',18),
       (3,'Ram',16);

SELECT *
FROM Student;

CREATE TABLE Course (
    cno INT PRIMARY KEY,
    cname VARCHAR(20)
);

INSERT INTO Course(cno, cname) 
 VALUES(101,'c'),
       (102,'c++'),
       (103,'DBMS');

SELECT *
FROM Course;

CREATE TABLE Enroll (
    sno INT,
    cno INT,
    jdate DATE,
    PRIMARY KEY(sno, cno),
    FOREIGN KEY(sno) REFERENCES Student(sno) ON DELETE CASCADE,
    FOREIGN KEY(cno) REFERENCES Course(cno) ON DELETE CASCADE
);

INSERT INTO Enroll(sno, cno, jdate) 
VALUES (1, 101, '2021-06-05'),
       (1, 102, '2021-06-05'),
       (2, 103, '2021-06-06');
       
SELECT *
FROM Enroll;
       
create database saturday;
use saturday;

create table category(
c_id int primary key,
c_name varchar(25) not null unique,
c_decrp varchar(250) not null
);

insert into category values (101, 'electronics', 'it stores all set of electronics items');
select * from category;
desc category;

CREATE TABLE Products (
    P_ID int primary key,
    p_Name varchar(250) NOT NULL,
    c_id int ,
    CONSTRAINT c_id FOREIGN KEY (c_id)
    REFERENCES category(c_id) on delete cascade
);

insert into products values (904, 'INTEL I5 Processor', 101);
select * from products;
delete from category where c_id=101;
select * from category;


CREATE TABLE College (
    c_id INT PRIMARY KEY,
    campus VARCHAR(100)
);

CREATE TABLE Department (
    d_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    c_id INT,
    FOREIGN KEY (c_id) REFERENCES College(c_id) ON DELETE CASCADE
);

CREATE TABLE Student (
    s_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    c_id INT,
    d_id INT,
    FOREIGN KEY (c_id) REFERENCES College(c_id) ON DELETE CASCADE,
    FOREIGN KEY (d_id) REFERENCES Department(d_id) ON DELETE CASCADE
);

insert into college values (101, 'Bhopal'), (102, 'Chennai');

select * from college;

insert into department values (201, 'Mechanical', 101), (202, 'Electronics', 102);

select * from department;

insert into student values (301, 'Asmita', 101, 201), (302, 'Vedika', 102, 202);

select * from student;


