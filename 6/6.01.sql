select SalesOrderID, ProductID, UnitPrice*OrderQty/sum(UnitPrice*OrderQty)
over(partition by salesorderId)
from Sales.SalesOrderDetail