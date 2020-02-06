--SQL functions
--string functions

select ascii('a')

select charindex('w','Hello World')

select len('Hello World')
select 'Len'=len(name),name from clg.Student

select ltrim('    Hello Sun')

select reverse('Hello Moon')
select 'Reverse'=Reverse(name),name from clg.Student

--Date functions

select 'Current Date and Time:'=getdate();
select convert(date,getdate())
select convert(time,getdate())

select "Current Date"=getdate(),
"FutDate"=dateadd(dy,5,getdate())

--mm/dd/yyyy
select datediff(dy,'12/11/2008','12/12/2008')

select datename(dd,getdate())

--mathematical functions
select power(10,3)
select rand()
select round(1234.5678,2)

--system functions

select host_name()
select user_name()
select db_name()

--Data conversion
use AdventureWorks
go
select * from person.address

select addressid,
'Address'=addressline1 +
convert(char(5),StateProvinceID)
from person.address








