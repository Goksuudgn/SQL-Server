select * from dbo.Categories
--Yorum sat�r�
select CategoryID , CategoryName from dbo.Categories

select[CustomerID], [ShipCity] from [dbo].[Orders]

select * from dbo.[m��teri tablosu]

select * from Northwind.dbo.Employees
select * from [Northwind].[dbo].[Employees]

--alias as keywordu ile kullan�labilir (kolonlara ��kan listede bir ba�l�k vermek i�in kullan�labilir
select FirstName as[Ad�], LastName as [Soyad�] from dbo.Employees

-- top komutu ile istedi�imiz say�daki ilk kay�tlar� getirebiliriz
select top 3 * from dbo.Employees
select top 3 FirstName, LastName from dbo.Employees
SELECT TOP(3) * from dbo.Employees

--select c�mlesindeki tabloya as keyword� ile k�sa takma adlar verilebilir
select CompanyName , Country from dbo.Customers
select c.CompanyName , c.Country from dbo.Customers as c

-- distinct komutu ile yinelenen sat�rlar� kald�rarak liste alabiliriz
select distinct Country from dbo.Customers

--�lkesi germany olan m��teriler, where keyword� ile tablo i�indeki verilerde filtreleme yapabiliriz.
select * from dbo.Customers where Country = 'Germany'
 select * from dbo.Categories where CategoryID = 5
 select * from dbo.Categories where CategoryID ='5'

 --�lkesi Germany olmayan t�m m��terileri listeler
 select * from dbo.Customers where Country <> 'Germany'
 select * from dbo.Categories where CategoryID <> 5

 select * from dbo.Customers where Country = 'gERMANY' and Country = 'France' --Yukar�daki gibi olmaz
 select * from dbo.Customers where Country = 'gERMANY' or Country = 'France'
 select * from dbo.Customers where Country = 'Mexico' and City = 'M�xico D.F.' and (PostalCode='05021' or PostalCode='05022')

 --Region kolonu NULL olan kay�tlar� listeler
 select*from dbo.Customers where Region is null

 --Region kolonu NULL olmayan kay�tlar� listeler
 select*from dbo.Customers where Region is not null
 select CompanyName from dbo.Customers where Region is not null

 select CompanyName from dbo.Customers where Region is null or Region= ''

 select * from dbo.OrderDetails where UnitPrice >50
 select * from dbo.OrderDetails where UnitPrice <50
 select * from dbo.OrderDetails where UnitPrice >=50
 select * from dbo.OrderDetails where UnitPrice <=50
 select * from dbo.OrderDetails where UnitPrice >50 and UnitPrice<60


 --sipari� detaylar�nda indirim yap�lan kay�tlar� listeleyen sql c�mleci�i
 select * from dbo.OrderDetails where Discount >0


 select * from dbo.Employees where BirthDate is null
  select * from dbo.Employees where BirthDate is not null
   select * from dbo.Employees where BirthDate = '19520219' -- ay g�n y�l �eklinde de kabul ediyor

   --like komutu  ile biten, ile ba�layan, i�inde ge�en gibi filtreler uygulamak i�in kullan�l�r

select*from dbo.Employees where [Address] like '7%' --7ile ba�layan

select*from dbo.Employees where [Address] like '%d.' --d. ile biten

select*from dbo.Employees where [Address] like '%Ave%' --i�inde Ave ge�en kay�t

--
select * from dbo.Customers where Country ='Germany' or Country='France'
--in komutu ile verilen de�erleri i�eren kay�tlar� listeler
select * from dbo.Customers where Country in ('Germany','France', 'UK')
select * from dbo.OrderDetails where Quantity in ( 4 , 8)
-- not in komutu ile verilen de�erleri i�ermeyen kay�tlar� listeler
select * from dbo.Customers where Country not in ('Germany','France')
select * from dbo.OrderDetails where Quantity not in ( 4 , 8)

-- between komutu iki de�er aras�ndaki kay�tlar� listeler
select * from dbo.OrderDetails where Quantity >=4 and Quantity<=10
select*from dbo.OrderDetails where Quantity between 4 and 10

--
select ProductName as [�r�n Ad�], UnitPrice * UnitsInStock from dbo.Products
select FirstName, LastName, FirstName+' ' +LastName as [Ad� Soyad�] from Employees
select FirstName, LastName, FirstName+ 5 as [Ad� Soyad�] from Employees
--art� �perat�r� e�er sol ve sa�da ayn� tipte veri yoksa hata verir. Birisi string birisi say�sal de�er ise

select * from dbo.Customers order by CompanyName
select * from dbo.Customers order by CompanyName asc -- adan z ye s�ralar
select * from dbo.Customers order by CompanyName desc --zden a ya s�ralar

--order bydan sonra where kullan�lmaz!
select * from dbo.Customers where Country = 'Germany' order by CompanyName
select * from dbo.Customers order by Country , City desc
select * from dbo.Customers order by Country desc , City desc
select * from dbo.Customers order by Country , City asc

select Country, City from dbo.Customers order by Country, City desc

--sipari�in �r�n �dsini �r�n birim fiyat�, miktar� ve tutar� alanlar�n� bana d�nen sql c�mleci�i
select ProductId as[�t�n Kodu], UnitPrice as [�r�n Fiyat�], Quantity as [Miktar], UnitPrice*Quantity as [Tutar] from dbo.OrderDetails order by (UnitPrice*Quantity) desc

--1-select
--2-kolonlar
--3-from
--4-where (varsa)
--5-order by s�ralama (varsa)


--SUM Function = Tablonun içindeki satırlara ait istenen kolonun toplam değerini bize geriye döner
select Sum(UnitPrice) from dbo.OrderDetails
select Sum(UnitPrice) from dbo.OrderDetails where ProductID=5
select Sum(UnitPrice*Quantity) as [Toplam Tutar] from dbo.OrderDetails where ProductID=5
select Sum(UnitPrice*Quantity) as ToplamTutar from dbo.OrderDetails where ProductID=5

--Count Function = tablonun içerisindeki kayıt sayısını verir 
select COUNT(*) FROM dbo.Categories
select count(*) as KayiSayisi from dbo.OrderDetails where ProductID=5

--MIN function = tablonun içindeki ilgili kolonun en küçük verisini geriye döner 
select MIN(UnitPrice) from dbo.Products
select MIN(UnitPrice) from dbo.OrderDetails where ProductID IN  (5,6,7,8)


--MAX Function = tablonun içindeki ilgili kolonun en büyük verisini geriye döner 
select MAX (UnitPrice) from dbo.Products
select MAX (UnitPrice) from dbo.OrderDetails where ProductID IN (5,6,7,8)
select MAX ((UnitPrice * Quantity) - Discount) from dbo.OrderDetails where ProductID IN (5,6,7,8)

--AVG Function = tablo içindeki ilgili kolonun ortalama değerini verir (Satırların toplamını alır ve satır sayısına böler)
select AVG(UnitPrice) from dbo. OrderDetails
select AVG(UnitPrice) from dbo. OrderDetails where ProductID IN (5,6,7,8)
select AVG((UnitPrice* Quantity) - Discount) from dbo.OrderDetails where ProductID IN (5,6,7,8)

