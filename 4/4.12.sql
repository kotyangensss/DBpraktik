select Name
from Production.Product
where ProductId in (
	select d.ProductID
	from Sales.SalesOrderDetail as d join
	Sales.SalesOrderHeader as h
	on d.SalesOrderID = h.SalesOrderID
	group by d.ProductID
	having count(distinct h.customerId) >= 3
)
