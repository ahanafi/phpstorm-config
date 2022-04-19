SELECT
       `program_studi`.*,
       `fakultas`.`nama_fakultas` AS `fakultas`,
       `fakultas`.`kode_fakultas`,
       `dosen`.`nama_lengkap` AS `kaprodi`
FROM `program_studi`
    JOIN `fakultas` USING (`id_fakultas`)
    LEFT JOIN `dosen` USING (`id_dosen`)
WHERE program_studi.`id_program_studi` = '1'