SELECT berita_acara.*,
       jadwal.*,
       mata_kuliah.nama_mata_kuliah AS mata_kuliah,
       mata_kuliah.sks,
       kelas.nama_kelas AS kelas,
       kelas.semester,
       dosen.nama_lengkap AS dosen,
       dosen.gelar
FROM berita_acara
    JOIN jadwal USING (id_jadwal)
    JOIN mata_kuliah USING (id_mata_kuliah)
    JOIN kelas USING (id_kelas)
    JOIN dosen USING (id_dosen)