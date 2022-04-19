SELECT * FROM rekening_koran WHERE id_bank = '1' AND (tanggal BETWEEN '2020-07-01' AND '2020-11-01');
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM rekening_koran WHERE id_bank = '1' AND (tanggal BETWEEN '2020-07-01' AND '2020-07-02');
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) FROM pembayaran_hutang WHERE month(tanggal) = 7;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) FROM pembayaran_hutang WHERE MONTH(tanggal) = 8;
;-- -. . -..- - / . -. - .-. -.--
07;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) FROM pembayaran_hutang WHERE MONTH(tanggal) = '07';
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) FROM pembayaran_hutang WHERE MONTH(tanggal) = '7';
;-- -. . -..- - / . -. - .-. -.--
SELECT (jumlah), MONTH(tanggal) FROM pembayaran_hutang;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) FROM pembayaran_piutang WHERE MONTH(tanggal) = '7';
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(total) FROM nota_penjualan where MONTH(tanggal) = '7';
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(total) FROM nota_penjualan where MONTH(tanggal) = '8';
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(total) FROM nota_penjualan where MONTH(tanggal) = '10';
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(total) FROM nota_penjualan;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(total) AS total_penjualan, MONTH(tanggal) AS bulan FROM nota_penjualan
GROUP BY bulan;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(total) AS total_penjualan, MONTH(tanggal) AS bulan FROM nota_penjualan
WHERE YEAR(tanggal) = '2020'
GROUP BY bulan;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) FROM pembayaran_hutang;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah), MONTH(tanggal) FROM pembayaran_hutang;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS jumlah, MONTH(tanggal) AS bulan FROM pembayaran_hutang
GROUP BY bulan;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(potongan_retur) from detail_pembayaran_hutang;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(total) FROM nota_pembelian;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(total) AS total, MONTH(tanggal) AS bulan FROM nota_pembelian
group by bulan;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(total) AS total FROM nota_pembelian;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(total) FROM nota_pembelian
WHERE YEAR(tanggal) < 2020;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(total_hpp) FROM nota_pembelian
WHERE YEAR(tanggal) < 2020;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(total) AS total, MONTH(tanggal) FROM nota_pembelian;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(total) AS total, MONTH(tanggal) as bulan FROM nota_pembelian
group by bulan;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(total_hpp) AS total, MONTH(tanggal) as bulan FROM nota_pembelian
group by bulan;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(total_hpp) AS total, MONTH(tanggal) as bulan FROM nota_pembelian
where year(tanggal) = 2020
group by bulan;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(total_hpp) AS total FROM nota_pembelian;
;-- -. . -..- - / . -. - .-. -.--
select sum(potongan_retur) as retur, month(tanggal) as bulan from detail_pembayaran_hutang
group by bulan;
;-- -. . -..- - / . -. - .-. -.--
select sum(potongan_retur) as retur, month(embayaran_hutang.tanggal) as bulan from detail_pembayaran_hutang
JOIN pembayaran_hutang USING(id_pembayaran_hutang)
group by bulan;
;-- -. . -..- - / . -. - .-. -.--
select sum(potongan_retur) as retur, month(pembayaran_hutang.tanggal) as bulan from detail_pembayaran_hutang
JOIN pembayaran_hutang USING(id_pembayaran_hutang)
group by bulan;
;-- -. . -..- - / . -. - .-. -.--
select sum(jumlah) as total, month(tanggal) as bulan from pembayaran_hutang
group by bulan;
;-- -. . -..- - / . -. - .-. -.--
select sum(jumlah) as total, month(tanggal) as bulan from pembayaran_piutang
group by bulan;
;-- -. . -..- - / . -. - .-. -.--
select sum(jumlah) as total from pembayaran_piutang;
;-- -. . -..- - / . -. - .-. -.--
select sum(total) as total, month(tanggal) as bulan from nota_penjualan
group by bulan;
;-- -. . -..- - / . -. - .-. -.--
select sum(total) as total, month(tanggal) as bulan from nota_penjualan
where year(tanggal) = 2020
group by bulan;
;-- -. . -..- - / . -. - .-. -.--
select sum(total) as total from nota_penjualan
where year(tanggal) = 2020;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS pembayaran
FROM pembayaran_piutang
JOIN nota_penjualan USING (id_pelanggan)
WHERE nota_penjualan.id_sales = 2;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS pembayaran
FROM pembayaran_piutang;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS pembayaran, MONTH(tanggal) AS bulan
FROM pembayaran_piutang
GROUP BY bulan;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS pembayaran
FROM pembayaran_piutang
JOIN nota_penjualan USING (id_pelanggan)
WHERE nota_penjualan.id_sales = 3;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS pembayaran, MONTH(pembayaran_piutang.tanggal)
FROM pembayaran_piutang
JOIN nota_penjualan USING (id_pelanggan);
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT(SUM(jumlah)) AS pembayaran, MONTH(pembayaran_piutang.tanggal) AS bulan
FROM pembayaran_piutang
JOIN nota_penjualan USING (id_pelanggan)
GROUP BY bulan;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS pembayaran, MONTH(pembayaran_piutang.tanggal) AS bulan
FROM pembayaran_piutang
JOIN nota_penjualan USING (id_pelanggan)
GROUP BY bulan;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS pembayaran
FROM pembayaran_piutang
JOIN nota_penjualan USING (id_pelanggan);
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS pembayaran, MONTH(pembayaran_piutang.tanggal) AS bulan
FROM pembayaran_piutang
#JOIN nota_penjualan USING (id_pelanggan)
GROUP BY bulan;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS pembayaran, MONTH(pembayaran_piutang.tanggal) AS bulan
FROM pembayaran_piutang
LEFT JOIN nota_penjualan USING (id_pelanggan)
WHERE nota_penjualan.id_sales = 3
GROUP BY bulan;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS pembayaran, MONTH(pembayaran_piutang.tanggal) AS bulan
FROM pembayaran_piutang
#LEFT JOIN nota_penjualan USING (id_pelanggan)
#WHERE nota_penjualan.id_sales = 3
GROUP BY bulan;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS pembayaran
FROM pembayaran_piutang
JOIN nota_penjualan USING (id_pelanggan)
HAVING nota_penjualan.id_sales = 3;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS pembayaran
FROM pembayaran_piutang
JOIN nota_penjualan USING (id_pelanggan)
where nota_penjualan.id_sales = 3;
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM pembayaran_piutang
JOIN nota_penjualan USING (id_pelanggan)
where nota_penjualan.id_sales = 3;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT(kode_pembayaran)
FROM pembayaran_piutang
JOIN nota_penjualan USING (id_pelanggan)
where nota_penjualan.id_sales = 3
ORDER BY kode_pembayaran;
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM pembayaran_piutang
JOIN nota_penjualan USING (id_pelanggan)
where nota_penjualan.id_sales = 3
ORDER BY kode_pembayaran;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(DISTINCT(jumlah))
FROM pembayaran_piutang
JOIN nota_penjualan USING (id_pelanggan)
where nota_penjualan.id_sales = 3
ORDER BY kode_pembayaran;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT(jumlah)
FROM pembayaran_piutang
JOIN nota_penjualan USING (id_pelanggan)
where nota_penjualan.id_sales = 3
ORDER BY kode_pembayaran;
;-- -. . -..- - / . -. - .-. -.--
SELECT id_sales
FROM nota_penjualan;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT id_sales
FROM nota_penjualan;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT(id_sales)
FROM nota_penjualan;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS jumlah
FROM ( SELECT * pembayaran_piutang );
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS jumlah, MONTH(tanggal) AS bulan
FROM pembayaran_piutang
GROUP BY bulan;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS jumlah, MONTH(tanggal) AS bulan
FROM pembayaran_piutang
JOIN (
    SELECT id_sales, id_pelanggan FROM nota_penjualan
    ) AS nota
