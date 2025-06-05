-- 3. List all products and their suppliers.
SELECT P.ProductName
       ,S.CompanyName
FROM products P
join suppliers S ON S.SupplierID = P.SupplierID;