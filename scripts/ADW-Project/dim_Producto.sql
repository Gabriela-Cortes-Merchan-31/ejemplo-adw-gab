select 
    Product.ProductID,
    Product.Name,
    Product.Class,
    Subcategory.Name as Name_subcategory,
    Category.Name as Name_category,
    Location.Name as Name_Location,
    Location.CostRate
from Production_Product as Product
    join Production_ProductSubcategory as Subcategory 
        on Product.ProductSubcategoryID = Subcategory.ProductSubcategoryID
    join Production_ProductCategory as Category
        on Subcategory.ProductCategoryID = Category.ProductCategoryID
    join Production_ProductInventory as Inventory
         on Product.ProductID = Inventory.ProductID
    join Production_Location as Location 
         on Inventory.LocationID = Location.LocationID
 limit 3;

-- Con la orden de venta

-- select 
--    OrderDetail.SalesOrderID,
--    Product.ProductID,
--    Product.Name,
--    Product.Class,
--    Subcategory.Name as Name_subcategory,
--    Category.Name as Name_category,
--    Location.Name as Name_Location,
--    Location.CostRate
-- from Sales_SpecialOfferProduct as SpecialOffer
--    join Production_Product as Product
--        on SpecialOffer.ProductID = Product.ProductID
--    join Sales_SalesOrderDetail as OrderDetail
--        on SpecialOffer.SpecialOfferID= OrderDetail.SpecialOfferID 
--    join Production_ProductSubcategory as Subcategory 
--        on Product.ProductSubcategoryID = Subcategory.ProductSubcategoryID
--    join Production_ProductCategory as Category
--        on Subcategory.ProductCategoryID = Category.ProductCategoryID
--    join Production_ProductInventory as Inventory
--         on Product.ProductID = Inventory.ProductID
--    join Production_Location as Location 
--         on Inventory.LocationID = Location.LocationID
-- limit 3;