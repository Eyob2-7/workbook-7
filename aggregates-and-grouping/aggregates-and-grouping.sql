-- 1. How many suppliers are there? Use a query!
SELECT count(*)  AS TotalSuppliers
FROM 
 suppliers; 

-- 2. What is the sum of all the employee's salaries?
SELECT 
SUM(Salary) AS TotalSalaries
 FROM
 employees;

-- 3. What is the price of the cheapest item that Northwind sells?
SELECT 
MIN(p.UnitPrice) AS CheapestItem
 FROM
 products p;
 
-- 4. What is the average price of items that Northwind sells?
SELECT 
AVG(p.UnitPrice) AS AveragePrice
 FROM
 products p;
 
-- 5. What is the price of the most expensive item that Northwind sells?
SELECT 
MAX(p.UnitPrice) AS MostExpensiveItem
 FROM
 products p;
 
-- 6. What is the supplier ID of each supplier and the number of items they supply? You can answer this query by only looking at the Products table.
SELECT 
SupplierID, 
count(*) AS NumberOfItems
FROM 
products
GROUP BY
 SupplierID;

-- 7. What is the category ID of each category and the average price of each item in the category? You can answer this query by only looking at the Products table.
SELECT 
CategoryID
, AVG(UnitPrice) AS AveragePrice
FROM 
products
GROUP BY
CategoryID;

-- 8. For suppliers that provide at least 5 items to Northwind, what is the supplier ID of each supplier and the number of items they supply? You can answer this query by only looking at the Products table.
SELECT 
SupplierID,
 COUNT(*) AS NumberOfItems
 FROM 
 products
 GROUP BY
 SupplierID
 Having
 COUNT(*) >= 5;

-- 9. List the product id, product name, and inventory value (calculated by multiplying unit price by the number of units on hand). Sort the results in descending order by value. If two or more have the same value, order by product name.
SELECT
 p.ProductID,
 p.ProductName,
(p.UnitPrice * p.UnitsInStock) AS InventoryValue
From
products p
ORDER BY
InventoryValue DESC,
 ProductName ASC;