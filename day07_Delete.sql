/*================================== DELETE ============================================
DELETE FROM table_name komutu tablodaki tum recordlari siler.
Eger tum kayitlar silindikten sonra tabloyu gormek isterseniz size sadece bos bir tablo
gosterir. 
DELETE komutu sadece datalari siler, tabloyu silmez.
=======================================================================================*/
SELECT * FROM mart_satislar;
DELETE FROM mart_satislar;
/*===============================================================================================
-- DELETE FROM tablo_adi;  Tablonun tum icerigini siler.
-- Bu komut bir DML komutudur. Dolayisiyla devaminda WHERE gibi cumlecikler
-- kullanilabilir.
    
    -- DELETE FROM tablo_adi
    -- WHERE field = veri;
    
--    DELETE FROM ogrenciler;     -- Tum verileri sil.
--    SAVEPOINT ABC;    -- Verilen konuma kodlari kaydeder.
--    ROLLBACK TO ABC;  -- Silinen Verileri geri getir.
​
-- Bilgileri geri getirirken sikinti yasamamak icin ayarlar sql execution auto commit tiki kaldir
​
==================================================================================================*/ 

CREATE TABLE cucuklar
(
id char(3),
isim varchar(50),
veli_isim varchar(50),
yazili_notu int,
CONSTRAINT cocuklar_pk
PRIMARY KEY (id)
);

INSERT INTO cucuklar VALUES(123, 'Ali Can', 'Hasan',75); 
INSERT INTO cucuklar VALUES(124, 'Merve Gul', 'Ayse',85); 
INSERT INTO cucuklar VALUES(125, 'Kemal Yasa', 'Ali',85);
SELECT * FROM cucuklar;

-- Veli Ismi Ali ya da Ayse olan kaydi siliniz
DELETE FROM cucuklar
WHERE veli_isim = 'Ali' OR veli_isim = 'Ayse';
DELETE FROM cucuklar
WHERE veli_isim IN ('Ali','Ayse');

-- Yazili notu 84'ten buyuk olan cocuklari silin 
DELETE FROM cucuklar
WHERE yazili_notu > 84;

-- Yazili notu 85'ten farkli olan cocuklari silin 
DELETE FROM cucuklar
WHERE yazili_notu != 85;
DELETE FROM cucuklar
WHERE NOT yazili_notu = 85;
DELETE FROM cucuklar
WHERE yazili_notu <> 85;
-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
CREATE TABLE cocuk
    (
        id CHAR(3),
        isim VARCHAR(50),
        veli_isim VARCHAR(50),
        yazili_notu int       
    );
  
    INSERT INTO cocuk VALUES(123, 'Ali Can', 'Hasan',75);
    INSERT INTO cocuk VALUES(124, 'Merve Gul', 'Ayse',85);
	INSERT INTO cocuk VALUES(125, 'Kemal Yasa', 'Hasan',85);
    INSERT INTO cocuk VALUES(126, 'Nesibe Yilmaz', 'Ayse',95);
	INSERT INTO cocuk VALUES(127, 'Mustafa Bak', 'Can',99);
SELECT * FROM cocuk;
SAVEPOINT cicek; -- Bu satirda olusturdugumuz yeni bir alana bilgileri kaydediyoruz
-- Id'si 124'ten buyuk olan kayitlari silin : 
DELETE FROM cocuk
WHERE id>124;
ROLLBACK TO cicek; -- Bu satirda ise sildigimiz verileri kayettigimiz alandan geri cagirdik

