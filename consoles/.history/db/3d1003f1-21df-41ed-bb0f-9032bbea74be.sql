SELECT SUM(detail_proforma_invoice.qty) AS totalQty
FROM detail_proforma_invoice WHERE proforma_invoice_id = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(detail_spk.qty) AS totalQtySpk
FROM detail_spk WHERE nomor_pi = '001/PI-FR/IV/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT
            spk.*,
            jenis_spk.nama AS jenis_spk,
            pengesub.nama, pengesub.alamat,
            (
                SELECT DISTINCT(nomor_pi) AS nomor_pi
                FROM detail_spk
                WHERE detail_spk.spk_id = spk.spk_id
            ) AS nomor_pi
        FROM spk
            JOIN pengesub USING (pengesub_id)
            JOIN jenis_spk USING (jenis_spk_id);
;-- -. . -..- - / . -. - .-. -.--
SELECT
            spk.*,
            jenis_spk.nama AS jenis_spk,
            pengesub.nama, pengesub.alamat,
            nomor_pi
        FROM spk, (
                SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi
                FROM detail_spk
            ) AS nomor_pi
            JOIN pengesub USING (pengesub_id)
            JOIN jenis_spk USING (jenis_spk_id);
;-- -. . -..- - / . -. - .-. -.--
SELECT
            spk.*,
            jenis_spk.nama AS jenis_spk,
            pengesub.*,
            nomor_pi
        FROM spk, (
                SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi
                FROM detail_spk
            ) AS nomor_pi
            JOIN pengesub USING (pengesub_id)
            JOIN jenis_spk USING (jenis_spk_id);
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM (
        SELECT * FROM spk
    );
;-- -. . -..- - / . -. - .-. -.--
SELECT *
    FROM (
        SELECT * FROM spk
    ) AS spk;
;-- -. . -..- - / . -. - .-. -.--
SELECT
            spk.*,
            jenis_spk.nama AS jenis_spk,
            pengesub.nama, pengesub.alamat,
            (
                SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi
                FROM detail_spk
                WHERE detail_spk.spk_id = spk.spk_id
            ) AS nomor_pi
        FROM spk
            JOIN pengesub USING (pengesub_id)
            JOIN jenis_spk USING (jenis_spk_id)
    WHERE nomor_spk LIKE '%001%';
;-- -. . -..- - / . -. - .-. -.--
SELECT
            spk.*,
            jenis_spk.nama AS jenis_spk,
            pengesub.nama, pengesub.alamat,
            (
                SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi
                FROM detail_spk
                WHERE detail_spk.spk_id = spk.spk_id
            ) AS nomor_pi
        FROM spk
            JOIN pengesub USING (pengesub_id)
            JOIN jenis_spk USING (jenis_spk_id)
    WHERE nomor_spk LIKE '%001%'
    GROUP BY spk_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT
            spk.*,
            jenis_spk.nama AS jenis_spk,
            pengesub.nama, pengesub.alamat,
            (
                SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi
                FROM detail_spk
                WHERE detail_spk.spk_id = spk.spk_id
            ) AS nomor_pi
        FROM spk
            JOIN pengesub USING (pengesub_id)
            JOIN jenis_spk USING (jenis_spk_id)
    WHERE nomor_spk LIKE '%IV%'
    GROUP BY spk_id
    HAVING nomor_pi LIKE '%IV%';
;-- -. . -..- - / . -. - .-. -.--
SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
;-- -. . -..- - / . -. - .-. -.--
SELECT
            spk.*,
            jenis_spk.nama AS jenis_spk,
            pengesub.nama, pengesub.alamat,
            (
                SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi
                FROM detail_spk
                WHERE detail_spk.spk_id = spk.spk_id
            ) AS nomor_pi
        FROM spk
            JOIN pengesub USING (pengesub_id)
            JOIN jenis_spk USING (jenis_spk_id)
    WHERE nomor_spk LIKE '%IV%'
    GROUP BY nomor_spk
    HAVING nomor_pi LIKE '%IV%';
;-- -. . -..- - / . -. - .-. -.--
SELECT
            spk.*,
            jenis_spk.nama AS jenis_spk,
            pengesub.nama, pengesub.alamat,
            (
                SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi
                FROM detail_spk
                WHERE detail_spk.spk_id = spk.spk_id
            ) AS nomor_pi
        FROM spk
            JOIN pengesub USING (pengesub_id)
            JOIN jenis_spk USING (jenis_spk_id);
;-- -. . -..- - / . -. - .-. -.--
SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi
                FROM detail_spk;
;-- -. . -..- - / . -. - .-. -.--
SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi
                FROM detail_spk
                GROUP BY spk_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT spk_id, nomor_spk from spk;
;-- -. . -..- - / . -. - .-. -.--
SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi, spk_id
                FROM detail_spk
                GROUP BY spk_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT
            spk.*,
            jenis_spk.nama AS jenis_spk,
            pengesub.nama, pengesub.alamat,
            detail_spk.*
        FROM spk
            JOIN pengesub USING (pengesub_id)
            JOIN jenis_spk USING (jenis_spk_id)
            JOIN (
                SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi, spk_id
                FROM detail_spk
                GROUP BY spk_id
            ) AS detail_spk;
;-- -. . -..- - / . -. - .-. -.--
SELECT
            spk.*,
            jenis_spk.nama AS jenis_spk,
            pengesub.nama, pengesub.alamat,
            detail_spk.*
        FROM spk
            JOIN pengesub USING (pengesub_id)
            JOIN jenis_spk USING (jenis_spk_id)
            JOIN (
                SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi, spk_id
                FROM detail_spk
                GROUP BY spk_id
            ) AS detail_spk USING (spk_id);
;-- -. . -..- - / . -. - .-. -.--
SELECT SUBSTRING_INDEX(nomor_pi, '/', 1) AS nomor_PI FROM proforma_invoice;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUBSTRING_INDEX(nomor_pi, '/', 1) AS substr_pi, nomor_pi FROM proforma_invoice;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUBSTRING_INDEX(nomor_pi, '/', 3) AS substr_pi, nomor_pi FROM proforma_invoice;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUBSTRING_INDEX(nomor_pi, '/', 0) AS substr_pi, nomor_pi FROM proforma_invoice;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUBSTRING_INDEX(nomor_pi, '/', 2) AS substr_pi, nomor_pi FROM proforma_invoice;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUBSTRING_INDEX(nomor_pi, '/', -3) AS substr_pi, nomor_pi FROM proforma_invoice;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUBSTRING_INDEX(nomor_pi, '/', -2) AS substr_pi, nomor_pi FROM proforma_invoice;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       SUBSTRING_INDEX(SUBSTRING_INDEX(nomor_pi, '/', -2), '/', 1) AS bulan,
       nomor_pi
FROM proforma_invoice;
;-- -. . -..- - / . -. - .-. -.--
SELECT
       *
FROM proforma_invoice
WHERE
    SUBSTRING_INDEX(SUBSTRING_INDEX(nomor_pi, '/', -2), '/', 1) = 'V';
;-- -. . -..- - / . -. - .-. -.--
SELECT
       *
FROM proforma_invoice
WHERE
    SUBSTRING_INDEX(SUBSTRING_INDEX(nomor_pi, '/', -2), '/', 1) = 'VI';
;-- -. . -..- - / . -. - .-. -.--
SELECT
       *
FROM proforma_invoice
WHERE
    SUBSTRING_INDEX(SUBSTRING_INDEX(nomor_pi, '/', -2), '/', 1) = 'VII';
;-- -. . -..- - / . -. - .-. -.--
SELECT
       *
FROM proforma_invoice
WHERE
    SUBSTRING_INDEX(SUBSTRING_INDEX(nomor_pi, '/', -2), '/', 1) = 'X';
;-- -. . -..- - / . -. - .-. -.--
SELECT
       *
