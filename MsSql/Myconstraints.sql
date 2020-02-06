--Constraints :use mytempdb
--table with data integrity

use mytempdb
go

drop table clg.PFTable

--with out constraint name
create table Clg.PFTable
(
PFNo tinyint primary key,
PFAmount int
)

--with constraint name
--PK_CLG_PfTable_PfNo
create table clg.PFTable
(
PFNo tinyint constraint PK_Clg_PfTable_PfNo primary key,
PFAmount int
)

sp_help 'clg.pftable'

sp_helpconstraint 'clg.pk_clg_pftable_pfno'
select * from sys.objects where type='pk' --older
select * from sys.key_constraints
select * from sys.check_constraints

insert clg.pftable
values(101,34500)

insert clg.pftable
values(102,75500)

select * from clg.pftable

alter table clg.pftable
drop constraint pk_clg_pftable_pfno

--constraint in table-primary key, foreign key
--check, default, and unique

select * from clg.pftable

select * from clg.employee

drop table clg.employee

create table clg.employee
(
ID tinyint constraint mypk1 primary key,
name varchar(20),
address varchar(40) constraint mylist
check (address in ('Delhi','Mumbai',
'Bangalore','Chennai')),
age tinyint constraint stage default 21,
pfno tinyint references clg.pftable(pfno) constraint myu unique,
ssn char(15) constraint  myuq unique,
--tocity varchar(40) mylist--constraint cannot be reused,
--use rules for UDF
)

select * from clg.pftable
select * from clg.employee

insert clg.employee(id,name ,address,age,pfno,ssn)
values (1,'nitin','delhi',29,101,'india001')

insert clg.employee(id,name ,address,age,pfno,ssn)
values (2,'tanvir','chennai',32,102,'india002')

--try inserting id,name,address,pfno,ssn
insert clg.pftable
values(103,85500)
select * from clg.pftable

insert clg.employee(id,name,address,pfno,ssn)
values (3,'Ravi Kumar','Chennai',103,'india003')

select * from clg.employee

delete clg.employee where pfno=103
delete clg.pftable where pfno=103 

/*
repetitve ID
address as above 
repetitive ssn
non exist pfno 103
existing pfno 102
existing pfno 103 without age */

insert clg.employee (id,name,address,age,pfno,ssn)
values (3,'Ravi Kumar','Chennai',24,103,'india003')

select * from clg.employee

drop table clg.employee
drop table clg.pftable



