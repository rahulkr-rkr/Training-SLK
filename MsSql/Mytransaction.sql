--Transaction
drop table Clg.employee
drop table Clg.PFTable

create table CLg.Employee
(
ID tinyint,
Name varchar(20),
address varchar(40),
age tinyint,
)

insert Clg.employee(id,name,address,age)
values(1,'Jitin','PA',28)
insert Clg.employee(id,name ,address,age)
values (2,'Nitin','Alamba',23)

drop table Clg.empsalary

create table Clg.empsalary
(
EmpID tinyint,
Basic int,
HRA int,
conv int
)

insert clg.empsalary
values(1,20000,8000,800)
insert clg.empsalary
values(2,30000,12000,900)

select * from Clg.Employee
select * from Clg.empsalary

begin tran
	insert clg.employee(id,name,address,age)
	values (3,'bond','NY',24)

	insert clg.empsalary
	values (3,30000,12000,900)

	if (select sum(basic)
	from clg.empsalary)>500000
	begin
		rollback tran
		print 'Transaction rolledback'
	end
	else
	begin
		commit tran
		print 'Transaction commited'
	end
--enf of transaction




