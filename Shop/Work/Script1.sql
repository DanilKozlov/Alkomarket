SELECT * FROM Categories

SELECT * FROM Buyers

SELECT * FROM Country

SELECT * FROM ProductCategories

SELECT * FROM Providers

SELECT * FROM Products

SELECT * FROM Purchases

SELECT * FROM Sales

SELECT * from Operations

UPDATE Products
SET Title = N'Red_Bull' WHERE Products.Title= N'Red Bull';

UPDATE Country
SET Title = N'Австрия' WHERE Country.Title= N'Франция';

UPDATE Buyers
SET Title = N'Эко-Вина' WHERE Buyers.Title= N'Эко-вина';

DELETE FROM Categories 
WHERE Categories.id = 12;

DELETE FROM Categories 
WHERE Categories.Title = N'Test' ;

DELETE FROM Products 
WHERE Products.Sku = N'00001154454' ;


