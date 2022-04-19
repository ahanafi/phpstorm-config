SELECT COUNT(*) AS total, MONTH(tanggal) AS bulan
FROM presensi
GROUP BY bulan
ORDER BY bulan;
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*) AS total, MONTH(tanggal) AS index_bulan
FROM `presensi`
WHERE YEAR(tanggal) = '2021'
GROUP BY `index_bulan`
ORDER BY `index_bulan`;
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*) AS total, MONTH(tanggal) AS index_bulan
FROM `presensi`
WHERE YEAR(tanggal) = '2021'
GROUP BY `index_bulan` AND year(tanggal)
ORDER BY `index_bulan`;
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*) AS total, MONTH(tanggal) AS index_bulan
FROM `presensi`
WHERE YEAR(tanggal) = '2021'
GROUP BY `index_bulan`, year(tanggal)
ORDER BY `index_bulan`;
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*) AS total, MONTH(tanggal) AS index_bulan
FROM `presensi`
WHERE YEAR(tanggal) = '2021'
GROUP BY year(tanggal), `index_bulan`
ORDER BY `index_bulan`;
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*) AS total, MONTH(tanggal) AS index_bulan
FROM `presensi`
WHERE YEAR(tanggal) = '2021'
GROUP BY year(tanggal), `index_bulan`;