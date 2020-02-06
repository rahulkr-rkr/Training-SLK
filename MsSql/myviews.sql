--views

--if address is made not null,
--insert from view will vfail

use mytempdb
drop table clg.employee
create table clg.employee
(
ID tinyint,
name varchar(20),
address varchar(40),
age tinyint,
PfNo tinyint)


insert clg.employee(id,name,address,age,PfNo)
values(1,'jithin','PA',28,101)

select * from clg.employee
drop table clg.pftable

create table clg.pftable
(
pfno tinyint constraint mypk2 primary key,
pfamount int,
offaddress varchar(20)
)

insert clg.pftable
values(101,34500,'delhi')
insert clg.pftable
values(102,75500,'Mumbai')

select * from sys.objects where type='pk'
select * from clg.employee
select * from clg.pftable
---creating a simple view

create view clg.empview1
as
select id,name from clg.employee

create view clg.pfview1
as
select pfno,pfamount from clg.pftable

select * from clg.empview1
select * from clg.pfview1

select * from sys.objects where type='V'
select * from sys.views

select * from clg.employee
select * from clg.pftable

insert clg.empview1
values(3,'vishwanth')
insert clg.pfview1
values(103,76000)

select * from clg.empview1
select * from clg.pfview1


sp_rename 'clg.pfview1', pfview2
select * from clg.pfview2


--creating view by merging 2 colomns
select * from clg.employee
select * from clg.pftable

create view clg.empview2
as
select Id,'EmpName'=name+convert(varchar(4),pfno)
from clg.employee

select * from clg.empview2
--view becomes read only
insert into clg.empview2
values (3,'Vishwanath')

--create single view for 2 tables
create view clg.emppf1
as
select e.ID,e.Name,p.pfno,p.pfamount
from clg.employee e join clg.pftable p
on e.pfno=p.pfno

select * from clg.emppf1

--cannot update 2 tables from single view

insert clg.emppf1(id,name,pfno,pfamount)
values (2,'Nitin',103,8080)

--instead try this
insert clg.emppf1(id,name)
values (2,'Nitin')

insert clg.emppf1(pfno,pfamount)
values (104,8080)

select * from clg.emppf1
select * from clg.employee
select * from clg.pftable

drop view clg.empview1
drop view clg.empview2
drop view clg.pfview2
drop view clg.emppf1









