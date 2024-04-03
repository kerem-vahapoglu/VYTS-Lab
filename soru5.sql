use foy_3;

select b.birim_ad, count(c.calisan_id) as calisanSayisi from birimler b left join calisanlar c on b.birim_id = c.calisan_birim_id group by b.birim_ad;