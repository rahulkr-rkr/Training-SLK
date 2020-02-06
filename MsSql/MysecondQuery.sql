--wildcards,NULL, Order by, Top,Distinct,Aggregate
--Group, compute and Computeby
/*wildcards %,_.[],[^]*/


use college
go


select * from clg.Student
where name like '%vi%'

--2nd char to be a or n
select * from clg.Student
where name like '_[an]%'

--2nd char to be in a given range
select * from clg.Student
where name like '_[a-i]%'



select * from clg.Student
where name like '_[^an]%'

--case sensitive search
/*deafault collation in sql is SQL_Latin1_General_CPI_CI_AS
which is not case sensitivity,
to make it case sensitivity either alter table*/
select * from clg.Student
where name like 'n%'

select * from clg.Student
where name COLLATE Latin1_General_CS_AS like 'N%'

--can modify table default collation :try this after you have learnt create alter table comments
--ALTER TABLE clg.student ALTER COLUMN name VARCHAR(20) COLLATE Latin1_General_CS_AS

--use of null character
select * from clg.Student
where address is NULL

--order by clause
select * from clg.Student
order by name desc

--top keyword
select TOP 3 * from clg.Student
select TOP 33 percent * from clg.Student


use AdventureWorks
go


--distinct
select * from Sales.SalesOrderDetail

select distinct SalesOrderID
from Sales.SalesOrderDetail

--Aggregate functions
select "Highest Line Item"=max(LineTotal)
from Sales.SalesOrderDetail

select "Lowest Line Item"=min(LineTotal)
from Sales.SalesOrderDetail

select "Average Line Item"=avg(LineTotal)
from Sales.SalesOrderDetail

select "No of order"=count(distinct SalesOrderID)
from Sales.SalesOrderDetail

select count(SalesOrderID)
from Sales.SalesOrderDetail

select * from Sales.SalesOrderDetail
where SalesOrderID=43659

select "value of order"=sum(LineTotal)
from Sales.SalesOrderDetail
where SalesOrderID=43659


--====================================================================================

--for information
--order by only orderd in ascending and descending order
--group by get one record for a group and can be combined with the aggregate functions
--group by and distinct can be same at high level but if you want to use aggregate function you have to use it with group by
--order by 121317 records
--group by 31465 records

select SalesOrderID from Sales.SalesOrderDetail
--order by SalesOrderID
group by SalesOrderID

--group by
select * from Sales.SalesOrderDetail

select 'Order No'=SalesOrderID,
'Value of order'=sum(LineTotal)
from Sales.SalesOrderDetail
group by SalesOrderID

--all
select 'Order No'=SalesOrderID,
'Value of order'=sum(LineTotal)
from Sales.SalesOrderDetail
where SalesOrderID in (43659,43662,43670)
group by all SalesOrderID

--simple group by with multiple columns

use college
go

select * from clg.allmarks
--returns 16 rows
select RegNo,TestID,'Total'=SUM(marks)
from clg.allmarks
group by RegNo,TestID
order by RegNo;

--===================================================================================































