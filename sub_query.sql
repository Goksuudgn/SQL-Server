-- sub query

select SUM(od.UnitPrice * od.Quantity) 
from dbo.OrderDetails as od
where od.OrderID in (select o.OrderID from dbo.Orders as o where o.ShipCountry='Finland')

select o.OrderID from dbo.Orders as o where o.ShipCountry='Finland'


--Kategori Ad�, �r�n say�s�
select c.*,
(select COUNT(p.ProductID) from dbo.Products as p where p.CategoryID=c.CategoryID) as [Toplam �r�n Say�s�]
from dbo.Categories as c


--Kategori Ad�, �r�n say�s�, ka� paral�k sat�� yap�lm��
select c.*,
(select COUNT(p.ProductID) from dbo.Products as p where p.CategoryID=c.CategoryID) as [Toplam �r�n Say�s�],

(select SUM(od.UnitPrice * od.Quantity) 
from dbo.OrderDetails as od 
inner join dbo.Products as p on p.ProductID=od.ProductID
where p.CategoryID=c.CategoryID) as [Toplam Sat�� Tutar�]

from dbo.Categories as c