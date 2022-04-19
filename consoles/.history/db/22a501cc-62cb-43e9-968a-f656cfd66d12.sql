INSERT INTO
program_studi
    (kode_program_studi,
     id_fakultas,
     jenjang,
     nama_program_studi)
VALUES
        ('55201',1, 'S1', 'Teknik Informatika'),
       ('57201',1, 'S1', 'Sistem Informasi'),
       ('90241',1, 'S1', 'Desain Komunikasi Visual'),
       ('57401',1, 'D3', 'Manajemen Informatika');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO
program_studi
    (kode_program_studi,
     id_fakultas,
     jenjang,
     nama_program_studi)
VALUES
        ('61201',2, 'S1', 'Manajemen'),
       ('62201',2, 'S1', 'Akuntansi'),
       ('61405',2, 'D3', 'Manajemen Bisnis'),
       ('57402',2, 'D3', 'Komputerisasi Akuntansi');
;-- -. . -..- - / . -. - .-. -.--
SELECT berita_acara.*, jadwal.*, mata_kuliah.nama_mata_kuliah AS mata_kuliah, mata_kuliah.sks, kelas.nama_kelas AS kelas, dosen.nama_lengkap AS dosen FROM berita_acara JOIN jadwal USING (id_jadwal) JOIN mata_kuliah USING (id_mata_kuliah) JOIN kelas USING (id_kelas) JOIN dosen USING (id_dosen) WHERE id_berita_acara = '1';
;-- -. . -..- - / . -. - .-. -.--
SELECT berita_acara.*,
       jadwal.*,
       mata_kuliah.nama_mata_kuliah AS mata_kuliah,
       mata_kuliah.sks,
       kelas.nama_kelas AS kelas,
       dosen.nama_lengkap AS dosen
FROM berita_acara
    JOIN jadwal USING (id_jadwal)
    JOIN mata_kuliah USING (id_mata_kuliah)
    JOIN kelas USING (id_kelas)
    JOIN dosen USING (id_dosen)
WHERE id_berita_acara = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT berita_acara.*,
       jadwal.*
FROM berita_acara
    JOIN jadwal USING (id_jadwal)
WHERE id_berita_acara = 1;
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO mata_kuliah (kode_mata_kuliah, nama_mata_kuliah, sks) VALUES ('271422', 'Praktikum Akuntansi (Manual)', '2'), ('271406', 'Pengantar Akuntansi 1', '2'), ('271419', 'Akuntansi Biaya', '2'), ('271439', 'Analisa Laporan Keuangan', '2'), ('271432', 'Sistem Informasi Akuntansi', '2'), ('271432', 'Sistem Informasi Akuntansi', '2'), ('271406', 'Pengantar Akuntansi 1', '2'), ('45186', 'PERANGKAT LUNAK AKUNTANSI (ZAHIR)', '2'), ('45018', 'SISTEM AKUNTANSI 1', '2'), ('271435', 'Akuntansi Keuangan Menengah 2', '2'), ('271419', 'Akuntansi Biaya', '2'), ('271439', 'Analisa Laporan Keuangan', '2'), ('45018', 'SISTEM AKUNTANSI 1', '2'), ('3104', 'APLIKASI SOFTWARE AKUNTANSI', '2'), ('MB402', 'PROMOSI DAN PERIKLANAN', '2'), ('271442', 'Magang Industri', '2'), ('271545', 'Aplikasi Software Akuntansi', '2'), ('271401', 'Pendidikan Agama', '2'), ('271414', 'Pengantar Akuntansi 2', '2'), ('271541', 'Tugas Akhir', '2'), ('271422', 'Praktikum Akuntansi (Manual)', '2'), ('271439', 'Sistem Akuntansi', '2'), ('ACT 1301', 'Pengantar Akuntansi', '2'), ('3366', 'Aplikasi Software Akuntansi (Myob)', '2');
;-- -. . -..- - / . -. - .-. -.--
SELECT
       `program_studi`.*,
       `fakultas`.`nama_fakultas` AS `fakultas`,
       `fakultas`.`kode_fakultas`,
       `dosen`.`nama_lengkap` AS `kaprodi`
