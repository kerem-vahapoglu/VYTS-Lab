use foy_3;

select c.ad, c.soyad, c.maas from calisanlar c inner join birimler d on c.calisan_birim_id = d.birim_id where birim_ad= 'Yazýlým' OR birim_ad = 'Donaným';