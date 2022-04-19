SELECT
       *
FROM proforma_invoice
WHERE
    SUBSTRING_INDEX(SUBSTRING_INDEX(nomor_pi, '/', -2), '/', 1) = 'XII';