/*3. List the product id, product name, unit price, category name, and supplier
name of every product. Order by product name.*/

SELECT 
P.ProductID
,P.ProductName
,P.UnitPrice
,C.CategoryName
,S.CompanyName
FROM Products P
JOIN 
categories C 
ON 
P.CategoryID = C.CategoryID
JOIN 
suppliers S
ON
 P.SupplierID = S.SupplierID
ORDER BY
P.ProductName;
 