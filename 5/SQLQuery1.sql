with tmp (productID, sales,customer, category) as 
(
select p.ProductID, count(*),count(distinct h.CustomerID), sc.ProductCategoryID
from Production.Product as p join
Sales.SalesOrderDetail  as s on
p.ProductID = s.ProductID join
Sales.SalesOrderHeader  as h on
h.SalesOrderID = s.SalesOrderID join
Production.ProductSubcategory  as sc on
p.ProductSubcategoryID = sc.ProductSubcategoryID join
Production.ProductCategory as c on
c.ProductcategoryID = sc.ProductcategoryID
group by p.ProductID, sc.ProductCategoryID
)
select tmp.productId, tmp.sales, customer * 1.0 /(
select count (distinct h.CustomerID)
from Production.Product as p join
Production.ProductSubcategory as sc on
p.ProductSubcategoryID = sc.ProductSubcategoryID join
Production.ProductCategory as c on
c.ProductcategoryID = sc.ProductcategoryID join
Sales.SalesOrderDetail as d on
p.productID = d.productID join
Sales.SalesOrderHeader as h on
d.SalesOrderID = h.SalesOrderID
where sc.ProductCategoryID = tmp.category)
from tmp
