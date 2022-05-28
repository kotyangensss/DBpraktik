select ProductID 
from Production.Product as p
where ListPrice > (select top 1
	AVG(ListPrice) OVER(PARTITION BY ProductSubcategoryID) 
	from Production.Product as p1
	where p.ProductSubcategoryID = p1.ProductSubcategoryID)
	AND ProductSubcategoryID IS NOT NULL