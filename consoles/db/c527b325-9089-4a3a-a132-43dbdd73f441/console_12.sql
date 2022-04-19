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
WHERE id_supplier = 3