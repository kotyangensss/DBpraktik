with cmax(customer, price) as
	(
		SELECT SOH.CustomerID, sum(UnitPrice*OrderQty)
		FROM Sales.SalesOrderDetail as sod
		JOIN Sales.SalesOrderHeader AS SOH
		ON SOD.SalesOrderID = SOH.SalesOrderID
		GROUP BY CustomerID, sod.SalesOrderID
	)
select customer, max(price), min(price)
from cmax
group by customer