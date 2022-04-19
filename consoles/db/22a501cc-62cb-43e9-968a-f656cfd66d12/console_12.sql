SELECT COUNT(jadwal.hari) AS jumlah,
       dosen.nama_lengkap, dosen.id_dosen
FROM jadwal JOIN dosen USING (id_dosen)
GROUP BY id_dosen;