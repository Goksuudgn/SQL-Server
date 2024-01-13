-- sub query

select SUM(od.UnitPrice * od.Quantity) 
from dbo.OrderDetails as od
where od.OrderID in (select o.OrderID from dbo.Orders as o where o.ShipCountry='Finland')

select o.OrderID from dbo.Orders as o where o.ShipCountry='Finland'


--Kategori Adý, ürün sayýsý
select c.*,
(select COUNT(p.ProductID) from dbo.Products as p where p.CategoryID=c.CategoryID) as [Toplam Ürün Sayýsý]
from dbo.Categories as c


--Kategori Adý, ürün sayýsý, kaç paralýk satýþ yapýlmýþ
select c.*,
(select COUNT(p.ProductID) from dbo.Products as p where p.CategoryID=c.CategoryID) as [Toplam Ürün Sayýsý],

(select SUM(od.UnitPrice * od.Quantity) 
from dbo.OrderDetails as od 
inner join dbo.Products as p on p.ProductID=od.ProductID
where p.CategoryID=c.CategoryID) as [Toplam Satýþ Tutarý]

from dbo.Categories as c