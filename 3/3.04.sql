SELECT p2.Name, count(*)
FROM Production.ProductSubcategory as p2 join
Production.Product as p3
on p2.ProductSubcategoryID = p3.ProductSubcategoryID
Group by p2.ProductSubcategoryID, p2.Name