SELECT DISTINCT(spk_id), spk.*,
        pengesub.nama, pengesub.alamat,
        jenis_spk.nama AS jenis_spk
    FROM detail_spk
    JOIN spk USING (spk_id)
    LEFT JOIN pengesub USING (pengesub_id)
    JOIN jenis_spk USING (jenis_spk_id)
    WHERE nomor_pi = '005/PI-FR/VI/20';