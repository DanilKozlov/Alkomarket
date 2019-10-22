CREATE TABLE [dbo].[Sales]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Datatime] DATETIME NOT NULL, 
    [ProductId] INT NOT NULL, 
    [Quantity] INT NOT NULL, 
    [Price] MONEY NOT NULL, 
    [BuyersId] INT NOT NULL,
	FOREIGN KEY ([ProductId]) REFERENCES Products(Id),
	FOREIGN KEY ([BuyersId]) REFERENCES Buyers(Id)
)
