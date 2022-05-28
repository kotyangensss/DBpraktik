SELECT P.Name, Pc.name
FROM [Production].[Product] AS p JOIN
Production.ProductSubcategory as psc
on p.ProductSubcategoryID = psc.ProductSubcategoryID join
Production.ProductCategory as pc
on psc.ProductCategoryID = pc.ProductCategoryID
WHERE P.Color ='RED' and p.ListPrice >= 100