SELECT
               COUNT(*) AS jumlah,
               id_pengguna,
               id_kantor_cabang
        FROM donasi
        JOIN pengguna USING (id_pengguna)
        GROUP BY id_pengguna