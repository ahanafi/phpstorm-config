SELECT berita_acara.*,
       jadwal.*
FROM berita_acara
    JOIN jadwal USING (id_jadwal)
WHERE id_berita_acara = 1;