ON nota.id_pelanggan = pembayaran_piutang.id_pelanggan
WHERE nota.id_sales = 3
GROUP BY bulan;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS jumlah, MONTH(tanggal) AS bulan
FROM pembayaran_piutang
JOIN (
    SELECT DISTINCT id_sales, id_pelanggan FROM nota_penjualan
    ) AS nota
ON nota.id_pelanggan = pembayaran_piutang.id_pelanggan
WHERE nota.id_sales = 3
GROUP BY bulan;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS jumlah, MONTH(tanggal) AS bulan
FROM pembayaran_piutang
JOIN (
    SELECT DISTINCT id_sales, id_pelanggan FROM nota_penjualan
    ) AS nota
ON nota.id_pelanggan = pembayaran_piutang.id_pelanggan
WHERE nota.id_sales = 2
GROUP BY bulan;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS jumlah
                        FROM pembayaran_piutang
                    JOIN (
                        SELECT DISTINCT id_sales, id_pelanggan FROM nota_penjualan
                        ) AS nota
                    ON nota.id_pelanggan = pembayaran_piutang.id_pelanggan
                    WHERE nota.id_sales = '3';
;-- -. . -..- - / . -. - .-. -.--
SELECT
    pembayaran_piutang.*,
       pelanggan.nama_pelanggan,
       bank.nama_bank,
       jenis_bayar.nama_jenis_bayar,
       keterangan.nama_keterangan,
       detail_pembayaran_piutang.tanggal AS tanggal_nota
