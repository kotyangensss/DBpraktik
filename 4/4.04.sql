select Name
from Production.Product as p1
where ListPrice > (
	select avg(p.ListPrice)
	from Production.Product as p
	where p1.ProductSubcategoryID = p.ProductSubcategoryID
)
