
/*4. What is the product name(s) and categories of the most expensive
products? HINT: Find the max price in a subquery and then use that in
your more complex query that joins products with categories.*/

SELECT
 P.ProductName
,P.UnitPrice
,C.CategoryName
FROM products P 
JOIN categories C
ON P.CategoryID = C.CategoryID
WHERE P.UnitPrice = (
SELECT max(UnitPrice)
FROM products);