with ProductsAndAvg (ProductID, ListPrice, ProductSubcategoryID, AvgCostSubcategory) AS
	(select ProductID, ListPrice, ProductSubcategoryID, 
	AVG(ListPrice) OVER(PARTITION BY ProductSubcategoryID) 
	from Production.Product)
select ProductID 
from ProductsAndAvg
where ListPrice > AvgCostSubcategory AND ProductSubcategoryID IS NOT NULL