FROM `program_studi`
    JOIN `fakultas` USING (`id_fakultas`)
    RIGHT JOIN `dosen` USING (`id_dosen`)
WHERE `id_program_studi` = '1';
;-- -. . -..- - / . -. - .-. -.--
SELECT
       `program_studi`.*,
       `fakultas`.`nama_fakultas` AS `fakultas`,
       `fakultas`.`kode_fakultas`,
       `dosen`.`nama_lengkap` AS `kaprodi`
FROM `program_studi`
    JOIN `fakultas` USING (`id_fakultas`)
    RIGHT JOIN `dosen` USING (`id_dosen`)
WHERE program_studi.`id_program_studi` = '1';
;-- -. . -..- - / . -. - .-. -.--
SELECT
       `program_studi`.*,
       `fakultas`.`nama_fakultas` AS `fakultas`,
       `fakultas`.`kode_fakultas`,
       `dosen`.`nama_lengkap` AS `kaprodi`
FROM `program_studi`
    JOIN `fakultas` USING (`id_fakultas`)
    LEFT JOIN `dosen` USING (`id_dosen`)
WHERE program_studi.`id_program_studi` = '1';
;-- -. . -..- - / . -. - .-. -.--
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
WHERE id_dosen IN (8, 9, 10, 16, 18, 19, 23, 24, 25, 26, 27);
;-- -. . -..- - / . -. - .-. -.--
SELECT id_dosen FROM dosen WHERE id_program_studi = 7;
;-- -. . -..- - / . -. - .-. -.--
SELECT group_concat(id_dosen) FROM dosen WHERE id_program_studi = 7;
;-- -. . -..- - / . -. - .-. -.--
SELECT group_concat(id_dosen) AS id_dosen FROM dosen WHERE id_program_studi = 7;
;-- -. . -..- - / . -. - .-. -.--
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
    JOIN dosen USING (id_dosen);
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*)
FROM berita_acara
WHERE bentuk_materi LIKE '%PPT%';
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*)
FROM berita_acara
WHERE bentuk_materi LIKE '%ppt%';
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*)
FROM berita_acara
WHERE bentuk_materi LIKE '%doc%';
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*)
FROM berita_acara
WHERE bentuk_materi LIKE '%pdf%';
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*)
FROM berita_acara
WHERE bentuk_materi LIKE '%video%';
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*)
FROM berita_acara
WHERE jenis_aplikasi LIKE '%zoom%';
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*)
FROM berita_acara
WHERE jenis_aplikasi LIKE '%wa_group%';
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*)
FROM berita_acara
WHERE jenis_aplikasi LIKE '%edmodo%';
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*)
FROM berita_acara
WHERE jenis_aplikasi LIKE '%quizziz%';
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*)
FROM berita_acara
WHERE jenis_aplikasi LIKE '%lainnya%';
;-- -. . -..- - / . -. - .-. -.--
SELECT  jadwal.*, dosen.nama_lengkap
FROM jadwal JOIN dosen USING (id_dosen);
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(jadwal.*) AS jumlah,
       dosen.nama_lengkap
FROM jadwal JOIN dosen USING (id_dosen)
GROUP BY nama_lengkap;
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(jadwal.hari) AS jumlah,
       dosen.nama_lengkap
FROM jadwal JOIN dosen USING (id_dosen)
GROUP BY nama_lengkap;
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(jadwal.hari) AS jumlah,
       dosen.nama_lengkap, id_dosen
FROM jadwal JOIN dosen USING (id_dosen)
GROUP BY nama_lengkap;
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(jadwal.hari) AS jumlah,
       dosen.nama_lengkap, dosen.id_dosen
FROM jadwal JOIN dosen USING (id_dosen)
GROUP BY nama_lengkap;
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(jadwal.hari) AS jumlah,
       dosen.nama_lengkap, dosen.id_dosen
