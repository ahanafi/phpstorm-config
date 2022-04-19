SELECT detail.*, brg.barang_id, brg.nama_barang, brg.kode_barang,
    spk.nomor_spk
    FROM detail_surat_jalan AS detail
    JOIN barang AS brg USING (barang_id)
    JOIN spk USING (spk_id)
    WHERE surat_id = 6;