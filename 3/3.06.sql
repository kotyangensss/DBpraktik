SELECT p2.Name, max(p3.ListPrice)
FROM Production.ProductSubcategory as p2 join
Production.Product as p3
on p2.ProductSubcategoryID = p3.ProductSubcategoryID
where p3.Color = 'Red'
Group by p2.ProductSubcategoryID, p2.Name