FROM jadwal JOIN dosen USING (id_dosen)
GROUP BY id_dosen;
;-- -. . -..- - / . -. - .-. -.--
SELECT berita_acara.*, jadwal.*, mata_kuliah.nama_mata_kuliah AS mata_kuliah, mata_kuliah.sks, kelas.nama_kelas AS kelas, kelas.semester, dosen.nama_lengkap AS dosen, dosen.gelar FROM berita_acara JOIN jadwal USING (id_jadwal) JOIN mata_kuliah USING (id_mata_kuliah) JOIN kelas USING (id_kelas) JOIN dosen USING (id_dosen);
;-- -. . -..- - / . -. - .-. -.--
SELECT
    jadwal.*,
       mata_kuliah.nama_mata_kuliah,
       kelas.nama_kelas,
       kelas.semester,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan
FROM jadwal
    JOIN mata_kuliah USING (id_mata_kuliah)
    JOIN kelas USING (id_kelas)
    JOIN dosen USING (id_dosen)
    JOIN ruangan USING (id_ruangan);
;-- -. . -..- - / . -. - .-. -.--
SELECT
    jadwal.*,
       mata_kuliah.nama_mata_kuliah,
       kelas.nama_kelas,
       kelas.semester,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan
FROM jadwal
    JOIN detail_jadwal USING (id_jadwal)
    JOIN mata_kuliah USING (id_mata_kuliah)
    JOIN kelas USING (id_kelas)
    JOIN dosen USING (id_dosen)
    JOIN ruangan USING (id_ruangan);
;-- -. . -..- - / . -. - .-. -.--
SELECT
    jadwal.*,
       mata_kuliah.nama_mata_kuliah,
       kelas.nama_kelas,
       kelas.semester,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan
FROM jadwal
    JOIN detail_jadwal USING (id_jadwal)
    JOIN mata_kuliah USING (id_mata_kuliah)
    JOIN kelas USING (id_kelas)
    JOIN dosen USING (id_dosen)
    JOIN ruangan USING (id_ruangan)
WHERE id_jadwal = 5;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.*,
       mata_kuliah.nama_mata_kuliah,
       kelas.nama_kelas,
       kelas.semester,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
WHERE id_jadwal = 5
GROUP BY id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.*,
       mata_kuliah.nama_mata_kuliah,
       kelas.nama_kelas,
       kelas.semester,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.*,
       mata_kuliah.nama_mata_kuliah,
       kelas.nama_kelas,
       kelas.semester,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan);
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.*,
       mata_kuliah.nama_mata_kuliah,
       GROUP_CONCAT(CONCAT(kelas.nama_kelas, kelas.semester)) AS kelas_semester,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan);
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.*,
       mata_kuliah.nama_mata_kuliah,
       GROUP_CONCAT(CONCAT(kelas.nama_kelas, kelas.semester)) AS kelas_semester,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY id_kelas;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.*,
       detail_jadwal.id_kelas,
       mata_kuliah.nama_mata_kuliah,
       GROUP_CONCAT(CONCAT(kelas.nama_kelas, kelas.semester)) AS kelas_semester,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY id_kelas;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.*,
       detail_jadwal.id_kelas,
       mata_kuliah.nama_mata_kuliah,
       GROUP_CONCAT(CONCAT(kelas.nama_kelas, kelas.semester)) AS kelas_semester,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY kelas_semester;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.*,
       detail_jadwal.id_kelas,
       mata_kuliah.nama_mata_kuliah,
       GROUP_CONCAT(CONCAT(kelas.nama_kelas, kelas.semester)) AS kelas_semester,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.*,
       detail_jadwal.id_kelas,
       mata_kuliah.nama_mata_kuliah,
       GROUP_CONCAT(CONCAT(kelas.nama_kelas, kelas.semester)) AS kelas_semester,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY jadwal.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.*,
       detail_jadwal.id_kelas,
       mata_kuliah.nama_mata_kuliah,
       CONCAT(kelas.nama_kelas, kelas.semester) AS kelas_semester,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan);
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.*,
       detail_jadwal.id_kelas,
       mata_kuliah.nama_mata_kuliah,
       CONCAT(kelas.nama_kelas, '/', kelas.semester) AS kelas_semester,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan);
