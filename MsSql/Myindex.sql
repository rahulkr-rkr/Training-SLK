--indexes

drop database mytempdb
go

create database mytempdb
go

use mytempdb
go

create schema clg
go

select * from sys.indexes where name like '%employee%'

--or

sp_helpindex 'clg.employee'

create table clg.employee
(
id tinyint,
name char(20)
)

insert clg.employee
values (2,'somebody')


insert clg.employee
values (1,'nobody')

select * from clg.employee

drop table clg.employee

create table clg.employee
(
ID tinyint constraint "PK_ClgEmployee" primary key,
Name varchar(20),
city varchar(20),
age tinyint
)

select * from sys.objects where type='pk'

insert clg.employee
values (1,'Nitin','Banagalore',22)

insert clg.employee
values (2,'Tanvir','Mysore',23)

select * from clg.employee

insert clg.employee
values (4,'ani','chennai',24)

insert clg.employee
values (3,'Vishwanath','US',21)

--physically sorted due to default clustered indexing with primary key
select * from clg.employee

--cannot create more than one clustered index
create clustered index idxClgEmployeeName
on clg.employee(name)

use mytempdb

drop table clg.applicants

create table clg.applicants
(
ID tinyint ,
Name varchar(20),
address varchar(40),
age tinyint,
status bit
)

insert clg.applicants
values(32,'Bond','US',22,1)
insert clg.applicants
values(33,'Russel','UK',23,0)
insert clg.applicants
values(42,'James','CAN',24,1)
insert clg.applicants
values(45,'Bond','Alabama U',21,0)

select * from clg.applicants

--creating clustered table

create clustered index idxClgApplicantsName
on Clg.Applicants(name)

--creating non clustered index
--upto 999 NC can be created in SQL 2008
create nonclustered index idxClgApplicantsAddress
on Clg.Applicants(address)

--or index can be created as
drop index idxClgApplicantsName on clg.applicants
create clustered index idxClgApplicantsNA1
on clg.applicants(name,address)

create nonclustered index idxClgApplicantsNA2
on clg.applicants(name,address)

sp_helpindex 'clg.applicants'

--root page details stored in sys.indexes table

select * from sys.indexes where object_id=
(select object_id from sys.objects
where name='applicants' and type='u' and schema_id=5)

select * from sys.indexes where name like '%applicant%'

select * from Clg.applicants
where name='Bond' and address like '%U%'
order by name,address

--Dropping index
drop index idxClgApplicantsname on clg.applicants
drop index idxclgapplicantsaddress on clg.applicants
drop index idxclgapplicantsNA2 on clg.applicants









