WITH 
	ProductInfo(ProductName, ProductCount, CustomerCount) AS
	(
		SELECT P.Name AS ProductName, COUNT(DISTINCT SOH.CustomerID) AS CustomerCount, COUNT(DISTINCT SOD.SalesOrderID) AS ProductCount
		FROM Production.Product AS P
		JOIN Sales.SalesOrderDetail AS SOD
		ON P.ProductID = SOD.ProductID
		JOIN Sales.SalesOrderHeader AS SOH
		ON SOD.SalesOrderID = SOH.SalesOrderID
		GROUP BY P.Name
	)
SELECT ProductName, ProductCount, CustomerCount
FROM ProductInfo