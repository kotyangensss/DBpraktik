SELECT ProductID
FROM Sales.SalesOrderDetail
group by ProductID
having count(*)>3