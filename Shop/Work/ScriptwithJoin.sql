SELECT p.[Id], p.[Title] AS N'Продукт', prov.[Title] AS N'Поставщик',
purch.[Datatime], purch.[Quantity], purch.[Price]--,c.[Title]
FROM Products AS p 

INNER JOIN
Purchases purch
ON p.Id = purch.ProductId

INNER JOIN 
Providers prov
ON prov.Id = purch.ProvidersId

--INNER JOIN 
--ProductCategories pc
--ON p.Id = pc.ProductId

--JOIN
--Categories c
--ON c.Id = pc.CategoryId

WHERE purch.ProvidersId = 1;

SELECT CONCAT( N'Количество товара за промежуток времени: ' ,SUM(pr.Quantity) )AS Result
FROM Purchases AS pr 

WHERE Datatime BETWEEN '26.09.2019' AND '30.09.2019'

SELECT SUM(Quantity) as N'Количество товара на текущий момент времени' FROM (
SELECT Quantity FROM Purchases 
JOIN Products
ON Products.Id = Purchases.ProductId
WHERE Products.Id = 2
UNION all
SELECT (Quantity * -1) FROM Sales JOIN Products ON Products.Id = Sales.ProductId
WHERE Products.Id = 2
)AS T;


SELECT SUM(Quantity) as N'Количество товара на текущий момент времени' FROM 
(

SELECT Quantity FROM Purchases 
JOIN Products
ON Products.Id = Purchases.ProductId
WHERE Products.Id = 2

UNION

SELECT (Quantity * -1) FROM Sales
JOIN Products
ON Products.Id = Sales.ProductId
WHERE Products.Id = 2

)AS T;

Select Sum(Quantity) as 'QTY'
from
(

select Quantity from Purchases as purch
join 
ProductCategories pc
on pc.ProductId = purch.ProductId
where pc.CategoryId = 1 AND Datatime <='25.09.2019'

union all

select (Quantity * -1) from Sales as s
join 
ProductCategories pc
on pc.ProductId = s.ProductId
where pc.CategoryId = 1 AND Datatime <='25.09.2019'

)as T;




