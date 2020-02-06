
--1
select * from Toys where mToyRate>20
select * into PremiumToys from Toys where mToyRate>20 --code
select * from PremiumToys

--2-----------------------------------------------------------------------------------------------------------------

select vFirstName as 'First name',vLastName as 'Last name',vAddress as 'Address',cCity as 'City' from Shopper
union
select vFirstName as 'First name',vLastName as 'Last name',vAddress as 'Address',cCity as 'City' from Recipient


--3---------------------------------------------------------------------------------------------------------------------
select vToyName from Toys where cCategoryId in(select cCategoryId from Category where cCategory like 'Stuffed Toys')

--4----------------------------------------------------------------------------------------------------------------------
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

--5--------------------------------------------------------------------------------------------------------------

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

--6-------------------------------------------------------------------------------------------------------------------------
delete tu.recipient1
delete tu.recipient

--7---------------------------------------------------------------------------------------------------------------------------
/*address varchar(40) constraint mylist
check (address in ('Delhi','Mumbai',
'Bangalore','Chennai')),

pfno tinyint references clg.pftable(pfno) constraint myu unique*/
create table tu.Toys
(
cToyID Char(6) primary key ,
cToyName Varchar(20) NOT NULL ,
vToyDescription Varchar(250) NOT NULL,
cCategoryID Char(3) references tu.Category(cCategoryID) , 
mToyRate Money ,
imPhoto Image ,
siToyQoH smallint constraint mylist check(siToyQoH between 0 and 200) ,
siLowerAge Smallint constraint de default 1, 
siToyWeight Smallint ,
vToyImgPath Varchar(50)
)

create table tu.Category
(
cCategoryID Char(3) constraint mypk primary key, 
cCategory Char(20) constraint myun unique,
vDescription Varchar(250)  
)

create table tu.ToyBrand
(
cBrandId Char(3) primary key,
cBrandName Char(20) unique key

)

alter table tu.Toys
add cbrandID tinyint references tu.ToyBrand(cbrandID) constraint myubid unique

alter table tu.Toys
add siUpperAge smallint constraint T_UAge default 1

--8---------------------------------------------------------------------------------------------------------------
SELECT * INTO CaliforniaShoppers FROM Shopper WHERE cState = 'California'
select * from CaliforniaShoppers 

--9-------------------------------------------------------------------------------------------------------------------
DELETE  CaliforniaShoppers

--10--------------------------------------------------------------------------------------------------------
select vFirstName as firstname ,vLastName as lastname 
from Shopper where cCity in ('Woodbridge', 'San Jose' , 'Las Vegas') 

--11------------------------------------------------------------------------------------------------------

select * from Wrapper
select * from OrderDetail

select vToyName as Toyname from Toys where cToyId in (select cToyId from OrderDetail where cGiftWrap='N')

--12--------------------------------------------------------------------------------------
select * from Orders
select * from Shipment

select cOrderNo as 'OrderNo' from Shipment where cDeliveryStatus='s'
-----------------------------------------------------------------------------------------------------------














