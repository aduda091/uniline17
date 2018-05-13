
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for contest2017
-- DROP DATABASE IF EXISTS `contest2017`;
CREATE DATABASE IF NOT EXISTS `contest2017` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `contest2017`;

-- Dumping structure for table contest2017.base_price
CREATE TABLE IF NOT EXISTS `base_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_id` int(11) DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `min_nights` int(11) DEFAULT NULL,
  `nr_persons` int(11) DEFAULT NULL,
  `checkin_days` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table contest2017.base_price: ~166 rows (approximately)
/*!40000 ALTER TABLE `base_price` DISABLE KEYS */;
INSERT INTO `base_price` (`id`, `unit_id`, `from`, `to`, `min_nights`, `nr_persons`, `checkin_days`, `price`) VALUES
	(1, 1, '2018-05-28', '2018-07-01', 4, 2, '1234567', 35.00),
	(2, 1, '2018-07-02', '2018-08-26', 4, 2, '1234567', 45.00),
	(3, 1, '2018-08-27', '2018-09-29', 4, 2, '1234567', 35.00),
	(4, 2, '2018-05-28', '2018-07-01', 4, 4, '1234567', 55.00),
	(5, 2, '2018-07-02', '2018-08-26', 4, 4, '1234567', 70.00),
	(6, 2, '2018-08-27', '2018-09-29', 4, 4, '1234567', 55.00),
	(7, 3, '2018-06-27', '2018-08-22', 7, 4, '1234567', 95.00),
	(8, 3, '2018-06-27', '2018-08-22', 7, 5, '1234567', 101.75),
	(9, 3, '2018-08-23', '2018-08-29', 7, 4, '1234567', 74.00),
	(10, 3, '2018-08-23', '2018-08-29', 7, 5, '1234567', 80.75),
	(11, 3, '2018-08-30', '2018-09-30', 7, 5, '1234567', 67.50),
	(12, 4, '2018-06-27', '2018-08-22', 7, 3, '1234567', 67.50),
	(13, 4, '2018-08-23', '2018-08-29', 7, 3, '1234567', 60.75),
	(14, 4, '2018-08-30', '2018-09-30', 7, 3, '1234567', 54.25),
	(15, 5, '2018-02-28', '2018-06-30', 3, 3, '1234567', 54.25),
	(16, 5, '2018-07-01', '2018-09-01', 4, 3, '1234567', 60.75),
	(17, 5, '2018-09-02', '2018-12-31', 3, 3, '1234567', 54.25),
	(18, 6, '2018-02-28', '2018-06-30', 3, 4, '1234567', 60.75),
	(19, 6, '2018-07-01', '2018-09-01', 4, 4, '1234567', 76.00),
	(20, 6, '2018-09-02', '2018-12-31', 3, 4, '1234567', 60.75),
	(21, 7, '2018-02-28', '2018-06-30', 3, 2, '1234567', 39.00),
	(22, 7, '2018-07-01', '2018-09-01', 4, 2, '1234567', 54.25),
	(23, 7, '2018-09-02', '2018-12-31', 3, 2, '1234567', 39.00),
	(24, 8, '2018-02-28', '2018-06-30', 3, 6, '1234567', 90.25),
	(25, 8, '2018-07-01', '2018-09-01', 4, 6, '1234567', 116.75),
	(26, 8, '2018-09-02', '2018-12-31', 3, 6, '1234567', 90.25),
	(27, 9, '2018-01-01', '2018-05-31', 5, 5, '1234567', 72.25),
	(28, 9, '2018-06-01', '2018-06-16', 5, 5, '1234567', 90.25),
	(29, 9, '2018-06-17', '2018-06-30', 5, 5, '1234567', 108.25),
	(30, 9, '2018-07-01', '2018-07-14', 7, 5, '1234567', 135.00),
	(31, 9, '2018-07-15', '2018-08-25', 7, 5, '1234567', 162.50),
	(32, 9, '2018-08-26', '2018-09-01', 7, 5, '1234567', 135.00),
	(33, 9, '2018-09-02', '2018-09-15', 5, 5, '1234567', 108.25),
	(34, 9, '2018-09-16', '2018-09-30', 5, 5, '1234567', 90.25),
	(35, 9, '2018-10-01', '2018-10-31', 5, 5, '1234567', 72.25),
	(36, 10, '2018-04-01', '2018-05-30', 3, 2, '1234567', 56.00),
	(37, 10, '2018-04-01', '2018-05-30', 3, 3, '1234567', 74.00),
	(38, 10, '2018-05-31', '2018-07-09', 3, 2, '1234567', 59.00),
	(39, 10, '2018-05-31', '2018-07-09', 3, 3, '1234567', 77.00),
	(40, 10, '2018-07-10', '2018-08-20', 5, 2, '1234567', 64.50),
	(41, 10, '2018-07-10', '2018-08-20', 5, 3, '1234567', 82.75),
	(42, 10, '2018-08-21', '2018-09-29', 5, 2, '1234567', 59.00),
	(43, 10, '2018-08-21', '2018-09-29', 5, 3, '1234567', 77.00),
	(44, 11, '2018-04-01', '2018-05-30', 3, 2, '1234567', 56.00),
	(45, 11, '2018-05-31', '2018-07-09', 3, 2, '1234567', 59.00),
	(46, 11, '2018-07-10', '2018-08-20', 5, 2, '1234567', 64.50),
	(47, 11, '2018-08-21', '2018-09-29', 5, 2, '1234567', 59.00),
	(48, 12, '2018-04-01', '2018-05-30', 3, 2, '1234567', 56.00),
	(49, 12, '2018-04-01', '2018-05-30', 3, 3, '1234567', 74.00),
	(50, 12, '2018-05-31', '2018-07-09', 3, 2, '1234567', 59.00),
	(51, 12, '2018-05-31', '2018-07-09', 3, 3, '1234567', 77.00),
	(52, 12, '2018-07-10', '2018-08-20', 5, 2, '1234567', 64.50),
	(53, 12, '2018-07-10', '2018-08-20', 5, 3, '1234567', 82.75),
	(54, 12, '2018-08-21', '2018-09-29', 5, 2, '1234567', 59.00),
	(55, 12, '2018-08-21', '2018-09-29', 5, 3, '1234567', 77.00),
	(56, 13, '2018-04-01', '2018-05-30', 3, 2, '1234567', 56.00),
	(57, 13, '2018-05-31', '2018-07-09', 3, 2, '1234567', 59.00),
	(58, 13, '2018-07-10', '2018-08-20', 5, 2, '1234567', 64.50),
	(59, 13, '2018-08-21', '2018-09-29', 5, 2, '1234567', 59.00),
	(60, 14, '2018-05-28', '2018-06-30', 3, 4, '1234567', 75.00),
	(61, 14, '2018-07-01', '2018-08-31', 5, 4, '1234567', 115.00),
	(62, 14, '2018-09-01', '2018-09-26', 3, 4, '1234567', 75.00),
	(63, 14, '2018-09-27', '2018-10-27', 3, 4, '1234567', 47.50),
	(64, 15, '2018-05-28', '2018-06-30', 3, 3, '1234567', 67.50),
	(65, 15, '2018-07-01', '2018-08-31', 5, 3, '1234567', 101.75),
	(66, 15, '2018-09-01', '2018-09-26', 3, 3, '1234567', 67.50),
	(67, 15, '2018-09-27', '2018-10-27', 3, 3, '1234567', 47.50),
	(68, 16, '2018-01-01', '2018-06-09', 7, 4, '6', 62.75),
	(69, 16, '2018-06-10', '2018-06-30', 7, 4, '6', 74.00),
	(70, 16, '2018-07-01', '2018-07-07', 7, 4, '6', 95.00),
	(71, 16, '2018-07-08', '2018-08-25', 7, 4, '6', 100.75),
	(72, 16, '2018-08-26', '2018-09-01', 7, 4, '6', 95.00),
	(73, 16, '2018-09-02', '2018-09-15', 7, 4, '6', 74.00),
	(74, 16, '2018-09-16', '2018-12-31', 7, 4, '6', 62.75),
	(75, 17, '2018-05-01', '2018-05-26', 4, 4, '1234567', 42.75),
	(76, 17, '2018-05-27', '2018-06-30', 4, 4, '1234567', 45.50),
	(77, 17, '2018-07-01', '2018-07-14', 7, 4, '1234567', 74.00),
	(78, 17, '2018-07-15', '2018-08-18', 7, 4, '1234567', 80.75),
	(79, 17, '2018-08-19', '2018-08-25', 7, 4, '1234567', 74.00),
	(80, 17, '2018-08-26', '2018-09-26', 4, 4, '1234567', 45.50),
	(81, 17, '2018-09-27', '2018-10-31', 4, 4, '1234567', 42.75),
	(82, 18, '2018-05-01', '2018-05-26', 4, 4, '1234567', 48.50),
	(83, 18, '2018-05-27', '2018-06-30', 4, 4, '1234567', 54.25),
	(84, 18, '2018-07-01', '2018-07-14', 7, 4, '1234567', 85.50),
	(85, 18, '2018-07-15', '2018-08-18', 7, 4, '1234567', 87.50),
	(86, 18, '2018-08-19', '2018-08-25', 7, 4, '1234567', 85.50),
	(87, 18, '2018-08-26', '2018-09-26', 4, 4, '1234567', 54.25),
	(88, 18, '2018-09-27', '2018-10-31', 4, 4, '1234567', 48.50),
	(89, 19, '2018-05-01', '2018-05-31', 5, 8, '1234567', 135.00),
	(90, 19, '2018-06-01', '2018-06-30', 5, 8, '1234567', 155.75),
	(91, 19, '2018-07-01', '2018-08-31', 7, 8, '1234567', 175.75),
	(92, 19, '2018-09-01', '2018-11-01', 5, 8, '1234567', 155.75),
	(93, 20, '2018-05-01', '2018-05-26', 4, 4, '1234567', 54.25),
	(94, 20, '2018-05-27', '2018-06-30', 4, 4, '1234567', 61.75),
	(95, 20, '2018-07-01', '2018-07-14', 7, 4, '6', 75.00),
	(96, 20, '2018-07-15', '2018-08-18', 7, 4, '6', 81.75),
	(97, 20, '2018-08-19', '2018-08-25', 7, 4, '6', 75.00),
	(98, 20, '2018-08-26', '2018-09-30', 4, 4, '1234567', 61.75),
	(99, 21, '2018-01-01', '2018-01-08', 7, 2, '1234567', 61.75),
	(100, 21, '2018-01-01', '2018-01-08', 7, 3, '1234567', 68.50),
	(101, 21, '2018-01-01', '2018-01-08', 7, 4, '1234567', 81.75),
	(102, 21, '2018-01-09', '2018-05-25', 7, 2, '1234567', 58.00),
	(103, 21, '2018-01-09', '2018-05-25', 7, 3, '1234567', 64.50),
	(104, 21, '2018-01-09', '2018-05-25', 7, 4, '1234567', 78.75),
	(105, 21, '2018-05-26', '2018-06-22', 7, 2, '1234567', 61.75),
	(106, 21, '2018-05-26', '2018-06-22', 7, 3, '1234567', 68.50),
	(107, 21, '2018-05-26', '2018-06-22', 7, 4, '1234567', 81.75),
	(108, 21, '2018-06-23', '2018-07-06', 7, 2, '1234567', 68.50),
	(109, 21, '2018-06-23', '2018-07-06', 7, 3, '1234567', 75.00),
	(110, 21, '2018-06-23', '2018-07-06', 7, 4, '1234567', 89.25),
	(111, 21, '2018-07-07', '2018-08-24', 7, 2, '1234567', 75.00),
	(112, 21, '2018-07-07', '2018-08-24', 7, 3, '1234567', 81.75),
	(113, 21, '2018-07-07', '2018-08-24', 7, 4, '1234567', 96.00),
	(114, 21, '2018-08-25', '2018-09-21', 7, 2, '1234567', 61.75),
	(115, 21, '2018-08-25', '2018-09-21', 7, 3, '1234567', 68.50),
	(116, 21, '2018-08-25', '2018-09-21', 7, 4, '1234567', 81.75),
	(117, 21, '2018-09-22', '2018-12-23', 7, 2, '1234567', 58.00),
	(118, 21, '2018-09-22', '2018-12-23', 7, 3, '1234567', 64.50),
	(119, 21, '2018-09-22', '2018-12-23', 7, 4, '1234567', 78.75),
	(120, 21, '2018-12-24', '2018-12-31', 7, 2, '1234567', 61.75),
	(121, 21, '2018-12-24', '2018-12-31', 7, 3, '1234567', 68.50),
	(122, 21, '2018-12-24', '2018-12-31', 7, 4, '1234567', 81.75),
	(123, 22, '2018-01-01', '2018-01-08', 7, 5, '1234567', 83.50),
	(124, 22, '2018-01-01', '2018-01-08', 7, 6, '1234567', 90.25),
	(125, 22, '2018-01-01', '2018-01-08', 7, 7, '1234567', 95.00),
	(126, 22, '2018-01-01', '2018-01-08', 7, 8, '1234567', 97.00),
	(127, 22, '2018-01-09', '2018-05-25', 7, 5, '1234567', 78.75),
	(128, 22, '2018-01-09', '2018-05-25', 7, 6, '1234567', 86.50),
	(129, 22, '2018-01-09', '2018-05-25', 7, 7, '1234567', 90.25),
	(130, 22, '2018-01-09', '2018-05-25', 7, 8, '1234567', 94.00),
	(131, 22, '2018-05-26', '2018-06-22', 7, 5, '1234567', 83.50),
	(132, 22, '2018-05-26', '2018-06-22', 7, 6, '1234567', 90.25),
	(133, 22, '2018-05-26', '2018-06-22', 7, 7, '1234567', 95.00),
	(134, 22, '2018-05-26', '2018-06-22', 7, 8, '1234567', 97.00),
	(135, 22, '2018-06-23', '2018-07-06', 7, 5, '1234567', 109.25),
	(136, 22, '2018-06-23', '2018-07-06', 7, 6, '1234567', 116.75),
	(137, 22, '2018-06-23', '2018-07-06', 7, 7, '1234567', 120.75),
	(138, 22, '2018-06-23', '2018-07-06', 7, 8, '1234567', 124.50),
	(139, 22, '2018-07-07', '2018-08-24', 7, 5, '1234567', 121.50),
	(140, 22, '2018-07-07', '2018-08-24', 7, 6, '1234567', 130.25),
	(141, 22, '2018-07-07', '2018-08-24', 7, 7, '1234567', 133.00),
	(142, 22, '2018-07-07', '2018-08-24', 7, 8, '1234567', 136.75),
	(143, 22, '2018-08-25', '2018-09-21', 7, 5, '1234567', 83.50),
	(144, 22, '2018-08-25', '2018-09-21', 7, 6, '1234567', 90.25),
	(145, 22, '2018-08-25', '2018-09-21', 7, 7, '1234567', 95.00),
	(146, 22, '2018-08-25', '2018-09-21', 7, 8, '1234567', 97.00),
	(147, 22, '2018-09-22', '2018-12-23', 7, 5, '1234567', 78.75),
	(148, 22, '2018-09-22', '2018-12-23', 7, 6, '1234567', 86.50),
	(149, 22, '2018-09-22', '2018-12-23', 7, 7, '1234567', 90.25),
	(150, 22, '2018-09-22', '2018-12-23', 7, 8, '1234567', 94.00),
	(151, 22, '2018-12-24', '2018-12-31', 7, 5, '1234567', 83.50),
	(152, 22, '2018-12-24', '2018-12-31', 7, 6, '1234567', 90.25),
	(153, 22, '2018-12-24', '2018-12-31', 7, 7, '1234567', 95.00),
	(154, 22, '2018-12-24', '2018-12-31', 7, 8, '1234567', 97.00),
	(155, 23, '2018-01-01', '2018-06-30', 4, 2, '1234567', 42.75),
	(156, 23, '2018-07-01', '2018-08-31', 4, 2, '1234567', 47.50),
	(157, 23, '2018-09-01', '2018-12-31', 4, 2, '1234567', 42.75),
	(158, 24, '2018-01-01', '2018-06-30', 4, 2, '1234567', 42.75),
	(159, 24, '2018-07-01', '2018-08-31', 4, 2, '1234567', 47.50),
	(160, 24, '2018-09-01', '2018-12-31', 4, 2, '1234567', 42.75),
	(161, 25, '2018-01-01', '2018-06-30', 4, 2, '1234567', 53.25),
	(162, 25, '2018-07-01', '2018-08-31', 4, 2, '1234567', 73.25),
	(163, 25, '2018-09-01', '2018-12-31', 4, 2, '1234567', 53.25),
	(164, 26, '2018-01-01', '2018-06-30', 4, 3, '1234567', 57.00),
	(165, 26, '2018-07-01', '2018-08-31', 4, 3, '1234567', 76.00),
	(166, 26, '2018-09-01', '2018-12-31', 4, 3, '1234567', 57.00);
