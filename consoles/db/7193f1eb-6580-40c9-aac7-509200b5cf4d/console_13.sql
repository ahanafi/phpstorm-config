SELECT * FROM (
    SELECT donasi.*,
       akun_penerimaan.nama_akun AS akun,
       akun_penerimaan.kode_akun,
       donatur.nama AS donatur
    FROM donasi
        JOIN akun_penerimaan USING (id_akun_penerimaan)
        JOIN donatur USING (id_donatur)
        JOIN pengguna USING (id_pengguna)
    WHERE jenis_donasi = 'TUNAI' AND id_pengguna = '1'
) LEFT JOIN pengguna ON pengguna.id_pengguna = id_verifikator;