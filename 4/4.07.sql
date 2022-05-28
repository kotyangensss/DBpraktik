select distinct h.CustomerID
from Sales.SalesOrderDetail as d join
Sales.SalesOrderHeader as h
on d.SalesOrderID = h.SalesOrderID
where exists (
	select d1.productID
	from Sales.SalesOrderDetail as d1 join
	Sales.SalesOrderHeader as h1
	on d1.SalesOrderID = h1.SalesOrderID 
	where h1.CustomerID = h.CustomerID and d.ProductID = d1.ProductID and d.SalesOrderID != d1.SalesOrderID
)

