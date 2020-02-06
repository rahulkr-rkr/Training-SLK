--user defined stired procedures
use college

select * from clg.student
select * from clg.marks

drop proc clg.fetchstudent

--simple stored procedure

create proc clg.fetchstudent
as
begin
	select
		'studID'=regno,
		Name,address,age
	from clg.student
end

--executing stored procedure
exec clg.fetchstudent

--basic details of SP
sp_help 'clg.fetchstudent'

--code for SP if not encrypted
sp_helptext 'clg.fetchstudent'

--deleting sp
drop proc clg.fetchstudent
--altering sp
alter proc clg.fetchstudent with encryption
as
begin
	select
		'studID'=regno,
		Name,address,age
	from clg.student
end

--executing proc
clg.fetchstudent

drop proc clg.fetchstudent

--stored proc with input parameters
/* @StudID varchar(8) because regno is varchar(8)
@studid varchar(4) or char(4) ,will
truncate 's0019' as 's001'
*/
create proc clg.fetchstudent @studid varchar(8)

as
begin
	select
		'studID'=regno,
		Name,address,age
	from clg.student
	where regno=@studid
end

--execute proc
clg.fetchstudent 's005'

create proc clg.fetchstudent @studid varchar(8),
@name varchar(20) output,
@address varchar(40) output,
@age tinyint output
as
begin
if exists (select * from clg.student
where regno=@studid)
begin
select
@name =name,
@address=address,
@age=age
from clg.student
where regno=@studid
return 1 --record found
end
else
return 0--record not found
end

--executing proc with i/p and o/p parameters as a batch

declare @name varchar(20)
declare @address varchar(40)
declare @age tinyint
declare @retval tinyint
exec @retval =clg.fetchstudent 's001' ,@name output,
@address output,@age output
if @retval=1
begin
print 'student name:'+@name
print 'address:'+@address
print 'age:'+ltrim(str(@age))
end
else
print 'record not found' +  str(@retval)

--calling proc with i/p and o/p parameters in another proc
drop proc clg.displaystudent

create proc clg.displaystudent @studid varchar(8)
as
begin
declare @name varchar(20)
declare @address varchar(40)
declare @age tinyint
declare @retval tinyint
exec @retval =clg.fetchstudent @studid ,@name output,
@address output,@age output
if @retval=1
begin
print 'student name:'+@name
print 'address:'+@address
print 'age:'+ltrim(str(@age))
end
else
print 'record not found' +  str(@retval)
end

--executing 2nd proc
clg.displaystudent 's001'




















