with cmax(customer, price) as
	(
		SELECT SOH.CustomerID, count(*)
		FROM Sales.SalesOrderDetail as sod
		JOIN Sales.SalesOrderHeader AS SOH
		ON SOD.SalesOrderID = SOH.SalesOrderID
		GROUP BY CustomerID, sod.ProductID
	)
select customer
from cmax
group by customer
having min(price) > 1