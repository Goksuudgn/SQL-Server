select * from dbo.Categories


select p.ProductID, p.ProductName, c.CategoryName  from dbo.Products as p
inner join dbo.Categories as c on c.CategoryID = p.CategoryID

select p.ProductID, p.ProductName, c.CategoryName  from dbo.Products as p
left join dbo.Categories as c on c.CategoryID = p.CategoryID

select p.ProductID, p.ProductName, c.CategoryName  from dbo.Products as p
right join dbo.Categories as c on c.CategoryID = p.CategoryID

select p.ProductID, p.ProductName, c.CategoryName  from dbo.Products as p
full outer join dbo.Categories as c on c.CategoryID = p.CategoryID

select p.ProductID, p.ProductName, c.CategoryName  from dbo.Products as p
full outer join dbo.Categories as c on c.CategoryID = p.CategoryID

--Sipariþ tarihi, Kargo adresi, Ürünün adý, Kategorinin adý, Sipariþin Birim Fiyatý, Sipariþin Miktarý, Sipariþin Tutarý, Personelin Adý

select
o.OrderDate as 'Sipariþ Tarihi',
o.ShipAddress + '' + o.ShipCity + '/' + o.ShipCountry + '' +
o.ShipPostalCode as [Kargo Adresi],
p.ProductName as [Ürün Adý],
c.CategoryName as [Kategori adý],
od.UnitPrice as [Birim Fiyat],
od.Quantity as [Miktar],
od.UnitPrice*od.Quantity as [Tutar],
e.FirstName + '' + e.LastName as [Personel Adý]

from dbo.OrderDetails as od
inner join dbo.Orders as o on od.OrderID=o.OrderID
inner join dbo.Products as p on p.ProductID=od.ProductID
inner join dbo.Categories as c on c.CategoryID=p.CategoryID
inner join dbo.Employees as e on e.EmployeeID=o.EmployeeID
