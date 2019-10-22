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

SELECT * FROM Products AS p
JOIN 
ProductCategories pc
ON p.Id = pc.ProductId
JOIN
Categories c
ON c.Id = pc.CategoryId
WHERE c.Id = 4;