select Name
from Production.Product
where ProductID in (
	select d.productID
	from Sales.SalesOrderDetail as d join
	Sales.SalesOrderHeader as h
	on d.SalesOrderID = h.SalesOrderID
	where h.customerID in (
		select h.CustomerID
		from Sales.SalesOrderDetail as d join
		Sales.SalesOrderHeader as h
		on d.SalesOrderID = h.SalesOrderID join
		Production.Product as p 
		on p.ProductID = d.ProductID
		group by CustomerID
		having  count(distinct p.color) = 1 and count(distinct p.color)!=2
	)
	group by d.ProductID
	having count(distinct h.CustomerID) > 1
)
