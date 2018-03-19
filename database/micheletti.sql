-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 19, 2018 at 08:28 PM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `micheletti`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE `acos` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) UNSIGNED DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(180, NULL, NULL, NULL, 'controllers', 1, 1040),
(181, 180, NULL, NULL, 'Pages', 2, 57),
(183, 181, NULL, NULL, 'index', 3, 4),
(184, 181, NULL, NULL, 'getRole', 5, 6),
(185, 181, NULL, NULL, 'countRows', 7, 8),
(186, 180, NULL, NULL, 'Roles', 58, 103),
(187, 186, NULL, NULL, 'admin_index', 59, 60),
(188, 186, NULL, NULL, 'admin_view', 61, 62),
(189, 186, NULL, NULL, 'admin_add', 63, 64),
(190, 186, NULL, NULL, 'admin_edit', 65, 66),
(191, 186, NULL, NULL, 'admin_delete', 67, 68),
(192, 186, NULL, NULL, 'getRole', 69, 70),
(193, 186, NULL, NULL, 'countRows', 71, 72),
(194, 180, NULL, NULL, 'Users', 104, 159),
(195, 194, NULL, NULL, 'isAuthorized', 105, 106),
(196, 194, NULL, NULL, 'admin_index', 107, 108),
(197, 194, NULL, NULL, 'admin_login', 109, 110),
(198, 194, NULL, NULL, 'admin_logout', 111, 112),
(199, 194, NULL, NULL, 'admin_view', 113, 114),
(200, 194, NULL, NULL, 'admin_add', 115, 116),
(201, 194, NULL, NULL, 'admin_edit', 117, 118),
(202, 194, NULL, NULL, 'admin_delete', 119, 120),
(203, 194, NULL, NULL, 'getRole', 121, 122),
(204, 194, NULL, NULL, 'countRows', 123, 124),
(205, 180, NULL, NULL, 'Acl', 160, 317),
(206, 205, NULL, NULL, 'Acl', 161, 200),
(207, 206, NULL, NULL, 'index', 162, 163),
(208, 206, NULL, NULL, 'admin_index', 164, 165),
(209, 206, NULL, NULL, 'getRole', 166, 167),
(210, 206, NULL, NULL, 'countRows', 168, 169),
(211, 205, NULL, NULL, 'Acos', 201, 246),
(212, 211, NULL, NULL, 'admin_index', 202, 203),
(213, 211, NULL, NULL, 'admin_empty_acos', 204, 205),
(214, 211, NULL, NULL, 'admin_build_acl', 206, 207),
(215, 211, NULL, NULL, 'admin_prune_acos', 208, 209),
(216, 211, NULL, NULL, 'admin_synchronize', 210, 211),
(217, 211, NULL, NULL, 'getRole', 212, 213),
(218, 211, NULL, NULL, 'countRows', 214, 215),
(219, 205, NULL, NULL, 'Aros', 247, 316),
(220, 219, NULL, NULL, 'admin_index', 248, 249),
(221, 219, NULL, NULL, 'admin_check', 250, 251),
(222, 219, NULL, NULL, 'admin_users', 252, 253),
(223, 219, NULL, NULL, 'admin_update_user_role', 254, 255),
(224, 219, NULL, NULL, 'admin_ajax_role_permissions', 256, 257),
(225, 219, NULL, NULL, 'admin_role_permissions', 258, 259),
(226, 219, NULL, NULL, 'admin_user_permissions', 260, 261),
(227, 219, NULL, NULL, 'admin_empty_permissions', 262, 263),
(228, 219, NULL, NULL, 'admin_clear_user_specific_permissions', 264, 265),
(229, 219, NULL, NULL, 'admin_grant_all_controllers', 266, 267),
(230, 219, NULL, NULL, 'admin_deny_all_controllers', 268, 269),
(231, 219, NULL, NULL, 'admin_get_role_controller_permission', 270, 271),
(232, 219, NULL, NULL, 'admin_grant_role_permission', 272, 273),
(233, 219, NULL, NULL, 'admin_deny_role_permission', 274, 275),
(234, 219, NULL, NULL, 'admin_get_user_controller_permission', 276, 277),
(235, 219, NULL, NULL, 'admin_grant_user_permission', 278, 279),
(236, 219, NULL, NULL, 'admin_deny_user_permission', 280, 281),
(237, 219, NULL, NULL, 'getRole', 282, 283),
(238, 219, NULL, NULL, 'countRows', 284, 285),
(239, 180, NULL, NULL, 'Galleries', 318, 363),
(240, 239, NULL, NULL, 'admin_index', 319, 320),
(241, 239, NULL, NULL, 'admin_view', 321, 322),
(242, 239, NULL, NULL, 'admin_add', 323, 324),
(243, 239, NULL, NULL, 'admin_edit', 325, 326),
(244, 239, NULL, NULL, 'admin_delete', 327, 328),
(245, 239, NULL, NULL, 'getRole', 329, 330),
(246, 239, NULL, NULL, 'countRows', 331, 332),
(247, 180, NULL, NULL, 'Images', 364, 417),
(248, 247, NULL, NULL, 'getRole', 365, 366),
(249, 247, NULL, NULL, 'countRows', 367, 368),
(250, 247, NULL, NULL, 'admin_add', 369, 370),
(258, 247, NULL, NULL, 'admin_edit', 371, 372),
(259, 247, NULL, NULL, 'admin_ajax_edit', 373, 374),
(260, 247, NULL, NULL, 'admin_delete', 375, 376),
(261, 247, NULL, NULL, 'admin_view', 377, 378),
(262, 180, NULL, NULL, 'PageContents', 418, 469),
(263, 262, NULL, NULL, 'admin_index', 419, 420),
(264, 262, NULL, NULL, 'admin_view', 421, 422),
(265, 262, NULL, NULL, 'admin_add', 423, 424),
(266, 262, NULL, NULL, 'admin_edit', 425, 426),
(267, 262, NULL, NULL, 'admin_delete', 427, 428),
(268, 262, NULL, NULL, 'getRole', 429, 430),
(269, 262, NULL, NULL, 'countRows', 431, 432),
(270, 180, NULL, NULL, 'Banners', 470, 515),
(271, 270, NULL, NULL, 'admin_index', 471, 472),
(272, 270, NULL, NULL, 'admin_view', 473, 474),
(273, 270, NULL, NULL, 'admin_add', 475, 476),
(274, 270, NULL, NULL, 'admin_edit', 477, 478),
(275, 270, NULL, NULL, 'admin_delete', 479, 480),
(276, 270, NULL, NULL, 'getRole', 481, 482),
(277, 270, NULL, NULL, 'countRows', 483, 484),
(278, 270, NULL, NULL, 'getChildren', 485, 486),
(279, 239, NULL, NULL, 'getChildren', 333, 334),
(280, 247, NULL, NULL, 'getChildren', 379, 380),
(281, 262, NULL, NULL, 'getChildren', 433, 434),
(282, 181, NULL, NULL, 'getChildren', 9, 10),
(283, 186, NULL, NULL, 'getChildren', 73, 74),
(284, 194, NULL, NULL, 'getChildren', 125, 126),
(285, 206, NULL, NULL, 'getChildren', 170, 171),
(286, 211, NULL, NULL, 'getChildren', 216, 217),
(287, 219, NULL, NULL, 'getChildren', 286, 287),
(299, 180, NULL, NULL, 'Events', 516, 561),
(300, 299, NULL, NULL, 'admin_index', 517, 518),
(301, 299, NULL, NULL, 'admin_view', 519, 520),
(302, 299, NULL, NULL, 'admin_add', 521, 522),
(303, 299, NULL, NULL, 'admin_edit', 523, 524),
(304, 299, NULL, NULL, 'admin_delete', 525, 526),
(305, 299, NULL, NULL, 'getRole', 527, 528),
(306, 299, NULL, NULL, 'countRows', 529, 530),
(307, 299, NULL, NULL, 'getChildren', 531, 532),
(311, 270, NULL, NULL, 'checkGallery', 487, 488),
(312, 299, NULL, NULL, 'checkGallery', 533, 534),
(313, 239, NULL, NULL, 'checkGallery', 335, 336),
(314, 247, NULL, NULL, 'checkGallery', 381, 382),
(330, 262, NULL, NULL, 'checkGallery', 435, 436),
(337, 181, NULL, NULL, 'checkGallery', 11, 12),
(338, 186, NULL, NULL, 'checkGallery', 75, 76),
(339, 194, NULL, NULL, 'checkGallery', 127, 128),
(340, 206, NULL, NULL, 'checkGallery', 172, 173),
(341, 211, NULL, NULL, 'checkGallery', 218, 219),
(342, 219, NULL, NULL, 'checkGallery', 288, 289),
(343, 270, NULL, NULL, 'getChildrenId', 489, 490),
(344, 180, NULL, NULL, 'Dashboard', 562, 599),
(345, 344, NULL, NULL, 'admin_index', 563, 564),
(346, 344, NULL, NULL, 'getRole', 565, 566),
(347, 344, NULL, NULL, 'countRows', 567, 568),
(348, 344, NULL, NULL, 'getChildren', 569, 570),
(349, 344, NULL, NULL, 'getChildrenId', 571, 572),
(350, 344, NULL, NULL, 'checkGallery', 573, 574),
(351, 299, NULL, NULL, 'getChildrenId', 535, 536),
(352, 239, NULL, NULL, 'getChildrenId', 337, 338),
(353, 247, NULL, NULL, 'getChildrenId', 383, 384),
(355, 262, NULL, NULL, 'getChildrenId', 437, 438),
(356, 181, NULL, NULL, 'getChildrenId', 13, 14),
(357, 186, NULL, NULL, 'getChildrenId', 77, 78),
(358, 194, NULL, NULL, 'getChildrenId', 129, 130),
(359, 206, NULL, NULL, 'getChildrenId', 174, 175),
(360, 211, NULL, NULL, 'getChildrenId', 220, 221),
(361, 219, NULL, NULL, 'getChildrenId', 290, 291),
(399, 270, NULL, NULL, 'getFirstChild', 491, 492),
(400, 270, NULL, NULL, 'checkForGrandChildren', 493, 494),
(401, 344, NULL, NULL, 'getFirstChild', 575, 576),
(402, 344, NULL, NULL, 'checkForGrandChildren', 577, 578),
(403, 299, NULL, NULL, 'getFirstChild', 537, 538),
(404, 299, NULL, NULL, 'checkForGrandChildren', 539, 540),
(405, 239, NULL, NULL, 'getFirstChild', 339, 340),
(406, 239, NULL, NULL, 'checkForGrandChildren', 341, 342),
(407, 247, NULL, NULL, 'getFirstChild', 385, 386),
(408, 247, NULL, NULL, 'checkForGrandChildren', 387, 388),
(413, 262, NULL, NULL, 'getFirstChild', 439, 440),
(414, 262, NULL, NULL, 'checkForGrandChildren', 441, 442),
(427, 181, NULL, NULL, 'getFirstChild', 15, 16),
(428, 181, NULL, NULL, 'checkForGrandChildren', 17, 18),
(429, 186, NULL, NULL, 'getFirstChild', 79, 80),
(430, 186, NULL, NULL, 'checkForGrandChildren', 81, 82),
(444, 194, NULL, NULL, 'getFirstChild', 131, 132),
(445, 194, NULL, NULL, 'checkForGrandChildren', 133, 134),
(446, 206, NULL, NULL, 'getFirstChild', 176, 177),
(447, 206, NULL, NULL, 'checkForGrandChildren', 178, 179),
(448, 211, NULL, NULL, 'getFirstChild', 222, 223),
(449, 211, NULL, NULL, 'checkForGrandChildren', 224, 225),
(450, 219, NULL, NULL, 'getFirstChild', 292, 293),
(451, 219, NULL, NULL, 'checkForGrandChildren', 294, 295),
(470, 247, NULL, NULL, 'admin_set_default', 389, 390),
(474, 270, NULL, NULL, 'getFirstChildImage', 495, 496),
(476, 344, NULL, NULL, 'getFirstChildImage', 579, 580),
(477, 299, NULL, NULL, 'getFirstChildImage', 541, 542),
(492, 239, NULL, NULL, 'getFirstChildImage', 343, 344),
(493, 247, NULL, NULL, 'getFirstChildImage', 391, 392),
(495, 262, NULL, NULL, 'getFirstChildImage', 443, 444),
(505, 181, NULL, NULL, 'getFirstChildImage', 19, 20),
(506, 186, NULL, NULL, 'getFirstChildImage', 83, 84),
(507, 194, NULL, NULL, 'getFirstChildImage', 135, 136),
(508, 206, NULL, NULL, 'getFirstChildImage', 180, 181),
(509, 211, NULL, NULL, 'getFirstChildImage', 226, 227),
(510, 219, NULL, NULL, 'getFirstChildImage', 296, 297),
(511, 270, NULL, NULL, 'getCurrentChild', 497, 498),
(512, 270, NULL, NULL, 'getParent', 499, 500),
(513, 270, NULL, NULL, 'getData', 501, 502),
(517, 344, NULL, NULL, 'getCurrentChild', 581, 582),
(518, 344, NULL, NULL, 'getParent', 583, 584),
(519, 344, NULL, NULL, 'getData', 585, 586),
(520, 299, NULL, NULL, 'getCurrentChild', 543, 544),
(521, 299, NULL, NULL, 'getParent', 545, 546),
(522, 299, NULL, NULL, 'getData', 547, 548),
(526, 239, NULL, NULL, 'getCurrentChild', 345, 346),
(527, 239, NULL, NULL, 'getParent', 347, 348),
(528, 239, NULL, NULL, 'getData', 349, 350),
(529, 247, NULL, NULL, 'getCurrentChild', 393, 394),
(530, 247, NULL, NULL, 'getParent', 395, 396),
(531, 247, NULL, NULL, 'getData', 397, 398),
(535, 262, NULL, NULL, 'getCurrentChild', 445, 446),
(536, 262, NULL, NULL, 'getParent', 447, 448),
(537, 262, NULL, NULL, 'getData', 449, 450),
(540, 181, NULL, NULL, 'getCurrentChild', 21, 22),
(541, 181, NULL, NULL, 'getParent', 23, 24),
(542, 181, NULL, NULL, 'getData', 25, 26),
(543, 186, NULL, NULL, 'getCurrentChild', 85, 86),
(544, 186, NULL, NULL, 'getParent', 87, 88),
(545, 186, NULL, NULL, 'getData', 89, 90),
(546, 194, NULL, NULL, 'getCurrentChild', 137, 138),
(547, 194, NULL, NULL, 'getParent', 139, 140),
(548, 194, NULL, NULL, 'getData', 141, 142),
(549, 206, NULL, NULL, 'getCurrentChild', 182, 183),
(550, 206, NULL, NULL, 'getParent', 184, 185),
(551, 206, NULL, NULL, 'getData', 186, 187),
(552, 211, NULL, NULL, 'getCurrentChild', 228, 229),
(553, 211, NULL, NULL, 'getParent', 230, 231),
(554, 211, NULL, NULL, 'getData', 232, 233),
(555, 219, NULL, NULL, 'getCurrentChild', 298, 299),
(556, 219, NULL, NULL, 'getParent', 300, 301),
(557, 219, NULL, NULL, 'getData', 302, 303),
(569, 270, NULL, NULL, 'getSymbols', 503, 504),
(571, 344, NULL, NULL, 'getSymbols', 587, 588),
(572, 299, NULL, NULL, 'getSymbols', 549, 550),
(574, 239, NULL, NULL, 'getSymbols', 351, 352),
(575, 247, NULL, NULL, 'getSymbols', 399, 400),
(577, 262, NULL, NULL, 'getSymbols', 451, 452),
(579, 181, NULL, NULL, 'getSymbols', 27, 28),
(580, 186, NULL, NULL, 'getSymbols', 91, 92),
(581, 194, NULL, NULL, 'getSymbols', 143, 144),
(582, 206, NULL, NULL, 'getSymbols', 188, 189),
(583, 211, NULL, NULL, 'getSymbols', 234, 235),
(584, 219, NULL, NULL, 'getSymbols', 304, 305),
(719, 180, NULL, NULL, 'Videos', 600, 647),
(720, 719, NULL, NULL, 'admin_index', 601, 602),
(721, 719, NULL, NULL, 'admin_view', 603, 604),
(722, 719, NULL, NULL, 'admin_add', 605, 606),
(723, 719, NULL, NULL, 'admin_edit', 607, 608),
(724, 719, NULL, NULL, 'admin_delete', 609, 610),
(725, 719, NULL, NULL, 'getRole', 611, 612),
(726, 719, NULL, NULL, 'countRows', 613, 614),
(727, 719, NULL, NULL, 'getChildren', 615, 616),
(728, 719, NULL, NULL, 'getSymbols', 617, 618),
(729, 719, NULL, NULL, 'getFirstChild', 619, 620),
(730, 719, NULL, NULL, 'getCurrentChild', 621, 622),
(731, 719, NULL, NULL, 'getParent', 623, 624),
(732, 719, NULL, NULL, 'getFirstChildImage', 625, 626),
(733, 719, NULL, NULL, 'checkForGrandChildren', 627, 628),
(734, 719, NULL, NULL, 'getChildrenId', 629, 630),
(735, 719, NULL, NULL, 'checkGallery', 631, 632),
(736, 719, NULL, NULL, 'getData', 633, 634),
(741, 180, NULL, NULL, 'Sitemap', 648, 687),
(742, 741, NULL, NULL, 'Sitemaps', 649, 686),
(743, 742, NULL, NULL, 'display', 650, 651),
(744, 742, NULL, NULL, 'getRole', 652, 653),
(745, 742, NULL, NULL, 'countRows', 654, 655),
(746, 742, NULL, NULL, 'getChildren', 656, 657),
(747, 742, NULL, NULL, 'getSymbols', 658, 659),
(748, 742, NULL, NULL, 'getFirstChild', 660, 661),
(749, 742, NULL, NULL, 'getCurrentChild', 662, 663),
(750, 742, NULL, NULL, 'getParent', 664, 665),
(751, 742, NULL, NULL, 'getFirstChildImage', 666, 667),
(752, 742, NULL, NULL, 'checkForGrandChildren', 668, 669),
(753, 742, NULL, NULL, 'getChildrenId', 670, 671),
(754, 742, NULL, NULL, 'checkGallery', 672, 673),
(755, 742, NULL, NULL, 'getData', 674, 675),
(874, 262, NULL, NULL, 'admin_set_default', 453, 454),
(884, 181, NULL, NULL, 'process', 29, 30),
(889, 194, NULL, NULL, 'client_login', 145, 146),
(890, 194, NULL, NULL, 'client_logout', 147, 148),
(893, 180, NULL, NULL, 'News', 688, 749),
(894, 893, NULL, NULL, 'admin_index', 689, 690),
(895, 893, NULL, NULL, 'admin_view', 691, 692),
(896, 893, NULL, NULL, 'admin_add', 693, 694),
(897, 893, NULL, NULL, 'admin_edit', 695, 696),
(898, 893, NULL, NULL, 'admin_delete', 697, 698),
(899, 893, NULL, NULL, 'admin_archive_news', 699, 700),
(900, 893, NULL, NULL, 'admin_unarchive_news', 701, 702),
(901, 893, NULL, NULL, 'admin_publish_news', 703, 704),
(902, 893, NULL, NULL, 'admin_unpublish_news', 705, 706),
(903, 893, NULL, NULL, 'admin_enable_comments', 707, 708),
(904, 893, NULL, NULL, 'admin_disable_comments', 709, 710),
(905, 893, NULL, NULL, 'getRole', 711, 712),
(906, 893, NULL, NULL, 'countRows', 713, 714),
(907, 893, NULL, NULL, 'getChildren', 715, 716),
(908, 893, NULL, NULL, 'getSymbols', 717, 718),
(909, 893, NULL, NULL, 'getFirstChild', 719, 720),
(910, 893, NULL, NULL, 'getCurrentChild', 721, 722),
(911, 893, NULL, NULL, 'getParent', 723, 724),
(912, 893, NULL, NULL, 'getFirstChildImage', 725, 726),
(913, 893, NULL, NULL, 'checkForGrandChildren', 727, 728),
(914, 893, NULL, NULL, 'getChildrenId', 729, 730),
(915, 893, NULL, NULL, 'checkGallery', 731, 732),
(916, 893, NULL, NULL, 'getData', 733, 734),
(923, 181, NULL, NULL, 'download', 31, 32),
(932, 719, NULL, NULL, 'admin_featured', 635, 636),
(933, 270, NULL, NULL, 'getChildrenAsc', 505, 506),
(934, 344, NULL, NULL, 'getChildrenAsc', 589, 590),
(935, 299, NULL, NULL, 'getChildrenAsc', 551, 552),
(936, 239, NULL, NULL, 'getChildrenAsc', 353, 354),
(937, 247, NULL, NULL, 'admin_feature', 401, 402),
(938, 247, NULL, NULL, 'admin_remove_feature', 403, 404),
(939, 247, NULL, NULL, 'getChildrenAsc', 405, 406),
(940, 893, NULL, NULL, 'getChildrenAsc', 735, 736),
(941, 262, NULL, NULL, 'admin_featured', 455, 456),
(942, 262, NULL, NULL, 'admin_featured_clear', 457, 458),
(943, 262, NULL, NULL, 'getChildrenAsc', 459, 460),
(944, 181, NULL, NULL, 'getChildrenAsc', 33, 34),
(945, 186, NULL, NULL, 'getChildrenAsc', 93, 94),
(946, 194, NULL, NULL, 'getChildrenAsc', 149, 150),
(947, 719, NULL, NULL, 'getChildrenAsc', 637, 638),
(948, 206, NULL, NULL, 'getChildrenAsc', 190, 191),
(949, 211, NULL, NULL, 'getChildrenAsc', 236, 237),
(950, 219, NULL, NULL, 'getChildrenAsc', 306, 307),
(951, 742, NULL, NULL, 'getChildrenAsc', 676, 677),
(952, 180, NULL, NULL, 'OrderItems', 750, 785),
(953, 952, NULL, NULL, 'getRole', 751, 752),
(954, 952, NULL, NULL, 'countRows', 753, 754),
(955, 952, NULL, NULL, 'getChildren', 755, 756),
(956, 952, NULL, NULL, 'getChildrenAsc', 757, 758),
(957, 952, NULL, NULL, 'getSymbols', 759, 760),
(958, 952, NULL, NULL, 'getFirstChild', 761, 762),
(959, 952, NULL, NULL, 'getCurrentChild', 763, 764),
(960, 952, NULL, NULL, 'getParent', 765, 766),
(961, 952, NULL, NULL, 'getFirstChildImage', 767, 768),
(962, 952, NULL, NULL, 'checkForGrandChildren', 769, 770),
(963, 952, NULL, NULL, 'getChildrenId', 771, 772),
(964, 952, NULL, NULL, 'checkGallery', 773, 774),
(965, 952, NULL, NULL, 'getData', 775, 776),
(966, 180, NULL, NULL, 'Orders', 786, 829),
(967, 966, NULL, NULL, 'admin_index', 787, 788),
(968, 966, NULL, NULL, 'admin_view', 789, 790),
(969, 966, NULL, NULL, 'admin_edit', 791, 792),
(970, 966, NULL, NULL, 'admin_delete', 793, 794),
(971, 966, NULL, NULL, 'getRole', 795, 796),
(972, 966, NULL, NULL, 'countRows', 797, 798),
(973, 966, NULL, NULL, 'getChildren', 799, 800),
(974, 966, NULL, NULL, 'getChildrenAsc', 801, 802),
(975, 966, NULL, NULL, 'getSymbols', 803, 804),
(976, 966, NULL, NULL, 'getFirstChild', 805, 806),
(977, 966, NULL, NULL, 'getCurrentChild', 807, 808),
(978, 966, NULL, NULL, 'getParent', 809, 810),
(979, 966, NULL, NULL, 'getFirstChildImage', 811, 812),
(980, 966, NULL, NULL, 'checkForGrandChildren', 813, 814),
(981, 966, NULL, NULL, 'getChildrenId', 815, 816),
(982, 966, NULL, NULL, 'checkGallery', 817, 818),
(983, 966, NULL, NULL, 'getData', 819, 820),
(989, 180, NULL, NULL, 'Productmods', 830, 875),
(990, 989, NULL, NULL, 'admin_index', 831, 832),
(991, 989, NULL, NULL, 'admin_view', 833, 834),
(992, 989, NULL, NULL, 'admin_add', 835, 836),
(993, 989, NULL, NULL, 'admin_edit', 837, 838),
(994, 989, NULL, NULL, 'admin_delete', 839, 840),
(995, 989, NULL, NULL, 'getRole', 841, 842),
(996, 989, NULL, NULL, 'countRows', 843, 844),
(997, 989, NULL, NULL, 'getChildren', 845, 846),
(998, 989, NULL, NULL, 'getChildrenAsc', 847, 848),
(999, 989, NULL, NULL, 'getSymbols', 849, 850),
(1000, 989, NULL, NULL, 'getFirstChild', 851, 852),
(1001, 989, NULL, NULL, 'getCurrentChild', 853, 854),
(1002, 989, NULL, NULL, 'getParent', 855, 856),
(1003, 989, NULL, NULL, 'getFirstChildImage', 857, 858),
(1004, 989, NULL, NULL, 'checkForGrandChildren', 859, 860),
(1005, 989, NULL, NULL, 'getChildrenId', 861, 862),
(1006, 989, NULL, NULL, 'checkGallery', 863, 864),
(1007, 989, NULL, NULL, 'getData', 865, 866),
(1008, 180, NULL, NULL, 'Products', 876, 929),
(1016, 1008, NULL, NULL, 'admin_index', 877, 878),
(1017, 1008, NULL, NULL, 'admin_view', 879, 880),
(1018, 1008, NULL, NULL, 'admin_add', 881, 882),
(1019, 1008, NULL, NULL, 'admin_edit', 883, 884),
(1022, 1008, NULL, NULL, 'admin_delete', 885, 886),
(1023, 1008, NULL, NULL, 'getRole', 887, 888),
(1024, 1008, NULL, NULL, 'countRows', 889, 890),
(1025, 1008, NULL, NULL, 'getChildren', 891, 892),
(1026, 1008, NULL, NULL, 'getChildrenAsc', 893, 894),
(1027, 1008, NULL, NULL, 'getSymbols', 895, 896),
(1028, 1008, NULL, NULL, 'getFirstChild', 897, 898),
(1029, 1008, NULL, NULL, 'getCurrentChild', 899, 900),
(1030, 1008, NULL, NULL, 'getParent', 901, 902),
(1031, 1008, NULL, NULL, 'getFirstChildImage', 903, 904),
(1032, 1008, NULL, NULL, 'checkForGrandChildren', 905, 906),
(1033, 1008, NULL, NULL, 'getChildrenId', 907, 908),
(1034, 1008, NULL, NULL, 'checkGallery', 909, 910),
(1035, 1008, NULL, NULL, 'getData', 911, 912),
(1036, 180, NULL, NULL, 'Shop', 930, 989),
(1037, 1036, NULL, NULL, 'clear', 931, 932),
(1038, 1036, NULL, NULL, 'add', 933, 934),
(1039, 1036, NULL, NULL, 'itemupdate', 935, 936),
(1040, 1036, NULL, NULL, 'update', 937, 938),
(1041, 1036, NULL, NULL, 'remove', 939, 940),
(1042, 1036, NULL, NULL, 'cartupdate', 941, 942),
(1043, 1036, NULL, NULL, 'cart', 943, 944),
(1044, 1036, NULL, NULL, 'address', 945, 946),
(1045, 1036, NULL, NULL, 'step1', 947, 948),
(1046, 1036, NULL, NULL, 'step2', 949, 950),
(1047, 1036, NULL, NULL, 'review', 951, 952),
(1048, 1036, NULL, NULL, 'success', 953, 954),
(1049, 1036, NULL, NULL, 'getRole', 955, 956),
(1050, 1036, NULL, NULL, 'countRows', 957, 958),
(1051, 1036, NULL, NULL, 'getChildren', 959, 960),
(1052, 1036, NULL, NULL, 'getChildrenAsc', 961, 962),
(1053, 1036, NULL, NULL, 'getSymbols', 963, 964),
(1054, 1036, NULL, NULL, 'getFirstChild', 965, 966),
(1055, 1036, NULL, NULL, 'getCurrentChild', 967, 968),
(1056, 1036, NULL, NULL, 'getParent', 969, 970),
(1057, 1036, NULL, NULL, 'getFirstChildImage', 971, 972),
(1058, 1036, NULL, NULL, 'checkForGrandChildren', 973, 974),
(1059, 1036, NULL, NULL, 'getChildrenId', 975, 976),
(1060, 1036, NULL, NULL, 'checkGallery', 977, 978),
(1061, 1036, NULL, NULL, 'getData', 979, 980),
(1062, 180, NULL, NULL, 'Categories', 990, 1039),
(1063, 1062, NULL, NULL, 'index', 991, 992),
(1064, 1062, NULL, NULL, 'view', 993, 994),
(1065, 1062, NULL, NULL, 'admin_index', 995, 996),
(1066, 1062, NULL, NULL, 'admin_view', 997, 998),
(1067, 1062, NULL, NULL, 'admin_add', 999, 1000),
(1068, 1062, NULL, NULL, 'admin_edit', 1001, 1002),
(1069, 1062, NULL, NULL, 'admin_delete', 1003, 1004),
(1070, 1062, NULL, NULL, 'getRole', 1005, 1006),
(1071, 1062, NULL, NULL, 'countRows', 1007, 1008),
(1072, 1062, NULL, NULL, 'getChildren', 1009, 1010),
(1073, 1062, NULL, NULL, 'getChildrenAsc', 1011, 1012),
(1074, 1062, NULL, NULL, 'getSymbols', 1013, 1014),
(1075, 1062, NULL, NULL, 'getFirstChild', 1015, 1016),
(1076, 1062, NULL, NULL, 'getCurrentChild', 1017, 1018),
(1077, 1062, NULL, NULL, 'getParent', 1019, 1020),
(1078, 1062, NULL, NULL, 'getFirstChildImage', 1021, 1022),
(1079, 1062, NULL, NULL, 'checkForGrandChildren', 1023, 1024),
(1080, 1062, NULL, NULL, 'getChildrenId', 1025, 1026),
(1081, 1062, NULL, NULL, 'checkGallery', 1027, 1028),
(1082, 1062, NULL, NULL, 'getData', 1029, 1030),
(1083, 1008, NULL, NULL, 'admin_activate', 913, 914),
(1084, 1008, NULL, NULL, 'admin_deactivate', 915, 916),
(1085, 270, NULL, NULL, 'admin_editable', 507, 508),
(1086, 1062, NULL, NULL, 'admin_editable', 1031, 1032),
(1087, 344, NULL, NULL, 'admin_editable', 591, 592),
(1088, 299, NULL, NULL, 'admin_editable', 553, 554),
(1089, 239, NULL, NULL, 'admin_editable', 355, 356),
(1090, 247, NULL, NULL, 'admin_editable', 407, 408),
(1091, 893, NULL, NULL, 'admin_editable', 737, 738),
(1092, 952, NULL, NULL, 'admin_editable', 777, 778),
(1093, 966, NULL, NULL, 'admin_editable', 821, 822),
(1094, 262, NULL, NULL, 'admin_editable', 461, 462),
(1095, 181, NULL, NULL, 'admin_editable', 35, 36),
(1096, 989, NULL, NULL, 'admin_editable', 867, 868),
(1097, 1008, NULL, NULL, 'admin_add_image', 917, 918),
(1098, 1008, NULL, NULL, 'admin_edit_image', 919, 920),
(1099, 1008, NULL, NULL, 'admin_editable', 921, 922),
(1100, 186, NULL, NULL, 'admin_editable', 95, 96),
(1101, 1036, NULL, NULL, 'admin_editable', 981, 982),
(1102, 194, NULL, NULL, 'admin_editable', 151, 152),
(1103, 719, NULL, NULL, 'admin_editable', 639, 640),
(1104, 206, NULL, NULL, 'admin_editable', 192, 193),
(1105, 211, NULL, NULL, 'admin_editable', 238, 239),
(1106, 219, NULL, NULL, 'admin_editable', 308, 309),
(1107, 742, NULL, NULL, 'admin_editable', 678, 679),
(1116, 247, NULL, NULL, 'admin_delete_selected', 409, 410),
(1138, 270, NULL, NULL, 'error', 509, 510),
(1139, 270, NULL, NULL, 'appError', 511, 512),
(1140, 270, NULL, NULL, 'blackhole', 513, 514),
(1141, 1062, NULL, NULL, 'error', 1033, 1034),
(1142, 1062, NULL, NULL, 'appError', 1035, 1036),
(1143, 1062, NULL, NULL, 'blackhole', 1037, 1038),
(1144, 344, NULL, NULL, 'error', 593, 594),
(1145, 344, NULL, NULL, 'appError', 595, 596),
(1146, 344, NULL, NULL, 'blackhole', 597, 598),
(1147, 299, NULL, NULL, 'error', 555, 556),
(1148, 299, NULL, NULL, 'appError', 557, 558),
(1149, 299, NULL, NULL, 'blackhole', 559, 560),
(1150, 239, NULL, NULL, 'error', 357, 358),
(1151, 239, NULL, NULL, 'appError', 359, 360),
(1152, 239, NULL, NULL, 'blackhole', 361, 362),
(1153, 247, NULL, NULL, 'error', 411, 412),
(1154, 247, NULL, NULL, 'appError', 413, 414),
(1155, 247, NULL, NULL, 'blackhole', 415, 416),
(1156, 893, NULL, NULL, 'error', 739, 740),
(1157, 893, NULL, NULL, 'appError', 741, 742),
(1158, 893, NULL, NULL, 'blackhole', 743, 744),
(1159, 952, NULL, NULL, 'error', 779, 780),
(1160, 952, NULL, NULL, 'appError', 781, 782),
(1161, 952, NULL, NULL, 'blackhole', 783, 784),
(1162, 966, NULL, NULL, 'error', 823, 824),
(1163, 966, NULL, NULL, 'appError', 825, 826),
(1164, 966, NULL, NULL, 'blackhole', 827, 828),
(1165, 262, NULL, NULL, 'error', 463, 464),
(1166, 262, NULL, NULL, 'appError', 465, 466),
(1167, 262, NULL, NULL, 'blackhole', 467, 468),
(1174, 181, NULL, NULL, 'contact_us', 37, 38),
(1177, 181, NULL, NULL, 'error', 39, 40),
(1178, 181, NULL, NULL, 'appError', 41, 42),
(1179, 181, NULL, NULL, 'blackhole', 43, 44),
(1180, 989, NULL, NULL, 'error', 869, 870),
(1181, 989, NULL, NULL, 'appError', 871, 872),
(1182, 989, NULL, NULL, 'blackhole', 873, 874),
(1183, 1008, NULL, NULL, 'error', 923, 924),
(1184, 1008, NULL, NULL, 'appError', 925, 926),
(1185, 1008, NULL, NULL, 'blackhole', 927, 928),
(1186, 186, NULL, NULL, 'error', 97, 98),
(1187, 186, NULL, NULL, 'appError', 99, 100),
(1188, 186, NULL, NULL, 'blackhole', 101, 102),
(1189, 1036, NULL, NULL, 'error', 983, 984),
(1190, 1036, NULL, NULL, 'appError', 985, 986),
(1191, 1036, NULL, NULL, 'blackhole', 987, 988),
(1192, 194, NULL, NULL, 'error', 153, 154),
(1193, 194, NULL, NULL, 'appError', 155, 156),
(1194, 194, NULL, NULL, 'blackhole', 157, 158),
(1195, 719, NULL, NULL, 'error', 641, 642),
(1196, 719, NULL, NULL, 'appError', 643, 644),
(1197, 719, NULL, NULL, 'blackhole', 645, 646),
(1198, 206, NULL, NULL, 'error', 194, 195),
(1199, 206, NULL, NULL, 'appError', 196, 197),
(1200, 206, NULL, NULL, 'blackhole', 198, 199),
(1201, 211, NULL, NULL, 'error', 240, 241),
(1202, 211, NULL, NULL, 'appError', 242, 243),
(1203, 211, NULL, NULL, 'blackhole', 244, 245),
(1204, 219, NULL, NULL, 'error', 310, 311),
(1205, 219, NULL, NULL, 'appError', 312, 313),
(1206, 219, NULL, NULL, 'blackhole', 314, 315),
(1207, 742, NULL, NULL, 'error', 680, 681),
(1208, 742, NULL, NULL, 'appError', 682, 683),
(1209, 742, NULL, NULL, 'blackhole', 684, 685),
(1210, 181, NULL, NULL, 'about_us', 45, 46),
(1213, 181, NULL, NULL, 'news', 47, 48),
(1215, 181, NULL, NULL, 'gallery', 49, 50),
(1219, 893, NULL, NULL, 'admin_featured', 745, 746),
(1220, 893, NULL, NULL, 'admin_unfeature', 747, 748),
(1221, 181, NULL, NULL, 'what_we_do', 51, 52),
(1222, 181, NULL, NULL, 'projects', 53, 54),
(1223, 181, NULL, NULL, 'careers', 55, 56);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE `aros` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) UNSIGNED DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Role', 1, '', 1, 10),
(2, 1, 'User', 1, '', 2, 3),
(4, NULL, 'Role', 2, '', 11, 14),
(5, 4, 'User', 3, '', 12, 13),
(6, 1, 'User', 2, '', 4, 5),
(7, 1, 'User', 2, '', 6, 7),
(8, NULL, 'Role', 3, '', 15, 18),
(9, 8, 'User', 2, '', 16, 17),
(10, 1, 'User', 3, '', 8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE `aros_acos` (
  `id` int(10) UNSIGNED NOT NULL,
  `aro_id` int(10) UNSIGNED NOT NULL,
  `aco_id` int(10) UNSIGNED NOT NULL,
  `_create` char(2) NOT NULL DEFAULT '0',
  `_read` char(2) NOT NULL DEFAULT '0',
  `_update` char(2) NOT NULL DEFAULT '0',
  `_delete` char(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(13, 1, 180, '1', '1', '1', '1'),
(15, 4, 197, '1', '1', '1', '1'),
(16, 4, 198, '1', '1', '1', '1'),
(17, 4, 274, '1', '1', '1', '1'),
(18, 4, 272, '1', '1', '1', '1'),
(19, 4, 271, '1', '1', '1', '1'),
(20, 4, 278, '1', '1', '1', '1'),
(21, 4, 277, '1', '1', '1', '1'),
(22, 4, 276, '1', '1', '1', '1'),
(23, 4, 242, '1', '1', '1', '1'),
(24, 4, 244, '1', '1', '1', '1'),
(25, 4, 243, '1', '1', '1', '1'),
(26, 4, 240, '1', '1', '1', '1'),
(27, 4, 241, '1', '1', '1', '1'),
(28, 4, 246, '1', '1', '1', '1'),
(29, 4, 279, '1', '1', '1', '1'),
(30, 4, 245, '1', '1', '1', '1'),
(31, 4, 250, '1', '1', '1', '1'),
(32, 4, 259, '1', '1', '1', '1'),
(33, 4, 260, '1', '1', '1', '1'),
(34, 4, 258, '1', '1', '1', '1'),
(35, 4, 261, '1', '1', '1', '1'),
(36, 4, 249, '1', '1', '1', '1'),
(37, 4, 280, '1', '1', '1', '1'),
(38, 4, 248, '1', '1', '1', '1'),
(40, 4, 266, '1', '1', '1', '1'),
(41, 4, 263, '1', '1', '1', '1'),
(42, 4, 264, '1', '1', '1', '1'),
(43, 4, 269, '1', '1', '1', '1'),
(44, 4, 281, '1', '1', '1', '1'),
(45, 4, 268, '1', '1', '1', '1'),
(46, 4, 185, '1', '1', '1', '1'),
(48, 4, 282, '1', '1', '1', '1'),
(49, 4, 184, '1', '1', '1', '1'),
(50, 4, 183, '1', '1', '1', '1'),
(51, 4, 187, '1', '1', '1', '1'),
(52, 4, 188, '1', '1', '1', '1'),
(53, 4, 193, '1', '1', '1', '1'),
(54, 4, 283, '1', '1', '1', '1'),
(55, 4, 192, '1', '1', '1', '1'),
(56, 4, 201, '1', '1', '1', '1'),
(57, 4, 196, '1', '1', '1', '1'),
(58, 4, 199, '1', '1', '1', '1'),
(59, 4, 204, '1', '1', '1', '1'),
(60, 4, 284, '1', '1', '1', '1'),
(61, 4, 203, '1', '1', '1', '1'),
(62, 4, 195, '1', '1', '1', '1'),
(63, 4, 209, '1', '1', '1', '1'),
(64, 4, 217, '1', '1', '1', '1'),
(65, 4, 237, '1', '1', '1', '1'),
(66, 4, 222, '1', '1', '1', '1'),
(70, 8, 185, '1', '1', '1', '1'),
(72, 8, 183, '1', '1', '1', '1'),
(74, 8, 884, '1', '1', '1', '1'),
(80, 8, 889, '1', '1', '1', '1'),
(81, 8, 890, '1', '1', '1', '1'),
(82, 8, 579, '1', '1', '1', '1'),
(83, 8, 184, '1', '1', '1', '1'),
(84, 8, 541, '1', '1', '1', '1'),
(85, 8, 505, '1', '1', '1', '1'),
(86, 8, 427, '1', '1', '1', '1'),
(87, 8, 542, '1', '1', '1', '1'),
(88, 8, 540, '1', '1', '1', '1'),
(89, 8, 356, '1', '1', '1', '1'),
(90, 8, 282, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `category` varchar(11) DEFAULT NULL,
  `banner_image` varchar(160) NOT NULL,
  `title` varchar(140) NOT NULL,
  `description` text NOT NULL,
  `url_description` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `add_banner` varchar(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `category`, `banner_image`, `title`, `description`, `url_description`, `url`, `add_banner`, `created`, `modified`) VALUES
(1, NULL, '', 'Home', '', '', '', '1', '2017-09-06 16:56:59', '2017-09-06 16:56:59'),
(2, '1', 'IFC_11.jpg', 'World <br />Bank Offices', '', 'View Project', 'projects/construction-of-offices-for-world-bank-group-ifc', '0', '2017-09-06 16:59:19', '2017-09-12 14:04:22'),
(3, '1', 'DSTV8.jpg', 'Multichoice <br />Head Office ', '', 'View Project', 'projects/multichoice-ghana-corporate-head-office', '0', '2017-09-06 17:00:25', '2017-09-12 14:04:37'),
(4, NULL, 'about-1.jpg', 'About us', '', '', '', '0', '2017-09-06 20:27:37', '2017-09-08 17:20:58'),
(5, NULL, 'services.jpg', 'What we do', '', '', '', '0', '2017-09-07 03:55:56', '2017-09-08 17:28:39'),
(6, NULL, 'projects.jpg', 'Projects', '', '', '', '0', '2017-09-07 10:33:25', '2017-09-08 17:23:51'),
(7, NULL, 'careers-0.jpg', 'Careers', '', '', '', '0', '2017-09-07 16:21:52', '2017-09-08 17:21:34'),
(8, NULL, 'news.jpg', 'News', '', '', '', '0', '2017-09-07 16:21:53', '2017-09-08 17:26:40'),
(9, NULL, 'contact-2.jpg', 'Contact us', '', '', '', '0', '2017-09-07 19:43:27', '2017-09-08 17:20:24'),
(10, '1', 'Home_page_H_Office_8.jpg', 'Micheletti <br />Head Office', '', 'View Project', 'projects/micheletti-head-office', '0', '2017-09-12 12:48:00', '2017-09-12 14:04:44'),
(11, '1', 'KIA_T3_4.jpg', 'K. I. A. <br />Terminal 3', '', 'View Project', 'projects/kotoka-international-airport-terminal-3', '0', '2017-09-12 12:50:11', '2017-09-12 14:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rght` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(160) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `lft`, `rght`, `name`, `slug`, `description`, `content`, `image`, `created`, `modified`) VALUES
(1, NULL, 1, 2, 'Industrial', 'industrial', '', '', '', '2017-09-07 10:46:50', '2017-09-07 10:46:50'),
(2, NULL, 3, 4, 'Commercial', 'commercial', '', '', '', '2017-09-07 10:47:02', '2017-09-07 10:47:02'),
(3, NULL, 5, 6, 'Residential', 'residential', '', '', '', '2017-09-07 10:47:11', '2017-09-07 10:47:11'),
(5, NULL, 7, 8, 'Mix use', 'mix-use', '', '', '', '2017-09-07 10:47:35', '2017-09-07 10:47:35');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `event_image` varchar(140) DEFAULT NULL,
  `file` varchar(160) NOT NULL,
  `title` varchar(140) NOT NULL,
  `summary` text NOT NULL,
  `content` longtext NOT NULL,
  `event_date` date DEFAULT NULL,
  `time` time NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `link_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img_thumb` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `slug`, `link_id`, `name`, `description`, `img_thumb`, `created`, `modified`) VALUES
(1, 'refurbishment-of-access-bank-head-office', 30, 'Refurbishment of Access Bank Head Office', '', '', '2017-09-12 10:22:27', '2017-09-12 10:22:27'),
(2, 'amaris-container-terminal', 31, 'Amaris Container Terminal', '', '', '2017-09-12 10:28:00', '2017-09-12 10:28:00'),
(3, 'beaufort', 32, 'Beaufort', '', '', '2017-09-12 10:30:02', '2017-09-12 10:30:02'),
(4, 'belvedere-court', 33, 'Belvedere Court', '', '', '2017-09-12 10:33:34', '2017-09-12 10:33:34'),
(5, 'casa-trasacco-showroom', 34, 'Casa Trasacco showroom', '', '', '2017-09-12 10:36:25', '2017-09-12 10:36:25'),
(6, 'el-wak-sports-stadium', 35, 'El- Wak Sports Stadium', '', '', '2017-09-12 10:39:06', '2017-09-12 10:39:06'),
(7, 'fan-milk', 36, 'Fan Milk', '', '', '2017-09-12 10:43:34', '2017-09-12 10:43:34'),
(8, 'rehabilitation-of-the-hockey-park-complex', 37, 'Rehabilitation of the Hockey Park Complex ', '', '', '2017-09-12 10:46:29', '2017-09-12 10:46:29'),
(9, 'construction-of-offices-for-world-bank-group-ifc', 38, 'Construction of Offices for World Bank Group (IFC)', '', '', '2017-09-12 10:56:41', '2017-09-12 10:56:41'),
(10, 'kotoka-international-airport-terminal-3', 39, 'Kotoka International Airport Terminal 3', '', '', '2017-09-12 11:04:23', '2017-09-12 11:04:23'),
(11, 'construction-of-switch-data-centre-s-for-mtn', 40, 'Construction of Switch & Data Centreâ€™s for MTN', '', '', '2017-09-12 11:10:55', '2017-09-12 11:10:55'),
(12, 'multichoice-ghana-corporate-head-office', 41, 'Multichoice Ghana Corporate Head Office', '', '', '2017-09-12 11:13:24', '2017-09-12 11:13:24'),
(13, 'ndk-tema', 42, 'NDK Tema', '', '', '2017-09-12 11:16:05', '2017-09-12 11:16:05'),
(14, 'one-airport-square', 43, 'One Airport Square', '', '', '2017-09-12 11:18:34', '2017-09-12 11:18:34'),
(15, 'olam-bran-warehouse-and-mill-factory-expansion', 44, 'OLAM Bran warehouse and Mill factory expansion', '', '', '2017-09-12 11:23:02', '2017-09-12 11:23:02'),
(16, 'reconstruction-of-showroom-and-office-space-orca-deco', 45, 'Reconstruction of Showroom and Office Space Orca Deco', '', '', '2017-09-12 11:25:16', '2017-09-12 11:25:16'),
(17, 'trevi-towers-luxury', 46, 'Trevi Towers â€“ Luxury ', '', '', '2017-09-12 12:05:10', '2017-09-12 12:05:10'),
(18, 'red-bull-soccer-academy', 47, 'Red Bull Soccer Academy', '', '', '2017-09-12 12:07:22', '2017-09-12 12:07:22'),
(19, 'rehabilitation-of-ohene-djan-sport-stadium', 48, 'Rehabilitation of Ohene Djan Sport Stadium', '', '', '2017-09-12 12:09:44', '2017-09-12 12:09:44'),
(20, 'micheletti-head-office', 49, 'Micheletti Head Office   ', '', '', '2017-09-12 12:15:27', '2017-09-12 12:15:27'),
(21, 'interior-design', 50, 'Interior Design', '', '', '2017-09-12 12:23:47', '2017-09-12 12:23:47'),
(22, 'refurbishment-of-access-bank-head-office-2', 30, 'Refurbishment of Access Bank Head Office', '', '', '2017-09-12 13:06:39', '2017-09-12 13:06:39'),
(23, 'villaggio-prima-vera-luxury-apartments', 51, 'Villaggio â€˜Prima Veraâ€™ Luxury Apartments', '', '', '2017-09-12 16:33:14', '2017-09-12 16:33:14'),
(24, 'resources', 10, 'Resources', '', '', '2017-09-12 21:07:14', '2017-09-12 21:07:14');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img_file` varchar(255) NOT NULL,
  `img_thumb` varchar(100) NOT NULL,
  `default_img` tinyint(1) NOT NULL DEFAULT '0',
  `feature` varchar(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `slug`, `gallery_id`, `name`, `img_file`, `img_thumb`, `default_img`, `feature`, `created`, `modified`) VALUES
(1, '', 1, '', 'access_bank_1.jpg', '', 0, '0', '2017-09-12 10:23:25', '2017-09-12 10:23:25'),
(2, '', 1, '', 'access_bank_2.jpg', '', 0, '0', '2017-09-12 10:23:25', '2017-09-12 10:23:25'),
(3, '', 1, '', 'access_bank_3.jpg', '', 0, '0', '2017-09-12 10:23:25', '2017-09-12 10:23:25'),
(4, '', 1, '', 'access_bank_7.jpg', '', 0, '0', '2017-09-12 10:23:26', '2017-09-12 10:23:26'),
(5, '', 1, '', 'access_bank_8.jpg', '', 0, '0', '2017-09-12 10:23:26', '2017-09-12 10:23:26'),
(6, '', 2, '', 'Amaris_1.jpg', '', 0, '0', '2017-09-12 10:28:46', '2017-09-12 10:28:46'),
(7, '', 2, '', 'Amaris_2.jpg', '', 0, '0', '2017-09-12 10:28:47', '2017-09-12 10:28:47'),
(8, '', 2, '', 'Amaris_3.jpg', '', 0, '0', '2017-09-12 10:28:47', '2017-09-12 10:28:47'),
(9, '', 2, '', 'Amaris_6.jpg', '', 0, '0', '2017-09-12 10:28:48', '2017-09-12 10:28:48'),
(10, '', 2, '', 'Amaris_7.jpg', '', 0, '0', '2017-09-12 10:28:48', '2017-09-12 10:28:48'),
(11, '', 3, '', 'beaufort_5.jpg', '', 0, '0', '2017-09-12 10:30:41', '2017-09-12 10:30:41'),
(12, '', 3, '', 'beaufort_1.jpg', '', 0, '0', '2017-09-12 10:30:42', '2017-09-12 10:30:42'),
(13, '', 3, '', 'beaufort_2.jpg', '', 0, '0', '2017-09-12 10:30:42', '2017-09-12 10:30:42'),
(14, '', 3, '', 'beaufort_3.jpg', '', 0, '0', '2017-09-12 10:30:42', '2017-09-12 10:30:42'),
(15, '', 3, '', 'Beaufort_6.jpg', '', 0, '0', '2017-09-12 10:30:43', '2017-09-12 10:30:43'),
(16, '', 5, '', 'Casa_1.jpg', '', 0, '0', '2017-09-12 10:36:50', '2017-09-12 10:36:50'),
(17, '', 5, '', 'Casa_2.jpg', '', 0, '0', '2017-09-12 10:36:50', '2017-09-12 10:36:50'),
(18, '', 5, '', 'Casa_3.jpg', '', 0, '0', '2017-09-12 10:36:50', '2017-09-12 10:36:50'),
(19, '', 5, '', 'Casa_5.jpg', '', 0, '0', '2017-09-12 10:36:51', '2017-09-12 10:36:51'),
(20, '', 4, '', 'Belvedere_1.jpg', '', 0, '0', '2017-09-12 10:37:38', '2017-09-12 10:37:38'),
(21, '', 4, '', 'Belvedere_5.jpg', '', 0, '0', '2017-09-12 10:37:39', '2017-09-12 10:37:39'),
(22, '', 4, '', 'Belvedere.jpg', '', 0, '0', '2017-09-12 10:37:39', '2017-09-12 10:37:39'),
(23, '', 6, '', 'el_wak_1.JPG', '', 0, '0', '2017-09-12 10:39:32', '2017-09-12 10:39:32'),
(24, '', 6, '', 'el_wak_3.JPG', '', 0, '0', '2017-09-12 10:39:32', '2017-09-12 10:39:32'),
(25, '', 7, '', 'Fan_Milk_1.JPG', '', 0, '0', '2017-09-12 10:44:05', '2017-09-12 10:44:05'),
(26, '', 8, '', 'hockey_1.jpg', '', 0, '0', '2017-09-12 10:47:11', '2017-09-12 10:47:11'),
(27, '', 8, '', 'hockey_3.jpg', '', 0, '0', '2017-09-12 10:47:12', '2017-09-12 10:47:12'),
(28, '', 8, '', 'hockey_5.jpg', '', 0, '0', '2017-09-12 10:47:12', '2017-09-12 10:47:12'),
(29, '', 8, '', 'hockey_8.jpg', '', 0, '0', '2017-09-12 10:47:13', '2017-09-12 10:47:13'),
(30, '', 8, '', 'hockey_12.jpg', '', 0, '0', '2017-09-12 10:47:13', '2017-09-12 10:47:13'),
(31, '', 9, '', 'IFC_9.jpg', '', 0, '0', '2017-09-12 10:57:27', '2017-09-12 10:57:27'),
(32, '', 9, '', 'IFC_10.jpg', '', 0, '0', '2017-09-12 10:57:28', '2017-09-12 10:57:28'),
(33, '', 9, '', 'IFC_11.jpg', '', 0, '0', '2017-09-12 10:57:28', '2017-09-12 10:57:28'),
(34, '', 9, '', 'IFC_3.jpg', '', 0, '0', '2017-09-12 10:57:28', '2017-09-12 10:57:28'),
(35, '', 9, '', 'IFC_5.jpg', '', 0, '0', '2017-09-12 10:57:28', '2017-09-12 10:57:28'),
(36, '', 10, '', 'KIA_T3_4.jpg', '', 0, '0', '2017-09-12 11:05:55', '2017-09-12 11:05:55'),
(37, '', 10, '', 'KIA_T3_1.jpg', '', 0, '0', '2017-09-12 11:05:56', '2017-09-12 11:05:56'),
(38, '', 10, '', 'KIA_T3_2.jpg', '', 0, '0', '2017-09-12 11:05:56', '2017-09-12 11:05:56'),
(39, '', 10, '', 'KIA_T3_3.jpg', '', 0, '0', '2017-09-12 11:05:56', '2017-09-12 11:05:56'),
(40, '', 10, '', 'KIA_T3_5.jpg', '', 0, '0', '2017-09-12 11:05:57', '2017-09-12 11:05:57'),
(41, '', 11, '', 'MTN_1.JPG', '', 0, '0', '2017-09-12 11:11:50', '2017-09-12 11:11:50'),
(42, '', 11, '', 'MTN_2.JPG', '', 0, '0', '2017-09-12 11:11:50', '2017-09-12 11:11:50'),
(43, '', 11, '', 'MTN_3.JPG', '', 0, '0', '2017-09-12 11:11:51', '2017-09-12 11:11:51'),
(44, '', 11, '', 'MTN_4.JPG', '', 0, '0', '2017-09-12 11:11:51', '2017-09-12 11:11:51'),
(45, '', 11, '', 'MTN_5.JPG', '', 0, '0', '2017-09-12 11:11:52', '2017-09-12 11:11:52'),
(46, '', 12, '', 'DSTV_1.jpg', '', 0, '0', '2017-09-12 11:14:27', '2017-09-12 11:14:27'),
(47, '', 12, '', 'DSTV_3.jpg', '', 0, '0', '2017-09-12 11:14:28', '2017-09-12 11:14:28'),
(48, '', 12, '', 'DSTV_4.jpg', '', 0, '0', '2017-09-12 11:14:28', '2017-09-12 11:14:28'),
(49, '', 12, '', 'DSTV_6.jpg', '', 0, '0', '2017-09-12 11:14:28', '2017-09-12 11:14:28'),
(50, '', 12, '', 'DSTV_7.jpg', '', 0, '0', '2017-09-12 11:14:29', '2017-09-12 11:14:29'),
(51, '', 13, '', 'NDK_2.JPG', '', 0, '0', '2017-09-12 11:16:43', '2017-09-12 11:16:43'),
(52, '', 13, '', 'NDK_4.JPG', '', 0, '0', '2017-09-12 11:16:44', '2017-09-12 11:16:44'),
(53, '', 13, '', 'NDK_7.JPG', '', 0, '0', '2017-09-12 11:16:44', '2017-09-12 11:16:44'),
(54, '', 13, '', 'NDK_8.JPG', '', 0, '0', '2017-09-12 11:16:45', '2017-09-12 11:16:45'),
(55, '', 13, '', 'NDK_9.JPG', '', 0, '0', '2017-09-12 11:16:45', '2017-09-12 11:16:45'),
(56, '', 14, '', 'OAS_8_copy.jpg', '', 0, '0', '2017-09-12 11:19:36', '2017-09-12 11:19:36'),
(57, '', 14, '', 'OAS2.jpg', '', 0, '0', '2017-09-12 11:19:36', '2017-09-12 11:19:36'),
(58, '', 14, '', 'OAS7.jpg', '', 0, '0', '2017-09-12 11:19:37', '2017-09-12 11:19:37'),
(59, '', 14, '', 'OAS12.jpg', '', 0, '0', '2017-09-12 11:19:37', '2017-09-12 11:19:37'),
(60, '', 14, '', 'OAS15.jpg', '', 0, '0', '2017-09-12 11:19:37', '2017-09-12 11:19:37'),
(61, '', 14, '', 'OAS17.jpg', '', 0, '0', '2017-09-12 11:19:38', '2017-09-12 11:19:38'),
(62, '', 14, '', 'OAS_5.jpg', '', 0, '0', '2017-09-12 11:19:38', '2017-09-12 11:19:38'),
(63, '', 15, '', 'olam_4.jpg', '', 0, '0', '2017-09-12 11:23:32', '2017-09-12 11:23:32'),
(64, '', 15, '', 'olam_6.jpg', '', 0, '0', '2017-09-12 11:23:33', '2017-09-12 11:23:33'),
(65, '', 15, '', 'olam_8.jpg', '', 0, '0', '2017-09-12 11:23:33', '2017-09-12 11:23:33'),
(66, '', 16, '', 'Orca_7.JPG', '', 0, '0', '2017-09-12 11:26:22', '2017-09-12 11:26:22'),
(67, '', 16, '', 'Orca_2.jpg', '', 0, '0', '2017-09-12 11:26:23', '2017-09-12 11:26:23'),
(68, '', 16, '', 'Orca_5.jpg', '', 0, '0', '2017-09-12 11:26:23', '2017-09-12 11:26:23'),
(69, '', 16, '', 'Orca_8.jpg', '', 0, '0', '2017-09-12 11:26:23', '2017-09-12 11:26:23'),
(70, '', 17, '', 'Shashie_4.jpg', '', 0, '0', '2017-09-12 12:06:08', '2017-09-12 12:06:08'),
(71, '', 17, '', 'Shashie_5.jpg', '', 0, '0', '2017-09-12 12:06:08', '2017-09-12 12:06:08'),
(72, '', 17, '', 'Shashie_8.JPG', '', 0, '0', '2017-09-12 12:06:09', '2017-09-12 12:06:09'),
(73, '', 18, '', 'Red_Bull_6.JPG', '', 0, '0', '2017-09-12 12:08:06', '2017-09-12 12:08:06'),
(74, '', 18, '', 'Red_Bull_1.JPG', '', 0, '0', '2017-09-12 12:08:06', '2017-09-12 12:08:06'),
(75, '', 18, '', 'Red_Bull_4.JPG', '', 0, '0', '2017-09-12 12:08:07', '2017-09-12 12:08:07'),
(76, '', 18, '', 'Red_Bull_5.JPG', '', 0, '0', '2017-09-12 12:08:07', '2017-09-12 12:08:07'),
(77, '', 18, '', 'Red_Bull_9.JPG', '', 0, '0', '2017-09-12 12:08:08', '2017-09-12 12:08:08'),
(78, '', 19, '', 'Stadium_1.jpg', '', 0, '0', '2017-09-12 12:10:07', '2017-09-12 12:10:07'),
(79, '', 19, '', 'stadium_3.jpg', '', 0, '0', '2017-09-12 12:10:08', '2017-09-12 12:10:08'),
(80, '', 20, '', 'IMG_6520c.jpg', '', 0, '0', '2017-09-12 12:19:53', '2017-09-12 12:19:53'),
(81, '', 20, '', 'IMG_6736c.jpg', '', 0, '0', '2017-09-12 12:19:54', '2017-09-12 12:19:54'),
(82, '', 20, '', 'IMG_6749c.jpg', '', 0, '0', '2017-09-12 12:19:54', '2017-09-12 12:19:54'),
(83, '', 20, '', 'IMG_9047.JPG', '', 0, '0', '2017-09-12 12:19:54', '2017-09-12 12:19:54'),
(84, '', 20, '', 'IMG_9051.JPG', '', 0, '0', '2017-09-12 12:19:55', '2017-09-12 12:19:55'),
(85, '', 20, '', 'IMG_9061.JPG', '', 0, '0', '2017-09-12 12:19:55', '2017-09-12 12:19:55'),
(86, '', 20, '', 'IMG_9063.JPG', '', 0, '0', '2017-09-12 12:19:56', '2017-09-12 12:19:56'),
(87, '', 21, '', 'OAS19.jpg', '', 0, '0', '2017-09-12 12:27:10', '2017-09-12 12:27:10'),
(88, '', 21, '', 'Casa_3-0.jpg', '', 0, '0', '2017-09-12 12:27:11', '2017-09-12 12:27:11'),
(89, '', 21, '', 'Shashie_5-0.jpg', '', 0, '0', '2017-09-12 12:27:11', '2017-09-12 12:27:11'),
(90, '', 23, '', 'villaggio_1.jpg', '', 0, '0', '2017-09-12 16:34:05', '2017-09-12 16:34:05'),
(91, '', 23, '', 'villaggio_2.jpg', '', 0, '0', '2017-09-12 16:34:06', '2017-09-12 16:34:06'),
(92, '', 23, '', 'villaggio_3.jpg', '', 0, '0', '2017-09-12 16:34:06', '2017-09-12 16:34:06'),
(93, '', 23, '', 'villaggio_4.jpg', '', 0, '0', '2017-09-12 16:34:07', '2017-09-12 16:34:07'),
(94, '', 24, '', 'image008.png', '', 0, '0', '2017-09-12 21:08:29', '2017-09-12 21:08:29'),
(95, '', 24, '', 'image009.png', '', 0, '0', '2017-09-12 21:08:30', '2017-09-12 21:08:30'),
(96, '', 24, '', 'image010.png', '', 0, '0', '2017-09-12 21:08:31', '2017-09-12 21:08:31'),
(97, '', 24, '', 'image011.png', '', 0, '0', '2017-09-12 21:08:32', '2017-09-12 21:08:32'),
(98, '', 24, '', 'image012.png', '', 0, '0', '2017-09-12 21:08:33', '2017-09-12 21:08:33'),
(99, '', 24, '', 'image013.png', '', 0, '0', '2017-09-12 21:08:34', '2017-09-12 21:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `title` varchar(255) DEFAULT NULL,
  `story` text,
  `summary` text,
  `publish` int(11) NOT NULL DEFAULT '1',
  `archive` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `image_caption` varchar(255) NOT NULL,
  `file` varchar(160) NOT NULL,
  `image_1` varchar(255) DEFAULT NULL,
  `image_2` varchar(255) DEFAULT NULL,
  `image_3` varchar(255) DEFAULT NULL,
  `image_4` varchar(255) NOT NULL,
  `mp3` varchar(255) NOT NULL,
  `category` varchar(20) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `news_date` date DEFAULT NULL,
  `type` varchar(1) NOT NULL DEFAULT '0',
  `add_news` varchar(1) NOT NULL DEFAULT '0',
  `download_only` varchar(1) NOT NULL DEFAULT '0',
  `media` varchar(1) NOT NULL DEFAULT '0',
  `featured` int(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `timestamp` varchar(160) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`title`, `story`, `summary`, `publish`, `archive`, `image`, `banner`, `image_caption`, `file`, `image_1`, `image_2`, `image_3`, `image_4`, `mp3`, `category`, `id`, `slug`, `news_date`, `type`, `add_news`, `download_only`, `media`, `featured`, `created`, `modified`, `timestamp`) VALUES
('This is a test news', '<p>The slide container houses each individual slide. In our above markup example, we also placed the buttons in here, so we can anchor them to the center edge of the slide container. However, they can be moved anywhere within the data-orbit wrapper.</p>\r\n\r\n<p>The slide container houses each individual slide. In our above markup example, we also placed the buttons in here, so we can anchor them to the center edge of the slide container. However, they can be moved anywhere within the data-orbit wrapper.</p>\r\n\r\n<p>The slide container houses each individual slide. In our above markup example, we also placed the buttons in here, so we can anchor them to the center edge of the slide container. However, they can be moved anywhere within the data-orbit wrapper.</p>\r\n', 'The slide container houses each individual slide. In our above markup example, we also placed the buttons in here, so we can anchor them to the center edge of the slide container. However, they can be moved anywhere within the data-orbit wrapper.', 1, 1, 'banner_4.jpg', NULL, '', '', NULL, NULL, NULL, '', '', NULL, 1, 'this-is-a-test-news', NULL, '0', '0', '0', '0', 1, '2017-10-04 16:23:39', '2017-10-04 16:42:18', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` decimal(8,2) UNSIGNED DEFAULT '0.00',
  `size` int(11) DEFAULT NULL,
  `order_item_count` int(11) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `tax` decimal(8,2) DEFAULT NULL,
  `shipping` decimal(8,2) DEFAULT NULL,
  `total` decimal(8,2) UNSIGNED DEFAULT NULL,
  `order_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authorization` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `weight` decimal(8,2) UNSIGNED DEFAULT '0.00',
  `price` decimal(8,2) UNSIGNED DEFAULT NULL,
  `subtotal` decimal(8,2) UNSIGNED DEFAULT NULL,
  `productmod_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `page_contents`
--

CREATE TABLE `page_contents` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category` varchar(11) DEFAULT NULL,
  `category_id` int(100) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `summary` longtext NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `icon` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `page_image` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `page_type` varchar(1) NOT NULL DEFAULT '0',
  `page_style` varchar(100) NOT NULL,
  `add_content` varchar(1) NOT NULL DEFAULT '0',
  `action` varchar(20) DEFAULT NULL,
  `publish` varchar(1) NOT NULL DEFAULT '0',
  `feature` varchar(1) NOT NULL DEFAULT '0',
  `parent` varchar(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `page_contents`
--

INSERT INTO `page_contents` (`id`, `slug`, `category`, `category_id`, `publish_date`, `title`, `sub_title`, `content`, `summary`, `position`, `photo`, `url`, `color`, `icon`, `logo`, `page_image`, `file`, `page_type`, `page_style`, `add_content`, `action`, `publish`, `feature`, `parent`, `created`, `modified`) VALUES
(1, 'home', NULL, NULL, NULL, 'Home', '', '', 'Micheletti & Co. Ltd. Is one of Ghana\'s leading Civil Engineering and Building Construction Companies operating for over 50 years in the range of skills and resources and provides clients with a comprehensive service throughout the entire life cycle of the projects in the built environments.', NULL, NULL, 'about-us', NULL, '', '', '', '', '1', '', '0', NULL, '1', '0', '0', '2017-09-06 19:47:49', '2017-09-06 19:47:49'),
(2, 'about-us', NULL, NULL, NULL, 'About Us', '', '', '', NULL, NULL, NULL, NULL, '', '', '', '', '2', '', '1', NULL, '1', '0', '0', '2017-09-06 20:43:04', '2017-09-06 20:43:04'),
(3, 'core-values', '2', NULL, NULL, 'Core Values', '', '', '', NULL, NULL, NULL, NULL, '', '', '', '', '2', '2', '1', NULL, '0', '0', '1', '2017-09-06 20:45:15', '2017-09-06 20:45:15'),
(4, 'we-plan', '3', NULL, NULL, 'We Plan', '', '', 'We PLAN all aspect of our clients\' projects, conducting feasibility studies and impact analysis covering technical, logistical, legal, environmental and financial considerations.', NULL, NULL, NULL, NULL, '', '', '', '', '2', '2', '1', NULL, '0', '0', '0', '2017-09-06 20:51:52', '2017-09-06 20:51:52'),
(5, 'we-design', '3', NULL, NULL, 'We Design', '', '', 'We DESIGN building and civil structures, develop cutting edge solutions and combine them with tried and tested technologies to achieve an optimal result.', NULL, NULL, NULL, NULL, '', '', '', '', '2', '2', '1', NULL, '0', '0', '0', '2017-09-06 20:52:09', '2017-09-06 20:52:09'),
(6, 'we-build', '3', NULL, NULL, 'We Build', '', '', '', NULL, NULL, NULL, NULL, '', '', '', '', '2', '2', '1', NULL, '0', '0', '0', '2017-09-06 20:52:21', '2017-09-06 20:52:21'),
(7, 'about-us-history', '2', NULL, NULL, 'About Us & History', '<strong>History</strong><br />Building Ghana since 1955', '<p>\n					Micheletti & Co. Ltd. Is one of Ghana\'s leading Civil Engineering and Building Construction Companies operating for over 50 years in the range of skills and resources and provides clients with a comprehensive service throughout the entire life cycle of the projects in the built environments.\n					<br /><br />\n					The company was founded in Ghana in 1955 by F. Micheletti, an Italian. In 1963, the company was incorporated as Micheletti & Co. Ltd. A private limited liability company under the Companies Code 1963 (Act 179). As a result of improved performance over the years the company obtained government certification under Financial Class \'D1\' and \'K1\' Ministry of Works and Housing Cert. registration # D 00425A.\n					<br /><br />\n					In 2004. Micheletti & Co. Limited was reborn under new shareholders and management. As a result of the new ownership, the company is now part of a broader group of companies engaged in Civil Engineering, Construction and Construction Products and Estate Development. This link provided by the new ownership offers significant benefits to both the company and potential Clients through Strategic Alliance. As a brand, the name Micheletti has been maintained over more than fifty years of the company\'s existence.\n			    </p>', '', NULL, NULL, NULL, NULL, 'logo_sp.png', '', '', '', '2', '1', '1', NULL, '0', '0', '1', '2017-09-06 21:25:50', '2017-09-06 21:25:50'),
(8, 'management-team', '2', NULL, NULL, 'Management Team', '', '', '', NULL, NULL, NULL, NULL, '', '', '', '', '2', '3', '1', NULL, '0', '0', '1', '2017-09-06 21:26:52', '2017-09-06 21:26:52'),
(9, 'health-safety', '2', NULL, NULL, 'Health & Safety', '', '', '', NULL, NULL, NULL, NULL, '', '', '', '', '2', '1', '1', NULL, '0', '0', '1', '2017-09-06 21:27:29', '2017-09-06 21:27:29'),
(10, 'resources-2', '2', NULL, NULL, 'Resources', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', NULL, NULL, NULL, NULL, '', '', '', '', '2', '4', '1', NULL, '0', '0', '1', '2017-09-06 21:27:42', '2017-09-12 21:25:32'),
(11, 'jimmy-castagna', '8', NULL, NULL, 'Jimmy Castagna', '', '<p>Jimmy Castagna began his career in the construction industry in 1979 after earning his diploma in construction technology. Since then he has had the privilege of working on many iconic projects in Nigeria, Italy, and Ghana, where he has been actively working since 1995. Jimmy has a wealth of knowledge in planning and construction, knowledge which he fondly shares with both his clients and colleagues. Jimmy is result driven and enjoys the technical challenges of the new projects coming his way.</p>\r\n', '', 'Managing Director', NULL, NULL, NULL, '', '', '', '', '2', '3', '1', NULL, '0', '0', '0', '2017-09-07 01:58:40', '2017-09-07 01:58:40'),
(12, 'thomas-fraser-kwashie-senya', '8', NULL, NULL, 'Thomas Fraser Kwashie Senya', '', '<p>Mr. Thomas Fraser Kwashie Senya is a Chartered Accountant and holds an MBA in Finance from the University of Ghana Business School. He is a member of the Chartered Institute of Management Accountants, U.K. and also a member of the Institute of Chartered Accountants, Ghana. His professional career spanned both the public service and the private sector. He held senior management positions in the Controller and Accountant General&rsquo;s Department, Shell Ghana Limited, Kingdom Transport Services and Fabi Timbers Limited. He is currently the General Manager responsible for Finance and Administration in Micheletti and Company Limited. He has served on the Board of Shell Ghana Limited as Company Secretary and later as a Director. He also served on the Governing Councils of the Institute of Professional Studies (now University of Professional Studies, Accra) and St Francis College of Education. He also served as a member of the Board of Directors of State Housing Company Ltd and briefly as the Acting Managing Director. He is also the President of the Kodzi-Deta Development Union (a development oriented social group) since 2012.</p>\r\n', '', 'General Manager Administration', NULL, NULL, NULL, '', '', '', '', '2', '3', '1', NULL, '0', '0', '0', '2017-09-07 01:59:15', '2017-09-07 01:59:15'),
(13, 'dimitri-avraam', '8', NULL, NULL, 'Dimitri Avraam', '', '<p>Hon. Mr. Dimitri Avraam, a member of the Architects Registration Council and Professional bodies in Bahrain, Belgium, Cyprus and Ghana, has more than 40 years of successful experience in Building Designs and Construction in Europe, Middle East and has been providing services in Ghana since 1991. Prior to joining Micheletti &amp; Co. Ltd as the General Manager Coordination, Commercial &amp; Design , he has served Trasacco Estates Development Company Ltd, Skanska Jensen International, Skanska Africa Ltd, Wade Adams Construction Ltd , ARCHECO &ndash; Atelier d&rsquo; Architecture et d&rsquo; Urbanisme &amp; Fonds des Batiments Scolaires de l&rsquo; Etat Belge, as a Director, Consultant &amp; Principal Partner Architect. Mr Avraam holds a Masters Degree in Architecture with post-graduates in Town Planning and is a receiver of the Award of Excellence of the Town of Brussels; Prix Roi Baudouin I and the Doutrelon-Detry Award in the Water and Sanitation Sector.</p>\r\n\r\n<p>Alongside with his career in Construction, he has been Honorary Consul of Belgium in Ghana since 1992 and is serving in the positions of Dean - Honorary Consular Corps of Ghana, Chairman- Federation Internationale Des Corps et Associations Consulaires (FICAC ) Eastern Africa, Country Representative Chambre de Commerce Belgique &amp; Luxembourg &ndash; ACP Countries in Ghana and the Ghana Logistics Antenna for AWEX - Agence Wallonne &agrave; l&rsquo; Exportation. He has been a Board Director for Belgian Companies operating in Ghana such as Aviance Ghana Ltd, TRIAD Consultancy Services Ltd and Antrex Shipping NV Ghana.</p>\r\n', '', 'General Manager Coordination, Design & Commercial', NULL, NULL, NULL, '', '', '', '', '2', '3', '1', NULL, '0', '0', '0', '2017-09-07 02:00:56', '2017-09-07 02:00:56'),
(14, 'mustapha-wahabi', '8', NULL, NULL, 'Mustapha Wahabi', '', '<p>Mustapha Wahabi has a tremendous amount of experience in delivering projects in the built-environment; having worked with reputable companies in the past on some of the prestigious mining projects, infrastructure, embassies, retail and recreational facilities prior to joining Micheletti &amp; Co. Ltd. Mustapha holds an MSc in Engineering Projects Management and a BSc in Civil Engineering. Mustapha is a Certified Project Manager (PMP), a Microsoft Certified Technology Specialist in MS Project (MCTS) and a Certified Civil Engineer. Mustapha is a member of recognized professional bodies including Graduate Member of the Institution of Civil Engineers (UK), Member of the Society of Construction Law (UK) and a Corporate Member of the Institution of Engineers (Ghana). He is an astute practicing engineer with a passion for research in modular and sustainable low-cost housing. Aside managing project teams on construction projects, Mustapha is also a trainer in project management softwares, Primavera and MS Project.</p>\r\n', '', 'General Manager Construction', NULL, NULL, NULL, '', '', '', '', '2', '3', '1', NULL, '0', '0', '0', '2017-09-07 02:01:29', '2017-09-07 02:01:29'),
(15, 'lyudmyla-medlinska', '8', NULL, NULL, 'Lyudmyla Medlinska', '', '<p>Lyudmyla Medlinska joined the Micheletti team in June 2008, providing timely and skillful support to the Managing Director and Departmental Managers. She had previously worked for 7 years with the British Foreign&nbsp;Diplomatic Mission in Accra, where she developed extensive international experience, with deep understanding of diverse cultural practice. Lyudmyla earned her B.A in History from Kyiv National University in Ukraine.</p>\r\n', '', 'Managing Director Assistant', NULL, NULL, NULL, '', '', '', '', '2', '3', '1', NULL, '0', '0', '0', '2017-09-07 02:02:05', '2017-09-07 02:02:05'),
(16, 'joseph-o-kwarkye', '8', NULL, NULL, 'Joseph O. Kwarkye', '', '<p>Mr. Joseph O. Kwarkye studied Chemistry at KNUST for his first degree. After a brief stint as a science teacher both in Ghana and Nigeria, he went on to study Computer Science and graduated as a System Analyst. Later he studied Business Management specializing in Human Resource Management. He has been working in the construction industry since February 1996 and has gained a lot of experience in the industry.</p>\r\n', '', 'Human Resource Manager', NULL, NULL, NULL, '', '', '', '', '2', '3', '1', NULL, '0', '0', '0', '2017-09-07 02:02:38', '2017-09-07 02:02:38'),
(17, 'samuel-agbeyebiawo', '8', NULL, NULL, 'Samuel Agbeyebiawo', '', '<p>Samuel Agbeyebiawo is a Chartered Accountant having over twenty five years working experience, eighteen years being in the construction industry. He also worked as an Auditor for four years and well vested in taxation. He joined Micheletti and Company Limited on 1st March 2006 and currently the Financial Controller.</p>\r\n', '', 'Financial Controller', NULL, NULL, NULL, '', '', '', '', '2', '3', '1', NULL, '0', '0', '0', '2017-09-07 02:03:15', '2017-09-07 02:03:15'),
(18, 'goran-dimitrijevic', '8', NULL, NULL, 'Goran Dimitrijevic', '', '<p>Goran Dimitrijevic is our Logistics and Procurement Manager. He is overseeing Local and Foreign Procurement, Import Clearing and Stores operations. He is a seasoned veteran, with more than 20 year&rsquo;s experience in this field in Ghana. He has been with us for 11 years now, and executed Procurement for all the Company&rsquo;s projects in the said period. He is a BSc Economics from the University of Belgrade &ndash; Serbia.</p>\r\n', '', 'Logistics and Procurement Manager', NULL, NULL, NULL, '', '', '', '', '2', '3', '1', NULL, '0', '0', '0', '2017-09-07 02:03:53', '2017-09-07 02:03:53'),
(19, 'alberto-castagna', '8', NULL, NULL, 'Alberto Castagna', '', '<p>Alberto Castagna is our Yard Manager ,he is responsible of all activities and operation in the yard, including coordination of various section like carpentry shop , welding shop , precast and mechanical workshop , to make sure all our project are supported with services and material to meet their requested delivery dates. He has more than 25 year experience as a Technical Engineer and is with us since 2007.</p>\r\n', '', 'Yard Manager', NULL, NULL, NULL, '', '', '', '', '2', '3', '1', NULL, '0', '0', '0', '2017-09-07 02:04:28', '2017-09-07 02:04:28'),
(20, 'john-alex-dadzie', '8', NULL, NULL, 'John Alex Dadzie', '', '<p>John is a Chartered Surveyor with extensive working experience with main contractors both in the UK and in Ghana. He has worked on major infrastructure, civil, maintenance works and new build. His experience covers preparation of tenders, contract negotiations and general commercial management of construction works. Aside his main duties, John has passionate interest in real estate development and Public Private Partnership works. He holds a Post Graduate Diploma in Property Investment, M.Sc. Real Estate Management and B.Sc. Building Technology</p>\r\n', '', 'Commercial Manager', NULL, NULL, NULL, '', '', '', '', '2', '3', '1', NULL, '0', '0', '0', '2017-09-07 02:05:08', '2017-09-07 02:05:08'),
(21, 'joel-tetteh', '8', NULL, NULL, 'Joel Tetteh', '', '<p>Joel is a civil/structural engineer by profession. He is a corporate member of the Ghana Institution of Engineers, and Project Management Professional. He has consulted as structural engineer, and has spearheaded the design and implementation of numerous building and civil engineering projects. His expertise extends beyond design coordination to civil engineering and building construction practice, with immense expertise in technical operations and construction management.</p>\r\n', '', 'Operations Manager', NULL, NULL, NULL, '', '', '', '', '2', '3', '1', NULL, '0', '0', '0', '2017-09-07 02:05:42', '2017-09-07 02:05:42'),
(22, 'what-we-do-2', NULL, NULL, NULL, 'What we do', '', '<h5>We value quality and timely delivery within safe working environments.&nbsp;</h5>\r\n\r\n<p>Living by our values helps us to make the best decisions, be successful and stand out for all the right reasons. What we do and how we do it contributes to a sustainable future for our people, clients and the entire society at large. Indeed we&#39;ve built some of the country&#39;s modern marvels</p>\r\n', '', NULL, NULL, NULL, NULL, '', '', '', '', '3', '', '1', NULL, '1', '0', '0', '2017-09-07 10:06:50', '2017-09-19 11:26:34'),
(23, 'we-plan-2', '22', NULL, NULL, 'We plan', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>', '', NULL, NULL, NULL, '#00a5dc', 'plan-0.png', '', '', '', '3', '', '0', NULL, '0', '0', '0', '2017-09-07 10:26:44', '2017-09-19 11:04:13'),
(24, 'we-design-2', '22', NULL, NULL, 'We Design', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. </p>', '', NULL, NULL, NULL, '#fe0000', 'compass-0.png', '', '', '', '3', '', '0', NULL, '0', '0', '0', '2017-09-07 10:27:21', '2017-09-19 11:05:28'),
(25, 'we-build-2', '22', NULL, NULL, 'We Build', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. </p>', '', NULL, NULL, NULL, '#ffc702', 'lever-0.png', '', '', '', '3', '', '0', NULL, '0', '0', '0', '2017-09-07 10:28:00', '2017-09-19 11:06:03'),
(26, 'projects', NULL, NULL, NULL, 'Projects', '', '', '', NULL, NULL, NULL, NULL, '', '', '', '', '4', '', '1', NULL, '1', '0', '0', '2017-09-07 11:31:17', '2017-09-07 11:31:17'),
(27, 'careers', NULL, NULL, NULL, 'Careers', '', '<h3>!DISCLAIMER</h3>\r\n\r\n<p>It has come to the notice of the Micheletti and Company that some unscrupulous people are inviting people to apply for vacant position in the company. They supply forms for completion and demand payment of fees as consideration for engagement.<br />\r\n<br />\r\nManagement of Micheletti and Company wishes to inform the general public, both home and abroad of the following:</p>\r\n\r\n<ul>\r\n	<li>It has no vacancies in any position in the company at the moment and therefore has not embarked on any recruitment exercise or asked any third party to conduct such an exercise on its behalf.</li>\r\n	<li>The company does not recruit its personnel through third parties.</li>\r\n	<li>When vacancies arise, the company invites applicants already listed on its database to attend interviews conducted by its own personnel.</li>\r\n	<li>No fees are charged during or after recruiting for any category of personnel.</li>\r\n</ul>\r\n\r\n<p>The general public are advised to beware of such adverts and report such people to the law enforcement agencies.</p>\r\n', 'We invite you to explore exciting and progressive career opportunities at Micheletti. Whether a recent graduate or an experienced professional, you will find a place for yourself at Micheletti. Please send us your resume on info@michelettighana.com', NULL, NULL, NULL, NULL, '', '', '', '', '5', '', '1', NULL, '1', '0', '0', '2017-09-07 16:26:38', '2017-09-12 21:31:54'),
(28, 'contact-us', NULL, NULL, NULL, 'Contact us', '', '', '', NULL, NULL, NULL, NULL, '', '', '', '', '7', '', '1', NULL, '1', '0', '0', '2017-09-07 19:45:52', '2017-09-07 19:45:52'),
(29, 'more-info', '28', NULL, NULL, 'More Info', '', '<h5>More Info</h5>\n					<p>\n						Micheletti & Co. LTD<br />\n						PMB 281 Cantonments<br />\n						Accra - Ghana<br />\n						<strong>Tel.</strong> +030-2511-555, +233 244 338412<br />\n						<strong>Fax.</strong> +030-2511-561<br /> \n						info@michelettighana.com\n					</p>', '', NULL, NULL, NULL, NULL, '', '', '', '', '7', '', '0', NULL, '0', '0', '0', '2017-09-07 19:47:17', '2017-09-07 19:47:17'),
(30, 'refurbishment-of-access-bank-head-office', '26', 2, NULL, 'Refurbishment of Access Bank Head Office', '', '', 'A complete transformation of an existing banking and office building into a modern corporate head office and banking halls with additional floor spaces befitting the image of Access Bankâ€™s corporate Head office. ', NULL, NULL, NULL, NULL, '', '', 'access_bank_8.jpg', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 10:22:25', '2017-09-12 13:06:39'),
(31, 'amaris-container-terminal', '26', 1, NULL, 'Amaris Container Terminal', '', '', 'A design & Build of an ultra-modern, 50,000m2 container Terminal. It includes an office area, mechanical workshop for repair of trucks, a container repair shop and fuel station', NULL, NULL, NULL, NULL, '', '', 'Amaris_7.jpg', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 10:27:59', '2017-09-12 10:27:59'),
(32, 'beaufort-2', '26', 3, NULL, 'Beaufort', '', '', 'Construction of six-storey of 61 luxurious apartments. Each apartment fully furnished with built-in kitchen and wardrobes. External works included swimming pool, bar, gym, landscaping and parking', NULL, NULL, NULL, NULL, '', '', 'beaufort_5.jpg', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 10:30:00', '2017-09-12 10:31:44'),
(33, 'belvedere-court', '26', 3, NULL, 'Belvedere Court', '', '', 'Design & Build of a Six luxury 3-bedroom apartments on the three upper floors of the building with a split level basement located at the prime airport residential area', NULL, NULL, NULL, NULL, '', '', 'Belvedere_5.jpg', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 10:33:32', '2017-09-12 10:33:32'),
(34, 'casa-trasacco-showroom-2', '26', 2, NULL, 'Casa Trasacco showroom', '', '', 'Design & Build of the construction of a new showroom, refurbishment of the existing showroom and associated external works', NULL, NULL, NULL, NULL, '', '', 'Casa_n.jpg', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 10:36:24', '2017-09-12 12:56:52'),
(35, 'el-wak-sports-stadium', '26', 5, NULL, 'El- Wak Sports Stadium', '', '', 'A design and Build project with The primary works scope comprised the construction of an Alsatan surface athletics track conforming to IAAF class 2 standards and included the necessary track formation works, drainage and surface installations as well as the upgrade of the grandstands and change-room facilities', NULL, NULL, NULL, NULL, '', '', 'el_wak_3.JPG', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 10:39:05', '2017-09-12 10:39:05'),
(36, 'fan-milk', '26', 1, NULL, 'Fan Milk', '', '', 'Factory expansion works, Construction of new storage depots and associated external works for Fanmilk Ltd of the Danone Group. Main factory expansion works at North Industrial area, Construction of new depot at Kasoa and the expansion and refurbishment of the Takoradi depot\r\n', NULL, NULL, NULL, NULL, '', '', 'Fan_Milk_2.jpg', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 10:43:33', '2017-09-12 10:43:33'),
(37, 'rehabilitation-of-the-hockey-park-complex', '26', 5, NULL, 'Rehabilitation of the Hockey Park Complex ', '', '', 'A design and Build project for a redevelopment of an existing facility to meet the International Hockey Federations (IHF) requirement to host international tournaments. This comprised the construction of a new three-story VIP stand with players and match officials change rooms and mixed zones. A separate building houses a three- story hostel block with 16 rooms', NULL, NULL, NULL, NULL, '', '', 'hockey_5.jpg', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 10:46:27', '2017-09-12 10:46:27'),
(38, 'construction-of-offices-for-world-bank-group-ifc', '26', 2, NULL, 'Construction of Offices for World Bank Group (IFC)', '', '', 'An ultra-modern office development located at the ceremonial independence avenue. The works included the construction of approximately 6,800sqm of a new Grade â€˜Aâ€™ office spaces for the IFC of the World Bank Group. A unique feature of the project is the constructed green roof the first of its kind in Ghana.  The completed project has been earmarked for a 4Star Green rating', NULL, NULL, NULL, NULL, '', '', 'IFC_9.jpg', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 10:56:39', '2017-09-12 10:56:39'),
(39, 'kotoka-international-airport-terminal-3', '26', 5, NULL, 'Kotoka International Airport Terminal 3', '', '', 'The main civils subcontractor for the Construction of a modern terminal (T3) at the Kotoka International Airport', NULL, NULL, NULL, NULL, '', '', 'KIA_T3_4.jpg', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 11:04:21', '2017-09-12 11:04:21'),
(40, 'construction-of-switch-data-centre-s-for-mtn', '26', 1, NULL, 'Construction of Switch & Data Centreâ€™s for MTN', '', '', 'The project comprised the construction of switch data center at South Odorkor and South Legon.\r\nIt primarily entails the construction of a processing and data building, a power generation building, an office complex, a switch gear and substation building, a warehouse and an underground water tank and all infrastructural works.', NULL, NULL, NULL, NULL, '', '', 'MTN_2.JPG', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 11:10:54', '2017-09-12 11:10:54'),
(41, 'multichoice-ghana-corporate-head-office-2', '26', 2, NULL, 'Multichoice Ghana Corporate Head Office', '', '', 'A state of the art, modern office complex for Headquarters of Multichoice Ghana (DSTV). It is a 6000m2, 2-story building with a semi-basement. An immaculate interior design and utilization of space', NULL, NULL, NULL, NULL, '', '', 'DSTV_n.jpg', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 11:13:23', '2017-09-12 12:59:04'),
(42, 'ndk-tema', '26', 5, NULL, 'NDK Tema', '', '', 'Construction of NDK of 16,000sqm of Warehouse space and  1,100 sqm of Office Complex', NULL, NULL, NULL, NULL, '', '', 'NDK_2.JPG', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 11:16:04', '2017-09-12 11:16:04'),
(43, 'one-airport-square', '26', 5, NULL, 'One Airport Square', '', '', 'It takes special buildings such as One Airport Square to put the city on the map. Striking, contemporary in style and design with the occupant in mind. The first building to attain a 4 Star green rating in the sub region. Approximately 38,000sqm of grade A office spaces, retail and parking spaces located at the center of the plush airport city Accra. Micheletti is proud to be the contractor of choice from conception to completion of the project for this award-winning masterpiece', NULL, NULL, NULL, NULL, '', '', 'OAS2.jpg', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 11:18:33', '2017-09-12 11:18:33'),
(44, 'olam-bran-warehouse-and-mill-factory-expansion', '26', 1, NULL, 'OLAM Bran warehouse and Mill factory expansion', '', '', 'Construction of a new bran warehouse, expansion of the mill factory and associated infrastructural works and heavy MEP Installations', NULL, NULL, NULL, NULL, '', '', 'olam_8.jpg', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 11:23:01', '2017-09-12 11:23:01'),
(45, 'reconstruction-of-showroom-and-office-space-orca-deco', '26', 2, NULL, 'Reconstruction of Showroom and Office Space Orca Deco', '', '', 'A design and build project to transform an existing abandoned warehouse into approximately 12,000sqm of a modern showroom and storage spaces for the Ghanaian retail giant Orca Deco', NULL, NULL, NULL, NULL, '', '', 'Orca_8.jpg', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 11:25:15', '2017-09-12 11:25:15'),
(46, 'trevi-towers-luxury', '26', 3, NULL, 'Trevi Towers â€“ Luxury ', '', '', 'This is a seven-storey 15no apartment block with a basement housing plant rooms. The scope also included all construction and building finishes works, MEP services and associated external works. \r\n', NULL, NULL, NULL, NULL, '', '', 'Shashie_4.jpg', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 12:05:09', '2017-09-12 12:05:09'),
(47, 'red-bull-soccer-academy', '26', 5, NULL, 'Red Bull Soccer Academy', '', '', 'A design and Build Construction of a modern soccer academy for Redbull at Sogakope. The works included the construction of staff village, footballerâ€™s camp, a grandstand with a gym, change rooms, and offices as well as all infrastructural works, and playing and training pitches.', NULL, NULL, NULL, NULL, '', '', 'Red_Bull_1.JPG', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 12:07:20', '2017-09-12 12:07:20'),
(48, 'rehabilitation-of-ohene-djan-sport-stadium', '26', 5, NULL, 'Rehabilitation of Ohene Djan Sport Stadium', '', '', 'A 40,000-seater soccer stadium built in time for the African Cup of Nations (CAN2008) Tournament on a design & build contract. Fully fitted media facilities, VIP & Presidential wing, restaurants, corporate suites and the external infrastructure', NULL, NULL, NULL, NULL, '', '', 'Stadium_1.jpg', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 12:09:43', '2017-09-12 12:09:43'),
(49, 'micheletti-head-office', '26', 1, NULL, 'Micheletti Head Office   ', '', '', 'The project was primarily conceptualized to house the Head office of Micheletti & Co. Ltd. The work scope comprised the design and build of approximately 1300m2 of office space and 600m 2 of residential Apartments with 1800m2 of roof terrace space. It also included the construction of an external cladding, MEP installations, roads, and Landscaping', NULL, NULL, NULL, NULL, '', '', 'IMG_6520c.jpg', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 12:15:26', '2017-09-12 12:15:26'),
(50, 'interior-design', '26', 5, NULL, 'Interior Design', '', '', 'Micheletti & Co. Ltd prides itself as one of the leading contractors with in-house design development, and fabrication workshop. the interior pictures below depicts some of the fabrications and installations carried out by Micheletti', NULL, NULL, NULL, NULL, '', '', 'Casa_3.jpg', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 12:23:46', '2017-09-12 12:23:46'),
(51, 'villaggio-prima-vera-luxury-apartments', '26', 3, NULL, 'Villaggio â€˜Prima Veraâ€™ Luxury Apartments', '', '', 'This is a large residential development comprising a hundred luxury apartments (84no three-bedroom apartments and 16no penthouse suits) in the heart of Accra. Michelettiâ€™s role was the construction management and coordination which also included executing the external infrastructure works', NULL, NULL, NULL, NULL, '', '', 'villaggio_3.jpg', '', '4', '', '0', NULL, '0', '0', '0', '2017-09-12 16:33:11', '2017-09-12 16:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `productmods`
--

CREATE TABLE `productmods` (
  `id` int(10) NOT NULL,
  `product_id` int(10) DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `weight` decimal(8,2) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `brand_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `product_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `weight` decimal(8,2) DEFAULT NULL,
  `size` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `active` int(1) DEFAULT NULL,
  `product_status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Administrator', '2012-07-03 20:15:14', '2012-07-03 20:15:14'),
(2, 'User', '2012-07-11 18:38:46', '2012-07-11 18:38:46'),
(3, 'Clients', '2015-06-17 10:58:29', '2015-06-17 10:58:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(160) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` char(40) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `role_id`, `created`, `modified`) VALUES
(1, 'Administrator', 'admin', '45f54f46144393e5be431a9092857b7f49782128', 1, '2012-07-03 20:20:22', '2015-01-09 03:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `category` varchar(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `text` longtext NOT NULL,
  `video_poster` varchar(255) NOT NULL,
  `video_mp4` varchar(255) NOT NULL,
  `video_webm` varchar(255) NOT NULL,
  `video_ogv` varchar(255) NOT NULL,
  `add_content` varchar(255) NOT NULL,
  `content_type` varchar(1) NOT NULL DEFAULT '0',
  `youtube_link` varchar(200) NOT NULL,
  `youtube` varchar(1) NOT NULL DEFAULT '0',
  `parent` varchar(1) NOT NULL DEFAULT '0',
  `featured` varchar(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acos`
--
ALTER TABLE `acos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aros`
--
ALTER TABLE `aros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aros_acos`
--
ALTER TABLE `aros_acos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_contents`
--
ALTER TABLE `page_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productmods`
--
ALTER TABLE `productmods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modified` (`modified`),
  ADD KEY `category_id` (`product_id`),
  ADD KEY `brand_id` (`value`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `modified` (`modified`),
  ADD KEY `name_slug` (`slug`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acos`
--
ALTER TABLE `acos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1224;
--
-- AUTO_INCREMENT for table `aros`
--
ALTER TABLE `aros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `aros_acos`
--
ALTER TABLE `aros_acos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `page_contents`
--
ALTER TABLE `page_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `productmods`
--
ALTER TABLE `productmods`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
