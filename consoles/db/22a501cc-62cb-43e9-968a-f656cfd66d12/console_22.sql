SELECT verifikasi.*,
       mahasiswa.nim,
       mahasiswa.nama_lengkap AS nama_mahasiswa,
       mahasiswa.paraf        AS paraf_mahasiswa,
       dosen.nidn,
       dosen.nama_lengkap     AS nama_dosen,
       dosen.gelar,
       dosen.paraf            AS paraf_dosen
FROM verifikasi
         JOIN mahasiswa ON mahasiswa.nim = verifikasi.nim_verifikator
         JOIN dosen ON dosen.nidn = verifikasi.nidn_verifikator
WHERE id_berita_acara = '13'