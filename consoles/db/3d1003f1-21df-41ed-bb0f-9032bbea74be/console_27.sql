# SELECT spk.*, jenis_spk.nama AS jenis_spk, pengesub.*, detail_spk.*
# FROM spk
# 	LEFT JOIN pengesub USING (pengesub_id)
# 	JOIN jenis_spk USING (jenis_spk_id)
# 	JOIN (
# 		SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi, spk_id
# 			FROM detail_spk
# 		GROUP BY spk_id
# 		) AS detail_spk USING (spk_id)
# 	WHERE tanggal_spk BETWEEN '2020-01-01' AND '2021-04-30'

SELECT spk.*, jenis_spk.nama AS jenis_spk, pengesub.*, detail_spk.*
FROM spk
    LEFT JOIN pengesub USING (pengesub_id)
    JOIN jenis_spk USING (jenis_spk_id)
    JOIN (
        SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi, spk_id
        FROM detail_spk
        GROUP BY spk_id
        ) AS detail_spk USING (spk_id)
WHERE tanggal_spk BETWEEN '2020-01-01' AND '2021-04-30'
  AND nomor_pi LIKE '%005/PI-FR/VI/20%'