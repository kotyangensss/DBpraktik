SELECT Color
FROM Production.Product
where color is not null
group by Color
order by count(*) desc