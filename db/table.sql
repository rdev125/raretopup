/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 10.2.10-MariaDB : Database - project_raretopup
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `distributor` */

DROP TABLE IF EXISTS `distributor`;

CREATE TABLE `distributor` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(150) DEFAULT NULL,
  `kota` varchar(100) NOT NULL,
  `deskripsi` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `distributor` */

/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama_event` varchar(200) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `tgl_akhir` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `event` */

insert  into `event`(`id`,`nama_event`,`tgl_mulai`,`tgl_akhir`) values (1,'Ramadhan Sale 2021','2021-04-12 11:31:00','2021-05-13 00:00:00');

/*Table structure for table `hadiah` */

DROP TABLE IF EXISTS `hadiah`;

CREATE TABLE `hadiah` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_event` bigint(20) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `jumlah` int(10) DEFAULT NULL,
  `path_image` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `qrcode` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `hadiah` */

insert  into `hadiah`(`id`,`id_event`,`nama`,`jumlah`,`path_image`,`image`,`keterangan`,`qrcode`) values (1,1,'Ban Maxxis Victra S98ST',10,'/assets/hadiah/','c7afb345545e2cc1364ea400063e8a3c.png','Pajak Ditanggung Pemenang',NULL);
insert  into `hadiah`(`id`,`id_event`,`nama`,`jumlah`,`path_image`,`image`,`keterangan`,`qrcode`) values (2,1,'Yamaha NMAX',1,'/assets/hadiah/','3296e7de748fbc8766b2890f5a2ac750.png','',NULL);
insert  into `hadiah`(`id`,`id_event`,`nama`,`jumlah`,`path_image`,`image`,`keterangan`,`qrcode`) values (3,1,'Ban Maxxis MA-3DN',20,'/assets/hadiah/','d886755b9f6209187f27b9caf8cb565a.png','',NULL);
insert  into `hadiah`(`id`,`id_event`,`nama`,`jumlah`,`path_image`,`image`,`keterangan`,`qrcode`) values (4,1,'Voucher Belanja',20,'/assets/hadiah/','c20aa752cbc6a374c1353a3119feff34.png','',NULL);
insert  into `hadiah`(`id`,`id_event`,`nama`,`jumlah`,`path_image`,`image`,`keterangan`,`qrcode`) values (5,1,'Maxxis Tumbler',30,'/assets/hadiah/','95102916483f50049ad7dea1a741e3c3.png','',NULL);
insert  into `hadiah`(`id`,`id_event`,`nama`,`jumlah`,`path_image`,`image`,`keterangan`,`qrcode`) values (6,1,'Maxxis T-Shirt',50,'/assets/hadiah/','453f5ef581790562d8c6b988e9833f1c.png','',NULL);
insert  into `hadiah`(`id`,`id_event`,`nama`,`jumlah`,`path_image`,`image`,`keterangan`,`qrcode`) values (7,1,'Maxxis Inner Tube',84,'/assets/hadiah/','77446c3abe4e4c814ac60f4f129e3912.png','',NULL);

/*Table structure for table `kota` */

DROP TABLE IF EXISTS `kota`;

