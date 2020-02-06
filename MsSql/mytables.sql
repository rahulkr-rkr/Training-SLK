-- database and schema creation
drop database  mytempdb
create database mytempdb

use mytempdb

select db_name()

drop database mytempdb

select * from sys.schemas
create schema clg
select * from sys.schemas
drop schema clg

--create table ,constraints
--simple table creation
drop table clg.employee
drop table employee

create table clg.employee
(
ID tinyint,
Name varchar(20),
address varchar(40),
age tinyint)

create table employee
(
ID tinyint,
Name varchar(20),
address varchar(40),
age tinyint)


select * from sys.objects where type='u'

select * from employee
select * from dbo.employee
select * from clg.employee

select name from sys.objects where type='u'
and name='employee'
sp_help 'clg.employee'
select * from clg.employee

insert clg.employee(ID,name,address,age)
values (1,'nitin','bir',29)

insert clg.employee(ID,name ,address,age)
values(2,'tanvir','mysore',25)

select * from clg.employee
select* from employee

--view table structure details
sp_help 'clg.employee'

--modify table structure details
alter table clg.employee
alter column ID char(4)

--modify table to add new field
alter table clg.employee
add pfNo char(6)

select * from clg.employee
--modify table to remove field
alter table clg.employee
drop column pfNo

select * from clg.employee

delete from clg.employee where id='2'

sp_rename 'clg.employee.name','firstname','column'
sp_rename 'clg.employee','newemployee'

select * from clg.employee
select * from clg.newemployee
drop table clg.newemployee

--brings about consistency across tables
sp_addtype Ename,'varchar(20)','NOT NULL'

select * from sys.types where name='Ename'

sp_help Ename

--deleting user defined type
sp_droptype Ename

--identity/user def data type table
--number starts from 20 and goes up by 1
drop table clg.employee
create table clg.employee
(
ID tinyint identity (20,1),
Name Ename,
address varchar(40),
age tinyint)

sp_help 'clg.employee'

insert clg.employee(name,address,age)
values('nitin','bir',29)

insert clg.employee(name,address,age)
values('tanvir','NY',32)

--below insertion fails due to ename not null
insert clg.employee(address,age)
values('NJ',19)

select * from clg.employee
select * from employee

update clg.employee set name ='Tanvir mukit'
where ID=21;

delete clg.employee
drop table clg.employee
sp_droptype Ename















