SELECT SUM(jumlah) AS jumlah, MONTH(tanggal) AS bulan
FROM pembayaran_piutang
JOIN (
    SELECT DISTINCT id_sales, id_pelanggan FROM nota_penjualan
    ) AS nota
ON nota.id_pelanggan = pembayaran_piutang.id_pelanggan
WHERE nota.id_sales = 2
GROUP BY bulan