# SELECT SUM(detail_proforma_invoice.qty) AS totalQty
# FROM detail_proforma_invoice WHERE proforma_invoice_id = 1;

SELECT SUM(detail_spk.qty) AS totalQtySpk
FROM detail_spk WHERE nomor_pi = '001/PI-FR/IV/20';