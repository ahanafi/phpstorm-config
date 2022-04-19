SELECT SUM(jumlah) AS jumlah, MONTH(tanggal) AS bulan FROM pembayaran_hutang
GROUP BY bulan;

# SELECT SUM(total) AS total_penjualan, MONTH(tanggal) AS bulan FROM nota_penjualan
# WHERE YEAR(tanggal) = '2020'
# GROUP BY bulan;