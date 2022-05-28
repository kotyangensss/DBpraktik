Select CreditRating, count(*)
From Purchasing.ProductVendor as pv join
Purchasing.Vendor as v
on v.BusinessEntityID = pv.BusinessEntityID
Group by CreditRating