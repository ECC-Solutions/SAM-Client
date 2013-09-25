-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 16, 2013 at 10:20 AM
-- Server version: 5.5.25
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


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
CREATE TABLE `ecc_accounts_acc` (
  `id_acc` int(11) NOT NULL AUTO_INCREMENT,
  `idemp_acc` int(11) NOT NULL DEFAULT '0',
  `idco_acc` int(11) NOT NULL DEFAULT '0',
  `registeredDate_acc` date DEFAULT NULL,
  `status_acc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_acc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `ecc_accounts_acc`
--

INSERT INTO `ecc_accounts_acc` (`id_acc`, `idemp_acc`, `idco_acc`, `registeredDate_acc`, `status_acc`) VALUES
(6, 6, 10, '2013-02-15', '1'),
(17, 9, 16, '0000-00-00', 'active'),
(44, 6, 21, '2013-02-17', '1'),
(46, 0, 0, NULL, 'draft'),
(47, 0, 0, NULL, 'draft'),
(48, 0, 0, NULL, 'draft'),
(49, 0, 0, NULL, 'draft'),
(50, 4, 8, '0000-00-00', 'active'),
(51, 0, 0, NULL, 'draft'),
(52, 0, 0, NULL, 'draft'),
(53, 0, 0, NULL, 'draft'),
(55, 0, 0, NULL, 'draft'),
(56, 8, 17, '0000-00-00', 'active'),
(57, 0, 0, NULL, 'draft'),
(58, 0, 0, NULL, 'draft'),
(60, 0, 0, NULL, 'draft'),
(62, 6, 77, '2013-02-20', '1'),
(63, 0, 0, NULL, 'draft'),
(64, 4, 78, '2013-02-21', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `ecc_accounts_products_accprod`
--

DROP TABLE IF EXISTS `ecc_accounts_products_accprod`;
CREATE TABLE `ecc_accounts_products_accprod` (
  `id_accprod` int(11) NOT NULL AUTO_INCREMENT,
  `idacc_accprod` int(11) NOT NULL,
  `idprod_accprod` int(11) NOT NULL,
  PRIMARY KEY (`id_accprod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ecc_applicant_app`
--

DROP TABLE IF EXISTS `ecc_applicant_app`;
CREATE TABLE `ecc_applicant_app` (
  `id_app` int(11) NOT NULL AUTO_INCREMENT,
  `idvac_app` int(11) NOT NULL,
  `name_app` varchar(255) NOT NULL,
  `email_app` varchar(255) NOT NULL,
  `cv_app` varchar(255) NOT NULL DEFAULT '',
  `date_app` datetime NOT NULL,
  `have_interview_app` int(1) NOT NULL DEFAULT '0',
  `accepted_app` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_app`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `ecc_applicant_app`
--

INSERT INTO `ecc_applicant_app` (`id_app`, `idvac_app`, `name_app`, `email_app`, `cv_app`, `date_app`, `have_interview_app`, `accepted_app`) VALUES
(1, 2, 'mohamed abdelnaby', 'ahmedsaber111@gmail.com', 'mohamed_abdelnaby_{Media_Sales_Executive_}_2012-06-24_08:41:38_pm.pdf', '2012-06-24 08:41:38', 0, 0),
(2, 5, 'ahmed abdelnaby saber', 'ahmedsaber111@gmail.com', 'ahmed_abdelnaby_saber_{web_developer}_2012-06-28_02:05:15.pdf', '2012-06-28 02:05:15', 0, 0),
(3, 3, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Marketing_Executive}_2012-06-28_02:07:49.pdf', '2012-06-28 02:07:49', 0, 0),
(4, 3, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Marketing_Executive}_2012-06-28_02:08:23.pdf', '2012-06-28 02:08:23', 0, 0),
(5, 3, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Marketing_Executive}_2012-06-28_02:09:29.pdf', '2012-06-28 02:09:29', 0, 0),
(6, 4, 'ahmed', 'hhg@kjh.com', 'ahmed_{مصححى_لغة_عربية}_2012-06-28_02:17:01.pdf', '2012-06-28 02:17:01', 0, 0),
(7, 4, 'ahmed', 'hhg@kjh.com', 'ahmed_{مصححى_لغة_عربية}_2012-06-28_02:17:38.pdf', '2012-06-28 02:17:38', 0, 0),
(8, 4, 'ahmed', 'hhg@kjh.com', 'ahmed_{مصححى_لغة_عربية}_2012-06-28_02:18:07.pdf', '2012-06-28 02:18:07', 0, 0),
(9, 4, 'ahmed', 'hhg@kjh.com', 'ahmed_{مصححى_لغة_عربية}_2012-06-28_02:19:05.pdf', '2012-06-28 02:19:05', 0, 0),
(10, 4, 'ahmed', 'hhg@kjh.com', 'ahmed_{مصححى_لغة_عربية}_2012-06-28_02:20:06.pdf', '2012-06-28 02:20:06', 0, 0),
(11, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:21:13.pdf', '2012-06-28 02:21:13', 0, 0),
(12, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:22:30.pdf', '2012-06-28 02:22:30', 0, 0),
(13, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:25:14.pdf', '2012-06-28 02:25:14', 0, 0),
(14, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:27:59.pdf', '2012-06-28 02:27:59', 0, 0),
(15, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:28:37.pdf', '2012-06-28 02:28:37', 0, 0),
(16, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:33:39.pdf', '2012-06-28 02:33:39', 0, 0),
(17, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:39:40.pdf', '2012-06-28 02:39:40', 0, 0),
(18, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:41:19.pdf', '2012-06-28 02:41:19', 0, 0),
(19, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:44:07.pdf', '2012-06-28 02:44:07', 0, 0),
(20, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:46:17.pdf', '2012-06-28 02:46:17', 0, 0),
(21, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:47:18.pdf', '2012-06-28 02:47:18', 0, 0),
(22, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:47:42.pdf', '2012-06-28 02:47:42', 0, 0),
(23, 5, 'test ', 'a@a.com', 'Ahmed mohamed hany CV.docx', '2012-06-28 03:03:03', 0, 0),
(24, 5, 'test', 'a@a.com', 'Ahmed mohamed hany CV.docx', '2012-06-28 03:05:54', 0, 0),
(25, 2, 'ahmed abdelnaby saber', 'ahmedsaber111@gmail.com', 'ahmed_abdelnaby_saber_{Media_Sales_Executive_}_2012-06-28_03:26:04.pdf', '2012-06-28 03:26:04', 0, 0),
(26, 2, 'ahmed abdelnaby saber', 'ahmedsaber111@gmail.com', 'ahmed_abdelnaby_saber_{Media_Sales_Executive_}_2012-06-28_03:26:42.pdf', '2012-06-28 03:26:42', 0, 0),
(27, 2, 'ahmed abdelnaby saber', 'ahmedsaber111@gmail.com', 'ahmed_abdelnaby_saber_{Media_Sales_Executive_}_2012-06-28_03:40:18.pdf', '2012-06-28 03:40:18', 0, 0),
(28, 2, 'ahmed abdelnaby saber', 'ahmedsaber111@gmail.com', 'ahmed_abdelnaby_saber_{Media_Sales_Executive_}_2012-06-28_03:41:16.pdf', '2012-06-28 03:41:16', 0, 0),
(29, 2, 'ahmed abdelnaby saber', 'ahmedsaber111@gmail.com', 'ahmed_abdelnaby_saber_{Media_Sales_Executive_}_2012-06-28_03:43:15.pdf', '2012-06-28 03:43:15', 0, 0),
(30, 2, 'ahmed abdelnaby saber', 'ahmedsaber111@gmail.com', 'ahmed_abdelnaby_saber_{Media_Sales_Executive_}_2012-06-28_03:44:28.pdf', '2012-06-28 03:44:28', 0, 0),
(31, 5, 'a', 'a@a.com', 'Ahmed mohamed hany CV.docx', '2012-06-28 04:05:39', 0, 0),
(32, 1, 'ahmed abdelnaby saber', 'ahmedsaber111@gmail.com', 'ahmed_abdelnaby_saber_{Managing_editor}_2012-06-28_04:31:53.pdf', '2012-06-28 04:31:53', 0, 0),
(33, 5, 'Abrar Mudhir', 'abrarsharif2010@gmail.com', 'Abrar_Mudhir_{web_developer}_2012-06-29_12:47:37.doc', '2012-06-29 12:47:37', 0, 0),
(34, 4, 'Eman Hamdy Farrag', 'emanhamdi6@gmail.com', 'Eman_Hamdy_Farrag_{مصححى_لغة_عربية}_2012-06-29_01:59:46.docx', '2012-06-29 01:59:46', 0, 0),
(35, 5, 'adel mahmoud abd el-hameed khapiri', 'adelfci@gmail.com', 'adel_mahmoud_abd_el-hameed_khapiri_{web_developer}_2012-07-01_07:42:36.doc', '2012-07-01 07:42:36', 0, 0),
(36, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_10:19:17.pdf', '2012-07-02 10:19:17', 0, 0),
(37, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_10:19:41.pdf', '2012-07-02 10:19:41', 0, 0),
(38, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_10:21:31.pdf', '2012-07-02 10:21:31', 0, 0),
(39, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_11:10:50.pdf', '2012-07-02 11:10:50', 0, 0),
(40, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_11:39:53.pdf', '2012-07-02 11:39:53', 0, 0),
(41, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_11:41:02.pdf', '2012-07-02 11:41:02', 0, 0),
(42, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_11:42:15.pdf', '2012-07-02 11:42:15', 0, 0),
(43, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_11:48:51.pdf', '2012-07-02 11:48:51', 0, 0),
(44, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_11:49:55.pdf', '2012-07-02 11:49:55', 0, 0),
(45, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_11:50:22.pdf', '2012-07-02 11:50:22', 0, 0),
(46, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_11:52:46.pdf', '2012-07-02 11:52:46', 0, 0),
(47, 5, 'hello test', 'ahmedsaber111@gmail.com', 'hello_test_{web_developer}_2012-07-03_12:40:41.pdf', '2012-07-03 12:40:41', 0, 0),
(48, 5, 'hello test', 'ahmedsaber111@gmail.com', 'hello_test_{web_developer}_2012-07-03_12:40:53.pdf', '2012-07-03 12:40:53', 0, 0),
(49, 5, 'hello test', 'ahmedsaber111@gmail.com', 'hello_test_{web_developer}_2012-07-03_12:41:36.pdf', '2012-07-03 12:41:36', 0, 0),
(50, 3, 'Alaa Ahmed Hamad', 'alaahamad@hotmail.com', 'Alaa''s C.V_._.rtf', '2012-07-03 01:53:27', 0, 0),
(51, 5, 'Ammar Marzouk Roshdy', 'itc.ammar@inter-vision.ws', 'Ammar_Marzouk_Roshdy_{web_developer}_2012-07-03_05:50:42.doc', '2012-07-03 05:50:42', 0, 0),
(52, 5, 'Mohamed Fakhr El Din', 'medmost@gmail.com', 'Mohamed_Fakhr_El_Din_{web_developer}_2012-07-10_09:36:03.DOC', '2012-07-10 09:36:03', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_calls_call`
--

DROP TABLE IF EXISTS `ecc_calls_call`;
CREATE TABLE `ecc_calls_call` (
  `id_call` int(11) NOT NULL AUTO_INCREMENT,
  `idemp_call` int(11) NOT NULL DEFAULT '0',
  `idco_call` int(11) NOT NULL DEFAULT '0',
  `status_call` varchar(255) NOT NULL DEFAULT '1',
  `callType_call` varchar(255) DEFAULT NULL,
  `accept_call` int(1) DEFAULT NULL,
  `date_call` datetime DEFAULT NULL,
  `inDate_call` date DEFAULT NULL,
  `dueDate_call` datetime DEFAULT NULL,
  `callStatus_call` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_call`),
  KEY `idemp_call` (`idemp_call`),
  KEY `idco_call` (`idco_call`),
  KEY `status_call` (`status_call`),
  KEY `idemp_call_2` (`idemp_call`),
  KEY `idco_call_2` (`idco_call`),
  KEY `status_call_2` (`status_call`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=146 ;

--
-- Dumping data for table `ecc_calls_call`
--

INSERT INTO `ecc_calls_call` (`id_call`, `idemp_call`, `idco_call`, `status_call`, `callType_call`, `accept_call`, `date_call`, `inDate_call`, `dueDate_call`, `callStatus_call`) VALUES
(22, 6, 8, 'active', 'call', 0, '2013-02-18 00:00:00', NULL, '2013-02-26 00:00:00', 'done'),
(26, 6, 8, 'active', 'call', 0, '2013-02-18 00:00:00', NULL, '0000-00-00 00:00:00', 'done'),
(32, 4, 8, 'active', 'visit', 0, '2013-02-19 00:00:00', NULL, '2013-02-27 00:00:00', 'done'),
(38, 4, 8, 'active', 'visit', 0, '2013-02-19 00:00:00', NULL, '2013-02-05 00:00:00', 'open'),
(60, 4, 16, 'active', 'call', 0, '2013-02-20 00:00:00', '2013-02-27', '2013-02-05 00:00:00', 'done'),
(74, 6, 10, 'active', 'call', 0, '2013-02-21 11:02:57', NULL, '2013-02-12 00:00:00', 'open'),
(103, 6, 10, 'active', 'call', 0, '2013-02-21 13:48:28', NULL, '2013-02-20 00:00:00', 'open'),
(105, 6, 10, 'active', 'call', 0, '2013-02-21 13:50:21', NULL, '2013-02-25 00:00:00', 'open'),
(106, 6, 10, 'active', 'call', 0, '2013-02-21 13:52:05', NULL, '2013-02-25 00:00:00', 'done'),
(109, 6, 16, 'active', 'call', 0, '2013-02-21 14:13:45', NULL, '2013-02-05 00:00:00', 'open'),
(135, 4, 78, 'active', 'call', 0, '2013-02-21 16:03:46', '2013-02-12', '2013-02-26 00:00:00', 'done'),
(137, 4, 10, 'active', 'call', 0, '2013-02-27 09:45:40', '2013-02-26', '2013-02-27 09:45:40', 'done'),
(138, 4, 8, 'active', 'call', 0, '2013-02-27 13:05:17', '2013-02-13', '2013-02-27 13:05:17', 'done'),
(139, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL, NULL),
(140, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL, NULL),
(141, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL, NULL),
(142, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL, NULL),
(143, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL, NULL),
(144, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL, NULL),
(145, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_call_cmeta`
--

DROP TABLE IF EXISTS `ecc_call_cmeta`;
CREATE TABLE `ecc_call_cmeta` (
  `id_cmeta` int(11) NOT NULL AUTO_INCREMENT,
  `idcall_cmeta` int(11) NOT NULL,
  `metaKey_cmeta` varchar(255) NOT NULL,
  `metaValue_cmeta` varchar(255) NOT NULL,
  `mimeType_cmeta` varchar(255) DEFAULT NULL,
  `fileSize_cmeta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_cmeta`),
  KEY `idcall_cmeta` (`idcall_cmeta`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=79 ;

--
-- Dumping data for table `ecc_call_cmeta`
--

INSERT INTO `ecc_call_cmeta` (`id_cmeta`, `idcall_cmeta`, `metaKey_cmeta`, `metaValue_cmeta`, `mimeType_cmeta`, `fileSize_cmeta`) VALUES
(21, 22, 'inDate', '', NULL, NULL),
(22, 22, 'reason', 'You are on the Sandbox plan, which has hard limits on messages and connections. We recommend you upgrade before integrating with a production application.\n', NULL, NULL),
(25, 26, 'inDate', '2013-02-21', NULL, NULL),
(26, 26, 'reason', 'Kindly handle all database issues', NULL, NULL),
(31, 32, 'inDate', '', NULL, NULL),
(32, 32, 'reason', 'call objective ', NULL, NULL),
(34, 38, 'inDate', '', NULL, NULL),
(35, 38, 'reason', 'call them', NULL, NULL),
(42, 60, 'inDate', '', NULL, NULL),
(43, 60, 'reason', 'As we come to the years end -  we are  going- to  delve   popular  tutorials   the pop up footer  and sprinkle it with some CSS magic', NULL, NULL),
(44, 74, 'inDate', '', NULL, NULL),
(45, 74, 'reason', 'I will do my best to handle this', NULL, NULL),
(54, 103, 'inDate', '', NULL, NULL),
(55, 103, 'reason', 'this  parent   css  position    relative    br -     this  parent   append   div class  preloading  style  height 25px  border-radius 8px    img src    php echo base url      assets-boffice-images-tinyPreloader gif      alt  تحميل  style  margin-top 7px  ', NULL, NULL),
(56, 105, 'inDate', '', NULL, NULL),
(57, 105, 'reason', 'var preloadingTooltip     div class  preloadingToolTip    br -      div class  bottomArrow   -div   br -      div class  preloadingTooltip box  Please wait while we submitted the data -div   br -      -div', NULL, NULL),
(58, 106, 'inDate', '', NULL, NULL),
(59, 106, 'reason', 'submitThis', NULL, NULL),
(60, 109, 'inDate', '', NULL, NULL),
(61, 109, 'reason', 'submitThis', NULL, NULL),
(69, 138, 'contact', '2', NULL, NULL),
(70, 138, 'contact', '4', NULL, NULL),
(71, 138, 'contact', '1', NULL, NULL),
(72, 135, 'inDate', '', NULL, NULL),
(73, 135, 'reason', 'Prior versions treated arrays as the"" string Array  thus returning a string length of 5 and emitting an E NOTICE level error', NULL, NULL),
(74, 137, 'inDate', '2013-02-26', NULL, NULL),
(75, 137, 'reason', 'done call', NULL, NULL),
(76, 138, 'inDate', '2013-02-13', NULL, NULL),
(77, 138, 'reason', 'donne', NULL, NULL),
(78, 141, 'contact', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_companyBranch_cobr`
--

DROP TABLE IF EXISTS `ecc_companyBranch_cobr`;
CREATE TABLE `ecc_companyBranch_cobr` (
  `id_cobr` int(11) NOT NULL AUTO_INCREMENT,
  `idco_cobr` int(11) NOT NULL,
  `name_cobr` varchar(255) NOT NULL,
  `address_cobr` text,
  `fax_cobr` varchar(255) DEFAULT NULL,
  `phone_cobr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_cobr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ecc_companyCategory_cocat`
--

DROP TABLE IF EXISTS `ecc_companyCategory_cocat`;
CREATE TABLE `ecc_companyCategory_cocat` (
  `id_cocat` int(11) NOT NULL AUTO_INCREMENT,
  `name_cocat` varchar(255) DEFAULT NULL,
  `count_cocat` int(11) DEFAULT '0',
  PRIMARY KEY (`id_cocat`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ecc_companyCategory_cocat`
--

INSERT INTO `ecc_companyCategory_cocat` (`id_cocat`, `name_cocat`, `count_cocat`) VALUES
(1, 'prospect', 12),
(2, 'current', 0),
(3, 'x-customer', 3),
(4, 'vendor', 0),
(5, 'partner', 1),
(6, 'third party', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_companyContact_cocontact`
--

DROP TABLE IF EXISTS `ecc_companyContact_cocontact`;
CREATE TABLE `ecc_companyContact_cocontact` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ecc_companyContact_cocontact`
--

INSERT INTO `ecc_companyContact_cocontact` (`id_cocontact`, `idco_cocontact`, `name_cocontact`, `email_cocontact`, `phone_cocontact`, `mobile_cocontact`, `fax_cocontact`, `position_cocontact`, `brief_cocontact`) VALUES
(1, 16, 'Sherif Kamal', 'sherif.azab@aunion-c.com', '01015552992', '+0122009212', '111212321321321', 'Senior UI/ UX Designer', '');

-- --------------------------------------------------------

--
-- Table structure for table `ecc_companyMeta_cometa`
--

DROP TABLE IF EXISTS `ecc_companyMeta_cometa`;
CREATE TABLE `ecc_companyMeta_cometa` (
  `id_cometa` int(11) NOT NULL AUTO_INCREMENT,
  `idco_cometa` int(11) NOT NULL,
  `metaKey_cometa` varchar(255) NOT NULL,
  `metaValue_cometa` varchar(255) NOT NULL,
  PRIMARY KEY (`id_cometa`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=154 ;

--
-- Dumping data for table `ecc_companyMeta_cometa`
--

INSERT INTO `ecc_companyMeta_cometa` (`id_cometa`, `idco_cometa`, `metaKey_cometa`, `metaValue_cometa`) VALUES
(1, 1, 'address', '306 Cornish El-Maadi, HSBC Building'),
(2, 1, 'website', 'http://www.magrabioptical.com'),
(3, 1, 'logo', 'Magrabi2.jpg'),
(4, 2, 'address', 'Egypt Office<br />New Maadi, HSB Building 4th'),
(5, 2, 'website', 'http://www.magrabioptical.com'),
(6, 2, 'logo', 'Magrabi3.jpg'),
(7, 2, 'registeredDate', '2013-02-15'),
(8, 2, 'creatorId', '1'),
(9, 2, 'creatorNameSpace', 'Master Account'),
(10, 4, 'address', 'New Maadi, HSB Building'),
(11, 4, 'website', 'http://www.magrabiretail.com'),
(12, 4, 'logo', 'Magrabi4.jpg'),
(13, 4, 'registeredDate', '2013-02-15 18:27:35'),
(14, 4, 'creatorId', '4'),
(15, 4, 'creatorNameSpace', 'Magdy Yassin'),
(16, 5, 'address', 'New Maadi, HSBC Building'),
(17, 5, 'website', 'http://www.magrabiretail.com'),
(18, 5, 'logo', 'Magrabi_Retail1.jpg'),
(19, 5, 'registeredDate', '2013-02-15 18:31:27'),
(20, 5, 'creatorId', '4'),
(21, 5, 'creatorNameSpace', 'Magdy Yassin'),
(22, 8, 'address', 'New Maadi'),
(23, 8, 'website', 'http://www.magrabiretail.com'),
(24, 8, 'logo', 'Magrabi_Lincess.png'),
(25, 8, 'registeredDate', '2013-02-15 18:41:51'),
(26, 8, 'creatorId', '6'),
(27, 8, 'creatorNameSpace', 'Ahmed Saber'),
(28, 10, 'address', 'Smart Village'),
(29, 10, 'website', ''),
(30, 10, 'logo', 'ECCO.png'),
(31, 10, 'registeredDate', '2013-02-15 20:48:37'),
(32, 10, 'creatorId', '6'),
(33, 10, 'creatorNameSpace', 'Ahmed Saber'),
(34, 16, 'address', 'Dokki'),
(35, 16, 'website', ''),
(36, 16, 'logo', 'AunionC.png'),
(37, 16, 'registeredDate', '2013-02-17 20:24:14'),
(38, 16, 'creatorId', '6'),
(39, 16, 'creatorNameSpace', 'Ahmed Saber'),
(40, 17, 'address', 'asdasd'),
(41, 17, 'website', ''),
(42, 17, 'logo', 'Nokia.png'),
(43, 17, 'registeredDate', '2013-02-17 21:26:19'),
(44, 17, 'creatorId', '1'),
(45, 17, 'creatorNameSpace', 'Master Account'),
(46, 18, 'address', 'asasdasdsd'),
(47, 18, 'website', ''),
(48, 18, 'logo', 'ECC.png'),
(49, 18, 'registeredDate', '2013-02-17 21:27:20'),
(50, 18, 'creatorId', '4'),
(51, 18, 'creatorNameSpace', 'Magdy Yassin'),
(52, 19, 'address', 'asdasdad'),
(53, 19, 'website', ''),
(54, 19, 'logo', 'FGF.jpg'),
(55, 19, 'registeredDate', '2013-02-17 21:32:20'),
(56, 19, 'creatorId', '1'),
(57, 19, 'creatorNameSpace', 'Master Account'),
(58, 20, 'address', 'asdasdasd'),
(59, 20, 'website', ''),
(60, 20, 'logo', 'Mobile_Shop.png'),
(61, 20, 'registeredDate', '2013-02-17 21:32:51'),
(62, 20, 'creatorId', '4'),
(63, 20, 'creatorNameSpace', 'Magdy Yassin'),
(64, 21, 'address', 'asdasd'),
(65, 21, 'website', ''),
(66, 21, 'logo', 'Sofa.png'),
(67, 21, 'registeredDate', '2013-02-17 21:33:15'),
(68, 21, 'creatorId', '6'),
(69, 21, 'creatorNameSpace', 'Ahmed Saber'),
(70, 56, 'address', ''),
(71, 56, 'website', ''),
(72, 56, 'logo', 'Novartis'),
(73, 56, 'registeredDate', '2013-02-19 22:14:32'),
(74, 56, 'creatorId', '1'),
(75, 56, 'creatorNameSpace', 'Master Account'),
(76, 57, 'address', '..''sasd'' asdasd ''asdasd''. Remove / \\'),
(77, 57, 'website', ''),
(78, 57, 'logo', 'Novartis 2'),
(79, 57, 'registeredDate', '2013-02-19 22:16:27'),
(80, 57, 'creatorId', '1'),
(81, 57, 'creatorNameSpace', 'Master Account'),
(82, 58, 'address', 'text-text2\\text3'),
(83, 58, 'website', ''),
(84, 58, 'logo', 'Magrabi22'),
(85, 58, 'registeredDate', '2013-02-19 22:17:55'),
(86, 58, 'creatorId', '1'),
(87, 58, 'creatorNameSpace', 'Master Account'),
(88, 59, 'address', 'text\\text'),
(89, 59, 'website', ''),
(90, 59, 'logo', 'Magrabi Optical2s'),
(91, 59, 'registeredDate', '2013-02-19 22:18:40'),
(92, 59, 'creatorId', '1'),
(93, 59, 'creatorNameSpace', 'Master Account'),
(94, 60, 'address', 'text\\text'),
(95, 60, 'website', ''),
(96, 60, 'logo', '2Magrabi2'),
(97, 60, 'registeredDate', '2013-02-19 22:20:20'),
(98, 60, 'creatorId', '1'),
(99, 60, 'creatorNameSpace', 'Master Account'),
(100, 61, 'address', ''),
(101, 61, 'website', ''),
(102, 61, 'logo', 'nmans'),
(103, 61, 'registeredDate', '2013-02-19 22:22:16'),
(104, 61, 'creatorId', '1'),
(105, 61, 'creatorNameSpace', 'Master Account'),
(106, 62, 'address', ''),
(107, 62, 'website', ''),
(108, 62, 'logo', ''),
(109, 62, 'registeredDate', '2013-02-19 22:23:36'),
(110, 62, 'creatorId', '1'),
(111, 62, 'creatorNameSpace', 'Master Account'),
(112, 63, 'address', ''),
(113, 63, 'website', ''),
(114, 63, 'logo', 'asdsadasd.jpg'),
(115, 63, 'registeredDate', '2013-02-19 22:23:55'),
(116, 63, 'creatorId', '1'),
(117, 63, 'creatorNameSpace', 'Master Account'),
(118, 77, 'address', ''),
(119, 77, 'website', ''),
(120, 77, 'logo', ''),
(121, 77, 'registeredDate', '2013-02-20 14:43:57'),
(122, 77, 'creatorId', '6'),
(123, 77, 'creatorNameSpace', 'Ahmed Saber'),
(124, 78, 'address', ''),
(125, 78, 'website', ''),
(126, 78, 'logo', ''),
(127, 78, 'registeredDate', '2013-02-20 14:46:12'),
(128, 78, 'creatorId', '1'),
(129, 78, 'creatorNameSpace', 'Master Account'),
(130, 79, 'address', ''),
(131, 79, 'website', ''),
(132, 79, 'logo', ''),
(133, 79, 'registeredDate', '2013-02-20 14:47:47'),
(134, 79, 'creatorId', '1'),
(135, 79, 'creatorNameSpace', 'Master Account'),
(136, 80, 'address', 'PreAddress -- as   ahmed-'),
(137, 80, 'website', ''),
(138, 80, 'logo', ''),
(139, 80, 'registeredDate', '2013-02-20 14:50:32'),
(140, 80, 'creatorId', '1'),
(141, 80, 'creatorNameSpace', 'Master Account'),
(142, 81, 'address', 'As we -to end -  we are- to   delve     popular    andh   -'),
(143, 81, 'website', ''),
(144, 81, 'logo', ''),
(145, 81, 'registeredDate', '2013-02-20 15:14:44'),
(146, 81, 'creatorId', '1'),
(147, 81, 'creatorNameSpace', 'Master Account'),
(148, 82, 'address', 'As we -to end -  we are- to   delve     popular    andh   -'),
(149, 82, 'website', ''),
(150, 82, 'logo', ''),
(151, 82, 'registeredDate', '2013-02-20 15:17:14'),
(152, 82, 'creatorId', '1'),
(153, 82, 'creatorNameSpace', 'Master Account');

-- --------------------------------------------------------

--
-- Table structure for table `ecc_company_co`
--

DROP TABLE IF EXISTS `ecc_company_co`;
CREATE TABLE `ecc_company_co` (
  `id_co` int(11) NOT NULL AUTO_INCREMENT,
  `idcocat_co` int(11) DEFAULT NULL,
  `arName_co` varchar(255) DEFAULT NULL,
  `name_co` varchar(255) NOT NULL DEFAULT '',
  `status_co` varchar(255) NOT NULL,
  `accountCount_co` int(11) DEFAULT '0',
  PRIMARY KEY (`id_co`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `ecc_company_co`
--

INSERT INTO `ecc_company_co` (`id_co`, `idcocat_co`, `arName_co`, `name_co`, `status_co`, `accountCount_co`) VALUES
(7, 2, 'ايكو', 'ECCO', 'active', 1),
(8, 1, 'المغربي للبصريات', 'Magrabi Lincess2', 'active', -2),
(16, 1, 'ايونيون سي', 'AunionC', 'active', -2),
(17, 1, NULL, 'Nokia', 'active', 0),
(18, 1, NULL, 'ECC', 'active', 0),
(19, 1, NULL, 'FGF', 'active', 0),
(20, 3, NULL, 'Mobile Shop', 'active', 0),
(21, 1, NULL, 'Sofa', 'active', 1),
(56, 6, 'نوفارتس', 'Novartis', 'active', 0),
(57, 6, 'نوفارتس', 'Novartis 2', 'active', 0),
(58, 5, 'المغربي للبصريات', 'Magrabi22', 'active', 0),
(59, 6, 'المغربي للبصريات', 'Magrabi Optical2s', 'active', 0),
(61, 1, '', 'nmans', 'active', 0),
(77, 1, 'نوكيا', 'Nokia connecting people', 'active', 1),
(78, 4, 'نوكيا', 'Nokia connecting people2', 'active', 0),
(79, 1, 'المغربي للبصريات', 'Magrabi Optical2', 'active', 0),
(80, 3, '', 'Magrabi222', 'active', 0),
(81, 3, 'المغربي', 'Magrabi optical', 'active', 0),
(82, 1, '', 'شركة', 'active', 0),
(83, NULL, NULL, '', 'draft', 0),
(84, NULL, NULL, '', 'draft', 0),
(85, NULL, NULL, '', 'draft', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_department_dep`
--

DROP TABLE IF EXISTS `ecc_department_dep`;
CREATE TABLE `ecc_department_dep` (
  `id_dep` int(11) NOT NULL AUTO_INCREMENT,
  `name_dep` varchar(255) NOT NULL,
  `status_dep` varchar(255) DEFAULT NULL,
  `count_dep` int(11) DEFAULT '0',
  PRIMARY KEY (`id_dep`),
  KEY `name_dep` (`name_dep`),
  KEY `name_dep_2` (`name_dep`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ecc_department_dep`
--

INSERT INTO `ecc_department_dep` (`id_dep`, `name_dep`, `status_dep`, `count_dep`) VALUES
(1, 'S.A.M', '1', 1),
(5, 'Internet Services', '1', 4),
(6, 'Sales', '1', 3),
(9, 'Operation', '1', 0),
(10, 'SAM', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_employees_emp`
--

DROP TABLE IF EXISTS `ecc_employees_emp`;
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

-- --------------------------------------------------------

--
-- Table structure for table `ecc_employee_empmeta`
--

DROP TABLE IF EXISTS `ecc_employee_empmeta`;
CREATE TABLE `ecc_employee_empmeta` (
  `id_empmeta` int(11) NOT NULL AUTO_INCREMENT,
  `idemp_empmeta` int(11) NOT NULL,
  `metaKey_empmeta` varchar(255) NOT NULL,
  `metaValue_empmeta` varchar(255) NOT NULL,
  PRIMARY KEY (`id_empmeta`),
  KEY `idemp_empmeta` (`idemp_empmeta`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `ecc_employee_empmeta`
--

INSERT INTO `ecc_employee_empmeta` (`id_empmeta`, `idemp_empmeta`, `metaKey_empmeta`, `metaValue_empmeta`) VALUES
(1, 1, 'first_name', 'Master'),
(2, 1, 'last_name', 'Account'),
(3, 1, 'position', 'ECC Sales Cloud Administrator'),
(4, 1, 'avatar', 'Magdy_Yassin6.jpg'),
(5, 1, 'mobile', '01201129091'),
(6, 1, 'mobile2', '1'),
(7, 1, 'home_phone', ''),
(8, 1, 'address', ''),
(25, 4, 'first_name', 'Magdy'),
(26, 4, 'last_name', 'Yassin'),
(27, 4, 'avatar', 'Magdy_Yassin8.jpg'),
(28, 4, 'position', 'Strategy & Planning Director'),
(29, 4, 'mobile', '01220098536'),
(30, 4, 'mobile2', ''),
(31, 4, 'home_phone', ''),
(32, 4, 'address', ''),
(41, 6, 'first_name', 'Ahmed'),
(42, 6, 'last_name', 'Abdelnaby Saber'),
(43, 6, 'avatar', 'Ahmed_Saber1.jpg'),
(44, 6, 'position', 'Senior UI/ UX Designer'),
(45, 6, 'mobile', '01015552992'),
(46, 6, 'mobile2', '01060634154'),
(47, 6, 'home_phone', '0222073227'),
(48, 6, 'address', '42 ahmed helmy st. Shobra Masr'),
(57, 8, 'first_name', 'Mohamed'),
(58, 8, 'last_name', 'Khaiary'),
(59, 8, 'avatar', 'Mohamed Khaiary'),
(60, 8, 'position', 'Sales Director'),
(61, 8, 'mobile', '01902909090'),
(62, 8, 'mobile2', '01060634154'),
(63, 8, 'home_phone', ''),
(64, 8, 'address', ''),
(65, 9, 'first_name', 'Ahmed'),
(66, 9, 'last_name', 'Fawzy'),
(67, 9, 'avatar', 'Ahmed Fawzy'),
(68, 9, 'position', 'Senior Account Manager'),
(69, 9, 'mobile', '01201129091'),
(70, 9, 'mobile2', ''),
(71, 9, 'home_phone', ''),
(72, 9, 'address', ''),
(73, 10, 'first_name', 'Mohamed'),
(74, 10, 'last_name', 'Saber'),
(75, 10, 'avatar', 'Mohamed Saber'),
(76, 10, 'position', 'Senior UI/ UX Designer'),
(77, 10, 'mobile', '019090921212'),
(78, 10, 'mobile2', '01060634154'),
(79, 10, 'home_phone', '0222073227'),
(80, 10, 'address', '42 ahmed helmy st. Shobra Masr'),
(81, 11, 'first_name', 'Mohab'),
(82, 11, 'last_name', 'Omar'),
(83, 11, 'avatar', 'Mohab Omar'),
(84, 11, 'position', 'Senior UI/ UX Designer'),
(85, 11, 'mobile', '019090921212'),
(86, 11, 'mobile2', '01060634154'),
(87, 11, 'home_phone', '02220732272'),
(88, 11, 'address', '42 ahmed helmy st. Shobra Masr'),
(89, 12, 'first_name', 'AHmed'),
(90, 12, 'last_name', 'Abdelnabi Saber'),
(91, 12, 'avatar', 'AHmed asdsadasd'),
(92, 12, 'position', 'Senior UI/ UX Designer'),
(93, 12, 'mobile', '019090921212'),
(94, 12, 'mobile2', '01060634154'),
(95, 12, 'home_phone', ''),
(96, 12, 'address', '42 ahmed helmy st  Shobra Masr');

-- --------------------------------------------------------

--
-- Table structure for table `ecc_feedback_feed`
--

DROP TABLE IF EXISTS `ecc_feedback_feed`;
CREATE TABLE `ecc_feedback_feed` (
  `id_feed` int(11) NOT NULL AUTO_INCREMENT,
  `idcall_feed` int(11) NOT NULL,
  `idemp_feed` int(11) NOT NULL,
  `idco_feed` int(11) NOT NULL,
  `feedback_feed` text NOT NULL,
  `date_feed` datetime NOT NULL,
  PRIMARY KEY (`id_feed`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `ecc_feedback_feed`
--

INSERT INTO `ecc_feedback_feed` (`id_feed`, `idcall_feed`, `idemp_feed`, `idco_feed`, `feedback_feed`, `date_feed`) VALUES
(3, 10, 6, 8, ' Over 850 Customers are enjoying our elite reliable hosting. Based upon a cutting edge infrastructure and backed up by strong supportive team of experts owing the ability of solving the multiple emerging problems in all aspects of the I.T. segments. Customers who chose ECC achieved the piece of mind focusing more on their core business as they rely on our hassle free hosting. ', '2013-02-17 19:40:12'),
(4, 21, 1, 8, 'Done, i handled all they needed', '2013-02-17 19:41:52'),
(5, 13, 6, 8, 'i said done', '2013-02-17 19:43:05'),
(6, 13, 6, 8, 'testing feedback to managers', '2013-02-17 19:52:26'),
(7, 13, 6, 8, 'good', '2013-02-17 19:54:37'),
(8, 13, 6, 8, 'good', '2013-02-17 19:54:38'),
(9, 13, 6, 8, 'nice', '2013-02-17 19:55:12'),
(10, 13, 1, 8, 'Thank you', '2013-02-17 00:00:00'),
(11, 13, 6, 10, 'anto to2mor', '2013-02-17 00:00:00'),
(12, 13, 1, 10, 'testing', '2013-02-17 00:00:00'),
(13, 13, 1, 10, 'testing', '2013-02-17 00:00:00'),
(14, 13, 6, 10, 'asdasdasd', '2013-02-17 00:00:00'),
(15, 13, 6, 10, 'sa', '2013-02-17 00:00:00'),
(16, 15, 1, 8, 'asdad', '2013-02-17 00:00:00'),
(17, 15, 1, 8, 'asdad', '2013-02-17 00:00:00'),
(18, 15, 1, 8, 'asdasd', '2013-02-17 00:00:00'),
(19, 15, 1, 8, 'asdad', '2013-02-17 00:00:00'),
(20, 15, 1, 8, 'asdd', '2013-02-17 00:00:00'),
(21, 15, 1, 8, 'asdsad', '2013-02-17 00:00:00'),
(22, 13, 4, 10, 'Thanks, you really made my day', '2013-02-17 00:00:00'),
(23, 26, 1, 8, 'All handlyed succesfully', '2013-02-18 00:00:00'),
(24, 27, 6, 10, 'I did all issues', '2013-02-18 00:00:00'),
(25, 27, 1, 10, 'Do the reset of the implementation', '2013-02-18 00:00:00'),
(26, 29, 4, 8, '', '2013-02-19 00:00:00'),
(27, 22, 6, 8, 'thank you, good job', '2013-02-19 00:00:00'),
(28, 26, 4, 8, 'thank you', '2013-02-19 00:00:00'),
(29, 32, 4, 8, 'done', '2013-02-19 00:00:00'),
(30, 32, 1, 8, 'good', '2013-02-19 00:00:00'),
(31, 32, 1, 8, 'god', '2013-02-19 00:00:00'),
(32, 32, 1, 8, 'sdad', '2013-02-20 00:00:00'),
(33, 32, 1, 8, 'asdasd', '2013-02-20 06:02:16'),
(34, 32, 1, 8, 'asdasd', '2013-02-20 06:17:32'),
(35, 60, 1, 8, 'As we come -to the years end -  we are  going- to   delve     popular   tutorials   the pop up footer  and sprinkle it with   -some CSS magic', '2013-02-20 15:09:54'),
(36, 142, 8, 17, 'done', '2013-02-26 16:07:11'),
(37, 106, 1, 10, 'Some database issues need to be handeled', '2013-02-27 09:36:13'),
(38, 106, 6, 10, 'Some database issues need to be handeled', '2013-02-27 09:38:52'),
(39, 136, 6, 10, 'done call', '2013-02-27 09:45:03'),
(40, 137, 6, 10, 'Some database issues need to be handeled', '2013-02-27 09:45:40'),
(41, 138, 4, 8, 'Good Job', '2013-02-27 09:50:39'),
(42, 137, 4, 8, 'good', '2013-02-27 09:53:22'),
(43, 138, 4, 8, 'Some database issues need to be handeled', '2013-02-27 13:05:17');

-- --------------------------------------------------------

--
-- Table structure for table `ecc_fileCallsRelations_fcr`
--

DROP TABLE IF EXISTS `ecc_fileCallsRelations_fcr`;
CREATE TABLE `ecc_fileCallsRelations_fcr` (
  `idcall_fcr` int(11) NOT NULL,
  `idfile_fcr` int(11) NOT NULL,
  `idemp_fcr` int(11) DEFAULT NULL,
  `idco_fcr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecc_fileCallsRelations_fcr`
--

INSERT INTO `ecc_fileCallsRelations_fcr` (`idcall_fcr`, `idfile_fcr`, `idemp_fcr`, `idco_fcr`) VALUES
(13, 1, 6, 8),
(18, 1, 6, 8),
(26, 2, 6, 8),
(26, 3, 6, 8),
(44, 2, 0, 8),
(45, 2, 0, 8),
(46, 2, 0, 63),
(47, 2, 0, 63),
(49, 2, 0, 8),
(50, 2, 0, 60),
(51, 2, 0, 60),
(52, 2, 0, 8),
(115, 2, 6, 16),
(116, 5, 9, 16),
(116, 2, 9, 16),
(123, 6, 0, 0),
(128, 7, 0, 16);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_files_file`
--

DROP TABLE IF EXISTS `ecc_files_file`;
CREATE TABLE `ecc_files_file` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `name_file` varchar(255) DEFAULT NULL,
  `file_file` varchar(255) DEFAULT NULL,
  `date_file` datetime DEFAULT NULL,
  `mimeType_file` varchar(255) DEFAULT NULL,
  `fileSize_file` varchar(255) DEFAULT NULL,
  `grade_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ecc_managers_man`
--

DROP TABLE IF EXISTS `ecc_managers_man`;
CREATE TABLE `ecc_managers_man` (
  `iddep_man` int(11) NOT NULL,
  `idemp_man` int(11) NOT NULL,
  PRIMARY KEY (`iddep_man`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecc_managers_man`
--

INSERT INTO `ecc_managers_man` (`iddep_man`, `idemp_man`) VALUES
(5, 4),
(6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_mempership_memper`
--

DROP TABLE IF EXISTS `ecc_mempership_memper`;
CREATE TABLE `ecc_mempership_memper` (
  `iddep_memper` int(11) NOT NULL,
  `idemp_memper` int(11) NOT NULL,
  KEY `idemp_memper` (`idemp_memper`),
  KEY `iddep_memper` (`iddep_memper`),
  KEY `idemp_memper_2` (`idemp_memper`),
  KEY `iddep_memper_2` (`iddep_memper`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecc_mempership_memper`
--

INSERT INTO `ecc_mempership_memper` (`iddep_memper`, `idemp_memper`) VALUES
(1, 1),
(5, 4),
(5, 6),
(6, 8),
(6, 9),
(6, 10),
(5, 11),
(5, 12);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_notifications_notif`
--

DROP TABLE IF EXISTS `ecc_notifications_notif`;
CREATE TABLE `ecc_notifications_notif` (
  `id_notif` int(11) NOT NULL AUTO_INCREMENT,
  `idntype_notif` int(11) DEFAULT NULL,
  `subject_notif` varchar(255) DEFAULT NULL,
  `department_notif` varchar(255) DEFAULT NULL,
  `message_notif` text,
  `active_notif` int(1) DEFAULT NULL,
  `dueDate_notif` date DEFAULT NULL,
  `inDate_notif` datetime DEFAULT NULL,
  `public_notif` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_notif`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ecc_notifications_notif`
--

INSERT INTO `ecc_notifications_notif` (`id_notif`, `idntype_notif`, `subject_notif`, `department_notif`, `message_notif`, `active_notif`, `dueDate_notif`, `inDate_notif`, `public_notif`) VALUES
(2, 1, 'All Accounts have to be upgradable', 'S.A.M', 'As we -to end -  we are- to   delve     popular    andh   -As we -to end -  we are- to   delve     popular    andh   -', 1, '2013-02-25', '2013-02-20 15:19:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_notificationType_ntype`
--

DROP TABLE IF EXISTS `ecc_notificationType_ntype`;
CREATE TABLE `ecc_notificationType_ntype` (
  `id_ntype` int(11) NOT NULL AUTO_INCREMENT,
  `name_ntype` varchar(255) NOT NULL,
  PRIMARY KEY (`id_ntype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ecc_notificationType_ntype`
--

INSERT INTO `ecc_notificationType_ntype` (`id_ntype`, `name_ntype`) VALUES
(1, 'tips'),
(2, 'notice');

-- --------------------------------------------------------

--
-- Table structure for table `ecc_products_prod`
--

DROP TABLE IF EXISTS `ecc_products_prod`;
CREATE TABLE `ecc_products_prod` (
  `id_prod` int(11) NOT NULL AUTO_INCREMENT,
  `name_prod` varchar(255) NOT NULL,
  `slug_prod` varchar(255) NOT NULL,
  PRIMARY KEY (`id_prod`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ecc_products_prod`
--

INSERT INTO `ecc_products_prod` (`id_prod`, `name_prod`, `slug_prod`) VALUES
(1, 'Dedicated Hosting', ''),
(2, 'virtual hosting', ''),
(3, 'Professional Services', ''),
(4, 'منتج', ''),
(5, 'Dedicated Hosting2', ''),
(6, 'Dedicated Hosting2', ''),
(7, 'Dedicated Hosting2', '');

-- --------------------------------------------------------

--
-- Table structure for table `ecc_product_prodmeta`
--

DROP TABLE IF EXISTS `ecc_product_prodmeta`;
CREATE TABLE `ecc_product_prodmeta` (
  `id_prodmeta` int(11) NOT NULL AUTO_INCREMENT,
  `idprod_prodmeta` int(11) NOT NULL,
  `metaKey_prodmeta` varchar(255) NOT NULL,
  `metaValue_prodmeta` text NOT NULL,
  PRIMARY KEY (`id_prodmeta`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ecc_product_prodmeta`
--

INSERT INTO `ecc_product_prodmeta` (`id_prodmeta`, `idprod_prodmeta`, `metaKey_prodmeta`, `metaValue_prodmeta`) VALUES
(1, 1, 'description', 'Dedicated hostingDedicated hostingDedicated hostingDedicated hostingDedi cated hostingDedicated hostingDedicated hostingDedicated hosting'),
(2, 2, 'description', 'virtual hostingvirtual hostingvirtual hostingvirtual hostingvirtual hostingvirtual hostingvirtual hostinga'),
(3, 3, 'description', 'the professional services <br />the professional services <br />the professional services <br />the professional services <br />the professional services <br />the professional services <br />'),
(4, 4, 'description', 'As we -to end -  we are- to   delve     popular    andh   -As we -to end -  we are- to   delve     popular    andh   -As we -to end -  we are- to   delve     popular    andh   -'),
(5, 5, 'description', 'submitThis   parent   css  position    relative    br -         submitThis   parent   append   div class  preloading  style  height 25px  border-radius 8px    img src    php echo base url      assets-boffice-images-tinyPreloader gif      alt  تحميل  style  margin-top 7px   -  -div    show    br -         submitThis   parent   append preloadingTooltip   br -'),
(6, 6, 'description', 'submitThis   parent   css  position    relative    br -         submitThis   parent   append   div class  preloading  style  height 25px  border-radius 8px    img src    php echo base url      assets-boffice-images-tinyPreloader gif      alt  تحميل  style  margin-top 7px   -  -div    show    br -         submitThis   parent   append preloadingTooltip   br -'),
(7, 7, 'description', 'submitThis   parent   css  position    relative    br -         submitThis   parent   append   div class  preloading  style  height 25px  border-radius 8px    img src    php echo base url      assets-boffice-images-tinyPreloader gif      alt  تحميل  style  margin-top 7px   -  -div    show    br -         submitThis   parent   append preloadingTooltip   br -');

-- --------------------------------------------------------

--
-- Table structure for table `ecc_pusher_push`
--

DROP TABLE IF EXISTS `ecc_pusher_push`;
CREATE TABLE `ecc_pusher_push` (
  `id_push` int(11) NOT NULL AUTO_INCREMENT,
  `objectid_push` int(11) NOT NULL,
  `affectedEmp_push` int(11) NOT NULL,
  `creatorEmp_push` int(11) NOT NULL,
  `affectedNameSpace_push` varchar(255) NOT NULL,
  `creatorNameSpace_push` varchar(255) DEFAULT NULL,
  `type_push` varchar(255) NOT NULL,
  `name_push` text NOT NULL,
  `date_push` datetime NOT NULL,
  `status_push` int(1) DEFAULT '0',
  PRIMARY KEY (`id_push`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=224 ;

--
-- Dumping data for table `ecc_pusher_push`
--

INSERT INTO `ecc_pusher_push` (`id_push`, `objectid_push`, `affectedEmp_push`, `creatorEmp_push`, `affectedNameSpace_push`, `creatorNameSpace_push`, `type_push`, `name_push`, `date_push`, `status_push`) VALUES
(1, 4, 4, 1, 'Magdy Yassin', 'Master Account', 'employees', 'Hi Magdy Yassin, Welcome to S.A.M Sys.! your are now able to create a highly job experience ', '2013-02-15 16:58:43', 1),
(2, 2, 4, 1, 'Magdy Yassin', 'Master Account', 'companies', 'Master Account just added a new company', '2013-02-15 17:33:38', 1),
(5, 6, 6, 1, 'Ahmed Saber', 'Master Account', 'employees', 'Hi Ahmed Saber, Welcome to S.A.M Sys.! your are now able to create a highly job experience ', '2013-02-15 18:12:06', 1),
(6, 6, 4, 1, 'Magdy Yassin', 'Master Account', 'employees', 'Ahmed Saber a Senior UI/ UX Designer just added to your department, you are now able to assign calls for him', '2013-02-15 18:12:06', 1),
(7, 7, 7, 1, 'Ahmed Fawzy', 'Master Account', 'employees', 'Hi Ahmed Fawzy, Welcome to S.A.M Sys.! your are now able to create a highly job experience ', '2013-02-15 18:14:39', 0),
(8, 8, 8, 1, 'Mohamed Khaiary', 'Master Account', 'employees', 'Hi Mohamed Khaiary, Welcome to S.A.M Sys.! your are now able to create a highly job experience ', '2013-02-15 18:23:12', 0),
(9, 9, 9, 1, 'Ahmed Fawzy', 'Master Account', 'employees', 'Hi Ahmed Fawzy, Welcome to S.A.M Sys.! your are now able to create a highly job experience ', '2013-02-15 18:24:24', 0),
(10, 9, 8, 1, 'Mohamed Khaiary', 'Master Account', 'employees', 'Ahmed Fawzy a Senior Account Manager just added to your department, you are now able to assign calls for him', '2013-02-15 18:24:24', 0),
(13, 5, 4, 4, 'Magdy Yassin', 'Magdy Yassin', 'companies', 'Magdy Yassin just added <b>Magrabi Retail</b> as a new company', '2013-02-15 18:31:27', 1),
(14, 5, 8, 4, 'Mohamed Khaiary', 'Magdy Yassin', 'companies', 'Magdy Yassin just added <b>Magrabi Retail</b> as a new company', '2013-02-15 18:31:27', 0),
(15, 8, 4, 6, 'Magdy Yassin', 'Ahmed Saber', 'companies', 'Ahmed Saber just added <b>Magrabi Lincess</b> as a new company', '2013-02-15 18:41:51', 1),
(16, 8, 8, 6, 'Mohamed Khaiary', 'Ahmed Saber', 'companies', 'Ahmed Saber just added <b>Magrabi Lincess</b> as a new company', '2013-02-15 18:41:51', 0),
(17, 2, 6, 1, 'Ahmed Saber', 'Master Account', 'accounts', 'You are no longer responsible for manage  account any more', '2013-02-15 19:13:07', 1),
(18, 3, 6, 1, 'Ahmed Saber', 'Master Account', 'accounts', 'You are no longer responsible to manage Ahmed Saber account any more', '2013-02-15 19:14:05', 1),
(19, 4, 6, 1, 'Ahmed Saber', 'Master Account', 'accounts', 'You are no longer responsible to manage Magrabi Lincess account any more', '2013-02-15 19:16:00', 1),
(20, 6, 6, 6, 'Ahmed Saber', 'Ahmed Saber', 'accounts', 'ECCO just assigned for you as an account manager, good luck for you! we are waiting to sign the contract with them :)', '2013-02-15 20:48:37', 1),
(21, 10, 4, 6, 'Magdy Yassin', 'Ahmed Saber', 'companies', 'Ahmed Saber just added <b>ECCO</b> as a new company', '2013-02-15 20:48:37', 1),
(22, 10, 8, 6, 'Mohamed Khaiary', 'Ahmed Saber', 'companies', 'Ahmed Saber just added <b>ECCO</b> as a new company', '2013-02-15 20:48:37', 1),
(23, 13, 6, 1, 'Ahmed Saber', 'Master Account', 'accounts', 'Magrabi Lincess just assigned for you as an account manager, good luck for you! we are waiting to sign the contract with them :)', '2013-02-16 10:10:57', 1),
(24, 10, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', 'You have to make a call to Magrabi Lincess', '2013-02-17 12:11:01', 1),
(25, 11, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', 'You have to make a call to ECCO', '2013-02-17 18:46:34', 1),
(26, 12, 6, 4, 'Ahmed Saber', 'Magdy Yassin', 'calls', 'You have to make a call to ECCO', '2013-02-17 18:52:54', 1),
(27, 13, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', 'You have to make a call to Magrabi Lincess', '2013-02-17 18:55:41', 1),
(28, 13, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', 'Master Account just edited your call to ', '2013-02-17 19:29:32', 1),
(29, 13, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', 'Master Account just edited your call to ', '2013-02-17 19:29:33', 1),
(30, 13, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', 'Master Account just edited your call to ECCO', '2013-02-17 19:30:27', 1),
(31, 13, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', '<b>Master Account</b> just edited your call to <b>ECCO</b>', '2013-02-17 19:31:39', 1),
(32, 13, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', '<b>Master Account</b> just edited your call to <b>ECCO</b>', '2013-02-17 19:31:41', 1),
(33, 13, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', '<b>Master Account</b> just edited your call to <b>ECCO</b>', '2013-02-17 19:32:08', 1),
(34, 14, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', 'You have to make a call to Magrabi Lincess', '2013-02-17 19:32:43', 1),
(35, 15, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', 'You have to make a call to <b>Magrabi Lincess</b>', '2013-02-17 19:33:37', 1),
(36, 13, 4, 6, 'Magdy Yassin', 'Ahmed Saber', 'calls', '<b>Ahmed Saber</b> just added feedback to <b>8</b> call', '2013-02-17 19:52:26', 1),
(37, 13, 4, 6, 'Magdy Yassin', 'Ahmed Saber', 'calls', '<b>Ahmed Saber</b> just added feedback to <b>Magrabi Lincess</b> call', '2013-02-17 19:54:37', 1),
(38, 13, 4, 6, 'Magdy Yassin', 'Ahmed Saber', 'calls', '<b>Ahmed Saber</b> just added feedback to <b>Magrabi Lincess</b> call', '2013-02-17 19:54:38', 1),
(39, 13, 4, 6, 'Magdy Yassin', 'Ahmed Saber', 'calls', '<b>Ahmed Saber</b> just added feedback to <b>Magrabi Lincess</b> call', '2013-02-17 19:55:12', 1),
(40, 13, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', '<b>Master Account</b> just edited your call to <b>Magrabi Lincess</b>', '2013-02-17 19:59:23', 1),
(41, 13, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', '<b>Master Account</b> just edited your call to <b>Magrabi Lincess</b>', '2013-02-17 19:59:24', 1),
(42, 13, 4, 6, 'Magdy Yassin', 'Ahmed Saber', 'calls', '<b>Ahmed Saber</b> just added feedback to <b>ECCO</b> call', '2013-02-17 20:02:00', 1),
(43, 13, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', '<b>Master Account</b> just edited your call to <b>ECCO</b>', '2013-02-17 20:02:23', 1),
(44, 13, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', '<b>Master Account</b> just added feedback to <b>ECCO</b> call', '2013-02-17 20:11:48', 1),
(45, 13, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', '<b>Master Account</b> just added feedback to <b>ECCO</b> call', '2013-02-17 20:12:03', 1),
(46, 13, 4, 6, 'Magdy Yassin', 'Ahmed Saber', 'calls', '<b>Ahmed Saber</b> just added feedback to <b>ECCO</b> call', '2013-02-17 20:12:32', 1),
(47, 13, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', '<b>Master Account</b> just added feedback to <b>ECCO</b> call', '2013-02-17 20:16:03', 1),
(48, 15, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', '<b>Master Account</b> just added feedback to <b>Magrabi Lincess</b> call', '2013-02-17 20:17:09', 1),
(49, 15, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', '<b>Master Account</b> just added feedback to <b>Magrabi Lincess</b> call', '2013-02-17 20:17:57', 1),
(50, 15, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', '<b>Master Account</b> just added feedback to <b>Magrabi Lincess</b> call', '2013-02-17 20:18:17', 1),
(51, 15, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', '<b>Master Account</b> just added feedback to <b>Magrabi Lincess</b> call', '2013-02-17 20:18:28', 1),
(52, 15, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', '<b>Master Account</b> just added feedback to <b>Magrabi Lincess</b> call', '2013-02-17 20:18:34', 1),
(53, 15, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', '<b>Master Account</b> just added feedback to <b>Magrabi Lincess</b> call', '2013-02-17 20:18:37', 1),
(54, 18, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', 'You have to make a call to <b>Magrabi Lincess</b>', '2013-02-17 20:21:48', 1),
(55, 13, 6, 4, 'Ahmed Saber', 'Magdy Yassin', 'calls', '<b>Magdy Yassin</b> just added feedback to <b>ECCO</b> call', '2013-02-17 20:22:54', 1),
(56, 13, 6, 4, 'Ahmed Saber', 'Magdy Yassin', 'calls', '<b>Magdy Yassin</b> just edited your call to <b>ECCO</b>', '2013-02-17 20:23:20', 1),
(57, 13, 6, 4, 'Ahmed Saber', 'Magdy Yassin', 'calls', '<b>Magdy Yassin</b> just edited your call to <b>ECCO</b>', '2013-02-17 20:23:21', 1),
(58, 13, 6, 4, 'Ahmed Saber', 'Magdy Yassin', 'calls', '<b>Magdy Yassin</b> just edited your call to <b>ECCO</b>', '2013-02-17 20:23:22', 1),
(59, 14, 6, 6, 'Ahmed Saber', 'Ahmed Saber', 'accounts', 'AunionC just assigned for you as an account manager, good luck for you! we are waiting to sign the contract with them :)', '2013-02-17 20:24:14', 1),
(60, 16, 4, 6, 'Magdy Yassin', 'Ahmed Saber', 'companies', 'Ahmed Saber just added <b>AunionC</b> as a new company, He is responsible for it as an account manager', '2013-02-17 20:24:14', 1),
(61, 16, 8, 6, 'Mohamed Khaiary', 'Ahmed Saber', 'companies', 'Ahmed Saber just added <b>AunionC</b> as a new company, He is responsible for it as an account manager', '2013-02-17 20:24:14', 1),
(62, 14, 6, 4, 'Ahmed Saber', 'Magdy Yassin', 'accounts', 'You are no longer responsible to manage AunionC account any more', '2013-02-17 20:37:24', 1),
(63, 19, 6, 4, 'Ahmed Saber', 'Magdy Yassin', 'accounts', 'You are no longer responsible to manage AunionC account any more', '2013-02-17 20:39:04', 1),
(64, 21, 6, 4, 'Ahmed Saber', 'Magdy Yassin', 'accounts', 'You are no longer responsible to manage AunionC account any more', '2013-02-17 20:40:02', 1),
(65, 23, 6, 4, 'Ahmed Saber', 'Magdy Yassin', 'accounts', 'You are no longer responsible to manage AunionC account any more', '2013-02-17 20:40:52', 1),
(66, 25, 6, 4, 'Ahmed Saber', 'Magdy Yassin', 'accounts', 'You are no longer responsible to manage AunionC account any more', '2013-02-17 20:42:09', 1),
(67, 27, 6, 4, 'Ahmed Saber', 'Magdy Yassin', 'accounts', 'You are no longer responsible to manage AunionC account any more', '2013-02-17 20:43:00', 1),
(68, 29, 6, 4, 'Ahmed Saber', 'Magdy Yassin', 'accounts', 'You are no longer responsible to manage AunionC account any more', '2013-02-17 21:01:06', 1),
(69, 32, 4, 4, 'Magdy Yassin', 'Magdy Yassin', 'accounts', 'You are no longer responsible to manage AunionC account any more', '2013-02-17 21:01:32', 1),
(70, 36, 6, 4, 'Ahmed Saber', 'Magdy Yassin', 'accounts', 'You are no longer responsible to manage  account any more', '2013-02-17 21:02:54', 1),
(71, 34, 6, 4, 'Ahmed Saber', 'Magdy Yassin', 'accounts', 'You are no longer responsible to manage AunionC account any more', '2013-02-17 21:03:30', 1),
(72, 38, 6, 1, 'Ahmed Saber', 'Master Account', 'accounts', 'You are no longer responsible to manage AunionC account any more', '2013-02-17 21:04:31', 1),
(73, 40, 6, 1, 'Ahmed Saber', 'Master Account', 'accounts', 'You are no longer responsible to manage AunionC account any more', '2013-02-17 21:07:12', 1),
(74, 42, 9, 1, 'Ahmed Fawzy', 'Master Account', 'accounts', 'AunionC just assigned for you as an account manager, good luck for you! we are waiting to sign the contract with them :)', '2013-02-17 21:07:27', 1),
(75, 43, 4, 1, 'Magdy Yassin', 'Master Account', 'accounts', 'Magrabi Lincess just assigned for you as an account manager, good luck for you! we are waiting to sign the contract with them :)', '2013-02-17 21:08:06', 1),
(76, 10, 10, 1, 'Mohamed Saber', 'Master Account', 'employees', 'Hi <b>Mohamed Saber</b>, Welcome to S.A.M Sys.! your are now able to create a highly job experience ', '2013-02-17 21:19:09', 1),
(77, 10, 8, 1, 'Mohamed Khaiary', 'Master Account', 'employees', '<b>Mohamed Saber</b> a <b>Senior UI/ UX Designer</b> just added to your department, you are now able to assign calls for him', '2013-02-17 21:19:09', 1),
(78, 11, 11, 1, 'Mohab Omar', 'Master Account', 'employees', 'Hi <b>Mohab Omar</b>, Welcome to S.A.M Sys.! you are now able to create a highly job experience ', '2013-02-17 21:20:32', 1),
(79, 11, 4, 1, 'Magdy Yassin', 'Master Account', 'employees', '<b>Mohab Omar</b> a <b>Senior UI/ UX Designer</b> just added to your department, you are now able to assign calls for him', '2013-02-17 21:20:32', 1),
(80, 17, 4, 1, 'Magdy Yassin', 'Master Account', 'companies', 'Master Account just added <b>Nokia</b> as a new company, He is responsible for it as an account manager', '2013-02-17 21:26:19', 1),
(81, 17, 8, 1, 'Mohamed Khaiary', 'Master Account', 'companies', 'Master Account just added <b>Nokia</b> as a new company, He is responsible for it as an account manager', '2013-02-17 21:26:21', 1),
(82, 18, 4, 4, 'Magdy Yassin', 'Magdy Yassin', 'companies', 'Magdy Yassin just added <b>ECC</b> as a new company, He is responsible for it as an account manager', '2013-02-17 21:27:20', 1),
(83, 18, 8, 4, 'Mohamed Khaiary', 'Magdy Yassin', 'companies', 'Magdy Yassin just added <b>ECC</b> as a new company, He is responsible for it as an account manager', '2013-02-17 21:27:21', 1),
(84, 19, 4, 1, 'Magdy Yassin', 'Master Account', 'companies', 'Master Account just added <b>FGF</b> as a new company', '2013-02-17 21:32:20', 1),
(85, 19, 8, 1, 'Mohamed Khaiary', 'Master Account', 'companies', 'Master Account just added <b>FGF</b> as a new company', '2013-02-17 21:32:21', 1),
(86, 20, 4, 4, 'Magdy Yassin', 'Magdy Yassin', 'companies', 'Magdy Yassin just added <b>Mobile Shop</b> as a new company', '2013-02-17 21:32:51', 1),
(87, 20, 8, 4, 'Mohamed Khaiary', 'Magdy Yassin', 'companies', 'Magdy Yassin just added <b>Mobile Shop</b> as a new company', '2013-02-17 21:32:51', 1),
(88, 44, 6, 6, 'Ahmed Saber', 'Ahmed Saber', 'accounts', 'Sofa just assigned for you as an account manager, good luck for you! we are waiting to sign the contract with them :)', '2013-02-17 21:33:15', 1),
(89, 21, 4, 6, 'Magdy Yassin', 'Ahmed Saber', 'companies', 'Ahmed Saber just added <b>Sofa</b> as a new company, He is responsible for it as an account manager', '2013-02-17 21:33:15', 1),
(90, 21, 8, 6, 'Mohamed Khaiary', 'Ahmed Saber', 'companies', 'Ahmed Saber just added <b>Sofa</b> as a new company, He is responsible for it as an account manager', '2013-02-17 21:33:15', 1),
(91, 1, 4, 1, 'Magdy Yassin', 'Master Account', 'products', 'Dedicated Hosting just added to ECC products, Enjoy buying it :)', '2013-02-17 21:41:31', 1),
(92, 1, 6, 1, 'Ahmed Saber', 'Master Account', 'products', 'Dedicated Hosting just added to ECC products, Enjoy buying it :)', '2013-02-17 21:41:32', 1),
(93, 1, 8, 1, 'Mohamed Khaiary', 'Master Account', 'products', 'Dedicated Hosting just added to ECC products, Enjoy buying it :)', '2013-02-17 21:41:33', 1),
(94, 1, 9, 1, 'Ahmed Fawzy', 'Master Account', 'products', 'Dedicated Hosting just added to ECC products, Enjoy buying it :)', '2013-02-17 21:41:33', 1),
(95, 1, 10, 1, 'Mohamed Saber', 'Master Account', 'products', 'Dedicated Hosting just added to ECC products, Enjoy buying it :)', '2013-02-17 21:41:34', 1),
(96, 1, 11, 1, 'Mohab Omar', 'Master Account', 'products', 'Dedicated Hosting just added to ECC products, Enjoy buying it :)', '2013-02-17 21:41:34', 1),
(97, 2, 4, 1, 'Magdy Yassin', 'Master Account', 'products', 'virtual hosting just added to ECC products, Enjoy buying it :)', '2013-02-17 21:42:31', 1),
(98, 2, 6, 1, 'Ahmed Saber', 'Master Account', 'products', 'virtual hosting just added to ECC products, Enjoy buying it :)', '2013-02-17 21:42:31', 1),
(99, 2, 8, 1, 'Mohamed Khaiary', 'Master Account', 'products', 'virtual hosting just added to ECC products, Enjoy buying it :)', '2013-02-17 21:42:31', 1),
(100, 2, 9, 1, 'Ahmed Fawzy', 'Master Account', 'products', 'virtual hosting just added to ECC products, Enjoy buying it :)', '2013-02-17 21:42:32', 1),
(101, 2, 10, 1, 'Mohamed Saber', 'Master Account', 'products', 'virtual hosting just added to ECC products, Enjoy buying it :)', '2013-02-17 21:42:32', 1),
(102, 2, 11, 1, 'Mohab Omar', 'Master Account', 'products', 'virtual hosting just added to ECC products, Enjoy buying it :)', '2013-02-17 21:42:32', 1),
(103, 20, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', 'You have to make a call to <b>Magrabi Lincess</b>', '2013-02-18 08:44:45', 1),
(104, 21, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', 'You have to make a call to <b>Magrabi Lincess</b>', '2013-02-18 08:45:26', 1),
(105, 22, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', 'You have to make a call to <b>Magrabi Lincess</b>', '2013-02-18 10:12:58', 1),
(106, 26, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', 'You have to make a call to <b>Magrabi Lincess</b>', '2013-02-18 12:19:34', 1),
(107, 26, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', '<b>Master Account</b> just added feedback to <b>Magrabi Lincess</b> call', '2013-02-18 12:21:47', 1),
(108, 27, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', 'You have to make a call to <b>ECCO</b>', '2013-02-18 12:26:38', 1),
(109, 27, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', '<b>Master Account</b> just added feedback to <b>ECCO</b> call', '2013-02-18 12:29:01', 1),
(110, 45, 6, 1, 'Ahmed Saber', 'Master Account', 'accounts', '<b>Magrabi Lincess</b> just assigned for you as an account manager, good luck for you! we are waiting to sign the contract with them :)', '2013-02-18 12:44:42', 1),
(111, 29, 4, 1, 'Magdy Yassin', 'Master Account', 'calls', 'You have to make a call to <b>Magrabi Lincess</b>', '2013-02-19 12:43:57', 1),
(112, 43, 4, 1, 'Magdy Yassin', 'Master Account', 'accounts', 'You are no longer responsible to manage <b>Magrabi Lincess</b> account any more', '2013-02-19 12:45:48', 1),
(113, 45, 6, 1, 'Ahmed Saber', 'Master Account', 'accounts', 'You are no longer responsible to manage <b>Magrabi Lincess</b> account any more', '2013-02-19 12:45:59', 1),
(114, 50, 4, 1, 'Magdy Yassin', 'Master Account', 'accounts', 'Magrabi Lincess just assigned for you as an account manager, good luck for you! we are waiting to sign the contract with them :)', '2013-02-19 14:27:48', 1),
(115, 13, 6, 4, 'Ahmed Saber', 'Magdy Yassin', 'accounts', 'You are no longer responsible to manage <b>Magrabi Lincess</b> account any more', '2013-02-19 14:31:33', 1),
(116, 32, 4, 1, 'Magdy Yassin', 'Master Account', 'calls', 'You have to make a call to <b>Magrabi Lincess</b>', '2013-02-19 14:32:07', 1),
(117, 22, 4, 6, 'Magdy Yassin', 'Ahmed Saber', 'calls', '<b>Ahmed Saber</b> just added feedback to <b>Magrabi Lincess</b> call', '2013-02-19 15:39:48', 1),
(118, 26, 6, 4, 'Ahmed Saber', 'Magdy Yassin', 'calls', '<b>Magdy Yassin</b> just added feedback to <b>Magrabi Lincess</b> call', '2013-02-19 15:42:59', 1),
(119, 32, 4, 4, 'Magdy Yassin', 'Magdy Yassin', 'calls', '<b>Magdy Yassin</b> just added feedback to <b>Magrabi Lincess</b> call', '2013-02-19 15:44:41', 1),
(120, 32, 4, 1, 'Magdy Yassin', 'Master Account', 'calls', '<b>Master Account</b> just added feedback to <b>Magrabi Lincess</b> call', '2013-02-19 15:45:48', 1),
(121, 32, 4, 1, 'Magdy Yassin', 'Master Account', 'calls', '<b>Master Account</b> just added feedback to <b>Magrabi Lincess</b> call', '2013-02-19 15:46:19', 1),
(122, 54, 11, 1, 'Mohab Omar', 'Master Account', 'accounts', 'Magrabi Lincess just assigned for you as an account manager, good luck for you! we are waiting to sign the contract with them :)', '2013-02-19 21:02:46', 1),
(123, 56, 8, 1, 'Mohamed Khaiary', 'Master Account', 'accounts', 'Nokia just assigned for you as an account manager, good luck for you! we are waiting to sign the contract with them :)', '2013-02-19 21:02:59', 1),
(124, 56, 4, 1, 'Magdy Yassin', 'Master Account', 'companies', 'Master Account just added <b>Novartis</b> as a new company', '2013-02-19 22:14:32', 1),
(125, 56, 8, 1, 'Mohamed Khaiary', 'Master Account', 'companies', 'Master Account just added <b>Novartis</b> as a new company', '2013-02-19 22:14:32', 1),
(126, 57, 4, 1, 'Magdy Yassin', 'Master Account', 'companies', 'Master Account just added <b>Novartis 2</b> as a new company', '2013-02-19 22:16:27', 1),
(127, 57, 8, 1, 'Mohamed Khaiary', 'Master Account', 'companies', 'Master Account just added <b>Novartis 2</b> as a new company', '2013-02-19 22:16:28', 1),
(128, 58, 4, 1, 'Magdy Yassin', 'Master Account', 'companies', 'Master Account just added <b>Magrabi22</b> as a new company', '2013-02-19 22:17:55', 1),
(129, 58, 8, 1, 'Mohamed Khaiary', 'Master Account', 'companies', 'Master Account just added <b>Magrabi22</b> as a new company', '2013-02-19 22:17:56', 1),
(130, 59, 4, 1, 'Magdy Yassin', 'Master Account', 'companies', 'Master Account just added <b>Magrabi Optical2s</b> as a new company', '2013-02-19 22:18:40', 1),
(131, 59, 8, 1, 'Mohamed Khaiary', 'Master Account', 'companies', 'Master Account just added <b>Magrabi Optical2s</b> as a new company', '2013-02-19 22:18:41', 1),
(132, 60, 4, 1, 'Magdy Yassin', 'Master Account', 'companies', 'Master Account just added <b>2Magrabi2</b> as a new company', '2013-02-19 22:20:20', 1),
(133, 60, 8, 1, 'Mohamed Khaiary', 'Master Account', 'companies', 'Master Account just added <b>2Magrabi2</b> as a new company', '2013-02-19 22:20:21', 1),
(134, 61, 4, 1, 'Magdy Yassin', 'Master Account', 'companies', 'Master Account just added <b>nmans</b> as a new company', '2013-02-19 22:22:16', 1),
(135, 61, 8, 1, 'Mohamed Khaiary', 'Master Account', 'companies', 'Master Account just added <b>nmans</b> as a new company', '2013-02-19 22:22:17', 1),
(136, 62, 4, 1, 'Magdy Yassin', 'Master Account', 'companies', 'Master Account just added <b>asdasdasd</b> as a new company', '2013-02-19 22:23:36', 1),
(137, 62, 8, 1, 'Mohamed Khaiary', 'Master Account', 'companies', 'Master Account just added <b>asdasdasd</b> as a new company', '2013-02-19 22:23:37', 1),
(138, 63, 4, 1, 'Magdy Yassin', 'Master Account', 'companies', 'Master Account just added <b>asdsadasd</b> as a new company', '2013-02-19 22:23:55', 1),
(139, 63, 8, 1, 'Mohamed Khaiary', 'Master Account', 'companies', 'Master Account just added <b>asdsadasd</b> as a new company', '2013-02-19 22:23:55', 1),
(140, 32, 4, 1, 'Magdy Yassin', 'Master Account', 'calls', '<b>Master Account</b> just edited your call to <b>Magrabi Lincess</b>', '2013-02-19 23:05:34', 1),
(141, 32, 4, 1, 'Magdy Yassin', 'Master Account', 'calls', '<b>Master Account</b> just edited your call to <b>Magrabi Lincess</b>', '2013-02-19 23:05:39', 1),
(142, 32, 4, 1, 'Magdy Yassin', 'Master Account', 'calls', '<b>Master Account</b> just edited your call to <b>Magrabi Lincess</b>', '2013-02-19 23:05:44', 1),
(143, 32, 4, 1, 'Magdy Yassin', 'Master Account', 'calls', '<b>Master Account</b> just edited your call to <b>Magrabi Lincess</b>', '2013-02-19 23:05:51', 1),
(144, 26, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', '<b>Master Account</b> just edited your call to <b>Magrabi Lincess</b>', '2013-02-19 23:20:48', 1),
(145, 3, 4, 1, 'Magdy Yassin', 'Master Account', 'products', 'Professional Services just added to ECC products, Enjoy buying it :)', '2013-02-19 23:21:47', 1),
(146, 3, 6, 1, 'Ahmed Saber', 'Master Account', 'products', 'Professional Services just added to ECC products, Enjoy buying it :)', '2013-02-19 23:21:47', 1),
(147, 3, 8, 1, 'Mohamed Khaiary', 'Master Account', 'products', 'Professional Services just added to ECC products, Enjoy buying it :)', '2013-02-19 23:21:47', 1),
(148, 3, 9, 1, 'Ahmed Fawzy', 'Master Account', 'products', 'Professional Services just added to ECC products, Enjoy buying it :)', '2013-02-19 23:21:48', 1),
(149, 3, 10, 1, 'Mohamed Saber', 'Master Account', 'products', 'Professional Services just added to ECC products, Enjoy buying it :)', '2013-02-19 23:21:48', 1),
(150, 3, 11, 1, 'Mohab Omar', 'Master Account', 'products', 'Professional Services just added to ECC products, Enjoy buying it :)', '2013-02-19 23:21:49', 1),
(151, 38, 4, 1, 'Magdy Yassin', 'Master Account', 'calls', 'You have to make a call to <b>Magrabi Lincess2</b>', '2013-02-19 23:32:59', 1),
(152, 38, 4, 4, 'Magdy Yassin', 'Magdy Yassin', 'calls', '<b>Magdy Yassin</b> just edited your call to <b>Magrabi Lincess2</b>', '2013-02-19 23:33:12', 1),
(153, 38, 4, 4, 'Magdy Yassin', 'Magdy Yassin', 'calls', '<b>Magdy Yassin</b> just edited your call to <b>Magrabi Lincess2</b>', '2013-02-19 23:33:22', 1),
(154, 38, 4, 4, 'Magdy Yassin', 'Magdy Yassin', 'calls', '<b>Magdy Yassin</b> just edited your call to <b>Magrabi Lincess2</b>', '2013-02-19 23:33:30', 1),
(155, 38, 4, 4, 'Magdy Yassin', 'Magdy Yassin', 'calls', '<b>Magdy Yassin</b> just edited your call to <b>Magrabi Lincess2</b>', '2013-02-19 23:33:34', 1),
(156, 38, 4, 4, 'Magdy Yassin', 'Magdy Yassin', 'calls', '<b>Magdy Yassin</b> just edited your call to <b>Magrabi Lincess2</b>', '2013-02-19 23:33:42', 1),
(157, 38, 4, 1, 'Magdy Yassin', 'Master Account', 'calls', '<b>Master Account</b> just edited your call to <b>Magrabi Lincess2</b>', '2013-02-19 23:34:58', 1),
(158, 32, 4, 1, 'Magdy Yassin', 'Master Account', 'calls', '<b>Master Account</b> just added feedback to <b>Magrabi Lincess2</b> call', '2013-02-20 06:14:09', 1),
(159, 32, 4, 1, 'Magdy Yassin', 'Master Account', 'calls', '<b>Master Account</b> just added feedback to <b>Magrabi Lincess2</b> call', '2013-02-20 06:16:52', 1),
(160, 32, 4, 1, 'Magdy Yassin', 'Master Account', 'calls', '<b>Master Account</b> just added feedback to <b>Magrabi Lincess2</b> call', '2013-02-20 06:17:32', 1),
(161, 54, 11, 1, 'Mohab Omar', 'Master Account', 'accounts', 'You are no longer responsible to manage <b>Magrabi Lincess2</b> account any more', '2013-02-20 09:29:32', 1),
(162, 59, 10, 1, 'Mohamed Saber', 'Master Account', 'accounts', 'Magrabi Lincess2 just assigned for you as an account manager, good luck for you! we are waiting to sign the contract with them :)', '2013-02-20 10:44:33', 1),
(163, 59, 10, 1, 'Mohamed Saber', 'Master Account', 'accounts', 'You are no longer responsible to manage <b>Magrabi Lincess2</b> account any more', '2013-02-20 10:47:00', 1),
(164, 61, 6, 1, 'Ahmed Saber', 'Master Account', 'accounts', 'AunionC just assigned for you as an account manager, good luck for you! we are waiting to sign the contract with them :)', '2013-02-20 13:19:52', 1),
(165, 42, 9, 1, 'Ahmed Fawzy', 'Master Account', 'accounts', 'You are no longer responsible to manage <b>AunionC</b> account any more', '2013-02-20 13:22:42', 1),
(166, 62, 6, 6, 'Ahmed Saber', 'Ahmed Saber', 'accounts', 'Nokia connecting people just assigned for you as an account manager, good luck for you! we are waiting to sign the contract with them :)', '2013-02-20 14:43:57', 1),
(167, 77, 4, 6, 'Magdy Yassin', 'Ahmed Saber', 'companies', 'Ahmed Saber just added <b>Nokia connecting people</b> as a new company, He is responsible for it as an account manager', '2013-02-20 14:43:57', 1),
(168, 77, 8, 6, 'Mohamed Khaiary', 'Ahmed Saber', 'companies', 'Ahmed Saber just added <b>Nokia connecting people</b> as a new company, He is responsible for it as an account manager', '2013-02-20 14:43:58', 1),
(169, 78, 4, 1, 'Magdy Yassin', 'Master Account', 'companies', 'Master Account just added <b>Nokia connecting people2</b> as a new company', '2013-02-20 14:46:12', 1),
(170, 78, 8, 1, 'Mohamed Khaiary', 'Master Account', 'companies', 'Master Account just added <b>Nokia connecting people2</b> as a new company', '2013-02-20 14:46:13', 1),
(171, 79, 4, 1, 'Magdy Yassin', 'Master Account', 'companies', 'Master Account just added <b>Magrabi Optical2</b> as a new company', '2013-02-20 14:47:47', 1),
(172, 79, 8, 1, 'Mohamed Khaiary', 'Master Account', 'companies', 'Master Account just added <b>Magrabi Optical2</b> as a new company', '2013-02-20 14:47:48', 1),
(173, 80, 4, 1, 'Magdy Yassin', 'Master Account', 'companies', 'Master Account just added <b>Magrabi222</b> as a new company', '2013-02-20 14:50:32', 1),
(174, 80, 8, 1, 'Mohamed Khaiary', 'Master Account', 'companies', 'Master Account just added <b>Magrabi222</b> as a new company', '2013-02-20 14:50:34', 1),
(175, 60, 4, 1, 'Magdy Yassin', 'Master Account', 'calls', 'You have to make a call to <b>Magrabi Lincess2</b>', '2013-02-20 15:08:48', 1),
(176, 60, 4, 1, 'Magdy Yassin', 'Master Account', 'calls', '<b>Master Account</b> just added feedback to <b>Magrabi Lincess2</b> call', '2013-02-20 15:09:54', 1),
(177, 60, 4, 1, 'Magdy Yassin', 'Master Account', 'calls', '<b>Master Account</b> just edited your call to <b>Magrabi Lincess2</b>', '2013-02-20 15:09:59', 1),
(178, 81, 4, 1, 'Magdy Yassin', 'Master Account', 'companies', 'Master Account just added <b>Magrabi optical</b> as a new company', '2013-02-20 15:14:44', 1),
(179, 81, 8, 1, 'Mohamed Khaiary', 'Master Account', 'companies', 'Master Account just added <b>Magrabi optical</b> as a new company', '2013-02-20 15:14:45', 1),
(180, 82, 4, 1, 'Magdy Yassin', 'Master Account', 'companies', 'Master Account just added <b>شركة</b> as a new company', '2013-02-20 15:17:14', 1),
(181, 82, 8, 1, 'Mohamed Khaiary', 'Master Account', 'companies', 'Master Account just added <b>شركة</b> as a new company', '2013-02-20 15:17:16', 1),
(182, 4, 4, 1, 'Magdy Yassin', 'Master Account', 'products', 'منتج just added to ECC products, Enjoy buying it :)', '2013-02-20 15:17:52', 1),
(183, 4, 6, 1, 'Ahmed Saber', 'Master Account', 'products', 'منتج just added to ECC products, Enjoy buying it :)', '2013-02-20 15:17:53', 1),
(184, 4, 8, 1, 'Mohamed Khaiary', 'Master Account', 'products', 'منتج just added to ECC products, Enjoy buying it :)', '2013-02-20 15:17:53', 1),
(185, 4, 9, 1, 'Ahmed Fawzy', 'Master Account', 'products', 'منتج just added to ECC products, Enjoy buying it :)', '2013-02-20 15:17:54', 1),
(186, 4, 10, 1, 'Mohamed Saber', 'Master Account', 'products', 'منتج just added to ECC products, Enjoy buying it :)', '2013-02-20 15:17:54', 1),
(187, 4, 11, 1, 'Mohab Omar', 'Master Account', 'products', 'منتج just added to ECC products, Enjoy buying it :)', '2013-02-20 15:17:55', 1),
(188, 74, 6, 6, 'Ahmed Saber', 'Ahmed Saber', 'calls', 'You have to make a call to <b>ECCO</b>', '2013-02-21 11:02:57', 1),
(189, 103, 6, 6, 'Ahmed Saber', 'Ahmed Saber', 'calls', 'You have to make a call to <b>ECCO</b>', '2013-02-21 13:48:28', 1),
(190, 105, 6, 6, 'Ahmed Saber', 'Ahmed Saber', 'calls', 'You have to make a call to <b>ECCO</b>', '2013-02-21 13:50:21', 1),
(191, 106, 6, 6, 'Ahmed Saber', 'Ahmed Saber', 'calls', 'You have to make a call to <b>ECCO</b>', '2013-02-21 13:52:05', 1),
(192, 5, 4, 1, 'Magdy Yassin', 'Master Account', 'products', 'Dedicated Hosting2 just added to ECC products, Enjoy buying it :)', '2013-02-21 13:54:47', 1),
(193, 6, 4, 1, 'Magdy Yassin', 'Master Account', 'products', 'Dedicated Hosting2 just added to ECC products, Enjoy buying it :)', '2013-02-21 13:54:49', 1),
(194, 5, 6, 1, 'Ahmed Saber', 'Master Account', 'products', 'Dedicated Hosting2 just added to ECC products, Enjoy buying it :)', '2013-02-21 13:54:49', 1),
(195, 6, 6, 1, 'Ahmed Saber', 'Master Account', 'products', 'Dedicated Hosting2 just added to ECC products, Enjoy buying it :)', '2013-02-21 13:54:49', 1),
(196, 5, 8, 1, 'Mohamed Khaiary', 'Master Account', 'products', 'Dedicated Hosting2 just added to ECC products, Enjoy buying it :)', '2013-02-21 13:54:50', 1),
(197, 6, 8, 1, 'Mohamed Khaiary', 'Master Account', 'products', 'Dedicated Hosting2 just added to ECC products, Enjoy buying it :)', '2013-02-21 13:54:50', 1),
(198, 5, 9, 1, 'Ahmed Fawzy', 'Master Account', 'products', 'Dedicated Hosting2 just added to ECC products, Enjoy buying it :)', '2013-02-21 13:54:50', 1),
(199, 6, 9, 1, 'Ahmed Fawzy', 'Master Account', 'products', 'Dedicated Hosting2 just added to ECC products, Enjoy buying it :)', '2013-02-21 13:54:51', 1),
(200, 7, 4, 1, 'Magdy Yassin', 'Master Account', 'products', 'Dedicated Hosting2 just added to ECC products, Enjoy buying it :)', '2013-02-21 13:54:51', 1),
(201, 6, 10, 1, 'Mohamed Saber', 'Master Account', 'products', 'Dedicated Hosting2 just added to ECC products, Enjoy buying it :)', '2013-02-21 13:54:51', 1),
(202, 7, 6, 1, 'Ahmed Saber', 'Master Account', 'products', 'Dedicated Hosting2 just added to ECC products, Enjoy buying it :)', '2013-02-21 13:54:52', 1),
(203, 5, 10, 1, 'Mohamed Saber', 'Master Account', 'products', 'Dedicated Hosting2 just added to ECC products, Enjoy buying it :)', '2013-02-21 13:54:52', 1),
(204, 6, 11, 1, 'Mohab Omar', 'Master Account', 'products', 'Dedicated Hosting2 just added to ECC products, Enjoy buying it :)', '2013-02-21 13:54:52', 1),
(205, 5, 11, 1, 'Mohab Omar', 'Master Account', 'products', 'Dedicated Hosting2 just added to ECC products, Enjoy buying it :)', '2013-02-21 13:54:52', 1),
(206, 7, 8, 1, 'Mohamed Khaiary', 'Master Account', 'products', 'Dedicated Hosting2 just added to ECC products, Enjoy buying it :)', '2013-02-21 13:54:53', 1),
(207, 7, 9, 1, 'Ahmed Fawzy', 'Master Account', 'products', 'Dedicated Hosting2 just added to ECC products, Enjoy buying it :)', '2013-02-21 13:54:54', 1),
(208, 7, 10, 1, 'Mohamed Saber', 'Master Account', 'products', 'Dedicated Hosting2 just added to ECC products, Enjoy buying it :)', '2013-02-21 13:54:55', 1),
(209, 7, 11, 1, 'Mohab Omar', 'Master Account', 'products', 'Dedicated Hosting2 just added to ECC products, Enjoy buying it :)', '2013-02-21 13:54:55', 1),
(210, 12, 12, 1, 'AHmed asdsadasd', 'Master Account', 'employees', 'Hi <b>AHmed asdsadasd</b>, Welcome to S.A.M Sys.! you are now able to create a highly job experience ', '2013-02-21 13:56:31', 1),
(211, 12, 4, 1, 'Magdy Yassin', 'Master Account', 'employees', '<b>AHmed asdsadasd</b> a <b>Senior UI/ UX Designer</b> just added to your department, you are now able to assign calls for him', '2013-02-21 13:56:31', 1),
(212, 109, 6, 1, 'Ahmed Saber', 'Master Account', 'calls', 'You have to make a call to <b>AunionC</b>', '2013-02-21 14:13:45', 1),
(213, 64, 4, 1, 'Magdy Yassin', 'Master Account', 'accounts', 'Nokia connecting people2 just assigned for you as an account manager, good luck for you! we are waiting to sign the contract with them :)', '2013-02-21 16:03:18', 1),
(214, 135, 4, 1, 'Magdy Yassin', 'Master Account', 'calls', 'You have to make a call to <b>Nokia connecting people2</b>', '2013-02-21 16:03:46', 1),
(215, 135, 4, 1, 'Magdy Yassin', 'Master Account', 'calls', '<b>Master Account</b> just edited your call to <b>Nokia connecting people2</b>', '2013-02-23 14:36:33', 1),
(216, 61, 6, 1, 'Ahmed Saber', 'Master Account', 'accounts', 'You are no longer responsible to manage <b>AunionC</b> account any more', '2013-02-26 10:50:01', 1),
(217, 142, 8, 1, 'Mohamed Khaiary', 'Master Account', 'calls', 'You have to make a call to <b>Nokia</b>', '2013-02-26 16:07:11', 1),
(218, 106, 6, 1, 'Ahmed Abdelnaby Saber', 'Master Account', 'calls', '<b>Master Account</b> just added feedback to <b>ECCO</b> call', '2013-02-27 09:36:13', 1),
(219, 106, 4, 6, 'Magdy Yassin', 'Ahmed Abdelnaby Saber', 'calls', '<b>Ahmed Abdelnaby Saber</b> just added feedback to <b>ECCO</b> call', '2013-02-27 09:38:52', 1),
(220, 137, 6, 6, 'Ahmed Abdelnaby Saber', 'Ahmed Abdelnaby Saber', 'calls', 'You have to make a call to <b>ECCO</b>', '2013-02-27 09:45:40', 1),
(221, 60, 4, 4, 'Magdy Yassin', 'Magdy Yassin', 'calls', '<b>Magdy Yassin</b> just added feedback to <b>Magrabi Lincess2</b> call', '2013-02-27 09:50:39', 1),
(222, 60, 4, 4, 'Magdy Yassin', 'Magdy Yassin', 'calls', '<b>Magdy Yassin</b> just added feedback to <b>Magrabi Lincess2</b> call', '2013-02-27 09:53:22', 1),
(223, 138, 4, 4, 'Magdy Yassin', 'Magdy Yassin', 'calls', 'You have to make a call to <b>Magrabi Lincess2</b>', '2013-02-27 13:05:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_sessions_sess`
--

DROP TABLE IF EXISTS `ecc_sessions_sess`;
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

-- --------------------------------------------------------

--
-- Table structure for table `ecc_userNotification_usrnoti`
--

DROP TABLE IF EXISTS `ecc_userNotification_usrnoti`;
CREATE TABLE `ecc_userNotification_usrnoti` (
  `id_usrnoti` int(11) NOT NULL AUTO_INCREMENT,
  `idnoti_usrnoti` int(11) NOT NULL,
  `idemp_usrnoti` int(11) NOT NULL,
  `hide_usrnoti` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_usrnoti`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ecc_vacancies_vac`
--

DROP TABLE IF EXISTS `ecc_vacancies_vac`;
CREATE TABLE `ecc_vacancies_vac` (
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

INSERT INTO `ecc_vacancies_vac` (`id_vac`, `title_vac`, `description_vac`, `responsbility_vac`, `requirements_vac`, `working_condition_vac`, `type_vac`, `reported_to_vac`, `active_vac`, `date_vac`, `end_vac`, `experience_vac`, `location_vac`, `vacancies_vac`, `gender_vac`, `rank_vac`) VALUES
(1, 'Managing editor', 'write a content for online journal/ website. Establishes journalistic style of the magazine. supervises writers, freelancers.<p>Manages the scheduling, writing, and editing functions of the magazine. Coordinates with the production team on the layout of the magazine/journal.</p><p>Familiar with a variety of the field''s concepts, practices, and procedures. Relies on experience and judgment to plan and accomplish goals. Performs a variety of tasks. Leads and directs the work of others. A wide degree of creativity and latitude is expected. Typically reports <br></p>', '<ul><li>\nTrack all news related to the website.&nbsp;</li><li>Edit, update and maintain data on back-end system &amp; ensure that outputs achieve the content quality policy. </li><li>Properly formulate and write the news &amp; articles in order to upload it to the website.&nbsp;</li><li>Translate English text to Arabic if needed.</li><li>Writes new content. <br></li><li>Assist the editing team in managing the website accounts on social networks. <br></li><li>Coordinate with technical team in order to create &amp; achieve new ideas</li><li>Has a sense of art in one of the following areas: design or decoration or fashion&nbsp; accessories or any similar fields that need creativity.<br></li></ul>', '<ul><li>Strong knowledge with how to run and manage social media accounts&nbsp;</li><li>Minimal concepts of online marketing and how to create new ideas <br></li><li>Strong knowledge in computer and internet</li><li>MS Word, Excel, PowerPoint</li><li>Experience in research and found information</li><li>Work effectively within a cross-departmental team</li><li>The ability to show creativity in general meetings to express new ideas<br></li><li>Photoshop, illustrator is a plus<br></li></ul>', '<ul><li>Working days: 05 days/week, according to work shifts.</li><li>Days off: two days/week, According to work shifts</li><li>Working Hours: 8 Hrs - from 9 - 5pm</li><li>Working Environment: 5 - 10% out, 90% standard office<br></li></ul>', 'Full time', 'ahmed.saber@eccsolutions.com', 1, '2012-06-24 11:43:01', '2012-07-10 00:00:00', 'Fresh Graduated', 'Dokki', '--', 'Female', 'Junior'),
(2, 'Media Sales Executive ', 'Responsible for handling all direct sales for pro solution in coordination with other team members, the proper candidates will be selling space on online magazines/ journals to direct clients and media agencies', '<ul>\n<li>Identify opportunities to enhance digital services</li>\n<li>Exceeding sales targets</li>\n<li>Develop a service products and seasonal packages</li>\n<li>Develop and establish relationships to gain repeat business</li>\n<li>Assist with conducing research into the social media &amp; internet industry to gain understanding of key clients</li>\n\n</ul>', '<ul>\n<li>Strong Knowledge in how the internet &amp; social media is run</li>\n<li>Proven record in exceeding sales targets</li>\n<li>Experience in working within the online internet industry is essential </li>\n<li>MS Word, Excel &amp; PowerPoint</li>\n<li>Photoshop is a plus</li>\n</ul>', '<ul>\n<li>Working days: 05 days/week, Sun - Th<br></li>\n<li>Days off: two days/week, Saturday, Friday<br></li>\n<li>Working Hours: 8 Hrs - from 9 - 5pm</li>\n<li>Working Environment: 90% out, 10% standard office</li>\n</ul>', 'Full time', 'ahmed.saber@eccsolutions.com', 1, '2012-06-24 13:57:33', '2012-07-10 00:00:00', 'Fresh Graduated', 'Dokki', '--', 'Male', 'Junior'),
(3, 'Marketing Executive', 'working to develop and implement campaigns to increase public awareness for some of our online portals in which we work in.', 'Our philosophy and mentoring programme supports each individual with the coaching, encouragement and opportunity essentials to progressive career growth within the sales and marketing industry.<br>\n<ul>\n<li>self-starters who are goal/detail orientated and have the affinity for working with people.</li>\n<li>Follow up with all execution duties of  Marketing and business plans</li>\n<li>Manage resources to reach goal</li>\n<li>Optimize recources and enhance process flow.</li>\n<li>Follow up on different processes</li>\n<li>Generate Constant Progress Reports .</li>\n</ul>\n', '<ul>\n<li>team players</li>\n<li>creative thinkers</li>\n<li>MS Word, Excel, PowerPoint</li>\n<li>Strong Knowledge in how the internet & social media is run</li>\n<li>Photoshop is a plus</li>\n</ul>', '<ul>\n<li>Working days: 05 days/week, Sun - Th</li>\n<li>Days off: two days/week, Saturday, Friday</li>\n<li>Working Hours: 8 Hrs - from 9 - 5pm</li>\n<li>Working Environment: 20 - 80% out, 20% standard office</li>\n<li></li>\n<li></li>\n</ul>', 'Full time', 'ahmed.saber@eccsolutions.com', 1, '2012-06-24 16:05:12', '2012-07-10 00:00:00', 'Fresh Graduated', 'Dokki', '--', 'Female', 'Junior'),
(4, 'مصححى لغة عربية', 'التدقيق اللغوى هو جزء رئيسى من الاخراج الصحفى المميز، نظراً لأننا نهتم بجودة المحتوى فنحن دائما أمام تحدى كبير فى عرض الاخبار والمقالات بدون أى اخطاء نحوية أو لغوية ', '<ul><li>القيام بأعمال التصحيح للغة العربية</li><li>المسؤولية الكاملة عن عرض محتوى عربى دقيق نحوياً ولغوياً</li><li>القدرة على اختيار عناوين اخبارية دالة عن أصل الخبر وملفتة لنظر القارئ<br></li></ul>', '<ul><li>خبرة في مجال النحو والصرف</li><li>خبرة فى التدقيق اللغوى</li><li>اجادة تامة لاستخدام برامج الحاسب الالى والاوفيس</li><li>لهم سابقة أعمال فى مجال التصحيح اللغوى فى دور النشر او الوكالات الصحفية</li><li>ليسانس كلية الاداب قسم اللغة العربية</li><li>ليسانس اللغة العربية جامعة الازهر</li><li>ليسانس كلية دار العلوم قسم اللغة العربية</li></ul>', '<ul>\n   <li>Working days: 05 days/week, Sun - Th</li>\n   <li>Days off: two days/week, Saturday, Friday</li>\n   <li>Working Hours: 8 Hrs - from 9 - 5pm</li>\n   <li>Working Environment: 100% standard office</li>\n</ul>', 'Full time', 'ahmed.saber@eccsolutions.com', 1, '2012-06-25 09:17:08', '2012-07-10 00:00:00', 'Fresh Graduated', 'Dokki', '--', 'Male', 'Junior'),
(5, 'web developer', 'Working as a part of the team, the successful candidate will be engaged in all stages of website development. The asp.net Web Developer will be involved in structural planning, creative brainstorming as well as HTML Programming, asp.net programming and Database Design among others.', '<ul><li>Handle and develop front and backend for our websites.</li>\n<li>Bring New Idea''s.</li>\n\n</ul>', '<ul>\n<li>Computer Science Graduate or equivalent certificates</li>\n<li>Very good command of the English language – written and spoken</li>\n<li>Courses in web development and equivalents are a plus</li>\n<li>In depth ASP, json, jquery, CSS and (X) HTML knowledge ( JavaScript will be plus).</li>\n<li>Strong database knowledge specifically SQL Server</li>\n<li>Web / Graphical Design skills would be desirable.</li>\n<li>A flexible attitude with proven experience of working in a small team.</li>\n</ul>', '<ul>\n<li>Working days: 05 days/week, Sun - Th</li>\n<li>Days off: two days/week, Saturday, Friday</li>\n<li>Working Hours: 8 Hrs - from 9 - 5pm</li>\n<li>Working Environment: 100% standard office</li>\n</ul>', 'Full time', 'mahmoud.maksoud@eccsolutions.net', 1, '2012-06-25 14:05:19', '2012-07-10 00:00:00', '2 years', 'Dokkie', '--', '', 'Junior');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
