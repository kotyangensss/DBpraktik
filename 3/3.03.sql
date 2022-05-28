SELECT p1.Name, count(*)
FROM [Production].[Productcategory] AS p1 JOIN
Production.ProductSubcategory as p2
on p1.ProductCategoryID = p2.ProductCategoryID join
Production.Product as p3
on p2.ProductSubcategoryID = p3.ProductSubcategoryID
Group by p1.name