FROM pembayaran_piutang
    JOIN pelanggan USING (id_pelanggan)
    JOIN bank USING (id_bank)
    JOIN jenis_bayar USING (id_jenis_bayar)
    JOIN keterangan USING (id_keterangan)
    RIGHT JOIN detail_pembayaran_piutang USING (id_pembayaran_piutang);
;-- -. . -..- - / . -. - .-. -.--
SELECT
    pembayaran_piutang.*,
       pelanggan.nama_pelanggan,
       bank.nama_bank,
       jenis_bayar.nama_jenis_bayar,
       keterangan.nama_keterangan,
       detail_pembayaran_piutang.tanggal AS tanggal_nota
FROM pembayaran_piutang
    JOIN pelanggan USING (id_pelanggan)
    JOIN bank USING (id_bank)
    JOIN jenis_bayar USING (id_jenis_bayar)
    JOIN keterangan USING (id_keterangan)
    JOIN detail_pembayaran_piutang USING (id_pembayaran_piutang);
;-- -. . -..- - / . -. - .-. -.--
SELECT
    pembayaran_piutang.*,
       pelanggan.nama_pelanggan,
       bank.nama_bank,
       jenis_bayar.nama_jenis_bayar,
       keterangan.nama_keterangan,
       detail_pembayaran_piutang.tanggal AS tanggal_nota
FROM pembayaran_piutang
    JOIN pelanggan USING (id_pelanggan)
    JOIN bank USING (id_bank)
    JOIN jenis_bayar USING (id_jenis_bayar)
    JOIN keterangan USING (id_keterangan)
    JOIN detail_pembayaran_piutang USING (id_pembayaran_piutang)
GROUP BY kode_pembayaran;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       pembayaran_piutang.kode_pembayaran,
       pembayaran_piutang.tanggal AS tanggal_masuk,
       jumlah AS jumlah_transfer,
       pelanggan.nama_pelanggan,
       pelanggan.id_pelanggan,
       detail_pembayaran_piutang.no_nota,
       detail_pembayaran_piutang.tanggal AS tanggal_nota,
       (tanggal_masuk - tanggal_nota) AS jumlah_hari
FROM pembayaran_piutang
    JOIN pelanggan USING (id_pelanggan)
    JOIN detail_pembayaran_piutang USING (id_pembayaran_piutang);
;-- -. . -..- - / . -. - .-. -.--
SELECT
       pembayaran_piutang.kode_pembayaran,
       pembayaran_piutang.tanggal AS tanggal_masuk,
       jumlah AS jumlah_transfer,
       pelanggan.nama_pelanggan,
       pelanggan.id_pelanggan,
       detail_pembayaran_piutang.no_nota,
       detail_pembayaran_piutang.tanggal AS tanggal_nota,
       (pembayaran_piutang.tanggal - detail_pembayaran_piutang.tanggal) AS jumlah_hari
FROM pembayaran_piutang
    JOIN pelanggan USING (id_pelanggan)
    JOIN detail_pembayaran_piutang USING (id_pembayaran_piutang);
;-- -. . -..- - / . -. - .-. -.--
SELECT pembayaran_piutang.kode_pembayaran, pembayaran_piutang.tanggal AS tanggal_masuk, jumlah AS jumlah_transfer, pelanggan.nama_pelanggan, pelanggan.id_pelanggan, detail_pembayaran_piutang.no_nota, detail_pembayaran_piutang.tanggal AS tanggal_nota, detail_pembayaran_piutang.nominal_bayar AS jumlah_bayar, (pembayaran_piutang.tanggal - detail_pembayaran_piutang.tanggal) AS jumlah_hari FROM pembayaran_piutang  JOIN pelanggan USING (id_pelanggan)   JOIN detail_pembayaran_piutang USING (id_pembayaran_piutang);
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM `nota_penjualan` JOIN `pelanggan` USING (`id_pelanggan`) JOIN `sales` USING (`id_sales`);
;-- -. . -..- - / . -. - .-. -.--
SELECT pembayaran_piutang.*,
       pelanggan.nama_pelanggan,
       bank.nama_bank,
       jenis_bayar.nama_jenis_bayar,
       keterangan.nama_keterangan
FROM pembayaran_piutang
    JOIN pelanggan USING (id_pelanggan)
    JOIN bank USING (id_bank)
    JOIN jenis_bayar USING (id_jenis_bayar)
    JOIN keterangan USING (id_keterangan)
WHERE id_pelanggan = '1';
;-- -. . -..- - / . -. - .-. -.--
SELECT pembayaran_piutang.*,
       pelanggan.nama_pelanggan,
       bank.nama_bank,
       jenis_bayar.nama_jenis_bayar,
       keterangan.nama_keterangan
