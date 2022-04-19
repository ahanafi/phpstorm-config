SELECT SUM(transaksi_spk.nominal) AS total FROM transaksi_spk
WHERE spk_id = 3
AND jenis_bon IS NULL
