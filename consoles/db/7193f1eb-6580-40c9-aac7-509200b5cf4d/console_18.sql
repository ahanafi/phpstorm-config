SELECT donasi.*, pengguna.id_pengguna, pengguna.id_kantor_cabang,
				donatur.nama AS donatur, akun_penerimaan.nama_akun AS akun
			FROM donasi
			JOIN pengguna USING (id_pengguna)
			JOIN donatur USING (id_donatur)
			JOIN akun_penerimaan USING (id_akun_penerimaan)
			WHERE donasi.status = 0 AND id_kantor_cabang = 1