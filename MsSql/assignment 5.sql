--CHAPTER 9

======================================================================================================================
---1------

select * from shopper
select * from toys

SELECT Shopper.vFirstName, vToyName 
FROM Shopper JOIN Orders 
ON Shopper.cShopperId = Orders.cShopperId JOIN OrderDetail 
ON Orders.cOrderNo = OrderDetail.cOrderNo JOIN Toys 
ON OrderDetail.cToyId = Toys.cToyId 

 