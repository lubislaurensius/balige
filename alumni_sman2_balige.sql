/*
SQLyog Community v12.2.4 (64 bit)
MySQL - 10.1.21-MariaDB : Database - alumni_sman2_balige
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`alumni_sman2_balige` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `alumni_sman2_balige`;

/*Table structure for table `tbl_absensi` */

DROP TABLE IF EXISTS `tbl_absensi`;

CREATE TABLE `tbl_absensi` (
  `id_absensi` int(10) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `absen` char(3) NOT NULL,
  `tanggal` int(2) NOT NULL,
  `bulan` int(2) NOT NULL,
  `tahun` int(4) NOT NULL,
  PRIMARY KEY (`id_absensi`)
) ENGINE=MyISAM AUTO_INCREMENT=691 DEFAULT CHARSET=latin1;

/*Table structure for table `tbl_agenda` */

DROP TABLE IF EXISTS `tbl_agenda`;

CREATE TABLE `tbl_agenda` (
  `id_agenda` int(5) NOT NULL AUTO_INCREMENT,
  `tema_agenda` varchar(200) NOT NULL,
  `isi` text NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `tempat` varchar(150) NOT NULL,
  `jam` varchar(50) NOT NULL,
  `keterangan` tinytext NOT NULL,
  PRIMARY KEY (`id_agenda`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Table structure for table `tbl_album_galeri` */

DROP TABLE IF EXISTS `tbl_album_galeri`;

CREATE TABLE `tbl_album_galeri` (
  `id_album` int(10) NOT NULL AUTO_INCREMENT,
  `nama_album` varchar(100) NOT NULL,
  PRIMARY KEY (`id_album`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Table structure for table `tbl_berita` */

DROP TABLE IF EXISTS `tbl_berita`;

CREATE TABLE `tbl_berita` (
  `id_berita` int(3) NOT NULL AUTO_INCREMENT,
  `judul_berita` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `author` varchar(20) NOT NULL,
  `counter` int(3) NOT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

/*Table structure for table `tbl_data` */

DROP TABLE IF EXISTS `tbl_data`;

CREATE TABLE `tbl_data` (
  `id_data` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `data_id` varchar(10) NOT NULL,
  PRIMARY KEY (`id_data`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

/*Table structure for table `tbl_download` */

DROP TABLE IF EXISTS `tbl_download`;

CREATE TABLE `tbl_download` (
  `id_download` int(5) NOT NULL AUTO_INCREMENT,
  `judul_file` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `author` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_download`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `tbl_galeri` */

DROP TABLE IF EXISTS `tbl_galeri`;

CREATE TABLE `tbl_galeri` (
  `id_foto` int(10) NOT NULL AUTO_INCREMENT,
  `id_album` int(10) NOT NULL,
  `foto_kecil` varchar(100) NOT NULL,
  `foto_besar` varchar(100) NOT NULL,
  PRIMARY KEY (`id_foto`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Table structure for table `tbl_gambar` */

DROP TABLE IF EXISTS `tbl_gambar`;

CREATE TABLE `tbl_gambar` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image_description` varchar(100) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `file_type` varchar(10) NOT NULL,
  `image_size` varchar(20) NOT NULL,
  `uploaded_date` date NOT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Table structure for table `tbl_jawabanpoll` */

DROP TABLE IF EXISTS `tbl_jawabanpoll`;

CREATE TABLE `tbl_jawabanpoll` (
  `id_jawaban_poll` int(3) NOT NULL AUTO_INCREMENT,
  `id_soal_poll` int(3) NOT NULL,
  `jawaban` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `counter` int(5) NOT NULL,
  PRIMARY KEY (`id_jawaban_poll`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `tbl_kelas` */

DROP TABLE IF EXISTS `tbl_kelas`;

CREATE TABLE `tbl_kelas` (
  `id_kelas` int(10) NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(10) NOT NULL,
  `tahun_ajaran` varchar(15) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Table structure for table `tbl_kepegawaian` */

DROP TABLE IF EXISTS `tbl_kepegawaian`;

CREATE TABLE `tbl_kepegawaian` (
  `id_kepegawaian` int(10) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `kelahiran` varchar(150) NOT NULL,
  `matpel` varchar(100) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `status` varchar(50) NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(100) NOT NULL,
  `remember_token` varchar(100) NOT NULL,
  PRIMARY KEY (`id_kepegawaian`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

/*Table structure for table `tbl_menu` */

DROP TABLE IF EXISTS `tbl_menu`;

CREATE TABLE `tbl_menu` (
  `id` char(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `id_parent` char(10) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `tbl_pengumuman` */

DROP TABLE IF EXISTS `tbl_pengumuman`;

CREATE TABLE `tbl_pengumuman` (
  `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT,
  `judul_pengumuman` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `isi` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `penulis` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Table structure for table `tbl_pesan` */

DROP TABLE IF EXISTS `tbl_pesan`;

CREATE TABLE `tbl_pesan` (
  `id_pesan` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `pesan` text NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'N',
  `tgl_posting` datetime NOT NULL,
  PRIMARY KEY (`id_pesan`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `tbl_siswa` */

DROP TABLE IF EXISTS `tbl_siswa`;

CREATE TABLE `tbl_siswa` (
  `id_siswa` int(10) NOT NULL AUTO_INCREMENT,
  `id_kelas` int(10) NOT NULL,
  `nama_siswa` varchar(150) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `alamat_email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=MyISAM AUTO_INCREMENT=568 DEFAULT CHARSET=latin1;

/*Table structure for table `tbl_soalpolling` */

DROP TABLE IF EXISTS `tbl_soalpolling`;

CREATE TABLE `tbl_soalpolling` (
  `id_soal_poll` int(3) NOT NULL AUTO_INCREMENT,
  `soal_poll` text COLLATE latin1_general_ci NOT NULL,
  `status` char(1) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_soal_poll`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
