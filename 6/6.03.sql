select h.CustomerID, h.SalesOrderID, ROW_NUMBER() 
over(partition by CustomerId Order by OrderDate)
from sales.SalesOrderHeader as h