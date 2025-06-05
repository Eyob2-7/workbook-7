-- 4. Raise the price of your new product by 15%.
UPDATE products 
SET UnitPrice = UnitPrice * 1.15
WHERE products.ProductID = 78;

-- SELECT * FROM products WHERE ProductID = 78;