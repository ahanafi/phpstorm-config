SELECT
    SUM(qty) as total_qty, nomor_pi, proforma_invoice_id
FROM proforma_invoice
JOIN detail_proforma_invoice USING(proforma_invoice_id)
GROUP BY nomor_pi;
drop table pesanan;

