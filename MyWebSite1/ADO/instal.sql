use AdventureWorks
go

select * from dbo.Employee
go

select * from dbo.emp
go

sp_help Employee
go

drop table employee
go

create table employee
(
  empno char(4) constraint pk1 primary key,
  empname varchar(20),
  address varchar(40),
  age int,
  pfno char(4)
)
go

delete from AdventureWorks.dbo.employee
go


insert into [AdventureWorks].[dbo].[Employee]
values('E001','Nithin Rao','Banglore',22,'P001')
go
insert into [AdventureWorks].[dbo].[Employee]
values('E002','Tanvir Mukit','NY',22,'P002')
go
insert into [AdventureWorks].[dbo].[Employee]
values('E003','Anirudh','Pune',25,'P003')
go
insert into [AdventureWorks].[dbo].[Employee]
values('E004','Vishwa','Banglore',32,'P002')
go

drop proc getEmpDetails
go

create proc getEmpDetails
@eno char(4),@ena char(20) output,
@add varchar(40) output,
@age int output,@pfno char(4) output
as
begin
      select @ena=empname,
	         @add=address,
			 @age=age,
			 @pfno=pfno from employee where
			 empno=@eno
end
go

--check working of procedure
declare
       @ena char(20),
	   @add varchar(40),
	   @age int,
	   @pfno char(4)
exec getEmpDetails 'E002',
      @ena output,@add output,
	  @age output,@pfno output
select "Name"=@ena,"Address"=@add,
        "Age"=@age,"PfNo"=@pfno
go
--End of Checking



select * from employee