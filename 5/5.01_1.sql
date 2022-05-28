with OrderCount (CustomerID, SalesOrderID, ProductCount) as
(
	SELECT CustomerID, SOD.SalesOrderID, COUNT(ProductID) AS PoductCount
	FROM Sales.SalesOrderDetail AS SOD JOIN
	Sales.SalesOrderHeader AS SOH 
	ON SOD.SalesOrderID = SOH.SalesOrderID
	GROUP BY CustomerID, SOD.SalesOrderID
)
SELECT CustomerID, AVG(ProductCount)
FROM OrderCount
GROUP BY CustomerID 