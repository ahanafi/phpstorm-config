SELECT transaksi.*, kategori, sub_kategori FROM transaksi JOIN kategori ON transaksi_kategori = kategori_id LEFT JOIN sub_kategori ON transaksi_sub_kategori = sub_kategori_id WHERE transaksi_tanggal BETWEEN '2021/03/28' AND '2021/03/31'