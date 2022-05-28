SELECT color
FROM [Production].[Product]
group by Color
having min(ListPrice)>100