;-- -. . -..- - / . -. - .-. -.--
SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.*,
       detail_jadwal.id_kelas,
       mata_kuliah.nama_mata_kuliah,
       GROUP_CONCAT(CONCAT(kelas.nama_kelas, '/', kelas.semester)),
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.*,
       mata_kuliah.nama_mata_kuliah,
       GROUP_CONCAT(id_kelas),
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY jadwal.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.id_jadwal,
       mata_kuliah.nama_mata_kuliah,
       GROUP_CONCAT(id_kelas),
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY jadwal.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.id_jadwal,
       mata_kuliah.nama_mata_kuliah,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan,
       kelas.nama_kelas, kelas.semester,
       GROUP_CONCAT(id_kelas)
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY jadwal.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.id_jadwal,
       mata_kuliah.nama_mata_kuliah,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan,
       GROUP_CONCAT(kelas.nama_kelas)
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY jadwal.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.id_jadwal,
       mata_kuliah.nama_mata_kuliah,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan,
       GROUP_CONCAT(CONCAT_WS(', ', kelas.nama_kelas, '/', kelas.semester)) AS kelas_semester
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY jadwal.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.id_jadwal,
       mata_kuliah.nama_mata_kuliah,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan,
       GROUP_CONCAT(CONCAT_WS(', ', CONCAT(kelas.nama_kelas, '/', kelas.semester))) AS kelas_semester
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY jadwal.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.id_jadwal,
       mata_kuliah.nama_mata_kuliah,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan,
       GROUP_CONCAT(CONCAT(' ,', kelas.nama_kelas, '/', kelas.semester, )) AS kelas_semester
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY jadwal.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.id_jadwal,
       mata_kuliah.nama_mata_kuliah,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan,
       GROUP_CONCAT(CONCAT(' ,', kelas.nama_kelas, '/', kelas.semester)) AS kelas_semester
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY jadwal.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.id_jadwal,
       mata_kuliah.nama_mata_kuliah,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan,
       GROUP_CONCAT(CONCAT(kelas.nama_kelas, '/', kelas.semester, ', ')) AS kelas_semester
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY jadwal.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.id_jadwal,
       mata_kuliah.nama_mata_kuliah,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan,
       GROUP_CONCAT(CONCAT(kelas.nama_kelas, '/', kelas.semester, ',')) AS kelas_semester
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY jadwal.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.id_jadwal,
       mata_kuliah.nama_mata_kuliah,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan,
       GROUP_CONCAT(TRIM(CONCAT(' ', kelas.nama_kelas, '/', kelas.semester))) AS kelas_semester
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY jadwal.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.id_jadwal,
       mata_kuliah.nama_mata_kuliah,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan,
       GROUP_CONCAT(CONCAT(' ', kelas.nama_kelas, '/', kelas.semester)) AS kelas_semester
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY jadwal.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.id_jadwal,
       mata_kuliah.nama_mata_kuliah,
       dosen.nama_lengkap AS dosen,
       dosen.gelar,
       ruangan.kode_ruangan,
       GROUP_CONCAT(CONCAT(kelas.nama_kelas, '/', kelas.semester, ' ')) AS kelas_semester
FROM jadwal
         JOIN detail_jadwal USING (id_jadwal)
         JOIN mata_kuliah USING (id_mata_kuliah)
         JOIN kelas USING (id_kelas)
         JOIN dosen USING (id_dosen)
         JOIN ruangan USING (id_ruangan)
