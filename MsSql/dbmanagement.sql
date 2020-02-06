--working with database
--DDL -Data Defenition language

-- Creating dtabase
create database Mycopany
drop database mycompany

--view information of database
sp_helpdb Mycopany

--renaming database in SQL 200 will be phaseed out soon
sp_renamedb 'Mycopany','Mycompany'
sp_helpdb mycompany

--renaming database on SQL 2005 and above
alter database mycopany modify name=Mycompany
sp_helpdb Mycompany

--view or modify databse option
sp_dboption 'Mycompany'

--sp_dboption in sql 2014
--Ex: collation:case sensitive ,insensitivity etc,max size in bytes;
--Database shuts down cleanly and frees resources after the last user exits
--return value if equals to 1=TRUE,0=FAlse,NULL=input not valid

select DATABASEPROPERTYEX('MyCompany','IsAutoClose')

--works with SQL 2008
sp_dboption 'mycompany','read only','true'
--works with sql 2014
alter database mycompany set read_only
--will fail to create
use Mycompany
create table a(i int)

select * from a
--works with sql 2008
sp_dboption 'mycompany','read only','false'

--works with sql 2014
alter database mycompany set read_write

--deleting a database
drop database Mycompany


