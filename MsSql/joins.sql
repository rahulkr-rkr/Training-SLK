--SQL join
--inner ,outer,Equi,Natural,Self,Cross

select * from clg.Student
select * from Clg.Marks
--Misc- Older way of join using where clause
select * from Clg.Student s, clg.Marks m
where s.RegNo=m.RegNo and s.RegNo='s001'
--end of misc


--inner join-Only matching rows from both are displayed
select s.*,m.SemID,m.TestID,m.Marks
from clg.Student s join clg.Marks m
on s.RegNo=m.RegNo
where s.RegNo='s001'

--Example2 for joining
select * from sys.objects where type='U'
select * from sys.schemas


select o.name,o.schema_id,s.name
from sys.objects o join sys.schemas s
on o.schema_id=s.schema_id
where type='U'

select 'Full table name'=s.name+'.'+o.name
from sys.objects o join sys.schemas s
on o.schema_id=s.schema_id
where type='U'

--Outer join even non matching rows are displayed 
--LEFT-all rows in left table are shown with NULL from the right table
--RIGHT - all rows in the right table are shown with null from the left table

select * from clg.Student
select * from CLg.Marks

select s.*,m.RegNo,m.SemID,m.TestID,m.Marks
from clg.Student s right outer join clg.Marks m
on s.RegNo =m.RegNo
where s.RegNo='s001'

select s.*,m.RegNo,m.SemID,m.TestID,m.Marks
from clg.Student s left outer join clg.Marks m
on s.RegNo =m.RegNo
where s.RegNo='s001'

--Equi join
--here '*' is used in select of any kind of join
-- ALL the redundant columns r also displayed

select * from clg.Student s
join clg.Marks m
on s.regno=m.regno where s.regno='s001'

--Natural join
--here individual columns are specified

select s.regno,s.name,m.semid,m.testid,
m.marks from clg.Student s join clg.marks m
on s.regno =m.regno where s.regno='s001'

--self join

use college


select * from clg.employee
select c1.EmpID,c1.name,c1.Designation,
c1.department,'Manager name'=c2.name from
clg.employee c1 join clg.employee c2
on c1.ManagerID =c2.EmpID
where c1.EmpID=1
order by c2.name


select * from clg.Employee where EmpID=1
select * from Clg.Employee where EmpID=4
--cross join
/*match all from left table to right table
no of rows =(rows in lTAble * rows in rTable)
also called as cartesian*/

select * from clg.TestTable
select * from clg.Student

select * from clg.Student as s  cross join
clg.TestTable as t --where s.RegNo='s001'
order by s.RegNo





