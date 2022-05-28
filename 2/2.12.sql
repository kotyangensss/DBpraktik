SELECT SalesOrderID
FROM Sales.SalesOrderDetail
group by SalesOrderID
order by count(*) desc