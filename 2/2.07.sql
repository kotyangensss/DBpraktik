SELECT SalesOrderID
FROM Sales.SalesOrderDetail
group by SalesOrderID
having count(*)>3