/* ============================= DELETE - TRUNCATE - DROP ================================   
  
  => TRUNCATE TABLE komutu tablodaki tum datalari kalici olarak siler
  => Truncate ve Delete komutlarinin ikisi de bir tabloda bulunan recordlari silmek icin kullanilir.
  => Iki komut da sadece belirtilen tablodaki kayitlari siler.
  => En belirgin farki ise Delete komutu ile belirli bir araligi silebilirken,
  => Truncate komutu tablodaki tum verileri siler.
  
  1-) TRUNCATE komutu DELETE komutu gibi bir tablodaki verilerin tamamini siler.
    Ancak, secmeli silme yapamaz. Cunku Truncate komutu DML degil DDL komutudur.*/ 
   
	   TRUNCATE TABLE cocuklar; -- dogru yazim
       DROP TABLE puanlar;
       DELETE FROM cocuklar
       WHERE id>125;
  
       SELECT * FROM cocuklar;
       SELECT * FROM puanlar;
       
   /* 2-) DELETE komutu beraberinde WHERE cumlecigi kullanilabilir. TRUNCATE ile 
    kullanilmaz.
    
        TRUNCATE TABLE ogrenciler
        WHERE veli_isim='Hasan';  .....yanlis yazim
        
-- TRUNCATE komutu tablo yapisini degistirmeden, 
-- tablo icinde yer alan tum verileri tek komutla silmenizi saglar.
        
    3-) Delete komutu ile silinen veriler ROLLBACK Komutu ile kolaylikla geri 
    alinabilir.
    
    4-) Truncate ile silinen veriler geri alinmasi daha zordur. Ancak
    Transaction yontemi ile geri alinmasi mumkun olabilir.
    
    5-) DROP komutu da bir DDL komutudur. Ancak DROP veriler ile birlikte tabloyu da 
    siler. 
    
    -- Tablodaki kayitlari silmek ile tabloyu silmek farkli islemlerdir.
	-- Silme komutlari da iki basamaklidir, biz genelde geri getirilebilecek sekilde sileriz. 
	-- Ancak bazen guvenlik gibi sebeplerle geri getirilmeyecek sekilde silinmesi istenebilir.
​
==============================================================================*/
INSERT INTO cocuklar VALUES(123, 'Ali Can', 'Hasan',75);
INSERT INTO cocuklar VALUES(124, 'Merve Gul', 'Ayse',85);
INSERT INTO cocuklar VALUES(125, 'Kemal Yasa', 'Hasan',85);
INSERT INTO cocuklar VALUES(126, 'Nesibe Yilmaz', 'Ayse',95);
INSERT INTO cocuklar VALUES(127, 'Mustafa Bak', 'Can',99);    
SELECT * FROM cocuklar;
SELECT * FROM cocuk;
SAVEPOINT kiraz;
DELETE FROM cocuklar;
DELETE FROM cocuk;
ROLLBACK TO kiraz;

/*-------------------------------------------------------------------------
1) Cocuklar tablosu olusturun.
 Icinde id,isim,veli_isim ve grade field'lari olsun. 
 Id field'i Primary Key olsun.
 --------------------------------------------------------------------------*/
 
CREATE TABLE lise(
id INT,
isim VARCHAR(20),
veli_isim VARCHAR(10),
grade DOUBLE,
CONSTRAINT id_pk PRIMARY KEY (id)
);
select * from lise;
/*-------------------------------------------------------------------------
 2)  Kayitlari tabloya ekleyin.
 (123, 'Ali Can', 'Hasan',75), 
 (124, 'Merve Gul', 'Ayse',85), 
 (125, 'Kemal Yasa', 'Hasan',85),
 (126, 'Rumeysa Aydin', 'Zeynep',85);
 (127, 'Oguz Karaca', 'Tuncay',85);
 (128, 'Resul Can', 'Tugay',85);
 (129, 'Tugay Kala', 'Osman',45);
 --------------------------------------------------------------------------*/
 
