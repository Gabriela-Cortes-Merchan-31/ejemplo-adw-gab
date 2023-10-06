 select 
    Sales.SalesOrderID,
--    Person.BusinessEntityID,
    Sales.ShipToAddressID,
    Ship.Name as Name_Ship
 from Sales_SalesOrderHeader as Sales
    join Purchasing_ShipMethod as Ship
        on Sales.ShipMethodID = Ship.ShipMethodID
--    join Person_Person as Person
--        on Sales.SalesPersonID = Person.BusinessEntityID
--    join Purchasing_Vendor as Proveedor
--        on Person.BusinessEntityID = Proveedor.BusinessEntityID
 limit 3;

-- Purchasing_ShipMethod
-- Purchasing_Vendor 

