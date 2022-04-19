SELECT detail_surat_jalan.*, detail_surat_jalan.qty AS qty_masuk,
       barang.barang_id, barang.nama_barang, barang.kode_barang,
       spk.nomor_spk,
       detail_spk.qty AS qty_spk
    FROM detail_surat_jalan
    JOIN barang USING (barang_id)
    JOIN spk USING (spk_id)
    JOIN detail_spk USING (spk_id)
    WHERE surat_id = '6'
    AND spk_id IN ('1')
GROUP BY barang.barang_id;