/*
SQLyog Community v11.24 (32 bit)
MySQL - 5.6.26 : Database - alumni_sman2_balige
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`migration`,`batch`) values ('2015_11_08_203915_create_password_resets_table',1),('2015_11_08_203915_create_tbl_absensi_table',1),('2015_11_08_203915_create_tbl_agenda_table',1),('2015_11_08_203915_create_tbl_album_galeri_table',1),('2015_11_08_203915_create_tbl_alumni_table',1),('2015_11_08_203915_create_tbl_angkatan_table',1),('2015_11_08_203915_create_tbl_berita_table',1),('2015_11_08_203915_create_tbl_data_table',1),('2015_11_08_203915_create_tbl_download_table',1),('2015_11_08_203915_create_tbl_galeri_table',1),('2015_11_08_203915_create_tbl_gambar_table',1),('2015_11_08_203915_create_tbl_jawabanpoll_table',1),('2015_11_08_203915_create_tbl_kepegawaian_table',1),('2015_11_08_203915_create_tbl_menu_table',1),('2015_11_08_203915_create_tbl_pengumuman_table',1),('2015_11_08_203915_create_tbl_pesan_table',1),('2015_11_08_203915_create_tbl_soalpolling_table',1),('2015_11_08_203915_create_uploads_table',1),('2015_11_08_203915_create_users_table',1),('2017_10_25_164042_add_provinsi_list_table',1),('2017_10_25_164217_add_data_perseberan_alumni',1),('2017_11_08_093915_create_tbl_loker_table',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `tbl_absensi` */

DROP TABLE IF EXISTS `tbl_absensi`;

