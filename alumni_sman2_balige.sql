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

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`migration`,`batch`) values 
('2015_11_08_203915_create_password_resets_table',1),
('2015_11_08_203915_create_tbl_absensi_table',1),
('2015_11_08_203915_create_tbl_agenda_table',1),
('2015_11_08_203915_create_tbl_album_galeri_table',1),
('2015_11_08_203915_create_tbl_alumni_table',1),
('2015_11_08_203915_create_tbl_angkatan_table',1),
('2015_11_08_203915_create_tbl_berita_table',1),
('2015_11_08_203915_create_tbl_data_table',1),
('2015_11_08_203915_create_tbl_download_table',1),
('2015_11_08_203915_create_tbl_galeri_table',1),
('2015_11_08_203915_create_tbl_gambar_table',1),
('2015_11_08_203915_create_tbl_jawabanpoll_table',1),
('2015_11_08_203915_create_tbl_kepegawaian_table',1),
('2015_11_08_203915_create_tbl_menu_table',1),
('2015_11_08_203915_create_tbl_pengumuman_table',1),
('2015_11_08_203915_create_tbl_pesan_table',1),
('2015_11_08_203915_create_tbl_soalpolling_table',1),
('2015_11_08_203915_create_uploads_table',1),
('2015_11_08_203915_create_users_table',1),
('2017_10_25_164042_add_provinsi_list_table',1),
('2017_10_25_164217_add_data_perseberan_alumni',1),
('2017_11_08_093915_create_tbl_loker_table',2),
('2017_11_16_081831_create_tbl_inspiratif_table',2);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_agenda` */

insert  into `tbl_agenda`(`id_agenda`,`tema_agenda`,`isi`,`tgl_mulai`,`tgl_selesai`,`tgl_posting`,`tempat`,`jam`,`keterangan`,`created_at`,`updated_at`) values 
(2,'Peluncuran Website Resmi Alumni SMA Negeri 2 Balige','Peluncuran website resmi dari  SMA Negeri 2 Balige, sebagai media informasi  SMA Negeri 2 Balige.','2010-12-23','2010-12-24','2010-12-22','SMA Negeri 1 Wongsorejo','07.30 WIB - 12.00 WIB','-',NULL,NULL),
(3,'Penyembelihan Hewan Kurban Idul Adha 2010','Idul Adha yang biasa disebut lebaran haji atapun lebaran kurban sangat identik dengan penyembelihan hewan kurban. SMA Negeri 1 Wongsorejo tahun ini juga melakukan penyembelihan hewan kurban. Yang rencananya akan dihadiri oleh guru-guru, siswa dan pengurus OSIS.','2010-11-17','2010-11-17','2010-11-15','SMA Negeri 1 Wongsorejo','07.30 WIB - 14.00 WIB','Dihadiri oleh guru-guru, siswa dan pengurus OSIS.s',NULL,NULL),
(7,'Perkemahan Sabtu Minggu','\r\n\r\n			Perkemahan Sabtu Minggu\r\n\r\n			\\n','2015-02-17','2015-02-22','2015-02-17','Sekolah','17:00','\r\n			Perkemahan Sabtu Minggu\r\n\r\n			\\n',NULL,NULL),
(8,'maragenda','agendata','2017-11-08','2017-11-14','2017-11-01','baliho','16:00 WIB','<p>ro hamu</p>\n','2017-11-01 08:57:59','2017-11-01 08:57:59');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_angkatan` */

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_berita` */

insert  into `tbl_berita`(`id_berita`,`judul_berita`,`isi`,`gambar`,`tanggal`,`waktu`,`author`,`counter`,`created_at`,`updated_at`) values 
(1,'Corei3, Corei5, dan Corei7 Keluarga Baru Dari Intel','Intel Core i7 is an Intel brand name for several families of desktop and laptop 64-bit x86-64 processors using the Nehalem microarchitecture that are. Intel Core i7 is an Intel brand name for several families of desktop and laptop 64-bit x86-64 processors using the Nehalem microarchitecture that are. Intel Core i7 is an Intel brand name for several families of desktop and laptop 64-bit x86-64 processors using the Nehalem microarchitecture that are. Intel Core i7 is an Intel brand name for several families of desktop and laptop 64-bit x86-64 processors using the Nehalem microarchitecture that are','core.png','2010-07-24','00:00:00','',9,NULL,NULL),
(2,'iPhone Banyak Menuai Kecaman','iPhone 4 is a GSM cell phone with a high-resolution display, FaceTime video calling, HD video recording, a 5-megapixel camera, and more.iPhone 4 is a GSM cell phone with a high-resolution display, FaceTime video calling, HD video recording, a 5-megapixel camera, and more.iPhone 4 is a GSM cell phone with a high-resolution display, FaceTime video calling, HD video recording, a 5-megapixel camera, and more.iPhone 4 is a GSM cell phone with a high-resolution display, FaceTime video calling, HD video recording, a 5-megapixel camera, and more.','iphone.png','2010-07-24','00:00:00','',8,NULL,NULL),
(3,'Google Chrome Susupi Microsoft','Browser Microsoft, Internet Explorer (IE), bisa mendominasi karena tersedia secara default pada banyak komputer di pasaran. Google Chrome akan menggoyang dengan menyusup di lahan yang sama. Google rupanya sudah bersiap-siap menawarkan Google Chrome secara default pada komputer-komputer baru. Pichai juga menjanjikan Chrome akan keluar dari versi Beta (uji coba) pada awal 2009.\\r\\n\\r\\nJika Google berhasil menyusupkan Chrome dalam lahan yang selama ini jadi \'mainan\' Microsoft, lanskap perang browser akan mengalami perubahan. Saat ini Microsoft masih mendominasi pada kisaran 70 persen lewat Internet Explorer-nya, sedangkan Firefox menguasai sekitar 20 persen. ','25chrome.jpg','2010-07-25','00:00:00','',5,NULL,NULL),
(4,'Google \\\"Panas\\\", Microsoft Beli Yahoo???','Google menolak keras atas tindakan Microsoft yang mau membeli Yahoo. \\\"Ini bukan hanya sekedar transaksi jual beli yang sederhana, suatu perusahaan mengambil perusahaan lainnya. Ini mengenai esensi dari internet yaitu keterbukaan dan inovasi\\\". Komentar David Drummond (Google\'s senior vice president for corporate development and chief legal officer).\\r\\n\\r\\nYahoo adalah salah satu perusahaan terbesar di internet, belakangan ini Yahoo mulai kehabisan akal untuk mengalahkan pendapatan Google. Google memulai karir di Internet melalui search-engine nya, kesukseskan teknologi tersebut membuat Google terus melakukan inovasi dan mengajak para developer untuk memajukan teknologi Internet, sampai akhirnya Yahoo pun membuat halaman khusus untuk para developer. David Drummond juga menuding kalau Microsoft ingin mengambil keuntungan yang tidak pantas dan melakukan tindakan ilegal melalui Internet. Microsoft mengumumkan pada hari jum\'at kemarin (1 februari 2008) penawarannya kepada Yahoo sebesar USD 44.6 Milyar.\\r\\n\\r\\nKomite kongres akan melakukan sesi \'hearing\' pada minggu ini untuk menimbang apakah penawaran Microsoft terhadap Yahoo termasuk implikasi Antitrust.','yahoo.jpg','2010-07-25','00:00:00','',3,NULL,NULL),
(5,'Browser Safari Diklaim Paling Handal di Windows','Dibandingkan browser Internet lainnya, Apple mengklaim browser web Safari buatannya adalah yang paling handal digunakan jika digunkan di atas sistem operasi Windows. Hal tersebut disampaikan CEO Apple Steve Jobs saat mengumumkan versi terbaru Safari yang dapat berjalan di Windows.\\r\\n\\r\\n\\\"Kami kira para pengguna Windows akan benar-benar terkejut saat melihat begitu cepat dan menariknya berselancar di Internet menggunakan Safari,\\\" ujar Steve Jobs di acara Worldwide Developer Conference Apple di San Fransisco, AS, Senin (11/6). Ia mengklaim browser Safari dapat membuka sebuah halaman web dua kali lebih cepat dibandingkan Internet Explorer 7 di Windows dan masih lebih cepat dibandingkan Opera maupun Firefox.\\r\\n\\r\\nKehadiran Safari untuk para pengguna Windows akan semakin menyemarakkan persaingan browser web. Steve Jobs berharap peluncuran ini akan meningkatkan popularitas Safari yang baru mencapai 4,9 persen pangsa pasar browser web. Persaingan browser web saat ini masih didominasi IE dengan pangsa pasar 78 persen menyusul Firefox. Versi tes Safari 3 untuk Windows XP, ','18safari.jpg','2010-07-25','00:00:00','',2,NULL,NULL),
(6,'Digerus Firefox, IE Makin Melempem','Browser Mozilla Firefox sepertinya makin berkibar. Berdasarkan data terbaru dari biro penelitian Net Applications, Firefox menapak naik dengan menguasai 20,78 persen pangsa pasar browser pada bulan November, naik dari angka 19,97 persen di bulan Oktober.\\r\\n\\r\\nDikutip detikINET dari Afterdawn, Selasa (2/1/2/2008), Firefox kemungkinan sukses menggaet user yang sebelumnya mengandalkan browser Internet Explorer (IE) besutan Microsoft. Pasalnya, masih menurut data Net Applications, pangsa pasar IE kini menurun di bawah 70 persen untuk kali pertama sejak tahun 1998. IE sekarang menguasai 69,8 persen pangsa pasar dari sebelumnya 71,3 persen di bulan Oktober.\\r\\n\\r\\nPadahal di masa jayanya di tahun 2003, IE pernah begitu dominan dengan menguasai 95 persen pasaran browser. Penurunan pangsa pasar IE ini disinyalir juga terkait musim liburan di AS di mana banyak perusahaan libur. Padahal browser IE banyak dipakai oleh kalangan perusahaan.\\r\\n\\r\\nAdapun produk browser lainnya menunjukkan tren peningkatan. Apple Safari kini punya pangsa 7,13 persen dan Google Chrome sebesar 0,83 persen dari yang sebelumnya 0,74 persen. Sementara pangsa pasar Opera mengalami penurunan dari yang sebelumnya 0,75 persen menjadi 0,71 persen saja. ','47firefox.jpg','2010-07-25','00:00:00','',2,NULL,NULL),
(7,'Foxconn Kembangkan Motherboard AMD','JAKARTA  - Produsen motherboard Foxconn Technology meluncurkan motherboard terbarunya, seri A88GM. Seri terbaru ini memiliki chipset terkini AMD 880G+SB850, mendukung platform DDR3 dan AM3, serta Phenom II X6 CPU yang hemat daya dan tangguh.\\r\\n\\r\\nMotherboard Foxconn seri A88GM dilengkapi dengan 100 persen kapasitor-kapasitor tunggal yang dirancang oleh perusahaan jepang terkemuka, yaitu Fujitsu. Dengan umur pakai rata-rata 50.000 jam, kapasitor tunggal ini memberikan kestabilan, daya tahan dan umur yang panjang yang sangat penting untuk memenuhi kebutuhan daya prosesor high-end dan komponen lain yang ada saat ini sangat diperuntukkan untuk penggunaan banyak aplikasi dan games.\\r\\n\\r\\nSelain itu, dalam keterangan resminya, Rabu (28/7/2010), dibandingkan dengan pembengkakan dan kebocoran kapasitor yang dapat merusak motherboard secara lengkap, adanya 100 persen kapasitor tunggal membuat tidak adanya komponen cair, sehingga tidak bocor atau dapat meledak. Sebagai tambahan, kemampuan mereka untuk mentolerir kondisi ekstrim dan ketahanan secara keseluruhan membuat mereka lebih cocok untuk lingkungan operasional yang ekstrim.\\r\\n\\r\\nDalam rangka memenuhi kebutuhan konsumen dalam hal kenyamanan dan fitur lengkap multimedia, motherboard A88GM dilengkapi dengan berbagai macam pilihan konektivitas termasuk D-sub, juga digital video interface (DVI) untuk tampilan video digital dan High definition multimedia interface (HDMI) untuk video digital dan output audio guna membantu konsumen dalam memudahkan koneksi kabel. Berkat desain ini, konsumen dapat menikmati video berdefinisi tinggi dan audio pada saat yang sama untuk sepenuhnya memenuhi permintaan HD multimedia generasi berikutnya.\\r\\n\\r\\nFitur lain yang ditemukan pada motherboard Foxconn A88GM adalah 4+1 Power Phases, desain ini menggabungkan kekuatan menjamin pengiriman lebih stabil dan dukungan cepat kepada CPU selama bekerja dalam beban berat atau overclocking. Selain itu, 1 phase untuk Northbridge dan 1 phase untuk memori memungkinkan pengguna untuk melakukan banyak tugas secara mendadak dengan performa yang lebih baik dan mengurangi konsumsi daya. Juga, desain thermalnya memungkinkan pengguna untuk menikmati masa pakai suatu komponen lebih lama melalui suhu yang lebih rendah dan tanpa bising dikombinasikan dengan kinerja thermal tertinggi pada chipset, komponen daya CPU dan PCB. (srn)','foxcon.jpg','2010-07-28','16:13:00','',9,NULL,NULL),
(18,'Agresif, AMD Mulai Kejar Nvidia','Jakarta - Dominasi kubu hijau Nvidia dalam menggelontorkan produk-produk grafisnya, kini mendapat reaksi agresif dari AMD. Si kubu merah dilaporkan telah melampaui pengkapalan produk grafis Nvidia, selama kuartal dua 2010.\\r\\n\\r\\nLaporan yang dikutip detikINET dari Cnet, Jumat (30/7/2010) lalu mengatakan bahwa AMD lebih unggul 51 persen dalam pengkapalan produknya, dibanding Nvidia yang hanya 49 persen. Jika dibanding tahun lalu, jumlah ini begitu signifikan.\\r\\n\\r\\nDi tahun 2009 pada kuartal yang sama, posisi pun terbalik dengan kubu AMD yang hanya menguasai 41 persen pengkapalan produk-produknya, jika dibanding Nvidia. Keagresifan AMD membuat pertumbuhan grafis mereka meningkat 10 persen di tahun ini pada kuartal yang sama.\\r\\n\\r\\nNvidia sendiri sedikit \'kelabakan\' dengan melesetnya prediksi mereka, bahwa sang kompetitor kini terasa lebih agresif.\\r\\n\\r\\nSebagai informasi, AMD telah mengkapalkan setidaknya 16 juta kartu grafis DirectX 11 mereka sejak 9 bulan lalu. Perusahaan tersebut dipandang cukup sukses dengan menghadirkan grafis seri 5800. ','amd-ati.jpg','2010-07-31','01:21:18','',68,NULL,NULL),
(19,'Ponsel Android Bisa Nyalakan Mobil  ','Jakarta - Bertambah satu lagi daya tarik dari smartphone berbasis Android. Dengan sebuah aplikasi khusus, smartphone Android seperti Motorola Droid atau HTC Evo 4G bisa digunakan untuk menyalakan mesin mobil.\\r\\n\\r\\nSeperti diketahui, smartphone Android saat ini memang tengah naik daun dan menarik perhatian khalayak. Sebuah lelucon bahkan mengatakan, menggenggam smartphone Android dipercaya bisa membuat siapapun terlihat lebih menarik. Dengan kemampuan bisa menyalakan mobil, tentunya membuat smartphone Android dan penggunanya nampak lebih keren.\\r\\n\\r\\nLalu bagaimana caranya agar smartphone bisa berfungsi untuk menyalakan mobil? Sangat mudah, pengguna hanya perlu mengunduh aplikasi Android gratis bernama Viper SmartStart dan menginstal beberapa hardware tambahan untuk melengkapi mobil.\\r\\n\\r\\nDikutip detikINET dari TG Daily, Jumat (30/7/2010), jika sudah terpasang, aplikasi ini bisa digunakan untuk menyalakan atau mengontrol mobil secara virtual dari mana saja.\\r\\n\\r\\nTak hanya itu, Viper SmartStart juga memungkinkan pengguna mengunci mobil, membuka bagasi dan mendapat peringatan bahaya jika terjadi sesuatu pada mobil, melalui ponsel mereka. Pengguna bahkan bisa mengontrol beberapa mobil dari satu smartphone.','motorola-droid.jpg','2010-07-31','01:24:40','',8,NULL,NULL),
(20,'Google Masih Mungkin Merilis Nexus Two','Jakarta - Beredar rumor, Google masih mungkin merilis ponsel mereka Nexus Two. Padahal, sebelumnya Eric Schmidt sang CEO Google jelas-jelas mengatakan takkan ada lagi lanjutan Nexus One.\\r\\n\\r\\nRumor sedikit miring tersebut didapat detikINET dari Neowin, Jumat (30/7/2010). Berdasar sumber internal Google, Neowin mengatakan sebenarnya Google tengah membuat suksesor Nexus One yang disebut Nexus Two.\\r\\n\\r\\nWalau tak ada informasi detail mengenai hal ini, sang sumber mengatakan bulan depan ponsel tersebut bakal dirilis, dengan Android 3.0.\\r\\n\\r\\nSementara beberapa saat lalu, Nexus One dipastikan tak akan punya penerus. CEO Google Eric Schmidt mengisyaratkan perusahaannya tak akan memproduksi Nexus Two. Bahkan Nexus One mungkin akan jadi satu-satunya ponsel yang dibuat Google.\\r\\n\\r\\nSchmidt berkilah bahwa produknya tersebut sudah sukses di pasaran dan perusahaannya tak perlu untuk membuat penerusnya.','nexus-one.jpg','2010-07-31','01:26:20','',17,NULL,NULL),
(21,'Pemilik iPad Kaya dan Egois?  ','Jakarta - Sebuah studi yang dilakukan sebuah perusahaan di New Jersey, Amerika Serikat (AS) bernama MyType, menyimpulkan bahwa pemilik iPad merupakan sekelompok kalangan elit yang egois dan kurang ramah. \\r\\n\\r\\nStudi ini memang terdengar lucu dan mengada-mengada. Percaya atau tidak, yang jelas hasil survei MyType tersebut menyatakan pemilik iPad rata-rata enam kali lebih kaya ketimbang mereka yang tidak memiliki komputer tablet tersebut.\\r\\n\\r\\nPernyataan tersebut nampaknya cukup masuk akal mengingat iPad memang tergolong produk premium. Maka tak heran jika ada yang beranggapan, iPad bisa meningkatkan gengsi pemiliknya.\\r\\n\\r\\nSurvei ini juga menemukan bahwa pemilik iPad rata-rata kurang menyukai hal berbau seni dan musik melainkan lebih tertarik dengan video games, elektronik, sains, internet, finansial dan bisnis.\\r\\n\\r\\n\\\"Ciri-ciri tersebut cocok dengan karakter orang-orang egois yang pernah kami teliti sebelumnya. Orang-orang dengan ciri-ciri seperti itu enam kali lebih mungkin membeli iPad daripada orang rata-rata,\\\" kata CEO MyType Tim Koelkebeck seperti dikutip detikINET dari IT Pro Portal, Jumat (30/7/2010).\\r\\n \\r\\nMyType merupakan perusahaan software yang menciptakan aplikasi tes kepribadian  di platform jejaring sosial seperti Facebook. Dalam survei ini, MyType menggunakan tes online berisi 50 pertanyaan yang berdasarkan fakta psikologis, serta teori dan riset modern. ','ipad-egois.jpg','2010-07-31','01:29:30','',14,NULL,NULL),
(22,'Siapa Jawara Open Source Indonesia?  ','Jakarta - Pemerintah, lewat Kementerian Pendayagunaan Aparatur Negara, telah meminta agar instansi pemerintah memanfaatkan piranti lunak Open Source pada 2011. Siapa yang paling jago? Akan terbukti dalam ajang bernama Indonesia Open Source Award (IOSA) 2010.\\r\\n\\r\\nIOSA 2010 akan digelar di Hotel Bidakara, Jakarta, pada Rabu, 28 Juli 2010. Seperti dikutip detikINET dari keterangan yang diterima, Selasa (27/7/2010), ajang tersebut juga akan digunakan untuk memantau kesiapan institusi pemerintahan untuk beralih ke Open Source.\\r\\n\\r\\nAcara tersebut diselenggarakan bersama-sama oleh Kementerian Komunikasi dan Informatika , Kementerian Riset dan Teknologi, Kementerian Pendayagunaan Aparatur Negara dan Reformasi Birokrasi, Asosiasi Open Source Indonesia (AOSI), serta Komunitas Open Source.\\r\\n\\r\\nSelain penganugerahan, acara itu juga akan menampilkan workshop dan seminar. Termasuk di dalamnya, workshop yang terkait industri kreatif seperti pemanfaatan GIMP dan Blender, maupun sistem operasi Android yang sedang naik daun.\\r\\n\\r\\nSedangkan Seminarnya akan membahas topik kreativitas dengan memanfaatkan Open Source. Pembicara seperti Nukman Luthfie, Kak Seto hingga Indra Utoyo akan hadir di seminar tersebut. ','iosa-award.jpg','2010-07-31','01:35:18','',10,NULL,NULL),
(23,'2011, Lembaga Pemerintah Sudah Harus Cicipi Open Source','Jakarta - Pemerintah kian memantapkan langkah untuk bermigrasi ke penggunaan software Open Source. Tahun 2011 dijadikan target titik baliknya. Pada saat itu, seluruh institusi pemerintah diharapkan sudah harus be legal, terutama berbasis Open Source.\\r\\n\\r\\nDemikian dikatakan Kemal Prihatman, Asisten Deputi Urusan Pengembangan dan Pemanfaatan TI Ristek dalam jumpa pers yang berlangsung di gedung BPPT, Jakarta, Kamis (5/6/2009).\\r\\n\\r\\nMenurutnya, target ini merupakan bagian dari isi surat edaran dari Menteri Pemberdayaan Aparatur Negara pada 5 April lalu yang isinya mewajibkan seluruh lembaga pemerintah untuk menggunakan software legal di seluruh jajarannya.\\r\\n\\r\\n\\\"Namun kami dari Ristek dengan alasan efisiensi anggaran jelas menyarankan be legal dengan Open Source. Tak hanya sistem operasinya, tapi juga aplikasi pendukung lainnya,\\\" tegasnya.\\r\\n\\r\\nKemal memprediksi, jumlah komputer yang digunakan seluruh institusi pemerintah di seluruh Indonesia mencapai 800 ribu unit. Nah dari jumlah tersebut, ia tak berani memastikan bahwa seluruhnya sudah legal menggunakan software proprietary. \\\"Mungkin sistem operasinya sudah legal tapi aplikasi yang lainnya belum,\\\" imbuhnya.\\r\\n\\r\\nRistek sendiri bersama dengan Asosiasi Open Source Indonesia (AOSI) pada tahun 2009 ini menargetkan akan membantu setidaknya 10 lembaga pemerintah untuk melakukan migrasi ke Open Source.\\r\\n\\r\\n\\\"Kami lakukan secara bertahap, saat ini kita sedang membantu Depdiknas dan Kementerian PAN,\\\" tandasnya.','linux-tux.jpg','2010-07-31','01:37:28','',44,NULL,NULL),
(24,'Unggah Video di YouTube Kini 15 Menit  ','Jakarta - Mengunggah video di YouTube akan semakin mengasyikkan. YouTube kini memperpanjang surasi video yang diunggah dari sepuluh menit menjadi 15 menit.\\r\\n\\r\\nDalam postingan blognya, Joshua Siegel selaku product manager unggah dan pengaturan video YouTube menyebutkan, perpanjangan durasi video sudah lama menjadi permintaan sebagian besar pengguna YouTube.\\r\\n\\r\\nLangkah ini pun diambil YouTube karena yakin teknologi \'Content ID\' pada situsnya dapat bekerja baik. Content ID merupakan teknologi yang secara otomatis menghapus pelanggaran hak cipta oleh penyaringan secara digital melalui arsip di situs tersebut.\\r\\n\\r\\n\\\"Karena keberhasilan upaya teknologi yang sedang berlangsung, kami bisa meningkatkan batas durasi unggah video,\\\" tulis Siegel seperti dilansir eWeek, dan dikutip detikINET, Jumat (30/7/2010). \\r\\n\\r\\nYouTube, menurut Siegel, terutama mengalamatkan penambahan durasi ini pada kemampuan situsnya untuk melindungi hak cipta dari setiap video yang diunggah. ','youtube.jpg','2010-07-31','01:40:18','',14,NULL,NULL),
(25,'Hadir di Indonesia, Xbox 360 Slim Dibanderol Rp 3,4 Juta  ','Jakarta - Jika di negara asalnya paket Xbox 360 slim beserta Kinect dibanderol pada kisaran harga USD 299 (sekitar Rp 2,7 juta), maka gamer di Indonesia harus merogoh kocek lebih dalam. Pasalnya, harga konsol berserta kendali berbasis kamera tersebut bakal melambung ketika sampainya di Tanah Air.\\r\\n\\r\\nBerdasarkan pengamatan detikINET, Jumat (30/7/2010), di pusat perbelanjaan konsol game di kawasan Mangga 2 Mall, beberapa toko sudah ada yang mulai menjajakan Xbox 360 slim berwarna hitam dengan kapasitas hardisk 250GB.\\r\\n\\r\\n\\\"Di sini kami menjual Xbox 360 Slim seharga Rp 3,4. Itu hanya konsolnya saja belum termasuk Kinect dan game,\\\" ujar Merry, salah satu pemilik toko game yang telah menjual konsol tersebut.\\r\\n\\r\\nMeski dibanderol pada kisaran harga yang lebih mahal dari rilis resmi, namun Mery mengakui konsol teranyar besutan Microsoft tersebut tetap laris dan banyak diminati.\\r\\n\\r\\n\\\"Kami baru mendatangkan 10 unit Xbox 360 slim langsung dari Amerika, dan semuanya sudah habis terjual,\\\" tambah Merry.\\r\\n\\r\\nXbox 360 slim memang merupakan salah satu konsol game yang paling dinanti saat ini. Kabarnya, konsol tersebut memiliki beberapa perbaikan dari seri terdahulu seperti dengan hadirnya Wi-Fi, kapasitas hardisk yang lebih besar, atau pun daya tahan terhadap panas yang diklaim lebih baik.','xbox-slim.jpg','2010-07-31','01:44:10','',5,NULL,NULL),
(26,'Xbox 360 Slim Belum Bisa Mainkan Game Bajakan  ','Jakarta - Selain membenahi beberapa kekurangan pada seri terdahulu, Microsoft juga mengubah Xbox 360 Slim menjadi lebih \'aman\'. Kabarnya, konsol yang dibanderol Rp 3,4 Juta ini belum bisa memainkan game bajakan.\\r\\n\\r\\nHal tersebut diutarakan salah satu penjual konsol game yang menjajakan Xbox 360 Slim, \\\"Kalau dibandingkan sama Xbox 360, selain spesifikanya yang beda Xbox 360 Slim juga belum bisa memainkan game bajakan,\\\" ujarnya.\\r\\n\\r\\nPun demikian, konsol tersebut masih tetap diminati oleh para gamer Tanah Air. Bahkan yang lebih mengherankan, kebanyakan para pembeli Xbox 360 Slim merupakan para gamer yang justru sudah memiliki Xbox 360.\\r\\n\\r\\n\\\"Biasanya yang beli Xbox 360 Slim itu, justru orang yang sudah punya Xbox 360,\\\" ujar Merry, salah satu penjual konsol game di kawasan Mangga 2 Mall, kepada detikINET, Jumat (30/7/2010).\\r\\n\\r\\nMeryy juga memperkirakan hal tersebut dikarenakan para gamer Xbox 360 ingin memainkan game mereka secara online.\\r\\n\\r\\n\\\"Mereka beli biasanya hanya untuk memainkan game secara online, kan kalau online pakai konsol yang sudah di-patch bisa langsung di-banned oleh Microsoft,\\\" tambah penjual yang akrab disapa Ci\' Meryy ini.\\r\\n\\r\\nBisa dibilang, besarnya pengguna Xbox 360 di Indonesia bisa jadi karena konsol tersebut bisa memainkan game bajakan. Tidak seperti PlayStation 3 yang hingga kini masih kebal dari tangan jahil para pembajak. Lalu apakah hal ini bakal menyurutkan penjualan Xbox 360 Slim?\\r\\n\\r\\n\\\"Kalau dibilang bakal sepi pembeli sepertinya tidak, gamer di Indonesia juga banyak loh yang mau membeli game original. Dan kalau masalah memainkan game bajakan di Xbox 360 Slim, sepertinya hanya masalah waktu,\\\" pungkas Merry.\\r\\n','xbox-slim-non-bajak.jpg','2010-07-31','01:49:18','',20,NULL,NULL),
(42,'test 12345678','\r\n\r\n			12345\r\n\r\n			\\n','mulai lapar.jpg','2015-02-25','08:50:11','Gede Suma Wijaya',0,NULL,NULL),
(43,'Natal','Test ini natal berita','agenda.jpg','2017-11-01','08:56:41','admin',0,'2017-11-01 08:56:41','2017-11-01 08:56:41');

/*Table structure for table `tbl_data` */

DROP TABLE IF EXISTS `tbl_data`;

CREATE TABLE `tbl_data` (
  `id_data` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `data_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_data`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_data` */

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
  `author` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `counter` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_inspiratif`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_inspiratif` */

