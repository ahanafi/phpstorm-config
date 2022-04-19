SELECT berita_acara.*,
       berita_acara.jam_mulai   AS jam_mulai_pelaksanaan,
       berita_acara.jam_selesai AS jam_selesai_pelaksanaan,
       jadwal.*
FROM berita_acara
         JOIN (SELECT jadwal.*,
                      mata_kuliah.nama_mata_kuliah,
                      mata_kuliah.sks,
                      dosen.nama_lengkap                                               AS nama_dosen,
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
               ORDER BY jadwal.id_jadwal ASC) AS jadwal USING (id_jadwal)
         LEFT JOIN verifikasi USING (id_berita_acara)
GROUP BY berita_acara.id_berita_acara