FROM proforma_invoice
WHERE
    SUBSTRING_INDEX(SUBSTRING_INDEX(nomor_pi, '/', -2), '/', 1) = 'XII';
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO `barang` (`barang_id`,`kode_barang`,`nama_barang`,`cbm`,`stok`,`harga_jual`,`keterangan`, `kategori`)
VALUES (1,'RAT01N','Zellie Rattan Chair','0.2',0,0,'test','BARANG'),(2,'RAT02N','Marius rattan armchair','0.2',0,0,'test','BARANG'),(3,'RAT03N','Leontie Rattan Sofa','0.2',0,0,'test','BARANG'),(4,'RAT04N','Esther Rattan Coffee Table 80','0.2',0,0,'test','BARANG'),(5,'RAT06B-80','Isidore black rattan mirror','0.2',0,0,'test','BARANG'),(6,'RAT06N-80','Isidore natural rattan mirror','0.2',0,0,'test','BARANG'),(7,'RAT07N-90','Leontie rattan headboard 90','0.2',0,0,'test','BARANG'),(8,'RAT07N-160','Leontie rattan headboard 160','0.2',0,0,'test','BARANG'),(9,'RAT08N-MD','Adele cane headboard 160','0.2',0,0,'test','BARANG'),(10,'RAT08N-MD-90','Adele cane headboard 90','0.2',0,0,'test','BARANG'),(11,'RAT09N','Marrius Rattan Console','0.2',0,0,'test','BARANG'),(12,'RAT10N','Marrius Rattan Shelf','0.2',0,0,'test','BARANG'),(13,'RAT13N-90','Colette rattan headboard 90','0.2',0,0,'test','BARANG'),(14,'RAT13N-160','Colette rattan headboard 160','0.2',0,0,'test','BARANG'),(15,'EBW-K305N','Kids Chair','0.2',0,0,'test','BARANG'),(16,'EBW-K801N','Kids Vanity w/ Stool','0.2',0,0,'test','BARANG'),(17,'EBW-D405N','Doll Cabinet','0.2',0,0,'test','BARANG'),(18,'07004','SUN MIRROR','0.2',0,0,'test','BARANG'),(19,'07005','PAPASAN CHAIR','0.2',0,0,'test','BARANG'),(20,'07010','SUN SHELVES SMALL','0.2',0,0,'test','BARANG'),(21,'07011','ROUND SHELVES','0.2',0,0,'test','BARANG'),(22,'07016','DIAMOND BASKET','0.2',0,0,'test','BARANG'),(23,'07017','KITCHEN SHELVES','0.2',0,0,'test','BARANG'),(24,'07018','BASKET ON WHEEL','0.2',0,0,'test','BARANG'),(25,'07019','3rd HEADBOARD ','0.2',0,0,'test','BARANG'),(26,'07020','SUN HEADBOARD DOUBLE SIZE','0.2',0,0,'test','BARANG'),(27,'07021','SUN HEADBOARD QUEEN SIZE','0.2',0,0,'test','BARANG'),(28,'07022','WALL SHELVES ','0.2',0,0,'test','BARANG'),(29,'07023','SUN SHELVES LARGE','0.2',0,0,'test','BARANG'),(30,'07024','HEADBOARD TWIN SIZE','0.2',0,0,'test','BARANG'),(31,'07025','FOOTBOARD TWIN SIZE','0.2',0,0,'test','BARANG'),(33,'BL','Bill of Lading','0',0,0,'','FOB'),(34,'CR','Courier','0',0,0,'','FOB'),(35,'CSH','Cushion',NULL,0,NULL,NULL,'FOB'),(36,'ACC','Accessories',NULL,0,NULL,NULL,'FOB'),(37,'WB','Webbing',NULL,0,NULL,NULL,'FOB'),(38,'BOX','Box',NULL,0,NULL,NULL,'FOB'),(39,'FNS','Finishing',NULL,0,NULL,NULL,'FOB'),(40,'FOB','FOB',NULL,0,NULL,NULL,'FOB');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO `barang` (`barang_id`,`kode_barang`,`nama_barang`,`cbm`,`stok`,`harga_jual`,`keterangan`, `kategori`) VALUES (1,'RAT01N','Zellie Rattan Chair','0.2',0,0,'test','BARANG'),(2,'RAT02N','Marius rattan armchair','0.2',0,0,'test','BARANG'),(3,'RAT03N','Leontie Rattan Sofa','0.2',0,0,'test','BARANG'),(4,'RAT04N','Esther Rattan Coffee Table 80','0.2',0,0,'test','BARANG'),(5,'RAT06B-80','Isidore black rattan mirror','0.2',0,0,'test','BARANG'),(6,'RAT06N-80','Isidore natural rattan mirror','0.2',0,0,'test','BARANG'),(7,'RAT07N-90','Leontie rattan headboard 90','0.2',0,0,'test','BARANG'),(8,'RAT07N-160','Leontie rattan headboard 160','0.2',0,0,'test','BARANG'),(9,'RAT08N-MD','Adele cane headboard 160','0.2',0,0,'test','BARANG'),(10,'RAT08N-MD-90','Adele cane headboard 90','0.2',0,0,'test','BARANG'),(11,'RAT09N','Marrius Rattan Console','0.2',0,0,'test','BARANG'),(12,'RAT10N','Marrius Rattan Shelf','0.2',0,0,'test','BARANG'),(13,'RAT13N-90','Colette rattan headboard 90','0.2',0,0,'test','BARANG'),(14,'RAT13N-160','Colette rattan headboard 160','0.2',0,0,'test','BARANG'),(15,'EBW-K305N','Kids Chair','0.2',0,0,'test','BARANG'),(16,'EBW-K801N','Kids Vanity w/ Stool','0.2',0,0,'test','BARANG'),(17,'EBW-D405N','Doll Cabinet','0.2',0,0,'test','BARANG'),(18,'07004','SUN MIRROR','0.2',0,0,'test','BARANG'),(19,'07005','PAPASAN CHAIR','0.2',0,0,'test','BARANG'),(20,'07010','SUN SHELVES SMALL','0.2',0,0,'test','BARANG'),(21,'07011','ROUND SHELVES','0.2',0,0,'test','BARANG'),(22,'07016','DIAMOND BASKET','0.2',0,0,'test','BARANG'),(23,'07017','KITCHEN SHELVES','0.2',0,0,'test','BARANG'),(24,'07018','BASKET ON WHEEL','0.2',0,0,'test','BARANG'),(25,'07019','3rd HEADBOARD ','0.2',0,0,'test','BARANG'),(26,'07020','SUN HEADBOARD DOUBLE SIZE','0.2',0,0,'test','BARANG'),(27,'07021','SUN HEADBOARD QUEEN SIZE','0.2',0,0,'test','BARANG'),(28,'07022','WALL SHELVES ','0.2',0,0,'test','BARANG'),(29,'07023','SUN SHELVES LARGE','0.2',0,0,'test','BARANG'),(30,'07024','HEADBOARD TWIN SIZE','0.2',0,0,'test','BARANG'),(31,'07025','FOOTBOARD TWIN SIZE','0.2',0,0,'test','BARANG'),(33,'BL','Bill of Lading','0',0,0,'','FOB'),(34,'CR','Courier','0',0,0,'','FOB'),(35,'CSH','Cushion',NULL,0,NULL,NULL,'FOB'),(36,'ACC','Accessories',NULL,0,NULL,NULL,'FOB'),(37,'WB','Webbing',NULL,0,NULL,NULL,'FOB'),(38,'BOX','Box',NULL,0,NULL,NULL,'FOB'),(39,'FNS','Finishing',NULL,0,NULL,NULL,'FOB'),(40,'FOB','FOB',NULL,0,NULL,NULL,'FOB');
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO `detail_spk` VALUES (160,115,'001/PI-FR/IV/20',12,60000,'NATURAL',100,6000000),(161,116,'001/PI-FR/IV/20',9,145000,'NATURAL',95,13775000),(162,117,'002/PI-FR/V/20',2,170000,'NATURAL',130,22100000),(163,117,'002/PI-FR/V/20',11,130000,'NATURAL',20,2600000),(164,118,'002/PI-FR/V/20',9,145000,'NATURAL',260,37700000),(165,119,'002/PI-FR/V/20',1,150000,'NATURAL',50,7500000),(166,120,'005/PI-FR/VI/20',2,170000,'NATURAL',100,17000000),(167,120,'005/PI-FR/VI/20',1,150000,'NATURAL',50,7500000),(168,120,'005/PI-FR/VI/20',11,130000,'NATURAL',10,1300000),(169,121,'005/PI-FR/VI/20',1,140000,'NATURAL',145,20300000),(170,122,'005/PI-FR/VI/20',12,65000,'NATURAL',20,1300000),(171,122,'006/PI-FR/VI/20',2,170000,'NATURAL',25,4250000),(172,122,'006/PI-FR/VI/20',1,150000,'NATURAL',20,3000000),(173,122,'006/PI-FR/VI/20',11,130000,'NATURAL',42,5460000),(174,122,'008/PI-FR/VII/20',2,170000,'NATURAL',15,2550000),(175,122,'008/PI-FR/VII/20',12,65000,'NATURAL',25,1625000),(178,124,'006/PI-FR/VI/20',11,130000,'NATURAL',8,1040000),(179,124,'008/PI-FR/VII/20',2,170000,'NATURAL',135,22950000),(180,124,'008/PI-FR/VII/20',11,130000,'NATURAL',10,1300000),(181,124,'009/PI-FR/VIII/20',2,170000,'NATURAL',5,850000),(182,125,'006/PI-FR/VI/20',9,145000,'NATURAL',525,76125000),(183,126,'007/PI-FR/VII/20',8,145000,'NATURAL',660,95700000),(184,126,'007/PI-FR/VII/20',10,85000,'NATURAL',70,5950000),(185,126,'008/PI-FR/VII/20',10,85000,'NATURAL',20,1700000),(186,127,'008/PI-FR/VII/20',1,140000,'NATURAL',115,16100000),(199,114,'001/PI-FR/IV/20',2,170000,'NATURAL',170,28900000),(200,114,'001/PI-FR/IV/20',11,130000,'NATURAL',20,2600000),(201,128,'013/PI-FR/VIII/20',5,61000,'BLACK',55,3355000),(202,128,'013/PI-FR/VIII/20',6,60000,'NATURAL',55,3300000),(203,128,'014/PI-FR/VIII/20',5,61000,'BLACK ',95,5795000),(204,128,'014/PI-FR/VIII/20',6,60000,'NATURAL',95,5700000),(205,129,'015/PI-FR/IX/20',1,140000,'NATURAL',70,9800000),(213,133,'009/PI-FR/VIII/20',14,140000,'NATURAL',194,27160000),(214,133,'010/PI-FR/VIII/20',8,150000,'NATURAL',70,10500000),(215,133,'010/PI-FR/VIII/20',13,90000,'NATURAL',30,2700000),(216,133,'012/PI-FR/VIII/20',7,95000,'NATURAL',30,2850000),(217,134,'009/PI-FR/VIII/20',2,170000,'NATURAL',45,7650000),(218,134,'010/PI-FR/VIII/20',2,170000,'NATURAL',55,9350000),(219,135,'009/PI-FR/VIII/20',9,145000,'NATURAL',180,26100000),(220,136,'010/PI-FR/VIII/20',8,170000,'NATURAL',100,17000000),(221,136,'011/PI-FR/VIII/20',8,170000,'NATURAL',50,8500000),(222,137,'011/PI-FR/VIII/20',3,310000,'NATURAL',30,9300000),(223,138,'012/PI-FR/VIII/20',4,105000,'NATURAL',165,17325000),(224,139,'015/PI-FR/IX/20',9,145000,'NATURAL',60,8700000),(225,140,'017/PI-FR/X/20',9,145000,'NATURAL',400,58000000),(226,141,'011/PI-FR/VIII/20',8,175000,'NATURAL',100,17500000),(227,142,'011/PI-FR/VIII/20',8,185000,'NATURAL',80,14800000),(228,142,'015/PI-FR/IX/20',8,185000,'NATURAL',20,3700000),(229,143,'010/PI-FR/VIII/20',14,150000,'NATURAL',200,30000000),(230,143,'010/PI-FR/VIII/20',13,100000,'NATURAL',70,7000000),(231,143,'012/PI-FR/VIII/20',13,100000,'NATURAL',110,11000000),(232,143,'015/PI-FR/IX/20',13,100000,'NATURAL',20,2000000),(238,145,'017/PI-FR/X/20',1,140000,'NATURAL',30,4200000),(239,146,'013/PI-FR/VIII/20',3,320000,'NATURAL',40,12800000),(240,146,'014/PI-FR/VIII/20',3,320000,'NATURAL',50,16000000),(241,147,'009/PI-FR/VIII/20',14,140000,'NATURAL',186,26040000),(242,147,'010/PI-FR/VIII/20',8,150000,'NATURAL',30,4500000),(243,147,'012/PI-FR/VIII/20',13,90000,'NATURAL',35,3150000),(244,147,'012/PI-FR/VIII/20',7,95000,'NATURAL',30,2850000),(245,147,'015/PI-FR/IX/20',14,140000,'NATURAL',8,1120000),(246,147,'015/PI-FR/IX/20',8,150000,'NATURAL',10,1500000),(247,147,'Khusus Tambahan ',8,150000,'NATURAL',30,4500000),(248,148,'015/PI-FR/IX/20',14,150000,'NATURAL',22,3300000),(249,148,'015/PI-FR/IX/20',13,100000,'NATURAL',20,2000000),(250,148,'015/PI-FR/IX/20',12,70000,'NATURAL',126,8820000),(251,148,'017/PI-FR/X/20',14,150000,'NATURAL',145,21750000),(252,148,'017/PI-FR/X/20',13,100000,'NATURAL',130,13000000),(253,148,'018/PI-FR/X/20',12,70000,'NATURAL',180,12600000),(254,148,'STOCK CRH160',14,150000,'NATURAL',8,1200000);
;-- -. . -..- - / . -. - .-. -.--
INSERT INTO `transaksi_spk` VALUES (141,115,'2020-11-18',12,'-',NULL,100,60000,'KREDIT',6000000),(142,116,'2020-11-18',9,'-',NULL,95,145000,'KREDIT',13775000),(143,117,'2020-11-18',2,'-',NULL,130,170000,'KREDIT',22100000),(144,117,'2020-11-18',11,'-',NULL,20,130000,'KREDIT',2600000),(145,118,'2020-11-18',9,'-',NULL,260,145000,'KREDIT',37700000),(146,119,'2020-11-18',1,'-',NULL,50,150000,'KREDIT',7500000),(147,120,'2020-11-18',2,'-',NULL,100,170000,'KREDIT',17000000),(148,120,'2020-11-18',1,'-',NULL,50,150000,'KREDIT',7500000),(149,120,'2020-11-18',11,'-',NULL,10,130000,'KREDIT',1300000),(150,121,'2020-11-18',1,'-',NULL,145,140000,'KREDIT',20300000),(151,122,'2020-11-18',12,'-',NULL,20,65000,'KREDIT',1300000),(152,122,'2020-11-18',2,'-',NULL,25,170000,'KREDIT',4250000),(153,122,'2020-11-18',1,'-',NULL,20,150000,'KREDIT',3000000),(154,122,'2020-11-18',11,'-',NULL,42,130000,'KREDIT',5460000),(155,122,'2020-11-18',2,'-',NULL,15,170000,'KREDIT',2550000),(156,122,'2020-11-18',12,'-',NULL,25,65000,'KREDIT',1625000),(159,124,'2020-11-18',11,'-',NULL,8,130000,'KREDIT',1040000),(160,124,'2020-11-18',2,'-',NULL,135,170000,'KREDIT',22950000),(161,124,'2020-11-18',11,'-',NULL,10,130000,'KREDIT',1300000),(162,124,'2020-11-18',2,'-',NULL,5,170000,'KREDIT',850000),(163,125,'2020-11-18',9,'-',NULL,525,145000,'KREDIT',76125000),(164,126,'2020-11-18',8,'-',NULL,660,145000,'KREDIT',95700000),(165,126,'2020-11-18',10,'-',NULL,70,85000,'KREDIT',5950000),(166,126,'2020-11-18',10,'-',NULL,20,85000,'KREDIT',1700000),(167,127,'2020-11-18',1,'-',NULL,115,140000,'KREDIT',16100000),(170,115,'2020-04-06',NULL,'ANGGARAN','GIRO',1,2000000,'DEBET',2000000),(171,115,'2020-05-12',NULL,'MUTIARA','GIRO',1,2400000,'DEBET',2400000),(172,115,'2020-05-30',NULL,'PELUNASAN','TUNAI',1,1600000,'DEBET',1600000),(183,114,'2020-11-21',2,'-',NULL,170,170000,'KREDIT',28900000),(184,114,'2020-11-21',11,'-',NULL,20,130000,'KREDIT',2600000),(185,114,'2020-05-12',NULL,'ROTAN - MUTIARA','BAHAN',1,12002000,'DEBET',12002000),(186,114,'2020-05-13',NULL,'ANGGARAN ','TUNAI',1,1288000,'DEBET',1288000),(187,114,'2020-05-21',NULL,'ANGGARAN','TUNAI',1,4000000,'DEBET',4000000),(189,114,'2020-06-03',NULL,'ANGGARAN','TUNAI',1,500000,'DEBET',500000),(190,114,'2020-06-06',NULL,'ANGGARAN','TUNAI',1,4000000,'DEBET',4000000),(191,114,'2020-06-10',NULL,'ANGGARAN','BAHAN',1,500000,'DEBET',500000),(192,114,'2020-06-13',NULL,'ANGGARAN','TUNAI',1,5000000,'DEBET',5000000),(193,114,'2020-06-20',NULL,'PELUNASAN','TUNAI',1,4210000,'DEBET',4210000),(194,128,'2020-11-23',5,'-',NULL,55,61000,'KREDIT',3355000),(195,128,'2020-11-23',6,'-',NULL,55,60000,'KREDIT',3300000),(196,128,'2020-11-23',5,'-',NULL,95,61000,'KREDIT',5795000),(197,128,'2020-11-23',6,'-',NULL,95,60000,'KREDIT',5700000),(198,129,'2020-11-23',1,'-',NULL,70,140000,'KREDIT',9800000),(206,133,'2020-09-24',14,'-',NULL,194,140000,'KREDIT',27160000),(207,133,'2020-09-24',8,'-',NULL,70,150000,'KREDIT',10500000),(208,133,'2020-09-24',13,'-',NULL,30,90000,'KREDIT',2700000),(209,133,'2020-09-24',7,'-',NULL,30,95000,'KREDIT',2850000),(210,134,'2020-11-23',2,'-',NULL,45,170000,'KREDIT',7650000),(211,134,'2020-11-23',2,'-',NULL,55,170000,'KREDIT',9350000),(212,135,'2020-11-23',9,'-',NULL,180,145000,'KREDIT',26100000),(213,136,'2020-11-23',8,'-',NULL,100,170000,'KREDIT',17000000),(214,136,'2020-11-23',8,'-',NULL,50,170000,'KREDIT',8500000),(215,137,'2020-11-23',3,'-',NULL,30,310000,'KREDIT',9300000),(216,138,'2020-11-23',4,'-',NULL,165,105000,'KREDIT',17325000),(217,139,'2020-11-23',9,'-',NULL,60,145000,'KREDIT',8700000),(218,140,'2020-07-27',9,'-',NULL,400,145000,'KREDIT',58000000),(219,141,'2020-11-23',8,'-',NULL,100,175000,'KREDIT',17500000),(220,142,'2020-11-23',8,'-',NULL,80,185000,'KREDIT',14800000),(221,142,'2020-11-23',8,'-',NULL,20,185000,'KREDIT',3700000),(222,143,'2020-11-23',14,'-',NULL,200,150000,'KREDIT',30000000),(223,143,'2020-11-23',13,'-',NULL,70,100000,'KREDIT',7000000),(224,143,'2020-11-23',13,'-',NULL,110,100000,'KREDIT',11000000),(225,143,'2020-11-23',13,'-',NULL,20,100000,'KREDIT',2000000),(231,145,'2020-11-23',1,'-',NULL,30,140000,'KREDIT',4200000),(232,146,'2020-11-23',3,'-',NULL,40,320000,'KREDIT',12800000),(233,146,'2020-11-23',3,'-',NULL,50,320000,'KREDIT',16000000),(234,116,'2020-05-07',NULL,'JUJUR JAYA','BAHAN',1,5891760,'DEBET',5891760),(235,116,'2020-05-29',NULL,'JUJUR JAYA','BAHAN',1,2595960,'DEBET',2595960),(236,116,'2020-05-30',NULL,'ANGGARAN','TUNAI',1,2000000,'DEBET',2000000),(237,116,'2020-06-06',NULL,'ANGGARAN','TUNAI',1,1000000,'DEBET',1000000),(238,116,'2020-06-13',NULL,'ANGGARAN','TUNAI',1,2287280,'DEBET',2287280),(239,118,'2020-06-03',NULL,'JUJUR JAYA ','BAHAN',1,1242000,'DEBET',1242000),(240,118,'2020-06-10',NULL,'PAK KAMIL','BAHAN',1,5122800,'DEBET',5122800),(241,118,'2020-06-12',NULL,'JUJUR JAYA','BAHAN',1,3745800,'DEBET',3745800),(242,118,'2020-06-15',NULL,'JUJUR JAYA','BAHAN',1,4449240,'DEBET',4449240),(243,118,'2020-06-16',NULL,'ANGGARAN','TUNAI',1,1000000,'DEBET',1000000),(244,118,'2020-06-16',NULL,'JUJUR JAYA','BAHAN',1,4375800,'DEBET',4375800),(245,118,'2020-06-20',NULL,'ANGGARAN','TUNAI',1,2000000,'DEBET',2000000),(246,118,'2020-06-27',NULL,'ANGGARAN','TUNAI',1,3000000,'DEBET',3000000),(247,118,'2020-07-04',NULL,'ANGGARAN','TUNAI',1,3000000,'DEBET',3000000),(248,118,'2020-07-11',NULL,'ANGGARAN','TUNAI',1,3000000,'DEBET',3000000),(249,118,'2020-07-18',NULL,'ANGGARAN','TUNAI',1,3000000,'DEBET',3000000),(250,118,'2020-07-25',NULL,'ANGGARAN','TUNAI',1,3764360,'DEBET',3764360),(251,117,'2020-06-27',NULL,'ANGGARAN','TUNAI',1,5000000,'DEBET',5000000),(252,117,'2020-07-04',NULL,'ANGGARAN','TUNAI',1,5000000,'DEBET',5000000),(253,117,'2020-07-11',NULL,'ANGGARAN','TUNAI',1,5000000,'DEBET',5000000),(254,117,'2020-07-18',NULL,'ANGGARAN','BAHAN',1,4000000,'DEBET',4000000),(255,117,'2020-07-25',NULL,'ANGGARAN','TUNAI',1,4000000,'DEBET',4000000),(256,117,'2020-07-25',NULL,'ANGGARAN','TUNAI',1,1000000,'DEBET',1000000),(257,117,'2020-08-03',NULL,'ANGGARAN','TUNAI',1,700000,'DEBET',700000),(258,119,'2020-06-13',NULL,'ANGGARAN','GIRO',1,6000000,'DEBET',6000000),(259,119,'2020-07-30',NULL,'ANGGARAN','TUNAI',1,1000000,'DEBET',1000000),(260,119,'2020-08-20',NULL,'PELUNASAN','GIRO',1,500000,'DEBET',500000),(261,120,'2020-07-13',NULL,'UD SAHABAT','BAHAN',1,6200000,'DEBET',6200000),(262,120,'2020-07-25',NULL,'LUMINTU','BAHAN',1,4495000,'DEBET',4495000),(263,120,'2020-07-30',NULL,'ANGGARAN','TUNAI',1,4000000,'DEBET',4000000),(264,120,'2020-08-01',NULL,'ANGGARAN','TUNAI',1,1900000,'DEBET',1900000),(265,120,'2020-08-02',NULL,'UD SAHABAT','BAHAN',1,5872500,'DEBET',5872500),(266,120,'2020-08-03',NULL,'PELUNASAN','TUNAI',1,3332500,'DEBET',3332500),(267,121,'2020-08-08',NULL,'UD SAHABAT','GIRO',1,7000000,'DEBET',7000000),(268,121,'2020-08-15',NULL,'ANGGARAN','TUNAI',1,4000000,'DEBET',4000000),(269,121,'2020-08-29',NULL,'ANGGARAN','TUNAI',1,3000000,'DEBET',3000000),(270,121,'2020-09-05',NULL,'PELUNASAN','TUNAI',1,6300000,'DEBET',6300000),(271,125,'2020-08-18',NULL,'ANGGARAN','TUNAI',1,2407140,'DEBET',2407140),(272,125,'2020-08-20',NULL,'ANGGARAN','TUNAI',1,2000000,'DEBET',2000000),(273,125,'2020-08-22',NULL,'JUJUR JAYA','BAHAN',1,5001480,'DEBET',5001480),(274,125,'2020-08-26',NULL,'PAK KAMIL','BAHAN',1,4000000,'DEBET',4000000),(275,125,'2020-08-28',NULL,'MASDUKI','BAHAN',1,7162200,'DEBET',7162200),(276,125,'2020-08-29',NULL,'ANGGARAN','TUNAI',1,4000000,'DEBET',4000000),(277,125,'2020-09-04',NULL,'UD CITRA MANDIRI','BAHAN',1,4348800,'DEBET',4348800),(278,125,'2020-09-05',NULL,'ANGGARAN','TUNAI',1,10000000,'DEBET',10000000),(279,125,'2020-09-12',NULL,'ANGGARAN','TUNAI',1,7000000,'DEBET',7000000),(280,125,'2020-09-14',NULL,'PAK KAMIL','BAHAN',1,11000000,'DEBET',11000000),(281,125,'2020-09-19',NULL,'ANGGARAN','TUNAI',1,7000000,'DEBET',7000000),(282,125,'2020-09-26',NULL,'ANGGARAN','TUNAI',1,5000000,'DEBET',5000000),(283,125,'2020-11-24',NULL,'PELUNASAN 1','TUNAI',1,7200000,'DEBET',7200000),(284,125,'2020-10-24',NULL,'PELUNASAN 2','TUNAI',1,5380,'DEBET',5380),(285,122,'2020-07-08',NULL,'LUMINTU','BAHAN',1,1820000,'DEBET',1820000),(286,122,'2020-08-03',NULL,'UD SAHABAT','BAHAN',1,8311000,'DEBET',8311000),(287,122,'2020-08-08',NULL,'ANGGARAAN','TUNAI',1,4000000,'DEBET',4000000),(288,122,'2020-08-13',NULL,'SUNASA','BAHAN',1,837000,'DEBET',837000),(289,122,'2020-08-22',NULL,'BON','TUNAI',1,2000000,'DEBET',2000000),(290,122,'2020-08-29',NULL,'PELUNASAN','TUNAI',1,1217000,'DEBET',1217000),(291,124,'2020-08-15',NULL,'ANGGARAN','TUNAI',1,4000000,'DEBET',4000000),(292,124,'2020-08-22',NULL,'BON','TUNAI',1,2000000,'DEBET',2000000),(293,124,'2020-08-24',NULL,'LUMINTU','BAHAN',1,11030000,'DEBET',11030000),(294,124,'2020-08-29',NULL,'ANGGARAN ','TUNAI',1,475000,'DEBET',475000),(295,124,'2020-09-05',NULL,'ANGGARAN','TUNAI',1,2000000,'DEBET',2000000),(296,124,'2020-08-14',NULL,'UD SAHABAT','BAHAN',1,4960000,'DEBET',4960000),(297,124,'2020-08-14',NULL,'KUBU','BAHAN',1,1675000,'DEBET',1675000),(298,126,'2020-09-18',NULL,'PAK KAMIL','BAHAN',1,10000000,'DEBET',10000000),(299,126,'2020-09-22',NULL,'DP PAK KAMIL','BAHAN',1,5000000,'DEBET',5000000),(300,126,'2020-09-22',NULL,'PAK KAMIL/PELUNASAN','BAHAN',1,7279000,'DEBET',7279000),(301,126,'2020-09-24',NULL,'DP MASDUKI','BAHAN',1,2000000,'DEBET',2000000),(302,126,'2020-09-26',NULL,'MASDUKI','BAHAN',1,5089880,'DEBET',5089880),(303,126,'2020-09-28',NULL,'CITRA MANDIRI','BAHAN',1,7200000,'DEBET',7200000),(304,126,'2020-09-29',NULL,'DP 2 PAK KAMIL','BAHAN',1,13350000,'DEBET',13350000),(305,126,'2020-09-09',NULL,'JASA OVEN KY MINDI','BAHAN',1,3900000,'DEBET',3900000),(306,126,'2020-10-10',NULL,'DP PAK KAMIL','BAHAN',1,2000000,'DEBET',2000000),(307,126,'2020-10-10',NULL,'ANGGARAN','TUNAI',1,7000000,'DEBET',7000000),(308,126,'2020-10-12',NULL,' PAK KAMIL/PELUNASAN','BAHAN',1,4800000,'DEBET',4800000),(309,126,'2020-10-13',NULL,'ANGGARAN/OVEN','BAHAN',1,4500000,'DEBET',4500000),(310,126,'2020-10-17',NULL,'ANGGARAN','TUNAI',1,15000000,'DEBET',15000000),(311,126,'2020-10-20',NULL,'PAK KAMIL','TUNAI',1,9549000,'DEBET',9549000),(312,126,'2020-11-24',NULL,'PELUNASAN','TUNAI',1,6682120,'DEBET',6682120),(313,127,'2020-08-24',NULL,'LUMINTU','BAHAN',1,3540000,'DEBET',3540000),(314,127,'2020-08-25',NULL,'UD SAHABAT','BAHAN',1,3615000,'DEBET',3615000),(315,127,'2020-09-05',NULL,'PELUNASAN','TUNAI',1,8945000,'DEBET',8945000),(316,129,'2020-10-24',NULL,'PELUNASAN','TUNAI',1,9800000,'DEBET',9800000),(317,128,'2020-10-31',NULL,'ANGGARAN','TUNAI',1,15000000,'DEBET',15000000),(318,128,'2020-11-07',NULL,'PELUNASAN','TUNAI',1,3150000,'DEBET',3150000),(322,133,'2020-09-24',NULL,'SAMUJA','BAHAN',1,2520000,'DEBET',2520000),(323,133,'2020-09-26',NULL,'ANGGARAN','TUNAI',1,5000000,'DEBET',5000000),(324,133,'2020-09-26',NULL,'ALDA ROTAN','BAHAN',1,16120000,'DEBET',16120000),(325,133,'2020-09-03',NULL,'ANGGARAN','TUNAI',1,2000000,'DEBET',2000000),(326,133,'2020-10-17',NULL,'ANGGARAN','TUNAI',1,3000000,'DEBET',3000000),(327,134,'2020-08-29',NULL,'ANGGARAN ','TUNAI',1,1308000,'DEBET',1308000),(328,134,'2020-09-19',NULL,'ANGGARAN','TUNAI',1,3000000,'DEBET',3000000),(329,134,'2020-11-25',NULL,'BON','TUNAI',1,6000000,'DEBET',6000000),(330,134,'2020-09-24',NULL,'SAMUJA (U/ SOFA)','BAHAN',1,1260000,'DEBET',1260000),(331,134,'2020-10-31',NULL,'ANGGARAN','TUNAI',1,2000000,'DEBET',2000000),(332,134,'2020-11-01',NULL,'ANGGARAN','TUNAI',1,1000000,'DEBET',1000000),(333,135,'2020-10-24',NULL,'ANGGARAN','TUNAI',1,8312500,'DEBET',8312500),(334,135,'2020-10-31',NULL,'ANGGARAN','TUNAI',1,15000000,'DEBET',15000000),(335,135,'2020-11-07',NULL,'PELUNASAN','TUNAI',1,2787500,'DEBET',2787500),(336,136,'2020-11-03',NULL,'NIKS RATTAN','BAHAN',1,7184000,'DEBET',7184000),(337,136,'2020-11-07',NULL,'ANGGARAN','TUNAI',1,5000000,'DEBET',5000000),(338,136,'2020-11-14',NULL,'ANGGARAN','TUNAI',1,2000000,'DEBET',2000000),(339,137,'2020-10-31',NULL,'PELUNASAN','TUNAI',1,9300000,'DEBET',9300000),(340,141,'2020-11-04',NULL,'ANGGARAN','TUNAI',1,8750000,'DEBET',8750000),(341,141,'2020-11-14',NULL,'PELUNASAN','TUNAI',1,8750000,'DEBET',8750000),(342,142,'2020-11-07',NULL,'ANGGARAN','TUNAI',1,9250000,'DEBET',9250000),(343,143,'2020-10-02',NULL,'ANGGARAN','TUNAI',1,25000000,'DEBET',25000000),(346,139,'2020-11-07',NULL,'ANGGARAN ','TUNAI',1,6000000,'DEBET',6000000),(347,139,'2020-11-13',NULL,'MASKANDAH','BAHAN',1,1870000,'DEBET',1870000),(348,138,'2020-10-24',NULL,'JAWIT','BAHAN',1,2622000,'DEBET',2622000),(349,138,'2020-10-24',NULL,'ANGGARAN','TUNAI',1,2000000,'DEBET',2000000),(350,138,'2020-10-31',NULL,'ANGGARAN','TUNAI',1,2500000,'DEBET',2500000),(351,140,'2020-11-14',NULL,'ANGGARAN','TUNAI',1,10000000,'DEBET',10000000),(352,140,'2020-11-20',NULL,'WEBBING 45 CM','TUNAI',1,1518250,'DEBET',1518250),(353,140,'2020-11-17',NULL,'MASDUKI','BAHAN',1,13480200,'DEBET',13480200),(354,147,'2020-11-26',14,'-',NULL,186,140000,'KREDIT',26040000),(355,147,'2020-11-26',8,'-',NULL,30,150000,'KREDIT',4500000),(356,147,'2020-11-26',13,'-',NULL,35,90000,'KREDIT',3150000),(357,147,'2020-11-26',7,'-',NULL,30,95000,'KREDIT',2850000),(358,147,'2020-11-26',14,'-',NULL,8,140000,'KREDIT',1120000),(359,147,'2020-11-26',8,'-',NULL,10,150000,'KREDIT',1500000),(360,147,'2020-11-26',8,'-',NULL,30,150000,'KREDIT',4500000),(361,147,'2020-09-17',NULL,'TND ROTAN','BAHAN',1,3420000,'DEBET',3420000),(362,147,'2020-09-23',NULL,'TND ROTAN','BAHAN',1,3348750,'DEBET',3348750),(363,147,'2020-09-24',NULL,'SAMUJA','BAHAN',1,1260000,'DEBET',1260000),(364,147,'2020-09-26',NULL,'ANGGARAN','TUNAI',1,4000000,'DEBET',4000000),(365,147,'2020-10-05',NULL,'ANGGARAN','TUNAI',1,2000000,'DEBET',2000000),(366,147,'2020-10-06',NULL,'FR/SURYA INDAH','BAHAN',1,4960000,'DEBET',4960000),(367,147,'2020-10-10',NULL,'ANGGARAN','TUNAI',1,2000000,'DEBET',2000000),(368,147,'2020-10-12',NULL,'UD SAHABAT','BAHAN',1,11520000,'DEBET',11520000),(369,147,'2020-10-12',NULL,'JUNEDI/SIBALIU','BAHAN',1,1176000,'DEBET',1176000),(370,147,'2020-11-05',NULL,'INTI KUBU/JAWIT','BAHAN',1,2783000,'DEBET',2783000),(371,147,'2020-11-14',NULL,'ANGGARAN','TUNAI',1,2000000,'DEBET',2000000),(372,147,'2020-11-16',NULL,'ANGGARAN','TUNAI',1,500000,'DEBET',500000),(373,147,'2020-11-07',NULL,'ANGGARAN','TUNAI',1,2000000,'DEBET',2000000),(374,148,'2020-11-26',14,'-',NULL,22,150000,'KREDIT',3300000),(375,148,'2020-11-26',13,'-',NULL,20,100000,'KREDIT',2000000),(376,148,'2020-11-26',12,'-',NULL,126,70000,'KREDIT',8820000),(377,148,'2020-11-26',14,'-',NULL,145,150000,'KREDIT',21750000),(378,148,'2020-11-26',13,'-',NULL,130,100000,'KREDIT',13000000),(379,148,'2020-11-26',12,'-',NULL,180,70000,'KREDIT',12600000),(380,148,'2020-11-26',14,'-',NULL,8,150000,'KREDIT',1200000);
;-- -. . -..- - / . -. - .-. -.--
DELETE FROM spk WHERE jenis_spk_id = 8;
;-- -. . -..- - / . -. - .-. -.--
SELECT detail_spk.*,
		barang.nama_barang, barang.kode_barang,
		proforma_invoice.proforma_invoice_id AS id_pi
	FROM detail_spk
	JOIN barang USING (barang_id)
	LEFT JOIN proforma_invoice USING (nomor_pi)
	WHERE spk_id = 159;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT(spk_id), spk.*,
        pengesub.nama, pengesub.alamat,
        jenis_spk.nama AS jenis_spk
    FROM detail_spk
    JOIN spk USING (spk_id)
    JOIN pengesub USING (pengesub_id)
    JOIN jenis_spk USING (jenis_spk_id)
    WHERE nomor_pi =3;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT(spk_id), spk.*,
        pengesub.nama, pengesub.alamat,
        jenis_spk.nama AS jenis_spk
    FROM detail_spk
    JOIN spk USING (spk_id)
    JOIN pengesub USING (pengesub_id)
    JOIN jenis_spk USING (jenis_spk_id)
    WHERE nomor_pi = '005/PI-FR/VI/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT(spk_id), spk.*,
        pengesub.nama, pengesub.alamat,
        jenis_spk.nama AS jenis_spk
    FROM detail_spk
    JOIN spk USING (spk_id)
    JOIN jenis_spk USING (jenis_spk_id)
    LEFT JOIN pengesub USING (pengesub_id)
    WHERE nomor_pi = '005/PI-FR/VI/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT(spk_id), spk.*,
        pengesub.nama, pengesub.alamat,
        jenis_spk.nama AS jenis_spk
    FROM detail_spk
    JOIN spk USING (spk_id)
    LEFT JOIN pengesub USING (pengesub_id)
    JOIN jenis_spk USING (jenis_spk_id)
    WHERE nomor_pi = '005/PI-FR/VI/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT transaksi.*, kategori.kategori, sub_kategori.sub_kategori
    FROM transaksi
    JOIN kategori ON transaksi_kategori = kategori_id
    LEFT JOIN sub_kategori ON transaksi_sub_kategori = sub_kategori_id
