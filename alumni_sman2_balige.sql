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

/*Data for the table `tbl_absensi` */

insert  into `tbl_absensi`(`id_absensi`,`id_siswa`,`id_kelas`,`absen`,`tanggal`,`bulan`,`tahun`) values 
(1,312,9,'H',25,1,2011),
(2,313,9,'H',25,1,2011),
(3,314,9,'H',25,1,2011),
(4,315,9,'H',25,1,2011),
(5,316,9,'H',25,1,2011),
(6,317,9,'H',25,1,2011),
(7,318,9,'H',25,1,2011),
(8,319,9,'H',25,1,2011),
(9,320,9,'H',25,1,2011),
(10,321,9,'H',25,1,2011),
(11,322,9,'H',25,1,2011),
(12,323,9,'H',25,1,2011),
(13,324,9,'H',25,1,2011),
(14,325,9,'H',25,1,2011),
(15,326,9,'H',25,1,2011),
(16,327,9,'H',25,1,2011),
(17,328,9,'H',25,1,2011),
(18,329,9,'H',25,1,2011),
(19,330,9,'H',25,1,2011),
(20,331,9,'H',25,1,2011),
(21,332,9,'H',25,1,2011),
(22,333,9,'H',25,1,2011),
(23,334,9,'H',25,1,2011),
(24,335,9,'H',25,1,2011),
(25,336,9,'H',25,1,2011),
(26,337,9,'H',25,1,2011),
(27,338,9,'H',25,1,2011),
(28,339,9,'H',25,1,2011),
(29,340,9,'H',25,1,2011),
(30,341,9,'H',25,1,2011),
(31,342,9,'H',25,1,2011),
(32,343,9,'H',25,1,2011),
(33,344,9,'H',25,1,2011),
(34,345,9,'H',25,1,2011),
(35,346,9,'H',25,1,2011),
(36,347,9,'H',25,1,2011),
(37,348,9,'H',25,1,2011),
(38,349,9,'H',25,1,2011),
(39,350,9,'H',25,1,2011),
(40,312,9,'I',22,2,2011),
(41,313,9,'A',22,2,2011),
(42,314,9,'B',22,2,2011),
(43,315,9,'B',22,2,2011),
(44,316,9,'B',22,2,2011),
(45,317,9,'H',22,2,2011),
(46,318,9,'H',22,2,2011),
(47,319,9,'H',22,2,2011),
(48,320,9,'H',22,2,2011),
(49,321,9,'H',22,2,2011),
(50,322,9,'H',22,2,2011),
(51,323,9,'H',22,2,2011),
(52,324,9,'H',22,2,2011),
(53,325,9,'H',22,2,2011),
(54,326,9,'H',22,2,2011),
(55,327,9,'H',22,2,2011),
(56,328,9,'H',22,2,2011),
(57,329,9,'H',22,2,2011),
(58,330,9,'H',22,2,2011),
(59,331,9,'H',22,2,2011),
(60,332,9,'H',22,2,2011),
(61,333,9,'H',22,2,2011),
(62,334,9,'H',22,2,2011),
(63,335,9,'H',22,2,2011),
(64,336,9,'B',22,2,2011),
(65,337,9,'B',22,2,2011),
(66,338,9,'B',22,2,2011),
(67,339,9,'B',22,2,2011),
(68,340,9,'B',22,2,2011),
(69,341,9,'B',22,2,2011),
(70,342,9,'B',22,2,2011),
(71,343,9,'A',22,2,2011),
(72,344,9,'A',22,2,2011),
(73,345,9,'A',22,2,2011),
(74,346,9,'A',22,2,2011),
(75,347,9,'A',22,2,2011),
(76,348,9,'A',22,2,2011),
(77,349,9,'A',22,2,2011),
(78,350,9,'A',22,2,2011),
(79,1,1,'H',23,2,2011),
(80,2,1,'B',23,2,2011),
(81,3,1,'B',23,2,2011),
(82,4,1,'A',23,2,2011),
(83,5,1,'H',23,2,2011),
(84,6,1,'H',23,2,2011),
(85,7,1,'H',23,2,2011),
(86,8,1,'H',23,2,2011),
(87,9,1,'B',23,2,2011),
(88,10,1,'B',23,2,2011),
(89,11,1,'B',23,2,2011),
(90,12,1,'B',23,2,2011),
(91,13,1,'B',23,2,2011),
(92,14,1,'B',23,2,2011),
(93,15,1,'H',23,2,2011),
(94,16,1,'H',23,2,2011),
(95,17,1,'H',23,2,2011),
(96,18,1,'H',23,2,2011),
(97,19,1,'H',23,2,2011),
(98,20,1,'H',23,2,2011),
(99,21,1,'H',23,2,2011),
(100,22,1,'H',23,2,2011),
(101,23,1,'I',23,2,2011),
(102,24,1,'I',23,2,2011),
(103,25,1,'S',23,2,2011),
(104,26,1,'S',23,2,2011),
(105,27,1,'S',23,2,2011),
(106,28,1,'H',23,2,2011),
(107,29,1,'H',23,2,2011),
(108,30,1,'H',23,2,2011),
(109,31,1,'H',23,2,2011),
(110,32,1,'H',23,2,2011),
(111,33,1,'H',23,2,2011),
(112,34,1,'H',23,2,2011),
(113,35,1,'B',23,2,2011),
(114,36,1,'B',23,2,2011),
(115,37,1,'A',23,2,2011),
(116,38,1,'A',23,2,2011),
(117,39,1,'B',23,2,2011),
(118,40,1,'B',23,2,2011),
(119,41,1,'H',23,2,2011),
(120,42,1,'H',23,2,2011),
(121,312,9,'H',23,2,2011),
(122,313,9,'B',23,2,2011),
(123,314,9,'B',23,2,2011),
(124,315,9,'A',23,2,2011),
(125,316,9,'A',23,2,2011),
(126,317,9,'B',23,2,2011),
(127,318,9,'B',23,2,2011),
(128,319,9,'B',23,2,2011),
(129,320,9,'H',23,2,2011),
(130,321,9,'H',23,2,2011),
(131,322,9,'H',23,2,2011),
(132,323,9,'B',23,2,2011),
(133,324,9,'A',23,2,2011),
(134,325,9,'I',23,2,2011),
(135,326,9,'S',23,2,2011),
(136,327,9,'H',23,2,2011),
(137,328,9,'H',23,2,2011),
(138,329,9,'H',23,2,2011),
(139,330,9,'H',23,2,2011),
(140,331,9,'B',23,2,2011),
(141,332,9,'B',23,2,2011),
(142,333,9,'A',23,2,2011),
(143,334,9,'A',23,2,2011),
(144,335,9,'A',23,2,2011),
(145,336,9,'I',23,2,2011),
(146,337,9,'H',23,2,2011),
(147,338,9,'H',23,2,2011),
(148,339,9,'H',23,2,2011),
(149,340,9,'H',23,2,2011),
(150,341,9,'B',23,2,2011),
(151,342,9,'B',23,2,2011),
(152,343,9,'A',23,2,2011),
(153,344,9,'H',23,2,2011),
(154,345,9,'H',23,2,2011),
(155,346,9,'H',23,2,2011),
(156,347,9,'H',23,2,2011),
(157,348,9,'H',23,2,2011),
(158,349,9,'H',23,2,2011),
(159,350,9,'H',23,2,2011),
(237,350,9,'SK',24,2,2011),
(236,349,9,'D',24,2,2011),
(235,348,9,'H',24,2,2011),
(234,347,9,'B',24,2,2011),
(233,346,9,'A',24,2,2011),
(232,345,9,'I',24,2,2011),
(231,344,9,'S',24,2,2011),
(230,343,9,'S',24,2,2011),
(229,342,9,'S',24,2,2011),
(228,341,9,'S',24,2,2011),
(227,340,9,'I',24,2,2011),
(226,339,9,'I',24,2,2011),
(225,338,9,'I',24,2,2011),
(224,337,9,'I',24,2,2011),
(223,336,9,'A',24,2,2011),
(222,335,9,'A',24,2,2011),
(221,334,9,'A',24,2,2011),
(220,333,9,'A',24,2,2011),
(219,332,9,'A',24,2,2011),
(218,331,9,'A',24,2,2011),
(217,330,9,'B',24,2,2011),
(216,329,9,'B',24,2,2011),
(215,328,9,'B',24,2,2011),
(214,327,9,'B',24,2,2011),
(213,326,9,'B',24,2,2011),
(212,325,9,'B',24,2,2011),
(211,324,9,'H',24,2,2011),
(210,323,9,'H',24,2,2011),
(209,322,9,'H',24,2,2011),
(208,321,9,'H',24,2,2011),
(207,320,9,'H',24,2,2011),
(206,319,9,'D',24,2,2011),
(205,318,9,'D',24,2,2011),
(204,317,9,'D',24,2,2011),
(203,316,9,'D',24,2,2011),
(202,315,9,'SK',24,2,2011),
(201,314,9,'SK',24,2,2011),
(200,313,9,'SK',24,2,2011),
(199,312,9,'SK',24,2,2011),
(238,1,1,'SK',26,2,2011),
(239,2,1,'SK',26,2,2011),
(240,3,1,'SK',26,2,2011),
(241,4,1,'SK',26,2,2011),
(242,5,1,'SK',26,2,2011),
(243,6,1,'SK',26,2,2011),
(244,7,1,'SK',26,2,2011),
(245,8,1,'SK',26,2,2011),
(246,9,1,'SK',26,2,2011),
(247,10,1,'SK',26,2,2011),
(248,11,1,'SK',26,2,2011),
(249,12,1,'SK',26,2,2011),
(250,13,1,'SK',26,2,2011),
(251,14,1,'SK',26,2,2011),
(252,15,1,'SK',26,2,2011),
(253,16,1,'SK',26,2,2011),
(254,17,1,'SK',26,2,2011),
(255,18,1,'SK',26,2,2011),
(256,19,1,'SK',26,2,2011),
(257,20,1,'SK',26,2,2011),
(258,21,1,'SK',26,2,2011),
(259,22,1,'SK',26,2,2011),
(260,23,1,'SK',26,2,2011),
(261,24,1,'SK',26,2,2011),
(262,25,1,'SK',26,2,2011),
(263,26,1,'SK',26,2,2011),
(264,27,1,'SK',26,2,2011),
(265,28,1,'SK',26,2,2011),
(266,29,1,'SK',26,2,2011),
(267,30,1,'SK',26,2,2011),
(268,31,1,'SK',26,2,2011),
(269,32,1,'SK',26,2,2011),
(270,33,1,'SK',26,2,2011),
(271,34,1,'SK',26,2,2011),
(272,35,1,'SK',26,2,2011),
(273,36,1,'SK',26,2,2011),
(274,37,1,'SK',26,2,2011),
(275,38,1,'SK',26,2,2011),
(276,39,1,'SK',26,2,2011),
(277,40,1,'SK',26,2,2011),
(278,41,1,'SK',26,2,2011),
(279,42,1,'SK',26,2,2011),
(280,168,5,'SK',26,2,2011),
(281,169,5,'D',26,2,2011),
(282,170,5,'H',26,2,2011),
(283,171,5,'B',26,2,2011),
(284,172,5,'A',26,2,2011),
(285,173,5,'I',26,2,2011),
(286,174,5,'S',26,2,2011),
(287,175,5,'I',26,2,2011),
(288,176,5,'A',26,2,2011),
(289,177,5,'B',26,2,2011),
(290,178,5,'H',26,2,2011),
(291,179,5,'D',26,2,2011),
(292,180,5,'SK',26,2,2011),
(293,181,5,'D',26,2,2011),
(294,182,5,'H',26,2,2011),
(295,183,5,'B',26,2,2011),
(296,184,5,'A',26,2,2011),
(297,185,5,'I',26,2,2011),
(298,186,5,'S',26,2,2011),
(299,187,5,'I',26,2,2011),
(300,188,5,'A',26,2,2011),
(301,189,5,'B',26,2,2011),
(302,190,5,'H',26,2,2011),
(303,191,5,'D',26,2,2011),
(304,192,5,'SK',26,2,2011),
(305,193,5,'D',26,2,2011),
(306,194,5,'H',26,2,2011),
(307,195,5,'B',26,2,2011),
(308,196,5,'A',26,2,2011),
(309,197,5,'I',26,2,2011),
(310,198,5,'S',26,2,2011),
(311,199,5,'I',26,2,2011),
(312,200,5,'A',26,2,2011),
(313,201,5,'B',26,2,2011),
(314,202,5,'H',26,2,2011),
(315,203,5,'D',26,2,2011),
(316,204,5,'SK',26,2,2011),
(317,205,5,'D',26,2,2011),
(318,206,5,'H',26,2,2011),
(319,207,5,'B',26,2,2011),
(320,208,5,'A',26,2,2011),
(321,244,7,'SK',28,2,2011),
(322,245,7,'H',28,2,2011),
(323,246,7,'H',28,2,2011),
(324,247,7,'SK',28,2,2011),
(325,248,7,'SK',28,2,2011),
(326,249,7,'SK',28,2,2011),
(327,250,7,'SK',28,2,2011),
(328,251,7,'SK',28,2,2011),
(329,252,7,'SK',28,2,2011),
(330,253,7,'SK',28,2,2011),
(331,254,7,'SK',28,2,2011),
(332,255,7,'SK',28,2,2011),
(333,256,7,'SK',28,2,2011),
(334,257,7,'SK',28,2,2011),
(335,258,7,'SK',28,2,2011),
(336,259,7,'SK',28,2,2011),
(337,260,7,'SK',28,2,2011),
(338,261,7,'SK',28,2,2011),
(339,262,7,'SK',28,2,2011),
(340,263,7,'SK',28,2,2011),
(341,264,7,'SK',28,2,2011),
(342,265,7,'SK',28,2,2011),
(343,266,7,'SK',28,2,2011),
(344,267,7,'SK',28,2,2011),
(345,268,7,'SK',28,2,2011),
(346,269,7,'SK',28,2,2011),
(347,270,7,'SK',28,2,2011),
(348,271,7,'SK',28,2,2011),
(349,272,7,'SK',28,2,2011),
(350,273,7,'SK',28,2,2011),
(351,274,7,'SK',28,2,2011),
(352,275,7,'SK',28,2,2011),
(353,276,7,'SK',28,2,2011),
(354,277,7,'SK',28,2,2011),
(355,278,7,'SK',28,2,2011),
(356,520,16,'H',1,3,2011),
(357,521,16,'B',1,3,2011),
(358,522,16,'D',1,3,2011),
(359,523,16,'SK',1,3,2011),
(360,524,16,'SK',1,3,2011),
(361,525,16,'SK',1,3,2011),
(362,526,16,'SK',1,3,2011),
(363,527,16,'SK',1,3,2011),
(364,528,16,'SK',1,3,2011),
(365,529,16,'SK',1,3,2011),
(366,530,16,'SK',1,3,2011),
(367,531,16,'SK',1,3,2011),
(368,532,16,'SK',1,3,2011),
(369,533,16,'SK',1,3,2011),
(370,534,16,'SK',1,3,2011),
(371,535,16,'SK',1,3,2011),
(372,536,16,'SK',1,3,2011),
(373,537,16,'SK',1,3,2011),
(374,538,16,'SK',1,3,2011),
(375,539,16,'SK',1,3,2011),
(376,540,16,'SK',1,3,2011),
(377,541,16,'SK',1,3,2011),
(378,542,16,'SK',1,3,2011),
(379,543,16,'SK',1,3,2011),
(380,544,16,'SK',1,3,2011),
(381,545,16,'SK',1,3,2011),
(382,546,16,'SK',1,3,2011),
(383,547,16,'SK',1,3,2011),
(384,548,16,'SK',1,3,2011),
(385,549,16,'SK',1,3,2011),
(386,550,16,'SK',1,3,2011),
(387,551,16,'SK',1,3,2011),
(388,552,16,'SK',1,3,2011),
(389,553,16,'SK',1,3,2011),
(390,554,16,'SK',1,3,2011),
(391,555,16,'SK',1,3,2011),
(392,556,16,'SK',1,3,2011),
(393,557,16,'SK',1,3,2011),
(567,3,1,'H',21,2,2015),
(566,2,1,'H',21,2,2015),
(565,1,1,'H',21,2,2015),
(564,42,1,'S',20,2,2015),
(563,41,1,'H',20,2,2015),
(562,40,1,'H',20,2,2015),
(561,39,1,'H',20,2,2015),
(560,38,1,'H',20,2,2015),
(559,37,1,'H',20,2,2015),
(558,36,1,'H',20,2,2015),
(557,35,1,'H',20,2,2015),
(556,34,1,'H',20,2,2015),
(555,33,1,'H',20,2,2015),
(554,32,1,'H',20,2,2015),
(553,31,1,'H',20,2,2015),
(552,30,1,'H',20,2,2015),
(551,29,1,'H',20,2,2015),
(550,28,1,'H',20,2,2015),
(549,27,1,'H',20,2,2015),
(548,26,1,'H',20,2,2015),
(547,25,1,'H',20,2,2015),
(546,24,1,'H',20,2,2015),
(545,23,1,'H',20,2,2015),
(544,22,1,'H',20,2,2015),
(543,21,1,'H',20,2,2015),
(542,20,1,'H',20,2,2015),
(541,19,1,'H',20,2,2015),
(540,18,1,'H',20,2,2015),
(539,17,1,'H',20,2,2015),
(538,16,1,'H',20,2,2015),
(537,15,1,'H',20,2,2015),
(536,14,1,'H',20,2,2015),
(535,13,1,'H',20,2,2015),
(534,12,1,'H',20,2,2015),
(533,11,1,'H',20,2,2015),
(532,10,1,'H',20,2,2015),
(531,9,1,'H',20,2,2015),
(530,8,1,'H',20,2,2015),
(529,7,1,'H',20,2,2015),
(528,6,1,'H',20,2,2015),
(527,5,1,'H',20,2,2015),
(526,4,1,'H',20,2,2015),
(525,3,1,'H',20,2,2015),
(524,2,1,'H',20,2,2015),
(607,1,1,'I',24,2,2015),
(568,4,1,'H',21,2,2015),
(569,5,1,'H',21,2,2015),
(570,6,1,'H',21,2,2015),
(571,7,1,'H',21,2,2015),
(572,8,1,'H',21,2,2015),
(573,9,1,'H',21,2,2015),
(574,10,1,'H',21,2,2015),
(575,11,1,'H',21,2,2015),
(576,12,1,'H',21,2,2015),
(577,13,1,'H',21,2,2015),
(578,14,1,'H',21,2,2015),
(579,15,1,'H',21,2,2015),
(580,16,1,'H',21,2,2015),
(581,17,1,'H',21,2,2015),
(582,18,1,'H',21,2,2015),
(583,19,1,'H',21,2,2015),
(584,20,1,'H',21,2,2015),
(585,21,1,'H',21,2,2015),
(586,22,1,'H',21,2,2015),
(587,23,1,'H',21,2,2015),
(588,24,1,'H',21,2,2015),
(589,25,1,'H',21,2,2015),
(590,26,1,'H',21,2,2015),
(591,27,1,'H',21,2,2015),
(592,28,1,'H',21,2,2015),
(593,29,1,'H',21,2,2015),
(594,30,1,'H',21,2,2015),
(595,31,1,'H',21,2,2015),
(596,32,1,'H',21,2,2015),
(597,33,1,'H',21,2,2015),
(598,34,1,'H',21,2,2015),
(599,35,1,'H',21,2,2015),
(600,36,1,'H',21,2,2015),
(601,37,1,'H',21,2,2015),
(602,38,1,'H',21,2,2015),
(603,39,1,'H',21,2,2015),
(604,40,1,'H',21,2,2015),
(605,41,1,'H',21,2,2015),
(606,42,1,'H',21,2,2015),
(608,2,1,'H',24,2,2015),
(609,3,1,'H',24,2,2015),
(610,4,1,'H',24,2,2015),
(611,5,1,'H',24,2,2015),
(612,6,1,'H',24,2,2015),
(613,7,1,'H',24,2,2015),
(614,8,1,'H',24,2,2015),
(615,9,1,'H',24,2,2015),
(616,10,1,'H',24,2,2015),
(617,11,1,'H',24,2,2015),
(618,12,1,'H',24,2,2015),
(619,13,1,'H',24,2,2015),
(620,14,1,'H',24,2,2015),
(621,15,1,'H',24,2,2015),
(622,16,1,'H',24,2,2015),
(623,17,1,'H',24,2,2015),
(624,18,1,'H',24,2,2015),
(625,19,1,'H',24,2,2015),
(626,20,1,'H',24,2,2015),
(627,21,1,'H',24,2,2015),
(628,22,1,'H',24,2,2015),
(629,23,1,'H',24,2,2015),
(630,24,1,'H',24,2,2015),
(631,25,1,'H',24,2,2015),
(632,26,1,'H',24,2,2015),
(633,27,1,'H',24,2,2015),
(634,28,1,'H',24,2,2015),
(635,29,1,'H',24,2,2015),
(636,30,1,'H',24,2,2015),
(637,31,1,'H',24,2,2015),
(638,32,1,'H',24,2,2015),
(639,33,1,'H',24,2,2015),
(640,34,1,'H',24,2,2015),
(641,35,1,'H',24,2,2015),
(642,36,1,'H',24,2,2015),
(643,37,1,'H',24,2,2015),
(644,38,1,'H',24,2,2015),
(645,39,1,'H',24,2,2015),
(646,40,1,'H',24,2,2015),
(647,41,1,'H',24,2,2015),
(648,42,1,'H',24,2,2015),
(649,1,1,'I',25,2,2015),
(650,2,1,'H',25,2,2015),
(651,3,1,'H',25,2,2015),
(652,4,1,'H',25,2,2015),
(653,5,1,'H',25,2,2015),
(654,6,1,'H',25,2,2015),
(655,7,1,'H',25,2,2015),
(656,8,1,'H',25,2,2015),
(657,9,1,'H',25,2,2015),
(658,10,1,'H',25,2,2015),
(659,11,1,'H',25,2,2015),
(660,12,1,'H',25,2,2015),
(661,13,1,'H',25,2,2015),
(662,14,1,'H',25,2,2015),
(663,15,1,'H',25,2,2015),
(664,16,1,'H',25,2,2015),
(665,17,1,'H',25,2,2015),
(666,18,1,'H',25,2,2015),
(667,19,1,'H',25,2,2015),
(668,20,1,'H',25,2,2015),
(669,21,1,'H',25,2,2015),
(670,22,1,'H',25,2,2015),
(671,23,1,'H',25,2,2015),
(672,24,1,'H',25,2,2015),
(673,25,1,'H',25,2,2015),
(674,26,1,'H',25,2,2015),
(675,27,1,'H',25,2,2015),
(676,28,1,'H',25,2,2015),
(677,29,1,'H',25,2,2015),
(678,30,1,'H',25,2,2015),
(679,31,1,'H',25,2,2015),
(680,32,1,'H',25,2,2015),
(681,33,1,'H',25,2,2015),
(682,34,1,'H',25,2,2015),
(683,35,1,'H',25,2,2015),
(684,36,1,'H',25,2,2015),
(685,37,1,'H',25,2,2015),
(686,38,1,'H',25,2,2015),
(687,39,1,'H',25,2,2015),
(688,40,1,'H',25,2,2015),
(689,41,1,'H',25,2,2015),
(690,42,1,'H',25,2,2015);

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

