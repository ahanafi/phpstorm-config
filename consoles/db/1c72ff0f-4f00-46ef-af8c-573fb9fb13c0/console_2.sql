SELECT COUNT(*) AS total, MONTH(tanggal) AS index_bulan
FROM `presensi`
WHERE YEAR(tanggal) = '2021'
GROUP BY year(tanggal), `index_bulan`
-- ORDER BY `index_bulan`