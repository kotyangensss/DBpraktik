select name, color, size
from Production.Product
where ListPrice<100 and color='Black'
order by ListPrice asc