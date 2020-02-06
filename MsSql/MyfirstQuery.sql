/*Simple Query and Operations*/
--Lists current client computer name
select HOST_NAME()
select 'Client Workstation Name'=HOST_NAME()
go

--List of maanagement server name -old syle
select 'ServerName' = @@SERVERNAME
go

--list of mngt server name
select 'ServerName' = SERVERPROPERTY('ServerName'),
        'Instance Name' = SERVERPROPERTY('InstanceName'),
		'Version' = SERVERPROPERTY('ProductVersion'),
		'Edition' = SERVERPROPERTY('Edition')

--List database users
select * from sysusers

--list database group based on ur user id
select USER_NAME()
select 'UserName'=USER_NAME(1)
go


--list current user name
select 'UserName'=SUSER_NAME()
go

--list all database on current server
select * from sys.databases
--OR
exec sp_databases
go

--use college database
use college
go


--show current database name
select DB_NAME()
go


--list contents from the current database
select * from sys.objects

--list undefined content of current db
select * from sys.objects where type='u'

--listing schemas in the current database
select * from sys.schemas

--getting details of objects
sp_helpdb college

--Display structure of a entity/table
sp_help 'clg.employee'

/*Simple query for all columns for students table*/
select * from clg.student
--select *  from student --not going to work

/*simple query for selected columns for student table*/

select RegNo, Name, Age from clg.Student

/*Displaying user-friendly coloumn headings*/
select 'Student ID'= RegNo, 'First Name'= name,
'Mail Address'= address from clg.Student

select RegNo as 'Student ID', name as 'First Name',
address as 'Mail Address' from clg.Student

/*======================================================================================*/


/*displaying selected rows from the table, conditional/logical operators*/

select * from clg.student 
where RegNo ='s003'

select * from clg.student 
where age>29

select * from clg.student 
where address='Bangalore' and age >29

select * from clg.student 
where age<29 or age>29

select * from clg.student 
where age!=29

/*=========================================================*/

--arithmatic operators

select RegNo, Name, Age, 'Age (in 5yrs)'=Age+5
from clg.student

--merge first name and last name
select RegNo, "Name-Age"=Name+'-'+convert(nvarchar,Age) 
from clg.student

/*Range and list operators*/
select * from clg.student 
where age between 29 and 31

select * from clg.student 
where address in ('pune','newjersey')