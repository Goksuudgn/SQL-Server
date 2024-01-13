select  'Customer' as RecordType, CompanyName, Country from dbo.Customers 
union all
select 'Supolier' as RecordTypeyy, CompanyName, Country from dbo.Suppliers


select  'Customer' as RecordType, CompanyName, Country from dbo.Customers where Country = 'Germany' 
union all

select  'Customer' as RecordType, CompanyName, Country from dbo.Customers where Country = 'Germany'
union all
select 'Hiçbiri' as RecordType, '',''


select  'Customer' as RecordType, CompanyName, Country from (select  'Customer' as RecordType, CompanyName, Country from dbo.Customers where Country = 'Germany' union all
select 'Supolier' as RecordTypeyy, CompanyName, Country from dbo.Suppliers) as tumKayitlar
where Country = 'Germany' 
order by CompanyName