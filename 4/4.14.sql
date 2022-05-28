select productID
from Production.Product
where productId in (
select productID
from Sales.SalesOrderDetail as d
where d. ProductID in (
select productID
from Sales.SalesOrderDetail as d join 
sales.SalesOrderHeader as h
on h.SalesOrderID = d.SalesOrderID
group by d.productID
having count(distinct h.CustomerID) < count(*)
)
group by d.ProductID
having count(*) <= 3
)