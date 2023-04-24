/*================================== SELECT-REGEXP_LIKE ==================================
 Daha karmasik pattern ile sorgulama islemi icin REGEXP_LIKE kullanilabilir.
  -- 'c' => case-sensitive demektir
  -- 'i' => case-insensitive demektir ve default case-insensitive aktiftir.
  
-----Syntax-----

 SELECT sutun1,sutun2,...
 FROM tablo_adi
 WHERE REGEXP_LIKE(sutun_adi, 'pattern[]','c'[]);

=========================================================================================*/
-- NOT: VEYA islemi icin | karakteri kullanilir.
-- NOT: Baslangici gostermek icin ^ karakteri kullanilir.

-- ****************** Kelimeler Tablosundan ******************
-- Q1 : 'ho' veya 'hi' ile baslayan kelimeleri case-sensitive'e 
-- dikkat etmeksizin listele

select kelime
from kelimeler
where regexp_like (kelime, '^ho|^hi');

-- NOT: Bitisi gostermek icin $ karakteri kullanilir.

-- Q2 : Sonu 't' veya 'm' ile bitenleri case-sensitive'e 
-- dikkat etmeksizin listele
select kelime
from kelimeler
where regexp_like (kelimei 't$|m$);
select 




/*--------------------------------------------------------------------------------------
1) Bir firmalar tablosu olusturun icinde id,
isim ve iletisim_isim field'lari olsun. 
---------------------------------------------------------------------------------------*/
CREATE TABLE firmalar
(
id INT,
isim VARCHAR(10),
iletisim_isim VARCHAR(15)
);
/*--------------------------------------------------------------------------------------
2) Icine 3 kayit ekleyin :
(1, 'ACB', 'Ali Can'), 
(2, 'RDB', 'Veli Gul'), 
(3, 'KMN', 'Ayse Gulmez').
---------------------------------------------------------------------------------------*/
INSERT INTO firmalar VALUES 
(1, 'ACB', 'Ali Can'), 
(2, 'RDB', 'Veli Gul'), 
(3, 'KMN', 'Ayse Gulmez');

/*====================================== PRIMARY KEY ==============================================
1) Primary Key bir record'u tanimlayan bir field veya birden fazla field'in kombinasyonudur. 
2) Primary Key Unique'dir. 
3) Bir tabloda en fazla bir Primary Key olabilir .
4) Primary Key field'inda hic bir data NULL olamaz.
-----Syntax-----
 "id" field'ini "primary key" yapmak icin 2 yol var.
1) Data Type'dan sonra "PRIMARY KEY" yazarak.
 
 CREATE TABLE students_table 
(
 id int PRIMARY KEY,
 name varchar(50) NOT NULL,
 grade int,
 adres varchar(100),
 last_update date 
);
2) CONSTRAINT Keyword Kullanilarak Primary Key Tanimlanabilir; 
"CONSTRAINT constraintName PRIMARY KEY(column1, column2, ... column_n)" 
CREATE TABLE students 
(
id int,
name varchar(50) NOT NULL,
grade int,
address varchar(100),
last_modification date, 
CONSTRAINT id_pk PRIMARY KEY (id) 
);
================================================================================================*/
/*---------------------------------------------------------------------
"sehirler" isimli bir Table olusturun. 
Tabloda "alan_kodu", "isim", "nufus" field'lari olsun. 
Isim field'i bos birakilamasin. 
1.Yontemi kullanarak "alan_kodu" field'ini "Primary Key" yapin
-----------------------------------------------------------------------*/
/*------------------------------------------------------------------------------
"ogretmenler" isimli bir Table olusturun. 
Tabloda "id", "isim", "brans", "cinsiyet" field'lari olsun. 
Id field'i tekrarli deger kabul etmesin. 
2.Yontemi kullanarak "id ve isim" field'lerinin birlesimini "primary key" yapin 
-------------------------------------------------------------------------------*/
/*------------------------------------------------------------------------------
"universite_ogrenci_bilgi_sistemi" isimli bir Table olusturun. 
Tabloda "giris yili", "giris siralamasi", "isim", "bolum" field'lari olsun. 
isim field'i null deger kabul etmesin. 
2.Yontemi kullanarak "giris yili ve giris siralamasi" field'lerinin birlesimini
 "primary key" yapin 
-------------------------------------------------------------------------------*/
/*


BU ALana 
dünü yaz
unutma




*/
/*====================================== FOREIGN KEY ==============================================
=> Foreign Key iki tablo arasinda Relation olusturmak icin kullanilir. 
=> Foreign Key baska bir tablonun Primary Key'ine baglidir. 
=> Referenced table (baglanilan tablo, Primary Key'in oldugu Tablo) parent table olarak adlandirilir. 
   Foreign Key'in oldugu tablo ise child table olarak adlandirilir. 
=> Bir Tabloda birden fazla Foreign Key olabilir. 
=> Foreign Key NULL degeri alabilir. 
=> Foreign Key duplicate olabilir. 
Note 1: "Parent Table"da olmayan bir id'ye sahip datayi "Child Table"'a ekleyemezsiniz .
Note 2: Child Table'i silmeden Parent Table'i silemezsiniz. Once "Child Table" silinir, sonra "Parent Table" silinir.
        
-----Syntax-----
CONSTRAINT constraintName FOREIGN KEY(table_name_id) 
REFERENCES parent_table (parent_table_field_name) 
CREATE TABLE table_name
(
id char(10),
name char(10),
CONSTRAINT constraint_name 
FOREIGN KEY (table_name_id) 
REFERENCES parent_table (parent_table_field_name) 
);
        
==================================================================================================*/

create table tedarşkci(
tedarikci_id int,
teadrikci_ismi varchar(10),
iletisim_isim varchar (20),
constraint id_pk primary key (tadarikci_id)
);

create table urunler(
ted_id int,
urun_id char (13),
constraint urunler_fk foreign  key (ted_id)
references tedarikci(tedarikci_id)
);



/*------------------------------------------------------------------------
"bebeler" isimli bir tablo olusturun. 
Tabloda "id", "isim", "iletisim" field'lari olsun 
ve "id" yi Primary Key yapin.
 "notlar" isminde baska bir tablo olusturun "bebe_id" ve "puan"
 field'lari olsun ve "bebe_id" yi Foreign Key yapin.
---------------------------------------------------------------------------*/

create table bebeler(
id int ,
isim varchar(25),
iletişim varchar(20),
constraint bebeler_pk primary key (id)
);

create table notlar(
bebe_id int ,
puan int,
constraint notlar_fk foreign key (bebe_id)
references bebeler (id)
);

/*-------------------------------------------------------------------------
c) urun id'si 1001 olan urun ismini, 
id'si 102 olan sirketin ismi ile degistirin.
-------------------------------------------------------------------------*/














