SELECT DISTINCT(jenis_spk_id), SUM(qty) AS total_qty
FROM detail_spk
JOIN spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20';