Select top 1 p.Name
From Purchasing.ProductVendor as v join
Production.Product as p
on v.ProductID = p.ProductID
Group by p.Name
Order by Count(*) Desc