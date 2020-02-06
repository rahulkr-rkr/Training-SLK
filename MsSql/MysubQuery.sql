--Subqueries
--in clause
--SQ returns list of RegNo

select * from Clg.Marks

select * from Clg.Student
where RegNo in
(select Regno from Clg.marks
group by regno having avg(marks)>80)

--exists clause
--SQ reyurns True/False
select * from Clg.Student
where exists
(select regno from clg.marks group by regno having avg(marks)>80
and regno='s001')and regno='s001'

--aggrgate functions and operators
use AdventureWorks

--example 1
select productid, unitprice
from sales.SalesOrderDetail
where unitprice>(select avg(unitprice) from
sales.SalesOrderDetail)

--example 2
select productid,unitprice,
(select avg(unitprice) from
sales.SalesOrderDetail)
as avgprice
from sales.SalesOrderDetail
order by ProductID


--nest subqueries-hypothetical case
select productid, name from 
Production.product where productid in
(select productid from 
sales.SalesOrderDetail where SalesOrderID in
(select SalesOrderDetailID from sales.SalesOrderHeader
where orderdate between '3-1-03' and '3-31-03'))


select * from sales.SalesOrderHeader
--correlated subqueries
--field from outer query is
--used in the sub query
select productid,name
from Production.product as p
where (select distinct ProductSubcategoryID
from sales.SalesOrderDetail as SD
where SD.ProductID=p.ProductID)=1

select * from Production.Product


--select into
use college
drop table clg.tempmarks

select * from clg.Marks

select * into clg.tempmarks from clg.Marks
where marks>90

select * from clg.tempmarks
--union operator to combine 2 tables
select * from clg.marks

select * from clg.marks2

select * from clg.marks
union
select * from clg.marks2





