 --CHAPTER 7
===============================================================================================================
--1---
use toyuniverse
go
create schema sc1

--1a
 create table sc1.category
 (cCategoryID Char(3), 
cCategory Char(20), 
vDescription Varchar(250))

--1b
create table sc1.toybrand
(cBrandId Char(3), 
cBrandName Char(20))

--1c
create table sc1.toys
(cToyID Char(6),
cToyName Varchar(20), 
vToyDescription Varchar(250), 
cCategoryID Char(3), 
mToyRate Money, 
cBrandId Char(3), 
imPhoto Image, 
siToyQoH smallint, 
siLowerAge Smallint, 
siUpperAge Smallint, 
siToyWeight Smallint, 
vToyImgPath Varchar(50))

select * from sc1.toys
select * from sc1.category
select * from sc1.toybrand

insert into sc1.toys(mToyRate)values(0)
 
--1d(1)
alter table sc1.toys 
add check(mtoyrate>0)

/*select name from sys.schemas
create table temptoys
(cToyID Char(6),
cToyName Varchar(20), 
vToyDescription Varchar(250), 
cCategoryID Char(3), 
mToyRate Money, 
cBrandId Char(3), 
imPhoto Image, 
siToyQoH smallint, 
siLowerAge Smallint, 
siUpperAge Smallint, 
siToyWeight Smallint, 
vToyImgPath Varchar(50))

alter table temptoys
add check(mtoyrate>0)*/

--1d(2)
alter table sc1.toys
add constraint sitoyweight default 1 for sitoyweight

--1e-------
insert into sc1.toybrand(cBrandId,cbrandname)values('001','bobby')
insert into sc1.toybrand(cBrandId,cbrandname)values('002','Frances-Price')
insert into sc1.toybrand(cBrandId,cbrandname)values('003',' The Bernie Kids') 
insert into sc1.toybrand(cBrandId,cbrandname)values('004', 'Largo') 
select * from sc1.toybrand 

--1f-----
insert into sc1.category(cCategoryID,cCategory,vDescription)values('001', 'Activity', 'Activity toys encourage the child’s social skills and interest in the world around them' )
insert into sc1.category(cCategoryID,cCategory,vDescription)values('002','Dolls','A wide range of dolls from all the leading brands' )
insert into sc1.category(cCategoryID,cCategory,vDescription)values('003','Arts and Crafts','Encourage children to create masterpieces with these incredible craft kits')
select * from sc1.category

---1g----
insert into sc1.toys values
('000001 ',
 'Robby the Whale ',
'A giant Blue Whale with two heavy duty handles that allow a child to ride on its back',
 '001',
 8.99,
'001 ',
NULL,
50 ,
3, 
9, 
1, 
NULL) 
select * from sc1.toys

--h---
update sc1.toys
set mToyRate=(mToyRate+1)
where cToyID='000001'
select * from sc1.toys

---i---
--select * from sc1.toybrand
delete from sc1.toybrand where cBrandName like 'largo'
--select * from sc1.toybrand

-------------------------------------------------------------------------------------------------------------------------
 
 --2-----
 select * from Shopper
 select * from OrderDetail
/* SELECT vFirstName, mTotalCost 
 FROM Shopper JOIN Orders 
 On Shopper.cShopperId = Orders.cShopperId*/ 
 
 SELECT s.cShopperId, s.vFirstName,sum(o.mtotalcost) 
 FROM Shopper s JOIN Orders o
 On S.cShopperId = O.cShopperId 
 group by s.cShopperId,s.vfirstname

 -----------------------------------------------------------------------------------------------------------------------------    
 ---3--
 select * from sc1.toys
 create clustered index idxsc1toysid on sc1.toys(ctoyid)
 sp_helpindex 'sc1.toys'
                
 ------------------------------------------------------------------------------------------------------------------------------          
 --4---
 drop table Cat1
 select * into Cat1 from category  
 select * from Cat1
 
 alter table cat1
 add constraint pk_category_ccategoryid primary key clustered (ccategoryid)

 -------------------------------------------------------------------------------------------------------------------------------
 ---5---
 select * from Shopper




 --------------------------------------------------------------------------------------------------------------------------------

--6---
select * from wrapper
DBCC SHOWCONFIG(Wrapper)
DBCC SHOWCONTIG(wrapper)

------------------------------------------------------------------------------------------------------------------------------------
--7
select * from Recipient
CREATE NONCLUSTERED INDEX idx_cState Recipient(cState)
CREATE NONCLUSTERED INDEX idx_cState on Recipient(cState)

------------------------------------------------------------------------------------------------------------------------------------
--8---
select * into shoppincart1 from ShoppingCart
select * from shoppincart1
--INSERT TALBE ShoppingCart VALUES(‘000010’, ‘000013’,2)
INSERT ShoppinCart1 VALUES(000010, 000013,2) 

-----------------------------------------------------------------------------------------------------------------------------------------




 
 
 

                                       

 