WHERE  `transaksi_tanggal` = '2020-12-01' ORDER BY transaksi_id   ASC   LIMIT 0 ,10;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(qty) AS total_qty
FROM detail_spk
WHERE nomor_pi = '001/PI-FR/IV/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(qty) AS total_qty
FROM detail_proforma_invoice
JOIN proforma_invoice USING (proforma_invoice_id)
WHERE nomor_pi = '001/PI-FR/IV/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(qty) AS total_qty
FROM detail_spk
JOIN spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20' AND spk.jenis_spk_id = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(qty) AS total_qty, jenis_spk_id
FROM detail_spk
JOIN spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT(jenis_spk_id), SUM(qty) AS total_qty
FROM detail_spk
JOIN spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT barang_id, spk_id, qty, jenis_spk_id, nomor_pi
FROM detail_spk
    JOIN spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20' AND jenis_spk_id = '1';
;-- -. . -..- - / . -. - .-. -.--
SELECT barang_id, spk_id, qty, jenis_spk_id, nomor_pi
FROM detail_spk
    JOIN spk USING (spk_id)
WHERE nomor_pi = '005/PI-FR/VI/20' AND jenis_spk_id = '2';
;-- -. . -..- - / . -. - .-. -.--
SELECT barang_id, spk_id, qty, jenis_spk_id, nomor_pi
FROM detail_spk
    JOIN spk USING (spk_id)