/*Data for the table `tbl_agenda` */

insert  into `tbl_agenda`(`id_agenda`,`tema_agenda`,`isi`,`tgl_mulai`,`tgl_selesai`,`tgl_posting`,`tempat`,`jam`,`keterangan`) values 
(2,'Peluncuran Website Resmi Alumni SMA Negeri 2 Balige','Peluncuran website resmi dari  SMA Negeri 2 Balige, sebagai media informasi  SMA Negeri 2 Balige.','2010-12-23','2010-12-24','2010-12-22','SMA Negeri 1 Wongsorejo','07.30 WIB - 12.00 WIB','-'),
(3,'Penyembelihan Hewan Kurban Idul Adha 2010','Idul Adha yang biasa disebut lebaran haji atapun lebaran kurban sangat identik dengan penyembelihan hewan kurban. SMA Negeri 1 Wongsorejo tahun ini juga melakukan penyembelihan hewan kurban. Yang rencananya akan dihadiri oleh guru-guru, siswa dan pengurus OSIS.','2010-11-17','2010-11-17','2010-11-15','SMA Negeri 1 Wongsorejo','07.30 WIB - 14.00 WIB','Dihadiri oleh guru-guru, siswa dan pengurus OSIS.s'),
(7,'Perkemahan Sabtu Minggu','<p>Perkemahan Sabtu Minggu</p>\n','2015-02-17','2015-02-22','2015-02-17','Sekolah','17:00','<p>Perkemahan Sabtu Minggu</p>\n');

