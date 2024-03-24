create database school_library;

use school_library;
create table uyeler(
uyeNo int not null Primary Key identity(1,1),
Adi nvarchar(60) not null,
Soyadi nvarchar(60) not null,
cinsiyet char(2) not null,
email nvarchar(100) not null,
telefon nvarchar(25) not null,
);

use school_library;
create table adresler(
sehir int not null Primary Key identity(1,1),
ilce nvarchar(60) not null,
mahalle nvarchar(150) not null,
cadde nvarchar(150) not null,
binaNo int,
);

use school_library;
kutuphaneNo int not null Primary Key identity(1,1),
kutuphaneismi nvarchar(200),
aciklama nvarchar(500),
adresNo int constraint FK_uyeler_adresler_kutuphane
FOREIGN KEY(adresNo) references adresler(adresNo)
);
select * from kutuphane

ALTER TABLE UYELER ADD adresNo int
constraint FK_uyeler_adres
FOREIGN KEY (adresNo)
references ADRESLER (adresNo);

create table emanet(
emanetNo int not null Primary Key Ýdentity(1,1),
emanetTarihi datetime,
teslimTarihi datetime,
uyeNo int constraint FK_kutuphane_emanet
FOREIGN KEY(uyeNo) references kutuphane(kutuphaneNo),
ISBN nvarchar(60) constraint FK_kitap_emanet
FOREIGN KEY(ISBN) references kitaplar(ISBN)
);
use school_library;
create table Kitaplar(
ISBN int not null Primary Key Ýdentity(1,1),
kitapAdi nvarchar (150),
sayfaSayisi int,
yayinTarihi datetime
;



