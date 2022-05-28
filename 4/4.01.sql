select p.name
from Production.Product as p
where p.ProductID = (
select top 1 s.ProductID
from Sales.SalesOrderDetail as s
group by ProductID
order by count(*) desc
)