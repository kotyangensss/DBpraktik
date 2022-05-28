select top 3 name, size
from Production.Product
where color='Black'
order by ListPrice desc