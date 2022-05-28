SELECT ProductID, count(*)
FROM Sales.SalesOrderDetail
group by ProductID
having count(*)>5