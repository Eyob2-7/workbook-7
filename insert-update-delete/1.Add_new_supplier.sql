-- Add a new supplier.
INSERT INTO suppliers (
	    CompanyName
       ,ContactName
       ,ContactTitle
       ,Address
       ,City
       ,region
       ,PostalCode
       ,Country
       ,Phone
       ,Fax
       ,HomePage)
values(
       'ByteMe Supplies'
       ,'Eyob Asteway'
       ,'Sales Manager'
       ,'411 Eric St'
       ,'Dallas'
       ,null
       ,'75121'
       ,'USA'
       ,'123-456-7891'
       ,null
       ,null);
-- select * From suppliers where CompanyName = 'ByteMe Supplies';