/*!40000 ALTER TABLE `base_price` ENABLE KEYS */;

-- Dumping structure for table contest2017.discount
CREATE TABLE IF NOT EXISTS `discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) DEFAULT NULL,
  `type` enum('first-minute','last-minute') COLLATE utf8_unicode_ci DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `percent` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table contest2017.discount: ~17 rows (approximately)
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` (`id`, `property_id`, `type`, `days`, `percent`) VALUES
	(1, 1, 'first-minute', 90, 10.00),
	(2, 2, 'first-minute', 210, 15.00),
	(3, 2, 'first-minute', 180, 10.00),
	(4, 2, 'last-minute', 14, 10.00),
	(5, 2, 'last-minute', 7, 15.00),
	(6, 3, 'first-minute', 150, 10.00),
	(7, 3, 'first-minute', 120, 5.00),
	(8, 4, 'first-minute', 210, 15.00),
	(9, 4, 'first-minute', 180, 10.00),
	(10, 6, 'first-minute', 180, 10.00),
	(11, 6, 'first-minute', 150, 5.00),
	(12, 6, 'last-minute', 14, 5.00),
	(13, 6, 'last-minute', 7, 10.00),
	(14, 12, 'first-minute', 180, 15.00),
	(15, 12, 'first-minute', 150, 10.00),
	(16, 12, 'last-minute', 14, 10.00),
	(17, 12, 'last-minute', 7, 15.00);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;