insert  into `tbl_inspiratif`(`id_inspiratif`,`nama_alumni`,`isi`,`gambar`,`tanggal`,`waktu`,`author`,`counter`,`created_at`,`updated_at`) values 
(1,'Jokowi','Awalnya saya coba2 di SMAN 2 Balige','02.jpg','2017-11-16','09:11:25','admin',0,'2017-11-16 09:11:25','2017-11-16 09:11:25');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_loker` */

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

insert  into `tbl_menu`(`id`,`title`,`id_parent`,`level`,`created_at`,`updated_at`) values 
('1','Pengurus','0',0,NULL,NULL),
('1.1','Struktur Organisasi ','1',1,NULL,NULL),
('1.2','Ketua Alumni','1',1,NULL,NULL),
('1.3','Data Pengurus','1',1,NULL,NULL),
('2','Profil','0',0,NULL,NULL),
('2.1','Sekolah','2',1,NULL,NULL),
('2.2','Alumni','2',1,NULL,NULL),
('2.3','Visi dan Misi','2',1,NULL,NULL),
('2.4','Tujuan','2',1,NULL,NULL),
('3','Alumni','0',0,NULL,NULL),
('3.1','List Alumni','3',1,NULL,NULL),
('3.2','Alumni Inspiratif ','3',1,NULL,NULL),
('3.3','Data Persebaran Alumni ','3',1,NULL,NULL),
('4','Info','0',0,NULL,NULL),
('4.1','Lowongan Kerja','4',1,NULL,NULL),
('5','Indexs Berita','0',10,NULL,NULL),
('6','Galeri','0',0,NULL,NULL),
('6.1','Foto','6',1,NULL,NULL),
('7','List Download','0',10,NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tbl_pengumuman` */

