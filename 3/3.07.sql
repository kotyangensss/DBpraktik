Select v.Name, count(*)
From Purchasing.Vendor as v join
Purchasing.ProductVendor as pv
on v.BusinessEntityID = pv.BusinessEntityID
Group by v.Name