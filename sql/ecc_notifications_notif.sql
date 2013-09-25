-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 20, 2013 at 06:52 PM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ecc_solutions_ecc`
--

-- --------------------------------------------------------

--
-- Table structure for table `ecc_notifications_notif`
--

DROP TABLE IF EXISTS `ecc_notifications_notif`;
CREATE TABLE IF NOT EXISTS `ecc_notifications_notif` (
  `id_notif` int(11) NOT NULL AUTO_INCREMENT,
  `subject_notif` varchar(255) DEFAULT NULL,
  `department_notif` varchar(255) DEFAULT NULL,
  `message_notif` text,
  `active_notif` int(1) DEFAULT NULL,
  `dueDate_notif` date DEFAULT NULL,
  `inDate_notif` datetime DEFAULT NULL,
  `public_notif` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_notif`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ecc_notifications_notif`
--

INSERT INTO `ecc_notifications_notif` VALUES(1, 'Use Dollar as 6 $', 'internet services', 'asdasdas', 1, '0000-00-00', NULL, 1);
INSERT INTO `ecc_notifications_notif` VALUES(3, 'sadasd', 'internet services', 'asdasd', 1, '2013-01-31', NULL, 1);
