SELECT berita_acara.*, jadwal.*
FROM berita_acara
JOIN (
    SELECT jadwal.*,
           mata_kuliah.nama_mata_kuliah,
           mata_kuliah.id_mata_kuliah AS mk_id_mata_kuliah,
           dosen.nama_lengkap,
           dosen.gelar,
           ruangan.kode_ruangan,
           GROUP_CONCAT(CONCAT(' ', kelas.nama_kelas, '/', kelas.semester)) AS kelas
    FROM jadwal
             JOIN detail_jadwal USING (id_jadwal)
             JOIN mata_kuliah USING (id_mata_kuliah)
             JOIN kelas USING (id_kelas)
             JOIN dosen USING (id_dosen)
             JOIN ruangan USING (id_ruangan)
    GROUP BY jadwal.id_jadwal
    ORDER BY jadwal.id_jadwal
) AS jadwal USING (id_jadwal)
LEFT JOIN verifikasi USING (id_berita_acara);