CREATE VIEW ViewPurchases
	AS SELECT purch.Datatime as N'Дата',
	prod.Title as N'Название',
	(purch.Price*purch.Quantity) as N'Общая цена',
	prov.Title as N'Продавец'
	FROM Purchases as purch 
	INNER JOIN  Products as prod  on purch.ProductId = prod.Id 
	INNER JOIN Providers as prov on prov.Id = purch.ProvidersId 
