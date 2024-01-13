--iki tablo arasýndaki sadece eþleþen kayýtlarý getirir

select o.[OgrenciId][AdiSoyadi] from [dbo].[OKUL_Ogrenciler] as o inner join [dbo].[OKUL_OzlukBilgileri] as ob on ob.OgrenciId=o.OgrenciId 

select*from [dbo].[OKUL_Veli]
select*from [dbo].[OKUL_Ogrenciler]

select *
from dbo.OKUL_Ogrenciler as o
inner join dbo.OKUL_Veli as v on v.OgrenciId=o.OgrenciId

select o.*
from dbo.OKUL_Ogrenciler as o
inner join dbo.OKUL_Veli as v on v.OgrenciId=o.OgrenciId

select o.* , v.AdiSoyadi , v.IsAdresi
from dbo.OKUL_Ogrenciler as o
inner join dbo.OKUL_Veli as v on v.OgrenciId=o.OgrenciId

select o.OgrenciId, o.AdiSoyadi, ob.KimlikNo, ob.DogumTarihi from OKUL_Ogrenciler as o LEFT JOIN OKUL_OzlukBilgileri as ob on ob.OgrenciId = o.OgrenciId

select o.OgrenciId, o.AdiSoyadi, ob.KimlikNo, ob.DogumTarihi from OKUL_Ogrenciler as o RIGHT JOIN OKUL_OzlukBilgileri as ob on ob.OgrenciId = o.OgrenciId

select o.AdiSoyadi, ob.KimlikNo, ob.DogumTarihi, v.VeliTipi, v.AdiSoyadi from dbo.OKUL_Ogrenciler as o inner join dbo.OKUL_Veli as v on v.OgrenciId = o.OgrenciId
inner join dbo.OKUL_OzlukBilgileri as ob on o.OgrenciId=o.OgrenciId
where v.VeliTipi='ANNE' 
order by o.AdiSoyadi








select o.AdiSoyadi, d.DersAdi 
from dbo.OKUL_OgretmenDers as od
inner join dbo.OKUL_Ogretmen as o 
on o.OgretmenId = od.OgretmenId
inner join dbo.Okul_Dersler as d 
on d.DersId=od.DersId