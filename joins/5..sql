/*5. List the order id, ship name, ship address, and shipping company name of
every order that shipped to Germany.*/

SELECT O.OrderID
       ,O.ShipName
       ,O.ShipAddress
       ,S.CompanyName
FROM orders O
JOIN shippers S
               ON O.ShipVia= S.ShipperID
WHERE O.ShipCountry = 'Germany';