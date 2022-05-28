with tmp(ProductId, average, row) as (
	select ProductId,
	avg(OrderQty*1.0) 
	OVER(
	PARTITION BY s.ProductId 
	order by s.SalesOrderId desc
	Rows between current row and 2 following
	),
	row_number()
	OVER(
	PARTITION BY s.ProductId 
	order by s.SalesOrderId desc
	)
	from Sales.SalesOrderDetail as s
)
select ProductId, average
from tmp
where row = 1