WHERE nomor_pi = '005/PI-FR/VI/20' AND jenis_spk_id = '3';
;-- -. . -..- - / . -. - .-. -.--
SELECT barang_id, spk_id, qty, jenis_spk_id, nomor_pi
FROM detail_spk
    JOIN spk USING (spk_id)
WHERE nomor_pi = '005/PI-FR/VI/20' AND jenis_spk_id = '1';
;-- -. . -..- - / . -. - .-. -.--
SELECT *
from detail_proforma_invoice
join proforma_invoice pi on detail_proforma_invoice.proforma_invoice_id = pi.proforma_invoice_id
where nomor_pi = '005/PI-FR/VI/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT barang_id, qty
from detail_proforma_invoice
join proforma_invoice pi on detail_proforma_invoice.proforma_invoice_id = pi.proforma_invoice_id
where nomor_pi = '005/PI-FR/VI/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(qty) AS total_qty_pi
from detail_proforma_invoice
join proforma_invoice pi on detail_proforma_invoice.proforma_invoice_id = pi.proforma_invoice_id
where nomor_pi = '005/PI-FR/VI/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(qty) as total_qty_spk
FROM detail_spk
    JOIN spk USING (spk_id)
WHERE nomor_pi = '005/PI-FR/VI/20' AND jenis_spk_id = '1';
;-- -. . -..- - / . -. - .-. -.--
SELECT detail_spk.*,
		barang.nama_barang, barang.kode_barang,
		proforma_invoice.proforma_invoice_id AS id_pi
	FROM detail_spk
	JOIN barang USING (barang_id)
	LEFT JOIN proforma_invoice USING (nomor_pi)
	WHERE spk_id = 161;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(qty) as total_qty
                FROM detail_proforma_invoice
                WHERE proforma_invoice_id =;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(qty) as total_qty
                FROM detail_proforma_invoice
                WHERE proforma_invoice_id =2;
