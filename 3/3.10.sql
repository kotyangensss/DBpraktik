Select top 1 pc.Name
From Production.Product as P join
Production.ProductSubcategory AS PSC
on P.ProductSubcategoryID = PSC.ProductSubcategoryID join
Production.ProductCategory AS PC
on PSC.ProductCategoryID = PC.ProductCategoryID join
Purchasing.ProductVendor AS PPV
on P.ProductID = PPV.ProductID
Group by pc.Name
Order by Count(*) Desc