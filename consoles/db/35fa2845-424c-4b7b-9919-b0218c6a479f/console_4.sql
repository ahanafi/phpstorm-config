SELECT transaksi_tanggal, transaksi_jenis, transaksi_kategori, transaksi_departemen, transaksi_nominal, transaksi_keterangan, departemen_id, departemen_nama, kategori_id, kategori FROM transaksi JOIN kategori ON kategori.kategori_id = transaksi_kategori LEFT JOIN departemen ON departemen.departemen_id = transaksi_departemen WHERE DATE(transaksi_tanggal) BETWEEN '2021/03/01' AND '2021/03/31'