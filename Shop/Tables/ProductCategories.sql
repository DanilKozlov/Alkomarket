CREATE TABLE [dbo].[ProductCategories]
(
	[ProductId] INT NOT NULL,
	[CategoryId] INT NOT NULL,
	FOREIGN KEY ([ProductId]) REFERENCES Products(Id),
	FOREIGN KEY ([CategoryId]) REFERENCES Categories(Id),
	PRIMARY KEY ([ProductId],[CategoryId])
)