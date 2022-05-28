SELECT SalesOrderID
FROM Sales.SalesOrderDetail
group by SalesOrderID
order by sum(OrderQty*UnitPrice) desc