select * from dbo.Categories
--Yorum satýrý
select CategoryID , CategoryName from dbo.Categories

select[CustomerID], [ShipCity] from [dbo].[Orders]

select * from dbo.[müþteri tablosu]

select * from Northwind.dbo.Employees
select * from [Northwind].[dbo].[Employees]

--alias as keywordu ile kullanýlabilir (kolonlara çýkan listede bir baþlýk vermek için kullanýlabilir
select FirstName as[Adý], LastName as [Soyadý] from dbo.Employees

-- top komutu ile istediðimiz sayýdaki ilk kayýtlarý getirebiliriz
select top 3 * from dbo.Employees
select top 3 FirstName, LastName from dbo.Employees
SELECT TOP(3) * from dbo.Employees

--select cümlesindeki tabloya as keywordü ile kýsa takma adlar verilebilir
select CompanyName , Country from dbo.Customers
select c.CompanyName , c.Country from dbo.Customers as c

-- distinct komutu ile yinelenen satýrlarý kaldýrarak liste alabiliriz
select distinct Country from dbo.Customers

--ülkesi germany olan müþteriler, where keywordü ile tablo içindeki verilerde filtreleme yapabiliriz.
select * from dbo.Customers where Country = 'Germany'
 select * from dbo.Categories where CategoryID = 5
 select * from dbo.Categories where CategoryID ='5'

 --ülkesi Germany olmayan tüm müþterileri listeler
 select * from dbo.Customers where Country <> 'Germany'
 select * from dbo.Categories where CategoryID <> 5

 select * from dbo.Customers where Country = 'gERMANY' and Country = 'France' --Yukarýdaki gibi olmaz
 select * from dbo.Customers where Country = 'gERMANY' or Country = 'France'
 select * from dbo.Customers where Country = 'Mexico' and City = 'México D.F.' and (PostalCode='05021' or PostalCode='05022')

 --Region kolonu NULL olan kayýtlarý listeler
 select*from dbo.Customers where Region is null

 --Region kolonu NULL olmayan kayýtlarý listeler
 select*from dbo.Customers where Region is not null
 select CompanyName from dbo.Customers where Region is not null

 select CompanyName from dbo.Customers where Region is null or Region= ''

 select * from dbo.OrderDetails where UnitPrice >50
 select * from dbo.OrderDetails where UnitPrice <50
 select * from dbo.OrderDetails where UnitPrice >=50
 select * from dbo.OrderDetails where UnitPrice <=50
 select * from dbo.OrderDetails where UnitPrice >50 and UnitPrice<60


 --sipariþ detaylarýnda indirim yapýlan kayýtlarý listeleyen sql cümleciði
 select * from dbo.OrderDetails where Discount >0


 select * from dbo.Employees where BirthDate is null
  select * from dbo.Employees where BirthDate is not null
   select * from dbo.Employees where BirthDate = '19520219' -- ay gün yýl þeklinde de kabul ediyor

   --like komutu  ile biten, ile baþlayan, içinde geçen gibi filtreler uygulamak için kullanýlýr

select*from dbo.Employees where [Address] like '7%' --7ile baþlayan

select*from dbo.Employees where [Address] like '%d.' --d. ile biten

select*from dbo.Employees where [Address] like '%Ave%' --içinde Ave geçen kayýt

--
select * from dbo.Customers where Country ='Germany' or Country='France'
--in komutu ile verilen deðerleri içeren kayýtlarý listeler
select * from dbo.Customers where Country in ('Germany','France', 'UK')
select * from dbo.OrderDetails where Quantity in ( 4 , 8)
-- not in komutu ile verilen deðerleri içermeyen kayýtlarý listeler
select * from dbo.Customers where Country not in ('Germany','France')
select * from dbo.OrderDetails where Quantity not in ( 4 , 8)

-- between komutu iki deðer arasýndaki kayýtlarý listeler
select * from dbo.OrderDetails where Quantity >=4 and Quantity<=10
select*from dbo.OrderDetails where Quantity between 4 and 10

--
select ProductName as [ürün Adý], UnitPrice * UnitsInStock from dbo.Products
select FirstName, LastName, FirstName+' ' +LastName as [Adý Soyadý] from Employees
select FirstName, LastName, FirstName+ 5 as [Adý Soyadý] from Employees
--artý öperatörü eðer sol ve saðda ayný tipte veri yoksa hata verir. Birisi string birisi sayýsal deðer ise

select * from dbo.Customers order by CompanyName
select * from dbo.Customers order by CompanyName asc -- adan z ye sýralar
select * from dbo.Customers order by CompanyName desc --zden a ya sýralar

--order bydan sonra where kullanýlmaz!
select * from dbo.Customers where Country = 'Germany' order by CompanyName
select * from dbo.Customers order by Country , City desc
select * from dbo.Customers order by Country desc , City desc
select * from dbo.Customers order by Country , City asc

select Country, City from dbo.Customers order by Country, City desc

--sipariþin ürün ýdsini ürün birim fiyatý, miktarý ve tutarý alanlarýný bana dönen sql cümleciði
select ProductId as[Ütün Kodu], UnitPrice as [Ürün Fiyatý], Quantity as [Miktar], UnitPrice*Quantity as [Tutar] from dbo.OrderDetails order by (UnitPrice*Quantity) desc

--1-select
--2-kolonlar
--3-from
--4-where (varsa)
--5-order by sýralama (varsa)

