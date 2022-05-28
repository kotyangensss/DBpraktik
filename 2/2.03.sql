SELECT ProductSubcategoryID, count(*)
FROM [Production].[Product]
group by ProductSubcategoryID