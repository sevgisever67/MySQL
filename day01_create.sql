-- Yorum satiri 
-- 2. Yorum satiri
/*
bu arada
kaç satir yazarsan yaz hepsi yorum olarak görünür.
*/
use sys;
/*========================================
    TABLO OLUSTURMA 1 (CRUD - Create)
========================================*/
-- id, isim, not ortalamasi, adres ve son degistirme tarihi
-- fieldlari iceren bir ogrenciler table'i olusturunuz.
CREATE TABLE ogrenciler(
id int,
isim varchar (25),
not_ortalaması double,
adres varchar (50),
son__değiştirme date
);
select * from ogrenciler;
/*------------------------------------------------------------
Q1: "tedarikciler" isminde bir tablo olusturun.
   "tedarikci_id", "tedarikci_ismi", "tedarikci_adres" ve 
   "ulasim_tarihi" field'lari olsun.
-------------------------------------------------------------*/
create table tedarikçiler(
tedarikçi_id int,
tedarikçi_ismi varchar(25),
tedarikçi_adres varchar (50),
ulaşım_tarihi date
);
select * from tedarikçiler;
/*========================================
    VAROLAN TABLODAN TABLO OLUSTURMA  
========================================
------------------Syntax------------------
CREATE TABLE table_name
AS
SELECT field1,field2
FROM other_table_name
========================================*/
-- ogrenciler1 tablosundan "isim" ve "not_ortalamasi" field'larini
-- alarak ogrenci_derece isimli yeni bir tablo olusturun.
create table ogrenciDerece
as 
select isim, not_ortalaması
from ogrenciler;
select * from ogrenciDerece;
/*--------------------------------------------------------
Q2: "tedarikciler" table'indan "tedarikci_ismi" ve
 "ulasim_tarihi" field'lari olan "tedarikciler_son" 
 isimli yeni bir table olusturun.
---------------------------------------------------------*/
create table tedarikçiler_son
as
select tedarikçi_ismi, ulaşım_tarihi
from tedarikçiler;











