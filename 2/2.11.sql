SELECT ProductID
FROM Sales.SalesOrderDetail
where OrderQty=1
group by ProductID