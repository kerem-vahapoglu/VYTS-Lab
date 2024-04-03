CREATE TABLE birimler (
    birim_id INT PRIMARY KEY,
    birim_ad NVARCHAR(50) ,
);

CREATE TABLE calisanlar (
    calisan_id INT PRIMARY KEY,
    ad CHAR(25),
    soyad CHAR(25),
	maas INT,
	katilmaTarihi DATETIME,
	calisan_birim_id INT,
    FOREIGN KEY (calisan_birim_id) REFERENCES birimler(birim_id)
);
	
CREATE TABLE unvan (
	unvan_calisan_id INT ,
	unvan_calisan CHAR(25),
	unvan_tarih DATETIME,
	FOREIGN KEY (unvan_calisan_id) REFERENCES calisanlar(calisan_id)
);
	
CREATE TABLE ikramiye (
	ikramiye_calisan_id INT ,
	ikramiye_ucret INT,
	ikramiye_tarih DATETIME,
	FOREIGN KEY (ikramiye_calisan_id) REFERENCES calisanlar(calisan_id)
);