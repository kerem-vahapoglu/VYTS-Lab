use foy_3;

SELECT c.Ad, c.Soyad, u.unvan_calisan
FROM calisanlar c
JOIN unvan u ON c.calisan_id= u.unvan_calisan_id
WHERE u.unvan_calisan IN ('Yönetici', 'Müdür');
