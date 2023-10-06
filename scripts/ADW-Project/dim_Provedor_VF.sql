select 
    Vendor.BusinessEntityID,
    Vendor.Name,
    Vendor.CreditRating
--    Order.ShipMethodID
from Purchasing_Vendor as Vendor
--    join Purchasing_PurchaseOrderHeader as Order
--        on Vendor.BusinessEntityID = Order.VendorID
limit 5;