insert  into `tbl_pengumuman`(`id_pengumuman`,`judul_pengumuman`,`isi`,`tanggal`,`penulis`,`created_at`,`updated_at`) values 
(4,'Peresmian dan Launching Website Perdana SMA Negeri 1 Wongsorejo','Peresmian dan launching website resmi SMA Negeri 1 Wongsorejo akan diadakan pada hari 23 Desember 2010 pukul 10.00, bertepatan dengan pembagian raport semester ganjil tahun ajaran 2010-2011','2010-12-22','admin',NULL,NULL),
(10,'Tambah Satu','\r\n\r\n			tambah satu\r\n\r\n			\\n','2015-02-24','Drs. Edi Suparnadi',NULL,NULL),
(11,'ASa','\r\n\r\n			ascasssssssssssssssssssss\r\n\r\n			\\n','2017-10-24','Laurensius',NULL,NULL),
(12,'tinting','<p>ini tinting</p>\n','2017-11-01','admin','2017-11-01 08:57:13','2017-11-01 08:57:13');

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

insert  into `tbl_persebaran_alumni`(`kode`,`provinsi`,`ibukota`,`jumlah`,`created_at`,`updated_at`) values 
(11,'Nanggroe Aceh Darussalam','Banda Aceh',0,'2017-10-31 11:20:04','2017-10-31 11:20:04'),
(12,'Sumatera Utara','Medan',0,'2017-10-31 11:20:04','2017-10-31 11:20:04'),
(13,'Sumatera Barat','Padang',0,'2017-10-31 11:20:04','2017-10-31 11:20:04'),
(14,'Riau','Pekanbaru',0,'2017-10-31 11:20:04','2017-10-31 11:20:04'),
(15,'Jambi','Jambi',0,'2017-10-31 11:20:04','2017-10-31 11:20:04'),
(16,'Sumatera Selatan','Palembang',0,'2017-10-31 11:20:04','2017-10-31 11:20:04'),
(17,'Bengkulu','Bengkulu',0,'2017-10-31 11:20:04','2017-10-31 11:20:04'),
(18,'Lampung','Bandar Lampung',0,'2017-10-31 11:20:04','2017-10-31 11:20:04'),
(19,'Bangka Belitung','Pangkal Pinang',0,'2017-10-31 11:20:04','2017-10-31 11:20:04'),
(21,'Kepulauan Riau','Tanjung Pinang',0,'2017-10-31 11:20:04','2017-10-31 11:20:04'),
(31,'DKI Jakarta','Jakarta',0,'2017-10-31 11:20:04','2017-10-31 11:20:04'),
(32,'Jawa Barat','Bandung',0,'2017-10-31 11:20:04','2017-10-31 11:20:04'),
(33,'Jawa Tengah','Semarang',0,'2017-10-31 11:20:04','2017-10-31 11:20:04'),
(34,'DI Yogyakarta','Yogyakarta',0,'2017-10-31 11:20:04','2017-10-31 11:20:04'),
(35,'Jawa Timur','Surabaya',0,'2017-10-31 11:20:04','2017-10-31 11:20:04'),
(36,'Banten','Serang',0,'2017-10-31 11:20:05','2017-10-31 11:20:05'),
(51,'Bali','Denpasar',0,'2017-10-31 11:20:05','2017-10-31 11:20:05'),
(52,'Nusa Tenggara Barat','Mataram',0,'2017-10-31 11:20:05','2017-10-31 11:20:05'),
(53,'Nusa Tenggara Timur','Kupang',0,'2017-10-31 11:20:05','2017-10-31 11:20:05'),
(61,'Kalimantan Barat','Pontianak',0,'2017-10-31 11:20:05','2017-10-31 11:20:05'),
(62,'Kalimantan Tengah','Palangkaraya',0,'2017-10-31 11:20:05','2017-10-31 11:20:05'),
(63,'Kalimantan Selatan','Banjarmasin',0,'2017-10-31 11:20:05','2017-10-31 11:20:05'),
(64,'Kalimantan Timur','Samarinda',0,'2017-10-31 11:20:05','2017-10-31 11:20:05'),
(71,'Sulawesi Utara','Manado',0,'2017-10-31 11:20:05','2017-10-31 11:20:05'),
(72,'Sulawesi Tengah','Palu',0,'2017-10-31 11:20:05','2017-10-31 11:20:05'),
(73,'Sulawesi Selatan','Makassar',0,'2017-10-31 11:20:05','2017-10-31 11:20:05'),
(74,'Sulawesi Tenggara','Kendari',0,'2017-10-31 11:20:05','2017-10-31 11:20:05'),
(75,'Gorontalo','Gorontalo',0,'2017-10-31 11:20:05','2017-10-31 11:20:05'),
(76,'Sulawesi Barat','Mamuju',0,'2017-10-31 11:20:05','2017-10-31 11:20:05'),
(81,'Maluku','Ambon',0,'2017-10-31 11:20:05','2017-10-31 11:20:05'),
(82,'Maluku Utara','Sofifi',0,'2017-10-31 11:20:05','2017-10-31 11:20:05'),
(91,'Papua Barat','Manokwari',0,'2017-10-31 11:20:05','2017-10-31 11:20:05'),
(94,'Papua','Jayapura',0,'2017-10-31 11:20:05','2017-10-31 11:20:05');

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

