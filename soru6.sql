use foy_3;

SELECT u.unvan_calisan, COUNT(c.calisan_id) AS CalisanSayisi
FROM unvan u
LEFT JOIN calisanlar c ON u.unvan_calisan_id = c.calisan_birim_id
GROUP BY u.unvan_calisan
HAVING COUNT(c.calisan_id) > 1;
