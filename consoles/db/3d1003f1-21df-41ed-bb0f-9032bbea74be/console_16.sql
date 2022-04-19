SELECT detail_spk.qty AS qty_spk,
       barang.nama_barang,
       detail_spk.barang_id AS detail_spk_barang_id,
       spk.nomor_spk,
       spk.spk_id
FROM detail_spk
    JOIN barang USING (barang_id)
    JOIN spk USING (spk_id)
WHERE spk_id IN (1,2);