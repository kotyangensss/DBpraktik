with cmax(customer, price) as
	(
		SELECT SOH.CustomerID, count(distinct ProductID)
		FROM Sales.SalesOrderDetail as sod
		JOIN Sales.SalesOrderHeader AS SOH
		ON SOD.SalesOrderID = SOH.SalesOrderID
		GROUP BY CustomerID, sod.SalesOrderID
	)
select customer
from cmax
group by customer
having count(distinct price) = count(*)