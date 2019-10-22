CREATE TABLE [dbo].[Purchases]--Покупки
(

	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Datatime] DATETIME NOT NULL, 
    [ProductId] INT NOT NULL, 
    [Quantity] INT NOT NULL, 
    [Price] MONEY NOT NULL, 
    [ProvidersId] INT NOT NULL,
	FOREIGN KEY ([ProductId]) REFERENCES Products(Id),
	FOREIGN KEY ([ProvidersId]) REFERENCES Providers(Id)
)
