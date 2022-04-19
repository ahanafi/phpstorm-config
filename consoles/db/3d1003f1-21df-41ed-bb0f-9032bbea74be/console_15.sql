SELECT SUM(qty) AS total_qty
FROM spk
JOIN detail_spk USING (spk_id)
WHERE jenis_spk_id = 2
AND nomor_pi = '002/PI-FR/V/20'