FROM pembayaran_piutang
    JOIN pelanggan USING (id_pelanggan)
    JOIN bank USING (id_bank)
    JOIN jenis_bayar USING (id_jenis_bayar)
    JOIN keterangan USING (id_keterangan)
WHERE id_pelanggan = 4;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS total_bayar
FROM pembayaran_piutang
WHERE id_pelanggan = 4;
;-- -. . -..- - / . -. - .-. -.--
SELECT pembayaran_hutang.*,
       supplier.nama_supplier,
       bank.nama_bank,
       jenis_bayar.nama_jenis_bayar,
       keterangan.nama_keterangan
FROM pembayaran_hutang
    JOIN supplier USING (id_supplier)
    JOIN bank USING (id_bank)
    JOIN jenis_bayar USING (id_jenis_bayar)
    JOIN keterangan USING (id_keterangan)
WHERE id_supplier = '1';
;-- -. . -..- - / . -. - .-. -.--
SELECT pembayaran_hutang.*,
       supplier.nama_supplier,
       bank.nama_bank,
       jenis_bayar.nama_jenis_bayar,
       keterangan.nama_keterangan
FROM pembayaran_hutang
    JOIN supplier USING (id_supplier)
    JOIN bank USING (id_bank)
    JOIN jenis_bayar USING (id_jenis_bayar)
    JOIN keterangan USING (id_keterangan)
WHERE id_supplier = 2;
;-- -. . -..- - / . -. - .-. -.--
SELECT pembayaran_hutang.*,
       supplier.nama_supplier,
       bank.nama_bank,
       jenis_bayar.nama_jenis_bayar,
       keterangan.nama_keterangan
FROM pembayaran_hutang
    JOIN supplier USING (id_supplier)
    JOIN bank USING (id_bank)
    JOIN jenis_bayar USING (id_jenis_bayar)
    JOIN keterangan USING (id_keterangan)
WHERE id_supplier = 3;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(jumlah) AS total
FROM pembayaran_hutang
WHERE id_supplier = 3;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO `rekening_koran` (`id_rekening_koran`, `id_bank`, `tanggal`, `no_bukti`, `keterangan`, `jenis_biaya`, `nominal`, `saldo`, `oleh`, `kode_pembayaran`, `status`) VALUES
(4, 1, '2020-07-01', '0', 'SALDO AWAL', 'SALDO', 50098817, '0', '', 1),
(5, 1, '2020-07-02', 'BCK2007/001', 'BAYAR KE PT PANTJA NOTA 218', 'KELUAR', 35471000, 35471000, 'PT PANTJA JAYA', 'TF-0001', 1),
(6, 1, '2020-07-06', 'BCM2007/001', 'TRANFER BAYAR NOTA 4', 'MASUK', 7106000, 7106000, 'SINAR JAYAKARTA', 'PU-0001', 0),
(7, 1, '2020-07-06', 'BCM2007/002', 'TRANFER BAYAR NOTA 2', 'MASUK', 5815000, 5815000, 'SINAR JAYAKARTA', 'PU-0002', 0),
(8, 1, '2020-07-16', 'BCM2007/003', 'TRANFER BAYAR NOTA 9', 'MASUK', 275000, 275000, 'ADI', 'PU-0003', 0),
(9, 2, '2020-11-20', 'BCMKDAS/020', 'PEMABYARAN NOTA', 'KELUAR', 8536000, 8536000, 'ANU', 'PU-0004', 1);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO `rekening_koran` (`id_rekening_koran`, `id_bank`, `tanggal`, `no_bukti`, `keterangan`, `jenis_biaya`, `nominal`, `saldo`, `oleh`, `kode_pembayaran`, `status`) VALUES
(4, 1, '2020-07-01', '0', 'SALDO AWAL', 'SALDO', 50098817, 50098817, '0', '', 1),
(5, 1, '2020-07-02', 'BCK2007/001', 'BAYAR KE PT PANTJA NOTA 218', 'KELUAR', 35471000, 35471000, 'PT PANTJA JAYA', 'TF-0001', 1),
(6, 1, '2020-07-06', 'BCM2007/001', 'TRANFER BAYAR NOTA 4', 'MASUK', 7106000, 7106000, 'SINAR JAYAKARTA', 'PU-0001', 0),
(7, 1, '2020-07-06', 'BCM2007/002', 'TRANFER BAYAR NOTA 2', 'MASUK', 5815000, 5815000, 'SINAR JAYAKARTA', 'PU-0002', 0),
(8, 1, '2020-07-16', 'BCM2007/003', 'TRANFER BAYAR NOTA 9', 'MASUK', 275000, 275000, 'ADI', 'PU-0003', 0),
(9, 2, '2020-11-20', 'BCMKDAS/020', 'PEMABYARAN NOTA', 'KELUAR', 8536000, 8536000, 'ANU', 'PU-0004', 1);