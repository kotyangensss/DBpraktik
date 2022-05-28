with tmp (cid, ccount)as
	(SELECT CustomerID,COUNT(*) AS ProductCount
	FROM Sales.SalesOrderDetail AS SOD JOIN
	Sales.SalesOrderHeader AS SOH 
	ON SOD.SalesOrderID = SOH.SalesOrderID
	GROUP BY CustomerID) 
SELECT CustomerID, SOD.ProductID, (count(*)*1.0/avg(tmp.ccount))
FROM Sales.SalesOrderDetail AS SOD JOIN
Sales.SalesOrderHeader AS SOH 
ON SOD.SalesOrderID = SOH.SalesOrderID
join tmp on soh.CustomerID = tmp.cid
GROUP BY CustomerID, SOD.ProductID