GROUP BY jadwal.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
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
;-- -. . -..- - / . -. - .-. -.--
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
WHERE id_jadwal = '5'
GROUP BY jadwal.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
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
GROUP BY jadwal.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.*,
       mata_kuliah.nama_mata_kuliah,
       mata_kuliah.id_mata_kuliah,
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
ORDER BY jadwal.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT berita_acara.*, info_jadwal.*
FROM berita_acara
JOIN (
    SELECT jadwal.*,
           mata_kuliah.nama_mata_kuliah,
           mata_kuliah.id_mata_kuliah,
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
) AS info_jadwal USING (id_jadwal);
;-- -. . -..- - / . -. - .-. -.--
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
    ORDER BY jadwal.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT berita_acara.*, info_jadwal.*
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
) AS info_jadwal USING (id_jadwal);
;-- -. . -..- - / . -. - .-. -.--
SELECT berita_acara.*, info_jadwal.*
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
) AS info_jadwal USING (id_jadwal)
LEFT JOIN verifikasi USING (id_berita_acara);
;-- -. . -..- - / . -. - .-. -.--
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
;-- -. . -..- - / . -. - .-. -.--
SELECT jadwal.*,
       mata_kuliah.nama_mata_kuliah,
       mata_kuliah.id_mata_kuliah,
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
ORDER BY jadwal.id_jadwal ASC;
;-- -. . -..- - / . -. - .-. -.--
SELECT berita_acara.*, jadwal.*
FROM berita_acara
         JOIN (SELECT jadwal.*,
                      mata_kuliah.nama_mata_kuliah,
                      mata_kuliah.id_mata_kuliah,
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
               ORDER BY jadwal.id_jadwal ASC) AS jadwal USING (id_jadwal)
         LEFT JOIN verifikasi USING (id_verifikasi)
GROUP BY berita_acara.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT berita_acara.*, jadwal.*
FROM berita_acara
         JOIN (SELECT jadwal.*,
                      mata_kuliah.nama_mata_kuliah,
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
               ORDER BY jadwal.id_jadwal ASC) AS jadwal USING (id_jadwal)
         LEFT JOIN verifikasi USING (id_verifikasi)
GROUP BY berita_acara.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT berita_acara.*, jadwal.*
FROM berita_acara
         JOIN (SELECT jadwal.*,
                      mata_kuliah.nama_mata_kuliah,
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
               ORDER BY jadwal.id_jadwal ASC) AS jadwal USING (id_jadwal)
         LEFT JOIN verifikasi USING (id_berita_acara)
GROUP BY berita_acara.id_jadwal;
;-- -. . -..- - / . -. - .-. -.--
SELECT berita_acara.*, jadwal.*
FROM berita_acara
         JOIN (SELECT jadwal.*,
                      mata_kuliah.nama_mata_kuliah,
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
               ORDER BY jadwal.id_jadwal ASC) AS jadwal USING (id_jadwal)
         LEFT JOIN verifikasi USING (id_berita_acara)
GROUP BY berita_acara.id_berita_acara;
;-- -. . -..- - / . -. - .-. -.--
SELECT berita_acara.*, jadwal.*
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
GROUP BY berita_acara.id_berita_acara;
;-- -. . -..- - / . -. - .-. -.--
SELECT berita_acara.*, jadwal.*
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
               WHERE kelas.id_kelas = 4
               GROUP BY jadwal.id_jadwal
               ORDER BY jadwal.id_jadwal ASC) AS jadwal USING (id_jadwal)
         LEFT JOIN verifikasi USING (id_berita_acara)
GROUP BY berita_acara.id_berita_acara;
;-- -. . -..- - / . -. - .-. -.--
SELECT berita_acara.*, jadwal.*
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
               WHERE kelas.id_kelas != 4
               GROUP BY jadwal.id_jadwal
               ORDER BY jadwal.id_jadwal ASC) AS jadwal USING (id_jadwal)
         LEFT JOIN verifikasi USING (id_berita_acara)
GROUP BY berita_acara.id_berita_acara;
;-- -. . -..- - / . -. - .-. -.--
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
         LEFT JOIN dosen ON dosen.nidn = verifikasi.nidn_verifikator
WHERE id_berita_acara = '13';
;-- -. . -..- - / . -. - .-. -.--
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
WHERE id_berita_acara = '13';
;-- -. . -..- - / . -. - .-. -.--
SELECT berita_acara.*,
       berita_acara.jam_mulai   AS jam_mulai_pelaksanaan,
       berita_acara.jam_selesai AS jam_selesai_pelaksanaan,
       jadwal.*
