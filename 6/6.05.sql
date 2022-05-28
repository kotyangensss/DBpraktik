with tmp(ProductId, average, row) as (
	select ProductId,
	avg(OrderQty*1.0) 
	OVER(
	PARTITION BY s.ProductId 
	order by h.OrderDate desc,s.SalesOrderId desc
	Rows between current row and 2 following
	),
	row_number()
	OVER(
	PARTITION BY s.ProductId 
	order by h.OrderDate desc, s.SalesOrderId desc
	)
	from Sales.SalesOrderDetail as s join
	Sales.SalesOrderHeader as h
	on s.SalesOrderID = h.SalesOrderID
)
select p. Name, p.ProductId, average
from tmp join Production.Product as p on tmp.ProductId = p.ProductID
where row = 1