;-- -. . -..- - / . -. - .-. -.--
SELECT spk_id FROM spk WHERE jenis_spk_id = 2;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM spk WHERE jenis_spk_id = 2;
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*) AS jumlah FROM spk GROUP BY jenis_spk_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*) AS jumlah,
       jenis_spk.nama AS jenis_spk
FROM spk
JOIN jenis_spk USING (jenis_spk_id)
GROUP BY jenis_spk_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM spk
WHERE jenis_spk_id = 2;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM spk
JOIN detail_spk ds on spk.spk_id = ds.spk_id
WHERE jenis_spk_id = 2;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM spk
JOIN detail_spk ds on spk.spk_id = ds.spk_id
WHERE jenis_spk_id = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    SUM(qty) AS total_qty,
    nomor_pi
FROM spk
JOIN detail_spk ds on spk.spk_id = ds.spk_id
WHERE jenis_spk_id = 1
GROUP BY nomor_pi;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    SUM(qty) AS total_qty,
    nomor_pi
FROM spk
JOIN detail_spk ds on spk.spk_id = ds.spk_id
WHERE jenis_spk_id = 2
GROUP BY nomor_pi;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    SUM(qty) AS total_qty #, nomor_pi
FROM spk
JOIN detail_spk ds on spk.spk_id = ds.spk_id
WHERE jenis_spk_id = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    SUM(qty) AS total_qty #, nomor_pi
FROM spk
JOIN detail_spk ds on spk.spk_id = ds.spk_id
WHERE jenis_spk_id = 1
GROUP BY nomor_pi;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    SUM(qty) as total_qty
FROM proforma_invoice
JOIN detail_proforma_invoice dpi on proforma_invoice.proforma_invoice_id = dpi.proforma_invoice_id
GROUP BY nomor_pi;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    SUM(qty) as total_qty, nomor_pi
FROM proforma_invoice
JOIN detail_proforma_invoice dpi on proforma_invoice.proforma_invoice_id = dpi.proforma_invoice_id
GROUP BY nomor_pi;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    SUM(qty) AS total_qty , nomor_pi
FROM spk
JOIN detail_spk ds on spk.spk_id = ds.spk_id
WHERE jenis_spk_id = 1
GROUP BY nomor_pi;
;-- -. . -..- - / . -. - .-. -.--
proforma_invoice_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    SUM(qty) as total_qty, nomor_pi, proforma_invoice_id
FROM proforma_invoice
JOIN detail_proforma_invoice USING(proforma_invoice_id)
GROUP BY nomor_pi;
;-- -. . -..- - / . -. - .-. -.--
SELECT
    SUM(qty) AS total_qty_spk , nomor_pi
