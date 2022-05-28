select h.CustomerID
from sales.SalesOrderDetail as d join
sales.SalesOrderHeader as h
on d.SalesOrderID = h.SalesOrderID
where d.UnitPrice*d.OrderQty = (
select max(d.UnitPrice*d.OrderQty)
from sales.SalesOrderDetail as d join
sales.SalesOrderHeader as h
on d.SalesOrderID = h.SalesOrderID)
