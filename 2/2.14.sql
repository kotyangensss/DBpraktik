SELECT ProductSubcategoryID, count(*)
FROM Production.Product
where color is not null and productsubcategoryid is not null
group by ProductSubcategoryID