FROM spk
JOIN detail_spk USING(spk_id)
WHERE jenis_spk_id = 1
GROUP BY nomor_pi;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(qty) AS total_qty
FROM spk
JOIN detail_spk USING (spk_id)
WHERE jenis_spk_id = 1;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(qty) AS total_qty
FROM spk
JOIN detail_spk USING (spk_id)
WHERE jenis_spk_id = 1
AND nomor_pi = '002/PI-FR/V/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(qty) AS total_qty
FROM spk
JOIN detail_spk USING (spk_id)
WHERE jenis_spk_id = 2
AND nomor_pi = '002/PI-FR/V/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT detail_spk.*,
       barang.*,
       spk.nomor_spk,
       spk.spk_id
FROM detail_spk
    JOIN barang USING (barang_id)
    JOIN spk USING (spk_id)
WHERE spk_id IN (1,2);
;-- -. . -..- - / . -. - .-. -.--
SELECT detail_spk.qty,
       barang.nama_barang,
       barang.barang_id,
       spk.nomor_spk,
       spk.spk_id
FROM detail_spk
    JOIN barang USING (barang_id)
    JOIN spk USING (spk_id)
WHERE spk_id IN (1,2);
;-- -. . -..- - / . -. - .-. -.--
SELECT detail_spk.qty AS qty_spk,
       barang.nama_barang,
       detail_spk.barang_id AS detail_spk_barang_id,
       spk.nomor_spk,
       spk.spk_id
FROM detail_spk
    JOIN barang USING (barang_id)
    JOIN spk USING (spk_id)
