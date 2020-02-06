
--1
select * from Toys where mToyRate>20
select * into PremiumToys from Toys where mToyRate>20 --code
select * from PremiumToys

--2

select vFirstName as 'First name',vLastName as 'Last name',vAddress as 'Address',cCity as 'City' from Shopper
union
select vFirstName as 'First name',vLastName as 'Last name',vAddress as 'Address',cCity as 'City' from Recipient


--3
select vToyName from Toys where cCategoryId in(select cCategoryId from Category where cCategory like 'Stuffed Toys')

--4
create schema tu

select * from sys.schemas

create table tu.recipient
(
OrderNumber int,
FirstName varchar(20), 
LastName varchar(20),
Address varchar(40),
city varchar(10),
State varchar(10), 
CountryCode int,
ZipCode int ,
Phone varchar(20)
)

select * from tu.recipient


insert tu.recipient (OrderNumber,FirstName,LastName,Address,city,State,CountryCode,ZipCode,Phone)
values (000035,'Shirley','Nelson','56700 Chain Boulevard Apartment #899 ','Austin ','Texas ', 001,78728 ,'409-2387 ')

--5

create table tu.recipient1
(
OrderNumber char(6),
FirstName varchar(20), 
LastName varchar(20),
Address varchar(40),
city char(15),
State char(15), 
CountryCode char(3),
ZipCode char(10) ,
Phone char(15)
)

--insert tu.recipient1 (OrderNumber,FirstName,LastName,Address,city,State,CountryCode,ZipCode,Phone)
--values (000035,'Shirley','Nelson','56700 Chain Boulevard Apartment #899 ','Austin ','Texas ', 001,78728 ,'409-2387 ')

--delete from tu.recipient1 where OrderNumber='35'

select * from tu.recipient1

create table tu.Country
(
cCountryID char(3),
cCountry char(25))

--6
delete tu.recipient1

--7







