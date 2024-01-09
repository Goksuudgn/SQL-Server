--İLİŞKİ TÜRLERİ

-----------1. BİREBİR İLİŞKİ
--İlişkili tablolarda bir biriyle ilişkili maksimum birer satır olur 

-- Diyelim ki öğrenciler tablosu var
--Burada ÖğrenciID, AdıSoyadı, Telefon, Email kolonları var 

-- Bir de 2. olarak Öğrenci özlük Bilgileri tablosu var
-- Burada da ÖzlükID , Öğrenci ID var , TCKimlik No, Doğum Tarihi ,Doğum Yeri, AnneAdı,BabaAdı
--Her öğrencinin illaki bir tane özlük bilgisi olur burada kaydedilen ler ilk tablodaki öğrenci ıd ile birebir ilişkiye sahiptir



-----------2.BİRE ÇOK İLİŞKİ (En çok kullanılan)
--ilişkili tablolardan birisindeki tek satır ile diğerindeki birden fazla satır ilişkilidir
--Diyelim ki yukarıdaki tablolara ek 3. tablo Veliler tablosu olsun
-- Veli ID , OgrenciId, VeliTipi, AdıSoyadı, İş adresi, Telefon kolonları olsun buradaki de ÖğrenciId de yukardaki tablolarla Çok ilişkisi vardır 



-----------3.ÇOKA ÇOK İLİŞKİ
--Bir birleriyle birden fazla satır ile ilişkilidirler

--Elimizde öğretmenler tablosu olsun
--ÖğretmenID, AsıSoyadı, Branş
-- Bir de Dersler tablosu olsun 
--DersId , DersAdı
--Bir öğretmen birden fazla derse girebilir O yüzden 3. tablo oluşturacağız
--Buda ÖğretmenDers tablosu olsun 
--Bu tabloya Id, ÖğretmenId, DersId kolonları eklenmelidir