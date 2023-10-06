use adw;
 INSERT INTO adw_dwh.dim_producto (
    product_id, 
    product,
    localizacion,
    costrate,
    class, 
    category,
    subcategory,
 )

select 
    Product.ProductID,
    Product.Name,
    Location.Name as Name_Location,
    Location.CostRate,
    Product.Class,
    Category.Name as Name_category,
    Subcategory.Name as Name_subcategory 
from adw.Production_Product as Product
    join adw.Production_ProductSubcategory as Subcategory 
        on Product.ProductSubcategoryID = Subcategory.ProductSubcategoryID
    join adw.Production_ProductCategory as Category
        on Subcategory.ProductCategoryID = Category.ProductCategoryID
    join adw.Production_ProductInventory as Inventory
         on Product.ProductID = Inventory.ProductID
    join adw.Production_Location as Location 
         on Inventory.LocationID = Location.LocationID
;
