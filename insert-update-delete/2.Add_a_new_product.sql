-- 2.Add a new product provided by that supplier
INSERT INTO products(
			ProductName
			,SupplierID
			,CategoryID
			,QuantityPerUnit
			,UnitPrice
			,UnitsInStock
			,UnitsOnOrder
			,ReorderLevel
			,Discontinued)
VALUES (
		'Sea Moss'
        ,30
        ,8
        ,'12 - 16 oz bottles'
        ,40.99
        ,100
        ,0
        ,10
        ,0);
        
        