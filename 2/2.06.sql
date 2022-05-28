SELECT CustomerID
FROM Sales.SalesOrderHeader
group by CustomerID
having count(*) - count(distinct OrderDate)>1