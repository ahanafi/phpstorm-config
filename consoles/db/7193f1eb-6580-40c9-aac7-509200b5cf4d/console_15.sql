SELECT
       jumlah
       -- nama_kantor, kantor_cabang.id_kantor_cabang
FROM kantor_cabang
    LEFT JOIN (
        SELECT
               COUNT(*) AS jumlah,
               id_pengguna,
               id_kantor_cabang
        FROM donasi
        JOIN pengguna USING (id_pengguna)
        GROUP BY id_pengguna
    ) AS myTable USING (id_kantor_cabang)
GROUP BY id_pengguna