CREATE TABLE `tbl_absensi` (
  `id_absensi` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `absen` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` int(11) NOT NULL,
  `bulan` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_absensi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_absensi` */

/*Table structure for table `tbl_agenda` */

DROP TABLE IF EXISTS `tbl_agenda`;

CREATE TABLE `tbl_agenda` (
  `id_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `tema_agenda` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `isi` text COLLATE utf8_unicode_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `tempat` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `jam` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_agenda`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_agenda` */

insert  into `tbl_agenda`(`id_agenda`,`tema_agenda`,`isi`,`tgl_mulai`,`tgl_selesai`,`tgl_posting`,`tempat`,`jam`,`keterangan`,`created_at`,`updated_at`) values (2,'Peluncuran Website Resmi Alumni SMA Negeri 2 Balige','Peluncuran website resmi dari  SMA Negeri 2 Balige, sebagai media informasi  SMA Negeri 2 Balige.','2017-12-16','2017-12-16','2017-12-16','Balairung SOesilo Soedirman, Gedung Sapta Pesona lt.1','15.30 WIB - 21.00 WIB','Kegiatan ini diawali dengan ibadah natal','2017-11-15 21:53:22','2017-11-15 21:53:22');

/*Table structure for table `tbl_album_galeri` */

DROP TABLE IF EXISTS `tbl_album_galeri`;

CREATE TABLE `tbl_album_galeri` (
  `id_album` int(11) NOT NULL AUTO_INCREMENT,
  `nama_album` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_album`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_album_galeri` */

/*Table structure for table `tbl_alumni` */

DROP TABLE IF EXISTS `tbl_alumni`;

CREATE TABLE `tbl_alumni` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_angkatan` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_provinsi_tinggal` int(11) DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pekerjaan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kontak_alumni` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('lajang','menikah') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_alumni` */

/*Table structure for table `tbl_angkatan` */

DROP TABLE IF EXISTS `tbl_angkatan`;

CREATE TABLE `tbl_angkatan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tahun_lulus` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_angkatan` */

insert  into `tbl_angkatan`(`id`,`tahun_lulus`,`created_at`,`updated_at`) values (1,'1991','2017-12-06 22:36:13','2017-12-07 07:29:38'),(2,'1992','2017-12-06 22:36:13','2017-12-07 07:29:38'),(3,'1993','2017-12-06 22:36:13','2017-12-07 07:29:38'),(4,'1994','2017-12-06 22:36:13','2017-12-07 07:29:38'),(5,'1995','2017-12-06 22:36:13','2017-12-07 07:29:38'),(6,'1996','2017-12-06 22:36:13','2017-12-07 07:29:38'),(7,'1997','2017-12-06 22:36:13','2017-12-07 07:29:38'),(8,'1998','2017-12-06 22:36:13','2017-12-07 07:29:38'),(9,'1999','2017-12-06 22:36:13','2017-12-07 07:29:38'),(10,'2000','2017-12-06 22:36:13','2017-12-07 07:29:38'),(11,'2001','2017-12-06 22:36:13','2017-12-07 07:29:38'),(12,'2002','2017-12-06 22:36:13','2017-12-07 07:29:38'),(13,'2003','2017-12-06 22:36:13','2017-12-07 07:29:38'),(14,'2004','2017-12-06 22:36:13','2017-12-07 07:29:38'),(15,'2005','2017-12-06 22:36:13','2017-12-07 07:29:38'),(16,'2006','2017-12-06 22:36:13','2017-12-07 07:29:38'),(17,'2007','2017-12-06 22:36:13','2017-12-07 07:29:38'),(18,'2008','2017-12-06 22:36:13','2017-12-07 07:29:38'),(19,'2009','2017-12-06 22:36:13','2017-12-07 07:29:38'),(20,'2010','2017-12-06 22:36:13','2017-12-07 07:29:38'),(21,'2011','2017-12-06 22:36:13','2017-12-07 07:29:38'),(22,'2011','2017-12-06 22:36:13','2017-12-07 07:29:38'),(23,'2012','2017-12-06 22:36:13','2017-12-07 07:29:38'),(24,'2013','2017-12-06 22:36:13','2017-12-07 07:29:38'),(25,'2014','2017-12-06 22:36:13','2017-12-07 07:29:38'),(26,'2015','2017-12-06 22:36:13','2017-12-07 07:29:38'),(27,'2016','2017-12-06 22:36:13','2017-12-07 07:29:38'),(28,'2017','2017-12-06 22:36:13','2017-12-07 07:29:38');

/*Table structure for table `tbl_berita` */

DROP TABLE IF EXISTS `tbl_berita`;

CREATE TABLE `tbl_berita` (
  `id_berita` int(11) NOT NULL AUTO_INCREMENT,
  `judul_berita` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isi` text COLLATE utf8_unicode_ci NOT NULL,
  `gambar` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `author` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `counter` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_berita` */

insert  into `tbl_berita`(`id_berita`,`judul_berita`,`isi`,`gambar`,`tanggal`,`waktu`,`author`,`counter`,`created_at`,`updated_at`) values (43,'Natal Ikatan Alumni SMAN 2 Balige Sejabodetabek 2017','Jangan lupa Abang/kakak alumni agar menjadwal kan kehadirannya pada Perayaan Natal dan Reuni Alumni SMA NEGERI 2 Balige Se-jabodetabek pada 16 Desember 2017.\nAda datang juga guru kita Pak Aldon Samosir langsung diterbangkan dari Balige dan Pak Sugeng langsung dari Malang.\nAjak keluarganya juga ya..\nSee u...','natal.jpg','2017-12-07','09:34:43','admin',0,'2017-12-07 09:34:43','2017-12-07 09:34:43');

/*Table structure for table `tbl_data` */

DROP TABLE IF EXISTS `tbl_data`;

CREATE TABLE `tbl_data` (
  `id_data` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `data_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_data`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_data` */

insert  into `tbl_data`(`id_data`,`content`,`data_id`,`created_at`,`updated_at`) values (1,'<table width=\"460\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n  <!--DWLayoutTable-->\n  <tr>\n    <td width=\"80\" height=\"25\" align=\"left\" valign=\"middle\">Ketua </td>\n    <td width=\"15\" align=\"center\" valign=\"middle\">:</td>\n    <td colspan=\"3\" align=\"left\" valign=\"middle\">Andhy Marpaung</td>\n  </tr>\n  <tr>\n    <td height=\"25\" align=\"left\" valign=\"middle\">Wakil Ketua </td>\n    <td align=\"center\" valign=\"middle\">:</td>\n    <td width=\"181\" align=\"left\" valign=\"middle\">-</td>\n  </tr>\r\n<tr>\r\n    <td height=\"25\" align=\"left\" valign=\"middle\">Bendahara </td>\r\n    <td align=\"center\" valign=\"middle\">:</td>\r\n    <td width=\"181\" align=\"left\" valign=\"middle\">-</td>\r\n  </tr>\r\n<tr>\r\n    <td height=\"25\" align=\"left\" valign=\"middle\">Sekretaris</td>\r\n    <td align=\"center\" valign=\"middle\">:</td>\r\n    <td width=\"181\" align=\"left\" valign=\"middle\">-</td>\r\n  </tr>\r\n<tr>\r\n    <td height=\"25\" align=\"left\" valign=\"middle\">Humas </td>\r\n    <td align=\"center\" valign=\"middle\">:</td>\r\n    <td width=\"181\" align=\"left\" valign=\"middle\">-</td>\r\n  </tr>\n<tr>\r\n    <td height=\"25\" align=\"left\" valign=\"middle\">Department A </td>\r\n    <td align=\"center\" valign=\"middle\">:</td>\r\n    <td width=\"181\" align=\"left\" valign=\"middle\">-</td>\r\n  </tr>  \r\n<tr>\r\n    <td height=\"25\" align=\"left\" valign=\"middle\">Department B</td>\r\n    <td align=\"center\" valign=\"middle\">:</td>\r\n    <td width=\"181\" align=\"left\" valign=\"middle\">-</td>\r\n  </tr>\n</table>','1.1',NULL,NULL),(2,'<p>Kami menyambut baik terbitnya website Iluni SMAN 2 Balige se-Jabodetabek. Kami berharap melalui web ini kita menjadi sepaham dan setujuan.<br />\r\n<br />\r\ntext\r\n<br />\r\ntext\r\n<p><br />\r\n<br />\r\nKetua Iluni SMAN 2 Balige se-Jabodetabek<br />\r\n<br />\r\n<br />\r\n<br />\r\n<strong>Andhy Marpaung</strong></p>','1.2',NULL,NULL),(4,'<table align=\"center\" border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<td>Nama Sekolah</td>\n			<td>:</td>\n			<td><strong>&nbsp;SMAN 2 Balige</strong></td>\n		</tr>\n		<tr>\n			<td>Tahun Operasional Sekolah</td>\n			<td>:</td>\n			<td><strong>&nbsp;1991</strong></td>\n		</tr>\n		<tr>\n			<td>Akreditasi BAN</td>\n			<td>:</td>\n			<td><strong>&nbsp;A Tahun 2010 s.d 2015</strong></td>\n		</tr>\n		<tr>\n			<td>Penyelenggaraan Sekolah</td>\n			<td>:</td>\n			<td><strong>&nbsp;Pagi 07.30 s.d 14.00</strong></td>\n		</tr>\n		<tr>\n			<td>NIS</td>\n			<td>:</td>\n			<td><strong>&nbsp;300750</strong></td>\n		</tr>\n		<tr>\n			<td>NSS</td>\n			<td>:</td>\n			<td><strong>&nbsp;301070817075</strong></td>\n		</tr>\n		<tr>\n			<td>Alamat Sekolah</td>\n			<td>:</td>\n			<td><strong>&nbsp;Jalan Kartini Soposurung Balige 22312</strong></td>\n		</tr>\n		<tr>\n			<td>Telepon / Fax</td>\n			<td>:</td>\n			<td><strong>&nbsp;(0632 ) 21385</strong></td>\n		</tr>\n		<tr>\n			<td>Kab./Kota</td>\n			<td>:</td>\n			<td><strong>&nbsp;Toba Samosir</strong></td>\n		</tr>\n		<tr>\n			<td>Propinsi</td>\n			<td>:</td>\n			<td><strong>&nbsp;Sumatera Utara</strong></td>\n		</tr>\n	</tbody>\n</table>\n','2.1',NULL,NULL),(5,'<p>alumni</p>\n','2.2',NULL,NULL),(6,'<p>visi mis</p>\n','2.3',NULL,NULL),(7,'<p>tujuan</p>\n','2.4',NULL,NULL);

/*Table structure for table `tbl_download` */

DROP TABLE IF EXISTS `tbl_download`;

CREATE TABLE `tbl_download` (
  `id_download` int(11) NOT NULL AUTO_INCREMENT,
  `judul_file` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `nama_file` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `author` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_download`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_download` */

/*Table structure for table `tbl_galeri` */

DROP TABLE IF EXISTS `tbl_galeri`;

CREATE TABLE `tbl_galeri` (
  `id_foto` int(11) NOT NULL AUTO_INCREMENT,
  `id_album` int(11) NOT NULL,
  `foto_kecil` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `foto_besar` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_foto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_galeri` */

/*Table structure for table `tbl_gambar` */

DROP TABLE IF EXISTS `tbl_gambar`;

CREATE TABLE `tbl_gambar` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `file_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `image_size` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_gambar` */

/*Table structure for table `tbl_inspiratif` */

DROP TABLE IF EXISTS `tbl_inspiratif`;

CREATE TABLE `tbl_inspiratif` (
  `id_inspiratif` int(11) NOT NULL AUTO_INCREMENT,
  `nama_alumni` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isi` text COLLATE utf8_unicode_ci NOT NULL,
  `gambar` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `author` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `counter` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_inspiratif`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_inspiratif` */

insert  into `tbl_inspiratif`(`id_inspiratif`,`nama_alumni`,`isi`,`gambar`,`tanggal`,`waktu`,`author`,`counter`,`created_at`,`updated_at`) values (1,'Andhy Marpaung','STAFF di KEMENTERIAN PARIWISATA DAN EKONOMI KREATIF','profil.jpg','2017-12-07','09:48:42','admin',0,'2017-12-07 09:48:42','2017-12-07 09:48:42');

/*Table structure for table `tbl_jawabanpoll` */

DROP TABLE IF EXISTS `tbl_jawabanpoll`;

CREATE TABLE `tbl_jawabanpoll` (
  `id_jawaban_poll` int(11) NOT NULL AUTO_INCREMENT,
  `id_soal_poll` int(11) NOT NULL,
  `jawaban` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `counter` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_jawaban_poll`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_jawabanpoll` */

/*Table structure for table `tbl_kepegawaian` */

DROP TABLE IF EXISTS `tbl_kepegawaian`;

CREATE TABLE `tbl_kepegawaian` (
  `id_kepegawaian` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nama_pegawai` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kelahiran` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `matpel` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_kepegawaian`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_kepegawaian` */

/*Table structure for table `tbl_loker` */

DROP TABLE IF EXISTS `tbl_loker`;

CREATE TABLE `tbl_loker` (
  `id_loker` int(11) NOT NULL AUTO_INCREMENT,
  `judul_loker` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isi` text COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gambar` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `author` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `counter` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_loker`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_loker` */

insert  into `tbl_loker`(`id_loker`,`judul_loker`,`isi`,`keterangan`,`gambar`,`tanggal`,`waktu`,`author`,`counter`,`created_at`,`updated_at`) values (1,'Java Programmer','People is the heart of everything we do.\nWe say it often and with good reason that the quality of our prople is our greatest asset and the cornerstone of our ability to serve our clients.\nAt ATI, the career opportunities are many and varied.\nDiscover the possibilities of joining us!','For more information: www.atibusinessgroup.com','loker.jpg','2017-12-07','09:45:08','admin',0,'2017-12-07 09:45:08','2017-12-07 09:45:08');

/*Table structure for table `tbl_menu` */

DROP TABLE IF EXISTS `tbl_menu`;

CREATE TABLE `tbl_menu` (
  `id` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_parent` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_menu` */

insert  into `tbl_menu`(`id`,`title`,`id_parent`,`level`,`created_at`,`updated_at`) values ('1','Pengurus','0',0,NULL,NULL),('1.1','Struktur Organisasi ','1',1,NULL,NULL),('1.2','Ketua Alumni','1',1,NULL,NULL),('1.3','Data Pengurus','1',1,NULL,NULL),('2','Profil','0',0,NULL,NULL),('2.1','Sekolah','2',1,NULL,NULL),('2.2','Alumni','2',1,NULL,NULL),('2.3','Visi dan Misi','2',1,NULL,NULL),('2.4','Tujuan','2',1,NULL,NULL),('3','Alumni','0',0,NULL,NULL),('3.1','List Alumni','3',1,NULL,NULL),('3.2','Alumni Inspiratif ','3',1,NULL,NULL),('3.3','Data Persebaran Alumni ','3',1,NULL,NULL),('4','Info','0',0,NULL,NULL),('4.1','Lowongan Kerja','4',1,NULL,NULL),('5','Indexs Berita','0',10,NULL,NULL),('6','Galeri','0',0,NULL,NULL),('6.1','Foto','6',1,NULL,NULL),('7','List Download','0',10,NULL,NULL);

/*Table structure for table `tbl_pengumuman` */

DROP TABLE IF EXISTS `tbl_pengumuman`;

CREATE TABLE `tbl_pengumuman` (
  `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT,
  `judul_pengumuman` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `isi` text COLLATE utf8_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `penulis` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_pengumuman` */

insert  into `tbl_pengumuman`(`id_pengumuman`,`judul_pengumuman`,`isi`,`tanggal`,`penulis`,`created_at`,`updated_at`) values (4,'Natal Alumni Se-Jabodetabek 2017','Jangan lupa Abang/kakak alumni agar menjadwal kan kehadirannya pada Perayaan Natal dan Reuni Alumni SMA NEGERI 2 Balige Se-jabodetabek pada 16 Desember 2017.','2017-12-16','admin','2017-11-15 21:53:23','2017-11-15 21:53:23');

/*Table structure for table `tbl_persebaran_alumni` */

DROP TABLE IF EXISTS `tbl_persebaran_alumni`;

CREATE TABLE `tbl_persebaran_alumni` (
  `kode` int(11) NOT NULL,
  `provinsi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ibukota` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_persebaran_alumni` */

insert  into `tbl_persebaran_alumni`(`kode`,`provinsi`,`ibukota`,`jumlah`,`created_at`,`updated_at`) values (11,'Nanggroe Aceh Darussalam','Banda Aceh',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(12,'Sumatera Utara','Medan',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(13,'Sumatera Barat','Padang',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(14,'Riau','Pekanbaru',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(15,'Jambi','Jambi',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(16,'Sumatera Selatan','Palembang',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(17,'Bengkulu','Bengkulu',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(18,'Lampung','Bandar Lampung',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(19,'Bangka Belitung','Pangkal Pinang',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(21,'Kepulauan Riau','Tanjung Pinang',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(31,'DKI Jakarta','Jakarta',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(32,'Jawa Barat','Bandung',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(33,'Jawa Tengah','Semarang',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(34,'DI Yogyakarta','Yogyakarta',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(35,'Jawa Timur','Surabaya',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(36,'Banten','Serang',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(51,'Bali','Denpasar',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(52,'Nusa Tenggara Barat','Mataram',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(53,'Nusa Tenggara Timur','Kupang',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(61,'Kalimantan Barat','Pontianak',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(62,'Kalimantan Tengah','Palangkaraya',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(63,'Kalimantan Selatan','Banjarmasin',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(64,'Kalimantan Timur','Samarinda',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(71,'Sulawesi Utara','Manado',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(72,'Sulawesi Tengah','Palu',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(73,'Sulawesi Selatan','Makassar',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(74,'Sulawesi Tenggara','Kendari',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(75,'Gorontalo','Gorontalo',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(76,'Sulawesi Barat','Mamuju',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(81,'Maluku','Ambon',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(82,'Maluku Utara','Sofifi',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(91,'Papua Barat','Manokwari',0,'2017-11-15 21:53:23','2017-11-15 21:53:23'),(94,'Papua','Jayapura',0,'2017-11-15 21:53:23','2017-11-15 21:53:23');

/*Table structure for table `tbl_pesan` */

DROP TABLE IF EXISTS `tbl_pesan`;

CREATE TABLE `tbl_pesan` (
  `id_pesan` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `pesan` text COLLATE utf8_unicode_ci NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `tgl_posting` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pesan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_pesan` */

/*Table structure for table `tbl_provinsi` */

DROP TABLE IF EXISTS `tbl_provinsi`;

CREATE TABLE `tbl_provinsi` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_provinsi` */

insert  into `tbl_provinsi`(`id`,`name`,`created_at`,`updated_at`) values (11,'ACEH','2017-11-15 21:53:23','2017-11-15 21:53:23'),(12,'SUMATERA UTARA','2017-11-15 21:53:23','2017-11-15 21:53:23'),(13,'SUMATERA BARAT','2017-11-15 21:53:23','2017-11-15 21:53:23'),(14,'RIAU','2017-11-15 21:53:23','2017-11-15 21:53:23'),(15,'JAMBI','2017-11-15 21:53:23','2017-11-15 21:53:23'),(16,'SUMATERA SELATAN','2017-11-15 21:53:23','2017-11-15 21:53:23'),(17,'BENGKULU','2017-11-15 21:53:23','2017-11-15 21:53:23'),(18,'LAMPUNG','2017-11-15 21:53:23','2017-11-15 21:53:23'),(19,'KEPULAUAN BANGKA BELITUNG','2017-11-15 21:53:23','2017-11-15 21:53:23'),(21,'KEPULAUAN RIAU','2017-11-15 21:53:23','2017-11-15 21:53:23'),(31,'DKI JAKARTA','2017-11-15 21:53:23','2017-11-15 21:53:23'),(32,'JAWA BARAT','2017-11-15 21:53:23','2017-11-15 21:53:23'),(33,'JAWA TENGAH','2017-11-15 21:53:23','2017-11-15 21:53:23'),(34,'DI YOGYAKARTA','2017-11-15 21:53:23','2017-11-15 21:53:23'),(35,'JAWA TIMUR','2017-11-15 21:53:23','2017-11-15 21:53:23'),(36,'BANTEN','2017-11-15 21:53:23','2017-11-15 21:53:23'),(51,'BALI','2017-11-15 21:53:23','2017-11-15 21:53:23'),(52,'NUSA TENGGARA BARAT','2017-11-15 21:53:23','2017-11-15 21:53:23'),(53,'NUSA TENGGARA TIMUR','2017-11-15 21:53:23','2017-11-15 21:53:23'),(61,'KALIMANTAN BARAT','2017-11-15 21:53:23','2017-11-15 21:53:23'),(62,'KALIMANTAN TENGAH','2017-11-15 21:53:23','2017-11-15 21:53:23'),(63,'KALIMANTAN SELATAN','2017-11-15 21:53:23','2017-11-15 21:53:23'),(64,'KALIMANTAN TIMUR','2017-11-15 21:53:23','2017-11-15 21:53:23'),(65,'KALIMANTAN UTARA','2017-11-15 21:53:23','2017-11-15 21:53:23'),(71,'SULAWESI UTARA','2017-11-15 21:53:23','2017-11-15 21:53:23'),(72,'SULAWESI TENGAH','2017-11-15 21:53:23','2017-11-15 21:53:23'),(73,'SULAWESI SELATAN','2017-11-15 21:53:23','2017-11-15 21:53:23'),(74,'SULAWESI TENGGARA','2017-11-15 21:53:23','2017-11-15 21:53:23'),(75,'GORONTALO','2017-11-15 21:53:23','2017-11-15 21:53:23'),(76,'SULAWESI BARAT','2017-11-15 21:53:23','2017-11-15 21:53:23'),(81,'MALUKU','2017-11-15 21:53:23','2017-11-15 21:53:23'),(82,'MALUKU UTARA','2017-11-15 21:53:23','2017-11-15 21:53:23'),(91,'PAPUA BARAT','2017-11-15 21:53:23','2017-11-15 21:53:23'),(94,'PAPUA','2017-11-15 21:53:23','2017-11-15 21:53:23');

/*Table structure for table `tbl_soalpolling` */

DROP TABLE IF EXISTS `tbl_soalpolling`;

CREATE TABLE `tbl_soalpolling` (
  `id_soal_poll` int(11) NOT NULL AUTO_INCREMENT,
  `soal_poll` text COLLATE utf8_unicode_ci NOT NULL,
  `status` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_soal_poll`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_soalpolling` */

/*Table structure for table `uploads` */

DROP TABLE IF EXISTS `uploads`;

CREATE TABLE `uploads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `uploads` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`email`,`status`,`password`,`remember_token`,`created_at`,`updated_at`) values (1,'admin','admin@example.com','admin','$2y$10$d/k6Zr17HcOr2OMk4Fm2/eOo7k4EfskaBZ8pXH4LIuZLG9R8E39FO',NULL,'2017-11-15 21:53:22','2017-11-15 21:53:22');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
