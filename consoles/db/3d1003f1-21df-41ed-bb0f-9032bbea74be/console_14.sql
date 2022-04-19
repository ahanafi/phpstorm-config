SELECT
    SUM(qty) AS total_qty_spk , nomor_pi
FROM spk
JOIN detail_spk USING(spk_id)
WHERE jenis_spk_id = 1
GROUP BY nomor_pi