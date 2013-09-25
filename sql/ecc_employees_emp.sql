-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 16, 2013 at 10:27 AM
-- Server version: 5.5.25
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `temp`
--

-- --------------------------------------------------------

--
-- Table structure for table `ecc_employees_emp`
--

CREATE TABLE `ecc_employees_emp` (
  `id_emp` int(11) NOT NULL AUTO_INCREMENT,
  `email_emp` varchar(255) NOT NULL,
  `password_emp` varchar(255) NOT NULL,
  `status_emp` int(1) NOT NULL DEFAULT '1',
  `regsiteredDate_emp` datetime NOT NULL,
  `level_emp` int(1) DEFAULT NULL,
  `force_password_emp` int(1) DEFAULT '0',
  `companyCount_emp` int(11) DEFAULT '0',
  `callsCount_emp` int(11) DEFAULT '0',
  `failed_login_attempts_emp` int(11) NOT NULL,
  `failed_login_time_emp` datetime NOT NULL,
  `ban_emp` int(1) DEFAULT '0',
  PRIMARY KEY (`id_emp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `ecc_employees_emp`
--

INSERT INTO `ecc_employees_emp` (`id_emp`, `email_emp`, `password_emp`, `status_emp`, `regsiteredDate_emp`, `level_emp`, `force_password_emp`, `companyCount_emp`, `callsCount_emp`, `failed_login_attempts_emp`, `failed_login_time_emp`, `ban_emp`) VALUES
(1, 'master', '4394af2172185415e647a9a460a33e9c', 1, '2013-01-08 00:00:00', 1, 0, 0, 0, 0, '2013-04-28 03:09:00', 1),
(4, 'magdy.yassin@eccsolutions.net', 'fcea920f7412b5da7be0cf42b8c93759', 1, '0000-00-00 00:00:00', 3, 0, 1, 6, 0, '0000-00-00 00:00:00', 0),
(6, 'ahmed.saber@eccsolutions.net', 'fcea920f7412b5da7be0cf42b8c93759', 1, '0000-00-00 00:00:00', 3, 0, 4, 18, 0, '0000-00-00 00:00:00', 0),
(8, 'mohamed.khaiary@eccsolutions.net', 'fcea920f7412b5da7be0cf42b8c93759', 1, '0000-00-00 00:00:00', 3, 0, 0, 0, 0, '0000-00-00 00:00:00', 0),
(9, 'ahmed.fawzy@eccsolutions.net', '60021aefe045ca75542e4510b18c8252', 0, '0000-00-00 00:00:00', 3, 1, 0, 0, 0, '0000-00-00 00:00:00', 0),
(10, 'ahmedsaber111@gmail.com', '60021aefe045ca75542e4510b18c8252', 0, '0000-00-00 00:00:00', 3, 1, 0, 0, 0, '0000-00-00 00:00:00', 0),
(11, 'ahmedsaber1211@gmail.com', '60021aefe045ca75542e4510b18c8252', 0, '0000-00-00 00:00:00', 3, 1, 0, 0, 0, '0000-00-00 00:00:00', 0),
(12, 'ahmedsaber1112@gmail.com', '60021aefe045ca75542e4510b18c8252', 0, '0000-00-00 00:00:00', 3, 1, 0, 0, 0, '0000-00-00 00:00:00', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