FROM berita_acara
         JOIN (SELECT jadwal.*,
                      mata_kuliah.nama_mata_kuliah,
                      mata_kuliah.sks,
                      dosen.nama_lengkap                                                AS nama_dosen,
                      dosen.gelar,
                      ruangan.kode_ruangan,
                      GROUP_CONCAT(CONCAT(' ', kelas.nama_kelas, '\/', kelas.semester)) AS kelas
               FROM jadwal
                        JOIN detail_jadwal USING (id_jadwal)
                        JOIN mata_kuliah USING (id_mata_kuliah)
                        JOIN kelas USING (id_kelas)
                        JOIN dosen USING (id_dosen)
                        JOIN ruangan USING (id_ruangan)
               WHERE id_kelas = '29'
               GROUP BY jadwal.id_jadwal
               ORDER BY jadwal.id_jadwal ASC) AS jadwal USING (id_jadwal)
         LEFT JOIN verifikasi USING (id_berita_acara)
GROUP BY berita_acara.id_berita_acara;
;-- -. . -..- - / . -. - .-. -.--
SELECT berita_acara.*,
       berita_acara.jam_mulai   AS jam_mulai_pelaksanaan,
       berita_acara.jam_selesai AS jam_selesai_pelaksanaan,
       jadwal.*,
       verifikasi.nim_verifikator, verifikasi.nidn_verifikator
FROM berita_acara
         JOIN (SELECT jadwal.*,
                      mata_kuliah.nama_mata_kuliah,
                      mata_kuliah.sks,
                      dosen.nama_lengkap                                                AS nama_dosen,
                      dosen.gelar,
                      ruangan.kode_ruangan,
                      GROUP_CONCAT(CONCAT(' ', kelas.nama_kelas, '\/', kelas.semester)) AS kelas
               FROM jadwal
                        JOIN detail_jadwal USING (id_jadwal)
                        JOIN mata_kuliah USING (id_mata_kuliah)
                        JOIN kelas USING (id_kelas)
                        JOIN dosen USING (id_dosen)
                        JOIN ruangan USING (id_ruangan)
               WHERE id_kelas = '29'
               GROUP BY jadwal.id_jadwal
               ORDER BY jadwal.id_jadwal ASC) AS jadwal USING (id_jadwal)
         LEFT JOIN verifikasi USING (id_berita_acara)
GROUP BY berita_acara.id_berita_acara;
;-- -. . -..- - / . -. - .-. -.--
SELECT berita_acara.*,
       berita_acara.jam_mulai   AS jam_mulai_pelaksanaan,
       berita_acara.jam_selesai AS jam_selesai_pelaksanaan,
       jadwal.*,
       verifikasi.nim_verifikator, verifikasi.nidn_verifikator
FROM berita_acara
         JOIN (SELECT jadwal.*,
                      mata_kuliah.nama_mata_kuliah,
                      mata_kuliah.sks,
                      dosen.nama_lengkap                                                AS nama_dosen,
                      dosen.gelar,
                      ruangan.kode_ruangan,
                      GROUP_CONCAT(CONCAT(' ', kelas.nama_kelas, '\/', kelas.semester)) AS kelas
               FROM jadwal
                        JOIN detail_jadwal USING (id_jadwal)
                        JOIN mata_kuliah USING (id_mata_kuliah)
                        JOIN kelas USING (id_kelas)
                        JOIN dosen USING (id_dosen)
                        JOIN ruangan USING (id_ruangan)
               WHERE id_kelas = '29'
               GROUP BY jadwal.id_jadwal
               ORDER BY jadwal.id_jadwal ASC) AS jadwal USING (id_jadwal)
         LEFT JOIN verifikasi USING (id_berita_acara);
;-- -. . -..- - / . -. - .-. -.--
SELECT `dosen`.*, `program_studi`.`kode_program_studi` AS `kode_prodi`, `program_studi`.`jenjang`, `program_studi`.`nama_program_studi` AS `prodi` FROM `dosen` JOIN `program_studi` USING (`id_program_studi`) WHERE `id_dosen` = '30' ORDER BY `nama_lengkap` ASC;
;-- -. . -..- - / . -. - .-. -.--
SELECT `dosen`.*, `program_studi`.`kode_program_studi` AS `kode_prodi`, `program_studi`.`jenjang`, `program_studi`.`nama_program_studi` AS `prodi` FROM `dosen` JOIN `program_studi` USING (`id_program_studi`) ORDER BY `nama_lengkap` ASC;