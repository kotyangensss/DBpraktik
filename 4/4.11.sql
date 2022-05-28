select productID
from Sales.SalesOrderDetail as d1 join 
sales.SalesOrderHeader as h1
on h1.SalesOrderID = d1.SalesOrderID
where exists (
select productID
from Sales.SalesOrderDetail as d join 
sales.SalesOrderHeader as h
on h.SalesOrderID = d.SalesOrderID
where h1.CustomerID = h.CustomerID and d1.ProductID = d.ProductID and d1.SalesOrderID != d.SalesOrderID
)