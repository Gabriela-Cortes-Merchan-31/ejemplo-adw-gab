select
    Customer.CustomerID,
    CONCAT(Person.FirstName, ' ',Person.LastName) AS Nombre_Apellido,
    Address.City,
    Prov.Name as Province_Name,
    Region.Name as Country_Name,
    Email.EmailAddress

from adw.Sales_Customer as Customer
    join adw.Person_Person as Person
        on Customer.PersonID = Person.BusinessEntityID
    join adw.Person_EmailAddress as Email
        on Person.BusinessEntityID = Email.BusinessEntityID
    join adw.Person_Address as Address
        on Person.BusinessEntityID = Address.AddressID
    join adw.Person_StateProvince as Prov
        on Address.StateProvinceID = Prov.StateProvinceID
    join adw.Person_CountryRegion as Region
        on Prov.CountryRegionCode = Region.CountryRegionCode
limit 3;
 
-- Con ORDEN

-- select
--    Sales.SalesOrderID as SalesOrder,
--    Customer.PersonID,
--    CONCAT(Person.FirstName, ' ',Person.LastName) AS Nombre_Apellido,
--    Address.City,
--    Prov.Name as Province_Name,
--    Region.Name as Country_Name,
--    Email.EmailAddress

-- from adw.Sales_SalesOrderHeader as Sales 
--    join adw.Sales_Customer as Customer
--        on Sales.CustomerID = Customer.PersonID
--    join adw.Person_Person as Person
--        on Customer.PersonID = Person.BusinessEntityID
--    join adw.Person_EmailAddress as Email
--        on Person.BusinessEntityID = Email.BusinessEntityID
--    join adw.Person_Address as Address
--        on Person.BusinessEntityID = Address.AddressID
--    join adw.Person_StateProvince as Prov
--        on Address.StateProvinceID = Prov.StateProvinceID
--    join adw.Person_CountryRegion as Region
--        on Prov.CountryRegionCode = Region.CountryRegionCode
-- limit 3;
 