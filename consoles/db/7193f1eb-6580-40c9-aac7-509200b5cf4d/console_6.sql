SELECT COUNT(*) FROM (SELECT *
FROM `kabupaten`
JOIN `provinsi` ON `kabupaten`.`id_provinsi` = `provinsi`.`id`) SqueryAux