WHERE spk_id IN (1,2);
;-- -. . -..- - / . -. - .-. -.--
SELECT detail.*, brg.barang_id, brg.nama_barang, brg.kode_barang,
    spk.nomor_spk
    FROM detail_surat_jalan AS detail
    JOIN barang AS brg USING (barang_id)
    JOIN spk USING (spk_id)
    WHERE surat_id = 6;
;-- -. . -..- - / . -. - .-. -.--
SELECT detail_surat_jalan.*, barang.*, spk.nomor_spk
                        FROM detail_surat_jalan
						JOIN barang USING (barang_id)
						JOIN spk USING (spk_id)
						WHERE surat_id = '6'
						AND detail_surat_jalan.spk_id IN ('1');
;-- -. . -..- - / . -. - .-. -.--
SELECT detail_surat_jalan.*, barang.*, spk.nomor_spk
                        FROM detail_surat_jalan
						JOIN barang USING (barang_id)
						JOIN spk USING (spk_id)
						WHERE surat_id = '6'
						AND spk_id IN ('1');
;-- -. . -..- - / . -. - .-. -.--
SELECT detail_surat_jalan.*, detail_surat_jalan.qty AS qty_masuk,
       barang.*,
       spk.nomor_spk,
       detail_spk.qty AS qty_spk
    FROM detail_surat_jalan
    JOIN barang USING (barang_id)
    JOIN spk USING (spk_id)
    JOIN detail_spk USING (spk_id)
    WHERE surat_id = '6'
    AND spk_id IN ('1')
GROUP BY barang.barang_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT detail_surat_jalan.*, detail_surat_jalan.qty AS qty_masuk,
       barang.barang_id, barang.nama_barang, barang.kode_barang,
       spk.nomor_spk,
       detail_spk.qty AS qty_spk
    FROM detail_surat_jalan
    JOIN barang USING (barang_id)
    JOIN spk USING (spk_id)
    JOIN detail_spk USING (spk_id)
    WHERE surat_id = '6'
    AND spk_id IN ('1')
GROUP BY barang.barang_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT proforma_invoice.*, pemesan.nama_pemesan, pemesan.pic, mata_uang.simbol, mata_uang.nama_mata_uang FROM proforma_invoice JOIN pemesan USING (pemesan_id) JOIN mata_uang USING (mata_uang_id) WHERE tanggal_pi BETWEEN '2021/02/01' AND '2021/03/31';
;-- -. . -..- - / . -. - .-. -.--
SELECT proforma_invoice.*, pemesan.nama_pemesan, pemesan.pic, mata_uang.simbol, mata_uang.nama_mata_uang FROM proforma_invoice JOIN pemesan USING (pemesan_id) JOIN mata_uang USING (mata_uang_id) WHERE tanggal_pi BETWEEN '2020/02/01' AND '2021/03/31';
;-- -. . -..- - / . -. - .-. -.--
SELECT transaksi.*, kategori, sub_kategori FROM transaksi JOIN kategori ON transaksi_kategori = kategori_id LEFT JOIN sub_kategori ON transaksi_sub_kategori = sub_kategori_id WHERE transaksi_tanggal BETWEEN '2021/03/28' AND '2021/03/31';
;-- -. . -..- - / . -. - .-. -.--
SELECT
    spk.*,
    jenis_spk.nama AS jenis_spk,
    pengesub.*,
    detail_spk.*
FROM spk
    LEFT JOIN pengesub USING (pengesub_id)
    JOIN jenis_spk USING (jenis_spk_id)
    JOIN (
        SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi, spk_id
        FROM detail_spk
        GROUP BY spk_id
    ) AS detail_spk USING (spk_id);
;-- -. . -..- - / . -. - .-. -.--
SELECT spk.*, jenis_spk.nama AS jenis_spk, pengesub.*, detail_spk.* FROM spk LEFT JOIN pengesub USING (pengesub_id) JOIN jenis_spk USING (jenis_spk_id) JOIN ( SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi, spk_id FROM detail_spk GROUP BY spk_id ) AS detail_spk USING (spk_id);
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(nominal) AS total FROM transaksi_spk, spk, proforma_invoice, detail_spk
    WHERE transaksi_spk.spk_id = spk.spk_id
AND spk.spk_id = detail_spk.spk_id
AND detail_spk.nomor_pi = proforma_invoice.nomor_pi
AND transaksi_spk.jenis_bon = 'BAHAN'
AND proforma_invoice_id = 2;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(nominal) AS total FROM transaksi_spk, spk, proforma_invoice, detail_spk
    WHERE transaksi_spk.spk_id = spk.spk_id
AND spk.spk_id = detail_spk.spk_id
AND detail_spk.nomor_pi = proforma_invoice.nomor_pi
AND transaksi_spk.jenis_bon = 'TUNAI'
AND proforma_invoice_id = 2;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(nominal) AS total FROM transaksi_spk, spk, proforma_invoice, detail_spk
    WHERE transaksi_spk.spk_id = spk.spk_id
AND spk.spk_id = detail_spk.spk_id
AND detail_spk.nomor_pi = proforma_invoice.nomor_pi
AND transaksi_spk.jenis_bon = 'GIRO'
AND proforma_invoice_id = 2;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(transaksi_spk.nominal) AS total FROM transaksi_spk, spk, proforma_invoice, detail_spk
    WHERE transaksi_spk.spk_id = spk.spk_id
AND spk.spk_id = detail_spk.spk_id
AND detail_spk.nomor_pi = proforma_invoice.nomor_pi
AND transaksi_spk.jenis_bon = 'GIRO'
AND proforma_invoice_id = 2;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(transaksi_spk.nominal) AS total FROM transaksi_spk, spk, proforma_invoice, detail_spk
    WHERE transaksi_spk.spk_id = spk.spk_id
AND spk.spk_id = detail_spk.spk_id
AND detail_spk.nomor_pi = proforma_invoice.nomor_pi
AND transaksi_spk.jenis_bon = 'BAHAN'
AND proforma_invoice_id = 2;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(transaksi_spk.nominal) AS total FROM transaksi_spk, spk, proforma_invoice, detail_spk
    WHERE transaksi_spk.spk_id = spk.spk_id
