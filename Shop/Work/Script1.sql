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



select GETDATE()  
--Select Year (GETDATE())
Select YEAR('2019-08-11')--Получить год из переданной даты-времени
Select MONTH('2019-02-11')--Получить месяц из переданной даты-времени
Select DAY('2019-02-25')--Получить дату из переданной даты-времени
SELECT DATEDIFF(DAY, '2019-02-01', '2019-03-15')--Получить разницу в днях между двумя дата-время

DECLARE @datetime2 datetime2 = '2019-02-01';
--select DATEADD(M,2,@datetime2)--Получить дату которая через 2 месяца после переданной даты
select DATEADD(DAY,-(3),(select DATEADD(MONTH,-(2),(Select DATEADD(YEAR,-(1),@datetime2)))))--Получить дату которая 1 год, 2 месяца, 3 дня назад от переданной даты





--Дичь полная !!!!
--CREATE TABLE #Temp ( [year] int,[month] int, [day] int, Balance MONEY);
 
--DECLARE @period INT, @sum MONEY, @date DATE, @day int, @month int, @year int;


--SET @period = (select MAX(id) from Operations)
--SET @sum = 0;
	
--WHILE @period > 0
--    BEGIN
--	set @day = DAY((select Datatime from Operations where id = @period));
--	set @month = MONTH((select Datatime from Operations where id = @period));
--	set @year = YEAR((select Datatime from Operations where id = @period));
--	set @sum = (select Price from Operations where id = @period);

--	INSERT INTO #Temp VALUES(@year,@month,@day, @sum)
--    SET @period = @period - 1
	
--    END;

--SELECT * FROM #Temp


--8. Из таблицы платежей получить таблицу со следующими полями
--	Год, Месяц, Дата, Количество платежей, Сумма платежей

DECLARE @Count INT SET @Count = (select MAX(id) from Operations)

SELECT TOP (@Count) [Id] AS N'№' , YEAR([Datatime]) AS N'Year', MONTH([Datatime]) AS N'Month', DAY([Datatime]) AS N'Day', Price as N'Сумма платежа'
FROM Operations
ORDER BY Id;

--Task 9

select * from [ViewPurchases]
select * from ViewSales 
select * from Salesmore5000  
select * from Purchasesperlastweek 
