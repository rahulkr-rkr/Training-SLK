--1
select vToyName,convert(char(40),vToyDescription),mToyRate from Toys

--or
select vToyName,substring(vToyDescription,1,40),mToyRate from Toys

--2
select cOrderNo as' order no',dShipmentDate as 'shipment date',dActualDeliveryDate as 'Actual delivery date',
'Day in transit'=datename(dd,dActualDeliveryDate-dShipmentDate) from Shipment

--3
select 'order no'=cOrderNo,'Day in transit'=datename(dd,dExpDelDate-dOrderDate) from Orders where cOrderNo=000009

--4
select cOrderNo as 'order no',cShopperId as 'Shopper id','Day of order'=datename(dd,dOrderDate),'week day '=datename(dw,dOrderDate)
from Orders

--5
select t.vToyName,c.cCategory  from Toys as t join Category as c on t.cCategoryId=c.cCategoryId

--6

select t.vToyName as TOY_NAME,b.cBrandName as BRAND,c.cCategory as CATEGORY
from Toys as t join ToyBrand as b  on  t.cBrandId = b.cBrandId 
join Category as c on t.cCategoryId = c.cCategoryId 

--7
/*select o.cOrderNo as 'order no',t.cToyId as 'Toy id',w.vDescription as 'Wrapper Description'
from  Toys as t left outer join OrderDetail as o on o.cToyId=t.cToyId
 left outer join Wrapper as w on o.cWrapperId=w.cWrapperId*/

 --or

 select o.cOrderNo,o.cToyId,w.vDescription from OrderDetail as o join Wrapper as w on o.cWrapperId=w.cWrapperId

--8
select t.vToyName,s.cCartId  from Toys as t left outer join ShoppingCart as s on t.cToyId=s.cToyId

--9

select 'Initials'=convert(char(1),vFirstName)+convert(char(1),vLastName),
vFirstName ,vLastName from Shopper

--10
select cOrderNo,dOrderDate,'Quarter'=datename(qq,dOrderDate) from Orders

--11
select 'average price of all toys'=round(avg(mToyRate),1) from Toys

--12
select s.cShopperId as 'Shopper ID',r.cOrderNo as 'Order no' 
from shopper as s left outer join Recipient as r on s.cState=r.cState










