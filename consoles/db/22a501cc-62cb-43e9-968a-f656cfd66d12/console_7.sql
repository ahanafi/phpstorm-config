SELECT
       jadwal.*,
       mata_kuliah.nama_mata_kuliah,
       kelas.nama_kelas,
       kelas.semester,
       dosen.nama_lengkap,
       ruangan.kode_ruangan
FROM jadwal
    JOIN mata_kuliah USING (id_mata_kuliah)
    JOIN kelas USING (id_kelas)
    JOIN dosen USING (id_dosen)
    JOIN ruangan USING (id_ruangan)
WHERE id_dosen IN (8, 9, 10, 16, 18, 19, 23, 24, 25, 26, 27)