select s.ProductSubcategoryID
from Production.ProductSubcategory as s
where (
select count(*)
from(
	select d1.productId
	from Sales.SalesOrderDetail as d1 join
	Production.Product as p1
	on p1.ProductID = d1.ProductID join
	Production.ProductSubcategory as s1
	on s1.ProductSubcategoryID = p1.ProductSubcategoryID
	where s1.ProductSubcategoryID = s.ProductSubcategoryID
	group by d1.ProductID
	having count(*) > 3
	) as a ) > 3

