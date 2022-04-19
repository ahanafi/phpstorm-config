SELECT
    NMMHSMSMHS AS nama,
    nonota AS nomor_nota,
    `nimnoreg` AS nim,
    `tgl` AS tanggal,
    jumlah AS nominal,
    ket AS keterangan,
    keu_trans.thsms AS tahun,
    uraian, norek
FROM keu_trans
LEFT JOIN keu_coa USING (norek)
LEFT JOIN msmhs ON NIMHSMSMHS = `nimnoreg` WHERE tgl BETWEEN '2021/03/01' AND '2021/03/31' GROUP BY nomor_nota ORDER BY tanggal DESC;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM transaksi JOIN kategori ON kategori.kategori_id = transaksi_kategori LEFT JOIN departemen ON departemen.departemen_id = transaksi_departemen WHERE DATE(transaksi_tanggal) BETWEEN '2021/03/01' AND '2021/03/31';
;-- -. . -..- - / . -. - .-. -.--
SELECT transaksi_tanggal, transaksi_jenis, transaksi_kategori, transaksi_departemen, transaksi_nominal, departemen_id, departemen_nama, kategori_id, kategori FROM transaksi JOIN kategori ON kategori.kategori_id = transaksi_kategori LEFT JOIN departemen ON departemen.departemen_id = transaksi_departemen WHERE DATE(transaksi_tanggal) BETWEEN '2021/03/01' AND '2021/03/31';
;-- -. . -..- - / . -. - .-. -.--
SELECT transaksi_tanggal, transaksi_jenis, transaksi_kategori, transaksi_departemen, transaksi_nominal, transaksi_keterangan, departemen_id, departemen_nama, kategori_id, kategori FROM transaksi JOIN kategori ON kategori.kategori_id = transaksi_kategori LEFT JOIN departemen ON departemen.departemen_id = transaksi_departemen WHERE DATE(transaksi_tanggal) BETWEEN '2021/03/01' AND '2021/03/31';