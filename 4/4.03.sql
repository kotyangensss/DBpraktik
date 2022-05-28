select ProductID
from sales.SalesOrderDetail
where ProductID in (
	select d.ProductID
	from sales.SalesOrderDetail as d join
	sales.SalesOrderHeader as h
	on d.SalesOrderID = h.SalesOrderID
	group by d.ProductID
	having count(distinct h.CustomerID) = 1
)
