select ProductID,  ListPrice - min(ListPrice) over(partition by ProductSubcategoryID order by productId)
from Production.Product
where ProductSubcategoryID is not null