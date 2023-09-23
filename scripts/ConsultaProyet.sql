use adw;

-- Empleados
select 
    sales.SalesOrderID,
    sales.OrderDate,
    -- sales.CustomerID,
    sales.SalesPersonID,
    sales.TerritoryID,
    -- concat(person.FirstName, ' ', person.LastName) as CustomerName,
    concat(employee.FirstName, ' ', employee.LastName) as SalesPersonName,
    territory.name as TerritoryName
from Sales_SalesOrderHeader as sales
    -- join Sales_Customer as client
        -- on sales.CustomerID = client.CustomerID
    left outer join Person_Person as person
        on client.PersonID = person.BusinessEntityID
    join Sales_SalesPerson as salesperson 
        on sales.SalesPersonID = salesperson.BusinessEntityID
    left outer join Person_Person as employee 
        on  salesperson.BusinessEntityID = employee.BusinessEntityID
    join Sales_SalesTerritory as territory
        on sales.TerritoryID = territory.TerritoryID
limit 3
;