insert  into `tbl_provinsi`(`id`,`name`,`created_at`,`updated_at`) values 
(11,'ACEH','2017-10-31 11:20:05','2017-10-31 11:20:05'),
(12,'SUMATERA UTARA','2017-10-31 11:20:05','2017-10-31 11:20:05'),
(13,'SUMATERA BARAT','2017-10-31 11:20:05','2017-10-31 11:20:05'),
(14,'RIAU','2017-10-31 11:20:05','2017-10-31 11:20:05'),
(15,'JAMBI','2017-10-31 11:20:05','2017-10-31 11:20:05'),
(16,'SUMATERA SELATAN','2017-10-31 11:20:05','2017-10-31 11:20:05'),
(17,'BENGKULU','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(18,'LAMPUNG','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(19,'KEPULAUAN BANGKA BELITUNG','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(21,'KEPULAUAN RIAU','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(31,'DKI JAKARTA','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(32,'JAWA BARAT','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(33,'JAWA TENGAH','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(34,'DI YOGYAKARTA','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(35,'JAWA TIMUR','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(36,'BANTEN','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(51,'BALI','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(52,'NUSA TENGGARA BARAT','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(53,'NUSA TENGGARA TIMUR','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(61,'KALIMANTAN BARAT','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(62,'KALIMANTAN TENGAH','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(63,'KALIMANTAN SELATAN','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(64,'KALIMANTAN TIMUR','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(65,'KALIMANTAN UTARA','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(71,'SULAWESI UTARA','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(72,'SULAWESI TENGAH','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(73,'SULAWESI SELATAN','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(74,'SULAWESI TENGGARA','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(75,'GORONTALO','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(76,'SULAWESI BARAT','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(81,'MALUKU','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(82,'MALUKU UTARA','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(91,'PAPUA BARAT','2017-10-31 11:20:06','2017-10-31 11:20:06'),
(94,'PAPUA','2017-10-31 11:20:06','2017-10-31 11:20:06');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`email`,`status`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'admin','admin@example.com','admin','$2y$10$c9UTJ1WlfsUJPEhjfISRte2IzkMV/AJMOGZmrNorUo/jFhtPLYnza',NULL,'2017-10-31 11:20:02','2017-10-31 11:20:02');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
