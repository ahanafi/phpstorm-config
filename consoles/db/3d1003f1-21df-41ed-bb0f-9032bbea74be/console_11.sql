SELECT transaksi.*, kategori.kategori, sub_kategori.sub_kategori
    FROM transaksi
    JOIN kategori ON transaksi_kategori = kategori_id
    LEFT JOIN sub_kategori ON transaksi_sub_kategori = sub_kategori_id
WHERE `transaksi_tanggal` = '2020-12-01' ORDER BY transaksi_id   ASC   LIMIT 0 ,10