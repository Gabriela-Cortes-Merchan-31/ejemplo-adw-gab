
select
    Customer.PersonID,
--    Person.BusinessEntityID,
--    Person.FirstName,
--    Person.LastName,
    CONCAT(Person.FirstName, ' ',Person.LastName) AS Nombre_Apellido,
    Email.EmailAddress,
--    Address.AddressID,
    Address.City,
--    Address.StateProvinceID,
--    Prov.StateProvinceID,
--    Prov.CountryRegionCode,
    Prov.Name as Province_Name,
--    Region.CountryRegionCode,
    Region.Name as Country_Name
from Sales_Customer as Customer
    join Person_Person as Person
        on Customer.PersonID = Person.BusinessEntityID
    join Person_EmailAddress as Email
        on Person.BusinessEntityID = Email.BusinessEntityID
    join Person_Address as Address
        on Person.BusinessEntityID = Address.AddressID
    join Person_StateProvince as Prov
        on Address.StateProvinceID = Prov.StateProvinceID
    join Person_CountryRegion as Region
        on Prov.CountryRegionCode = Region.CountryRegionCode
limit 3;




-- consultas de calidad
-- SELECT COUNT(CASE WHEN PersonID IS NULL THEN 1 END) AS cantidad_de_null
-- SELECT COUNT(PersonID) AS cantidad
-- FROM Sales_Customer;
