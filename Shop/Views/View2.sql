CREATE VIEW ViewSales
	AS SELECT s.Datatime as N'Дата',
	prod.Title as N'Название',
	(s.Price*s.Quantity) as N'Общая цена',
	b.Title as N'Продавец'
	FROM Sales as s 
	INNER JOIN  Products as prod  on s.ProductId = prod.Id 
	INNER JOIN Buyers as B on b.Id = s.BuyersId 
