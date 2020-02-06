--triggers
drop database mytempdb

create database mytempdb
use mytempdb

create schema clg

create table clg.employee
(
id tinyint,
name varchar(20),
address varchar(40),
age tinyint
)

insert clg.employee(id,name,address,age) values(1,'jitin','PA',28)
insert clg.employee(id,name,address,age) values(2,'nitin','alamba',23)

create table clg.empinsurence
(
insno int identity(1000,1),
amount int,
premium int,
empid tinyint
)

insert clg.empinsurence(amount,premium,empid) values(20000,2000,1)
insert clg.empinsurence(amount,premium,empid) values(30000,3000,2)

create table clg.empsalary
(
empid tinyint,
basic int,
hra int,
conv int
)

insert clg.empsalary values(1,20000,8000,800)
insert clg.empsalary values(2,30000,12000,900)


select * from clg.employee
select * from clg.empinsurence
select * from clg.empsalary

--insert trigger
create trigger clg.myinstrg
on clg.empsalary
for insert
as
begin
      declare @amount int
	  declare @premium int
	  declare @empid int

	  if (select count(*) from
	  clg.empsalary where empid=
	  (select empid from inserted))>1
	  begin
	       print 'employee already exists'
		   rollback tran
		   return
	end

	select @empid=empid,
	@premium=(basic * 10)/100
	from inserted

	select @amount=@premium * 100

	insert clg.empinsurence
	(amount,premium,empid)
	values (@amount,@premium,@empid)

	print 'insert trigger for empsalary'
end


--help on trigger
sp_helptrigger 'clg.empsalary'
sp_helptext 'clg.myinstrg'


select * from sys.objects where type='tr'


--for altering trigger
--alter trigger clg.myinstrg on clg.empsalary
--for isert
--as
--begin
--end

--deleete clg.emp.salary where empid=3
--dselete clg.empinsurence where empid=3

insert clg.employee values(3,'raj','india',31)
insert clg.empsalary values(3,40000,16000,1000)


select * from clg.employee
select * from clg.empsalary
select * from clg.empinsurence


--update trigger
--drop trigger clg.myugptrg
create trigger clg.myugptrg
on clg.empsalary
for update
as
begin
      declare @amount int
	  declare @premium int
	  declare @empid int

	  select @empid=empid,
	@premium=(basic * 10)/100
	from inserted

	if not exists(select * from clg.empinsurence ei
	where ei.empid=@empid)
	begin
	     rollback tran
		 print 'row not present in insur table'
		 return
	end

	select @amount = @premium * 100
	update clg.empinsurence
	set amount=@amount,premium=@premium
	where empid=@empid

	print 'update trigger for empsalary fired'
end
--end of update trigger

update clg.empsalary
set basic= 44000,hra=17000
where empid=3
--delete in insurtable and chk
--delete clg.empinsurence where empid=3
--insert clg.empinsurence(amount,premium,empid)
--values(2000,200,3)

select * from clg.empsalary
select * from clg.empinsurence


---delete trigger
create trigger clg.mydeltrg
on clg.employee
for delete
as 
begin
     delete clg.empsalary
	 from empsalary es join deleted d
	 on es.empid=d.id
     
	 delete clg.empinsurence
	 from empinsurence ei join deleted d
	 on ei.empid=d.id

	 print 'all related records deleted'
end
--end of delete trigger

select * from clg.employee
select * from clg.empsalary
select * from clg.empinsurence

delete clg.employee
where id=3

--will not fire the delete trigger
truncate table clg.employee


--the end


