SELECT ProductSubcategoryID
FROM Production.Product
where ProductSubcategoryID is not null
group by ProductSubcategoryID
having count(*)>10