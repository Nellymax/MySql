-- Active: 1728482418860@@127.0.0.1@3306
CREATE DATABASE BSIT2;
    show  DATABASES;
use BSIT2;
create table patients(Pid VARCHAR(10),Pname VARCHAR(35),address VARCHAR(45),fees int);
INSERT INTO patients VALUES("P001","Tom","Kampala",40000),("P002","Agaba","Entebbe",16000);
insert into patients 
VALUES("P003","null","Kampala",20000), 
("P004","Timo","Null",40000), 
("P005","Simon","Entebbe",60000);
ALTER table patients add COLUMN Doctor_ID VARCHAR(10);
create View view_a as select * from patients where address = 'kampala';
create view view_c as SELECT * from patients where Pname like '____';
alter table patients modify column Pname VARCHAR(60);
select * from patients where address= 'kampala' or fees= 40000;
SELECT* FROM patients where Pname= 'Tom' and address = 'kampala';