/*Table structure for table `tbl_album_galeri` */

DROP TABLE IF EXISTS `tbl_album_galeri`;

CREATE TABLE `tbl_album_galeri` (
  `id_album` int(10) NOT NULL AUTO_INCREMENT,
  `nama_album` varchar(100) NOT NULL,
  PRIMARY KEY (`id_album`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_album_galeri` */

insert  into `tbl_album_galeri`(`id_album`,`nama_album`) values 
(9,'TEST'),
(5,'Pemilu Pengurus Alumni  SMA Negeri 2 Balige');

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

/*Data for the table `tbl_berita` */

insert  into `tbl_berita`(`id_berita`,`judul_berita`,`isi`,`gambar`,`tanggal`,`waktu`,`author`,`counter`) values 
(1,'Corei3, Corei5, dan Corei7 Keluarga Baru Dari Intel','Intel Core i7 is an Intel brand name for several families of desktop and laptop 64-bit x86-64 processors using the Nehalem microarchitecture that are. Intel Core i7 is an Intel brand name for several families of desktop and laptop 64-bit x86-64 processors using the Nehalem microarchitecture that are. Intel Core i7 is an Intel brand name for several families of desktop and laptop 64-bit x86-64 processors using the Nehalem microarchitecture that are. Intel Core i7 is an Intel brand name for several families of desktop and laptop 64-bit x86-64 processors using the Nehalem microarchitecture that are','core.png','2010-07-24','00:00:00','',9),
(2,'iPhone Banyak Menuai Kecaman','iPhone 4 is a GSM cell phone with a high-resolution display, FaceTime video calling, HD video recording, a 5-megapixel camera, and more.iPhone 4 is a GSM cell phone with a high-resolution display, FaceTime video calling, HD video recording, a 5-megapixel camera, and more.iPhone 4 is a GSM cell phone with a high-resolution display, FaceTime video calling, HD video recording, a 5-megapixel camera, and more.iPhone 4 is a GSM cell phone with a high-resolution display, FaceTime video calling, HD video recording, a 5-megapixel camera, and more.','iphone.png','2010-07-24','00:00:00','',8),
(3,'Google Chrome Susupi Microsoft','Browser Microsoft, Internet Explorer (IE), bisa mendominasi karena tersedia secara default pada banyak komputer di pasaran. Google Chrome akan menggoyang dengan menyusup di lahan yang sama. Google rupanya sudah bersiap-siap menawarkan Google Chrome secara default pada komputer-komputer baru. Pichai juga menjanjikan Chrome akan keluar dari versi Beta (uji coba) pada awal 2009.\r\n\r\nJika Google berhasil menyusupkan Chrome dalam lahan yang selama ini jadi \'mainan\' Microsoft, lanskap perang browser akan mengalami perubahan. Saat ini Microsoft masih mendominasi pada kisaran 70 persen lewat Internet Explorer-nya, sedangkan Firefox menguasai sekitar 20 persen. ','25chrome.jpg','2010-07-25','00:00:00','',5),
(4,'Google \"Panas\", Microsoft Beli Yahoo???','Google menolak keras atas tindakan Microsoft yang mau membeli Yahoo. \"Ini bukan hanya sekedar transaksi jual beli yang sederhana, suatu perusahaan mengambil perusahaan lainnya. Ini mengenai esensi dari internet yaitu keterbukaan dan inovasi\". Komentar David Drummond (Google\'s senior vice president for corporate development and chief legal officer).\r\n\r\nYahoo adalah salah satu perusahaan terbesar di internet, belakangan ini Yahoo mulai kehabisan akal untuk mengalahkan pendapatan Google. Google memulai karir di Internet melalui search-engine nya, kesukseskan teknologi tersebut membuat Google terus melakukan inovasi dan mengajak para developer untuk memajukan teknologi Internet, sampai akhirnya Yahoo pun membuat halaman khusus untuk para developer. David Drummond juga menuding kalau Microsoft ingin mengambil keuntungan yang tidak pantas dan melakukan tindakan ilegal melalui Internet. Microsoft mengumumkan pada hari jum\'at kemarin (1 februari 2008) penawarannya kepada Yahoo sebesar USD 44.6 Milyar.\r\n\r\nKomite kongres akan melakukan sesi \'hearing\' pada minggu ini untuk menimbang apakah penawaran Microsoft terhadap Yahoo termasuk implikasi Antitrust.','yahoo.jpg','2010-07-25','00:00:00','',3),
(5,'Browser Safari Diklaim Paling Handal di Windows','Dibandingkan browser Internet lainnya, Apple mengklaim browser web Safari buatannya adalah yang paling handal digunakan jika digunkan di atas sistem operasi Windows. Hal tersebut disampaikan CEO Apple Steve Jobs saat mengumumkan versi terbaru Safari yang dapat berjalan di Windows.\r\n\r\n\"Kami kira para pengguna Windows akan benar-benar terkejut saat melihat begitu cepat dan menariknya berselancar di Internet menggunakan Safari,\" ujar Steve Jobs di acara Worldwide Developer Conference Apple di San Fransisco, AS, Senin (11/6). Ia mengklaim browser Safari dapat membuka sebuah halaman web dua kali lebih cepat dibandingkan Internet Explorer 7 di Windows dan masih lebih cepat dibandingkan Opera maupun Firefox.\r\n\r\nKehadiran Safari untuk para pengguna Windows akan semakin menyemarakkan persaingan browser web. Steve Jobs berharap peluncuran ini akan meningkatkan popularitas Safari yang baru mencapai 4,9 persen pangsa pasar browser web. Persaingan browser web saat ini masih didominasi IE dengan pangsa pasar 78 persen menyusul Firefox. Versi tes Safari 3 untuk Windows XP, ','18safari.jpg','2010-07-25','00:00:00','',2),
(6,'Digerus Firefox, IE Makin Melempem','Browser Mozilla Firefox sepertinya makin berkibar. Berdasarkan data terbaru dari biro penelitian Net Applications, Firefox menapak naik dengan menguasai 20,78 persen pangsa pasar browser pada bulan November, naik dari angka 19,97 persen di bulan Oktober.\r\n\r\nDikutip detikINET dari Afterdawn, Selasa (2/1/2/2008), Firefox kemungkinan sukses menggaet user yang sebelumnya mengandalkan browser Internet Explorer (IE) besutan Microsoft. Pasalnya, masih menurut data Net Applications, pangsa pasar IE kini menurun di bawah 70 persen untuk kali pertama sejak tahun 1998. IE sekarang menguasai 69,8 persen pangsa pasar dari sebelumnya 71,3 persen di bulan Oktober.\r\n\r\nPadahal di masa jayanya di tahun 2003, IE pernah begitu dominan dengan menguasai 95 persen pasaran browser. Penurunan pangsa pasar IE ini disinyalir juga terkait musim liburan di AS di mana banyak perusahaan libur. Padahal browser IE banyak dipakai oleh kalangan perusahaan.\r\n\r\nAdapun produk browser lainnya menunjukkan tren peningkatan. Apple Safari kini punya pangsa 7,13 persen dan Google Chrome sebesar 0,83 persen dari yang sebelumnya 0,74 persen. Sementara pangsa pasar Opera mengalami penurunan dari yang sebelumnya 0,75 persen menjadi 0,71 persen saja. ','47firefox.jpg','2010-07-25','00:00:00','',2),
(7,'Foxconn Kembangkan Motherboard AMD','JAKARTA  - Produsen motherboard Foxconn Technology meluncurkan motherboard terbarunya, seri A88GM. Seri terbaru ini memiliki chipset terkini AMD 880G+SB850, mendukung platform DDR3 dan AM3, serta Phenom II X6 CPU yang hemat daya dan tangguh.\r\n\r\nMotherboard Foxconn seri A88GM dilengkapi dengan 100 persen kapasitor-kapasitor tunggal yang dirancang oleh perusahaan jepang terkemuka, yaitu Fujitsu. Dengan umur pakai rata-rata 50.000 jam, kapasitor tunggal ini memberikan kestabilan, daya tahan dan umur yang panjang yang sangat penting untuk memenuhi kebutuhan daya prosesor high-end dan komponen lain yang ada saat ini sangat diperuntukkan untuk penggunaan banyak aplikasi dan games.\r\n\r\nSelain itu, dalam keterangan resminya, Rabu (28/7/2010), dibandingkan dengan pembengkakan dan kebocoran kapasitor yang dapat merusak motherboard secara lengkap, adanya 100 persen kapasitor tunggal membuat tidak adanya komponen cair, sehingga tidak bocor atau dapat meledak. Sebagai tambahan, kemampuan mereka untuk mentolerir kondisi ekstrim dan ketahanan secara keseluruhan membuat mereka lebih cocok untuk lingkungan operasional yang ekstrim.\r\n\r\nDalam rangka memenuhi kebutuhan konsumen dalam hal kenyamanan dan fitur lengkap multimedia, motherboard A88GM dilengkapi dengan berbagai macam pilihan konektivitas termasuk D-sub, juga digital video interface (DVI) untuk tampilan video digital dan High definition multimedia interface (HDMI) untuk video digital dan output audio guna membantu konsumen dalam memudahkan koneksi kabel. Berkat desain ini, konsumen dapat menikmati video berdefinisi tinggi dan audio pada saat yang sama untuk sepenuhnya memenuhi permintaan HD multimedia generasi berikutnya.\r\n\r\nFitur lain yang ditemukan pada motherboard Foxconn A88GM adalah 4+1 Power Phases, desain ini menggabungkan kekuatan menjamin pengiriman lebih stabil dan dukungan cepat kepada CPU selama bekerja dalam beban berat atau overclocking. Selain itu, 1 phase untuk Northbridge dan 1 phase untuk memori memungkinkan pengguna untuk melakukan banyak tugas secara mendadak dengan performa yang lebih baik dan mengurangi konsumsi daya. Juga, desain thermalnya memungkinkan pengguna untuk menikmati masa pakai suatu komponen lebih lama melalui suhu yang lebih rendah dan tanpa bising dikombinasikan dengan kinerja thermal tertinggi pada chipset, komponen daya CPU dan PCB. (srn)','foxcon.jpg','2010-07-28','16:13:00','',9),
(18,'Agresif, AMD Mulai Kejar Nvidia','Jakarta - Dominasi kubu hijau Nvidia dalam menggelontorkan produk-produk grafisnya, kini mendapat reaksi agresif dari AMD. Si kubu merah dilaporkan telah melampaui pengkapalan produk grafis Nvidia, selama kuartal dua 2010.\r\n\r\nLaporan yang dikutip detikINET dari Cnet, Jumat (30/7/2010) lalu mengatakan bahwa AMD lebih unggul 51 persen dalam pengkapalan produknya, dibanding Nvidia yang hanya 49 persen. Jika dibanding tahun lalu, jumlah ini begitu signifikan.\r\n\r\nDi tahun 2009 pada kuartal yang sama, posisi pun terbalik dengan kubu AMD yang hanya menguasai 41 persen pengkapalan produk-produknya, jika dibanding Nvidia. Keagresifan AMD membuat pertumbuhan grafis mereka meningkat 10 persen di tahun ini pada kuartal yang sama.\r\n\r\nNvidia sendiri sedikit \'kelabakan\' dengan melesetnya prediksi mereka, bahwa sang kompetitor kini terasa lebih agresif.\r\n\r\nSebagai informasi, AMD telah mengkapalkan setidaknya 16 juta kartu grafis DirectX 11 mereka sejak 9 bulan lalu. Perusahaan tersebut dipandang cukup sukses dengan menghadirkan grafis seri 5800. ','amd-ati.jpg','2010-07-31','01:21:18','',68),
(19,'Ponsel Android Bisa Nyalakan Mobil  ','Jakarta - Bertambah satu lagi daya tarik dari smartphone berbasis Android. Dengan sebuah aplikasi khusus, smartphone Android seperti Motorola Droid atau HTC Evo 4G bisa digunakan untuk menyalakan mesin mobil.\r\n\r\nSeperti diketahui, smartphone Android saat ini memang tengah naik daun dan menarik perhatian khalayak. Sebuah lelucon bahkan mengatakan, menggenggam smartphone Android dipercaya bisa membuat siapapun terlihat lebih menarik. Dengan kemampuan bisa menyalakan mobil, tentunya membuat smartphone Android dan penggunanya nampak lebih keren.\r\n\r\nLalu bagaimana caranya agar smartphone bisa berfungsi untuk menyalakan mobil? Sangat mudah, pengguna hanya perlu mengunduh aplikasi Android gratis bernama Viper SmartStart dan menginstal beberapa hardware tambahan untuk melengkapi mobil.\r\n\r\nDikutip detikINET dari TG Daily, Jumat (30/7/2010), jika sudah terpasang, aplikasi ini bisa digunakan untuk menyalakan atau mengontrol mobil secara virtual dari mana saja.\r\n\r\nTak hanya itu, Viper SmartStart juga memungkinkan pengguna mengunci mobil, membuka bagasi dan mendapat peringatan bahaya jika terjadi sesuatu pada mobil, melalui ponsel mereka. Pengguna bahkan bisa mengontrol beberapa mobil dari satu smartphone.','motorola-droid.jpg','2010-07-31','01:24:40','',8),
(20,'Google Masih Mungkin Merilis Nexus Two','Jakarta - Beredar rumor, Google masih mungkin merilis ponsel mereka Nexus Two. Padahal, sebelumnya Eric Schmidt sang CEO Google jelas-jelas mengatakan takkan ada lagi lanjutan Nexus One.\r\n\r\nRumor sedikit miring tersebut didapat detikINET dari Neowin, Jumat (30/7/2010). Berdasar sumber internal Google, Neowin mengatakan sebenarnya Google tengah membuat suksesor Nexus One yang disebut Nexus Two.\r\n\r\nWalau tak ada informasi detail mengenai hal ini, sang sumber mengatakan bulan depan ponsel tersebut bakal dirilis, dengan Android 3.0.\r\n\r\nSementara beberapa saat lalu, Nexus One dipastikan tak akan punya penerus. CEO Google Eric Schmidt mengisyaratkan perusahaannya tak akan memproduksi Nexus Two. Bahkan Nexus One mungkin akan jadi satu-satunya ponsel yang dibuat Google.\r\n\r\nSchmidt berkilah bahwa produknya tersebut sudah sukses di pasaran dan perusahaannya tak perlu untuk membuat penerusnya.','nexus-one.jpg','2010-07-31','01:26:20','',17),
(21,'Pemilik iPad Kaya dan Egois?  ','Jakarta - Sebuah studi yang dilakukan sebuah perusahaan di New Jersey, Amerika Serikat (AS) bernama MyType, menyimpulkan bahwa pemilik iPad merupakan sekelompok kalangan elit yang egois dan kurang ramah. \r\n\r\nStudi ini memang terdengar lucu dan mengada-mengada. Percaya atau tidak, yang jelas hasil survei MyType tersebut menyatakan pemilik iPad rata-rata enam kali lebih kaya ketimbang mereka yang tidak memiliki komputer tablet tersebut.\r\n\r\nPernyataan tersebut nampaknya cukup masuk akal mengingat iPad memang tergolong produk premium. Maka tak heran jika ada yang beranggapan, iPad bisa meningkatkan gengsi pemiliknya.\r\n\r\nSurvei ini juga menemukan bahwa pemilik iPad rata-rata kurang menyukai hal berbau seni dan musik melainkan lebih tertarik dengan video games, elektronik, sains, internet, finansial dan bisnis.\r\n\r\n\"Ciri-ciri tersebut cocok dengan karakter orang-orang egois yang pernah kami teliti sebelumnya. Orang-orang dengan ciri-ciri seperti itu enam kali lebih mungkin membeli iPad daripada orang rata-rata,\" kata CEO MyType Tim Koelkebeck seperti dikutip detikINET dari IT Pro Portal, Jumat (30/7/2010).\r\n \r\nMyType merupakan perusahaan software yang menciptakan aplikasi tes kepribadian  di platform jejaring sosial seperti Facebook. Dalam survei ini, MyType menggunakan tes online berisi 50 pertanyaan yang berdasarkan fakta psikologis, serta teori dan riset modern. ','ipad-egois.jpg','2010-07-31','01:29:30','',14),
(22,'Siapa Jawara Open Source Indonesia?  ','Jakarta - Pemerintah, lewat Kementerian Pendayagunaan Aparatur Negara, telah meminta agar instansi pemerintah memanfaatkan piranti lunak Open Source pada 2011. Siapa yang paling jago? Akan terbukti dalam ajang bernama Indonesia Open Source Award (IOSA) 2010.\r\n\r\nIOSA 2010 akan digelar di Hotel Bidakara, Jakarta, pada Rabu, 28 Juli 2010. Seperti dikutip detikINET dari keterangan yang diterima, Selasa (27/7/2010), ajang tersebut juga akan digunakan untuk memantau kesiapan institusi pemerintahan untuk beralih ke Open Source.\r\n\r\nAcara tersebut diselenggarakan bersama-sama oleh Kementerian Komunikasi dan Informatika , Kementerian Riset dan Teknologi, Kementerian Pendayagunaan Aparatur Negara dan Reformasi Birokrasi, Asosiasi Open Source Indonesia (AOSI), serta Komunitas Open Source.\r\n\r\nSelain penganugerahan, acara itu juga akan menampilkan workshop dan seminar. Termasuk di dalamnya, workshop yang terkait industri kreatif seperti pemanfaatan GIMP dan Blender, maupun sistem operasi Android yang sedang naik daun.\r\n\r\nSedangkan Seminarnya akan membahas topik kreativitas dengan memanfaatkan Open Source. Pembicara seperti Nukman Luthfie, Kak Seto hingga Indra Utoyo akan hadir di seminar tersebut. ','iosa-award.jpg','2010-07-31','01:35:18','',10),
(23,'2011, Lembaga Pemerintah Sudah Harus Cicipi Open Source','Jakarta - Pemerintah kian memantapkan langkah untuk bermigrasi ke penggunaan software Open Source. Tahun 2011 dijadikan target titik baliknya. Pada saat itu, seluruh institusi pemerintah diharapkan sudah harus be legal, terutama berbasis Open Source.\r\n\r\nDemikian dikatakan Kemal Prihatman, Asisten Deputi Urusan Pengembangan dan Pemanfaatan TI Ristek dalam jumpa pers yang berlangsung di gedung BPPT, Jakarta, Kamis (5/6/2009).\r\n\r\nMenurutnya, target ini merupakan bagian dari isi surat edaran dari Menteri Pemberdayaan Aparatur Negara pada 5 April lalu yang isinya mewajibkan seluruh lembaga pemerintah untuk menggunakan software legal di seluruh jajarannya.\r\n\r\n\"Namun kami dari Ristek dengan alasan efisiensi anggaran jelas menyarankan be legal dengan Open Source. Tak hanya sistem operasinya, tapi juga aplikasi pendukung lainnya,\" tegasnya.\r\n\r\nKemal memprediksi, jumlah komputer yang digunakan seluruh institusi pemerintah di seluruh Indonesia mencapai 800 ribu unit. Nah dari jumlah tersebut, ia tak berani memastikan bahwa seluruhnya sudah legal menggunakan software proprietary. \"Mungkin sistem operasinya sudah legal tapi aplikasi yang lainnya belum,\" imbuhnya.\r\n\r\nRistek sendiri bersama dengan Asosiasi Open Source Indonesia (AOSI) pada tahun 2009 ini menargetkan akan membantu setidaknya 10 lembaga pemerintah untuk melakukan migrasi ke Open Source.\r\n\r\n\"Kami lakukan secara bertahap, saat ini kita sedang membantu Depdiknas dan Kementerian PAN,\" tandasnya.','linux-tux.jpg','2010-07-31','01:37:28','',44),
(24,'Unggah Video di YouTube Kini 15 Menit  ','Jakarta - Mengunggah video di YouTube akan semakin mengasyikkan. YouTube kini memperpanjang surasi video yang diunggah dari sepuluh menit menjadi 15 menit.\r\n\r\nDalam postingan blognya, Joshua Siegel selaku product manager unggah dan pengaturan video YouTube menyebutkan, perpanjangan durasi video sudah lama menjadi permintaan sebagian besar pengguna YouTube.\r\n\r\nLangkah ini pun diambil YouTube karena yakin teknologi \'Content ID\' pada situsnya dapat bekerja baik. Content ID merupakan teknologi yang secara otomatis menghapus pelanggaran hak cipta oleh penyaringan secara digital melalui arsip di situs tersebut.\r\n\r\n\"Karena keberhasilan upaya teknologi yang sedang berlangsung, kami bisa meningkatkan batas durasi unggah video,\" tulis Siegel seperti dilansir eWeek, dan dikutip detikINET, Jumat (30/7/2010). \r\n\r\nYouTube, menurut Siegel, terutama mengalamatkan penambahan durasi ini pada kemampuan situsnya untuk melindungi hak cipta dari setiap video yang diunggah. ','youtube.jpg','2010-07-31','01:40:18','',14),
(25,'Hadir di Indonesia, Xbox 360 Slim Dibanderol Rp 3,4 Juta  ','Jakarta - Jika di negara asalnya paket Xbox 360 slim beserta Kinect dibanderol pada kisaran harga USD 299 (sekitar Rp 2,7 juta), maka gamer di Indonesia harus merogoh kocek lebih dalam. Pasalnya, harga konsol berserta kendali berbasis kamera tersebut bakal melambung ketika sampainya di Tanah Air.\r\n\r\nBerdasarkan pengamatan detikINET, Jumat (30/7/2010), di pusat perbelanjaan konsol game di kawasan Mangga 2 Mall, beberapa toko sudah ada yang mulai menjajakan Xbox 360 slim berwarna hitam dengan kapasitas hardisk 250GB.\r\n\r\n\"Di sini kami menjual Xbox 360 Slim seharga Rp 3,4. Itu hanya konsolnya saja belum termasuk Kinect dan game,\" ujar Merry, salah satu pemilik toko game yang telah menjual konsol tersebut.\r\n\r\nMeski dibanderol pada kisaran harga yang lebih mahal dari rilis resmi, namun Mery mengakui konsol teranyar besutan Microsoft tersebut tetap laris dan banyak diminati.\r\n\r\n\"Kami baru mendatangkan 10 unit Xbox 360 slim langsung dari Amerika, dan semuanya sudah habis terjual,\" tambah Merry.\r\n\r\nXbox 360 slim memang merupakan salah satu konsol game yang paling dinanti saat ini. Kabarnya, konsol tersebut memiliki beberapa perbaikan dari seri terdahulu seperti dengan hadirnya Wi-Fi, kapasitas hardisk yang lebih besar, atau pun daya tahan terhadap panas yang diklaim lebih baik.','xbox-slim.jpg','2010-07-31','01:44:10','',5),
(26,'Xbox 360 Slim Belum Bisa Mainkan Game Bajakan  ','Jakarta - Selain membenahi beberapa kekurangan pada seri terdahulu, Microsoft juga mengubah Xbox 360 Slim menjadi lebih \'aman\'. Kabarnya, konsol yang dibanderol Rp 3,4 Juta ini belum bisa memainkan game bajakan.\r\n\r\nHal tersebut diutarakan salah satu penjual konsol game yang menjajakan Xbox 360 Slim, \"Kalau dibandingkan sama Xbox 360, selain spesifikanya yang beda Xbox 360 Slim juga belum bisa memainkan game bajakan,\" ujarnya.\r\n\r\nPun demikian, konsol tersebut masih tetap diminati oleh para gamer Tanah Air. Bahkan yang lebih mengherankan, kebanyakan para pembeli Xbox 360 Slim merupakan para gamer yang justru sudah memiliki Xbox 360.\r\n\r\n\"Biasanya yang beli Xbox 360 Slim itu, justru orang yang sudah punya Xbox 360,\" ujar Merry, salah satu penjual konsol game di kawasan Mangga 2 Mall, kepada detikINET, Jumat (30/7/2010).\r\n\r\nMeryy juga memperkirakan hal tersebut dikarenakan para gamer Xbox 360 ingin memainkan game mereka secara online.\r\n\r\n\"Mereka beli biasanya hanya untuk memainkan game secara online, kan kalau online pakai konsol yang sudah di-patch bisa langsung di-banned oleh Microsoft,\" tambah penjual yang akrab disapa Ci\' Meryy ini.\r\n\r\nBisa dibilang, besarnya pengguna Xbox 360 di Indonesia bisa jadi karena konsol tersebut bisa memainkan game bajakan. Tidak seperti PlayStation 3 yang hingga kini masih kebal dari tangan jahil para pembajak. Lalu apakah hal ini bakal menyurutkan penjualan Xbox 360 Slim?\r\n\r\n\"Kalau dibilang bakal sepi pembeli sepertinya tidak, gamer di Indonesia juga banyak loh yang mau membeli game original. Dan kalau masalah memainkan game bajakan di Xbox 360 Slim, sepertinya hanya masalah waktu,\" pungkas Merry.\r\n','xbox-slim-non-bajak.jpg','2010-07-31','01:49:18','',20),
(42,'test 12345678','<p>12345</p>\n','mulai lapar.jpg','2015-02-25','08:50:11','Gede Suma Wijaya',0);

/*Table structure for table `tbl_data` */

DROP TABLE IF EXISTS `tbl_data`;

CREATE TABLE `tbl_data` (
  `id_data` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `data_id` varchar(10) NOT NULL,
  PRIMARY KEY (`id_data`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_data` */

insert  into `tbl_data`(`id_data`,`content`,`data_id`) values 
(1,'<p><strong>Visi Sekolah</strong><br />\n<br />\n....<br />\n<br />\n<strong>Misi Sekolah</strong><br />\n<br />\n...</p>\n','1.2'),
(2,'<p><strong>Tujuan</strong><br />\n<br />\n.....</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n','1.4'),
(4,'<table width=\"460\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n  <!--DWLayoutTable-->\r\n  <tr>\r\n    <td width=\"80\" height=\"25\" align=\"left\" valign=\"middle\">Ketua </td>\r\n    <td width=\"15\" align=\"center\" valign=\"middle\">:</td>\r\n    <td colspan=\"3\" align=\"left\" valign=\"middle\">Drs. Istu Handono</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"25\" align=\"left\" valign=\"middle\">Wakil Ketua </td>\r\n    <td align=\"center\" valign=\"middle\">:</td>\r\n    <td width=\"181\" align=\"left\" valign=\"middle\">Sukardi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\r\n  <td colspan=\"2\" valign=\"middle\">(Wakasek Kesiswaan)</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"25\" align=\"left\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td align=\"center\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td align=\"left\" valign=\"middle\">Dra. Ni Wayan  Sedariasih </td>\r\n    <td colspan=\"2\" valign=\"middle\">(Wakasek Kurikulum)</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"25\" align=\"left\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td align=\"center\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td align=\"left\" valign=\"middle\">Drs. Kuntohadi </td>\r\n    <td colspan=\"2\" valign=\"middle\">(Wakasek Humas)</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"25\" align=\"left\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td align=\"center\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td align=\"left\" valign=\"middle\">Drs. Priyo Suyitno</td>\r\n    <td colspan=\"2\" valign=\"middle\">(Wakasek Sapra)</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"25\" align=\"left\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td align=\"center\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td align=\"left\" valign=\"middle\">Drs. Katiman&nbsp;&nbsp; </td>\r\n    <td colspan=\"2\" valign=\"middle\">(Pembina OSIS)</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"25\" align=\"left\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td align=\"center\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td align=\"left\" valign=\"middle\">Sri Purwanti</td>\r\n    <td colspan=\"2\" valign=\"middle\">(Ass. Kurikulum</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"25\" align=\"left\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td align=\"center\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td align=\"left\" valign=\"middle\">Drs. Ahmad&nbsp;&nbsp;&nbsp; </td>\r\n    <td colspan=\"2\" valign=\"middle\">(Ass. Sarpra)</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"25\" align=\"left\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td align=\"center\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td align=\"left\" valign=\"middle\">Drs. Edy Purdiyanto</td>\r\n    <td colspan=\"2\" valign=\"middle\">(Ass. Humas)</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"25\" align=\"left\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td align=\"center\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td align=\"left\" valign=\"middle\">Drs. Edy Suparnadi</td>\r\n    <td colspan=\"2\" valign=\"middle\">(Litbang)</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"25\" align=\"left\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td align=\"center\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td align=\"left\" valign=\"middle\">Nandi Suhaili&nbsp; </td>\r\n    <td colspan=\"2\" valign=\"middle\">(Bendahara OSIS)</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"25\" align=\"left\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td align=\"center\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td align=\"left\" valign=\"middle\">Widi Nugrahani</td>\r\n    <td colspan=\"2\" valign=\"middle\">(Bendahara UKS)</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"25\" align=\"left\" valign=\"middle\">Anggota</td>\r\n    <td align=\"center\" valign=\"middle\">:</td>\r\n    <td align=\"left\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n    <td colspan=\"2\" valign=\"middle\"><!--DWLayoutEmptyCell-->&nbsp;</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"25\" colspan=\"4\" align=\"left\" valign=\"middle\">Ketaqwaan Terhadap  Tuhan Yang Maha Esa</td>\r\n    <td width=\"130\" valign=\"middle\">Drs. Kuntohadi</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"25\" colspan=\"4\" align=\"left\" valign=\"middle\">Kehidupan Berbangsa  dan Bernegara&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>\r\n    <td valign=\"middle\">Drs. Priyo Suyitno</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"25\" colspan=\"4\" align=\"left\" valign=\"middle\">Kepribadian dan Budi  Pekerti Luhur </td>\r\n    <td valign=\"middle\">Supriyadi</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"25\" colspan=\"4\" align=\"left\" valign=\"middle\">Berorganisasi  Pendidikan Politik dan Kepemimpinan</td>\r\n    <td valign=\"middle\">Drs. Edy Purdiyanto</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"25\" colspan=\"4\" align=\"left\" valign=\"middle\">Keterampilan dan  Kewiraswastaan</td>\r\n    <td valign=\"middle\">Mujiati, S.Pd</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"25\" colspan=\"4\" align=\"left\" valign=\"middle\">Persepsi, Apresiasi  dan Kreasi Seni</td>\r\n    <td valign=\"middle\">Sri Purwanti, S.Kar</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"25\" colspan=\"4\" align=\"left\" valign=\"middle\">Kesegaran Jasmani dan  Daya Kreasi&nbsp; </td>\r\n    <td valign=\"middle\">Asnawi, S.Pd</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"25\" colspan=\"4\" align=\"left\" valign=\"middle\">Pendidikan  Pendahuluan Bela Negara</td>\r\n    <td valign=\"middle\">Drs. Abdus Syakur</td>\r\n  </tr>\r\n  <tr>\r\n    <td height=\"1\"></td>\r\n    <td></td>\r\n    <td></td>\r\n    <td width=\"54\"></td>\r\n    <td></td>\r\n  </tr>\r\n</table>','3.1'),
(5,'<p>Puji syukur kami panjatkan ke hadirat Tuhan Yang Maha Esa atas karunia dan hidayah-Nya,&nbsp;</p>\n\n<p>....</p>\n\n<p>.....</p>\n\n<p>Ketua Alumni SMAN 2 Balige<br />\n<br />\n<br />\n<br />\n<strong>Andhy Marpaung</strong></p>\n','1.1'),
(6,'Belum ada konten..!!!<br>\r\nSilakan anda kunjungi halaman ini beberapa saat lagi','1.3'),
(7,'Belum ada konten..!!!<br>\r\nSilakan anda kunjungi halaman ini beberapa saat lagi','1.5'),
(10,'Belum ada konten..!!!<br>\r\nSilakan anda kunjungi halaman ini beberapa saat lagi','3.2'),
(12,'Belum ada konten..!!!<br>\r\nSilakan anda kunjungi halaman ini beberapa saat lagi','4.2'),
(13,'Belum ada konten..!!!<br>\r\nSilakan anda kunjungi halaman ini beberapa saat lagi','6.1'),
(14,'Belum ada konten..!!!<br>\r\nSilakan anda kunjungi halaman ini beberapa saat lagi','6.2'),
(15,'<p>Belum ada konten..!!!<br />\nSilakan anda kunjungi halaman ini beberapa saat lagi</p>\n\n<p>&nbsp;</p>\n\n<p>ok gan</p>\n','6.3'),
(16,'Belum ada konten..!!!<br>\r\nSilakan anda kunjungi halaman ini beberapa saat lagi','6.4'),
(17,'Belum ada konten..!!!<br>\r\nSilakan anda kunjungi halaman ini beberapa saat lagi','6.5'),
(18,'Belum ada konten..!!!<br>\r\nSilakan anda kunjungi halaman ini beberapa saat lagi','6.6'),
(19,'Belum ada konten..!!!<br>\r\nSilakan anda kunjungi halaman ini beberapa saat lagi','6.7'),
(20,'Belum ada konten..!!!<br>\r\nSilakan anda kunjungi halaman ini beberapa saat lagi','6.8'),
(21,'<p>Belum ada konten..!!!<br /> Silakan anda kunjungi halaman ini beberapa saat lagi</p>\n<p><img title=\"Bunga Di Tepi Jalan\" src=\"../../../media/image/imgthumb/hydrangeas.jpg\" alt=\"Bunga Di Tepi Jalan\" width=\"230\" height=\"160\" /></p>','6.9');

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

/*Data for the table `tbl_download` */

insert  into `tbl_download`(`id_download`,`judul_file`,`nama_file`,`tgl_posting`,`author`) values 
(13,'E-Book 11 Langkah Memahami C#','858906959demo.zip','2011-02-24','de_lumbung'),
(14,'test123','5y60r.jpg','2015-02-23','Gede Suma Wijaya');

/*Table structure for table `tbl_galeri` */

DROP TABLE IF EXISTS `tbl_galeri`;

CREATE TABLE `tbl_galeri` (
  `id_foto` int(10) NOT NULL AUTO_INCREMENT,
  `id_album` int(10) NOT NULL,
  `foto_kecil` varchar(100) NOT NULL,
  `foto_besar` varchar(100) NOT NULL,
  PRIMARY KEY (`id_foto`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_galeri` */

insert  into `tbl_galeri`(`id_foto`,`id_album`,`foto_kecil`,`foto_besar`) values 
(1,3,'small-foto-1.jpg','big-foto-1.jpg'),
(2,3,'small-foto-2.jpg','big-foto-2.jpg'),
(3,3,'small-foto-3.jpg','big-foto-3.jpg'),
(4,3,'small-foto-4.jpg','big-foto-4.jpg'),
(5,3,'small-foto-5.jpg','big-foto-5.jpg'),
(6,2,'small-foto-6.jpg','big-foto-6.jpg'),
(7,2,'small-foto-7.jpg','big-foto-7.jpg'),
(8,2,'small-foto-8.jpg','big-foto-8.jpg'),
(9,2,'small-foto-9.jpg','big-foto-9.jpg'),
(10,2,'small-foto-10.jpg','big-foto-10.jpg'),
(11,2,'small-foto-11.jpg','big-foto-11.jpg'),
(12,2,'small-foto-12.jpg','big-foto-12.jpg'),
(13,1,'small-foto-13.jpg','big-foto-13.jpg'),
(14,1,'small-foto-14.jpg','big-foto-14.jpg'),
(15,1,'small-foto-15.jpg','big-foto-15.jpg'),
(16,1,'small-foto-16.jpg','big-foto-16.jpg'),
(17,1,'small-foto-17.jpg','big-foto-17.jpg'),
(18,1,'small-foto-18.jpg','big-foto-18.jpg'),
(19,1,'small-foto-19.jpg','big-foto-19.jpg'),
(22,5,'small-foto-22.jpg','big-foto-22.jpg');

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

/*Data for the table `tbl_gambar` */

insert  into `tbl_gambar`(`id_file`,`title`,`image_description`,`image_url`,`file_type`,`image_size`,`uploaded_date`) values 
(12,'Penyerahan Buku ajar untuk peserta, Oleh Kepala Dinas Pendidikan Pemuda dan Olahraga & Ketua STIKOM','Workshop Linux','media/pdf/delpi.pdf','pdf','0','2011-02-23');

/*Table structure for table `tbl_jawabanpoll` */

DROP TABLE IF EXISTS `tbl_jawabanpoll`;

CREATE TABLE `tbl_jawabanpoll` (
  `id_jawaban_poll` int(3) NOT NULL AUTO_INCREMENT,
  `id_soal_poll` int(3) NOT NULL,
  `jawaban` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `counter` int(5) NOT NULL,
  PRIMARY KEY (`id_jawaban_poll`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbl_jawabanpoll` */

insert  into `tbl_jawabanpoll`(`id_jawaban_poll`,`id_soal_poll`,`jawaban`,`counter`) values 
(1,1,'Kurang',10),
(2,1,'Cukup',8),
(3,1,'Sangat Bagus',10),
(4,1,'Tidak Tahu',14);

/*Table structure for table `tbl_kelas` */

DROP TABLE IF EXISTS `tbl_kelas`;

CREATE TABLE `tbl_kelas` (
  `id_kelas` int(10) NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(10) NOT NULL,
  `tahun_ajaran` varchar(15) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_kelas` */

insert  into `tbl_kelas`(`id_kelas`,`nama_kelas`,`tahun_ajaran`) values 
(1,'aa','2010/2011'),
(2,'X.2','2010/2011'),
(3,'X.3','2010/2011'),
(4,'X.4','2010/2011'),
(5,'X.5','2010/2011'),
(6,'XI IPA.1','2010/2011'),
(7,'XI IPA.2','2010/2011'),
(8,'XI IPA.3','2010/2011'),
(9,'XI IPS.2','2010/2011'),
(11,'XI IPS.1','2010/2011'),
(12,'XII IPA.1','2010/2011'),
(13,'XII IPA.2','2010/2011'),
(14,'XII IPA.3','2010/2011'),
(15,'XII IPS.1','2010/2011'),
(16,'XII IPS.2','2010/2011'),
(20,'www','20122');

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

/*Data for the table `tbl_kepegawaian` */

insert  into `tbl_kepegawaian`(`id_kepegawaian`,`nip`,`nama_pegawai`,`kelahiran`,`matpel`,`jk`,`status`,`username`,`password`,`remember_token`) values 
(1,'196412291989031011','Drs. Istu Handono','Malang, 29 Desember 1964','PPKN','L','guru','istu','8f60cd42aa91b5fb1600d0bc09341f16',''),
(2,'195704151985031017','Drs. Edi Suparnadi','Pamekasan, 15 April 1957','Ekonomi, Akuntansi','L','guru','edisuparnadi','$2y$10$dm8Xt50A7GgcZkp9coVQZ.LlTr0PkpCgXPpTEpNq6AMeZyLBUe9yW','IisQlo82qSyJ2OS9UrNxjrg8klLpE1btrRJHaK9SRVhCXr5pAkHZqtLTzBv5'),
(3,'195910111983081003','Drs. Kuntohadi, M.Pd.I','Banyuwangi, 10 November 1959','Pend. Agama Islam','L','guru','kuntohadi','145f7d3f9a14c17da71f58269a559f51',''),
(4,'196604031997032002','Sri Purwanti','Klaten, 03 April 1966','Seni Tari','P','guru','sripurwanti','d99669c69d2010136c4f2939ec12e016',''),
(5,'19660525199512002','Fransisco Maya, S.Pd','Timor-Timur, 25 Mei 1966','PKn','P','guru','fransiscomaya','3bbc2b1bb1fed3b95589cde0a97ce390',''),
(6,'197110111998021001','Agus Suprantiyono, S.Pd','Pati, 11 Oktober 1971','Fisika','L','guru','agussuprantiyono','f590b48dd6c45eec8f0969a7a291b5ef',''),
(7,'196502091999032001','Ni Wayan Sedariasih','Tabanan, 09 Februari 1965','Sejarah, Sosiologi','P','guru','wayansedariasih','90a2d00785194295f5dba7acac7517f5',''),
(8,'196705091998021002','Abdus Syakur','Bondowoso, 09 Mei 1967','Matematika','L','guru','abdussyakur','397e6c0b0abaded911d0376c493e0d62',''),
(9,'196509022000031003','Samsul, S.Pd','Banyuwangi, 02 September 1965','Geografi','L','guru','samsul','6ddcd35687be9a4415e4416a6dd6829e',''),
(10,'196606122000032006','Husnul Hotimah','Banyuwangi, 12 Juni 1966','Matematika','P','guru','husnulhotimah','0bb3a76b2e36715f76f769362fff6196',''),
(11,'197009202003122006','Mujiati, S.Pd','Banyuwangi, 20 September 1970','Sosiologi / Kewarganegaraan','P','guru','mujiati','6f644f6d12df3a3ef6938668a48130ec',''),
(12,'197909012003122008','Umi Lestari, S.Pd','Banyuwangi, 01 September 1979','Bahasa Inggris','P','guru','umilestari','1e398be40df082937f345008f9904570',''),
(13,'197511162005012011','Sulityowati, S.Pd','Banyuwangi, 16 November 1975','Bahasa Inggris','P','guru','sulityowati','c7a31c51818f708d292867d128ca7f07',''),
(14,'196606162006041016','Sukardi, S.Pd','Banyuwangi, 16 Juni 1966','Matematika','L','guru','sukardi','f4789943ee2c7f47492dea41ef8289e6',''),
(15,'196806102007011033','Katiman, S.Pd','Banyuwangi, 10 Juni 1968','Sejarah / Mulok','L','guru','katiman','ca4e33770790fb7cee92227b2ba26292',''),
(16,'197506112007012006','Nandi Suhaili, S.Pd','Banyuwangi, 11 Juni 1975','Kimia','L','guru','nandisuhaili','733e65748f8b2bcbf1cf45513fdc86da',''),
(17,'197308022007012006','Widi Nugrahani, S.Pd','Banyuwangi, 02 Agustus 1973','Bahasa Indonesia','P','guru','widinugrahani','239dfedc4c79fe58a372b27ca247f92a',''),
(18,'196409172007011016','Drs. Edy Purdiyanto','Malang, 17 September 1964','Biologi / Fisika','L','guru','','',''),
(19,'196309052007011007','Drs. Priyo Suyitno','Banyuwangi, 05 September 1963','Sejarah','L','guru','','',''),
(20,'196408252007011007','Untung Selamet, S.Pd','Karang Sari, 25 Agustus 1964','Bahasa Indonesia','L','guru','','',''),
(21,'197309192007011013','Drs. Zhudi Hermawan','Banyuwangi, 19 September 1973','Penjaskes','L','guru','','',''),
(22,'510234143','Dra. Eny Sulistyowati','Banyuwangi, 06 November 1963','BK','P','guru','','',''),
(23,'510234277','Drs. Ahmad','Banyuwangi, 11 Juli 1967','Matematika','L','guru','','',''),
(24,'510234292','Supriyadi, S.Pd','Banyuwangi, 15 Juli 1975','Bahasa Inggris','L','guru','','',''),
(25,'510234305','Dra. Yayik Prakesti','Banyuwangi, 25 Mei 1965','Biologi','P','guru','','',''),
(26,'510234455','Drs. Imam Tajuddin','Banyuwangi, 16 Juni 1968','BK / Bahasa Asing','L','guru','','',''),
(27,'510234455','Asnawi, S.Pd','Banyuwangi, 05 Maret 1963','Penjaskes','L','guru','','',''),
(28,'-','Holifatun Nur Ania','Banyuwangi, 08 Januari 1979','Mulok','P','guru','','',''),
(29,'-','Priyo Utomo','Banyuwangi, 05 Mei 1971','Bahasa Indonesia','L','guru','','',''),
(30,'-','Yuli Astutik','Banyuwangi, 11 Mei 1980','Akuntansi','P','guru','','',''),
(31,'-','Etik Kus Endang','Banyuwangi, 15 Desember 1978','-','P','guru','','',''),
(32,'-','Emi Wati','Banyuwangi, 23 Oktober 1968','-','P','guru','','',''),
(33,'-','Dian Novita','Banyuwangi, 30 November 1984','Kimia','P','guru','','',''),
(34,'-','Yuli Setiyawati','Banyuwangi, 15 Juli 1965','-','P','guru','','',''),
(35,'-','Etik Lis Andiyani','-','Bahasa Jepang','P','guru','','',''),
(36,'195904011989021003','Aries Bintang Pranyoto','Banyuwangi, 01 April 1959','-','L','pegawai','','',''),
(37,'196701112000032003','Fitria Indahati','Banyuwangi, 11 Januari 1967','-','P','pegawai','','',''),
(38,'196610141998021004','Sudarto','Banyuwangi, 14 Oktober 1966','-','L','pegawai','','',''),
(39,'-','Suryadi','Banyuwangi, 23 Desember 1975','-','L','pegawai','','',''),
(40,'-','Salam Wahyudi Umar Said','Banyuwangi, 12 Agustus 1969','-','L','pegawai','','',''),
(41,'-','Yuliana Aisyah Fitri','Banyuwangi, 28 Juli 1985','-','P','pegawai','','',''),
(42,'-','Kusniah','Banyuwangi, 08 Mei 1988','-','P','pegawai','','',''),
(43,'-','Moh. Yusuf','Banyuwangi, 20 September 1967','-','L','pegawai','','',''),
(44,'-','Ahmad Fauzi','Banyuwangi, 12 Agustus 1990','-','L','pegawai','','',''),
(45,'21112001','Laurensius','Balige, 20 Februari 1994','-','L','admin','admin','$2y$10$AGmlNMGBpbRJIvkcIhuzMOr8QzVwBGX.vniEln3leI3faI/BcNhNu','5FkfbfStpMrxsnUazmVf7V8rnKefUCvBObkfyKOnTKPo6XTyZXRIhFVorYZC'),
(47,'12345','waseso','waseso','waseso','L','guru','waseso','$2y$10$nw7ZXFGXvPTTNYHnJWNriercXtQbUeOXc7l2.KCWRIvaxPDMKVCjq','xuN7yBTBf0VAUOtuWjM3ms05C8VlP14oncTl211JkBfzynj7k4pjlGZc7j7d'),
(49,'4567890','Kampret','kampret','kampret','L','guru','kampret','$2y$10$BYNFwvaEk7QFp9Q1Y2L/0.UDiDbZ7GToXFae.x0ycPPiMs0vo.KZy','P9zjpiLIo0Q0QaDij7LoU1Z1TO1Q6N4hzfR9CyHIDgBKdbOYznIVrsh3TefQ');

/*Table structure for table `tbl_menu` */

DROP TABLE IF EXISTS `tbl_menu`;

CREATE TABLE `tbl_menu` (
  `id` char(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `id_parent` char(10) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_menu` */

insert  into `tbl_menu`(`id`,`title`,`id_parent`,`level`) values 
('1','Profil Alumni SMAN 2 Balige','0',0),
('1.1','Sambutan Alumni','1',1),
('1.2','Visi dan Misi','1',1),
('1.3','Sasaran Mutu','1',1),
('1.4','Tujuan','1',1),
('1.5','Motto','1',1),
('3','Pengurus','0',0),
('3.1','Struktur Organisasi ','3',1),
('3.2','Ketua Alumni','3',1),
('3.5','Data Pengurus','3',1),
('4','Alumni','0',0),
('4.1','Data Alumni','4',1),
('4.2','Data Prestasi ','4',1),
('6','Event','0',0),
('6.1','Sepak Bola','6',1),
('6.2','Bola Volly','6',1),
('6.3','Musik','6',1),
('6.4','Pencinta Alam (PA)','6',1),
('6.5','Futsal','6',1),
('6.6','Bola Basket','6',1),
('6.7','Yoga','6',1),
('6.8','Badminton','6',1),
('7','Indexs Berita','0',10),
('8','Foto','12',10),
('11','List Download','0',10),
('12','Galeri','0',0);

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

/*Data for the table `tbl_pengumuman` */

insert  into `tbl_pengumuman`(`id_pengumuman`,`judul_pengumuman`,`isi`,`tanggal`,`penulis`) values 
(11,'ASa','<p>ascasssssssssssssssssssss</p>\n','2017-10-24','Laurensius'),
(4,'Peresmian dan Launching Website Perdana SMA Negeri 1 Wongsorejo','Peresmian dan launching website resmi SMA Negeri 1 Wongsorejo akan diadakan pada hari 23 Desember 2010 pukul 10.00, bertepatan dengan pembagian raport semester ganjil tahun ajaran 2010-2011','2010-12-22','admin'),
(10,'Tambah Satu','<p>tambah satu</p>\n','2015-02-24','Drs. Edi Suparnadi');

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

/*Data for the table `tbl_pesan` */

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

/*Data for the table `tbl_siswa` */

insert  into `tbl_siswa`(`id_siswa`,`id_kelas`,`nama_siswa`,`alamat`,`status`,`no_hp`,`alamat_email`) values 
(1,1,'M. Fhasa Wijaya','1102',NULL,NULL,NULL);

/*Table structure for table `tbl_soalpolling` */

DROP TABLE IF EXISTS `tbl_soalpolling`;

CREATE TABLE `tbl_soalpolling` (
  `id_soal_poll` int(3) NOT NULL AUTO_INCREMENT,
  `soal_poll` text COLLATE latin1_general_ci NOT NULL,
  `status` char(1) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_soal_poll`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbl_soalpolling` */

insert  into `tbl_soalpolling`(`id_soal_poll`,`soal_poll`,`status`) values 
(1,'Bagaimana menurut pendapat anda tentang tampilan website SMAN 1 Wongsorejo ini?','Y');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