INSERT INTO lise VALUES(123, 'Ali Can', 'Hasan',75);
INSERT INTO lise VALUES(124, 'Merve Gul', 'Ayse',85);
INSERT INTO lise VALUES(125, 'Kemal Yasa', 'Hasan',85);
INSERT INTO lise VALUES(126, 'Rumeysa Aydin', 'Zeynep',85);
INSERT INTO lise VALUES(127, 'Oguz Karaca', 'Tuncay',85);
INSERT INTO lise VALUES(128, 'Resul Can', 'Tugay',85);
INSERT INTO lise VALUES(129, 'Tugay Kala', 'Osman',45);

/*-------------------------------------------------------------------------
3)deneme_puani tablosu olusturun. 
ogrenci_id, ders_adi, yazili_notu field'lari olsun, 
ogrenci_id field'i Foreign Key olsun 
--------------------------------------------------------------------------*/

CREATE TABLE deneme_puani(
ogrenci_id INT,
ders_adi VARCHAR(10),
yazili_notu DOUBLE,
CONSTRAINT deneme_puani_fk 
FOREIGN KEY (ogrenci_id) 
REFERENCES lise (id)
);
select * from deneme_puani;
/*-------------------------------------------------------------------------
4) deneme_puani tablosuna kayitlari ekleyin
 ('123','kimya',75), 
 ('124','fizik',65),
 ('125','tarih',90),
 ('126','kimya',87),
 ('127','tarih',69),
 ('128','kimya',93),
 ('129','fizik',25)
--------------------------------------------------------------------------*/

INSERT INTO deneme_puani VALUES ('123','kimya',75); 
INSERT INTO deneme_puani VALUES ('124','fizik',65); 
INSERT INTO deneme_puani VALUES ('125','tarih',90); 
INSERT INTO deneme_puani VALUES ('126','kimya',87); 
INSERT INTO deneme_puani VALUES ('127','tarih',69); 
INSERT INTO deneme_puani VALUES ('128','kimya',93); 
INSERT INTO deneme_puani VALUES ('129','fizik',25);

/*-------------------------------------------------------------------------
1) Ismi Resul Can olan ogrencinin notunu notlar tablosundaki 
ogrenci id'si 129 olan yazili notu ile update edin. 
--------------------------------------------------------------------------*/
update lise
SET grade = (SELECT yazili_notu 
			FROM deneme_puani
			WHERE ogrenci_id=129)
WHERE  isim='Resul Can';

/*-------------------------------------------------------------------------
2) Ders adi fizik olan kayitlarin yazili notunu Oguz Karaca'nin grade'i
ile update edin. 
--------------------------------------------------------------------------*/

update deneme_puani
set yazili_notu =(select grade
				from lise
                where isim='Oguz Karaca')
where ders_adi='fizik';

select * from deneme_puani;

/*-------------------------------------------------------------------------
3) Ali Can'in grade'ini, 124 ogrenci_id'li yazili_notu ile guncelleyin.
--------------------------------------------------------------------------*/
update lise
set grade =(select yazili_notu
		  from deneme_puani
          where ogrenci_id=124
          )
where isim='Ali Can';
select * from lise;

/*-------------------------------------------------------------------------
4) Ders adi Kimya olan yazili notlarini Rumeysa Aydin'in 
grade'i ile guncelleyin.
--------------------------------------------------------------------------*/
update deneme_puani
set yazili_notu= (select grade
				from lise
                where isim ='Rumeysa Aydin'
                   )
where ders_adi='kimya';
/*-------------------------------------------------------------------------
5) Ders adi tarih olan yazili notlarini Resul Can'in 
grade'i ile guncelleyin.
-------------------------------------------------------------------------*/
update deneme_puani
set yazili_notu =(select grade
                  from lise
                  where isim='Resul Can'
                  )
where ders_adi='tarih';

/*-------------------------------------------------------------------------
6) Ders adi fizik olan yazili notlarini veli adi Tuncay olan 
grade ile guncelleyin.
--------------------------------------------------------------------------*/
update deneme_puani
set yazili_notu=(select grade
                  from lise
                  where veli_isim='Tuncay')
where ders_adi='fizik' ;               
select * from deneme_puani;