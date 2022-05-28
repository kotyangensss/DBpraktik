SELECT p1.Name, p2.name
FROM [Production].[ProductSubcategory] AS p1 JOIN
Production.ProductSubcategory as p2
on p1.ProductSubcategoryID != p2.ProductSubcategoryID and p1.name = p2.name