CREATE TABLE `kota` (
  `id_kab` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_prov` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nama` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_jenis` int(11) NOT NULL,
  PRIMARY KEY (`id_kab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `kota` */

insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1101','11','KAB. ACEH SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1102','11','KAB. ACEH TENGGARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1103','11','KAB. ACEH TIMUR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1104','11','KAB. ACEH TENGAH',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1105','11','KAB. ACEH BARAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1106','11','KAB. ACEH BESAR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1107','11','KAB. PIDIE',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1108','11','KAB. ACEH UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1109','11','KAB. SIMEULUE',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1110','11','KAB. ACEH SINGKIL',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1111','11','KAB. BIREUEN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1112','11','KAB. ACEH BARAT DAYA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1113','11','KAB. GAYO LUES',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1114','11','KAB. ACEH JAYA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1115','11','KAB. NAGAN RAYA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1116','11','KAB. ACEH TAMIANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1117','11','KAB. BENER MERIAH',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1118','11','KAB. PIDIE JAYA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1171','11','KOTA BANDA ACEH',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1172','11','KOTA SABANG',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1173','11','KOTA LHOKSEUMAWE',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1174','11','KOTA LANGSA',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1175','11','KOTA SUBULUSSALAM',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1201','12','KAB. TAPANULI TENGAH',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1202','12','KAB. TAPANULI UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1203','12','KAB. TAPANULI SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1204','12','KAB. NIAS',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1205','12','KAB. LANGKAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1206','12','KAB. KARO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1207','12','KAB. DELI SERDANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1208','12','KAB. SIMALUNGUN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1209','12','KAB. ASAHAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1210','12','KAB. LABUHANBATU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1211','12','KAB. DAIRI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1212','12','KAB. TOBA SAMOSIR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1213','12','KAB. MANDAILING NATAL',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1214','12','KAB. NIAS SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1215','12','KAB. PAKPAK BHARAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1216','12','KAB. HUMBANG HASUNDUTAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1217','12','KAB. SAMOSIR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1218','12','KAB. SERDANG BEDAGAI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1219','12','KAB. BATU BARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1220','12','KAB. PADANG LAWAS UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1221','12','KAB. PADANG LAWAS',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1222','12','KAB. LABUHANBATU SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1223','12','KAB. LABUHANBATU UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1224','12','KAB. NIAS UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1225','12','KAB. NIAS BARAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1271','12','KOTA MEDAN',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1272','12','KOTA PEMATANG SIANTAR',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1273','12','KOTA SIBOLGA',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1274','12','KOTA TANJUNG BALAI',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1275','12','KOTA BINJAI',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1276','12','KOTA TEBING TINGGI',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1277','12','KOTA PADANGSIDIMPUAN',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1278','12','KOTA GUNUNGSITOLI',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1301','13','KAB. PESISIR SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1302','13','KAB. SOLOK',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1303','13','KAB. SIJUNJUNG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1304','13','KAB. TANAH DATAR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1305','13','KAB. PADANG PARIAMAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1306','13','KAB. AGAM',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1307','13','KAB. LIMA PULUH KOTA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1308','13','KAB. PASAMAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1309','13','KAB. KEPULAUAN MENTAWAI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1310','13','KAB. DHARMASRAYA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1311','13','KAB. SOLOK SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1312','13','KAB. PASAMAN BARAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1371','13','KOTA PADANG',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1372','13','KOTA SOLOK',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1373','13','KOTA SAWAHLUNTO',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1374','13','KOTA PADANG PANJANG',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1375','13','KOTA BUKITTINGGI',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1376','13','KOTA PAYAKUMBUH',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1377','13','KOTA PARIAMAN',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1401','14','KAB. KAMPAR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1402','14','KAB. INDRAGIRI HULU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1403','14','KAB. BENGKALIS',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1404','14','KAB. INDRAGIRI HILIR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1405','14','KAB. PELALAWAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1406','14','KAB. ROKAN HULU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1407','14','KAB. ROKAN HILIR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1408','14','KAB. SIAK',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1409','14','KAB. KUANTAN SINGINGI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1410','14','KAB. KEPULAUAN MERANTI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1471','14','KOTA PEKANBARU',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1472','14','KOTA DUMAI',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1501','15','KAB. KERINCI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1502','15','KAB. MERANGIN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1503','15','KAB. SAROLANGUN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1504','15','KAB. BATANGHARI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1505','15','KAB. MUARO JAMBI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1506','15','KAB. TANJUNG JABUNG BARAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1507','15','KAB. TANJUNG JABUNG TIMUR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1508','15','KAB. BUNGO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1509','15','KAB. TEBO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1571','15','KOTA JAMBI',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1572','15','KOTA SUNGAI PENUH',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1601','16','KAB. OGAN KOMERING ULU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1602','16','KAB. OGAN KOMERING ILIR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1603','16','KAB. MUARA ENIM',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1604','16','KAB. LAHAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1605','16','KAB. MUSI RAWAS',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1606','16','KAB. MUSI BANYUASIN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1607','16','KAB. BANYUASIN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1608','16','KAB. OGAN KOMERING ULU TIMUR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1609','16','KAB. OGAN KOMERING ULU SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1610','16','KAB. OGAN ILIR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1611','16','KAB. EMPAT LAWANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1612','16','KAB. PENUKAL ABAB LEMATANG ILIR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1613','16','KAB. MUSI RAWAS UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1671','16','KOTA PALEMBANG',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1672','16','KOTA PAGAR ALAM',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1673','16','KOTA LUBUK LINGGAU',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1674','16','KOTA PRABUMULIH',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1701','17','KAB. BENGKULU SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1702','17','KAB. REJANG LEBONG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1703','17','KAB. BENGKULU UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1704','17','KAB. KAUR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1705','17','KAB. SELUMA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1706','17','KAB. MUKO MUKO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1707','17','KAB. LEBONG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1708','17','KAB. KEPAHIANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1709','17','KAB. BENGKULU TENGAH',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1771','17','KOTA BENGKULU',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1801','18','KAB. LAMPUNG SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1802','18','KAB. LAMPUNG TENGAH',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1803','18','KAB. LAMPUNG UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1804','18','KAB. LAMPUNG BARAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1805','18','KAB. TULANG BAWANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1806','18','KAB. TANGGAMUS',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1807','18','KAB. LAMPUNG TIMUR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1808','18','KAB. WAY KANAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1809','18','KAB. PESAWARAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1810','18','KAB. PRINGSEWU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1811','18','KAB. MESUJI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1812','18','KAB. TULANG BAWANG BARAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1813','18','KAB. PESISIR BARAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1871','18','KOTA BANDAR LAMPUNG',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1872','18','KOTA METRO',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1901','19','KAB. BANGKA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1902','19','KAB. BELITUNG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1903','19','KAB. BANGKA SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1904','19','KAB. BANGKA TENGAH',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1905','19','KAB. BANGKA BARAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1906','19','KAB. BELITUNG TIMUR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('1971','19','KOTA PANGKAL PINANG',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('2101','21','KAB. BINTAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('2102','21','KAB. KARIMUN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('2103','21','KAB. NATUNA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('2104','21','KAB. LINGGA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('2105','21','KAB. KEPULAUAN ANAMBAS',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('2171','21','KOTA BATAM',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('2172','21','KOTA TANJUNG PINANG',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3101','31','KAB. ADM. KEP. SERIBU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3171','31','KOTA ADM. JAKARTA PUSAT',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3172','31','KOTA ADM. JAKARTA UTARA',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3173','31','KOTA ADM. JAKARTA BARAT',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3174','31','KOTA ADM. JAKARTA SELATAN',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3175','31','KOTA ADM. JAKARTA TIMUR',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3201','32','KAB. BOGOR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3202','32','KAB. SUKABUMI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3203','32','KAB. CIANJUR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3204','32','KAB. BANDUNG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3205','32','KAB. GARUT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3206','32','KAB. TASIKMALAYA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3207','32','KAB. CIAMIS',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3208','32','KAB. KUNINGAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3209','32','KAB. CIREBON',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3210','32','KAB. MAJALENGKA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3211','32','KAB. SUMEDANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3212','32','KAB. INDRAMAYU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3213','32','KAB. SUBANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3214','32','KAB. PURWAKARTA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3215','32','KAB. KARAWANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3216','32','KAB. BEKASI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3217','32','KAB. BANDUNG BARAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3218','32','KAB. PANGANDARAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3271','32','KOTA BOGOR',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3272','32','KOTA SUKABUMI',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3273','32','KOTA BANDUNG',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3274','32','KOTA CIREBON',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3275','32','KOTA BEKASI',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3276','32','KOTA DEPOK',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3277','32','KOTA CIMAHI',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3278','32','KOTA TASIKMALAYA',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3279','32','KOTA BANJAR',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3301','33','KAB. CILACAP',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3302','33','KAB. BANYUMAS',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3303','33','KAB. PURBALINGGA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3304','33','KAB. BANJARNEGARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3305','33','KAB. KEBUMEN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3306','33','KAB. PURWOREJO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3307','33','KAB. WONOSOBO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3308','33','KAB. MAGELANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3309','33','KAB. BOYOLALI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3310','33','KAB. KLATEN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3311','33','KAB. SUKOHARJO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3312','33','KAB. WONOGIRI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3313','33','KAB. KARANGANYAR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3314','33','KAB. SRAGEN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3315','33','KAB. GROBOGAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3316','33','KAB. BLORA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3317','33','KAB. REMBANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3318','33','KAB. PATI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3319','33','KAB. KUDUS',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3320','33','KAB. JEPARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3321','33','KAB. DEMAK',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3322','33','KAB. SEMARANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3323','33','KAB. TEMANGGUNG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3324','33','KAB. KENDAL',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3325','33','KAB. BATANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3326','33','KAB. PEKALONGAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3327','33','KAB. PEMALANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3328','33','KAB. TEGAL',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3329','33','KAB. BREBES',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3371','33','KOTA MAGELANG',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3372','33','KOTA SURAKARTA',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3373','33','KOTA SALATIGA',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3374','33','KOTA SEMARANG',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3375','33','KOTA PEKALONGAN',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3376','33','KOTA TEGAL',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3401','34','KAB. KULON PROGO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3402','34','KAB. BANTUL',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3403','34','KAB. GUNUNG KIDUL',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3404','34','KAB. SLEMAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3471','34','KOTA YOGYAKARTA',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3501','35','KAB. PACITAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3502','35','KAB. PONOROGO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3503','35','KAB. TRENGGALEK',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3504','35','KAB. TULUNGAGUNG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3505','35','KAB. BLITAR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3506','35','KAB. KEDIRI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3507','35','KAB. MALANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3508','35','KAB. LUMAJANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3509','35','KAB. JEMBER',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3510','35','KAB. BANYUWANGI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3511','35','KAB. BONDOWOSO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3512','35','KAB. SITUBONDO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3513','35','KAB. PROBOLINGGO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3514','35','KAB. PASURUAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3515','35','KAB. SIDOARJO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3516','35','KAB. MOJOKERTO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3517','35','KAB. JOMBANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3518','35','KAB. NGANJUK',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3519','35','KAB. MADIUN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3520','35','KAB. MAGETAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3521','35','KAB. NGAWI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3522','35','KAB. BOJONEGORO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3523','35','KAB. TUBAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3524','35','KAB. LAMONGAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3525','35','KAB. GRESIK',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3526','35','KAB. BANGKALAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3527','35','KAB. SAMPANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3528','35','KAB. PAMEKASAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3529','35','KAB. SUMENEP',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3571','35','KOTA KEDIRI',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3572','35','KOTA BLITAR',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3573','35','KOTA MALANG',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3574','35','KOTA PROBOLINGGO',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3575','35','KOTA PASURUAN',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3576','35','KOTA MOJOKERTO',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3577','35','KOTA MADIUN',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3578','35','KOTA SURABAYA',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3579','35','KOTA BATU',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3601','36','KAB. PANDEGLANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3602','36','KAB. LEBAK',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3603','36','KAB. TANGERANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3604','36','KAB. SERANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3671','36','KOTA TANGERANG',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3672','36','KOTA CILEGON',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3673','36','KOTA SERANG',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('3674','36','KOTA TANGERANG SELATAN',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5101','51','KAB. JEMBRANA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5102','51','KAB. TABANAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5103','51','KAB. BADUNG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5104','51','KAB. GIANYAR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5105','51','KAB. KLUNGKUNG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5106','51','KAB. BANGLI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5107','51','KAB. KARANGASEM',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5108','51','KAB. BULELENG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5171','51','KOTA DENPASAR',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5201','52','KAB. LOMBOK BARAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5202','52','KAB. LOMBOK TENGAH',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5203','52','KAB. LOMBOK TIMUR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5204','52','KAB. SUMBAWA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5205','52','KAB. DOMPU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5206','52','KAB. BIMA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5207','52','KAB. SUMBAWA BARAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5208','52','KAB. LOMBOK UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5271','52','KOTA MATARAM',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5272','52','KOTA BIMA',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5301','53','KAB. KUPANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5302','53','KAB TIMOR TENGAH SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5303','53','KAB. TIMOR TENGAH UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5304','53','KAB. BELU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5305','53','KAB. ALOR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5306','53','KAB. FLORES TIMUR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5307','53','KAB. SIKKA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5308','53','KAB. ENDE',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5309','53','KAB. NGADA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5310','53','KAB. MANGGARAI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5311','53','KAB. SUMBA TIMUR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5312','53','KAB. SUMBA BARAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5313','53','KAB. LEMBATA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5314','53','KAB. ROTE NDAO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5315','53','KAB. MANGGARAI BARAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5316','53','KAB. NAGEKEO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5317','53','KAB. SUMBA TENGAH',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5318','53','KAB. SUMBA BARAT DAYA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5319','53','KAB. MANGGARAI TIMUR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5320','53','KAB. SABU RAIJUA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5321','53','KAB. MALAKA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('5371','53','KOTA KUPANG',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6101','61','KAB. SAMBAS',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6102','61','KAB. MEMPAWAH',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6103','61','KAB. SANGGAU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6104','61','KAB. KETAPANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6105','61','KAB. SINTANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6106','61','KAB. KAPUAS HULU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6107','61','KAB. BENGKAYANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6108','61','KAB. LANDAK',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6109','61','KAB. SEKADAU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6110','61','KAB. MELAWI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6111','61','KAB. KAYONG UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6112','61','KAB. KUBU RAYA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6171','61','KOTA PONTIANAK',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6172','61','KOTA SINGKAWANG',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6201','62','KAB. KOTAWARINGIN BARAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6202','62','KAB. KOTAWARINGIN TIMUR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6203','62','KAB. KAPUAS',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6204','62','KAB. BARITO SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6205','62','KAB. BARITO UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6206','62','KAB. KATINGAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6207','62','KAB. SERUYAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6208','62','KAB. SUKAMARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6209','62','KAB. LAMANDAU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6210','62','KAB. GUNUNG MAS',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6211','62','KAB. PULANG PISAU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6212','62','KAB. MURUNG RAYA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6213','62','KAB. BARITO TIMUR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6271','62','KOTA PALANGKARAYA',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6301','63','KAB. TANAH LAUT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6302','63','KAB. KOTABARU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6303','63','KAB. BANJAR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6304','63','KAB. BARITO KUALA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6305','63','KAB. TAPIN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6306','63','KAB. HULU SUNGAI SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6307','63','KAB. HULU SUNGAI TENGAH',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6308','63','KAB. HULU SUNGAI UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6309','63','KAB. TABALONG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6310','63','KAB. TANAH BUMBU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6311','63','KAB. BALANGAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6371','63','KOTA BANJARMASIN',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6372','63','KOTA BANJARBARU',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6401','64','KAB. PASER',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6402','64','KAB. KUTAI KARTANEGARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6403','64','KAB. BERAU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6407','64','KAB. KUTAI BARAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6408','64','KAB. KUTAI TIMUR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6409','64','KAB. PENAJAM PASER UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6411','64','KAB. MAHAKAM ULU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6471','64','KOTA BALIKPAPAN',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6472','64','KOTA SAMARINDA',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6474','64','KOTA BONTANG',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6501','65','KAB. BULUNGAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6502','65','KAB. MALINAU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6503','65','KAB. NUNUKAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6504','65','KAB. TANA TIDUNG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('6571','65','KOTA TARAKAN',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7101','71','KAB. BOLAANG MONGONDOW',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7102','71','KAB. MINAHASA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7103','71','KAB. KEPULAUAN SANGIHE',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7104','71','KAB. KEPULAUAN TALAUD',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7105','71','KAB. MINAHASA SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7106','71','KAB. MINAHASA UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7107','71','KAB. MINAHASA TENGGARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7108','71','KAB. BOLAANG MONGONDOW UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7109','71','KAB. KEP. SIAU TAGULANDANG BIARO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7110','71','KAB. BOLAANG MONGONDOW TIMUR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7111','71','KAB. BOLAANG MONGONDOW SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7171','71','KOTA MANADO',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7172','71','KOTA BITUNG',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7173','71','KOTA TOMOHON',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7174','71','KOTA KOTAMOBAGU',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7201','72','KAB. BANGGAI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7202','72','KAB. POSO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7203','72','KAB. DONGGALA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7204','72','KAB. TOLI TOLI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7205','72','KAB. BUOL',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7206','72','KAB. MOROWALI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7207','72','KAB. BANGGAI KEPULAUAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7208','72','KAB. PARIGI MOUTONG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7209','72','KAB. TOJO UNA UNA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7210','72','KAB. SIGI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7211','72','KAB. BANGGAI LAUT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7212','72','KAB. MOROWALI UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7271','72','KOTA PALU',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7301','73','KAB. KEPULAUAN SELAYAR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7302','73','KAB. BULUKUMBA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7303','73','KAB. BANTAENG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7304','73','KAB. JENEPONTO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7305','73','KAB. TAKALAR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7306','73','KAB. GOWA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7307','73','KAB. SINJAI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7308','73','KAB. BONE',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7309','73','KAB. MAROS',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7310','73','KAB. PANGKAJENE KEPULAUAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7311','73','KAB. BARRU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7312','73','KAB. SOPPENG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7313','73','KAB. WAJO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7314','73','KAB. SIDENRENG RAPPANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7315','73','KAB. PINRANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7316','73','KAB. ENREKANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7317','73','KAB. LUWU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7318','73','KAB. TANA TORAJA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7322','73','KAB. LUWU UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7324','73','KAB. LUWU TIMUR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7326','73','KAB. TORAJA UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7371','73','KOTA MAKASSAR',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7372','73','KOTA PARE PARE',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7373','73','KOTA PALOPO',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7401','74','KAB. KOLAKA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7402','74','KAB. KONAWE',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7403','74','KAB. MUNA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7404','74','KAB. BUTON',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7405','74','KAB. KONAWE SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7406','74','KAB. BOMBANA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7407','74','KAB. WAKATOBI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7408','74','KAB. KOLAKA UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7409','74','KAB. KONAWE UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7410','74','KAB. BUTON UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7411','74','KAB. KOLAKA TIMUR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7412','74','KAB. KONAWE KEPULAUAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7413','74','KAB. MUNA BARAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7414','74','KAB. BUTON TENGAH',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7415','74','KAB. BUTON SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7471','74','KOTA KENDARI',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7472','74','KOTA BAU BAU',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7501','75','KAB. GORONTALO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7502','75','KAB. BOALEMO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7503','75','KAB. BONE BOLANGO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7504','75','KAB. PAHUWATO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7505','75','KAB. GORONTALO UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7571','75','KOTA GORONTALO',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7601','76','KAB. MAMUJU UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7602','76','KAB. MAMUJU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7603','76','KAB. MAMASA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7604','76','KAB. POLEWALI MANDAR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7605','76','KAB. MAJENE',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('7606','76','KAB. MAMUJU TENGAH',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8101','81','KAB. MALUKU TENGAH',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8102','81','KAB. MALUKU TENGGARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8103','81','KAB MALUKU TENGGARA BARAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8104','81','KAB. BURU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8105','81','KAB. SERAM BAGIAN TIMUR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8106','81','KAB. SERAM BAGIAN BARAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8107','81','KAB. KEPULAUAN ARU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8108','81','KAB. MALUKU BARAT DAYA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8109','81','KAB. BURU SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8171','81','KOTA AMBON',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8172','81','KOTA TUAL',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8201','82','KAB. HALMAHERA BARAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8202','82','KAB. HALMAHERA TENGAH',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8203','82','KAB. HALMAHERA UTARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8204','82','KAB. HALMAHERA SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8205','82','KAB. KEPULAUAN SULA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8206','82','KAB. HALMAHERA TIMUR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8207','82','KAB. PULAU MOROTAI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8208','82','KAB. PULAU TALIABU',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8271','82','KOTA TERNATE',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('8272','82','KOTA TIDORE KEPULAUAN',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9101','91','KAB. MERAUKE',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9102','91','KAB. JAYAWIJAYA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9103','91','KAB. JAYAPURA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9104','91','KAB. NABIRE',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9105','91','KAB. KEPULAUAN YAPEN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9106','91','KAB. BIAK NUMFOR',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9107','91','KAB. PUNCAK JAYA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9108','91','KAB. PANIAI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9109','91','KAB. MIMIKA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9110','91','KAB. SARMI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9111','91','KAB. KEEROM',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9112','91','KAB PEGUNUNGAN BINTANG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9113','91','KAB. YAHUKIMO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9114','91','KAB. TOLIKARA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9115','91','KAB. WAROPEN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9116','91','KAB. BOVEN DIGOEL',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9117','91','KAB. MAPPI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9118','91','KAB. ASMAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9119','91','KAB. SUPIORI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9120','91','KAB. MAMBERAMO RAYA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9121','91','KAB. MAMBERAMO TENGAH',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9122','91','KAB. YALIMO',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9123','91','KAB. LANNY JAYA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9124','91','KAB. NDUGA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9125','91','KAB. PUNCAK',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9126','91','KAB. DOGIYAI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9127','91','KAB. INTAN JAYA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9128','91','KAB. DEIYAI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9171','91','KOTA JAYAPURA',2);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9201','92','KAB. SORONG',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9202','92','KAB. MANOKWARI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9203','92','KAB. FAK FAK',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9204','92','KAB. SORONG SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9205','92','KAB. RAJA AMPAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9206','92','KAB. TELUK BINTUNI',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9207','92','KAB. TELUK WONDAMA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9208','92','KAB. KAIMANA',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9209','92','KAB. TAMBRAUW',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9210','92','KAB. MAYBRAT',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9211','92','KAB. MANOKWARI SELATAN',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9212','92','KAB. PEGUNUNGAN ARFAK',1);
insert  into `kota`(`id_kab`,`id_prov`,`nama`,`id_jenis`) values ('9271','92','KOTA SORONG',2);

/*Table structure for table `pemenang` */

DROP TABLE IF EXISTS `pemenang`;

CREATE TABLE `pemenang` (
  `id` bigint(200) NOT NULL AUTO_INCREMENT,
  `id_event` bigint(20) DEFAULT NULL,
  `id_hadiah` bigint(20) DEFAULT NULL,
  `id_pemenang` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=latin1;

/*Data for the table `pemenang` */

insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (88,1,5,436);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (89,1,5,330);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (90,1,5,444);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (91,1,5,413);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (92,1,5,280);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (93,1,5,98);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (94,1,5,203);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (95,1,5,218);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (96,1,5,343);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (97,1,5,242);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (98,1,5,258);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (99,1,5,234);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (100,1,5,279);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (101,1,5,426);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (102,1,5,312);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (103,1,5,85);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (104,1,5,360);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (105,1,5,423);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (106,1,5,408);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (107,1,5,381);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (108,1,5,428);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (109,1,5,67);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (110,1,5,171);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (111,1,5,202);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (112,1,5,261);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (113,1,5,30);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (114,1,5,402);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (115,1,5,370);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (116,1,5,201);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (117,1,5,229);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (118,1,6,304);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (119,1,6,363);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (120,1,6,214);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (121,1,6,417);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (122,1,6,130);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (123,1,6,128);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (124,1,6,356);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (125,1,6,414);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (126,1,6,425);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (127,1,6,32);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (128,1,6,373);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (129,1,6,246);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (130,1,6,309);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (131,1,6,389);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (132,1,6,66);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (133,1,6,87);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (134,1,6,220);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (135,1,6,262);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (136,1,6,383);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (137,1,6,271);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (138,1,6,365);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (139,1,6,222);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (140,1,6,446);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (141,1,6,23);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (142,1,6,212);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (143,1,6,421);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (144,1,6,386);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (145,1,6,99);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (146,1,6,418);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (147,1,6,27);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (148,1,6,358);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (149,1,6,351);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (150,1,6,301);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (151,1,6,68);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (152,1,6,290);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (153,1,6,322);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (154,1,6,219);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (155,1,6,107);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (156,1,6,334);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (157,1,6,50);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (158,1,6,443);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (159,1,6,409);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (160,1,6,348);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (161,1,6,362);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (162,1,6,300);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (163,1,6,191);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (164,1,6,57);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (165,1,6,213);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (166,1,6,400);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (167,1,6,175);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (168,1,4,305);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (169,1,4,384);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (170,1,4,354);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (171,1,4,65);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (172,1,4,430);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (173,1,4,181);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (174,1,4,102);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (175,1,4,248);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (176,1,4,380);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (177,1,4,269);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (178,1,4,393);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (179,1,4,378);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (180,1,4,303);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (181,1,4,331);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (182,1,4,233);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (183,1,4,231);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (184,1,4,403);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (185,1,4,88);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (186,1,4,349);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (187,1,4,346);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (188,1,7,236);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (189,1,7,422);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (190,1,7,169);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (191,1,7,227);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (192,1,7,307);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (193,1,7,397);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (194,1,7,86);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (195,1,7,283);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (196,1,7,221);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (197,1,7,41);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (198,1,7,75);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (199,1,7,277);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (200,1,7,299);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (201,1,7,215);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (202,1,7,350);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (203,1,7,260);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (204,1,7,241);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (205,1,7,332);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (206,1,7,286);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (207,1,7,230);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (208,1,7,340);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (209,1,7,308);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (210,1,7,34);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (211,1,7,310);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (212,1,7,73);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (213,1,7,71);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (214,1,7,398);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (215,1,7,244);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (216,1,7,411);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (217,1,7,180);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (218,1,7,238);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (219,1,7,178);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (220,1,7,431);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (221,1,7,70);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (222,1,7,424);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (223,1,7,284);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (224,1,7,445);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (225,1,7,410);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (226,1,7,177);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (227,1,7,182);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (228,1,7,216);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (229,1,7,399);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (230,1,7,103);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (231,1,7,187);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (232,1,7,247);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (233,1,7,186);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (234,1,7,259);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (235,1,7,374);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (236,1,7,319);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (237,1,7,29);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (238,1,7,379);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (239,1,7,276);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (240,1,7,339);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (241,1,7,252);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (242,1,7,385);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (243,1,7,394);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (244,1,7,109);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (245,1,7,401);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (246,1,7,345);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (247,1,7,243);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (248,1,7,285);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (249,1,7,204);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (250,1,7,325);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (251,1,7,341);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (252,1,7,193);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (253,1,7,74);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (254,1,7,94);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (255,1,7,327);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (256,1,7,275);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (257,1,7,129);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (258,1,7,223);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (259,1,7,232);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (260,1,7,392);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (261,1,7,372);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (262,1,7,239);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (263,1,7,447);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (264,1,7,250);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (265,1,7,93);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (266,1,7,33);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (267,1,7,179);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (268,1,7,376);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (269,1,7,251);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (270,1,7,64);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (271,1,7,264);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (272,1,3,263);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (273,1,3,52);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (274,1,3,337);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (275,1,3,302);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (276,1,3,320);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (277,1,3,355);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (278,1,3,237);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (279,1,3,427);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (280,1,3,267);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (281,1,3,228);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (282,1,3,140);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (283,1,3,294);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (284,1,3,434);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (285,1,3,321);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (286,1,3,328);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (287,1,3,420);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (288,1,3,388);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (289,1,3,323);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (290,1,3,89);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (291,1,3,55);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (292,1,1,51);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (293,1,1,371);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (294,1,1,432);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (295,1,1,435);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (296,1,1,266);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (297,1,1,297);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (298,1,1,217);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (299,1,1,429);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (300,1,1,176);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (301,1,1,419);
insert  into `pemenang`(`id`,`id_event`,`id_hadiah`,`id_pemenang`) values (302,1,2,235);

/*Table structure for table `pricelist` */

DROP TABLE IF EXISTS `pricelist`;

CREATE TABLE `pricelist` (
  `id` bigint(255) NOT NULL,
  `status` varchar(200) DEFAULT NULL,
  `icon_url` varchar(500) DEFAULT NULL,
  `pulsa_code` varchar(200) DEFAULT NULL,
  `pulsa_op` varchar(200) DEFAULT NULL,
  `pulsa_nominal` varchar(200) DEFAULT NULL,
  `pulsa_details` varchar(500) DEFAULT NULL,
  `pulsa_price` varchar(200) DEFAULT NULL,
  `pulsa_type` varchar(100) DEFAULT NULL,
  `masaaktif` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pricelist` */

/*Table structure for table `profile_api` */

DROP TABLE IF EXISTS `profile_api`;

CREATE TABLE `profile_api` (
  `id` bigint(255) NOT NULL,
  `no_tlp` char(100) DEFAULT NULL,
  `apikey` char(100) DEFAULT NULL,
  `balance` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `profile_api` */

/*Table structure for table `provinsi` */

DROP TABLE IF EXISTS `provinsi`;

CREATE TABLE `provinsi` (
  `id_prov` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nama` tinytext NOT NULL,
  PRIMARY KEY (`id_prov`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `provinsi` */

insert  into `provinsi`(`id_prov`,`nama`) values ('11','Aceh');
insert  into `provinsi`(`id_prov`,`nama`) values ('12','Sumatera Utara');
insert  into `provinsi`(`id_prov`,`nama`) values ('13','Sumatera Barat');
insert  into `provinsi`(`id_prov`,`nama`) values ('14','Riau');
insert  into `provinsi`(`id_prov`,`nama`) values ('15','Jambi');
insert  into `provinsi`(`id_prov`,`nama`) values ('16','Sumatera Selatan');
insert  into `provinsi`(`id_prov`,`nama`) values ('17','Bengkulu');
insert  into `provinsi`(`id_prov`,`nama`) values ('18','Lampung');
insert  into `provinsi`(`id_prov`,`nama`) values ('19','Kepulauan Bangka Belitung');
insert  into `provinsi`(`id_prov`,`nama`) values ('21','Kepulauan Riau');
insert  into `provinsi`(`id_prov`,`nama`) values ('31','DKI Jakarta');
insert  into `provinsi`(`id_prov`,`nama`) values ('32','Jawa Barat');
insert  into `provinsi`(`id_prov`,`nama`) values ('33','Jawa Tengah');
insert  into `provinsi`(`id_prov`,`nama`) values ('34','DI Yogyakarta');
insert  into `provinsi`(`id_prov`,`nama`) values ('35','Jawa Timur');
insert  into `provinsi`(`id_prov`,`nama`) values ('36','Banten');
insert  into `provinsi`(`id_prov`,`nama`) values ('51','Bali');
insert  into `provinsi`(`id_prov`,`nama`) values ('52','Nusa Tenggara Barat');
insert  into `provinsi`(`id_prov`,`nama`) values ('53','Nusa Tenggara Timur');
insert  into `provinsi`(`id_prov`,`nama`) values ('61','Kalimantan Barat');
insert  into `provinsi`(`id_prov`,`nama`) values ('62','Kalimantan Tengah');
insert  into `provinsi`(`id_prov`,`nama`) values ('63','Kalimantan Selatan');
insert  into `provinsi`(`id_prov`,`nama`) values ('64','Kalimantan Timur');
insert  into `provinsi`(`id_prov`,`nama`) values ('65','Kalimantan Utara');
insert  into `provinsi`(`id_prov`,`nama`) values ('71','Sulawesi Utara');
insert  into `provinsi`(`id_prov`,`nama`) values ('72','Sulawesi Tengah');
insert  into `provinsi`(`id_prov`,`nama`) values ('73','Sulawesi Selatan');
insert  into `provinsi`(`id_prov`,`nama`) values ('74','Sulawesi Tenggara');
insert  into `provinsi`(`id_prov`,`nama`) values ('75','Gorontalo');
insert  into `provinsi`(`id_prov`,`nama`) values ('76','Sulawesi Barat');
insert  into `provinsi`(`id_prov`,`nama`) values ('81','Maluku');
insert  into `provinsi`(`id_prov`,`nama`) values ('82','Maluku Utara');
insert  into `provinsi`(`id_prov`,`nama`) values ('91','Papua Barat');
insert  into `provinsi`(`id_prov`,`nama`) values ('92','Papua');

/*Table structure for table `tr_mp_gcl` */

DROP TABLE IF EXISTS `tr_mp_gcl`;

CREATE TABLE `tr_mp_gcl` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `game_code` char(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COMMENT='table reference Mobile Pulsa - Game Code List';

/*Data for the table `tr_mp_gcl` */

insert  into `tr_mp_gcl`(`id`,`game_code`,`name`) values (1,'103','Mobile Legend');
insert  into `tr_mp_gcl`(`id`,`game_code`,`name`) values (2,'127','Ragnarok M: Eternal Love');
insert  into `tr_mp_gcl`(`id`,`game_code`,`name`) values (3,'127','Ragnarok M: Midnight Party');
insert  into `tr_mp_gcl`(`id`,`game_code`,`name`) values (4,'130','Point Blank');
insert  into `tr_mp_gcl`(`id`,`game_code`,`name`) values (5,'135','Free Fire');
insert  into `tr_mp_gcl`(`id`,`game_code`,`name`) values (6,'136','Speed Drifters');
insert  into `tr_mp_gcl`(`id`,`game_code`,`name`) values (7,'139','Arena of Valor');
insert  into `tr_mp_gcl`(`id`,`game_code`,`name`) values (8,'140','Bleach Mobile 3D');
insert  into `tr_mp_gcl`(`id`,`game_code`,`name`) values (9,'141','Era of Celestials');
insert  into `tr_mp_gcl`(`id`,`game_code`,`name`) values (10,'142','Dragon Nest');
insert  into `tr_mp_gcl`(`id`,`game_code`,`name`) values (11,'150','arvel Super War');
insert  into `tr_mp_gcl`(`id`,`game_code`,`name`) values (12,'152','Light of Thel: Glory of Cepheus');
insert  into `tr_mp_gcl`(`id`,`game_code`,`name`) values (13,'153','Lords Mobile');
insert  into `tr_mp_gcl`(`id`,`game_code`,`name`) values (14,'154','LifeAfter');
insert  into `tr_mp_gcl`(`id`,`game_code`,`name`) values (15,'168','Higgs Domino');

/*Table structure for table `tr_mp_lto` */

DROP TABLE IF EXISTS `tr_mp_lto`;

CREATE TABLE `tr_mp_lto` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `type` char(50) DEFAULT NULL,
  `list_op` varchar(200) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1 COMMENT='table reference Mobile Pulsa - List of Type and Operators';

/*Data for the table `tr_mp_lto` */

insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (1,'data','axis_paket_internet',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (2,'data','wave_game_dan_telkomsel_paket_internet',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (3,'data','wave_game_dan_xl_paket_internet',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (4,'data','telkomsel',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (5,'data','indosat_paket_internet',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (6,'data','smartfren_paket_internet',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (7,'data','tri_paket_internet',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (8,'data','telkomsel_paket_internet',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (9,'data','xl_paket_internet',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (10,'etoll','steam_dan_gopay',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (11,'etoll','wave_game_dan_gopay',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (12,'etoll','dana',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (13,'etoll','mandiri_e-toll',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (14,'etoll','indomaret_card_e-money',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (15,'etoll','gopay_e-money',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (16,'etoll','linkaja',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (17,'etoll','ovo',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (18,'etoll','shopee_pay',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (19,'etoll','tix_id',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (20,'game','arena_of_valor',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (21,'game','bleach_mobile_3d',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (22,'game','dragon_nest_m_-_sea',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (23,'game','era_of_celestials',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (24,'game','free_fire',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (25,'game','battlenet_sea',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (26,'game','garena',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (27,'game','gemscool',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (28,'game','google_play_us_region',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (29,'game','google_play_indonesia',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (30,'game','higgs_domino',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (31,'game','itunes_us_region',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (32,'game','lyto',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (33,'game','megaxus',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (34,'game','mobile_legend',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (35,'game','razer_pin',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (36,'game','playstation',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (37,'game','steam_sea',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (38,'game','wave_game',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (39,'game','joox',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (40,'game','lifeafter',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (41,'game','light_of_thel:_glory_of_cepheus',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (42,'game','lords_mobile',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (43,'game','marvel_super_war',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (44,'game','minecraft',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (45,'game','nintendo_eshop',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (46,'game','point_blank',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (47,'game','pubg_mobile',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (48,'game','pubg_pc',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (49,'game','ragnarok_m',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (50,'game','skyegrid',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (51,'game','speed_drifters',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (52,'game','spotify',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (53,'game','vidio',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (54,'game','wifi_id',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (55,'pln','pln',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (56,'pln','pasteur_apartment_pln',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (57,'pln','sudirman_suites_pln',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (58,'bangladesh','bangladesh_topup',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (59,'china','china_topup',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (60,'malaysia','malaysia_topup',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (61,'malaysia','celcom',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (62,'malaysia','digi',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (63,'malaysia','maxis',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (64,'malaysia','tunetalk',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (65,'malaysia','umobile',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (66,'malaysia','xox',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (67,'philipines','globe',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (68,'philipines','smart',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (69,'philipines','sun_telecom',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (70,'pulsa','axis',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (71,'pulsa','by.u',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (72,'pulsa','indosat',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (73,'pulsa','smart',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (74,'pulsa','telkomsel',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (75,'pulsa','three',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (76,'pulsa','xixi_games',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (77,'pulsa','xl',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (78,'singapore','m1',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (79,'singapore','singtel',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (80,'singapore','starhub',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (81,'taiwan','chunghwa',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (82,'taiwan','if_taiwan_topup',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (83,'taiwan','ok_taiwan_topup',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (84,'thailand','thailand_topup',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (85,'vietnam','vietnam_topup_2',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (86,'voucher','alfamart_voucher',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (87,'voucher','transmart_carrefour',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (88,'voucher','grab_gifts',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (89,'voucher','indomaret_voucher',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (90,'voucher','tokopedia',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (91,'voucher','udemy_voucher',NULL);
insert  into `tr_mp_lto`(`id`,`type`,`list_op`,`nama`) values (92,'voucher','voucher_universitas_mulawarman',NULL);

/*Table structure for table `tr_mp_prefix` */

DROP TABLE IF EXISTS `tr_mp_prefix`;

CREATE TABLE `tr_mp_prefix` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `nomor` char(50) DEFAULT NULL,
  `operator` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1 COMMENT='table reference Mobile Pulsa - Prefix List';

/*Data for the table `tr_mp_prefix` */

insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (1,'0814','indosat','INDOSAT');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (2,'0815','indosat','INDOSAT');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (3,'0816','indosat','INDOSAT');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (4,'0855','indosat','INDOSAT');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (5,'0856','indosat','INDOSAT');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (6,'0857','indosat','INDOSAT');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (7,'0858','indosat','INDOSAT');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (8,'0817','xl','XL');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (9,'0818','xl','XL');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (10,'0819','xl','XL');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (11,'0859','xl','XL');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (12,'0878','xl','XL');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (13,'0877','xl','XL');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (14,'0838','axis','AXIS');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (15,'0837','axis','AXIS');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (16,'0831','axis','AXIS');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (17,'0832','axis','AXIS');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (18,'0812','telkomsel','TELKOMSEL');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (19,'0813','telkomsel','TELKOMSEL');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (20,'0852','telkomsel','TELKOMSEL');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (21,'0853','telkomsel','TELKOMSEL');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (22,'0821','telkomsel','TELKOMSEL');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (23,'0823','telkomsel','TELKOMSEL');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (24,'0822','telkomsel','TELKOMSEL');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (25,'0851','telkomsel','TELKOMSEL');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (26,'0881','smartfren','SMARTFREN');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (27,'0882','smartfren','SMARTFREN');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (28,'0883','smartfren','SMARTFREN');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (29,'0884','smartfren','SMARTFREN');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (30,' 0885','smartfren','SMARTFREN');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (31,'0886','smartfren','SMARTFREN');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (32,'0887','smartfren','SMARTFREN');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (33,'0888','smartfren','SMARTFREN');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (34,'0896','three','THREE');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (35,'0897','three','THREE');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (36,'0898','three','THREE');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (37,'0899','three','THREE');
insert  into `tr_mp_prefix`(`id`,`nomor`,`operator`,`name`) values (38,'0895','three','THREE');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `role` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`name`,`email`,`role`) values (0,'maxxis1','$2y$10$YtWvbcA4BB6.p9ZFJ9EbAe.VlKB/V.IT77sKOOprvfYAr7Ig6FLTi','Admin Maxxis','admin@maxxis.id',1);
insert  into `users`(`id`,`username`,`password`,`name`,`email`,`role`) values (1,'maxxis','$2y$10$vS5fgkUKibN3Jzj54w1/veul5O.vlVzFx6Fzprwli27zMV.5LMSUG','Admin Maxxis','admin@maxxis.id',1);

/*Table structure for table `x3_ramadan_activity` */

DROP TABLE IF EXISTS `x3_ramadan_activity`;

CREATE TABLE `x3_ramadan_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `no_undian` varchar(20) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `diskualifikasi` tinyint(1) DEFAULT 0,
  `ig_username` varchar(30) DEFAULT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `jenis_kendaraan` varchar(500) DEFAULT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  `path_barcode` varchar(100) DEFAULT NULL,
  `foto_barcode` varchar(250) DEFAULT NULL,
  `path_struck` varchar(100) DEFAULT NULL,
  `foto_struck` varchar(250) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=452 DEFAULT CHARSET=latin1;

/*Data for the table `x3_ramadan_activity` */

insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (23,'GRM-20210412006','Husen Muarip','085213020031','husenmuarif6@gmail.com',0,'allhusaeni','3603','Yamaha Mio M3','B4070050026','/assets/uploads/20210412','50394fbeba00551c7d7899a47949dd89.jpg','/assets/uploads/20210412','e8d7d16cea096098897f088c169e5edc.jpg','2021-04-12 20:49:41');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (24,'GRM-20210413001','nopiana','081995969098','nopiana860@ymail.com',1,'girden_grven_kimoko_kimika','1673','','Bg6430hl','/assets/uploads/20210413','bbfdf6f019f5c6bcee05820904e83d2f.jpg','/assets/uploads/20210413','d8b4b9b90a474cb50e9e56be7ceba3ec.jpg','2021-04-13 07:24:54');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (25,'GRM-20210413002','Mohamad Rosadi','089660076682','mohamadrosadi19@gmail.com',1,'@mohamadrosadi96','3208','Honda Vario 110','B3050315868','/assets/uploads/20210413','6b03833a12fb502b9bdf10f411a66582.jpg','/assets/uploads/20210413','b6b74dff0cf8bc05c4edd85afdde0e6b.jpg','2021-04-13 08:46:30');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (26,'GRM-20210413003','Mohamad Rosadi','089660076682','mohamadrosadi19@gmail.com',1,'@mohamadrosadi96','3208','Honda beat','B1030044521','/assets/uploads/20210413','9776d550472d30f63aea1c4633263025.jpg','/assets/uploads/20210413','87afdfe719d5cffd1a8acefea0f52266.jpg','2021-04-13 08:59:58');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (27,'GRM-20210413004','Siti fatimah','081355201240','Titizakir1511@gmail.com',0,'titi_anjhny','7372','Yamaha nmax','B3090059223','/assets/uploads/20210413','59f80655ffc887ed8cacefc3f63f2fce.jpg','/assets/uploads/20210413','f9b6ff06b408366e7d7a873396184a5e.jpg','2021-04-13 09:56:00');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (28,'GRM-20210413005','Siti fatimah','081355201240','Titizakir1511@gmail.com',0,'titi_anjhny','7372','Yamaha nmax','B3090059223','/assets/uploads/20210413','4cf83775e117dbd03552bb218977f172.jpg','/assets/uploads/20210413','e8f327b0b3711043e7bc03230f58a967.jpg','2021-04-13 09:56:08');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (29,'GRM-20210413006','Hanafi','081273301086','hanafiaja204@gmail.com',0,'','1673','Vario 125 old','B4050074391','/assets/uploads/20210413','46d57dca647809e69f550c3d660fdac5.jpg','/assets/uploads/20210413','b4e0f82a217791b8cbde888a60688a52.jpg','2021-04-13 10:47:30');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (30,'GRM-20210413007','ASEP SUMARNA','082282893969','asepsumarna331@gmail.com',0,'asepsumarna19','3271','Yamaha Vixion NVL','B3020296135','/assets/uploads/20210413','58625811f68f49c30813ac031096fc23.jpg','/assets/uploads/20210413','034481f5b645eb3f08f385aa8d7deb20.jpg','2021-04-13 11:05:01');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (31,'GRM-20210413008','Julio Jt','081262524106','Junedytumanggor@gmail.com',0,'Juliojt_id','3216','Honda Beat','B1020013604','/assets/uploads/20210413','f185471b23ae7dad082016fc2d79c2ce.jpg','/assets/uploads/20210413','12f6d378d5e6748f039a22d4a53d0240.jpg','2021-04-13 11:23:51');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (32,'GRM-20210413009','Rafi Dhiyaulhaq Aenudin Maksum','085723939192','rafidhiyaulhaq28@gmail.com',0,'rafidhiyaulhaq128','3210','Honda Beat','B3030236842','/assets/uploads/20210413','a2167cfd901d3a3bbc5e9ecaf6e31cda.jpg','/assets/uploads/20210413','dd8437f07799985bb4a7ae39e3daeb63.jpg','2021-04-13 12:06:03');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (33,'GRM-20210413010','ABAR','085399901222','akbarbonus028@gmail.com',0,'Aqbar fathir ramadhan','7314','Mio soul gt 125','B3030297274','/assets/uploads/20210413','def6cb5fb6f629faf27d861bfb5383f5.jpg','/assets/uploads/20210413','66b6657f2f1e0f77dd59f371007b50fd.jpg','2021-04-13 12:19:42');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (34,'GRM-20210413011','AKBAR','085399901222','akbarbonus028@gmail.com',0,'Aqbar fathir ramadhan','7314','Scoopy ','B2020379617','/assets/uploads/20210413','c76156554ad726e7279c55bce6f5756f.jpg','/assets/uploads/20210413','455d376d28daaead035261fad223c650.jpg','2021-04-13 12:22:05');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (35,'GRM-20210413012','AKBAR','085399901222','akbarbonus028@gmail.com',1,'Aqbar fathir ramadhan','7314','Jupiter z','B2040339876','/assets/uploads/20210413','b570d72c11635d00754a5fdbb1ae2aeb.jpg','/assets/uploads/20210413','942e9bd3647bbbe07a9fbe79fb1894ae.jpg','2021-04-13 12:29:03');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (36,'GRM-20210413013','AKBAR','085399901222','akbarbonus028@gmail.com',1,'Aqbar fathir ramadhan','7314','Mx king','B3010314546','/assets/uploads/20210413','0bac4d437eec4724cd2d684a6cfeac64.jpg','/assets/uploads/20210413','05893239f67cdf45c359a1e5098dae9d.jpg','2021-04-13 12:33:58');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (37,'GRM-20210413014','AKBAR','085399901222','akbarbonus028@gmail.com',1,'Aqbar fathir ramadhan','7314','Scoopy 12','B2020411669','/assets/uploads/20210413','a02d1c5d61a90af7c8d593dcab0cdc0d.jpg','/assets/uploads/20210413','ab5575f7506a477700af53f7053fc5f6.jpg','2021-04-13 12:37:29');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (38,'GRM-20210413015','AKBAR','085399901222','akbarbonus028@gmail.com',1,'Aqbar fathir ramadhan','7314','Scoopy','030033573','/assets/uploads/20210413','2c2a5445a868bfc27817d5090ae885fe.jpg','/assets/uploads/20210413','887271766b190405dc39d21d912ce78c.jpg','2021-04-13 12:42:02');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (39,'GRM-20210413016','AKBAR','085399901222','akbarbonus028@gmail.com',1,'Aqbar fathir ramadhan','7314','Scoopy','B203077553','/assets/uploads/20210413','f46d2f5f7f657ba7d76d217b5a333c3e.jpg','/assets/uploads/20210413','18836c315f438a7824d235099ca8fb76.jpg','2021-04-13 12:43:39');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (40,'GRM-20210413017','AKBAR','085399901222','akbarbonus028@gmail.com',1,'Aqbar fathir ramadhan','7314','Mio soul','B307024364','/assets/uploads/20210413','fe3e00bec6c4357de5469c8a5e794e91.jpg','/assets/uploads/20210413','d83268d9308cddebaa9b69092057e046.jpg','2021-04-13 12:46:43');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (41,'GRM-20210413018','Efdi irawan','082177778915','Ndutnian@yahoo.com',0,'FD_irawan','1671','Honda scoopy','B2020382128','/assets/uploads/20210413','6e925df651e531383c04357335605212.jpg','/assets/uploads/20210413','4dd0104190e05b756cef8992cbef07d8.jpg','2021-04-13 12:48:10');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (42,'GRM-20210413019','AKBAR','085399901222','akbarbonus028@gmail.com',1,'Aqbar fathir ramadhan','7314','Mio soul','B4050029539','/assets/uploads/20210413','788d256dfba82371de17d7d828ee9123.jpg','/assets/uploads/20210413','5e57b39196431512f087602232fcc074.jpg','2021-04-13 12:48:12');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (43,'GRM-20210413020','AKBAR','085399901222','akbarbonus028@gmail.com',1,'Aqbar fathir ramadhan','7314','Mio soul','B3050273667','/assets/uploads/20210413','1ff1b555efb68004f43d249da1a88454.jpg','/assets/uploads/20210413','d8dd63cc13c69e9c6681c355a1ab396f.jpg','2021-04-13 12:51:21');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (44,'GRM-20210413021','AKBAR','085399901222','akbarbonus028@gmail.com',1,'Aqbar fathir ramadhan','7314','Mio soul','B3050273667','/assets/uploads/20210413','7b20d1aa7902a600f99d261fecce2233.jpg','/assets/uploads/20210413','b1793dac4a221937164264fdf42631a3.jpg','2021-04-13 12:51:27');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (45,'GRM-20210413022','Septianhadhi','085753444350','Septianhadhi@gmail.com',1,'Septianhadhi._','6304','HONDA CBR150R','B3020312666','/assets/uploads/20210413','e3f975e1fd956ff696099e0006bd452a.jpg','/assets/uploads/20210413','5b669952b05619498cd571f7887f9363.jpg','2021-04-13 13:39:29');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (46,'GRM-20210413023','Tuani m roni tumanggor','O81311569876','ronytumanggar88@gmail.com',1,'tuanitumangger','3174','Yamaha nmax','B2010342340','/assets/uploads/20210413','5fbdbdff815586dacacfe141277d21f8.jpg','/assets/uploads/20210413','51b5312f9008256eb7951cbd9cb4e51b.jpg','2021-04-13 13:40:29');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (47,'GRM-20210413024','Julio Jt','081262524106','Junedytumanggor@gmail.com',0,'Juliojt_id','3275','Honda Vario','B1040045546','/assets/uploads/20210413','9b8e5aa9d1171d750c2223d2c114a22b.jpg','/assets/uploads/20210413','bf6dd310ce22512254b9ef20e56805b1.jpg','2021-04-13 13:43:59');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (48,'GRM-20210413025','Ellina situmorang','081293785693','ellinasitumorang@gmail.com',0,'ellinasitumorang','3174','Honda beat','B3030277457','/assets/uploads/20210413','b573e8c0066db7f0880ce72d5a429cad.jpg','/assets/uploads/20210413','4af8d4d5e13e14f57e3724d4aefe2b7d.jpg','2021-04-13 13:46:23');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (49,'GRM-20210413026','Yoice Sanera','085245321032','yoiceqiu@gmail.com',1,'yoicesanera','3173','Honda Vario','B1020014179','/assets/uploads/20210413','9f45328d4e005054760160bf87b481dd.jpg','/assets/uploads/20210413','14297775ad81288163edfa1c88757a0d.jpg','2021-04-13 13:49:28');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (50,'GRM-20210413027','Muhammad iqbal','082284382555','Iqbalpnp15@gmail.com',0,'Muhammadiqball14 ','1371','Honda vario','B2070231573','/assets/uploads/20210413','929bceef122fb347ac00a4a56592d67c.jpg','/assets/uploads/20210413','61dbcd50b115b64a2dedd0e1b0274ed3.jpg','2021-04-13 13:55:54');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (51,'GRM-20210413028','Muhammad iqbal','082284382555','Iqbalpnp15@gmail.com',0,'Muhammadiqball14 ','1371','Honda beat','B1040039160','/assets/uploads/20210413','4de943f6c8a024ed21025dc115bd52a1.jpeg','/assets/uploads/20210413','6ca3eb5ff7f53c13a029904953892cf2.jpeg','2021-04-13 13:59:35');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (52,'GRM-20210413029','Lily sanera ','082141034623','Lilysanera01@gmail.com',0,'','3173','','B4080028090','/assets/uploads/20210413','da4df5439c862799b7b21dbfe5f4d5d8.jpg','/assets/uploads/20210413','a3fb50b0ca82f02153135fd6ae051eda.jpg','2021-04-13 14:14:13');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (53,'GRM-20210413030','Muhammad iqbal','082284382555','Iqbalpnp15@gmail.com',1,'Muhammadiqball14 ','1371','Honda beat','B2090090451','/assets/uploads/20210413','19be02147f29c80212bf3a28d6117954.jpeg','/assets/uploads/20210413','60f30139dd3c99395250043be0fa6231.jpeg','2021-04-13 14:16:41');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (54,'GRM-20210413031','Muhammad iqbal','082284382555','Iqbalpnp15@gmail.com',1,'Muhammadiqball14 ','1371','Honda beat','B2010378382','/assets/uploads/20210413','f5076d998bbd06fbf1cc3544f96082b8.jpeg','/assets/uploads/20210413','6750fe1dd602b6546a11b31d8efc26d9.jpeg','2021-04-13 14:20:16');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (55,'GRM-20210413032','Harier Aji Tosan','083875973504','harieraji@gmail.com',0,'harieraji','3276','Suzuki Satria Fu 150','B2060378493','/assets/uploads/20210413','e71de8b5c4aeca55476a26c70fbf0789.jpg','/assets/uploads/20210413','bb518be9ac3402b7b4d981cb146db069.jpg','2021-04-13 14:21:38');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (56,'GRM-20210413033','Muhammad iqbal','082284382555','Iqbalpnp15@gmail.com',1,'Muhammadiqball14 ','1371','Honda beat','B2090090495','/assets/uploads/20210413','34f91240c73f111430ec1ad6f00e7964.jpeg','/assets/uploads/20210413','56837b65fd112b85a127b8753a749a67.jpeg','2021-04-13 14:23:01');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (57,'GRM-20210413034','Harier Aji Tosan','083875973504','harieraji@gmail.com',0,'harieraji','3276','Suzuki Satria Fu 150','B3010328530','/assets/uploads/20210413','ea70ca48a33fdb6d418f32ca5386a100.jpg','/assets/uploads/20210413','4489fc4ecc3c365c645d6a4ce5ded5d6.jpg','2021-04-13 14:24:46');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (58,'GRM-20210413035','Muhammad iqbal','082284382555','Iqbalpnp15@gmail.com',1,'Muhammadiqball14 ','1371','Honda Nmax','B2010360981','/assets/uploads/20210413','38ee544ca79199f362533b3cf2b63e35.jpeg','/assets/uploads/20210413','e07c374b437b5ff455bf0d9c214b20e3.jpeg','2021-04-13 14:26:06');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (59,'GRM-20210413036','Muhammad iqbal','082284382555','Iqbalpnp15@gmail.com',1,'Muhammadiqball14 ','1371','Honda Vario','B1030017864','/assets/uploads/20210413','97d7588c8e2d710969d2a0347e9af5c9.jpeg','/assets/uploads/20210413','33c5449cb062be0f8dfb919961ca75be.jpeg','2021-04-13 14:29:44');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (60,'GRM-20210413037','Muhammad iqbal','082284382555','Iqbalpnp15@gmail.com',1,'Muhammadiqball14 ','1371','Honda Beat','B1030019503','/assets/uploads/20210413','90974dd78052d6ef31961515b703896c.jpeg','/assets/uploads/20210413','c09d001d22b2fd7979abdf7e992430f2.jpeg','2021-04-13 14:31:49');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (61,'GRM-20210413038','Muhammad iqbal','082284382555','Iqbalpnp15@gmail.com',1,'Muhammadiqball14 ','1371','Yamaha mio','B3050273971','/assets/uploads/20210413','4239ff8076461b9b7de7bf3f3dfcaa06.jpeg','/assets/uploads/20210413','a7b1285e6b5943b51fa50fd5b40460e3.jpeg','2021-04-13 14:33:55');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (62,'GRM-20210413039','Muhammad iqbal','082284382555','Iqbalpnp15@gmail.com',1,'Muhammadiqball14 ','1371','Honda beat','B1030017747','/assets/uploads/20210413','be7744901f93c132ae5a9001a117a865.jpeg','/assets/uploads/20210413','1fd3921a2e635cafc66e2f6158954111.jpeg','2021-04-13 14:36:19');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (63,'GRM-20210413040','Muhammad iqbal','082284382555','Iqbalpnp15@gmail.com',1,'Muhammadiqball14 ','1371','Honda beat','B1060038797','/assets/uploads/20210413','3214eb2b3e5518603b915e6593d3f364.jpeg','/assets/uploads/20210413','770b38c98fbe37c45c984390807e7155.jpeg','2021-04-13 14:38:03');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (64,'GRM-20210413041','Juwita sanera','085358072017','juwitasanera2020@gmail.com',0,'Sanera_juwita','3215','Vixion new','B4080024265','/assets/uploads/20210413','4cfd3f351e0f17bae5717701cb4ba6f8.jpg','/assets/uploads/20210413','5e0bd8017b0eecf9b0bec2b520215871.jpg','2021-04-13 15:23:01');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (65,'GRM-20210413042','Juwita sanera','085358072017','juwitasanera2020@gmail.com',0,'Sanera_juwita','3215','Vixion new','B4080028554','/assets/uploads/20210413','18ec8d50070e81bb3b9097cf97133dd3.jpg','/assets/uploads/20210413','b13168ded38c5704b388ac3d6bdd97c6.jpg','2021-04-13 15:24:34');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (66,'GRM-20210413043','PAPIK DWISETYAWAN','085713333750','kakatya08@gmail.com',0,'APRIMOTOR KARANGJATI','3402','','B2010373962','/assets/uploads/20210413','30e48a20abe9da3b85bf3751370d97d2.jpg','/assets/uploads/20210413','1dc5e28bc20e1bfb034108f4e7a2d53b.jpg','2021-04-13 15:43:11');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (67,'GRM-20210413044','Ahmad','085268952560','Ahmadlinggau637@gmail.com',0,'@rahmadputrarantau','1673','Honda beat','B4040073846','/assets/uploads/20210413','2c90dbe729190e540a85acf40ab52df0.jpg','/assets/uploads/20210413','8908dfa840eb98f5e743f11487deccfa.jpg','2021-04-13 15:44:25');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (68,'GRM-20210413045','Jejen rustandi','082214802927','Jejenrustandi01@gmail.com',0,'jen_ruztandy','3206','Beat fi','B2010376715','/assets/uploads/20210413','97d8149dcac032afe03f3580191f428b.jpg','/assets/uploads/20210413','fd6bbf649113c768c45625e88f09701a.jpg','2021-04-13 16:29:05');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (69,'GRM-20210413046','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'Abu kembar Arrows','7316','Mio','83010317366','/assets/uploads/20210413','2cfceee4ddf0d401cdc002d6a4b92190.jpg','/assets/uploads/20210413','72b24ff7748be9b2f559338dbbbea229.jpg','2021-04-13 16:48:09');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (70,'GRM-20210413047','Jejen rustandi','082214802927','Jejenrustandi01@gmail.com',0,'jen_ruztandy','3206','Beat fi','B2010376680','/assets/uploads/20210413','04d8d74ff8e702f6f26465ba59e40e59.jpg','/assets/uploads/20210413','5011613576a9a3375d17533a6fc5f1ab.jpg','2021-04-13 17:32:59');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (71,'GRM-20210413048','Tuani m roni tumanggor','081311569876','ronytumanggar88@gmail.com',0,'cankianmotor','3174','','B1060065073','/assets/uploads/20210413','db209e51cbc5c98e3c842b17879dbf94.jpg','/assets/uploads/20210413','4bcb9414d028b65148e422d75afa81f8.jpg','2021-04-13 17:53:25');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (72,'GRM-20210413049','Febi kristian manuel nainggolan','089618777461','Febidasilva@gmail.com',1,'kristianmanuelfebi','3204','Pcx160','B3030153730','/assets/uploads/20210413','aa31b69710666fa4334711ca98bdcbd6.jpg','/assets/uploads/20210413','6d369b76c22696384cc7dcfc7c7ca343.jpg','2021-04-13 17:58:04');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (73,'GRM-20210413050','Deki muliadi','081807333112','Dekymulyadi17@gmail.com',0,'Deki_ming','3171','Yamaha','B2060380792','/assets/uploads/20210413','e0eda8f71341bbe6b05b419f4690e990.jpg','/assets/uploads/20210413','0af11bfd096f444cd4ba171bc994df3a.jpg','2021-04-13 20:26:47');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (74,'GRM-20210413051','Muqtadir','081242464843','Tadirkakkoi@gmail.com',0,'Abu Kembar Arrows','7316','Mio','B3020339302','/assets/uploads/20210413','481acb3cbb75b5097c0ad79d841116fc.jpg','/assets/uploads/20210413','148e4422f6d996931f3fe0b839b47ceb.jpg','2021-04-13 22:00:48');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (75,'GRM-20210413052','Muqtadir','081242464843','Tadirkakkoi@gmail.com',0,'Abu Kembar Arrows','7316','Mio','B2040335657','/assets/uploads/20210413','588a9a3d213db60788d6cb2e753a2d26.jpg','/assets/uploads/20210413','898e21dd174c6145da7e62b5eb1d307f.jpg','2021-04-13 22:07:38');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (76,'GRM-20210413053','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'Abu Kembar Arrows','7316','Mio','B2040335646','/assets/uploads/20210413','5408808e0b8a633e905a34845960a7ca.jpg','/assets/uploads/20210413','3e38ce09fea2def1c232028734183201.jpg','2021-04-13 22:10:39');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (77,'GRM-20210413054','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'Abu Kembar Arrows','7316','Mio','B4050043464','/assets/uploads/20210413','6baaf59cf088538c837e4577f0c3ba2f.jpg','/assets/uploads/20210413','2601a3bc2d5090a3d5452f0a9cce0b3e.jpg','2021-04-13 22:15:46');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (78,'GRM-20210413055','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'Abu Kembar Arrows','7316','Mio','B1080017501','/assets/uploads/20210413','1aab12c2c88f04a3fa5a9a2b6cddbf54.jpg','/assets/uploads/20210413','8f15d2fd95c0ec70ef91f638a7dafe4d.jpg','2021-04-13 22:19:28');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (79,'GRM-20210413056','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'Abu Kembar Arrows','7316','Mio','B4050042913','/assets/uploads/20210413','ce8a3c1723d2a05f013ea3ddde715edc.jpg','/assets/uploads/20210413','9f48927fd2ae99869e80d6094da3e4ef.jpg','2021-04-13 22:23:31');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (80,'GRM-20210413057','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'Abu Kembar Arrows','7316','Mio','B1080017484','/assets/uploads/20210413','09db784b2522d91d8a52191d5fc6df3e.jpg','/assets/uploads/20210413','019c2f9528fb321ce3c113d29bef8234.jpg','2021-04-13 22:27:50');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (81,'GRM-20210413058','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'Abu Kembar Arrows','7316','Mio','B2020353347','/assets/uploads/20210413','766db1c6ee3b90b35f7108d4ae6de7d4.jpg','/assets/uploads/20210413','13738bf1a0457ca9ffd01fd88f446bae.jpg','2021-04-13 22:30:41');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (82,'GRM-20210413059','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'Abu Kembar Arrows','7316','Mio','B2020367908','/assets/uploads/20210413','a024cbf7cc512dc849b4fbf2c22f68ec.jpg','/assets/uploads/20210413','52baad4fb4da03420a2f0c12a45a0453.jpg','2021-04-13 22:33:25');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (83,'GRM-20210413060','Risal eko sumartono','085784735399','Rizalekosumartono22@email.com',1,'Rizalsv','3517','Yamaha mio','B4050076515','/assets/uploads/20210413','198fafe1f6a2a316cf98441973c43f24.jpg','/assets/uploads/20210413','9507016b42f8d8b4288c5a4f8f82fc0e.jpg','2021-04-14 04:09:33');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (84,'GRM-20210414001','Sakun Arip Ardiansyah','0896-6533-1299','sakunkosngempat@gmail.com',1,'Sakun Kosong Empat','3216','Yamaha Nmax','B3020312834','/assets/uploads/20210414','bc7c0583f8283efe0543e56286721249.jpg','/assets/uploads/20210414','8989e4f9fc16b5125f520ebe76e81875.jpg','2021-04-14 07:32:23');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (85,'GRM-20210414002','Rocxy fazila','082389114676','rockyfazilala@gmail.com',0,'Rocky_fazila','2171','Honda vario','B4050069952','/assets/uploads/20210414','3e9fa664af99182549f663d2a3c0cf54.jpg','/assets/uploads/20210414','34c019f67cda48aff69ca5b68415b6ab.jpg','2021-04-14 07:50:02');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (86,'GRM-20210414003','Icha Hani Putri Utami','087822147449','ichautami09@gmail.com',0,'hani_icha','3273','Yamaha Nmax','B3090064471','/assets/uploads/20210414','cc2d7eb39aefee10286e2976c0707e0e.jpg','/assets/uploads/20210414','0700f4192f59458d3749d81e4a053062.jpg','2021-04-14 08:35:36');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (87,'GRM-20210414004','Bobby Hadiansyah','087722893835','bob.contact.person@gmail.com',0,'bobby.hadi','3273','Yamaha N-Max ','B3030322310','/assets/uploads/20210414','851833c3e7fb7f0282795634147c9487.jpg','/assets/uploads/20210414','9e89e7eceb9a26247287b6cec41d18ec.jpg','2021-04-14 08:41:54');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (88,'GRM-20210414005','Rocxy fazila','082389114676','rockyfazilala@gmail.com',0,'Rocky_fazila','2171','Honda vario','B2020216195','/assets/uploads/20210414','be5d1240da3d62d89a38d7079ee7a90f.jpg','/assets/uploads/20210414','e27321306dfa6d70ce1bca721d9ccc0b.jpg','2021-04-14 09:22:00');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (89,'GRM-20210414006','Sutrimo','085713730391','alfanikhsan657@gmail.com',0,'alfanikhsan657@gmail.com','3319','','B4090031340','/assets/uploads/20210414','920acbd1b6ed6f9968beef992eac2f1b.jpg','/assets/uploads/20210414','e1a7941bd1f21cadb9c959e19011ffe3.jpg','2021-04-14 09:25:56');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (90,'GRM-20210414007','Mohammad mansyur','081345001711','mansyur_najha@yahoo.com',0,'Mansyur najha mohammad','3525','Vario techno 125','B1050060913','/assets/uploads/20210414','2bdcb6fb35814dc939388d1c1a51c36e.jpg','/assets/uploads/20210414','00500665a01dc49e118909a298a36299.jpg','2021-04-14 09:28:02');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (91,'GRM-20210414008','Mardian Setyo Afrilianto','085866089856','diyanbont97@gmail.com',1,'','3318','Yamaha Jupiter','B2060373059','/assets/uploads/20210414','4fd77de0d2014a1aab4e95eb751181a9.jpg','/assets/uploads/20210414','3bf0a6c1d3a6bb3d0622630e036c85dd.jpg','2021-04-14 09:48:46');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (92,'GRM-20210414009','Tuani m roni tumanggor','O81311569876','ronytumanggar88@gmail.com',1,'tuanitumangger','3174','Honda beat','B2070067331','/assets/uploads/20210414','f0dd09a6f5c62b551601f55ea896653b.jpg','/assets/uploads/20210414','353e1df3a72939b2008df84cbdb1b236.jpg','2021-04-14 10:14:40');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (93,'GRM-20210414010','Jornawan setiawan','085319256398','Jornawan.setiawan@gmail.com',0,'Jornawan','3275','Beat F1','B2050363880','/assets/uploads/20210414','18392f26a11d266c798116187c55ae94.jpg','/assets/uploads/20210414','8228223e965eaab01b5580ba421c3129.jpg','2021-04-14 10:21:54');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (94,'GRM-20210414011','Achmad Syamsudin','085726857332','flasholic@gmail.com',0,'Syamsudin_achmad','3313','Nmax','B2090112682','/assets/uploads/20210414','f221877b4ee10d3c96bb2590018be94b.jpg','/assets/uploads/20210414','3b9ed1acd9e1deb94217a4e1289c80fc.jpg','2021-04-14 10:31:30');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (95,'GRM-20210414012','Agus Pratama','089664198618','agspratama12@gmail.com',1,'agsprtm_','3273','Yamaha Mio Sporty','ETM00183000','/assets/uploads/20210414','554912cef088075b47fa3e13e44f6ba6.jpg','/assets/uploads/20210414','722d55bd9d0786ea7c83e006a4f7b054.jpg','2021-04-14 10:37:31');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (96,'GRM-20210414013','Agus Pratama','089664198618','agspratama12@gmail.com',1,'agsprtm_','3273','Yamaha Mio Sporty','ETM0001990','/assets/uploads/20210414','4940c321302f2e3565d6f6b879bf9357.jpg','/assets/uploads/20210414','6abd1bded50d144a20780407de0d3ae3.jpg','2021-04-14 10:40:25');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (97,'GRM-20210414014','Reski Respati','089663088669','reski.respati82@gmail.com',1,'Afatar82','3275','Honda beatEat','ETM000','/assets/uploads/20210414','aa734d9c75dd11eca0b9f2ecfc5eaeea.jpg','/assets/uploads/20210414','222b7a6e076826fe3483353d37595779.jpg','2021-04-14 10:50:15');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (98,'GRM-20210414015','SAHRI ROMADHON','081389416910','sahrikava20@gmail.com',0,'Sahri Romadhon','3275','Beat FI','B1010007199','/assets/uploads/20210414','5f4e1e1955f61cb907fb720ad5b8c82d.jpg','/assets/uploads/20210414','8c75a7bf86581a8c6db6c570196d957a.jpg','2021-04-14 10:58:24');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (99,'GRM-20210414016','Ghozi Tarona','085156363420','ghozitrn@gmail.com',0,'@justezii','6471','Yamaha Jupiter Z1','B3010279522','/assets/uploads/20210414','67a010ab13fb69c39bd1ca81696a24b0.jpg','/assets/uploads/20210414','f70876aefb567190196b61d9c9bc627f.jpg','2021-04-14 11:22:07');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (100,'GRM-20210414017','Tuani m roni tumanggor','081311569876','ronytumanggar88@gmail.com',1,'cankianmotor','3174','','B3030283606','/assets/uploads/20210414','dfc7c0392e9cdf1675d78dc827e555ef.jpg','/assets/uploads/20210414','7af42dbe24e8712eeac260b2e5e68246.jpg','2021-04-14 12:24:38');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (101,'GRM-20210414018','Tuani m roni tumanggor','O81311569876','ronytumanggar88@gmail.com',1,'tuanitumangger','3174','Yamaha nmax','B2010355843','/assets/uploads/20210414','da2b584f5dce348e0d31d769b2e2083b.jpg','/assets/uploads/20210414','4966c1c4ebd125c25bcc2014c307aa59.jpg','2021-04-14 12:34:02');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (102,'GRM-20210414019','SIDDIQ MUSTOFA AL-\'ALWI','085729598757','siddiqmustofa94@gmail.com',0,'siddiqmustofa','3306','Suzuki Satria FU','B3010212141','/assets/uploads/20210414','65a3d20c1258becc1be4ebefbd41724c.jpg','/assets/uploads/20210414','47bce27debc1531da935dfb49ba3a592.jpg','2021-04-14 12:44:15');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (103,'GRM-20210414020','Rizki Nanda Putra','082371866222','rizkinandaputra20@gmail.com',0,'rzki_np','1673','Honda Beat','B3070264461','/assets/uploads/20210414','d899c8f5e2b1cbed871c81d03620e4d0.jpg','/assets/uploads/20210414','f00993014f17bc18487faddedfc35f3d.jpg','2021-04-14 12:49:45');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (104,'GRM-20210414021','YULI ASTRINI MULIYADI','082199191191','Yuliastrini9@gmail.com',1,'Ulhyastrini.m','7313','Jupiter Mx','B2090119254','/assets/uploads/20210414','8c0c0ec031add7cf885cbb0b4f188b90.jpg','/assets/uploads/20210414','ac67b41d15f3663e46a4e84ce4fdae13.jpg','2021-04-14 12:53:02');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (105,'GRM-20210414022','YULI ASTRINI MULIYADI','082199191191','Yuliastrini9@gmail.com',1,'Ulhyastrini.m','7313','yamaha','B4070043329','/assets/uploads/20210414','ef068c031b71b37d1e81e13247ea2273.jpg','/assets/uploads/20210414','9fa5f241989e265ecaf8a8d0bb4e75d6.jpg','2021-04-14 12:55:40');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (106,'GRM-20210414023','YULI ASTRINI MULIYADI','082199191191','Yuliastrini9@gmail.com',1,'Ulhyastrini.m','7313','yamaha','B4070042953','/assets/uploads/20210414','f0b67924666ddd75d5747f1e8e0de773.jpg','/assets/uploads/20210414','8b3efd59421fb342a174788923d75ed7.jpg','2021-04-14 12:57:41');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (107,'GRM-20210414024','ILHAM SETIAWAN','088228730380','ilham.setia31@gmail.com',0,'iam.stawn','3306','Yamaha mio m3','B2020389935','/assets/uploads/20210414','d4fb6a55cf1812e674fd0755829be18a.jpg','/assets/uploads/20210414','4fb2243f5f97ca86b5dee335f9fcd39c.jpg','2021-04-14 13:02:38');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (108,'GRM-20210414025','Ramlan gomgom','085810216195','ramlangomgom9@gmail.com',1,'Ramlanoxs','3671','Nmax','Ex:B3090067858','/assets/uploads/20210414','aed03b76cf53ccfb1e81e861d7a13ff8.jpg','/assets/uploads/20210414','16b163ff8c33a90492755497dfc2129c.jpg','2021-04-14 13:07:00');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (109,'GRM-20210414026','Ramlan gomgom','085810216195','ramlangomgom9@gmail.com',0,'Ramlanoxs','3671','Nmax','B3090066725','/assets/uploads/20210414','ea689be21888ba98994f9546fab3b32e.jpg','/assets/uploads/20210414','c39fe4cdf3483ad57acf7b8ca74a926d.jpg','2021-04-14 13:09:55');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (110,'GRM-20210414027','Ramlan gomgom','085810216195','ramlangomgom9@gmail.com',1,'Ramlanoxs','3671','Honda vario','B2030312019','/assets/uploads/20210414','f66470595644f9fdb1edb8aa93adf261.jpg','/assets/uploads/20210414','467033701c2b37f52fd71298e28eabb0.jpg','2021-04-14 13:13:42');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (111,'GRM-20210414028','Ramlan gomgom','085810216195','ramlangomgom9@gmail.com',1,'Ramlanoxs','3671','Honda vario','B1050061381','/assets/uploads/20210414','47e51250ae5af5d82ba17a08df0d9b55.jpg','/assets/uploads/20210414','45b28f50e604c725bc654a3c67e91cf1.jpg','2021-04-14 13:16:34');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (112,'GRM-20210414029','Ramlan gomgom','085810216195','ramlangomgom9@gmail.com',1,'Ramlanoxs','3671','Honda vario','B4050073220','/assets/uploads/20210414','32f4f1d5d904ef4ba2eb60bb0a084db0.jpg','/assets/uploads/20210414','a198a93b2980b1b8d73dc497e02617a9.jpg','2021-04-14 13:19:05');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (113,'GRM-20210414030','Ramlan gomgom','085810216195','ramlangomgom9@gmail.com',1,'Ramlanoxs','3671','Honda vario','B3070253827','/assets/uploads/20210414','13b524cd5b672777a8e2e96555942ab5.jpg','/assets/uploads/20210414','537e75599fc32c0d4efe062859da16ba.jpg','2021-04-14 13:20:47');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (114,'GRM-20210414031','Ramlan gomgom','085810216195','ramlangomgom9@gmail.com',1,'Ramlanoxs','3671','Honda vario','B3070253783','/assets/uploads/20210414','4f91356f48b56b2d8cf22f7092dbdc44.jpg','/assets/uploads/20210414','bead68c63f6e326b1587245796ef020f.jpg','2021-04-14 13:22:31');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (115,'GRM-20210414032','Ramlan gomgom','085810216195','ramlangomgom9@gmail.com',1,'Ramlanoxs','3671','Honda vario','B3050321593','/assets/uploads/20210414','c23589c1a713010a4bf2791a27f14f1d.jpg','/assets/uploads/20210414','32e0dd671766c5f5954ee98d0007e95a.jpg','2021-04-14 13:26:02');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (116,'GRM-20210414033','Ramlan gomgom','085810216195','ramlangomgom9@gmail.com',1,'Ramlanoxs','3671','Honda vario','B2010387332','/assets/uploads/20210414','376d4279a29a74fe52488d64f1d9a99d.jpg','/assets/uploads/20210414','3fd5599e03d6b2d7cdf736e0f5c0d274.jpg','2021-04-14 13:28:30');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (117,'GRM-20210414034','Ramlan gomgom','085810216195','ramlangomgom9@gmail.com',1,'Ramlan oxs','3671','Honda vario','B1030046878','/assets/uploads/20210414','33e128abaefd0efd33e6bb2a195094b5.jpg','/assets/uploads/20210414','414f21f7584ae774e334074982834e0f.jpg','2021-04-14 13:30:08');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (118,'GRM-20210414035','Ramlan gomgom','085810216195','ramlangomgom9@gmail.com',1,'Ramlanoxs','3671','Honda vario','B2030312143','/assets/uploads/20210414','4a318156e8f5d418c337269b4cd937b8.jpg','/assets/uploads/20210414','536dec590affc694a627981945d39fac.jpg','2021-04-14 13:32:04');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (119,'GRM-20210414036','Ramlan gomgom','085810216195','ramlangomgom9@gmail.com',1,'Ramlanoxs','3671','Honda vario','B2070232537','/assets/uploads/20210414','3729820cb3809a9eec54bbd4f4afaabb.jpg','/assets/uploads/20210414','ba9a0d5e546b452418658d28d23839a3.jpg','2021-04-14 13:34:41');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (120,'GRM-20210414037','Ramlan gomgom','085810216195','ramlangomgom9@gmail.com',1,'Ramlanoxs','3671','Honda vario','B1050061280','/assets/uploads/20210414','2514fa4b3cd3c35d3f695e8613722624.jpg','/assets/uploads/20210414','b8a73a9a01400a46e311093b14be9ae8.jpg','2021-04-14 13:36:47');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (121,'GRM-20210414038','Ramlan gomgom','085810216195','ramlangomgom9@gmail.com',1,'Ramlanoxs','3671','Honda vario','B3070253802','/assets/uploads/20210414','221bf941e12fdf480a8b9ed8b72072a7.jpg','/assets/uploads/20210414','84dd9ff90ec4864d101cfafc8281ce51.jpg','2021-04-14 13:38:23');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (122,'GRM-20210414039','Ramlan gomgom','085810216195','ramlangomgom9@gmail.com',1,'Ramlanoxs','3671','Honda vario','B1030047124','/assets/uploads/20210414','5a613657ae2960eb95bfc49fa1061b50.jpg','/assets/uploads/20210414','0ddacdff1705979fd13c7e8e5a34999b.jpg','2021-04-14 13:40:13');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (123,'GRM-20210414040','Ramlan gomgom','085810216195','ramlangomgom9@gmail.com',1,'Ramlanoxs','3671','Honda vario','B2030312005','/assets/uploads/20210414','9088694c42730f82a4eea5b30bd7f60e.jpg','/assets/uploads/20210414','dacd987ebb67899a2f74312b945494d4.jpg','2021-04-14 13:41:53');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (124,'GRM-20210414041','Ramlan gomgom','085810216195','ramlangomgom9@gmail.com',1,'Ramlanoxs','3671','Honda vario','B2030311834','/assets/uploads/20210414','d767340a0a78741cd9d999a200ae6a41.jpg','/assets/uploads/20210414','e7417ebb0ded4dbf81a02a87463a1758.jpg','2021-04-14 13:43:27');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (125,'GRM-20210414042','Ramlan gomgom','085810216195','ramlangomgom9@gmail.com',1,'Ramlanoxs','3671','Honda vario','B1050058089','/assets/uploads/20210414','705c691f31fc9352b715bfafbf5787f1.jpg','/assets/uploads/20210414','4b2da4ab145e55d69215064dc46bc5aa.jpg','2021-04-14 13:44:56');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (126,'GRM-20210414043','Ramlan gomgom','085810216195','ramlangomgom9@gmail.com',1,'Ramlanoxs','3671','Honda vario','B3070254634','/assets/uploads/20210414','109f21769f54875ac235780a59528092.jpg','/assets/uploads/20210414','0186fd0194118b6d215666d8bdee9260.jpg','2021-04-14 13:46:35');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (127,'GRM-20210414044','Ferry Joko susanto','085266584422','ryferry862@gmail.com',1,'Pembengis 9876','1506','Vario','B4070049375','/assets/uploads/20210414','919696307515a22bb17ebcf4e05c798e.jpg','/assets/uploads/20210414','28d9518b848f47eeb53dc17001b17f8a.jpg','2021-04-14 14:45:08');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (128,'GRM-20210414045','Gilang Prona Alara','082110006690','Gilangprona66@gmail.com',0,'GilangProna','1673','Kawasaki Ninja R 150','B4080012468','/assets/uploads/20210414','6c45d267b3ca8dd63f81ec02ddb6a70a.jpg','/assets/uploads/20210414','9a840ba242d86e56e8eb9399c5dcc23b.jpg','2021-04-14 14:45:55');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (129,'GRM-20210414046','Tuani m roni tumanggor','O81311569876','ronytumanggar88@gmail.com',0,'tuanitumangger','3174','Honda vario','B2070204874','/assets/uploads/20210414','809e2b2a91ef190ee04bdfdd228fa2a2.jpg','/assets/uploads/20210414','80d59afe3ca05654a36fc06926b49dac.jpg','2021-04-14 15:21:07');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (130,'GRM-20210414047','Eva anggraeni inta pertiwi','082133055523','evasoungnal89@gmail.com',0,'evaanggraeniintapertiwi','3306','Suzuki nex','B2010370118','/assets/uploads/20210414','c8f8bef4d75d9ff224fb4ea41424c169.jpg','/assets/uploads/20210414','fb6c659ecca421c22df9544c44c85455.jpg','2021-04-14 15:37:01');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (131,'GRM-20210414048','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'Abu Kembar Arrows','7316','Mio','B4040044154','/assets/uploads/20210414','c8777b25d345dca8a3fc6730ad49ef25.jpg','/assets/uploads/20210414','e9ccad6beb597c5dcecf5cfef2d65808.jpg','2021-04-14 15:46:26');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (132,'GRM-20210414049','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'Abu Kembar Arrows','7316','Mio','B3050288396','/assets/uploads/20210414','f2dded954946e4bfcc0d07102eed21bc.jpg','/assets/uploads/20210414','b75699834d59a9335ab26e4a3f782e11.jpg','2021-04-14 15:53:06');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (133,'GRM-20210414050','Muhammad syakirin','085384100615','Syakirinsyarifah99@gmail.com',1,'Syakirinkhan91@gmail.com','1671','Honda revo f1','B1080045775','/assets/uploads/20210414','f262c5fac68e3afbbbc3e5b0688e3121.jpg','/assets/uploads/20210414','8fd4fbde809a19e6bc06824566b5be1e.jpg','2021-04-14 15:55:57');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (134,'GRM-20210414051','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'Abu Kembar Arrows','7316','Mio','B3030295913','/assets/uploads/20210414','7f67bb9b88f72860402ef4f9b646370c.jpg','/assets/uploads/20210414','6a7f633eead4b792ced8e62854d4495b.jpg','2021-04-14 15:59:48');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (135,'GRM-20210414052','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'Abu Kembar Arrows','7316','Mio','B1080014713','/assets/uploads/20210414','4700c2903b0b80e50cc6b61d6b2076b3.jpg','/assets/uploads/20210414','b01b83d23c0b51a6b86b057d716a774c.jpg','2021-04-14 16:09:53');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (136,'GRM-20210414053','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'Abu Kembar Arrows','7316','Mio','B4040028368','/assets/uploads/20210414','830f8a94e6d9c8eb75daf63282d959c9.jpg','/assets/uploads/20210414','d71b8ead5b64202407d1c4bc5d344869.jpg','2021-04-14 16:13:40');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (137,'GRM-20210414054','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'Abu Kembar Arrows','7316','Mio','Mio','/assets/uploads/20210414','d23a0a13fe1b81ad1b464a80de34704e.jpg','/assets/uploads/20210414','9d0b84be2b271f4a27f38b24ac3eb63a.jpg','2021-04-14 16:17:17');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (138,'GRM-20210414055','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'Abu Kembar Arrows','7316','Mio','B2090045659','/assets/uploads/20210414','951889f5873f76118cc611359f0ac012.jpg','/assets/uploads/20210414','a7365d469fe89cc19067a15333d13394.jpg','2021-04-14 16:22:25');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (139,'GRM-20210414056','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'Abu Kembar Arrows','7316','Mio','B4050044030','/assets/uploads/20210414','0dcd5db5bbf36519fc061defd3f20900.jpg','/assets/uploads/20210414','fbc34241431a739bc1c1d7ff7d280a76.jpg','2021-04-14 16:29:30');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (140,'GRM-20210414057','Sakun Arip Ardiansyah','0896-6533-1299','sakunkosngempat@gmail.com',0,'Sakun Kosongempat','3216','Yamaha Nmax','B4080017070','/assets/uploads/20210414','8d38e2e500bdc32728142fdfa190b500.jpg','/assets/uploads/20210414','18981c5bb699f65b04bab3597e11d1bb.jpg','2021-04-14 17:28:44');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (141,'GRM-20210414058','Sakun Arip Ardiansyah','0896-6533-1299','sakunkosngempat@gmail.com',1,'Sakun Kosongempat','3216','Yamaha Nmax','B4080017193','/assets/uploads/20210414','d6d0da414364b46f2a2d384ca2221243.jpg','/assets/uploads/20210414','d8216a409c7c95cf43c2e1070d5391e8.jpg','2021-04-14 17:31:50');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (142,'GRM-20210414059','Sakun Arip Ardiansyah','0896-6533-1299','sakunkosngempat@gmail.com',1,'Sakun Kosongempat','3216','Yamaha Nmax','B3030291309','/assets/uploads/20210414','368147c34782fd3487de5b85e9da36d7.jpg','/assets/uploads/20210414','8dc0f65a0f36d8ea3af259f2daf45340.jpg','2021-04-14 17:35:58');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (143,'GRM-20210414060','Sakun Arip Ardiansyah','0896-6533-1299','sakunkosngempat@gmail.com',1,'Sakun Kosongempat','3216','Yamaha Nmax','B4070035921','/assets/uploads/20210414','baba3706814a1a5f0a238b3b584b787d.jpg','/assets/uploads/20210414','3ea9eba4dce1e67927cb7e60b03b2ed2.jpg','2021-04-14 17:38:08');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (144,'GRM-20210414061','SUHARYANTO ','089604524363 ','yantohar496@gmail.com',1,'suro. sudiro','5271','Beat','B1050070954','/assets/uploads/20210414','ca2ac8b0ea91fc8b81233bce52e89205.jpg','/assets/uploads/20210414','5be057b24b62e6a704cb3c10d5774f49.jpg','2021-04-14 17:40:00');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (145,'GRM-20210414062','SUHARYANTO ','089604524363 ','yantohar496@gmail.com',1,'suro. sudiro','5271','Beat','B1070078409','/assets/uploads/20210414','e7ae6dbfcf3302523a828358631ef383.jpg','/assets/uploads/20210414','3a4c1ae8db9f22c1412b384a646dbac1.jpg','2021-04-14 17:42:43');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (146,'GRM-20210414063','Diki firnanda','083837112481','dicky.electric@gmail.com',1,'dikifirnanda','3216','gsx150r','B3010319691','/assets/uploads/20210414','4e432034671b37741fa30bda01165142.png','/assets/uploads/20210414','86dce160bf2c6f88095ec09612d6f1d5.png','2021-04-14 17:47:23');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (147,'GRM-20210414064','Abdul Gani','081310217737','a.gani180993@gmail.com',1,'','3216','Honda Vario 150 cc','B3070234056','/assets/uploads/20210414','a01a452561c43d510421d48a61e1e889.jpg','/assets/uploads/20210414','c765099e0350ab0b28592c4c5c641b09.jpg','2021-04-14 18:22:23');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (148,'GRM-20210414065','Ratna Dewi','082211982038','raaatnad@gmail.com',1,'ratnaaaaad','3215','Honda CB150R','B3010332308','/assets/uploads/20210414','e388c79f07fe0e68f683e2174a2de96f.jpg','/assets/uploads/20210414','cc2d26f36b073741587cde59841e78ff.jpg','2021-04-14 18:25:26');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (149,'GRM-20210414066','Ratna Dewi','082211982038','raaatnad@gmail.com',1,'ratnaaaaad','3215','CB150R','B3020353496','/assets/uploads/20210414','e7d8fca3a345399792d2716ea78bc61f.jpg','/assets/uploads/20210414','e294b5aa3b74da648921922ec25597aa.jpg','2021-04-14 18:29:27');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (150,'GRM-20210414067','Viki Hidayat','08561555017','vickydayat153@gmail.com',1,'Vicky_fly11','3215','Kawasaki Ninja Rr','B3060475971','/assets/uploads/20210414','05189529058c773f3d1ced3eba0dba71.jpg','/assets/uploads/20210414','d9dd4b34ae16e9baafa98497d4d1c831.jpg','2021-04-14 18:33:59');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (151,'GRM-20210414068','Muhamad Riski Maulana','081284769798','mriskim129@gmail.com',1,'_riskimaulana29','3210','Kawasaki KLX','B4080005309','/assets/uploads/20210414','2c360021ce57d41b4a098ef5c32efcdd.jpg','/assets/uploads/20210414','5cff7d704d9d927c3bc0c50464a3ecb6.jpg','2021-04-14 19:13:58');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (152,'GRM-20210414069','Muhamad Riski Maulana','081284769798','mriskim129@gmail.com',1,'_riskimaulana29','3210','Kawasaki KLX','B4080005555','/assets/uploads/20210414','91db75f6f19f8bdc0d614b942a83ca27.jpg','/assets/uploads/20210414','61c2a95d46f0ed048aa0f6cb7fea80cf.jpg','2021-04-14 19:16:43');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (153,'GRM-20210414070','TARMIDI','082260772388','thejackul02@gmail.com',1,'Tarmidi Alisyahbana','1610','Yamaha Fino','B 1010012838','/assets/uploads/20210414','b7bc931e8c5132db9373c3fd0133cc5a.jpg','/assets/uploads/20210414','8d4fac00d519b4a962b683eab5fb555d.jpg','2021-04-14 19:38:21');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (154,'GRM-20210414071','TARMIDI','082260772388','thejackul02@gmail.com',1,'Tarmidi Alisyahbana','1610','Yamaha Fino','B 1070067541','/assets/uploads/20210414','bb99257d1861a8a076108881246ad132.jpg','/assets/uploads/20210414','dde528994f1b7033342f7978fca4dfd8.jpg','2021-04-14 19:44:24');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (155,'GRM-20210414072','Rizky Maulana','085780166907','rizkymln99@gmail.com',1,'@Rzkymln.9','3216','Honda C70','B2040405305','/assets/uploads/20210414','f55cfb731161e6fb0ffbfaadcbec03bf.jpg','/assets/uploads/20210414','9ce7ec05909d9fda311e86146ff73d13.jpg','2021-04-14 20:24:59');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (156,'GRM-20210414073','Rizky Maulana','085780166907','rizkymln99@gmail.com',1,'@Rzkymln.9','3216','Honda C70','B2040405862','/assets/uploads/20210414','c8b556b31882884ab1a111a628ba1407.jpg','/assets/uploads/20210414','80a182c8a38273f7b63b7ceff612a3ea.jpg','2021-04-14 20:27:45');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (157,'GRM-20210414074','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'Abu Kembar Arrows','7316','Mio','B2040335215','/assets/uploads/20210414','751c0e61e5c117526b0cc6e0d1ca6959.jpg','/assets/uploads/20210414','57808483d1175c96e190b61fd92a6583.jpg','2021-04-14 20:54:41');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (158,'GRM-20210414075','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'ABU KEMBAR ARROWS','7316','Mio','47201609550373','/assets/uploads/20210414','70bc203bb90a8aa6c688a60b1a8ec1fb.jpg','/assets/uploads/20210414','43237691b0d8f42c2329fd42802e2e65.jpg','2021-04-14 20:59:40');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (159,'GRM-20210414076','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'ABU KEMBAR ARROWS','7316','Mio','B1080014567','/assets/uploads/20210414','71781d916a11d5a1482a8042fd544fa8.jpg','/assets/uploads/20210414','057d6b4acc4379cfd35be1bc4d03ec5f.jpg','2021-04-14 21:02:41');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (160,'GRM-20210414077','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'ABU KEMBAR ARROWS','7316','Mio','B4040070642','/assets/uploads/20210414','72ba8168fac4f38bfe3a6914eef2a0c0.jpg','/assets/uploads/20210414','cb38c8942ec3a8502c98b03646dd6b44.jpg','2021-04-14 21:06:00');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (161,'GRM-20210414078','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'ABU KEMBAR ARROWS','7316','Mio','B4040071520','/assets/uploads/20210414','24047a4cf4a70af92c152cb420dc283a.jpg','/assets/uploads/20210414','08cf2f49ecb10bdc981dd800e6e9ed9f.jpg','2021-04-14 21:08:47');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (162,'GRM-20210414079','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'ABU KEMBAR ARROWS','7316','Mio','B3090073098','/assets/uploads/20210414','42418a6a5ea1cd39e3c75e5f259aef35.jpg','/assets/uploads/20210414','bd0c608b2dc26b1da79026f4e26cd895.jpg','2021-04-14 21:11:14');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (163,'GRM-20210414080','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'ABU KEMBAR ARROWS','7316','Mio','B4040071557','/assets/uploads/20210414','5231129ef80c4ac4f7d7e1147baa20d9.jpg','/assets/uploads/20210414','d8dd08b2cadc070aa01feee12de1b0f2.jpg','2021-04-14 21:19:17');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (164,'GRM-20210414081','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'ABU KEMBAR ARROWS','7316','Mio','B3030297142','/assets/uploads/20210414','929670cecdfb8b3316f85585cbfa3a2c.jpg','/assets/uploads/20210414','e53fa687e5e5a9f8cd54a910da562b03.jpg','2021-04-14 21:22:13');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (165,'GRM-20210414082','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'ABU KEMBAR ARROWS','7316','Mio','B4090006650','/assets/uploads/20210414','32d9621008ed18bf45289cedb5e69762.jpg','/assets/uploads/20210414','02dd8a9882730925275ac8ff0dfcb1cb.jpg','2021-04-14 21:25:38');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (166,'GRM-20210414083','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'ABU KEMBAR ARROWS','7316','Mio','B4070047905','/assets/uploads/20210414','676761832e04bdef6a6e050420536824.jpg','/assets/uploads/20210414','ccd22be29387e54d48c60581ae4da15b.jpg','2021-04-14 21:29:29');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (167,'GRM-20210414084','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'ABU KEMBAR ARROWS','7316','Mio','B2030306779','/assets/uploads/20210414','68b8247269e0ebc301f02ea0f7663e56.jpg','/assets/uploads/20210414','b0d88dd1e1ecd6caef99eb653f94ffe7.jpg','2021-04-14 21:32:35');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (168,'GRM-20210414085','Muqtadir','081242464843','Tadirkakkoi@gmail.com',1,'ABU KEMBAR ARROWS','7316','Mio','B4070017275','/assets/uploads/20210414','0732c3b727ecacbc6f82968efab37a2b.jpg','/assets/uploads/20210414','2f5b365548cc6e773d90265cd079ffe4.jpg','2021-04-14 21:36:28');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (169,'GRM-20210414086','Delima manalu','081280850522','adeliamanalu20@gmail.com',0,'delimagelis@yahoo.com','3204','Honda beat','B1020019201','/assets/uploads/20210414','0ea8e4b3fc6854ef03c6e96626348365.jpg','/assets/uploads/20210414','12b8615ee267961900c3ce1d5cd3a26e.jpg','2021-04-14 22:05:10');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (170,'GRM-20210414087','Farid Ramadhan','089626370466','anungsetiawanktb@gmail.com',1,'Farid,ramadhan,33483','1803','Honda Beat f1','B1040048445','/assets/uploads/20210414','36d251bdd1aab946f4653e847f9fa6fd.jpg','/assets/uploads/20210414','ca02242743951681c57c6ca26e6906af.jpg','2021-04-14 23:16:26');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (171,'GRM-20210414088','Andy maulana','089658700321','andymaoulans16@gmail.com',0,'andy maoulans16','3172','Honda Vario PGM-FI 110','B3050324737','/assets/uploads/20210414','91dbfcbfcfd35a6b3344eca33d976ce5.jpg','/assets/uploads/20210414','7c16fc58d8a90a1371a80490ce544f5d.jpg','2021-04-15 01:19:04');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (172,'GRM-20210415001','Imelda','085256473552','imel_mam@yahoo.com',1,'Imelda piank','8201','Honda Scoopy fi','B2020377959','/assets/uploads/20210415','3f6dbc793a1399c588a6e0194c87097b.jpg','/assets/uploads/20210415','c51a2506f29c9057317de59421033bf3.jpg','2021-04-15 07:23:02');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (173,'GRM-20210415002','Tuani m roni tumanggor','O81311569876','ronytumanggar88@gmail.com',1,'tuanitumangger','3174','Honda scopy','B2030292816','/assets/uploads/20210415','e600cf0a44e6b0f3c883a4c0e66c51b4.jpg','/assets/uploads/20210415','72b362ae1e24a8dcb42cb3ee6d82ab46.jpg','2021-04-15 08:01:52');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (174,'GRM-20210415003','Tuani m roni tumanggor','081311569876','ronytumanggar88@gmail.com',1,'cankianmotor','3174','Yamaha mio','B1050064052','/assets/uploads/20210415','0477558356366d269ed182172fbcb7d5.jpg','/assets/uploads/20210415','335ec6d8ad83469f11321a2587832632.jpg','2021-04-15 08:38:49');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (175,'GRM-20210415004','Wahyu zamzami','081993839867','Zamzamiwahyu36@gmail.com',0,'Auamat23','3174','Honda vario','B20102649','/assets/uploads/20210415','4425fec447dbfdf393e0b059737ee1f8.jpg','/assets/uploads/20210415','61d1ab2f9b4590a648f584ed5bf678d8.jpg','2021-04-15 08:46:29');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (176,'GRM-20210415005','Ilham kurniawan','081262921091','Ilhamkurniawa4n@gmail.com',0,'Ilhaam_kurniawan','1271','Honda vario','B1070069864','/assets/uploads/20210415','a6806dac6a0c220ef67ab6f45dff7a83.jpg','/assets/uploads/20210415','f1cc98d783a5d7dcff1f41304fad5aa8.jpg','2021-04-15 09:15:37');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (177,'GRM-20210415006','Siddiq Mustofa Al-\'alwi','085728598757','siddiqmustofa94@gmail.com',0,'siddiqmustofa','3306','Suzuki satria FU','B3040262818','/assets/uploads/20210415','a96b2c54cf1aeea65ae930d9d253fe43.jpg','/assets/uploads/20210415','64a327a1d91bc1fb190eefa7d0c89001.jpg','2021-04-15 09:21:32');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (178,'GRM-20210415007','Herdika diah pertiwi','085641787773','herdikadiah@gmail.com',0,'Thalita9557','3308','Honda Vario','B3050318806','/assets/uploads/20210415','5f941505a51ad85802bfbaf1dc1d613b.jpg','/assets/uploads/20210415','a338964682454a694c07287eb80fc54b.jpg','2021-04-15 09:32:54');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (179,'GRM-20210415008','suci rahmah febrina','081242543721','sucirahmahfebrina@gmail.com',0,'@uchidut','8201','scoopy','B2020399577','/assets/uploads/20210415','785ecebb87cda9eeedec3303beaf4cfd.jpg','/assets/uploads/20210415','921fc3713890fd20c8efdb0a81aa4213.jpg','2021-04-15 10:35:23');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (180,'GRM-20210415009','Tono Marbun','081295968120','Tonomarbun12@gmail.com',0,'','3671','Honda Vario','B3070268820','/assets/uploads/20210415','6a9f3d9dbaa1ac78dc672f65f9acbfb4.jpg','/assets/uploads/20210415','dedd0d229b56658066452de2083d74f0.jpg','2021-04-15 10:41:17');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (181,'GRM-20210415010','Ricky kristiawan','081386053158','rickykristiawan90@gmail.com',0,'','1673','Yamaha NMAX','B2020358957','/assets/uploads/20210415','8cad23d44837ac5f1e4a0ac728eba213.jpg','/assets/uploads/20210415','02fa86cf87d8168c04c8d04867e492e0.jpg','2021-04-15 10:42:22');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (182,'GRM-20210415011','Torus pangihutan lumban gaol','082124504185','toruslbngaol@gmail.com',0,'','3275','Jupiter mx','B0470042674','/assets/uploads/20210415','c419d287f701c827f18648a1644f52e3.jpg','/assets/uploads/20210415','5d3f53e3aa5e413fe1fba0f4d3ed5aec.jpg','2021-04-15 10:54:06');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (183,'GRM-20210415012','Leonel keanu putra lumban gaol','082124504185','toruslbngaol@gmail.com',1,'','3275','jupiter mx','B2060319759','/assets/uploads/20210415','aef5cc189cb804754d183c41edbd7012.jpg','/assets/uploads/20210415','e85e75e283e57e2da4bdc7a825f902f9.jpg','2021-04-15 11:10:11');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (184,'GRM-20210415013','Melati manalu','0819 0648 6581','',1,'','3671','Beat','B1070069868','/assets/uploads/20210415','04b7078732c83cc773f6accb4287b9bb.jpg','/assets/uploads/20210415','0bc8dc660b5a0137e2f06cda5e2f40f0.jpg','2021-04-15 11:11:10');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (185,'GRM-20210415014','Tuani m roni tumanggor','081311569876','ronytumanggar88@gmail.com',1,'cankianmotor','3174','Honda vario','B4040024433','/assets/uploads/20210415','4eec6fa56b4fcc36f0acf0e8eb141972.jpg','/assets/uploads/20210415','32bc9d7d44ed043ecb77805157a83b7e.jpg','2021-04-15 11:56:54');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (186,'GRM-20210415015','Dosmal Hasugian','081286898936','dosmalhasugian86@gmail.com',0,'hasugiandosmal','3175','Yamaha mio','B3050321672','/assets/uploads/20210415','00fdbd09ff3748bdc7dfa161103394fb.jpg','/assets/uploads/20210415','d6084c29f7640e8f0990be1c1640edd5.jpg','2021-04-15 12:40:13');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (187,'GRM-20210415016','Dosmal hasugian','081286898936','dosmalhasugian86@gmail.com',0,'hasugiandosmal','3175','Yamaha mio','B3050321673','/assets/uploads/20210415','e96172c32d537c5b96861dc7f1ac2155.jpg','/assets/uploads/20210415','5bb19a796b8af76cb73cb8061756313f.jpg','2021-04-15 12:48:27');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (188,'GRM-20210415017','Rizky aditama','08161408199','raditama47@gmail.com',1,'Raditama47','3201','Honda beat','B4050053728','/assets/uploads/20210415','21552459f55e9d5d01df8a121a69339f.jpg','/assets/uploads/20210415','c6b8d0623a44aa851b2e22039f33b249.jpg','2021-04-15 13:22:52');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (189,'GRM-20210415018','Farid Ramadhan','089626370466','anungsetiawanktb@gmail.com',0,'Farid, Ramadhan,33483','1803','Honda Beat f1','B3070232382','/assets/uploads/20210415','45426853b9a76286e83403d88db9bf48.jpg','/assets/uploads/20210415','5e8e5513db131615380fa2f13544ac67.jpg','2021-04-15 13:38:54');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (190,'GRM-20210415019','amrin sihombing','081385856798','amrin.sihombing@gmail.com',1,'amrin sihombing','3175','Vario150','B4050062121','/assets/uploads/20210415','831dd724bb198683c1a57b647781a397.jpg','/assets/uploads/20210415','b002dd7a9f9a68f0619528679ebac7e6.jpg','2021-04-15 14:10:43');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (191,'GRM-20210415020','ANDREANTO ROSLI','081806212728','andre.juliana.rosli@gmail.com',0,'_sekretarisalumni_','3372','Honda Beat','B1030008114','/assets/uploads/20210415','bfa96f218316130a625bce3243d0c251.jpg','/assets/uploads/20210415','d99c9eeb0d2acf8b2204bf8f40006939.jpg','2021-04-15 14:13:47');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (192,'GRM-20210415021','Ilham purnama','085775083150','purnamailham511@gmail.com',1,'Ilhampurnama186','3203','Scoopy','B2050363412','/assets/uploads/20210415','2e5eec79b4f812aff643665c75c2ff9e.jpg','/assets/uploads/20210415','45b609437c354128803b98b2e4b4ce4c.jpg','2021-04-15 14:21:03');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (193,'GRM-20210415022','Muhamad sandi rahman','085774025495','sandirahmandeppo@gmail.com',0,'','3216','Honda CBR ','B3010300552','/assets/uploads/20210415','8080990ef6187e1502148971bf2fc645.jpg','/assets/uploads/20210415','7842c7784de9314c0d9f0cc40a66fefc.jpg','2021-04-15 14:23:35');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (194,'GRM-20210415023','JULIANA WIDJAJA','089653174255','yuli.firecroft@gmail.com',1,'@yuli.firecroft','3372','Suzuki Arashi','B2040079065','/assets/uploads/20210415','33a528d04f7142e467edbd86c36da9a9.jpg','/assets/uploads/20210415','1ccb724bd4d2265a8623c255abcb5ec6.jpg','2021-04-15 14:28:52');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (195,'GRM-20210415024','Satya','08542685685','maxxiseka@gmail.com',1,'satya','1102','Beat','B5214587085','/assets/uploads/20210415','41b57a2c036f99892d0808a14b45233e.jpg','/assets/uploads/20210415','33ce14955a7ec09cd122458a12d97a55.jpg','2021-04-15 14:43:06');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (196,'GRM-20210415025','satya2','084513122154','maxxiseka@gmail.com',1,'satyaaa','1104','beat','b4587965231','/assets/uploads/20210415','fcc200f51e069bca62693e0369e4e757.jpg','/assets/uploads/20210415','043d7a9a163007ec8d55514f399bf4f4.jpg','2021-04-15 14:46:09');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (197,'GRM-20210415026','Balot','082111886815','balot6082@gmail.com',1,'balot6082','3216','Honda Vario','B3030273718','/assets/uploads/20210415','71f8fcd7d2f5c2c2a3597fe80c1f6d4b.jpg','/assets/uploads/20210415','9232e16076796e92f7ac8921eb467be9.jpg','2021-04-15 16:20:46');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (198,'GRM-20210415027','Muhammad iqbal','082284382555','Iqbalpnp15@gmail.com',1,'Muhammadiqball14','1371','Honda vario','B4050004060','/assets/uploads/20210415','adea877721f0a9d3f10ce1e3f8ee3abf.jpeg','/assets/uploads/20210415','43c6f4872dad7ae5ae709038c6f69d2d.jpeg','2021-04-15 17:14:01');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (199,'GRM-20210415028','Muhammad iqbal','082284382555','Iqbalpnp15@gmail.com',1,'Muhammadiqball14','1371','Honda vario','B1060038132','/assets/uploads/20210415','96088136ae96700811fc4308bd1a47fa.jpeg','/assets/uploads/20210415','615b872611a20a59cb27d8dfc8fdf011.jpeg','2021-04-15 17:15:32');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (200,'GRM-20210415029','Muhammad iqbal','082284382555','Iqbalpnp15@gmail.com',1,'Muhammadiqball14','1371','Honda beat','B1060038130','/assets/uploads/20210415','36dd131b31c94536b1c7291c25de7870.jpeg','/assets/uploads/20210415','cb89cb1155570eaccf39ffc09255ef5d.jpeg','2021-04-15 17:17:10');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (201,'GRM-20210415030','Zihan','+62 857-7239-9198','zihanagy7906@gmail.com',0,'@its_han.07','3172','Honda beat','B1030040768','/assets/uploads/20210415','2d8b8c2e8e8db6dc92a3d5d67c9f70a2.jpg','/assets/uploads/20210415','c74d85292a189539a4314d10ebe4d4a0.jpg','2021-04-15 17:48:58');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (202,'GRM-20210415031','ROHMAN PAMUJI RIANTO','083813465846','rohmanlasvegas@gmail.com',0,'ro.p.ryanto','3603','Yamaha Xeon GT 125','B1050065641','/assets/uploads/20210415','97c4ee7ddba1b3b54dab8f900e2954d7.jpg','/assets/uploads/20210415','7aa2e2776c5bf2a22461cb5ddd17a40c.jpg','2021-04-15 22:08:12');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (203,'GRM-20210415032','Richy Muliawan','081215900168','Richy180986@gmail.com',0,'@rich_yoe','3319','Yamaha All New Vixion R 155vva','B4080026382','/assets/uploads/20210415','235825815e56a60a4d3c3d14ee1b352f.jpg','/assets/uploads/20210415','cf07cfc6c302e36ff54b858a8e3dcdce.jpg','2021-04-15 22:11:49');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (204,'GRM-20210415033','Richy Muliawan','081215900168','Richy180986@gmail.com',0,'@rich_yoe','3319','Yamaha All New VixionR 155vvaa','B3010321237','/assets/uploads/20210415','ff02471a79badd8531c061569a66bbff.jpg','/assets/uploads/20210415','abebb539355f053a531671a8150f2266.jpg','2021-04-15 22:38:50');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (205,'GRM-20210415034','Rizky aditama','083896251799','rzyata47@gmail.com',1,'Raditama47','3329','Honda beat','B2030307584','/assets/uploads/20210415','e03cd24e7645af6b8842b2b957c9f2b0.jpg','/assets/uploads/20210415','0110fd411bddfeb4f87865b381352bb2.jpg','2021-04-16 06:07:55');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (206,'GRM-20210416001','Tuani m roni tumanggor','O81311569876','ronytumanggar88@gmail.com',1,'tuanitumangger','3174','Honda beat','B3070229368','/assets/uploads/20210416','45f568d40ae54d0c62a0adb49ef89514.jpg','/assets/uploads/20210416','64a869139e3ad52775569b2f79d2b621.jpg','2021-04-16 07:25:47');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (207,'GRM-20210416002','Tuani m roni tumanggor','O81311569876','ronytumanggar88@gmail.com',1,'tuanitumangger','3174','Honda scopy','B2020395903','/assets/uploads/20210416','0d50265e4027bc148e77aa2eb1312e6f.jpg','/assets/uploads/20210416','e7bea55eeeaac5b20e0b7ef4d52da8b4.jpg','2021-04-16 07:43:44');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (208,'GRM-20210416003','Tuani m roni tumanggor','081311569876','ronytumanggar88@gmail.com',1,'cankianmotor','3174','Yamaha nmax','B2020364187','/assets/uploads/20210416','1c542a26a7bfcd728eadb615c86f53ab.jpg','/assets/uploads/20210416','4464db828449a8e4f7a4faad34df617d.jpg','2021-04-16 07:54:14');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (209,'GRM-20210416004','Coba','085280047172','muhammad.ridho94@gmail.com',1,'ridho_125','1103','sadfas','B0000000000','/assets/uploads/20210416','698763d1b745c49194aa1e7ebbf3d100.jpeg','/assets/uploads/20210416','2cd210b9c17c3842d1824f729278789f.jpeg','2021-04-16 07:59:46');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (210,'GRM-20210416005','iwan darmawan','08971260177','iwandt190398@gmail.com',1,'iwan_d19','3273','Vixion','B3020283893','/assets/uploads/20210416','7b01ec5b9168a6c441bc906e5c8c550b.jpeg','/assets/uploads/20210416','5fb3867fdacce99d1eb645beb1399dc5.jpeg','2021-04-16 10:17:00');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (211,'GRM-20210416006','iwan darmawan','08971260177','iwandt190398@gmail.com',1,'iwan_d19','3273','VARIO','B1020014663','/assets/uploads/20210416','7093b61bb3499b784fd50e932a420977.jpeg','/assets/uploads/20210416','c64ea4e2ce1f69e0acaa33eb8e5a64f3.jpeg','2021-04-16 10:28:02');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (212,'GRM-20210416007','iwan darmawan','08971260177','iwandt190398@gmail.com',0,'iwan_d19','3204','SCOOPY','B2010030066','/assets/uploads/20210416','61fcd332884b304919c518fbc2c220cc.jpeg','/assets/uploads/20210416','8d0fa778a3f8aebdcf7014e53760ebb1.jpeg','2021-04-16 10:30:35');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (213,'GRM-20210416008','iwan darmawan','08971260177','iwandt190398@gmail.com',0,'iwan_d19','3273','N MAX','B2040367921','/assets/uploads/20210416','8860b1be6290235dbb5ed58d55e4527d.jpeg','/assets/uploads/20210416','8aad68f2780e307bc07515c9f82a1d28.jpeg','2021-04-16 10:37:04');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (214,'GRM-20210416009','Hoirul','081939734552','Hoirul.khorii@gmail.com',0,'Rithahoirul','1504','Yamaha NMAX','B2090122882','/assets/uploads/20210416','a5be26dc8ebd525f9194a4890e86ee47.jpg','/assets/uploads/20210416','adb1c84646b174e5042d37131b55c9cb.jpg','2021-04-16 11:37:27');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (215,'GRM-20210416010','Ferdian Wahyu Agusta ','08123408141','arcanbell93@gmail.com',0,'Ferdian_Wahyu','3671','Yamaha Aerox 155','B4040046925','/assets/uploads/20210416','b20e4c6b6e65ee342426de9d17ec2853.jpg','/assets/uploads/20210416','60911e943de4fbd0bbc6ebd0204f76f9.jpg','2021-04-16 11:54:31');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (216,'GRM-20210416011','Ferdian Wahyu Agusta','08123408141','arcanbell93@gmail.com',0,'Ferdian_Wahyu','3671','Yamaha Aerox 155','B2010296198','/assets/uploads/20210416','f48def535a68468cddde127d71fe6277.jpg','/assets/uploads/20210416','98b1f3bcf6e5b5ffa54c24d7e2a9c47e.jpg','2021-04-16 11:57:14');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (217,'GRM-20210416012','Didi supriono','083839007800','Didi.supriono16@gmail.com',0,'@didi.suoriono','3329','Yamaha f1zr','B3010313048','/assets/uploads/20210416','f47fa04d5d194294533631f5607d00f5.jpg','/assets/uploads/20210416','73bf6ed4c5efb9411b9dd73aceee4570.jpg','2021-04-16 13:44:24');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (218,'GRM-20210416013','Preddy sudianto pandiangan','081221233342','pandisnh@gmail.com',0,'delimagelis@yahoo.com','3204','Honda vario','B2050359994','/assets/uploads/20210416','8445ed2a1e2fec3454ad0846ce01ef02.jpg','/assets/uploads/20210416','0d00c6a9da5e2d5d13789ef1d54ddf1d.jpg','2021-04-16 13:44:43');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (219,'GRM-20210416014','Aryo agung nugroho','+62 85336936197','aaryo362@gmail.com',0,'aryo.kie','1673','ex:Honda Beat','B4040073784','/assets/uploads/20210416','bae299455d0273f2c679ca7a03184603.jpg','/assets/uploads/20210416','caddc4bb498b9d481f188512498287c4.jpg','2021-04-16 14:17:32');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (220,'GRM-20210416015','Angga Ibnu Sudrajat','081382354829','Angga.yasudrajat25@gmail.com',0,'Anggayasudrajat','3175','Honda Vario','B1020002111','/assets/uploads/20210416','e26c3bc1ec4bbc5b0a6e5e25b198a6c2.jpg','/assets/uploads/20210416','6af851617fa86a51e8be6e23eeff59a7.jpg','2021-04-16 15:15:53');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (221,'GRM-20210416016','Catur sudiyono prasetyo','087871328933','fhiekasan@gmail.com',0,'shafika family','3171','Honda beat','B2050366802','/assets/uploads/20210416','5d66abb86e9487c0354e1ac78a8df7db.jpg','/assets/uploads/20210416','b645acdf0832fd7d1688a973f5cb2ccb.jpg','2021-04-16 16:33:38');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (222,'GRM-20210416017','Amrin sihombing','081385856798','amrin.sihombing@gmail.com',0,'Amrin sihombing','3175','Honda vario','B2050366803','/assets/uploads/20210416','2713a2050b1e5aeb2e9b52c8cca6ab4f.jpg','/assets/uploads/20210416','7dac4b0f78eed42431e9b28edcba4218.jpg','2021-04-16 16:48:43');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (223,'GRM-20210416018','selma yermi asraka','085770334602','selmayermiasraka@gmail.com',0,'j_blink182','3173','honda bead','B1070069444','/assets/uploads/20210416','a8bb2dd71cc86085d012e1249aed824c.jpg','/assets/uploads/20210416','0d67d1f7e23e55da34cbfab796178356.jpg','2021-04-16 18:11:22');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (224,'GRM-20210416019','Chilfi Zaidar','085784108515','Chilfizaidar1@gmail.com',1,'Zaid_official97','3216','Yamaha jupiter','B3010334672','/assets/uploads/20210416','ee9d3b522730a46c974b9d8333ed1656.jpg','/assets/uploads/20210416','6e2aa414cd446f8f23955253720650c3.jpg','2021-04-16 20:29:44');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (225,'GRM-20210416020','Chilfi Zaidar','085784108515','Chilfizaidar1@gmail.com',1,'Zaid_official97','3216','Yamaha Jupiter','B3010334579','/assets/uploads/20210416','c059f78b3d9ae7279b86c7c7cff1d476.jpg','/assets/uploads/20210416','3e9866941e3f362a5b885ccee854ca5a.jpg','2021-04-16 20:42:26');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (226,'GRM-20210416021','Rifda mahdia','+6282292393533','Nurul.Amaliahcs@gmail.com',0,'@_raifd01','7313','Beat esp','B2030264816','/assets/uploads/20210416','12c6901d37b4f551ef4ec5fe7db6ab3b.jpg','/assets/uploads/20210416','ea42b996e3ea5d5ea03a6b15d5d6e2fe.jpg','2021-04-17 06:51:43');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (227,'GRM-20210417001','Rifda mahdia','+6282292393533','Nurul.amaliahcs@gmail.com',0,'@_raifd01','7313','Beat esp','B2030276198','/assets/uploads/20210417','1d1f353deae39fc0d76c93d13e29d3fc.jpg','/assets/uploads/20210417','88d16be71913028fb0f62486f341ee9b.jpg','2021-04-17 07:07:10');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (228,'GRM-20210417002','Riska sartika','087828366806','Riskasartikajamaludin@gmail.com',0,'Utama saluyu motor','3213','Motor N-max','B3090064955','/assets/uploads/20210417','96132c7feb342446808500e0c2c1e2e6.jpg','/assets/uploads/20210417','501df641d686c6251e76bcfdfbe7ed4c.jpg','2021-04-17 08:12:45');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (229,'GRM-20210417003','Sahril','085397697987','Muhsyahril2525@gmail.com',0,'Muhammadsahril2525','7310','Yamaha','B4040064488','/assets/uploads/20210417','97cf532409407104bdee3bbb7595f588.jpg','/assets/uploads/20210417','bca27a28ec0476e72d5cd54e93c27949.jpg','2021-04-17 09:44:20');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (230,'GRM-20210417004','Sahril','085397697987','Muhsyahril2525@gmail.com',0,'Muhammadsahril','7310','Yamaha','B1040034428','/assets/uploads/20210417','b88a1193657afdd95ccaf6df1d196c83.jpg','/assets/uploads/20210417','1f54393d606663dbbd8173f93eeef326.jpg','2021-04-17 09:56:05');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (231,'GRM-20210417005','Muhamad rapli apandi','085798133742','muhammadraflismi@gmail.com',0,'raflinegro128','3172','N mex','B3090061614','/assets/uploads/20210417','29313128a8e24ef35b66364d9876369d.jpg','/assets/uploads/20210417','5b0668ffa497beab9169d40fed5903a3.jpg','2021-04-17 10:00:07');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (232,'GRM-20210417006','Susil','081354343596','Susilyunus13@gmail.com',0,'Susil13','7310','Yamaha','B1080010276','/assets/uploads/20210417','904da02ed9194ee91ecc81294ae566ac.jpg','/assets/uploads/20210417','24897aa6faf16e49d4242a3cc2572a6f.jpg','2021-04-17 10:04:32');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (233,'GRM-20210417007','Susil','081354343596','Susilyunus13@gmail.com',0,'Susil13','7310','Yamaha','B4090003670','/assets/uploads/20210417','7a390d967f2edd77addc1d23170d00fe.jpg','/assets/uploads/20210417','29a8b9b2f96085cadad43b4e066d90d2.jpg','2021-04-17 10:06:54');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (234,'GRM-20210417008','SYAIFRIZALINOOR','0817612813','livesrizal@gmail.com',0,'@syaifrizalinoor','3173','Yamaha New Nmax','B2010358135','/assets/uploads/20210417','0e2264f434d3b102d23819efad04226c.jpg','/assets/uploads/20210417','f4d5d45f228ec69110cee03e8860a474.jpg','2021-04-17 10:49:29');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (235,'GRM-20210417009','SYAIFRIZALINOOR','0817612813','livesrizal@gmail.com',0,'@syaifrizalinoor','3173','Yamaha New Nmax','B3090078014','/assets/uploads/20210417','7d9c3109eec59406ef960e47d2344770.jpg','/assets/uploads/20210417','185709b8087e7829ba17c6e883e274a4.jpg','2021-04-17 10:52:10');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (236,'GRM-20210417010','Saeful ridwan','081282315956','mimiw6669@gmail.com',0,'enamsaeful','3206','Vario','B2030312558','/assets/uploads/20210417','057daf25a48eead4a2b33f664d1b7a51.jpg','/assets/uploads/20210417','84a9be3f1053440c51111c2326f94b5b.jpg','2021-04-17 11:04:22');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (237,'GRM-20210417011','Dede Iin','085310008526','dede_87@rocketmail.com',0,'Dede Aby Alfarizy','3278','NMAX ','B2090122900','/assets/uploads/20210417','56ace1f9f2b103c4cf88e25cfb8811f6.jpg','/assets/uploads/20210417','c75b8a69dcd2a9387404d30a5739a343.jpg','2021-04-17 11:13:09');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (238,'GRM-20210417012','Ramli Muhama pahri','088229025072','ramlipahri77@gmail.com',0,'Ramli pahri','3213','Beat','B2030312583','/assets/uploads/20210417','e52583704d85902054019094c1c1481e.jpg','/assets/uploads/20210417','aafb13c0e71075d21bb5840e8890ffb1.jpg','2021-04-17 12:00:43');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (239,'GRM-20210417013','Avril.Anatasya ','085717866674 ','avril.anatasya2204@gmail.com',0,'avr.ilya ','3276','Mio soul ','B2030254334','/assets/uploads/20210417','8f20d04819ee6928e50ac1fb3a26c5d6.jpg','/assets/uploads/20210417','e5feca6e1af5c1f14b22b8f779fbb804.jpg','2021-04-17 13:18:58');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (240,'GRM-20210417014','Andi rusandi','085718182838','Andirusandi53@gmail.com',0,'Bendol2','3172','Honda scoopy','B2050365955','/assets/uploads/20210417','2eaf5f1a56f3aae8339302974c7de148.jpg','/assets/uploads/20210417','541f031f96580b1f8bbb2783170b2b5d.jpg','2021-04-17 15:49:52');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (241,'GRM-20210417015','Delima manalu','081280850522','adeliamanalu20@gmail.com',0,'delimagelis@gmail.com','3273','Honda scoopy','B2030251163','/assets/uploads/20210417','baaf46ce89c3d3a420308d2fd3726843.jpg','/assets/uploads/20210417','f088541233f0a929a1a92a7d4909ef0e.jpg','2021-04-17 15:54:49');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (242,'GRM-20210417016','Khaerulalrasyid','082116057390','khaerulalr@gmail.com',0,'Khaerulalr_','3213','NMAX','B2090110327','/assets/uploads/20210417','f5d150530f21bd88ed902661651c39c6.jpg','/assets/uploads/20210417','9965cea2d86e474cf4b5d286976fb47e.jpg','2021-04-17 18:24:56');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (243,'GRM-20210417017','Imanda indro wicaksono','085226948750','Imandaindrowicaksono@gmail.com',0,'@Imandamanda','3302','Honda vario','B2020389050','/assets/uploads/20210417','5386d2683dcc93a37ace4eb1e095a7f9.jpg','/assets/uploads/20210417','15502ba70d71212c11293a72e948f8b8.jpg','2021-04-17 18:52:30');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (244,'GRM-20210417018','Iman rukmana','081282888793','imanrukmana93@gmail.com',0,'','3213','Honda vario','B4050057555','/assets/uploads/20210417','3600d9a5cb2d4970d1dfeb8d9a2c16d6.jpg','/assets/uploads/20210417','d2d9b6f3507f7cd04cfb539829d79ba7.jpg','2021-04-17 19:21:18');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (245,'GRM-20210417019','Febi kristian manuel nainggolan','089618777461','Febidasilva@gmail.com',1,'Kristianmanuelfebi','3204','Pcx160','B2020293398','/assets/uploads/20210417','e3fac0a5dfd4e4aa62b44161d31249b5.jpg','/assets/uploads/20210417','43e03d1e066661784af46295163c59b8.jpg','2021-04-17 20:11:50');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (246,'GRM-20210418001','Nur endah lestari','087882183909','Nurendah2810@gmail.com',0,'Ndah_chaem','3175','Scopy','B4090029415','/assets/uploads/20210418','d8b28e3feb8f266f55867aaabb03a256.jpg','/assets/uploads/20210418','3181e9a4c02cb4ff7a65d23e0f322f3a.jpg','2021-04-18 12:21:58');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (247,'GRM-20210418002','Nur endah lestari','087882183909','Nurendah2810@gmail.com',0,'Ndah_chaem','3175','Beat fi','B2050331436','/assets/uploads/20210418','aaa3dbb05eb8d0bf162c94ba7d766f9e.jpg','/assets/uploads/20210418','4d8fd65d83db23e0f900359bcd8d2cc8.jpg','2021-04-18 13:02:53');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (248,'GRM-20210418003','elva eriyanti','089619498782','evaheri187@gmail.com',0,'vha_chubie72','3175','yamaha Aerox','B4090025997','/assets/uploads/20210418','7a323725974329c845323529e937f5f9.jpg','/assets/uploads/20210418','a75f40eb5b4e89e324ef615c4c2be33a.jpg','2021-04-18 13:08:33');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (249,'GRM-20210418004','Ruthsanti Andajani Gunawan','08129433332','gitaketawa2013@gmail.com',1,'@ruthgunawan_','3372','Honda Beat','B3070129565','/assets/uploads/20210418','40aa88fe486014cbf2ca208ef6854496.jpg','/assets/uploads/20210418','6802df320da6f4e8b720ccbbd54fda84.jpg','2021-04-18 14:25:56');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (250,'GRM-20210418005','Ita Marlinawati','085715430574','itamarlinawati86@gmail.com',0,'ita_marlo','3216','Honda Vario','B1040034029','/assets/uploads/20210418','3a4cf2e41a9168352add9f8473b4498d.jpg','/assets/uploads/20210418','0370b1d74dfeaf092125ca6522d190c8.jpg','2021-04-18 15:12:30');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (251,'GRM-20210418006','Santy jap','081317769351','honeyquiin123@gmail.com',0,'@santy jap','3175','Honda Beat','B4070016139','/assets/uploads/20210418','99093f5cd02631ec464865c4e27221e6.jpg','/assets/uploads/20210418','c922e1c1d338106c6d41f511ca3578f3.jpg','2021-04-18 15:25:07');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (252,'GRM-20210418007','Santy jap','081317769351','honeyquiin123@gmail.com',0,'@santy jap','3175','','B2070147179','/assets/uploads/20210418','3378f54c378f9836414464b60e047065.jpg','/assets/uploads/20210418','ae0025040cf594b1e7d1c9401f134ccd.jpg','2021-04-18 15:34:19');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (253,'GRM-20210418008','I Kadek swandana','082146604490','deathbar12@gmail.com',1,'Barxdeath.bali','5105','Vespa Sprint','B2020404018','/assets/uploads/20210418','fb9d00f5af2f81219dd1b8f901fcce75.jpeg','/assets/uploads/20210418','e1aa7f9112cff0268f601d141fbc1066.jpeg','2021-04-18 16:38:47');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (254,'GRM-20210418009','Ferdi Ramadhan','08156019742','ferdiramadhan035@gmail.com',1,'Ramadhanferdi','3202','Yamaha Aerox','ETM00126500','/assets/uploads/20210418','8435f6d57badafe26ebc8e06bca3e473.jpg','/assets/uploads/20210418','21baf86835116841f81796ad24c9a84c.jpg','2021-04-18 19:05:12');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (255,'GRM-20210418010','Febi kristian manuel Nainggolan','089618777461','Borutomomoshiki3@gmail.com',1,'Kristianmanuelfebi','3204','Pcx160','B2010370983','/assets/uploads/20210418','ec44ffab2101c8d156b57f93a9b4fb4a.jpg','/assets/uploads/20210418','9426821ce423ed3de56b3947f7a67a71.jpg','2021-04-18 21:01:40');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (256,'GRM-20210419001','Preddy sudianto pandiangan','081221233342','pandisnh@gmail.com',1,'delimagelis@yahoo.com','3273','Yamaha vixion','B3020172953','/assets/uploads/20210419','5b4177ae141d6b11c9869622ff0384da.jpg','/assets/uploads/20210419','d2a26441ed5bbd45b46dcb33c7910cad.jpg','2021-04-19 08:50:37');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (257,'GRM-20210419002','Nathalia','087823223228','natario08@gmail.com',1,'natario08','5102','Nmax','Etm00166200','/assets/uploads/20210419','464c9ca8cdf06962b50c72718be3a675.jpg','/assets/uploads/20210419','2bfe490332559a9d208cc49d27bf03f1.jpg','2021-04-19 10:07:48');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (258,'GRM-20210419003','margiyanti','081517958594','margiyanti@vedora89.com',0,'margiyn','3172','yamaha fino grande','B1020022129','/assets/uploads/20210419','88872f5f3c039e5843ccc73993a83215.jpg','/assets/uploads/20210419','49d5aead6de56835875330f97517406b.jpg','2021-04-19 12:44:19');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (259,'GRM-20210419004','Bimo Dwi Hatmojo','082223138580','bimodwii113@gmail.com',0,'Bimodwii_','3403','Vario ','B4030030385','/assets/uploads/20210419','3a1afe5f470a791e6320f7493ed8daaa.jpg','/assets/uploads/20210419','5ffc27cbc78912e479f8dbd3b3178881.jpg','2021-04-19 12:59:42');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (260,'GRM-20210419005','Dwi Hatmojo','08882707579','Bimo.dwi.had@gmail.com',0,'Mikasa_ack104','3404','NMAX','B3090034668','/assets/uploads/20210419','aac0417d628bceb11774475bd93041cc.jpg','/assets/uploads/20210419','aa6005f8af2ef7fa4fcf784f29f21558.jpg','2021-04-19 15:11:49');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (261,'GRM-20210419006','Ulfa sari','08568628114','ulfa.sari94@gmail.com',0,'Ulf_collection','3175','Honda beat','B1080064363','/assets/uploads/20210419','67f66624671f329792f3dfb1288bee33.jpg','/assets/uploads/20210419','84453c96362b08d78cafbfebbf5cf994.jpg','2021-04-19 16:20:49');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (262,'GRM-20210419007','Sutrisno ','082298198227 ','sutrisnochacing0526@gmail.com',0,'@sutrisnolangitan','3201','Honda Beat','B2020393336','/assets/uploads/20210419','0de2531a487ae3992630b3c389871e35.jpg','/assets/uploads/20210419','960ea4a685e7e41ffaad4ee2bd535aef.jpg','2021-04-19 17:31:38');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (263,'GRM-20210419008','Eko ardi prasetyo','089602151629','ekoardi.p@gmail.com',0,'ardiprasetyo42','3515','Honda vario','B2030320031','/assets/uploads/20210419','7211f0a0e28ac7540677b377a3c22ec9.jpg','/assets/uploads/20210419','bbc377415e745388cb57ee4fc94e2dc2.jpg','2021-04-19 17:40:02');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (264,'GRM-20210419009','Combeat Ramadhani','089642006977','combeatramadhani@gmail.com',0,'@combeatramadhani17','3171','Yamaha X-Ride','B4090026259','/assets/uploads/20210419','6a4b386926013a05e4fedd783a15d22e.jpg','/assets/uploads/20210419','c562e4e9dc9a4f0022b65e6510bfee03.jpg','2021-04-19 21:17:43');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (266,'GRM-20210420001','Pittor Siringoringo','081386801108','siringopittor@gmail.com',0,'Pittor Siringoringo','3175','Honda beat','B2070203797','/assets/uploads/20210420','974147012fc4d3d2cd9c711654109d30.jpg','/assets/uploads/20210420','c86b3aa332e031d428823bf51fd655ad.jpg','2021-04-20 11:24:34');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (267,'GRM-20210420002','kasting buaton','08118049042','chastingbuaton@gmail.com',0,'kasting buaton','3175','honda vario','B2020383009','/assets/uploads/20210420','2d9ce5e328bacc2798d6b6f329adf14e.jpg','/assets/uploads/20210420','f9758e42848ec431a3e466f809d64d29.jpg','2021-04-20 11:44:08');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (268,'GRM-20210420003','Holid holidin','082240062017','Lestariandhiniayu@gmail.com',1,'Andhiniayulestari02','3278','Honda sufra fit','B3080244036','/assets/uploads/20210420','c61e46851c0cacbc59edb1f539321682.jpg','/assets/uploads/20210420','1277af521c2310ab476b589b6bfaeecf.jpg','2021-04-20 12:47:12');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (269,'GRM-20210420004','Combeat Ramadhani','0895806275353','combetramadhani17@gmail.com',0,'@combeatramadhani17','3171','YAMAHA X-RIDE','B4090016011','/assets/uploads/20210420','64816745c0300d93e75465a0d2b974cb.jpg','/assets/uploads/20210420','aecb6b6ca44d0a96839ef62ac1020ade.jpg','2021-04-20 14:27:13');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (270,'GRM-20210420005','Haris Novianto','085875727085','harisnovianto89@gmail.com',1,'harisnvv','3403','Honda Scoopy','B2030331463','/assets/uploads/20210420',NULL,'/assets/uploads/20210420',NULL,'2021-04-20 16:13:31');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (271,'GRM-20210420006','Iwan santoso','089655432455','Iwansantoao@gmail.com',0,'Iwanzawzaw','3204','Honda vario','B3070275504','/assets/uploads/20210420','75a5787aca50395947bd2643b1cfcb59.jpg','/assets/uploads/20210420','f4fbbab43bff2742cb0ca854fced4ebd.jpg','2021-04-20 17:08:50');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (272,'GRM-20210420007','Ilham juhadi','085710989701','joeilham400@gmail.com',1,'juhadiilham29','3216','Yamaha R15 V3','B3010335381','/assets/uploads/20210420','d694690614d7ca217982a47abb86f32c.jpg','/assets/uploads/20210420','1ccb770c595e24806998994e3060c6f2.jpg','2021-04-20 18:38:45');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (273,'GRM-20210420008','Ari ramdana','081281820532','ariramdana@gmail.com',1,'@ari.rmdna','3275','Honda vario','B3070284430','/assets/uploads/20210420','158e0bcdea538f6748fcff37f8d9b99c.jpg','/assets/uploads/20210420','0e87a83516780b7cd23f60ebcf4933e0.jpg','2021-04-20 19:56:58');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (274,'GRM-20210420009','Ari ramdana','081281820532','ariramdana@gmail.com',1,'@ari.rmdna','3275','Honda vario','B3070295660','/assets/uploads/20210420','08e0f90d264fb74f31ab723aa61707ae.jpg','/assets/uploads/20210420','746020810497dc617e0c4778c1ecaf9d.jpg','2021-04-20 20:13:08');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (275,'GRM-20210420010','Ardina Sylvia Dewi','081559812537','dwicahyo34484@gmail.com',0,'ardinadiend','3510','Yamaha Fiz R','B3080259645','/assets/uploads/20210420','908d37721a11431a1d52865efd3258d0.jpg','/assets/uploads/20210420','24ff22ddbffcedd814f72620fc4333e0.jpg','2021-04-20 21:30:02');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (276,'GRM-20210420011','Puguh Hermawan','081335241433','puguhhermawan46@gmail.com',0,'Puguh Hermawan','3510','Yamaha Fiz R','B2060379449','/assets/uploads/20210420','540d40ab9054ba5ab973917424ac97ad.jpg','/assets/uploads/20210420','8f36c9d0f3eca2cf355b8d978ec8de62.jpg','2021-04-20 21:41:46');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (277,'GRM-20210420012','Puguh Hermawan','081335241433','puguhhermawan46@gmail.com',0,'Puguh Hermawan','3510','Yamaha Fiz R','B3080259802','/assets/uploads/20210420','8362c1b6669032794cba482bee8f80cd.jpg','/assets/uploads/20210420','420ee0e7e5a1693cbd60e9d77ac55b1e.jpg','2021-04-20 21:44:30');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (278,'GRM-20210421001','Sony erix son manullang','081213374244','erikson.erik99@yahoo.com',0,'Gabby_jaya_motor','3175','Yamaha jupiter','B3010294461','/assets/uploads/20210421','f19865cd6ee32d7e2740a3f9a0f02435.jpg','/assets/uploads/20210421','dd9d9bcb1baa8acd153a901e6a2d0926.jpg','2021-04-21 09:18:10');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (279,'GRM-20210421002','Sony erix sonmaullang','081213374244','erikson.erik99@yahoo.com',0,'Gjm','3175','Yamaha jupiter','B1020282244','/assets/uploads/20210421','0f1a3c83a8866f719fe86c85062c7b9a.jpg','/assets/uploads/20210421','d980b9971a40d58649328a9ab898df9c.jpg','2021-04-21 09:31:47');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (280,'GRM-20210421003','Sony erix son maullang','081213374244','eriksonmanulang98@gmail.com',0,'Erikson_08','3175','Yamaha jupiter','B3020333889','/assets/uploads/20210421','0acfca5416cebd3167997ea7c12458f5.jpg','/assets/uploads/20210421','6095b4e6d3789806bb0c607afd9c8c05.jpg','2021-04-21 09:41:27');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (281,'GRM-20210421004','Sony erix son maullang','081213374244','Eriksonmanulang98@gmail.com',1,'erikson_08','3175','Yamaha jupiter','B3010326362','/assets/uploads/20210421','6df4a542209ea540e4d40725175264d0.jpg','/assets/uploads/20210421','71e7dfed8509e347011037f60fd3d5f4.jpg','2021-04-21 09:49:32');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (283,'GRM-20210421006','Yudi Gunawan ','081323188888 ','Yudi_gunawan@hotmail.com',0,'Ayunkz','3273','Rxk','B3010300402','/assets/uploads/20210421','a7f26e0f56fa8bc0680febc1b0fbc8c1.jpg','/assets/uploads/20210421','f1e9a1c945ff9fd468d6d523fe0e05e4.jpg','2021-04-21 10:11:54');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (284,'GRM-20210421007','Yudi Gunawan ','081323188888','Yudi_gunawan@hotmail.com',0,'Ayunkz','3273','Rxk','B3020319489','/assets/uploads/20210421','5500bd29bbb9047c23bb007514cde1ae.jpg','/assets/uploads/20210421','30a1cf8a480fa0faed5d6d75f73ce537.jpg','2021-04-21 10:20:23');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (285,'GRM-20210421008','Luvi lutviyadi','082321377973','Omen.asian69@gmail.com',0,'Lutvi_omen','3278','Yamaha vixion','B3020265862','/assets/uploads/20210421','b7a85e235cd74a70e6722e4be4aac6a6.jpg','/assets/uploads/20210421','c01ca3ce120f3c95b5f45fd1b2c4cd27.jpg','2021-04-21 10:25:40');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (286,'GRM-20210421009','Dodoy hidayat','081818465878','dodoynindya@gmail.com',0,'Dodoy_motor23','3671','Honda vario','B2010397778','/assets/uploads/20210421','0870104ba0dfea6cb92c29e7595eadc5.jpg','/assets/uploads/20210421','1e437048a1a6b5dbd5608422f24735eb.jpg','2021-04-21 13:36:16');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (287,'GRM-20210421010','Riki Juniansyah','083820850772','rikijuniansyah78@gmail.com',1,'@juniansyahriki','3217','Honda Vario','B4070063692','/assets/uploads/20210421','df5f4460de6899f5c9df72506dd3bc76.jpg','/assets/uploads/20210421','3230f9526b53c61ef198775fdceffc2e.jpg','2021-04-21 14:08:28');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (288,'GRM-20210421011','Wahyu riskiyanto','0895375653181','wahyurizkiyanto88@gmail.com',1,'Wahyu_rizkiyanto','3215','Honda beat','B4040085886','/assets/uploads/20210421','c4ee30f8477d4b72fc4106477d56d83e.jpg','/assets/uploads/20210421','c057961efcc0a0c6270dea198a82abb0.jpg','2021-04-21 19:36:04');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (289,'GRM-20210421012','Wahyuriskiyanto','0895375653181','wahyurizkiyanto88@gmail.com',1,'wahyu_rizkiyanto','3215','Hando cb150r','B4080033284','/assets/uploads/20210421','15bff357fb27e6118ab12b13a1d57c84.jpg','/assets/uploads/20210421','44620b05f3298d3d1ae202222faf56eb.jpg','2021-04-21 19:42:29');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (290,'GRM-20210421013','Setyo Aji Laksono','089670118260','adjielaksono8@gmail.com',0,'adjienitnot','3275','Honda Beat','B1030050214','/assets/uploads/20210421','272ed1d6736e5560558c2dc6ad1b933c.jpg','/assets/uploads/20210421','97d7bd9f4a7ba7e12b7c0136a3029a97.jpg','2021-04-21 20:03:50');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (291,'GRM-20210421014','Dwi trisni widiaty','087806745606','detepoenya@gmail.com',1,'detewidiaty','3318','Yamaha mio','B2030314670','/assets/uploads/20210421','359cbbf863797e35e6b83b932dc1a8d4.jpg','/assets/uploads/20210421','78bf68c0f51481851657f7bf173a7e4e.jpg','2021-04-21 20:11:55');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (292,'GRM-20210422001','AMPIL KINASIH','082210918518','ampilkinasih@gmail.com',1,'ampilkinasih','3216','Yamaha Jupiter','B3080282987','/assets/uploads/20210422','5094f4ae3cce8d2f35c9b9dc1a759236.jpg','/assets/uploads/20210422','6e4a6e2bcda3a47f84a3c690b3738289.jpg','2021-04-22 07:24:58');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (293,'GRM-20210422002','Iip Aripudin','+6283891402679','iiparipudin0410@gmail.com',0,'aceff.nobii','3211','Yamaha F1ZR','B4080020239','/assets/uploads/20210422','d0ad246de0b035d871c96a9e4306604d.jpg','/assets/uploads/20210422','468a2c4e952161da86a6ae93773f27f4.jpg','2021-04-22 08:00:56');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (294,'GRM-20210422003','Ulfa sari','08568628114','ulfa.sari94@gmail.com',0,'ulf_collection','3175','Honda beat','B1020004349','/assets/uploads/20210422','a999206741973398a7562d1ab6af615f.jpg','/assets/uploads/20210422','38b7016815b35e2d079c5f3dbf210b67.jpg','2021-04-22 09:17:37');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (295,'GRM-20210422004','Senianto','085728438313','Senymulia@ymail.com',1,'antho.am','3216','Vario','B1030058439','/assets/uploads/20210422','38f964e41bfe0e7139e7cab54d15392d.jpg','/assets/uploads/20210422','2e97309d8212f833fd15c4def9b556ce.jpg','2021-04-22 10:43:40');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (296,'GRM-20210422005','Senianto','085728438313','Senymulia@ymail.com',1,'antho.am','3216','Vario','B3070277892','/assets/uploads/20210422','d7955c455cd25c11653bb55b67ab5195.jpg','/assets/uploads/20210422','45ea18bea336321655cf15671681a0a7.jpg','2021-04-22 10:50:07');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (297,'GRM-20210422006','Nurindah fitria maharani','087710111725','Nfitriamaharani@gmail.com',0,'Fitriamaharanii','3402','honda beat','B2090088264','/assets/uploads/20210422','30274dacec7ec4fe9a8954e2b5aa8261.jpg','/assets/uploads/20210422','b60f8346b774d53cc15c67d654dbb39a.jpg','2021-04-22 11:04:39');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (298,'GRM-20210422007','SARWO AJI NEGORO','081904045656','Sarwoajinegoro@gmail.com',1,'Aji_goro.goro','3404','BEAT ESP','B3050334185','/assets/uploads/20210422','bb5fa796cf2ebbdfcb9514196b2c297f.jpg','/assets/uploads/20210422','dc63375742dd349211b77d55a6ce0b73.jpg','2021-04-22 12:54:32');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (299,'GRM-20210422008','Krhisna aditya','081294915034','krhisna623@gmail.com',0,'kizon_aditya','3204','Nmax','B3030323924','/assets/uploads/20210422','66e284e8c382fd16c557a3dd2d1061b7.jpg','/assets/uploads/20210422','712c60b81f20343dc0fcb80078fdd3fd.jpg','2021-04-22 12:58:27');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (300,'GRM-20210422009','Windy armayni','081287299052','windyarmayni245@gmail.com',0,'Windy armayni','1571','Nmax','B3090070892','/assets/uploads/20210422','83e8767a19de210f996f99d66ee66e42.jpg','/assets/uploads/20210422','0d07510acf35b4e23c3a51a0d98c0f19.jpg','2021-04-22 13:07:40');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (301,'GRM-20210422010','Pauzi irawan','083186590688','Froselaz@gmail.com',0,'Fauzirosela','1571','Honda Scoopy','B2020411546','/assets/uploads/20210422','d9ceb14ff26e394809ff71b27d1c9487.jpeg','/assets/uploads/20210422','18fd3d8184b1b61da6c1a8ed186d8f56.jpeg','2021-04-22 13:42:48');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (302,'GRM-20210422011','ishak','085719461194','nazril2939@gmail.com',0,'ishakishak117','3175','honda vario','B1050060762','/assets/uploads/20210422','60e3accb0712dde7b10c0d5efb15e48c.jpg','/assets/uploads/20210422','18e685bcee7fb3637627649e596b4c9d.jpg','2021-04-22 14:16:19');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (303,'GRM-20210422012','Novan Legiana','081395493162','novanlegiana10@gmail.com',0,'novanlegiana','3211','Yamaha Nmax','B2010325003','/assets/uploads/20210422','7c71ca65e22123685c13e00b07dc261d.jpg','/assets/uploads/20210422','bfd538a4e6156c7721bac270ae46f94e.jpg','2021-04-22 15:30:20');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (304,'GRM-20210422013','Ganjar Prasojo Ningprang','085747965211','ganjar.prasojo13@gmail.com',0,'ganjarprasojo','3301','Honda Vario 150','B4050065689','/assets/uploads/20210422','6a086398106198f379cac751fb82e47d.jpg','/assets/uploads/20210422','1044e6fa21cf51428da1daa92b42405e.jpg','2021-04-22 15:56:33');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (305,'GRM-20210422014','Ganjar Prasojo Ningprang','085747965211','ganjar.prasojo13@gmail.com',0,'ganjarprasojo','3301','Honda Vario 150','B4040034305','/assets/uploads/20210422','047c1a459a08b4e7f0d0fcf3ea202d84.jpg','/assets/uploads/20210422','a3742ef934305b31fba0c340609f8484.jpg','2021-04-22 15:59:30');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (306,'GRM-20210422015','TRI WAKHYUDI','083805508040','Triwakhyudi99@gmail.com',1,'WAKHYUMARY','3215','HONDA VARIO','B1030056112','/assets/uploads/20210422','48fdab70661d6649842ee2ae93a76c4d.jpg','/assets/uploads/20210422','83bbafff058e47e5c9d436fced6c68b6.jpg','2021-04-22 17:30:18');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (307,'GRM-20210423001','Ryan Dwi Wahyu Ardi','085747094911','dwa.ryan2@gmail.com',0,'dwa.ryan','3302','Yamaha Aerox','B2020208518','/assets/uploads/20210423','7b5d1b89944b56fcab7bd6a71bd2f2ea.jpg','/assets/uploads/20210423','5b5021d7bc9229938e3d08a380e58ce6.jpg','2021-04-23 07:19:32');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (308,'GRM-20210423002','Adi Firdaus Pratama Husada','083146566821','daussatu29@gmail.com',0,'Adifirdaus16','3312','Honda Vario','B1020021699','/assets/uploads/20210423','68305517f783d8863486e0f96167e889.jpg','/assets/uploads/20210423','689c21199a53ccd544f29fdbdb5f5af0.jpg','2021-04-23 09:34:55');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (309,'GRM-20210423003','Riska sartika','087828366806','Riskasartikajamaludin@gmail.com',0,'Utama saluyu motor','3213','Beat-fi','B4050052933','/assets/uploads/20210423','ab33bdee9bb7fd4e787edfc8d8ef7a81.jpg','/assets/uploads/20210423','83ab6222144b40e6f5d0bb3fa8137c24.jpg','2021-04-23 11:33:03');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (310,'GRM-20210423004','Michael Edric Tony','087807492176','Michaeledric276@yahoo.com',0,'michaaeell9','1571','Pcx','B4040061221','/assets/uploads/20210423','3cd590c9f452e18e46c9ace852fe4320.jpeg','/assets/uploads/20210423','1e09aa33d835ba816458c0e100d7fb60.jpeg','2021-04-23 11:41:38');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (311,'GRM-20210423005','Andreanto Rosli','081806212728','andre.juliana.rosli@gmail.com',1,'_sekretarisalumni_','3372','Honda Beat','B3050132996','/assets/uploads/20210423','25ab7d406cebc4adeabdc642a01ef5be.jpg','/assets/uploads/20210423','9c7f3f4ad3331fa906036babc2e8c8d3.jpg','2021-04-23 13:19:27');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (312,'GRM-20210423006','Siddiq mustofa al alwi','085728598757','Thijahsiti@gmail.com',0,'Siddiqmustofa','3306','Suzuki nex','B2020389956','/assets/uploads/20210423','ae8b6bf27e1d815e6df36167181c97af.jpg','/assets/uploads/20210423','b99c6fd9db37645c5a1be52abb8738d7.jpg','2021-04-23 13:30:51');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (313,'GRM-20210423007','Juwita Sanera','085358072017','juwitasa2294@gmail.com',1,'Sanera_juwita','3215','Beat fi','B4090022366','/assets/uploads/20210423','cf8570983050d8c9de460c583c2b370c.jpg','/assets/uploads/20210423','95ad790c8c6f167661f2f1ca602cceb9.jpg','2021-04-23 14:52:43');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (314,'GRM-20210423008','Juwita Sanera','085358072017','juwitasa2294@gmail.com',1,'Sanera_juwita','3215','Beat fi','B4040068821','/assets/uploads/20210423','14b26a55d8f962181b214a802dbcc8d0.jpg','/assets/uploads/20210423','9c7ddab7a8b6940b7558bffdba219464.jpg','2021-04-23 14:55:33');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (315,'GRM-20210423009','IBNU ARRIFIN','081280715878','arrifine619@gmail.com',1,'@arrfnibn','3216','Honda Vario','B4040085842','/assets/uploads/20210423','363ba9ad553b8141a80f43c1eff90658.jpg','/assets/uploads/20210423','67c626ff0f118c417c46daa0145336dc.jpg','2021-04-23 14:57:39');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (316,'GRM-20210423010','Husnah karimah','085810237828','husnahkarimah@gmail.com',1,'hsnahuss','3275','Honda Beat','B4050053658','/assets/uploads/20210423','9da1061037fd9c01552f793742193d40.jpg','/assets/uploads/20210423','04bd065511fd742b2c80f18e298b50c6.jpg','2021-04-23 15:02:35');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (317,'GRM-20210423011','Rizki ahmad fauzi','082298843629','Riskyahmad567@gmail.com',1,'Risky_ahmad31','3216','Yamaha nmax','B3090092832','/assets/uploads/20210423','50af5829f78c0e29d793e1f6c8491afc.jpg','/assets/uploads/20210423','8726420c50a3b044a51d86845e45a2e1.jpg','2021-04-23 16:03:59');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (318,'GRM-20210423012','Rizki ahmad fauzi','082298843629','Riskyahmad567@gmail.com',1,'Risky_ahmad31','3216','Yamaha nmax','B3030338235','/assets/uploads/20210423','0c8106a428095e0dabf4378feefa0203.jpg','/assets/uploads/20210423','1834dfe3533aec3fcf0491772ec6108f.jpg','2021-04-23 16:08:03');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (319,'GRM-20210423013','Reni Rohana manalu','081321441457','renimanalu2017@gmail.com',0,'Reni C\'pudan Manalu','3204','Honda vario','B1060010865','/assets/uploads/20210423','151affa015cb30778929d2109a2490a1.jpg','/assets/uploads/20210423','1acc5cce4f1fe493772a9d13647723de.jpg','2021-04-23 20:05:13');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (320,'GRM-20210423014','Rudiyanto','082116594900','rudiyanto080692@gmail.com',0,'Rudyshannon','3213','Honda scoopy','B2020397512','/assets/uploads/20210423','0115f5ff56d4570712bdf822b581ae21.jpg','/assets/uploads/20210423','b56c5fbbd460f50c8ea09323e94c3c2c.jpg','2021-04-23 20:26:22');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (321,'GRM-20210423015','Purwanto','081901964927','shintapur8@gmail.com',0,'Balungan2_kere','3310','Honda Genio','B3070280168','/assets/uploads/20210423','977612a41abf926a20f9ddf6421296b8.jpg','/assets/uploads/20210423','9c6dc8789200b7ae4faf956f271a5da8.jpg','2021-04-23 20:33:57');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (322,'GRM-20210423016','PURWANTO','081901964927','shintapur8@gmail.com',0,'balungan2_kere','3310','Honda Genio','B1050074350','/assets/uploads/20210423','8f10389e429e18610542e0226b11d8a8.jpg','/assets/uploads/20210423','3061291f97ed96dfeb105e6c26e25876.jpg','2021-04-23 20:39:52');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (323,'GRM-20210424001','Alfin Rizqi','083833540750','alfinrizki032@gmail.com',0,'heyyalfinn','3507','Honda CB150R','B3010307007','/assets/uploads/20210424','a9357403f8cb005476ad81efed89f36f.jpg','/assets/uploads/20210424','eb47f65cb50938ec66e9aa0087d39c42.jpg','2021-04-24 09:07:52');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (324,'GRM-20210424002','angga prayudha noor','085368408876','angganoor9009@gmail.com',0,'noor_pyd','1802','suzuki nex','B1060044803','/assets/uploads/20210424','9b6e5632cf336efc5fbec35c128ed0f7.jpg','/assets/uploads/20210424','5dcd0c64005070534ff3a694aed4142d.jpg','2021-04-24 11:03:34');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (325,'GRM-20210424003','Sukri Darmansyah','082228516430','sukridarmansyah11@gmail.com',0,'Sukri Darmansyah','1571','Nmax','B2090118080','/assets/uploads/20210424','e35f875cd3a5fb15b0bc70e88aac83bb.jpg','/assets/uploads/20210424','ab615a299014269c21b81c7565b96881.jpg','2021-04-24 13:28:54');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (326,'GRM-20210424004','Abdul Rohim a.md.com','085279780046','Rohimmobile27@gmail.com',1,'Rohimmobile27','1803','Honda beat','B3090066787','/assets/uploads/20210424',NULL,'/assets/uploads/20210424',NULL,'2021-04-24 14:44:57');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (327,'GRM-20210424005','Maulud tyan saputro','081328729173','mauludtyan@gmail.com',0,'Putra_bastyan','3471','Mio','B1030031590','/assets/uploads/20210424','e84a12f5ff87c1bdbeec60d50216ffe0.jpg','/assets/uploads/20210424','3901f8a68a154fd474d24777166f782b.jpg','2021-04-24 16:22:49');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (328,'GRM-20210424006','Shinta Diah Setianingsih','085868685175','shintadeeah@gmail.com',0,'Shintadeeah','3310','Honda Vario','B1020021289','/assets/uploads/20210424','8109fe93f06642cd15696f69e665e284.jpg','/assets/uploads/20210424','d0d02189a1481d8e1e652143867e7f45.jpg','2021-04-24 19:54:33');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (329,'GRM-20210424007','Alvi Rahmalia','0857-1577-3198','alvi.zakida@gmail.com',0,'@alvirhmalia','3175','Honda Supra','B1080064266','/assets/uploads/20210424','d7cdf1e59a4ea4ec592c0ee3d14a3fc3.jpg','/assets/uploads/20210424','11695359f1ca4df65e7bd9ada201629c.jpg','2021-04-24 21:27:42');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (330,'GRM-20210424008','Alvi Rahmalia','0857-1577-3198','alvi.zakida@gmail.com',0,'@alvirhmalia','3175','Honda Supra','B3010331761','/assets/uploads/20210424','7eac2e188550f7145b3d68da7e3f4517.jpg','/assets/uploads/20210424','b833cb9827ee2844a14c2285d4a9e5ea.jpg','2021-04-24 21:34:33');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (331,'GRM-20210424009','Windi Nuranisa','089660891891','windinuranisa0@gmail.com',0,'nurans.s','3278','Honda Vario','B3050320699','/assets/uploads/20210424','40087447363958638a7ea52ea585e7e1.jpg','/assets/uploads/20210424','10e99b7898f30eaad7454db83dc32777.jpg','2021-04-24 21:37:10');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (332,'GRM-20210424010','Windi nuranisa','087836011085','nawindi18@gmail.com',0,'windinaa','3278','Yamaha mio','B2020392435','/assets/uploads/20210424','ddef69d65cf2d5e80493c1a168b63964.jpg','/assets/uploads/20210424','58f6f0cef5f98ed4a2a61af131df7eca.jpg','2021-04-24 21:47:29');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (333,'GRM-20210425001','Khodarul anwar hasibuan','85261872774','darulhasibuan22@gmail.com',1,'Darulhasibuan','1210','Honda vario','B1060003598','/assets/uploads/20210425','e2725e68635e40a8dcc745a13b5fb0b3.jpg','/assets/uploads/20210425','5e14bb632c19e318abf25d62d5089f87.jpg','2021-04-25 10:35:56');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (334,'GRM-20210425002','Reni Rohana manalu','081321441457','renimanalu2017@gmail.com',0,'Reni C\'pudan Manalu','3204','Honda verza','B3010210064','/assets/uploads/20210425','9ce7da99f51f2ee932b97f15a4bf8720.jpg','/assets/uploads/20210425','686ee01696183567c69329bd0eaae7bb.jpg','2021-04-25 10:36:00');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (335,'GRM-20210425003','Khodarul anwar hasibuan','085261872774','Darulhasibuan22@gmail.com',1,'Darul hasibuan','1210','Honda vario 150','B2090060974','/assets/uploads/20210425','1858abc3dc45c11168019f0405cd5f62.jpg','/assets/uploads/20210425','f7a9346acdfb4394ca359ac03f2d6b75.jpg','2021-04-25 10:49:34');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (336,'GRM-20210425004','Muhamad wachidin','085813631745','Wahidin98muhamad@gmail.com',1,'Wacett','3306','Jupiter','B3010286109','/assets/uploads/20210425','ae90e3a009c54269ab660ba429a21f35.jpg','/assets/uploads/20210425','ee0024e6d9c13b759f42b9373044cc38.jpg','2021-04-25 15:11:26');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (337,'GRM-20210426001','Dasiman','087736586386','dasimanmarema8@gmail.com',0,'Anugrah mendoan','3171','Honda Vario','B2050362583','/assets/uploads/20210426','197c1d668a2577a86813c1d80bed4add.jpg','/assets/uploads/20210426','0c96364ee10809d00c338b7896f2f2e9.jpg','2021-04-26 11:17:29');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (338,'GRM-20210426002','Rian','087728489150','riansyakoko7@gmail.com',0,'riansyakoko7@gmail.com','3171','Vario','B2050362615','/assets/uploads/20210426','15e2e5d2428935a92f596abead99a8dd.jpg','/assets/uploads/20210426','98e33dba35e3cef47eeaf52cf77117c7.jpg','2021-04-26 11:26:22');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (339,'GRM-20210426003','Adi prabowo','08973322333','Adieghie@gmail.com',0,'Adieghie','3404','Honda vario','B1010016743','/assets/uploads/20210426','d0ada46c14d400e066dbef3636f41a4b.jpg','/assets/uploads/20210426','69a89f4f9e9e74907873dc258d2567d1.jpg','2021-04-26 11:33:38');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (340,'GRM-20210426004','Adi prabowo','08973322333','Adieghie@gmail.com',0,'Adieghie','3404','Honda vario','B1050067823','/assets/uploads/20210426','02073af1a42d04f68e9ff5fc90be3ca1.jpg','/assets/uploads/20210426','0d5e56795de15574a82793ecc3d3ac22.jpg','2021-04-26 11:54:45');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (341,'GRM-20210426005','Ganjar Prasojo','085747965211','ganjar.prasojo26@gmail.com',0,'ganjarprasojo','3301','','B2030319691','/assets/uploads/20210426','f475026e83a60b5097de8ea4eaf1346a.jpg','/assets/uploads/20210426','390a915c98b20bd77cdac0f078b73a2b.jpg','2021-04-26 12:02:35');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (342,'GRM-20210426006','Ganjar Prasojo','085747965211','ganjar.prasojo26@gmail.com',0,'ganjarprasojo','3301','Honda Vario150','B4050065438','/assets/uploads/20210426','650e60b8a8d140d47ca9e3a2e2224457.jpg','/assets/uploads/20210426','77f1bdb6ed7fbda7372acfd65c0796ba.jpg','2021-04-26 12:05:18');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (343,'GRM-20210426007','Sitepat monjali','08882707579','sitepat.jgj.monjali@gmail.com',0,'Sitepat_monjali','3404','','B2030335492','/assets/uploads/20210426','f9ee2cd9e25f9297cf758985a2680503.jpg','/assets/uploads/20210426','6d1d3729b959b03deb0fa98e7800cf37.jpg','2021-04-26 15:16:24');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (344,'GRM-20210426008','Rinawati','085242865551','adrianmuh86@gmail.com',1,'Kasniarcaya_','7305','Vario 150','B2020379860','/assets/uploads/20210426','8cb281d538829bda8385ae5941ac6b8f.jpg','/assets/uploads/20210426','f0e543c2afdc5c3de02a9957bf6bb6d1.jpg','2021-04-26 16:10:23');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (345,'GRM-20210427001','Nur endah lestari','087882183909','Ab.bun0728@gmail.com',0,'Ndah_chaem','3175','Nmax','B2090055881','/assets/uploads/20210427','70972f3d077395c6218266fec02fa755.jpg','/assets/uploads/20210427','86aef6ffa716b677b3c21ac7dea33cdb.jpg','2021-04-27 08:51:30');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (346,'GRM-20210427002','Nur endah lestari','087882183909','Ab.bun0728@gmail.com',0,'Ndah_chaem','3175','Scoppy fi','B2020413297','/assets/uploads/20210427','2071094f8eba55bfdcb1621761b25526.jpg','/assets/uploads/20210427','fc0cdf6bc1a5c73bede91810c25595e9.jpg','2021-04-27 08:54:33');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (347,'GRM-20210427003','Preddy sudianto pandiangan','081221233342','preddysudiantopandiangan@gmail.com',0,'delimagelis@yahoo.com','3204','Yamaha xride','B4090019416','/assets/uploads/20210427','c58c6115373cecf0915da219e8f91ffd.jpg','/assets/uploads/20210427','1409dac77a8ecd22fe85bc725066b561.jpg','2021-04-27 11:11:11');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (348,'GRM-20210427004','Singgih Santoso','081333600839','Singgihsantoso040@gmail.com',0,'Santoso_singgih','3578','Honda Beat','B4090006395','/assets/uploads/20210427','dcb7fbc7aa5b42e2dd48a1a3075cef78.jpg','/assets/uploads/20210427','edd68baa783dcf84b2001de4f2e2a521.jpg','2021-04-27 13:24:54');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (349,'GRM-20210427005','goval','085223888888','rukobagyacitycitraland@gmail.com',0,'','1271','','b1010009207','/assets/uploads/20210427','130871c03142e18ef835e06639b696a6.jpg','/assets/uploads/20210427','7db4f0df7340ac423012111f87ace52d.jpg','2021-04-27 13:36:18');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (350,'GRM-20210427006','tanjokjek','082189064277','pohonanif@gmail.com',0,'','1271','','b3090021635','/assets/uploads/20210427','c402ff7f967a8c06d9d5031865d01c7b.jpg','/assets/uploads/20210427','bea9b0eee6d9592a7dfa0a16e55077c2.jpg','2021-04-27 14:14:58');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (351,'GRM-20210427007','Sandra rahayu','085892696285','sandrarahayu78@gmail.com',0,'Shedudenk','3201','Vario ','B2010391254','/assets/uploads/20210427','7d3f0574f451c018f9b4cb8f76cc1962.jpg','/assets/uploads/20210427','46d2b1e41315f07dd0b59bd0f1281243.jpg','2021-04-27 16:28:22');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (352,'GRM-20210427008','Herman','087744274536','herman250694@gmail.com',0,'Herman_2594','3208','Yamaha vixion','B3020346427','/assets/uploads/20210427','a5942ca2bf0f0afc1ae7b2a33723b3fd.jpg','/assets/uploads/20210427','a84771b56aba5382a4462838deae3cbd.jpg','2021-04-27 17:00:00');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (353,'GRM-20210427009','Windi Nuranisa','089660891891','windinuranisa0@gmail.com',1,'windinaa','3278','Yamaha mio','B3050321860','/assets/uploads/20210427','6a15a39fda9bbad7ae2ee4ed2f07901d.jpg','/assets/uploads/20210427','25e4cdc83cac15a9655c6e6c1743b10a.jpg','2021-04-27 19:52:09');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (354,'GRM-20210427010','Ribut Wagiono','085258777650','ributwagiono22@gmail.com',0,'ributwagiono','3513','Honda Vario','B1030031065','/assets/uploads/20210427','03f3e901485e74e625d3a4269e15be79.jpg','/assets/uploads/20210427','c5e318881f5d1c4c5c7f777eaa5b70b5.jpg','2021-04-27 20:52:19');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (355,'GRM-20210427011','Robut Wagiono','085258777650','ributwagiono22@gmail.com',0,'ributwagiono','3513','Honda Vario','B2070193465','/assets/uploads/20210427','de0a9623b751f78467396400e1270b48.jpg','/assets/uploads/20210427','f25b0925317d99af8806cd6a22827e8f.jpg','2021-04-27 20:58:22');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (356,'GRM-20210427012','Hari Santoso ','081316016731','harisantoso0810@gmail.com',0,'santosohari_dr','3173','Honda PCX','B4070039696','/assets/uploads/20210427','900545f01a4493f5b4ec27c8d65e903d.jpg','/assets/uploads/20210427','543eb4ae6b6d4d8fc56fb20ead7b5bb8.jpg','2021-04-27 23:22:39');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (357,'GRM-20210427013','Neni sriwahyuni','085871334482','nenisriwahyuni127@gmail.com',1,'Arshanaziizbaaqi','3278','Honda Scoopy','B2030246229','/assets/uploads/20210427','2950a2ef91d8b31fb93bddac40ae292c.jpg','/assets/uploads/20210427','5f344687c9ed0f0870d3355db452d377.jpg','2021-04-28 01:52:14');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (358,'GRM-20210428001','Preddy sudianto pandiangan','081221233342','preddysudiantopandiangan@gmail.com',0,'delimagelis@yahoo.com','3273','Revo','B2060354118','/assets/uploads/20210428','98d11fc4ad4ef83d36f24e8b3d60f830.jpg','/assets/uploads/20210428','01cdf4e3a351f6cf16706f3f5ebc8c16.jpg','2021-04-28 14:34:07');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (359,'GRM-20210428002','Sahida Zuriyah Hijjah Dwi Putri Utami','089650406100','sahidautami@gmail.com',0,'szhdpu','3273','Beat','B4070028185','/assets/uploads/20210428','c04075c774575b7448e075cc6ca6c617.jpg','/assets/uploads/20210428','e4c3ec23ff6b5ee78109c82eddf8bcc2.jpg','2021-04-28 16:43:59');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (360,'GRM-20210428003','ALEX ALFENDI','083190482090','muhammadzenn92@gmail.com',0,'Alx.fendy_','1671','Yamaha Nmax','B3030323287','/assets/uploads/20210428','0026c518f48fe9e45b84cb6908044438.jpg','/assets/uploads/20210428','ff4111a581e0d5631eb89935d7fd5b89.jpg','2021-04-28 17:47:17');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (361,'GRM-20210428004','ALEX ALFENDI','083190482090','Muhammadzenn92@gmail.com',1,'Alx.fendy_','1602','Yamaha Aerox','B2020366498','/assets/uploads/20210428','9d68565778e0afc949400cd5a056f7a2.jpg','/assets/uploads/20210428','cd8a7d74605ab45d3d16e3c9862597f4.jpg','2021-04-28 19:26:19');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (362,'GRM-20210428005','Dirga indarwan','087786935176','Dirgaindarwan25@gmail.com',0,'@dirgaindarwan','3273','Honda vario','B3030294394','/assets/uploads/20210428','dc155999e1829f6250c0bc76de34fe19.jpg','/assets/uploads/20210428','35c99ae25de7df11ef8b5e706c939e39.jpg','2021-04-28 19:57:55');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (363,'GRM-20210428006','Pang julia','08126326633','juliabjmdn@gmail.com',0,'','1271','Honda genio','B1030043923','/assets/uploads/20210428','a4c5235c800d77bc6c19b222b528ff6d.jpg','/assets/uploads/20210428','dab92c3770b816f0a186e69e9ad6d939.jpg','2021-04-28 20:10:28');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (364,'GRM-20210428007','ALEX ALFENDI','083190482090','hb4068376@gmail.com',0,'Alx.fendy_','1602','Yamaha Aerox','B4070045480','/assets/uploads/20210428','4d30a4e1ef3ad2dea4121cff65c38cf3.jpg','/assets/uploads/20210428','aa08a8f2295fcfe336b408e00fcbd1bb.jpg','2021-04-28 21:17:20');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (365,'GRM-20210428008','David Rahayu','089615153347','rahayudavid1@gmail.com',0,'davidsdrso','3402','Yamaha X-Ride','B4070049747','/assets/uploads/20210428','8fd0615a57a0ddfe96442fbea9407b3e.jpg','/assets/uploads/20210428','30ba27080e5fd7074a9d65a03238cbdb.jpg','2021-04-28 21:31:28');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (366,'GRM-20210428009','Ruthsanti Andajani Gunawan','08129433332','gitaketawa2013@gmail.com',1,'@ruthgunawan_','3372','Yamaha NMax','B3090034967','/assets/uploads/20210428','d7a86678826d236cfd59c25d2d6ffba6.jpg','/assets/uploads/20210428','963a65ecca54ee65d2311f137a98216d.jpg','2021-04-28 22:38:38');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (367,'GRM-20210428010','Agus hutri wirantau','083839505445','aguswirantau@gmail.com',1,'Agus_hutri17','3216','Honda cb150r','B4080032494','/assets/uploads/20210428','51962a1691d932532298c049aa6621b0.jpg','/assets/uploads/20210428','4b92d6dfa5c71890cc24ab1962466d89.jpg','2021-04-29 01:55:27');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (368,'GRM-20210429001','Ryan Ardianto Rukmana','085700019822','Ryanardiantorukmana@gmail.com',1,'ryn_ar24','3216','Honda Vario','B3070265064','/assets/uploads/20210429','a314a33f4cb5f7e07049889eb37652e4.jpg','/assets/uploads/20210429','308e5e3d1683cd5f4707de9144647db3.jpg','2021-04-29 09:10:53');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (369,'GRM-20210429002','Ryan Ardianto Rukmana','085700019822','Ryanardiantorukmana@gmail.com',1,'ryn_ar24','3216','Honda Vario','B2070256873','/assets/uploads/20210429','8cf41aaff098bb33c331e49678f10e13.jpg','/assets/uploads/20210429','4e7c8e8f0625653072776abf5e6de2b0.jpg','2021-04-29 09:18:14');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (370,'GRM-20210429003','Reski Respati','089663088669','reski.respati82@gmail.com',0,'Afatar82','3275','Honda beat','B2050303083','/assets/uploads/20210429','73cb1a4d9b3621bd5c98bec3c38108eb.jpg','/assets/uploads/20210429','8feb8cc91814b9b0cdf5fbc441db4974.jpg','2021-04-29 10:29:18');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (371,'GRM-20210429004','Dicky Kurniawan','081348366464','dickykur3@gmail.com',0,'kiki.tannz','6171','Honda Beat','B4050052773','/assets/uploads/20210429','9c73de354769efc118eb04ee2a78eb70.jpeg','/assets/uploads/20210429','dbbd631b8ce503d26c75367e0ca5cad4.jpeg','2021-04-29 10:43:35');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (372,'GRM-20210429005','Ade rohman','082315199552','adherahman250@gmail.com',0,'adheturpo@yahoo.co.id','3674','Suzuki Skype','B3040358826','/assets/uploads/20210429','deb4e43f4c5a50d0dd1c7f2eadc5a1d6.jpg','/assets/uploads/20210429','9ae4269f09253a8ce1cbeaf3d03de1e7.jpg','2021-04-29 12:30:12');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (373,'GRM-20210429006','Zein motor','082282179893','Alvia9864@gmail.com',0,'@vyanni__','1602','Yamaha mio 3','B2020382044','/assets/uploads/20210429','dae7d97cfbe16120946a51b805e60a5b.jpg','/assets/uploads/20210429','bd9772ef100a14321ca3f683a6772be4.jpg','2021-04-29 12:37:10');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (374,'GRM-20210429007','Ade rohman','082315199552','adherahman250@gmail.com',0,'adheturpo@yahoo.co.id','3674','Honda Vario ','B1040049405','/assets/uploads/20210429','31c9f8a20781690b633f77987a349b7c.jpg','/assets/uploads/20210429','ee29b6e8428ca69fa2f8d0e96130a57a.jpg','2021-04-29 12:48:38');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (375,'GRM-20210429008','Nurul Arifin','081779893883','arifinnurul521@gmail.com',1,'Arifinnurul521','3216','Honda Scoopy','B2020421563','/assets/uploads/20210429','76a9541db095f73089e2036007fb1276.jpg','/assets/uploads/20210429','37b06ee5e473e063a56e1e45eeb7ab48.jpg','2021-04-29 17:00:54');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (376,'GRM-20210429009','ALEX ALFENDI','083190482090','hb4068376@gmail.com',0,'Alx.fendy_','1602','Scoopy','B2020382300','/assets/uploads/20210429','b087641d5fc7cfe9647557075ffd68b2.jpg','/assets/uploads/20210429','eb32d06b6593918ab96d600c95e33a33.jpg','2021-04-29 17:20:15');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (377,'GRM-20210429010','SENDI APRILIANDA PUTRA','081312290637','sendiknc9@gmail.com',0,'Prilianda_putra','3172','Yamaha mio','B3050316052','/assets/uploads/20210429','f0062965ac2fbd790a5c54f5079ebb5e.jpg','/assets/uploads/20210429','7585f1f0b607d5b176491b8b5acd0fba.jpg','2021-04-29 17:30:23');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (378,'GRM-20210429011','ALEX ALFENDI','083190482090','Cintaraja2004@gmail.com',0,'Muhammadzenn_','1602','Honda vario','B4050057363','/assets/uploads/20210429','0a94cabc5798f5e7d394b69044428b01.jpg','/assets/uploads/20210429','ad9f7d6172b7449e000f4dd77f9f6fcf.jpg','2021-04-29 18:29:44');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (379,'GRM-20210429012','ALEX ALFENDI','083190482090','Cintaraja2004@gmail.com',0,'Muhammadzenn_','1602','Yamaha MX','B3010306891','/assets/uploads/20210429','ed0e8ac22de9582f10989d84ec196e46.jpg','/assets/uploads/20210429','d25576ccd35c89ff48e81e5bef881a96.jpg','2021-04-29 19:45:28');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (380,'GRM-20210429013','Muhamad Taufiq Hidayat','081313063580','Taufiq.muhamad09@gmail.com',0,'Taufikh123 ','3217','Yamaha mio m3','B4070018179','/assets/uploads/20210429','d8b047ff211dd856388f343a961f75e9.jpg','/assets/uploads/20210429','cfe3493db2da3e72a9852d900b5321e2.jpg','2021-04-29 21:02:56');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (381,'GRM-20210429014','ALEX ALFENDI','083190482090','sm0166253@gmail.com',0,'Alx.fendy_','1602','Yamaha Vixion','B3010290637','/assets/uploads/20210429','d4fbfaf8314c3980cd2e314ff5da32c6.jpg','/assets/uploads/20210429','ff2088829f9c288b122beabb441b348e.jpg','2021-04-29 22:18:00');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (382,'GRM-20210429015','Arief affandi','081234090473','ariefaffandi422@gmail.com',1,'ariefaffandi_','3514','Honda vario techno','B4050065546','/assets/uploads/20210429','1735823df0d6bfd188a8b503eaafb7c9.jpg','/assets/uploads/20210429','07152c1e0ace7656078edb0c5efa2503.jpg','2021-04-29 23:41:34');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (383,'GRM-20210429016','ALEX ALFENDI','083190482090','sm0166253@gmail.com',0,'Muhammadzenn_','1602','Yamaha Vega','B3080220776','/assets/uploads/20210429','048142d9eaa9ac5e9f629dad8458d618.jpg','/assets/uploads/20210429','16ec901506fad4a51492c8c582673697.jpg','2021-04-30 01:09:17');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (384,'GRM-20210429017','ALEX ALFENDII','083190482090','manist877@gmail.com',0,'Alx.fendy_','1602','Yamaha Vixion','B3010320905','/assets/uploads/20210429','e0e1e8da2eef695e2b9e222131fd9262.jpg','/assets/uploads/20210429','9ca6ad864b74a5d45cd9ad64910388da.jpg','2021-04-30 04:03:31');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (385,'GRM-20210429018','ALEX ALFENDI','083190482090','manist877@gmail.com',0,'Muhammadzenn_','1602','Honda Beat','B3050283441','/assets/uploads/20210429','a8225b4686e013959312a76d50dba930.jpg','/assets/uploads/20210429','187890d0491d29d44af0f89612d4585a.jpg','2021-04-30 05:00:56');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (386,'GRM-20210430001','Ayusron','085366991352','Ayusron74@gmail.com',0,'Ayusron','1803','Honda beat','B2010371160','/assets/uploads/20210430','0008a72c9a7598847e9cbe7ae303e5e1.jpg','/assets/uploads/20210430','2eb427ba4cbfc7c0b3f855d83fcbb8b0.jpg','2021-04-30 10:32:13');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (387,'GRM-20210430002','Juiana Widjaja','089653174255','yuli.firecroft@gmail.com',1,'@yuli.firecroft','3372','Honda Supra Fit','B2060090072','/assets/uploads/20210430','748b545ae7f62c0163fd7a6d6730a6c3.jpg','/assets/uploads/20210430','0e8a1ce3b54ce1d58459019cf4b58e1c.jpg','2021-04-30 11:11:39');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (388,'GRM-20210430003','Ahmad atib','085320536607','quinnajasmineazkia5@gmail.com',0,'Cinta','3213','CB150R','B3010234881','/assets/uploads/20210430','0a35ab6cea01550a5617c55d2c9bc40f.jpg','/assets/uploads/20210430','53f4ae2504138f5bfc70288b910cf904.jpg','2021-04-30 11:36:21');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (389,'GRM-20210430004','ASDIAR YOGA HANGGARA','085600933328','Asdiaryoga@gmail.com',0,'Asdiaryogahanggara','3313','N Max','B3090077433','/assets/uploads/20210430','62d42057d9366807c0f0a9316b651b84.jpg','/assets/uploads/20210430','d6b3b4dcdbad53e354ebfde7438e904e.jpg','2021-04-30 12:36:59');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (390,'GRM-20210430005','Ade Maulana Firmansyah','081319591440','ademaulana202@gmail.com',1,'@adelanafirmansyah','3216','Yamaha R15','B1030058496','/assets/uploads/20210430','e616621c2c61d297815644e7d7cde31b.jpg','/assets/uploads/20210430','4c6134889706e658cae1806dbdeaeef2.jpg','2021-04-30 13:56:03');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (391,'GRM-20210430006','Ade Maulana Firmansyah','081319591440','ademaulana202@gmail.com',1,'@adelanafirmansyah','3216','Yamaha R15','B1020030976','/assets/uploads/20210430','b432c328fe1fa8f08ae15db6b7b6b590.jpg','/assets/uploads/20210430','2b7aea1652e679a751f59e14cb28222f.jpg','2021-04-30 13:59:50');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (392,'GRM-20210430007','Yudi Prasetyo','087788652767','Yudiprasetyo294@gmail.com',0,'Yudi Prasetyo','3404','','B3020341307','/assets/uploads/20210430','ed44ef4aa2c9ec4f712ccf2306a312d5.jpg','/assets/uploads/20210430','fc7eb296c2236c9161d115bd100d2463.jpg','2021-04-30 14:38:23');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (393,'GRM-20210430008','Yudi prasetyo','087788652767','Davidsmart7874@gmail.com',0,'Putra tunggal','3404','','B4090041890','/assets/uploads/20210430','2dce50388a53f53ab990cf58dceab0d4.jpg','/assets/uploads/20210430','89732da14586fc4efa04f2ba9ad3ad6d.jpg','2021-04-30 15:04:22');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (394,'GRM-20210430009','Sitepat condongcatur','08882707606','sitepat.jgj.condongcatur2@gmail.com',0,'@sitepatcondongcatur2','3404','','B3050341243','/assets/uploads/20210430','07eb306de4d042cca7c1451621814eee.jpg','/assets/uploads/20210430','62431261ce762e085898c6d4a9e12180.jpg','2021-04-30 15:16:58');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (395,'GRM-20210430010','Nasution Wahyudi','085808419463','nasutionganteng123@gmail.com',1,'owenggg_','3310','Scoopy','B1060064763','/assets/uploads/20210430','fa4586ec20f369c241f7460fb387d7d6.jpg','/assets/uploads/20210430','23c56a4af26b4c8f53f95c8f12776dfd.jpg','2021-04-30 19:35:43');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (396,'GRM-20210430011','Febi kristian manuel nainggolan','089618777461','Kawakikara10@gmail.com',1,'Kristianmanuelfebi','3204','Pcx160','B2010140067','/assets/uploads/20210430','d357a2c148f455e74ea79f9a12dbffa9.jpg','/assets/uploads/20210430','83dda5ef26cdcb86c63c2d4f4c364bfd.jpg','2021-04-30 20:56:52');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (397,'GRM-20210430012','ALEX ALFENDI','083190482090','rajanyaakai@gmail.com',0,'Alx.fendy_','1602','Yamaha vixion','B4080010166','/assets/uploads/20210430','7d17a8f45e74a513b1b6b77acb10035b.jpg','/assets/uploads/20210430','c90df616dc72c0f17cccb2be8f702190.jpg','2021-04-30 21:41:17');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (398,'GRM-20210430013','ALEX ALFENDII','083190482090','rajanyaakai@gmail.com',0,'Alx.fendy_','1602','Honda beat','B1040014143','/assets/uploads/20210430','eaffcaa32672790dff8b25d870f27f81.jpg','/assets/uploads/20210430','82156bf1ef4963548e3c1b86c7cb787d.jpg','2021-05-01 04:08:59');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (399,'GRM-20210501001','Arief affandi','081234090473','ariefaffandi422@gmail.com',0,'ariefaffandi_','3514','Honda vario techno','b4070046249','/assets/uploads/20210501','b8b29b94df21cec02d47ffbb496da548.jpg','/assets/uploads/20210501','237639c8b823349198fa9469ff399079.jpg','2021-05-01 11:01:40');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (400,'GRM-20210501002','Robbi Aprilian','085795591718','Ceritakertaspena@gmail.com',0,'@robbi_as','3273','Honda bear','B4070019150','/assets/uploads/20210501','59b8582809054b3cd3068d553a17bb64.jpg','/assets/uploads/20210501','1e9690d7b076615cd095e78525c8b089.jpg','2021-05-01 11:50:33');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (401,'GRM-20210501003','Asep Tahyat','0881023444234','aseptahyat257@gmail.com',0,'atahyat','3277','','B3090039575','/assets/uploads/20210501','dd1233476c21e663f93bd936709c7f98.jpg','/assets/uploads/20210501','15099948ee6ba35871750bc8cb45d393.jpg','2021-05-01 13:16:32');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (402,'GRM-20210501004','Girry Virgiansyah','085222327979','girryv@gmail.com',0,'@girvir','3217','Honda Spacy','B4070027073','/assets/uploads/20210501','e012008ebc63b66067b28ea97297421e.jpg','/assets/uploads/20210501','f455d741058d0cc6258783816470b36b.jpg','2021-05-01 13:42:48');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (403,'GRM-20210501005','iwan darmawan','08971260177','siiwaniwaniwan@gmail.com',0,'iwan_d19','3273','VARIO','B3030325156','/assets/uploads/20210501','eb3146c7940ac7d5924cd0d68526d996.jpeg','/assets/uploads/20210501','60d8ea59bfd92514b01fad930b934d52.jpeg','2021-05-01 19:18:02');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (404,'GRM-20210501006','iwan darmawan','08971260177','siiwaniwaniwan@gmail.com',1,'iwan_d19','3273','VARIO','B1040041842','/assets/uploads/20210501','5b2c87885809655c9a4fb3c966318035.jpeg','/assets/uploads/20210501','759d40fd78b9f4ad86c166cc68aed2db.jpeg','2021-05-01 19:22:06');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (405,'GRM-20210501007','iwan darmawan','08971260177','siiwaniwaniwan@gmail.com',1,'iwan_d19','3273','VARIO','B2030291505','/assets/uploads/20210501','2f620cecd15e036c31b2903a8add0b3c.jpeg','/assets/uploads/20210501','e0e7c8f706f835824773f4373e6aa8a5.jpeg','2021-05-01 19:27:09');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (406,'GRM-20210501008','iwan darmawan','08971260177','Hendratohir30@gmail.com',1,'iwan_d19','3273','beat','B2040311905','/assets/uploads/20210501','210dddce88fac9695c2e443041b51cf8.jpeg','/assets/uploads/20210501','78875dc673115dab7e89897d0d3a76fa.jpeg','2021-05-01 19:37:26');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (407,'GRM-20210501009','iwan darmawan','08971260177','Hendratohir39@gmail.com',1,'iwan_d19','3273','VARIO','B3040359972','/assets/uploads/20210501','74cc702c7258d5bb04b20958c5b05f4e.jpeg','/assets/uploads/20210501','f14f095069f9034c3d3b6c3681de4d8b.jpeg','2021-05-01 19:40:16');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (408,'GRM-20210501010','Alex alfendi','083190482090','alexalfendi177@gmail.com',0,'Alx.fendy_','1602','Honda Vario','B4040068047','/assets/uploads/20210501','48ad68378addf7c5c6035c5b9735d738.jpg','/assets/uploads/20210501','4b6a03694906a9199078b23fbb1ffcb5.jpg','2021-05-01 23:53:52');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (409,'GRM-20210501011','Siti murni','083190482090','alexalfendi177@gmail.com',0,'Alx.fendy_','1602','Yamaha mio','B2020388222','/assets/uploads/20210501','412f9545978a86f00654033471f11674.jpg','/assets/uploads/20210501','2c6b8e85433d04f80d4e3b2c32a4a80a.jpg','2021-05-02 06:08:29');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (410,'GRM-20210502001','Rizki Nanda Putra','082371866222','rizkinandaputra20@gmail.com',0,'rzki_np','1673','Honda Scoppy','B2030332847','/assets/uploads/20210502','d3ae69136765c659858f0f5924aa87fc.jpg','/assets/uploads/20210502','6e9ed643e8f35aedf6c40e061dd63f3d.jpg','2021-05-02 10:10:10');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (411,'GRM-20210502002','Juwandi saepudin','081289347588','andikenzie123@gmail.com',0,'andi_kenz21','3172','Yamaha NMAX','B2020364179','/assets/uploads/20210502','c2b12ce040694b9fad0a24c389c05e79.jpg','/assets/uploads/20210502','264aab45c99eb06acef19d69f71352c2.jpg','2021-05-02 10:19:40');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (412,'GRM-20210502003','Rifqi Septianto','085740577545','septiantorifqi19@gmail.com',1,'Septianrifqi','3375','Scoopy esp 2015','B1040063580','/assets/uploads/20210502','b60b92d856913727502c0b71722e84c5.jpeg','/assets/uploads/20210502','d23527342ad27f0e00df2fbc41fb0b6c.jpeg','2021-05-02 11:32:32');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (413,'GRM-20210502004','Ivana Maulin Gotami','082380062288','Ivanamaulin88@gmail.com',0,'Ivana08_','1508','Honda beat','B2050348344','/assets/uploads/20210502','64332f8d4d5665e404512da1c4dffd0c.jpg','/assets/uploads/20210502','84f9c9445d63f306785b675ff88d9b8c.jpg','2021-05-02 11:50:41');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (414,'GRM-20210502005','Dandy prasetia','089656155953','dandyclash123@gmail.com',0,'Bakwans_jagung','3320','Yamaha Nmax','B3030313289','/assets/uploads/20210502','bbfcac3833d644b4ee834e47e3a85dde.jpg','/assets/uploads/20210502','99565cfd7fc5c8de2b027a16b54f4fc8.jpg','2021-05-02 12:40:09');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (415,'GRM-20210502006','Salafi Dwi Prianto','089531351899','Salafidwi@gmail.com',1,'Salafidwi','3215','Honda CBR 150 R','B3010336979','/assets/uploads/20210502','e3377f3fd6249e5e2d07ef9e65cfc8c9.jpg','/assets/uploads/20210502','c7a7bcf3bfaca9cf99aa2ef64d666299.jpg','2021-05-02 15:57:53');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (416,'GRM-20210502007','Salafi Dwi Prianto','089531351899','Salafidwi@gmail.com',1,'Salafidwi','3215','Honda CBR 150 R','B4080032510','/assets/uploads/20210502','7ee84bbe568d45ea7029004e7e11c057.jpg','/assets/uploads/20210502','3e846b9e940c2ffb92beff22fbf4e685.jpg','2021-05-02 16:02:08');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (417,'GRM-20210502008','Ramelan','081328210153','setia_budiana_solo@yahoo.com',0,'ramelan_koran_','3311','Supra Fit','B2040078016','/assets/uploads/20210502','31efb3fe0d06e34fe12ade838afcef7e.jpg','/assets/uploads/20210502','08862c0372af1302e2887288c469a8c7.jpg','2021-05-02 16:50:20');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (418,'GRM-20210502009','Lisnawati','082118269323','Lisna3529@gmail.com',0,'Lisnawati0326','3217','Honda beat','B1030030443','/assets/uploads/20210502','8808b8052121951dfb8944d280bd9a38.jpg','/assets/uploads/20210502','cd6d1ae237680f097610b46f07473223.jpg','2021-05-02 20:15:45');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (419,'GRM-20210502010','Muhammad Reja Agus Salim','082251126744','rezaagussalim767@gmail.com',0,'rzaagussalim','8271','Yamaha NMax 155','B2050350471','/assets/uploads/20210502','65bd13c7fdf6e8a5f3976daff1c6ebdf.jpg','/assets/uploads/20210502','05cbc60198e65567e5ecb402e15f12f9.jpg','2021-05-03 00:07:12');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (420,'GRM-20210502011','Vina oktaviani','089632695175','Vinaoktaviani1510@gmail.com',0,'Vinaoktav15','3217','Honda ADV','B3030291036','/assets/uploads/20210502','e8657ad3f701b04d8c9a30cebf51534b.jpeg','/assets/uploads/20210502','d6852f51be2499e47d1501619f3ed818.jpeg','2021-05-03 00:36:08');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (421,'GRM-20210503001','Galih Pangestu','083898586035','adiniputri23@gmail.com',0,'hasanah_adini','3173','Honda Beat','B2050366687','/assets/uploads/20210503','959d7304c799aa96b92b5f66df485e60.jpeg','/assets/uploads/20210503','6a15c561471093924f340f1afe259806.jpeg','2021-05-03 11:50:16');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (422,'GRM-20210503002','Hasbia mafazan','08999488964','biamafazan.09@gmail.com',0,'Mafazan.h','3204','Honda vario 150','B4050075301','/assets/uploads/20210503','918495b8100edc5a1d92f6f8e212cc1c.jpg','/assets/uploads/20210503','353a4905b78d32abaa48efa6be6a829d.jpg','2021-05-03 12:38:28');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (423,'GRM-20210503003','Tama Revi Santosa','08983152994','tamarevi@hotmail.com',0,'tamarevi','5171','Honda Scoopy 2017','B2020405992','/assets/uploads/20210503','9f517e8bd266973578fc0a80e6b8985d.jpeg','/assets/uploads/20210503','464dab6c2dffa4c9a25470ee6d0add64.jpeg','2021-05-03 14:41:23');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (424,'GRM-20210503004','Tama Revi Santosa','08983152994','tamarevi@hotmail.com',0,'tamarevi','5171','Honda Scoopy 2017','B2020411153','/assets/uploads/20210503','52ca5d82b87baa20eef57a1aaa9d76c5.jpeg','/assets/uploads/20210503','0c652949bdeb6f722f75f685c39f1861.jpeg','2021-05-03 14:53:57');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (425,'GRM-20210503005','MOCHAMMAD IRFAN','085740997352','irfanjay025@gmail.com',0,'irfanjay1425','3319','Honda scoopy','B2030335099','/assets/uploads/20210503','272a29cbd179cfdbbdba3abff78b2f22.jpg','/assets/uploads/20210503','8a0186c7a87dd060391b5732e10a89dd.jpg','2021-05-03 16:06:35');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (426,'GRM-20210503006','Deddy Permana ','081323177366','deddypermana70@gmail.com',0,'depermana2020','3302','Honda Vario ','B2090085842','/assets/uploads/20210503','797bd48701b425e5ac9e56550020f8e3.jpg','/assets/uploads/20210503','6df9f8210c47c644b6963071700eaabf.jpg','2021-05-03 16:47:23');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (427,'GRM-20210503007','Muhammad Reja Agus Salim','082251126744','rezaagussalim767@gmail.com',0,'rzaagussalim','8271','Yamaha Mio Vino','B2050350847','/assets/uploads/20210503','b4bfde86b654d5be57a32315c8002b88.jpg','/assets/uploads/20210503','6fca86fdf17018dfc34e25ff42817638.jpg','2021-05-03 21:40:17');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (428,'GRM-20210503008','Muhammad Reja Agus Salim','082251126744','muhammadrejaagussalim@gmail.com',0,'rzaagussalim767@gmail.com','8271','Yamaha Mio Vino','B2010370146','/assets/uploads/20210503','10ba4ba31a71b44cae3321b37d42e7bc.jpg','/assets/uploads/20210503','92d7e8049ce27d28b494aa1fd22ce479.jpg','2021-05-03 21:46:15');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (429,'GRM-20210503009','Muhammad Reja Agus Salim','082251126744','muhammadrejaagussalim@gmail.com',0,'rzaagussalim','8271','Yamaha Mio Vino','B3070249635','/assets/uploads/20210503','dc9cafef3e6d42f3343e0ac835097800.jpg','/assets/uploads/20210503','a4ef152561ea30c876881e6b041d5b0a.jpg','2021-05-03 21:52:57');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (430,'GRM-20210504001','Nabil Rizhal Akhyaar','089676892149','nabilrizhal1190@gmail.com',0,'nabil.rizhal','3277','Yamaha Aerox 155','B4040029228','/assets/uploads/20210504','f78cf624e9081c457be34261d9cf8c6b.jpg','/assets/uploads/20210504','be4ed51c55c6bd9cbeeab84df6d07a39.jpg','2021-05-04 13:40:53');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (431,'GRM-20210504002','venska','082118888378','venskachandra@yahoo.com',0,'Ven5ka','7372','Jupiter mx','B3020299882','/assets/uploads/20210504','ec8cf674c34acd6a99982c3a339c380f.jpeg','/assets/uploads/20210504','fe003037ef5c0b8a948752118cf62598.jpeg','2021-05-04 13:45:18');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (432,'GRM-20210504003','venska','082118888378','venskachandra@yahoo.com',0,'Ven5ka','7372','Jupiter mx','B3080169802','/assets/uploads/20210504','a1a0b11c2975eaae9893ffcedf4267ab.jpeg','/assets/uploads/20210504','01ceefb166345ac3a4ccc738a4339245.jpeg','2021-05-04 13:52:25');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (433,'GRM-20210504004','Jessica Widya','089652880206','Jessicawidya1@gmail.com',1,'Jessicawidyaa','7372','Nmax','B2030338854','/assets/uploads/20210504','1567e5647cbe431c6dbdc95c3313f111.jpeg','/assets/uploads/20210504','1c7fcb10b12ed6a86fbae98f934c362a.jpeg','2021-05-04 14:31:24');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (434,'GRM-20210504005','YUSRI ULFAH','08995480298','yusriulfah@yahoo.co.id',0,'yusri_ulfah','3215','HONDA BEAT','B1050015927','/assets/uploads/20210504','70148b5ba10f7ca04b38eaad66545efd.jpg','/assets/uploads/20210504','733e2d226b221e2f1c6d23ecbb4126e3.jpg','2021-05-04 14:38:43');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (435,'GRM-20210504006','ERIC WIDJAJA','081548637414','cengkun.motor@gmail.com',0,'eric.blora','3171','Suzuki Skywave','B3010123072','/assets/uploads/20210504','8c63c663a97e9b53e36ee26dd46cb44e.jpg','/assets/uploads/20210504','0ea66a4ab028d003378f4ff060782879.jpg','2021-05-04 15:33:23');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (436,'GRM-20210504007','Agis sena prayoga','081280558553','Agissenaprayoga21@gmail.com',0,'The_Augustman','3214','Yamaha nmax','B3090058686','/assets/uploads/20210504','cdb03b00962c17d41163f78bada18d52.jpg','/assets/uploads/20210504','deb9263aaa1110cb7c988f761130de1d.jpg','2021-05-04 16:00:54');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (437,'GRM-20210504008','joni','0895631960226','jonnylies888@gmail.com',1,'jonny_jhon98','3172','yamaha aerox 155','14622315727','/assets/uploads/20210504','bbe43a6f266acf063dc78f2ba076bf8a.jpg','/assets/uploads/20210504','9092f498b1225c37225b65e40591ecf3.jpg','2021-05-04 19:19:36');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (438,'GRM-20210504009','Tia lastiani','0877-7039-2403','Tialastia92@gmail.com',1,'Tia_lastia','3214','Honda beat','B1020030972','/assets/uploads/20210504','7b4a70b11d28c3cd9aca555089391779.jpg','/assets/uploads/20210504','a3b6eaa6cd4500377f0df5599205ccca.jpg','2021-05-04 21:03:18');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (439,'GRM-20210504010','Tia lastiani','0877-7039-2403','Tialastia92@gmail.com',1,'Tia_lastia','3214','Honda beat','B2060394261','/assets/uploads/20210504','93509987c8700ee198817a5c6fe81054.jpg','/assets/uploads/20210504','310b02be0c540e00ca2ddd5c7bb08518.jpg','2021-05-04 21:10:12');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (440,'GRM-20210504011','Dicky bernad setiawan','089666292819','bernadd28@gmail.com',1,'dicky_l17','3216','Yamaha R15 v3','B3010347083','/assets/uploads/20210504','fa083f8b36ea995ab69d0c9bdfd02de6.jpg','/assets/uploads/20210504','ee7effa14b31306b3b9e545088820646.jpg','2021-05-05 02:13:46');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (441,'GRM-20210504012','Dicky bernad setiawan','0896-6629-2819','bernadd28@gmail.com',1,'dicky_l17','3216','Yamaha R15 v3','B4080037859','/assets/uploads/20210504','be447c3c93f4ed8a3571013a988c93b8.jpg','/assets/uploads/20210504','593119698c873ddb5ea4a971b1f05067.jpg','2021-05-05 02:19:59');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (442,'GRM-20210505001','ALEX ALFENDI','083190482090','ririr8886@gmail.com',0,'Alx.fendy_','1602','Yamaha Vixion','B3010306492','/assets/uploads/20210505','2fbc29868ca5bdae317f61725fed7bce.jpg','/assets/uploads/20210505','c5fc337fdc8d58060944a4dd703cb97c.jpg','2021-05-05 07:08:15');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (443,'GRM-20210505002','Evelien Rosli','0895336038777','karya.tunggal.cipta@gmail.com',0,'evy_rose88','3372','Honda Beat','B3050276846','/assets/uploads/20210505','55f2d073569d985a8dfe715e668a49db.jpg','/assets/uploads/20210505','cefb52270372c9ebc6ce99a7f13b971e.jpg','2021-05-05 12:25:22');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (444,'GRM-20210505003','LAN DJING','0817259898','metro.parcel@gmail.com',0,'theresa.lan12','3372','Honda Supra X','B2040079073','/assets/uploads/20210505','b83bd9ee396a5451685c4ff45c6553ad.jpg','/assets/uploads/20210505','d63522b3c60a0679b8de4fa1d958ef2d.jpg','2021-05-05 13:29:02');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (445,'GRM-20210505004','Ripal Gunawan','081324264699','Ripalgnwn@gmail.com',0,'Rivaaalgunauan','3211','Honda Beat','B1040065173','/assets/uploads/20210505','6ea9a908f2b16e14270072dc20779842.jpg','/assets/uploads/20210505','ed3aed3bf50cabdae24e7bc370effb3f.jpg','2021-05-05 13:29:49');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (446,'GRM-20210505005','Alan Darmasaputra','087787565875','sapoettra@gmail.com',0,'@alan_ds_','3471','HONDA VARIO','B4040087154','/assets/uploads/20210505','53f34f98ab8a78047d1382268598671f.jpg','/assets/uploads/20210505','861eb13b64dc34505d3e0fc047ec8aea.jpg','2021-05-05 14:59:18');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (447,'GRM-20210505006','Alan Darmasaputra','087787565875','sapoettra@gmail.com',0,'@alan_ds_','3471','HONDA VARIO','B4050047947','/assets/uploads/20210505','08ec441c79a11afb9aaddeb07dd39697.jpg','/assets/uploads/20210505','598bf317e3472abc303d76c01a45d56f.jpg','2021-05-05 15:02:12');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (448,'GRM-20210505007','Nur aeni','085642940845','Aenyayra22@gmail.com',1,'aenyayra22','3328','Honda nmax','B3030345976','/assets/uploads/20210505','80453f1b382314eaf52ea42eaa80076d.jpg','/assets/uploads/20210505','e4a44baf9800026e903820d282faf1bf.jpg','2021-05-05 20:02:45');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (449,'GRM-20210505008','Nur aeni','085642940845','Aenyayra22@gmail.com',1,'aenyayra22','3328','Honda cb150r','B3010345725','/assets/uploads/20210505','cca411e2a1a70f9fcdcfcc0916c4e191.jpg','/assets/uploads/20210505','86621e4cb6b3323690484f7c217dccee.jpg','2021-05-05 20:13:49');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (450,'GRM-20210505009','Endrian nurrakhim','085883322114','fezafebrian38@gmail.com',1,'endrian_nurrakhim','3216','Honda vario','B2030313743','/assets/uploads/20210505','29f6091113de6b3867bb7f6038e65f5c.jpg','/assets/uploads/20210505','d6386594b9ae58929c8c900285446b1f.jpg','2021-05-05 21:52:16');
insert  into `x3_ramadan_activity`(`id`,`no_undian`,`nama`,`telp`,`email`,`diskualifikasi`,`ig_username`,`kota`,`jenis_kendaraan`,`barcode`,`path_barcode`,`foto_barcode`,`path_struck`,`foto_struck`,`created_date`) values (451,'GRM-20210505010','ALEX ALFENDII','083190482090','ririr8886@gmail.com',1,'Alx.fendy_','1602','Honda Vario','B3070264050','/assets/uploads/20210505','a62e3f71592a681e48a1c32b895dbb60.jpg','/assets/uploads/20210505','315334a612c7e6683b1a70036df7c212.jpg','2021-05-05 22:10:31');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
