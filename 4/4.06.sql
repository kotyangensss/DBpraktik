select Name
from Production.Product
where ProductID in (
	select d.productID
	from Sales.SalesOrderDetail as d join
	Sales.SalesOrderHeader as h
	on d.SalesOrderID = h.SalesOrderID
	where exists (
		select h1.CustomerID
		from Sales.SalesOrderDetail as d1 join
		Sales.SalesOrderHeader as h1
		on d1.SalesOrderID = h1.SalesOrderID 
		where h1.CustomerID = h.CustomerID and d.ProductID = d1.ProductID and d.SalesOrderID != d1.SalesOrderID
		group by h1.CustomerID
		having count(distinct d1.ProductID) = (
			select count(distinct d2.ProductID)
			from Sales.SalesOrderDetail as d2
			where d.ProductID = d2.ProductID
			group by d2.ProductID
		)
	)
)
