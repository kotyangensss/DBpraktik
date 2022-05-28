SELECT ProductID, count(*)
FROM Sales.SalesOrderDetail
where orderqty > 1
group by ProductID
having count(*)>2