AND spk.spk_id = detail_spk.spk_id
AND detail_spk.nomor_pi = proforma_invoice.nomor_pi
AND transaksi_spk.jenis_bon = 'TUNAI'
AND proforma_invoice_id = 2;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(transaksi_spk.nominal) AS total FROM transaksi_spk
JOIN spk USING (spk_id)
WHERE transaksi_spk.jenis_bon = 'TUNAI'
AND spk_id = 3;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(transaksi_spk.nominal) AS total FROM transaksi_spk
JOIN spk USING (spk_id)
WHERE transaksi_spk.jenis_bon = 'GIRO'
AND spk_id = 3;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(transaksi_spk.nominal) AS total FROM transaksi_spk
JOIN spk USING (spk_id)
WHERE spk_id = 3;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(transaksi_spk.nominal) AS total FROM transaksi_spk
JOIN spk USING (spk_id)
WHERE transaksi_spk.jenis_bon = 'BAHAN'
AND spk_id = 3;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(transaksi_spk.nominal) AS total FROM transaksi_spk
WHERE transaksi_spk.jenis_bon = 'TUNAI'
AND spk_id = 3;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(transaksi_spk.nominal) AS total, jenis_bon FROM transaksi_spk
WHERE spk_id = 3
GROUP BY jenis_bon;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(transaksi_spk.nominal) AS total FROM transaksi_spk
WHERE spk_id = 3
AND jenis_bon = '';
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(transaksi_spk.nominal) AS total FROM transaksi_spk
WHERE spk_id = 3
AND jenis_bon IS NULL;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(total) AS total
FROM spk
JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT total
FROM spk
JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM spk
RIGHT JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM spk
LEFT JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT *
FROM spk
JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT(total)
FROM spk
JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(DISTINCT(total))
FROM spk
JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(nominal) FROM transaksi_spk
JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT nominal FROM transaksi_spk
JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT nominal, transaksi_spk_id FROM transaksi_spk
JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20';
;-- -. . -..- - / . -. - .-. -.--
nominal;
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT(transaksi_spk_id), nominal FROM transaksi_spk
JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT(transaksi_spk_id), nominal FROM transaksi_spk
JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20'
AND jenis_transaksi = 'DEBET';
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(DISTINCT(nominal)) FROM transaksi_spk
JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20'
AND jenis_transaksi = 'DEBET';
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(nominal) FROM transaksi_spk
JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20'
AND jenis_transaksi = 'DEBET';
;-- -. . -..- - / . -. - .-. -.--
SELECT nominal FROM transaksi_spk
JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20'
AND jenis_transaksi = 'DEBET';
;-- -. . -..- - / . -. - .-. -.--
SELECT nominal, transaksi_spk_id FROM transaksi_spk
JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20'
AND jenis_transaksi = 'DEBET';
;-- -. . -..- - / . -. - .-. -.--
SELECT nominal, DISTINCT transaksi_spk_id FROM transaksi_spk
JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20'
AND jenis_transaksi = 'DEBET';
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT (transaksi_spk_id), nominal FROM transaksi_spk
JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20'
AND jenis_transaksi = 'DEBET';
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT SUM(nominal) FROM transaksi_spk
JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20'
AND jenis_transaksi = 'DEBET';
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM transaksi_spk;
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(nominal)
FROM detail_spk
JOIN transaksi_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20'
AND jenis_transaksi = 'DEBET';
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(nominal)
FROM detail_spk
JOIN transaksi_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20'
AND jenis_transaksi = 'DEBET'
HAVING COUNT(DISTINCT transaksi_spk_id);
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM transaksi_spk
JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20'
AND jenis_transaksi = 'DEBET';
;-- -. . -..- - / . -. - .-. -.--
SELECT transaksi_spk_id, nominal FROM transaksi_spk
JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20'
AND jenis_transaksi = 'DEBET';
;-- -. . -..- - / . -. - .-. -.--
SELECT DISTINCT transaksi_spk_id, nominal FROM transaksi_spk
JOIN detail_spk USING (spk_id)
WHERE nomor_pi = '001/PI-FR/IV/20'
AND jenis_transaksi = 'DEBET';
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(nominal) AS total FROM (
  SELECT DISTINCT transaksi_spk_id, nominal
  FROM transaksi_spk
           JOIN detail_spk USING (spk_id)
  WHERE nomor_pi = '001/PI-FR/IV/20'
    AND jenis_transaksi = 'DEBET'
);
;-- -. . -..- - / . -. - .-. -.--
SELECT SUM(nominal) AS total FROM (
  SELECT DISTINCT transaksi_spk_id, nominal
  FROM transaksi_spk
           JOIN detail_spk USING (spk_id)
  WHERE nomor_pi = '001/PI-FR/IV/20'
    AND jenis_transaksi = 'DEBET'
) AS transaksi_spk;
;-- -. . -..- - / . -. - .-. -.--
SELECT proforma_invoice.*, pemesan.nama_pemesan, pemesan.pic, mata_uang.simbol, mata_uang.nama_mata_uang FROM proforma_invoice JOIN pemesan USING (pemesan_id) JOIN mata_uang USING (mata_uang_id) WHERE tanggal_pi BETWEEN '2020-01-01' AND '2021-03-31';
;-- -. . -..- - / . -. - .-. -.--
SELECT spk.*, jenis_spk.nama AS jenis_spk, pengesub.*, detail_spk.* FROM spk LEFT JOIN pengesub USING (pengesub_id) JOIN jenis_spk USING (jenis_spk_id) JOIN ( SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi, spk_id FROM detail_spk GROUP BY spk_id ) AS detail_spk USING (spk_id) WHERE tanggal_spk BETWEEN '2020-01-01' AND '2021-03-31';
;-- -. . -..- - / . -. - .-. -.--
SELECT spk.*, jenis_spk.nama AS jenis_spk, pengesub.*, detail_spk.* FROM spk LEFT JOIN pengesub USING (pengesub_id) JOIN jenis_spk USING (jenis_spk_id) JOIN ( SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi, spk_id FROM detail_spk GROUP BY spk_id ) AS detail_spk USING (spk_id) WHERE tanggal_spk BETWEEN '2020-01-01' AND '2021-04-31';
;-- -. . -..- - / . -. - .-. -.--
SELECT spk.*, jenis_spk.nama AS jenis_spk, pengesub.*, detail_spk.*
FROM spk
	LEFT JOIN pengesub USING (pengesub_id)
	JOIN jenis_spk USING (jenis_spk_id)
	JOIN (
		SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi, spk_id
			FROM detail_spk
		GROUP BY spk_id
		) AS detail_spk USING (spk_id)
	WHERE tanggal_spk BETWEEN '2020-01-01' AND '2021-04-30';
;-- -. . -..- - / . -. - .-. -.--
SELECT spk.*, jenis_spk.nama AS jenis_spk, pengesub.*, detail_spk.* FROM spk LEFT JOIN pengesub USING (pengesub_id) JOIN jenis_spk USING (jenis_spk_id) JOIN ( SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi, spk_id FROM detail_spk GROUP BY spk_id ) AS detail_spk USING (spk_id) WHERE tanggal_spk BETWEEN '2020-01-01' AND '2021-04-30' SELECT spk.*, jenis_spk.nama AS jenis_spk, pengesub.*, detail_spk.* FROM spk LEFT JOIN pengesub USING (pengesub_id) JOIN jenis_spk USING (jenis_spk_id) JOIN ( SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi, spk_id FROM detail_spk GROUP BY spk_id ) AS detail_spk USING (spk_id) WHERE tanggal_spk BETWEEN '2020-01-01' AND '2021-04-30' AND nomor_pi LIKE '%001/PI-FR/IV/20%';
;-- -. . -..- - / . -. - .-. -.--
SELECT spk.*, jenis_spk.nama AS jenis_spk, pengesub.*, detail_spk.* FROM spk LEFT JOIN pengesub USING (pengesub_id) JOIN jenis_spk USING (jenis_spk_id) JOIN ( SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi, spk_id FROM detail_spk GROUP BY spk_id ) AS detail_spk USING (spk_id) WHERE tanggal_spk BETWEEN '2020-01-01' AND '2021-04-30' SELECT spk.*, jenis_spk.nama AS jenis_spk, pengesub.*, detail_spk.* FROM spk LEFT JOIN pengesub USING (pengesub_id) JOIN jenis_spk USING (jenis_spk_id) JOIN ( SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi, spk_id FROM detail_spk GROUP BY spk_id ) AS detail_spk USING (spk_id) WHERE tanggal_spk BETWEEN '2020-01-01' AND '2021-04-30' AND nomor_pi LIKE '001/PI-FR/IV/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT spk.*, jenis_spk.nama AS jenis_spk, pengesub.*, detail_spk.* FROM spk LEFT JOIN pengesub USING (pengesub_id) JOIN jenis_spk USING (jenis_spk_id) JOIN ( SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi, spk_id FROM detail_spk GROUP BY spk_id ) AS detail_spk USING (spk_id) WHERE tanggal_spk BETWEEN '2020-01-01' AND '2021-04-30';
;-- -. . -..- - / . -. - .-. -.--
SELECT spk.*, jenis_spk.nama AS jenis_spk, pengesub.*, detail_spk.*
FROM spk
    LEFT JOIN pengesub USING (pengesub_id)
    JOIN jenis_spk USING (jenis_spk_id)
    JOIN (
        SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi, spk_id
        FROM detail_spk
        GROUP BY spk_id
        ) AS detail_spk USING (spk_id)
WHERE tanggal_spk BETWEEN '2020-01-01' AND '2021-04-30'
  AND nomor_pi LIKE '001/PI-FR/IV/20';
;-- -. . -..- - / . -. - .-. -.--
SELECT spk.*, jenis_spk.nama AS jenis_spk, pengesub.*, detail_spk.*
FROM spk
    LEFT JOIN pengesub USING (pengesub_id)
    JOIN jenis_spk USING (jenis_spk_id)
    JOIN (
        SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi, spk_id
        FROM detail_spk
        GROUP BY spk_id
        ) AS detail_spk USING (spk_id)
WHERE tanggal_spk BETWEEN '2020-01-01' AND '2021-04-30'
  AND nomor_pi LIKE '%001/PI-FR/IV/20%';
;-- -. . -..- - / . -. - .-. -.--
SELECT spk.*, jenis_spk.nama AS jenis_spk, pengesub.*, detail_spk.*
FROM spk
    LEFT JOIN pengesub USING (pengesub_id)
    JOIN jenis_spk USING (jenis_spk_id)
    JOIN (
        SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi, spk_id
        FROM detail_spk
        GROUP BY spk_id
        ) AS detail_spk USING (spk_id)
WHERE tanggal_spk BETWEEN '2020-01-01' AND '2021-04-30'
  AND nomor_pi LIKE '%006/PI-FR/VI/20%';
;-- -. . -..- - / . -. - .-. -.--
SELECT spk.*, jenis_spk.nama AS jenis_spk, pengesub.*, detail_spk.*
FROM spk
    LEFT JOIN pengesub USING (pengesub_id)
    JOIN jenis_spk USING (jenis_spk_id)
    JOIN (
        SELECT GROUP_CONCAT(DISTINCT(nomor_pi) SEPARATOR ',') AS nomor_pi, spk_id
        FROM detail_spk
        GROUP BY spk_id
        ) AS detail_spk USING (spk_id)
WHERE tanggal_spk BETWEEN '2020-01-01' AND '2021-04-30'
  AND nomor_pi LIKE '%005/PI-FR/VI/20%';
;-- -. . -..- - / . -. - .-. -.--
SELECT transaksi.* FROM transaksi
JOIN transaksi_spk
WHERE transaksi_tanggal = transaksi_spk.tanggal
AND transaksi_nominal = nominal;
;-- -. . -..- - / . -. - .-. -.--
SELECT transaksi.*, transaksi_spk.spk_id FROM transaksi
JOIN transaksi_spk
WHERE transaksi_tanggal = transaksi_spk.tanggal
AND transaksi_nominal = nominal;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM hutang
JOIN transaksi_spk
WHERE tanggal = hutang_tanggal
AND nominal = hutang_nominal;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM hutang
JOIN pembayaran_hutang USING (hutang_id);
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM transaksi WHERE spk_id = null;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM transaksi WHERE spk_id is null;