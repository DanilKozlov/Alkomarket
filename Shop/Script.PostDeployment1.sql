/*
Шаблон скрипта после развертывания							
--------------------------------------------------------------------------------------
 В данном файле содержатся инструкции SQL, которые будут добавлены в скрипт построения.		
 Используйте синтаксис SQLCMD для включения файла в скрипт после развертывания.			
 Пример:      :r .\myfile.sql								
 Используйте синтаксис SQLCMD для создания ссылки на переменную в скрипте после развертывания.		
 Пример:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

INSERT INTO Categories (Title) VALUES
(N'Пиво'),
(N'Вино'),
(N'Водка'),
(N'Слабоалкогольное'),
(N'Крепкое'),
(N'Виски'),
(N'Коньяк'),
(N'Безалкогольное'),
(N'Ром'),
(N'Энергетик'),
(N'Test'),
(N'Testid12');

INSERT INTO Products (Title, Sku) VALUES
(N'Aberlour','3047100017849'),
(N'Absolut','7312040017072'),
(N'Aznauri','4820189290117'),
(N'Балтика 9','4600682091233'),
(N'Opus One','2142033420337'),
(N'Red Bull','9002490100070'),
(N'Non Stop','4820097890324'),
(N'Captain Morgan','5000281039404'),
(N'Балтика 7','4600682012702'),
(N'Doudet Naudin Chablis','3660600001936'),
(N'Revo','4820097890690'),
(N'testdelete','00001154454');

INSERT INTO ProductCategories (ProductId, CategoryId) VALUES
(
(SELECT Id FROM Products WHERE Sku = '3047100017849'), 
(SELECT Id FROM Categories WHERE Title = N'Виски')
),
(
(SELECT Id FROM Products WHERE Sku = '3047100017849'), 
(SELECT Id FROM Categories WHERE Title = N'Крепкое')
),
(
(SELECT Id FROM Products WHERE Sku = '7312040017072'), 
(SELECT Id FROM Categories WHERE Title = N'Водка')
),
(
(SELECT Id FROM Products WHERE Sku = '7312040017072'), 
(SELECT Id FROM Categories WHERE Title = N'Крепкое')
),
(
(SELECT Id FROM Products WHERE Sku = '4820189290117'), 
(SELECT Id FROM Categories WHERE Title = N'Крепкое')
),
(
(SELECT Id FROM Products WHERE Sku = '4820189290117'), 
(SELECT Id FROM Categories WHERE Title = N'Коньяк')
),
(
(SELECT Id FROM Products WHERE Sku = '4600682091233'), 
(SELECT Id FROM Categories WHERE Title = N'Пиво')
),
(
(SELECT Id FROM Products WHERE Sku = '4600682091233'), 
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольное')
),
(
(SELECT Id FROM Products WHERE Sku = '2142033420337'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '2142033420337'), 
(SELECT Id FROM Categories WHERE Title = N'Крепкое')
),
(
(SELECT Id FROM Products WHERE Sku = '9002490100070'), 
(SELECT Id FROM Categories WHERE Title = N'Энергетик')
),
(
(SELECT Id FROM Products WHERE Sku = '9002490100070'), 
(SELECT Id FROM Categories WHERE Title = N'Безалкогольное')
),
(
(SELECT Id FROM Products WHERE Sku = '4820097890324'), 
(SELECT Id FROM Categories WHERE Title = N'Энергетик')
),
(
(SELECT Id FROM Products WHERE Sku = '4820097890324'), 
(SELECT Id FROM Categories WHERE Title = N'Безалкогольное')
),
(
(SELECT Id FROM Products WHERE Sku = '5000281039404'), 
(SELECT Id FROM Categories WHERE Title = N'Ром')
),
(
(SELECT Id FROM Products WHERE Sku = '5000281039404'), 
(SELECT Id FROM Categories WHERE Title = N'Крепкое')
),
(
(SELECT Id FROM Products WHERE Sku = '4600682012702'), 
(SELECT Id FROM Categories WHERE Title = N'Пиво')
),
(
(SELECT Id FROM Products WHERE Sku = '4600682012702'), 
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольное')
),
(
(SELECT Id FROM Products WHERE Sku = '3660600001936'), 
(SELECT Id FROM Categories WHERE Title = N'Вино')
),
(
(SELECT Id FROM Products WHERE Sku = '3660600001936'), 
(SELECT Id FROM Categories WHERE Title = N'Крепкое')
),
(
(SELECT Id FROM Products WHERE Sku = '4820097890690'), 
(SELECT Id FROM Categories WHERE Title = N'Энергетик')
),
(
(SELECT Id FROM Products WHERE Sku = '4820097890690'), 
(SELECT Id FROM Categories WHERE Title = N'Слабоалкогольное')
);

INSERT INTO Country(Title) VALUES
(N'Украина'),
(N'Россия'),
(N'Белорусия'),
(N'Польша'),
(N'Франция'),
(N'Германия');

INSERT INTO Providers (Title,CountryId) VALUES
(N'ФОП Слончак','1'),
(N'Торговый дом - Фрегат','4'),
(N'Винодел','5');

INSERT INTO Buyers(Title,CountryId) VALUES
(N'Эко-вина','3'),
(N'Торговый дом - Ресурс','5'),
(N'Интернет-магазин Покупка','2');

--Покупки
INSERT INTO Purchases(Datatime,ProductId,Quantity,Price,ProvidersId) VALUES
('10.09.2019',2,10,7.43,1),
('24.09.2019',2,28,7.94,3),
('1.09.2019',8,2,14.44,3),
('20.09.2019',8,11,15.59,2),
('6.09.2019',1,31,58.96,2),
('25.09.2019',1,1,63.25,1),
('2.09.2019',3,7,8.50,3),
('14.09.2019',3,14,9,1),
('8.09.2019',4,13,0.95,3),
('29.09.2019',4,6,1.28,2),
('5.09.2019',5,7,581.80,2),
('18.09.2019',5,16,581.80,2),
('15.09.2019',6,17,2.21,1),
('19.09.2019',6,30,2.56,2),
('1.09.2019',7,21,0.86,3),
('7.09.2019',7,4,0.94,2),
('12.09.2019',9,6,0.92,3),
('27.09.2019',9,18,1.12,1),
('24.09.2019',10,16,22.69,1),
('29.09.2019',10,48,24.2,2),
('7.09.2019',11,26,1.23,2),
('13.09.2019',11,9,1.5,3);

--Продажи
INSERT INTO Sales(Datatime,ProductId,Quantity,Price,BuyersId) VALUES
('15.09.2019',1,28,60.96,1),
('29.09.2019',1,3,65.25,3),
('18.09.2019',2,5,8.43,2),
('24.09.2019',2,30,9.25,3),
('10.09.2019',3,7,9.50,2),
('28.09.2019',3,6,10,1),
('12.09.2019',4,10,1.27,3),
('30.09.2019',4,7,1.54,1),
('15.09.2019',5,4,600,2),
('22.09.2019',5,7,630,1),
('20.09.2019',6,7,2.95,3),
('28.09.2019',6,10,3.64,1),
('11.09.2019',7,18,1.10,2),
('25.09.2019',7,6,1.22,1),
('14.09.2019',8,1,15.64,1),
('23.09.2019',8,6,17.2,3),
('16.09.2019',9,5,1.35,2),
('30.09.2019',9,11,1.56,3),
('26.09.2019',10,5,25.2,2),
('30.09.2019',10,41,27.9,1),
('11.09.2019',11,16,1.48,3),
('19.09.2019',11,19,1.95,1);