SELECT p1.Name, count(distinct p2.ProductSubcategoryID), count(*)
FROM Production.ProductCategory as p1 join 
Production.ProductSubcategory as p2 
on p1.ProductCategoryID = p2.ProductCategoryId join
Production.Product as p3
on p2.ProductSubcategoryID = p3.ProductSubcategoryID
group by p1.name	