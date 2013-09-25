-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 04, 2013 at 07:43 PM
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
-- Table structure for table `ecc_accounts_acc`
--

DROP TABLE IF EXISTS `ecc_accounts_acc`;
CREATE TABLE IF NOT EXISTS `ecc_accounts_acc` (
  `id_acc` int(11) NOT NULL AUTO_INCREMENT,
  `idemp_acc` int(11) NOT NULL,
  `idco_acc` int(11) NOT NULL,
  `registeredDate_acc` date NOT NULL,
  `status_acc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_acc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `ecc_accounts_acc`
--

INSERT INTO `ecc_accounts_acc` VALUES(3, 2, 1, '2013-01-09', 'active');
INSERT INTO `ecc_accounts_acc` VALUES(8, 2, 10, '2013-01-09', 'active');
INSERT INTO `ecc_accounts_acc` VALUES(12, 4, 1, '2013-01-09', 'active');
INSERT INTO `ecc_accounts_acc` VALUES(13, 0, 0, '0000-00-00', 'draft');
INSERT INTO `ecc_accounts_acc` VALUES(14, 0, 0, '0000-00-00', 'draft');
INSERT INTO `ecc_accounts_acc` VALUES(15, 0, 0, '0000-00-00', 'draft');
INSERT INTO `ecc_accounts_acc` VALUES(16, 0, 0, '0000-00-00', 'draft');
INSERT INTO `ecc_accounts_acc` VALUES(17, 0, 0, '0000-00-00', 'draft');
INSERT INTO `ecc_accounts_acc` VALUES(18, 0, 0, '0000-00-00', 'draft');
INSERT INTO `ecc_accounts_acc` VALUES(19, 0, 0, '0000-00-00', 'draft');
INSERT INTO `ecc_accounts_acc` VALUES(20, 0, 0, '0000-00-00', 'draft');
INSERT INTO `ecc_accounts_acc` VALUES(21, 0, 0, '0000-00-00', 'draft');
INSERT INTO `ecc_accounts_acc` VALUES(22, 0, 0, '0000-00-00', 'draft');
INSERT INTO `ecc_accounts_acc` VALUES(23, 0, 0, '0000-00-00', 'draft');
INSERT INTO `ecc_accounts_acc` VALUES(24, 0, 0, '0000-00-00', 'draft');

-- --------------------------------------------------------

--
-- Table structure for table `ecc_accounts_products_accprod`
--

DROP TABLE IF EXISTS `ecc_accounts_products_accprod`;
CREATE TABLE IF NOT EXISTS `ecc_accounts_products_accprod` (
  `id_accprod` int(11) NOT NULL AUTO_INCREMENT,
  `idacc_accprod` int(11) NOT NULL,
  `idprod_accprod` int(11) NOT NULL,
  PRIMARY KEY (`id_accprod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ecc_accounts_products_accprod`
--

INSERT INTO `ecc_accounts_products_accprod` VALUES(1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_applicant_app`
--

DROP TABLE IF EXISTS `ecc_applicant_app`;
CREATE TABLE IF NOT EXISTS `ecc_applicant_app` (
  `id_app` int(11) NOT NULL AUTO_INCREMENT,
  `idvac_app` int(11) NOT NULL,
  `name_app` varchar(255) NOT NULL,
  `email_app` varchar(255) NOT NULL,
  `cv_app` varchar(255) NOT NULL DEFAULT '',
  `date_app` datetime NOT NULL,
  `have_interview_app` int(1) NOT NULL DEFAULT '0',
  `accepted_app` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_app`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecc_applicant_app`
--


-- --------------------------------------------------------

--
-- Table structure for table `ecc_calls_call`
--

DROP TABLE IF EXISTS `ecc_calls_call`;
CREATE TABLE IF NOT EXISTS `ecc_calls_call` (
  `id_call` int(11) NOT NULL AUTO_INCREMENT,
  `idemp_call` int(11) NOT NULL,
  `idco_call` int(11) NOT NULL,
  `status_call` varchar(255) NOT NULL DEFAULT '1',
  `callType_call` varchar(255) DEFAULT NULL,
  `accept_call` int(1) DEFAULT NULL,
  `date_call` datetime DEFAULT NULL,
  `dueDate_call` datetime DEFAULT NULL,
  `callStatus_call` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_call`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=202 ;

--
-- Dumping data for table `ecc_calls_call`
--

INSERT INTO `ecc_calls_call` VALUES(56, 2, 1, 'active', 'call', 0, '2013-01-14 20:13:24', '2013-01-28 00:00:00', 'done');
INSERT INTO `ecc_calls_call` VALUES(58, 2, 1, 'active', 'call', 0, '2013-01-15 10:21:55', '2013-01-23 00:00:00', 'open');
INSERT INTO `ecc_calls_call` VALUES(82, 2, 1, 'active', 'call', 0, '2013-01-17 15:24:49', '2013-01-24 00:00:00', 'open');
INSERT INTO `ecc_calls_call` VALUES(83, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(84, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(85, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(86, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(87, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(88, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(89, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(90, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(91, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(92, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(93, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(94, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(95, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(96, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(97, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(98, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(99, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(100, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(101, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(102, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(103, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(104, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(105, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(106, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(107, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(108, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(109, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(110, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(111, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(112, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(113, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(114, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(115, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(116, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(117, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(118, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(119, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(120, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(121, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(122, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(123, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(124, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(125, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(126, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(127, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(128, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(129, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(130, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(131, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(132, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(133, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(134, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(135, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(136, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(137, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(138, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(139, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(140, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(141, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(142, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(143, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(144, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(145, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(146, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(147, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(148, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(149, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(150, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(151, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(152, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(153, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(154, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(155, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(156, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(157, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(158, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(159, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(160, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(161, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(162, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(163, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(164, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(165, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(166, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(167, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(168, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(169, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(170, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(171, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(172, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(173, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(174, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(175, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(176, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(177, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(178, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(179, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(180, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(181, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(182, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(183, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(184, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(185, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(186, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(187, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(188, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(189, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(190, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(191, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(192, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(193, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(194, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(195, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(196, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(197, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(198, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(199, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(200, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(201, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_call_cmeta`
--

DROP TABLE IF EXISTS `ecc_call_cmeta`;
CREATE TABLE IF NOT EXISTS `ecc_call_cmeta` (
  `id_cmeta` int(11) NOT NULL AUTO_INCREMENT,
  `idcall_cmeta` int(11) NOT NULL,
  `metaKey_cmeta` varchar(255) NOT NULL,
  `metaValue_cmeta` varchar(255) NOT NULL,
  `mimeType_cmeta` varchar(255) DEFAULT NULL,
  `fileSize_cmeta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_cmeta`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `ecc_call_cmeta`
--

INSERT INTO `ecc_call_cmeta` VALUES(1, 26, 'contact', '3', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(2, 51, 'contact', '1', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(3, 56, 'contact', '1', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(4, 56, 'contact', '2', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(5, 56, 'inDate', '1970-01-01', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(6, 56, 'feedback', 'all issues solved perfectly, they were happy with we had acieved, we called them again', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(7, 56, 'reason', 'database issues', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(8, 58, 'contact', '1', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(9, 58, 'inDate', '1970-01-01', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(10, 58, 'feedback', 'Available only if the call were closed', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(11, 58, 'reason', 'handle all issue', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(12, 60, 'contact', '1', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(13, 60, 'contact', '1', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(14, 60, 'contact', '1', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(15, 61, 'contact', '1', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(16, 61, 'contact', '1', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(17, 61, 'contact', '1', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(18, 62, 'contact', '1', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(19, 67, 'contact', '4', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(20, 68, 'contact', '1', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(21, 82, 'contact', '2', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(22, 82, 'contact', '1', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(23, 82, 'inDate', '1970-01-01', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(24, 82, 'feedback', 'Available only if the call were closed', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(25, 82, 'reason', '', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(26, 84, 'contact', '1', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(27, 0, 'contact', '17', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(28, 85, 'contact', '4', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(29, 0, 'contact', '18', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(30, 86, 'contact', '18', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(31, 0, 'contact', '19', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(32, 87, 'contact', '3', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(33, 88, 'contact', '2', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(34, 89, 'contact', '21', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(35, 0, 'contact', '22', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(36, 90, 'contact', '0', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(37, 91, 'contact', '22', NULL, NULL);
INSERT INTO `ecc_call_cmeta` VALUES(38, 91, 'contact', '23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_companyBranch_cobr`
--

DROP TABLE IF EXISTS `ecc_companyBranch_cobr`;
CREATE TABLE IF NOT EXISTS `ecc_companyBranch_cobr` (
  `id_cobr` int(11) NOT NULL AUTO_INCREMENT,
  `idco_cobr` int(11) NOT NULL,
  `name_cobr` varchar(255) NOT NULL,
  `address_cobr` text,
  `fax_cobr` varchar(255) DEFAULT NULL,
  `phone_cobr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_cobr`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ecc_companyBranch_cobr`
--

INSERT INTO `ecc_companyBranch_cobr` VALUES(1, 1, 'down town2', 'sherif st.1', '090889009111111', '098000880');
INSERT INTO `ecc_companyBranch_cobr` VALUES(2, 21, 'Zamalek Branch', 'zamalek 26 july', '8782787', '0111675909');
INSERT INTO `ecc_companyBranch_cobr` VALUES(3, 22, 'Dokki Branch', 'Messaha Square', '029898989', '01015552992');
INSERT INTO `ecc_companyBranch_cobr` VALUES(4, 22, 'haram', '', '', '');
INSERT INTO `ecc_companyBranch_cobr` VALUES(5, 24, 'asdasd', '', '', '');
INSERT INTO `ecc_companyBranch_cobr` VALUES(6, 24, 'adsadasdasd', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ecc_companyCategory_cocat`
--

DROP TABLE IF EXISTS `ecc_companyCategory_cocat`;
CREATE TABLE IF NOT EXISTS `ecc_companyCategory_cocat` (
  `id_cocat` int(11) NOT NULL AUTO_INCREMENT,
  `name_cocat` varchar(255) DEFAULT NULL,
  `count_cocat` int(11) DEFAULT '0',
  PRIMARY KEY (`id_cocat`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ecc_companyCategory_cocat`
--

INSERT INTO `ecc_companyCategory_cocat` VALUES(1, 'current', 3);
INSERT INTO `ecc_companyCategory_cocat` VALUES(2, 'x-customer', 0);
INSERT INTO `ecc_companyCategory_cocat` VALUES(3, 'prospect', 0);
INSERT INTO `ecc_companyCategory_cocat` VALUES(4, 'vendor', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_companyContact_cocontact`
--

DROP TABLE IF EXISTS `ecc_companyContact_cocontact`;
CREATE TABLE IF NOT EXISTS `ecc_companyContact_cocontact` (
  `id_cocontact` int(11) NOT NULL AUTO_INCREMENT,
  `idco_cocontact` int(11) NOT NULL,
  `name_cocontact` varchar(255) NOT NULL,
  `email_cocontact` varchar(255) DEFAULT NULL,
  `phone_cocontact` varchar(255) DEFAULT NULL,
  `mobile_cocontact` varchar(255) DEFAULT NULL,
  `fax_cocontact` varchar(255) DEFAULT NULL,
  `position_cocontact` varchar(255) DEFAULT NULL,
  `brief_cocontact` text,
  PRIMARY KEY (`id_cocontact`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `ecc_companyContact_cocontact`
--

INSERT INTO `ecc_companyContact_cocontact` VALUES(1, 1, 'Rafaat Ramsis', 'm.rafaat@gmail.com', '0238985890', '01060634154', '9090', 'CEO', 'good man');
INSERT INTO `ecc_companyContact_cocontact` VALUES(2, 1, 'Mostafa', 'Sayed', '', '0122768324', '', 'IT Manager', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(3, 1, 'Mostafa', 'mostafa.i@unb.ae', '01060634154', '', '', 'Purchase Manager', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(4, 10, 'Ahmed saber', 'mohab.omar@gmail.com', '0111675909', '', '', 'CFO', 'bad man');
INSERT INTO `ecc_companyContact_cocontact` VALUES(5, 22, 'UNB2', '', '', '', '', '', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(6, 24, 'asdada', '', '', '', '', '', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(7, 24, 'sadasdasd', '', '', '', '', '', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(8, 66, 'Mostafa Salah', 'mostafa.salah@gmail.com', '01015552992', '01015552992', '029898989', 'web', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(9, 68, 'Mando Salah el din', 'mando@hotmail.com', '09090909', '090909', '203i09423ui4', '', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(10, 69, 'Amal abu ghali', 'amal@gmal.com', 'asda', 'kmknnkj', 'kjnkjn', 'kjn', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(11, 71, 'Salman', '', '', '', '', '', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(12, 73, 'Angelina', '', '', '', '', '', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(13, 75, 'me', '', '', '', '', '', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(14, 1, 'hola', '', '', '', '', '', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(15, 1, 'hany', '', '', '', '', '', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(16, 1, 'ds', '', '', '', '', '', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(17, 1, 'ana', '', '', '', '', '', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(18, 10, 'hwa', '', '', '', '', '', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(19, 86, 'mo2men', '', '', '', '', '', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(20, 87, 'sayed shaalan', '', '', '', '', '', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(21, 1, 'rania', '', '', '', '', '', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(22, 1, 'reham', '', '', '', '', '', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(23, 1, 'Hoda', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ecc_companyMeta_cometa`
--

DROP TABLE IF EXISTS `ecc_companyMeta_cometa`;
CREATE TABLE IF NOT EXISTS `ecc_companyMeta_cometa` (
  `id_cometa` int(11) NOT NULL AUTO_INCREMENT,
  `idco_cometa` int(11) NOT NULL,
  `metaKey_cometa` varchar(255) NOT NULL,
  `metaValue_cometa` varchar(255) NOT NULL,
  PRIMARY KEY (`id_cometa`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ecc_companyMeta_cometa`
--

INSERT INTO `ecc_companyMeta_cometa` VALUES(1, 4, 'address', 's');
INSERT INTO `ecc_companyMeta_cometa` VALUES(2, 4, 'website', '');
INSERT INTO `ecc_companyMeta_cometa` VALUES(3, 4, 'logo', 'UNB');
INSERT INTO `ecc_companyMeta_cometa` VALUES(4, 1, 'address', 'Abu Dhabi,');
INSERT INTO `ecc_companyMeta_cometa` VALUES(5, 1, 'website', 'http://www.unbbank.com');
INSERT INTO `ecc_companyMeta_cometa` VALUES(6, 1, 'logo', 'UNB Bank');
INSERT INTO `ecc_companyMeta_cometa` VALUES(7, 10, 'address', 'cairo Down Town');
INSERT INTO `ecc_companyMeta_cometa` VALUES(8, 10, 'website', 'www.cairoBank.com');
INSERT INTO `ecc_companyMeta_cometa` VALUES(9, 10, 'logo', 'Banque du Caire');

-- --------------------------------------------------------

--
-- Table structure for table `ecc_company_co`
--

DROP TABLE IF EXISTS `ecc_company_co`;
CREATE TABLE IF NOT EXISTS `ecc_company_co` (
  `id_co` int(11) NOT NULL AUTO_INCREMENT,
  `idcocat_co` int(11) DEFAULT NULL,
  `name_co` varchar(255) NOT NULL,
  `status_co` varchar(255) NOT NULL,
  `accountCount_co` int(11) DEFAULT '0',
  PRIMARY KEY (`id_co`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `ecc_company_co`
--

INSERT INTO `ecc_company_co` VALUES(1, 2, 'UNB Bank', 'active', 2);
INSERT INTO `ecc_company_co` VALUES(10, 1, 'Banque du Caire', 'active', 1);
INSERT INTO `ecc_company_co` VALUES(11, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(12, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(13, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(14, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(15, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(16, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(17, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(18, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(19, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(20, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(21, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(22, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(23, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(24, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(25, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(26, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(27, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(28, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(29, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(30, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(31, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(32, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(33, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(34, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(35, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(36, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(37, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(38, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(39, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(40, NULL, '', 'draft', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_department_dep`
--

DROP TABLE IF EXISTS `ecc_department_dep`;
CREATE TABLE IF NOT EXISTS `ecc_department_dep` (
  `id_dep` int(11) NOT NULL AUTO_INCREMENT,
  `name_dep` varchar(255) NOT NULL,
  `status_dep` varchar(255) DEFAULT NULL,
  `count_dep` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_dep`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ecc_department_dep`
--

INSERT INTO `ecc_department_dep` VALUES(1, 'internet services', '1', 7);
INSERT INTO `ecc_department_dep` VALUES(2, 'sales', '1', 2);
INSERT INTO `ecc_department_dep` VALUES(3, 'pre sales', '1', 0);
INSERT INTO `ecc_department_dep` VALUES(4, 'marketing', '1', 0);
INSERT INTO `ecc_department_dep` VALUES(5, 'operation', '1', 0);
INSERT INTO `ecc_department_dep` VALUES(6, 'PreSales', '1', NULL);
INSERT INTO `ecc_department_dep` VALUES(7, 'PreSales', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_employees_emp`
--

DROP TABLE IF EXISTS `ecc_employees_emp`;
CREATE TABLE IF NOT EXISTS `ecc_employees_emp` (
  `id_emp` int(11) NOT NULL AUTO_INCREMENT,
  `email_emp` varchar(255) NOT NULL,
  `password_emp` varchar(255) NOT NULL,
  `status_emp` int(1) NOT NULL DEFAULT '1',
  `regsiteredDate_emp` date NOT NULL,
  `level_emp` int(1) DEFAULT NULL,
  `force_password_emp` int(1) DEFAULT '0',
  `companyCount_emp` int(11) DEFAULT '0',
  `callsCount_emp` int(11) DEFAULT '0',
  PRIMARY KEY (`id_emp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ecc_employees_emp`
--

INSERT INTO `ecc_employees_emp` VALUES(1, 'master', '4394af2172185415e647a9a460a33e9c', 1, '2013-01-08', 1, 0, 0, 0);
INSERT INTO `ecc_employees_emp` VALUES(2, 'ahmed.saber@eccsolutions.net', 'e10adc3949ba59abbe56e057f20f883e', 1, '2013-01-08', 3, 0, 2, 3);
INSERT INTO `ecc_employees_emp` VALUES(3, 'Mahmoud.hany@eccsolutions.net', '60021aefe045ca75542e4510b18c8252', 0, '2013-01-08', 3, 1, 0, 0);
INSERT INTO `ecc_employees_emp` VALUES(4, 'mohamed.khalifa@eccsolutions.net', 'e10adc3949ba59abbe56e057f20f883e', 1, '2013-01-08', 3, 0, 1, 0);
INSERT INTO `ecc_employees_emp` VALUES(5, 'riham.wahid@eccsolutions.net', '60021aefe045ca75542e4510b18c8252', 0, '2013-01-08', 3, 1, 0, 0);
INSERT INTO `ecc_employees_emp` VALUES(6, 'alaa.elfeky@eccsolutions.net', '60021aefe045ca75542e4510b18c8252', 0, '2013-01-08', 3, 1, 0, 0);
INSERT INTO `ecc_employees_emp` VALUES(7, 'ahmed.mostafa@eccsolutions.net', 'e10adc3949ba59abbe56e057f20f883e', 1, '2013-01-08', 3, 0, 0, 0);
INSERT INTO `ecc_employees_emp` VALUES(8, 'ahmed.fawzy@eccsolutions.net', '60021aefe045ca75542e4510b18c8252', 0, '2013-01-09', 3, 1, 0, 0);
INSERT INTO `ecc_employees_emp` VALUES(9, 'hesham.mohamed@eccsolutions.net', '60021aefe045ca75542e4510b18c8252', 0, '2013-01-09', 3, 1, 0, 0);
INSERT INTO `ecc_employees_emp` VALUES(10, 'ahmedsaber111@gmail.com', '60021aefe045ca75542e4510b18c8252', 0, '2013-01-17', 3, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_employee_empmeta`
--

DROP TABLE IF EXISTS `ecc_employee_empmeta`;
CREATE TABLE IF NOT EXISTS `ecc_employee_empmeta` (
  `id_empmeta` int(11) NOT NULL AUTO_INCREMENT,
  `idemp_empmeta` int(11) NOT NULL,
  `metaKey_empmeta` varchar(255) NOT NULL,
  `metaValue_empmeta` varchar(255) NOT NULL,
  PRIMARY KEY (`id_empmeta`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `ecc_employee_empmeta`
--

INSERT INTO `ecc_employee_empmeta` VALUES(1, 1, 'first_name', 'Magdy');
INSERT INTO `ecc_employee_empmeta` VALUES(2, 1, 'last_name', 'Yassin');
INSERT INTO `ecc_employee_empmeta` VALUES(3, 1, 'position', 'Strategy & Planning Director');
INSERT INTO `ecc_employee_empmeta` VALUES(4, 1, 'avatar', 'magdy.jpg');
INSERT INTO `ecc_employee_empmeta` VALUES(5, 1, 'mobile', '01157585858');
INSERT INTO `ecc_employee_empmeta` VALUES(6, 2, 'first_name', 'Mohamed');
INSERT INTO `ecc_employee_empmeta` VALUES(7, 2, 'last_name', 'Saber');
INSERT INTO `ecc_employee_empmeta` VALUES(8, 2, 'avatar', 'ahmed-saber.jpg');
INSERT INTO `ecc_employee_empmeta` VALUES(9, 2, 'position', 'Senior UI/UX Designer');
INSERT INTO `ecc_employee_empmeta` VALUES(10, 2, 'mobile', '01015552992');
INSERT INTO `ecc_employee_empmeta` VALUES(11, 3, 'first_name', 'Mahmoud');
INSERT INTO `ecc_employee_empmeta` VALUES(12, 3, 'last_name', 'Hany');
INSERT INTO `ecc_employee_empmeta` VALUES(13, 3, 'avatar', '483325_10151176950227536_153631653_n.jpg');
INSERT INTO `ecc_employee_empmeta` VALUES(14, 3, 'position', 'Senior Web Developer');
INSERT INTO `ecc_employee_empmeta` VALUES(15, 3, 'mobile', '01220098536');
INSERT INTO `ecc_employee_empmeta` VALUES(16, 4, 'first_name', 'Mohamed');
INSERT INTO `ecc_employee_empmeta` VALUES(17, 4, 'last_name', 'Khalifa');
INSERT INTO `ecc_employee_empmeta` VALUES(18, 4, 'avatar', '551151_256821861096788_1831179289_n.jpg');
INSERT INTO `ecc_employee_empmeta` VALUES(19, 4, 'position', 'Junior Video Editor');
INSERT INTO `ecc_employee_empmeta` VALUES(20, 4, 'mobile', '01063252828');
INSERT INTO `ecc_employee_empmeta` VALUES(21, 5, 'first_name', 'Reham');
INSERT INTO `ecc_employee_empmeta` VALUES(22, 5, 'last_name', 'Wahid');
INSERT INTO `ecc_employee_empmeta` VALUES(23, 5, 'avatar', 'Reham Wahid.jpg');
INSERT INTO `ecc_employee_empmeta` VALUES(24, 5, 'position', 'Junior Web designer');
INSERT INTO `ecc_employee_empmeta` VALUES(25, 5, 'mobile', '01000400712');
INSERT INTO `ecc_employee_empmeta` VALUES(26, 6, 'first_name', 'Alaa ');
INSERT INTO `ecc_employee_empmeta` VALUES(27, 6, 'last_name', 'El-Feky');
INSERT INTO `ecc_employee_empmeta` VALUES(28, 6, 'avatar', 'Alaa_El-Feky.jpg');
INSERT INTO `ecc_employee_empmeta` VALUES(29, 6, 'position', 'Junior Web Developer');
INSERT INTO `ecc_employee_empmeta` VALUES(30, 6, 'mobile', '01223008114');
INSERT INTO `ecc_employee_empmeta` VALUES(31, 7, 'first_name', 'mahmoud');
INSERT INTO `ecc_employee_empmeta` VALUES(32, 7, 'last_name', 'ahmed');
INSERT INTO `ecc_employee_empmeta` VALUES(33, 7, 'avatar', '');
INSERT INTO `ecc_employee_empmeta` VALUES(34, 7, 'position', 'Sales Dirsector');
INSERT INTO `ecc_employee_empmeta` VALUES(35, 7, 'mobile', '0');
INSERT INTO `ecc_employee_empmeta` VALUES(36, 8, 'first_name', 'Ahmed');
INSERT INTO `ecc_employee_empmeta` VALUES(37, 8, 'last_name', 'Fawzy');
INSERT INTO `ecc_employee_empmeta` VALUES(38, 8, 'avatar', 'Ahmed_Fawzy.jpg');
INSERT INTO `ecc_employee_empmeta` VALUES(39, 8, 'position', 'Senior Account Manager');
INSERT INTO `ecc_employee_empmeta` VALUES(40, 8, 'mobile', '01002412533');
INSERT INTO `ecc_employee_empmeta` VALUES(41, 9, 'first_name', 'Hesham');
INSERT INTO `ecc_employee_empmeta` VALUES(42, 9, 'last_name', 'Mohamed');
INSERT INTO `ecc_employee_empmeta` VALUES(43, 9, 'avatar', 'Hesham_Mohamed.jpg');
INSERT INTO `ecc_employee_empmeta` VALUES(44, 9, 'position', 'Senior Account Manager');
INSERT INTO `ecc_employee_empmeta` VALUES(45, 9, 'mobile', '01060634154');
INSERT INTO `ecc_employee_empmeta` VALUES(46, 10, 'first_name', 'asdasdasdasd');
INSERT INTO `ecc_employee_empmeta` VALUES(47, 10, 'last_name', 'asdasdasdasd');
INSERT INTO `ecc_employee_empmeta` VALUES(48, 10, 'avatar', 'asdasdasdasd asdasdasdasd');
INSERT INTO `ecc_employee_empmeta` VALUES(49, 10, 'position', 'asdasdasd');
INSERT INTO `ecc_employee_empmeta` VALUES(50, 10, 'mobile', 'asdasdasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `ecc_fileCallsRelations_fcr`
--

DROP TABLE IF EXISTS `ecc_fileCallsRelations_fcr`;
CREATE TABLE IF NOT EXISTS `ecc_fileCallsRelations_fcr` (
  `idcall_fcr` int(11) NOT NULL,
  `idfile_fcr` int(11) NOT NULL,
  `idemp_fcr` int(11) DEFAULT NULL,
  `idco_fcr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecc_fileCallsRelations_fcr`
--

INSERT INTO `ecc_fileCallsRelations_fcr` VALUES(45, 2, 4, 1);
INSERT INTO `ecc_fileCallsRelations_fcr` VALUES(51, 2, 2, 1);
INSERT INTO `ecc_fileCallsRelations_fcr` VALUES(52, 3, 2, 1);
INSERT INTO `ecc_fileCallsRelations_fcr` VALUES(55, 4, 2, 1);
INSERT INTO `ecc_fileCallsRelations_fcr` VALUES(56, 3, 2, 1);
INSERT INTO `ecc_fileCallsRelations_fcr` VALUES(58, 2, 2, 1);
INSERT INTO `ecc_fileCallsRelations_fcr` VALUES(82, 1, 2, 1);
INSERT INTO `ecc_fileCallsRelations_fcr` VALUES(82, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_files_file`
--

DROP TABLE IF EXISTS `ecc_files_file`;
CREATE TABLE IF NOT EXISTS `ecc_files_file` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `name_file` varchar(255) DEFAULT NULL,
  `file_file` varchar(255) DEFAULT NULL,
  `date_file` datetime DEFAULT NULL,
  `mimeType_file` varchar(255) DEFAULT NULL,
  `fileSize_file` varchar(255) DEFAULT NULL,
  `grade_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ecc_files_file`
--

INSERT INTO `ecc_files_file` VALUES(1, 'Microsoft Sharepoint Technology', 'Microsoft_Sharepoint_Technology.docx', '2013-01-09 10:37:53', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '17.47', 'a');
INSERT INTO `ecc_files_file` VALUES(2, 'Operating Systems Technology', 'Operating_Systems_Technology1.docx', '2013-01-17 08:34:42', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '46.97', 'a');
INSERT INTO `ecc_files_file` VALUES(3, 'Microsoft Exchange Technology', 'Microsoft_Exchange_Technology2.docx', '2013-01-17 08:25:59', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '46.97', 'a');
INSERT INTO `ecc_files_file` VALUES(4, 'Microsoft Database Technology', 'Microsoft_Database_Technology4.docx', '2013-01-17 08:33:02', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '46.97', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `ecc_managers_man`
--

DROP TABLE IF EXISTS `ecc_managers_man`;
CREATE TABLE IF NOT EXISTS `ecc_managers_man` (
  `iddep_man` int(11) NOT NULL,
  `idemp_man` int(11) NOT NULL,
  PRIMARY KEY (`iddep_man`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecc_managers_man`
--

INSERT INTO `ecc_managers_man` VALUES(1, 1);
INSERT INTO `ecc_managers_man` VALUES(2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_mempership_memper`
--

DROP TABLE IF EXISTS `ecc_mempership_memper`;
CREATE TABLE IF NOT EXISTS `ecc_mempership_memper` (
  `iddep_memper` int(11) NOT NULL,
  `idemp_memper` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecc_mempership_memper`
--

INSERT INTO `ecc_mempership_memper` VALUES(1, 1);
INSERT INTO `ecc_mempership_memper` VALUES(1, 2);
INSERT INTO `ecc_mempership_memper` VALUES(1, 3);
INSERT INTO `ecc_mempership_memper` VALUES(1, 4);
INSERT INTO `ecc_mempership_memper` VALUES(1, 5);
INSERT INTO `ecc_mempership_memper` VALUES(1, 6);
INSERT INTO `ecc_mempership_memper` VALUES(2, 7);
INSERT INTO `ecc_mempership_memper` VALUES(2, 8);
INSERT INTO `ecc_mempership_memper` VALUES(2, 9);
INSERT INTO `ecc_mempership_memper` VALUES(1, 10);

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

-- --------------------------------------------------------

--
-- Table structure for table `ecc_products_prod`
--

DROP TABLE IF EXISTS `ecc_products_prod`;
CREATE TABLE IF NOT EXISTS `ecc_products_prod` (
  `id_prod` int(11) NOT NULL AUTO_INCREMENT,
  `name_prod` varchar(255) NOT NULL,
  `slug_prod` varchar(255) NOT NULL,
  PRIMARY KEY (`id_prod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ecc_products_prod`
--

INSERT INTO `ecc_products_prod` VALUES(1, 'Managed hosting', '');
INSERT INTO `ecc_products_prod` VALUES(2, 'Virtual Hosting', '');
INSERT INTO `ecc_products_prod` VALUES(3, 'Messaging Hosting', '');
INSERT INTO `ecc_products_prod` VALUES(4, 'Co-Location Services', '');

-- --------------------------------------------------------

--
-- Table structure for table `ecc_product_prodmeta`
--

DROP TABLE IF EXISTS `ecc_product_prodmeta`;
CREATE TABLE IF NOT EXISTS `ecc_product_prodmeta` (
  `id_prodmeta` int(11) NOT NULL AUTO_INCREMENT,
  `idprod_prodmeta` int(11) NOT NULL,
  `metaKey_prodmeta` varchar(255) NOT NULL,
  `metaValue_prodmeta` varchar(255) NOT NULL,
  PRIMARY KEY (`id_prodmeta`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ecc_product_prodmeta`
--

INSERT INTO `ecc_product_prodmeta` VALUES(1, 1, 'description', '“VPS hosting provides you the flexibility to optimize your resources to grow with your needs; allowing you to keep your server size and online requirements aligned, instead of paying for server Resources you aren''t using” ');
INSERT INTO `ecc_product_prodmeta` VALUES(2, 2, 'description', '2');
INSERT INTO `ecc_product_prodmeta` VALUES(3, 3, 'description', '\n\nECC’s Messaging Service offers a fully managed corporate e-Mail solution for businesses requiring 24x7 mission-critical and secure electronic mail capabilities.\n\nECC makes this possible by integrating high quality, highly reliable hardware, industry lea');
INSERT INTO `ecc_product_prodmeta` VALUES(4, 4, 'description', 'Our Data Centre protects your critical information and applications with the latest technology, including redundant UPS’s, reserve bandwidth and back-up generators and a world class high-speed redundant network. Co-location provides privately owned serv');

-- --------------------------------------------------------

--
-- Table structure for table `ecc_vacancies_vac`
--

DROP TABLE IF EXISTS `ecc_vacancies_vac`;
CREATE TABLE IF NOT EXISTS `ecc_vacancies_vac` (
  `id_vac` int(11) NOT NULL AUTO_INCREMENT,
  `title_vac` varchar(255) NOT NULL,
  `description_vac` text NOT NULL,
  `responsbility_vac` text NOT NULL,
  `requirements_vac` text NOT NULL,
  `working_condition_vac` text NOT NULL,
  `type_vac` varchar(255) NOT NULL,
  `reported_to_vac` varchar(255) DEFAULT NULL,
  `active_vac` int(1) NOT NULL,
  `date_vac` datetime NOT NULL,
  `end_vac` datetime NOT NULL,
  `experience_vac` varchar(255) DEFAULT NULL,
  `location_vac` varchar(255) NOT NULL,
  `vacancies_vac` varchar(255) NOT NULL,
  `gender_vac` varchar(255) NOT NULL,
  `rank_vac` varchar(255) NOT NULL,
  PRIMARY KEY (`id_vac`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ecc_vacancies_vac`
--

INSERT INTO `ecc_vacancies_vac` VALUES(1, 'Managing editor', 'write a content for online journal/ website. Establishes journalistic style of the magazine. supervises writers, freelancers.<p>Manages the scheduling, writing, and editing functions of the magazine. Coordinates with the production team on the layout of the magazine/journal.</p><p>Familiar with a variety of the field''s concepts, practices, and procedures. Relies on experience and judgment to plan and accomplish goals. Performs a variety of tasks. Leads and directs the work of others. A wide degree of creativity and latitude is expected. Typically reports <br></p>', '<ul><li>\nTrack all news related to the website.&nbsp;</li><li>Edit, update and maintain data on back-end system &amp; ensure that outputs achieve the content quality policy. </li><li>Properly formulate and write the news &amp; articles in order to upload it to the website.&nbsp;</li><li>Translate English text to Arabic if needed.</li><li>Writes new content. <br></li><li>Assist the editing team in managing the website accounts on social networks. <br></li><li>Coordinate with technical team in order to create &amp; achieve new ideas</li><li>Has a sense of art in one of the following areas: design or decoration or fashion&nbsp; accessories or any similar fields that need creativity.<br></li></ul>', '<ul><li>Strong knowledge with how to run and manage social media accounts&nbsp;</li><li>Minimal concepts of online marketing and how to create new ideas <br></li><li>Strong knowledge in computer and internet</li><li>MS Word, Excel, PowerPoint</li><li>Experience in research and found information</li><li>Work effectively within a cross-departmental team</li><li>The ability to show creativity in general meetings to express new ideas<br></li><li>Photoshop, illustrator is a plus<br></li></ul>', '<ul><li>Working days: 05 days/week, according to work shifts.</li><li>Days off: two days/week, According to work shifts</li><li>Working Hours: 8 Hrs - from 9 - 5pm</li><li>Working Environment: 5 - 10% out, 90% standard office<br></li></ul>', 'Full time', 'ahmed.saber@eccsolutions.com', 1, '2012-06-24 11:43:01', '2012-07-31 00:00:00', 'Fresh Graduated', 'Dokki', '--', 'Female', 'Junior');
INSERT INTO `ecc_vacancies_vac` VALUES(2, 'Media Sales Executive ', 'Responsible for handling all direct sales for pro solution in coordination with other team members, the proper candidates will be selling space on online magazines/ journals to direct clients and media agencies', '<ul>\n<li>Identify opportunities to enhance digital services</li>\n<li>Exceeding sales targets</li>\n<li>Develop a service products and seasonal packages</li>\n<li>Develop and establish relationships to gain repeat business</li>\n<li>Assist with conducing research into the social media &amp; internet industry to gain understanding of key clients</li>\n\n</ul>', '<ul>\n<li>Strong Knowledge in how the internet &amp; social media is run</li>\n<li>Proven record in exceeding sales targets</li>\n<li>Experience in working within the online internet industry is essential </li>\n<li>MS Word, Excel &amp; PowerPoint</li>\n<li>Photoshop is a plus</li>\n</ul>', '<ul>\n<li>Working days: 05 days/week, Sun - Th<br></li>\n<li>Days off: two days/week, Saturday, Friday<br></li>\n<li>Working Hours: 8 Hrs - from 9 - 5pm</li>\n<li>Working Environment: 90% out, 10% standard office</li>\n</ul>', 'Full time', 'ahmed.saber@eccsolutions.com', 1, '2012-06-24 13:57:33', '2012-07-31 00:00:00', 'Fresh Graduated', 'Dokki', '--', 'Male', 'Junior');
INSERT INTO `ecc_vacancies_vac` VALUES(3, 'Marketing Executive', 'working to develop and implement campaigns to increase public awareness for some of our online portals in which we work in.', 'Our philosophy and mentoring programme supports each individual with the coaching, encouragement and opportunity essentials to progressive career growth within the sales and marketing industry.<br>\n<ul>\n<li>self-starters who are goal/detail orientated and have the affinity for working with people.</li>\n<li>Follow up with all execution duties of  Marketing and business plans</li>\n<li>Manage resources to reach goal</li>\n<li>Optimize recources and enhance process flow.</li>\n<li>Follow up on different processes</li>\n<li>Generate Constant Progress Reports .</li>\n</ul>\n', '<ul>\n<li>team players</li>\n<li>creative thinkers</li>\n<li>MS Word, Excel, PowerPoint</li>\n<li>Strong Knowledge in how the internet & social media is run</li>\n<li>Photoshop is a plus</li>\n</ul>', '<ul>\n<li>Working days: 05 days/week, Sun - Th</li>\n<li>Days off: two days/week, Saturday, Friday</li>\n<li>Working Hours: 8 Hrs - from 9 - 5pm</li>\n<li>Working Environment: 20 - 80% out, 20% standard office</li>\n<li></li>\n<li></li>\n</ul>', 'Full time', 'ahmed.saber@eccsolutions.com', 1, '2012-06-24 16:05:12', '2012-07-31 00:00:00', 'Fresh Graduated', 'Dokki', '--', 'Female', 'Junior');
INSERT INTO `ecc_vacancies_vac` VALUES(4, 'مصححى لغة عربية', 'التدقيق اللغوى هو جزء رئيسى من الاخراج الصحفى المميز، نظراً لأننا نهتم بجودة المحتوى فنحن دائما أمام تحدى كبير فى عرض الاخبار والمقالات بدون أى اخطاء نحوية أو لغوية ', '<ul><li>القيام بأعمال التصحيح للغة العربية</li><li>المسؤولية الكاملة عن عرض محتوى عربى دقيق نحوياً ولغوياً</li><li>القدرة على اختيار عناوين اخبارية دالة عن أصل الخبر وملفتة لنظر القارئ<br></li></ul>', '<ul><li>خبرة في مجال النحو والصرف</li><li>خبرة فى التدقيق اللغوى</li><li>اجادة تامة لاستخدام برامج الحاسب الالى والاوفيس</li><li>لهم سابقة أعمال فى مجال التصحيح اللغوى فى دور النشر او الوكالات الصحفية</li><li>ليسانس كلية الاداب قسم اللغة العربية</li><li>ليسانس اللغة العربية جامعة الازهر</li><li>ليسانس كلية دار العلوم قسم اللغة العربية</li></ul>', '<ul>\n   <li>Working days: 05 days/week, Sun - Th</li>\n   <li>Days off: two days/week, Saturday, Friday</li>\n   <li>Working Hours: 8 Hrs - from 9 - 5pm</li>\n   <li>Working Environment: 100% standard office</li>\n</ul>', 'Full time', 'ahmed.saber@eccsolutions.com', 1, '2012-06-25 09:17:08', '2012-07-31 00:00:00', 'Fresh Graduated', 'Dokki', '--', 'Male', 'Junior');
INSERT INTO `ecc_vacancies_vac` VALUES(5, 'web developer', 'Working as a part of the team, the successful candidate will be engaged in all stages of website development. The asp.net Web Developer will be involved in structural planning, creative brainstorming as well as HTML Programming, asp.net programming and Database Design among others.', '<ul><li>Handle and develop front and backend for our websites.</li>\n<li>Bring New Idea''s.</li>\n\n</ul>', '<ul>\n<li>Computer Science Graduate or equivalent certificates</li>\n<li>Very good command of the English language – written and spoken</li>\n<li>Courses in web development and equivalents are a plus</li>\n<li>In depth ASP, json, jquery, CSS and (X) HTML knowledge ( JavaScript will be plus).</li>\n<li>Strong database knowledge specifically SQL Server</li>\n<li>Web / Graphical Design skills would be desirable.</li>\n<li>A flexible attitude with proven experience of working in a small team.</li>\n</ul>', '<ul>\n<li>Working days: 05 days/week, Sun - Th</li>\n<li>Days off: two days/week, Saturday, Friday</li>\n<li>Working Hours: 8 Hrs - from 9 - 5pm</li>\n<li>Working Environment: 100% standard office</li>\n</ul>', 'Full time', 'mahmoud.maksoud@eccsolutions.net', 1, '2012-06-25 14:05:19', '2012-07-31 00:00:00', '2 years', 'Dokkie', '--', '', 'Senior');
