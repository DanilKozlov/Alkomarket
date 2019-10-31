CREATE PROCEDURE SellProduct

	@Datatime  DATETIME,
    @ProductId INT,
	@Quantity INT,
    @Price MONEY,
	@BuyersId INT
	
	
AS
declare @Quant int;
Set @Quant =
( SELECT SUM(Quantity) FROM (
SELECT Quantity FROM Purchases 
JOIN Products
ON Products.Id = Purchases.ProductId
WHERE Products.Id = @ProductId
UNION all
SELECT (Quantity * -1) FROM Sales JOIN Products ON Products.Id = Sales.ProductId
WHERE Products.Id = @ProductId
)AS T)

Begin transaction
IF @Price > 0
BEGIN
IF @Quantity > 0
BEGIN
IF @Quant > @Quantity
BEGIN
INSERT INTO Sales(Datatime,ProductId,Quantity,Price,BuyersId)
VALUES(@Datatime, @ProductId, @Quantity, @Price, @BuyersId) 
INSERT INTO Operations(Datatime,Price)VALUES(@Datatime, @Price*@Quantity)
commit;
END;
ELSE
rollback transaction;
 print N'Количество товара не может быть 0'
return 1;
END;
ELSE
rollback transaction;
 print N'Количество товара не может быть 0'
return 1;
END;
ELSE 
rollback transaction;
 print N'Цена товара не может быть 0'
 return 1;