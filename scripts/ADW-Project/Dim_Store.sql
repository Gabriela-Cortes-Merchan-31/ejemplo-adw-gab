INSERT INTO adw_dwh.dim_tienda (
    store_id,
    store,
    year4,
    day_of_week,
    day_of_week_name
)

select 
    BusinessEntityID,
    Name
from Sales_Store
limit 3;