use foy_3;

SELECT c.Ad, c.Soyad, b.birim_ad, u.unvan_calisan, ik.ikramiye_ucret AS IkramiyeUcreti
FROM calisanlar c
JOIN birimler b ON c.calisan_birim_id = b.birim_id
JOIN unvan u ON c.calisan_birim_id = u.unvan_calisan_id
JOIN ikramiye ik ON c.calisan_birim_id = ik.ikramiye_calisan_id


