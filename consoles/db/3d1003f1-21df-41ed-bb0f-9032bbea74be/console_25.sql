# SELECT SUM(DISTINCT(total))
# FROM spk
# JOIN detail_spk USING (spk_id)
# WHERE nomor_pi = '001/PI-FR/IV/20'

SELECT SUM(nominal) AS total FROM (
  SELECT DISTINCT transaksi_spk_id, nominal
  FROM transaksi_spk
           JOIN detail_spk USING (spk_id)
  WHERE nomor_pi = '001/PI-FR/IV/20'
    AND jenis_transaksi = 'DEBET'
) AS transaksi_spk
