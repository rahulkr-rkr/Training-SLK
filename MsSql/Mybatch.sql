--demo for batch
--declaring,initializing and print variables

declare @No int
declare @Name as varchar(20)
select @No = 21, @Name ='Mahesh'
print str(@No) +@Name

--using system variables
print 'Server Name--->' + @@servername
print 'version ---->'+ @@version

select * from sys.objects
--will give positive number when row is add /del
select 'No of rows affected last-->' + str(@@rowcount)

--control flow

select * from Clg.marks


--simple batch 1
declare @avgmarks int
select @avgmarks = avg(marks) from Clg.marks
where regno='s001'
if @avgmarks >70
	print 'First class'
else if @avgmarks>59
	print 'Second class'
else
	print 'pass'
--end of batch

select * from sys.schemas

--simple batch 2
begin
if exists (select so.name from
sys.objects so join sys.schemas sc 
on so.schema_id=sc.schema_id
where sc.name='clg' and so.name='sStudent'
and so.type='U')
begin	
	print 'Table found'
	select * from Clg.student
end
else
	print 'table not found'
end
--end of batch2

select * from Clg.marks

select regno,avg(marks)
from clg.marks
group by regno

--case batch
selct regno,'avg'=avg(marks),
'results'=
case
	when avg(marks) between 90 and 100 then
		'Distinction'
	when avg(marks) between 70 and 89 then
		'First class'
	when avg(marks) between 60 and 69 then
		'Second class'
	when avg(marks) between 50 and 59 then
		'Pass'
	else
		'Fail'
end 
from Clg.marks
group by regno
--end of case batch

--while,break, and continue batch
declare @count int
select @count =0
while @count <10
begin
	select @count=@count+1
	if @count =8 --use begin and end
		break

	if @count=5
		continue

	print @count
end
--end of while, break and continue batch