-- Dumping structure for table contest2017.property
CREATE TABLE IF NOT EXISTS `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tourist_tax` enum('included','not-included','on-the-spot') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table contest2017.property: ~12 rows (approximately)
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` (`id`, `name`, `destination`, `tourist_tax`) VALUES
	(1, 'Apartments Sandra', 'Pula', 'not-included'),
	(2, 'Apartments Vesna', 'Novigrad', 'not-included'),
	(3, 'Apartments Marina', 'Rovinj', 'not-included'),
	(4, 'House Viktor', 'Pula', 'on-the-spot'),
	(5, 'Rooms Jadranka', 'Rabac', 'included'),
	(6, 'Apartments Ljiljana', 'Pula', 'not-included'),
	(7, 'House Nikolina', 'Umag', 'not-included'),
	(8, 'Apartments Anton', 'Split', 'not-included'),
	(9, 'Apartments Jasenka', 'Dubrovnik', 'not-included'),
	(10, 'Apartments Massimo', 'Poreč', 'not-included'),
	(11, 'Apartments Dragica', 'Crikvenica', 'not-included'),
	(12, 'Apartments and Rooms Vlatka', 'Zadar', 'included');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;

-- Dumping structure for table contest2017.unit
CREATE TABLE IF NOT EXISTS `unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('room','apartment','house') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table contest2017.unit: ~26 rows (approximately)
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` (`id`, `property_id`, `name`, `type`) VALUES
	(1, 1, 'A1', 'apartment'),
	(2, 1, 'A2', 'apartment'),
	(3, 2, 'A1', 'apartment'),
	(4, 2, 'A2', 'apartment'),
	(5, 3, 'A1', 'apartment'),
	(6, 3, 'A2', 'apartment'),
	(7, 3, 'A3', 'apartment'),
	(8, 3, 'A4', 'apartment'),
	(9, 4, 'Viktor', 'house'),
	(10, 5, 'R1', 'room'),
	(11, 5, 'R2', 'room'),
	(12, 5, 'R3', 'room'),
	(13, 5, 'R4', 'room'),
	(14, 6, 'A1', 'apartment'),
	(15, 6, 'A2', 'apartment'),
	(16, 7, 'Nikolina', 'house'),
	(17, 8, 'A1', 'apartment'),
	(18, 8, 'A2', 'apartment'),
	(19, 9, 'A1', 'apartment'),
	(20, 10, 'A1', 'apartment'),
	(21, 11, 'A1', 'apartment'),
	(22, 11, 'A2', 'apartment'),
	(23, 12, 'R1', 'room'),
	(24, 12, 'R2', 'room'),
	(25, 12, 'A1', 'apartment'),
	(26, 12, 'A2', 'apartment');
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;