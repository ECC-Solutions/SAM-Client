-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 16, 2013 at 10:24 AM
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
-- Table structure for table `ecc_sessions_sess`
--

CREATE TABLE `ecc_sessions_sess` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecc_sessions_sess`
--

INSERT INTO `ecc_sessions_sess` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('318d55e857e652c3a23ecb13bbc2a8ed', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:20.0) Gecko/20100101 Firefox/20.0', 1366125056, ''),
('4012b25343b22d63e44e79267b9833a7', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:20.0) Gecko/20100101 Firefox/20.0', 1366159187, ''),
('46c9a97fef1f3c196bd1b0cc11d9cab2', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:20.0) Gecko/20100101 Firefox/20.0', 1366290497, 'a:10:{s:10:"employeeid";s:1:"1";s:13:"loggedin_user";s:6:"master";s:12:"is_logged_in";b:1;s:10:"is_manager";N;s:5:"level";s:1:"1";s:10:"department";s:5:"S.A.M";s:14:"force_password";s:1:"0";s:4:"name";s:14:"Master Account";s:8:"position";s:29:"ECC Sales Cloud Administrator";s:6:"avatar";s:17:"Magdy_Yassin6.jpg";}'),
('49d4c4003b0d2d3551c0ce4668544d7e', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:20.0) Gecko/20100101 Firefox/20.0', 1366142971, ''),
('ea40df50b449c0b0482b885009ee1541', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:20.0) Gecko/20100101 Firefox/20.0', 1367111892, ''),
('f52989ac68f2ccf1a78a4e56b32c876a', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0', 1371219060, ''),
('f87719c7728a52f65c9627a857a6570f', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:20.0) Gecko/20100101 Firefox/20.0', 1366200757, ''),
('fd72fe52a3e7036b9001dab97c27f00e', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:20.0) Gecko/20100101 Firefox/20.0', 1367111352, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
