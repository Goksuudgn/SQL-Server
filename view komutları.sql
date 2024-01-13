--CREATE VIEW [dbo].[View_UrunKategori2]
ALTER VIEW [dbo].[View_UrunKategori2]
AS
SELECT p.ProductName, c.CategoryName
FROM   dbo.Categories as c
INNER JOIN dbo.Products as p ON p.CategoryID = c.CategoryID
where p.ProductName like '%app%'




select * 
from dbo.View_UrunKategori
where [Ürün Adý] like '%app%'
order by [Kategori Adý]


select * 
from dbo.View_UrunKategori2
order by CategoryName




create view dbo.SiparisRaporu
as
select 
o.OrderDate as 'Sipariþ Tarihi', 
o.ShipAddress + ' ' + o.ShipCity + '/' + o.ShipCountry + ' ' + o.ShipPostalCode as [Kargo Adresi],
p.ProductName as [Ürün Adý],
c.CategoryName as [Kategori Adý],
od.UnitPrice as [Birim Fiyat],
od.Quantity as [Miktar],
od.UnitPrice * od.Quantity as Tutar,
e.FirstName + ' ' + e.LastName as [Personel Adý]

from dbo.OrderDetails as od
inner join dbo.Orders as o on o.OrderID=od.OrderID
inner join dbo.Products as p on p.ProductID=od.ProductID
inner join dbo.Categories as c on c.CategoryID=p.CategoryID
inner join dbo.Employees as e on e.EmployeeID=o.EmployeeID


select * from dbo.SiparisRaporu