SELECT jadwal.id_jadwal,
       mata_kuliah.nama_mata_kuliah,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan,
       GROUP_CONCAT(CONCAT(kelas.nama_kelas, '/', kelas.semester)) AS kelas_semester
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY jadwal.id_jadwal;