SELECT
            spk.*,
            jenis_spk.nama AS jenis_spk,
            pengesub.nama, pengesub.alamat,
            detail_spk.*
        FROM spk
            JOIN pengesub USING (pengesub_id)
            JOIN jenis_spk USING (jenis_spk_id)
            JOIN (
                SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi, spk_id
                FROM detail_spk
                GROUP BY spk_id
            ) AS detail_spk