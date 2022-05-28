select tmp.CustomerID, AVG(tmp.ProductCount)
from 
	(SELECT CustomerID, SOD.SalesOrderID, COUNT(ProductID) AS ProductCount
	FROM Sales.SalesOrderDetail AS SOD JOIN
	Sales.SalesOrderHeader AS SOH 
	ON SOD.SalesOrderID = SOH.SalesOrderID
	GROUP BY CustomerID, SOD.SalesOrderID) as tmp
GROUP BY CustomerID 