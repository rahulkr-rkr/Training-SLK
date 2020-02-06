--1
use ToyUniverse
go
select db_name();
go

--2
select * from Toys

--3
select * from Recipient
select vfirstname,vlastname,vaddress,czipcode from Recipient

--4
select * from Shopper
select vfirstname,vlastname from Shopper
where cstate='california'

--5
select * from Orders
where mTotalCost>75

--6
select * from Toys
where cBrandId=001

--7
select * from Orders
where dOrderDate=2001-05-22

--8
select corderno,mshippingcharges,mgiftwrapcharges,'handling charges'=mtotalcost from Orders

--9
select * from Toys
where mtoyrate between 10 and 20

--10
select * from Shopper
select vfirstname,vlastname,vemailid from Shopper
where cstate='california' or cState='illinois'

--11
select cOrderNo,dOrderDate,cShopperId,mTotalCost from Orders
where dOrderDate=2001-05-20 and mTotalCost>75

--12
select * from OrderDetail
where vMessage=NULL

--13
select 'Toyname'=vToyName,'Toyrate'=mToyRate from Toys
order by 'toyrate' desc

--14
select * from Toys
select vToyName,siLowerAge from Toys
where mToyRate<20
order by siLowerAge 

--15
select * from Orders
select corderno,cshopperid,mtotalcost from Orders
order by mTotalCost

--16
select 'total toys sold'=sum(itotalsold) from PickOfMonth
--select sum(ame) from dbo.Toys
select * from PickOfMonth

--17
select 'maximum'=max(mtoyrate),'minimum'=min(mtoyrate),'average'=avg(mtoyrate) from Toys

--18
select 'total value'=sum(mtotalcost) from Orders

--19
select * from PickOfMonth
select top 5 cToyId from PickOfMonth 
where iYear=1998
order by iTotalSold 

--20
select * from Toys
where vToyName like '%racer%'

--21
select * from Shopper
where vFirstName like 'S%'

--22
select * from Orders
select * from Toys
select o.corderno as 'Order Number', o.ctoyid as 'Toy Id', vdescription as 'Wrapper Description' 
from orderdetail o left join wrapper w on o.cwrapperid = w.cWrapperId

--23
SELECT corderNo, ctoyId, sum(mToyCost) 
FROM OrderDetail 
GROUP BY cOrderNo 
select * from OrderDetail
--Column 'OrderDetail.cToyId' is invalid in the select list because it is not contained in either an aggregate function or the GROUP BY clause.


--24
select * from orders
select * from OrderDetail
select * from Toys
select corderno, 'Total'= sum(mtoycost) 
from OrderDetail 
group by cOrderNo having sum(mtoycost)>50 


--25
SELECT cToyID, mToyCost 
FROM OrderDetail 
COMPUTE SUM(mToyCost) --BY cToyId 

SELECT cCartId,mTotalCost FROM Orders 
ORDER BY cCartId 
COMPUTE AVG(mTotalCost) --BY cCartId 

