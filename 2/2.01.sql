SELECT color, count(*)
FROM [Production].[Product]
where ListPrice>=30
group by Color