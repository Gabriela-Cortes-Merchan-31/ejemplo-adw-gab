select
    Customer.PersonID,
    CONCAT(Person.FirstName, ' ',Person.LastName) AS Nombre_Apellido,
    Address.City,
    Prov.Name as Province_Name,
    Region.Name as Country_Name,
    Email.EmailAddress

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
