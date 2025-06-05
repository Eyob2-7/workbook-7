/*6. List the order id, order date, ship name, ship address of all orders that
ordered "Sasquatch Ale"?*/
SELECT O.OrderID
	   ,O.OrderDate
       ,O.ShipName
       ,O.ShipAddress
FROM orders O
join `order details` OD 
     ON OD.OrderID = O.OrderID
JOIN products P 
ON P.ProductID = OD.ProductID
WHERE 
P.ProductName = "Sasquatch Ale";