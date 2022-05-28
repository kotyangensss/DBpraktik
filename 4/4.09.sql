select Name
from Production.Product
where ProductId in (
	select d.ProductID
	from Sales.SalesOrderDetail as d join
	Sales.SalesOrderHeader as h
	on d.SalesOrderID = h.SalesOrderID
	group by d.SalesOrderID,d.ProductID
	having d.ProductID in (
		select p.ProductId
		from Production.Product as p join 
		Production.ProductSubcategory as s
		on p.ProductSubcategoryID = s.ProductSubcategoryID join 
		Production.ProductCategory as c
		on c.ProductCategoryID = s.ProductCategoryID
		group by c.ProductCategoryID, p.ListPrice, p.ProductId
		having p.ListPrice = max(p.ListPrice)
	)
)

