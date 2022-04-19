SELECT COUNT(*) AS total, MONTH(tanggal) AS bulan
FROM presensi
GROUP BY bulan
ORDER BY bulan