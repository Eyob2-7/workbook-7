-- 1.the name of the table that holds the items Northwind sells
-- products table

-- 2.Write a query to list the product id, product name, and unit price of every product.

select
productID,
productName,
UnitPrice

FROM
products;

-- 3.Write a query to list the product id, product name, and unit price of every product. Except this time, order then in ascending order by price.

select
productID,
productName,
UnitPrice

FROM
  products

ORDER BY
  UnitPrice
  asc;

-- 4.What are the products that we carry where the unit price is $7.50 or less?

select
productID,
productName,
UnitPrice

FROM 
products

WHERE UnitPrice <= 7.50;

-- 5.What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price.

SELECT 
productName,
UnitPrice,
UnitsInStock

From
products
WHERE
UnitsInStock >= 100

ORDER BY
UnitPrice desc;

-- 6.What are the products that we carry where we have at least 100 units onhand? Order them in descending order by price. If two or more have thesame price, list those in ascending order by product name.

SELECT 
productName,
UnitPrice,
UnitsInStock

From
products
WHERE
UnitsInStock >= 100

ORDER BY
UnitPrice desc,
ProductName ASC;

-- 7.What are the products that we carry where we have no units on hand, but 1 or more units of them on backorder? Order them by product name.

SELECT 
products.ProductName,
products.UnitsInStock,
products.UnitsOnOrder
FROM
products
WHERE
products.UnitsInStock = 0
AND
products.UnitsOnOrder > 0
order by
products.ProductName ASC;

-- 8.What is the name of the table that holds the types (categories) of the items Northwind sells?

-- ANSWER-> catagories table

-- 9. Write a query that lists all of the columns and all of the rows of the categories table? What is the category id of seafood?

select 
*
FROM
 northwind.categories
 WHERE
 CategoryName = 'seafood';

-- 10. Examine the Products table. How does it identify the type (category) of each item sold? Write a query to list all of the seafood items we carry.
-- ANSWER-> the Products table links to Catagories using CatagoryID , the CatagoryID of seafood is 8

SELECT
ProductID,
ProductName,
UnitsInStock
FROM
products
where
CategoryID = 8
AND UnitsInStock > 0;

-- 11. What are the first and last names of all of the Northwind employees?

SELECT 
FirstName,
LastName
FROM 
employees;

-- 12. What employees have "manager" in their titles?

SELECT 
FirstName,
LastName,
Title
FROM 
employees
WHERE
Title LIKE '%manager%';

-- 13. List the distinct job titles in employees.

SELECT 
DISTINCT Title
FROM 
employees;

-- 14. What employees have a salary that is between $2000 and $2500?

SELECT
FirstName,
LastName,
Salary
FROM 
employees
WHERE
Salary BETWEEN 2000 AND 2500;
-- 15. List all of the information about all of Northwind's suppliers.

SELECT
 * 
FROM
 suppliers;
 
 
-- 16. Examine the Products table. How do you know what supplier supplies each product? Write a query to list all of the items that "Tokyo Traders" supplies to Northwind
-- ANSWER-> SupplierID
select 
suppliers.SupplierID,
suppliers.CompanyName
from
suppliers
where
suppliers.CompanyName = "Tokyo Traders";  -- Tokyo Traders supplierID is 4

Select 
ProductName,
SupplierID

From
products

where
SupplierID = 4;














