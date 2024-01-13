select* from OKUL_Ogrenciler

insert into [dbo].[OKUL_Ogrenciler](AdiSoyadi, Telefon, Email, NotOrtalamasi) values ('Kaan A' , 2553, 534 , 98.56)

select* from OKUL_Ogrenciler
select * from OKUL_OzlukBilgileri
select* from OKUL_Veli
select*from Okul_Dersler
select *from OKUL_Ogretmen
select*from OKUL_OgretmenDers

insert into OKUL_OzlukBilgileri( OgrenciId, KimlikNo, DogumTarihi) values (6 , '54545','06.06.06')

delete from OKUL_OzlukBilgileri where OzlukId=1 



insert into OKUL_Veli values(3, 'ANNE', 'Veli 1-3',544598465, 'Ýstanbul')

insert into Okul_Dersler values ('Matematik')
insert into Okul_Dersler values ('Türkçe')
insert into Okul_Dersler values ('Geometri')

insert into OKUL_Ogretmen values ('Öðretmen 3' , 'Fen bilgisi')

insert into OKUL_OgretmenDers values (1,1)
insert into OKUL_OgretmenDers values (1,3)

insert into OKUL_OgretmenDers values (2,2)
insert into OKUL_OgretmenDers values (2,3)

insert into OKUL_OgretmenDers values (3,1)
insert into OKUL_OgretmenDers values (3,2)
insert into OKUL_OgretmenDers values (3,3)
