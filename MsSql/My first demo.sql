--my first sample query
select db_name();
go

select name from sys.databases;
go

select * from sys.databases;
go

use college;
go

select db_name();
go

select name from sys.objects;
go

select * from sys.objects;
go

select * from sys.objects where name='sysphfg';
go

sp_help 'clg.student'
go


select * from clg.student;
go


