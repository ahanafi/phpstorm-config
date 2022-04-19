SELECT SUM(jumlah) AS pembayaran, MONTH(tanggal) AS bulan
FROM pembayaran_piutang
GROUP BY bulan;
