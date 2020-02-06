--chapter 3

--1
select * from toys
select vtoyname,left(vtoydescription,40),mtoyrate from Toys

--2
select * from Shipment
select 'order number'=corderno,'Shipment Date'=dshipmentDate,'Actual Delivery Date'=dactualdeliverydate,'Days in transit'=DATEDIFF(dy,dshipmentdate,dActualDeliveryDate)
from Shipment

--3
select * from Orders
select 'Order Number '=cOrderNo,'Days in Transit '=DATEDIFF(dy,dshipmentdate,dActualDeliveryDate) from Shipment
where cOrderNo=000009

--4
select * from Orders
select 'Order Number'=corderno,'Shopper ID'=cshopperid, 'Day of Order'=datename(dd,dOrderDate) ,'Week day'=DATENAME(WEEKDAY,dOrderDate)
from Orders

--5
select * from toys
select * from Category
select t.vToyName,c.cCategory from Toys t left join Category c 
on t.cCategoryId=c.cCategoryId

--6
