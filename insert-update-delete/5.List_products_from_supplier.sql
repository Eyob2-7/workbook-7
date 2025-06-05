-- 5. List the products and prices of all products from that supplier.
SELECT P.ProductName
		,P.UnitPrice
        ,S.CompanyName
FROM products P     
join suppliers S ON S.SupplierID = P.SupplierID
WHERE S.SupplierID = 30;