use foy_3;

SELECT c.Ad, c.Soyad, c.Maas
FROM calisanlar c
INNER JOIN (
    SELECT calisan_birim_id, MAX(Maas) AS MaxMaas
    FROM calisanlar
    GROUP BY calisan_birim_id
) max_maaslar ON c.calisan_birim_id = max_maaslar.calisan_birim_id AND c.Maas = max_maaslar.MaxMaas;

