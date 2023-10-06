use adw

select
    sales.CustomerID,
    sales.PersonID,
    sales.StoreID,
    store.BusinessEntityID
from Sales_Customer as sales
    left join Sales_Store as store 
    on  sales.CustomerID = store.BusinessEntityID
