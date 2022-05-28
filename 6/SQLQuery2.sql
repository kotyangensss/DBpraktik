select p.Name, c.Name, count(*) over(partition by c.ProductCategoryId)
from Production.Product as p join 
Production.ProductSubcategory as s
on p.ProductSubcategoryID = s.ProductSubcategoryID join 
Production.ProductCategory as c
on c.ProductCategoryID = s.ProductCategoryID