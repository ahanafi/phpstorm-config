SELECT berita_acara.*,
       berita_acara.jam_mulai                                           AS jam_mulai_pelaksanaan,
       berita_acara.jam_selesai                                         AS jam_selesai_pelaksanaan,
       jadwal.*,
       detail_jadwal.id_kelas,
       mata_kuliah.nama_mata_kuliah                                     AS mata_kuliah,
       mata_kuliah.sks,
       kelas.nama_kelas                                                 AS kelas,
       kelas.semester,
       dosen.nama_lengkap                                               AS dosen,
       dosen.gelar,
       verifikasi.*,
       mahasiswa.nim,
       mahasiswa.nama_lengkap                                           AS nama_mahasiswa,
       mahasiswa.paraf,
       GROUP_CONCAT(CONCAT(' ', kelas.nama_kelas, '/', kelas.semester)) AS kelas
FROM berita_acara
         JOIN jadwal USING (id_jadwal)
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN verifikasi USING (id_berita_acara)
         JOIN mahasiswa ON verifikasi.nim_verifikator = mahasiswa.nim
GROUP BY jadwal.id_jadwal