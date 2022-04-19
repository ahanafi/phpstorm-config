SELECT SUM(qty) as total_qty_spk
FROM detail_spk
    JOIN spk USING (spk_id)
WHERE nomor_pi = '005/PI-FR/VI/20' AND jenis_spk_id = '1'
