-- Active: 1729242076295@@127.0.0.1@3306
CREATE DATABASE JESUS;
use JESUS;
CREATE TABLE DEPT
 (DID int,
 Dname VARCHAR(25),
 primary key(DID));
CREATE Table employee
(EmpNo varchar(10),
Ename VARCHAR(25),
Job VARCHAR(45),
salary INT,
DID int,
primary key(EmpNo)
);
#hardwork pays it all.
 insert into employee VALUES
 ("E001","Tom","Clerk",40000,20),
 ("E002","Agaba","Manager",16000,30),
 ("E003","null","null",20000,20),
 ("E004","Timo","Clerk",40000,30),
 ("E005","Simon","Manager",60000,40);
 CREATE VIEW view_d as SELECT*from employee where DID=30;
 CREATE VIEW view_e as select Job, AVG(salary) from employee GROUP BY Job;
 CREATE view view_f as select *from employee where Ename LIKE'T%';
 ##database love.
 create view view_g as select *from employee ORDER BY Job DESC;
create view view_h as select job, sum(salary) from employee group by job;
create view view_i as select EmpNO,Ename,Job,salary,DID, salary*1.12 as salary_increase from employee;
ALTER Table DEPT add COLUMN Location VARCHAR(45);
ALTER table DEPT MODIFY Dname VARCHAR(50);
#belongs to papi.
