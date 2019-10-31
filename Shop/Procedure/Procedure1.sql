CREATE PROCEDURE AddProduct
    @Datatime  DATETIME,
    @ProductId INT,
	@Quantity INT,
    @Price MONEY,
	@ProvidersId INT
	
	
AS

declare @CurrentBalans MONEY;
Set @CurrentBalans = (SELECT SUM(op.Price) FROM Operations as op)
Begin transaction
IF @Price>0
BEGIN
IF @Quantity > 0
BEGIN
IF @CurrentBalans > (@Price*@Quantity)
BEGIN

INSERT INTO Purchases(Datatime,ProductId,Quantity,Price,ProvidersId)
VALUES(@Datatime, @ProductId, @Quantity, @Price, @ProvidersId) 
INSERT INTO Operations(Datatime,Price)VALUES(@Datatime, @Price*@Quantity*-1)
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

