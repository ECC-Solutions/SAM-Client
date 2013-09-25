-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 16, 2013 at 01:25 PM
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
  `idemp_acc` int(11) NOT NULL DEFAULT '0',
  `idco_acc` int(11) NOT NULL DEFAULT '0',
  `registeredDate_acc` date DEFAULT NULL,
  `status_acc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_acc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `ecc_accounts_acc`
--

INSERT INTO `ecc_accounts_acc` VALUES(6, 6, 10, '2013-02-15', '1');
INSERT INTO `ecc_accounts_acc` VALUES(13, 6, 8, '2013-02-16', 'active');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecc_accounts_products_accprod`
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `ecc_applicant_app`
--

INSERT INTO `ecc_applicant_app` VALUES(1, 2, 'mohamed abdelnaby', 'ahmedsaber111@gmail.com', 'mohamed_abdelnaby_{Media_Sales_Executive_}_2012-06-24_08:41:38_pm.pdf', '2012-06-24 08:41:38', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(2, 5, 'ahmed abdelnaby saber', 'ahmedsaber111@gmail.com', 'ahmed_abdelnaby_saber_{web_developer}_2012-06-28_02:05:15.pdf', '2012-06-28 02:05:15', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(3, 3, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Marketing_Executive}_2012-06-28_02:07:49.pdf', '2012-06-28 02:07:49', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(4, 3, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Marketing_Executive}_2012-06-28_02:08:23.pdf', '2012-06-28 02:08:23', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(5, 3, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Marketing_Executive}_2012-06-28_02:09:29.pdf', '2012-06-28 02:09:29', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(6, 4, 'ahmed', 'hhg@kjh.com', 'ahmed_{مصححى_لغة_عربية}_2012-06-28_02:17:01.pdf', '2012-06-28 02:17:01', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(7, 4, 'ahmed', 'hhg@kjh.com', 'ahmed_{مصححى_لغة_عربية}_2012-06-28_02:17:38.pdf', '2012-06-28 02:17:38', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(8, 4, 'ahmed', 'hhg@kjh.com', 'ahmed_{مصححى_لغة_عربية}_2012-06-28_02:18:07.pdf', '2012-06-28 02:18:07', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(9, 4, 'ahmed', 'hhg@kjh.com', 'ahmed_{مصححى_لغة_عربية}_2012-06-28_02:19:05.pdf', '2012-06-28 02:19:05', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(10, 4, 'ahmed', 'hhg@kjh.com', 'ahmed_{مصححى_لغة_عربية}_2012-06-28_02:20:06.pdf', '2012-06-28 02:20:06', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(11, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:21:13.pdf', '2012-06-28 02:21:13', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(12, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:22:30.pdf', '2012-06-28 02:22:30', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(13, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:25:14.pdf', '2012-06-28 02:25:14', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(14, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:27:59.pdf', '2012-06-28 02:27:59', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(15, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:28:37.pdf', '2012-06-28 02:28:37', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(16, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:33:39.pdf', '2012-06-28 02:33:39', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(17, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:39:40.pdf', '2012-06-28 02:39:40', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(18, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:41:19.pdf', '2012-06-28 02:41:19', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(19, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:44:07.pdf', '2012-06-28 02:44:07', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(20, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:46:17.pdf', '2012-06-28 02:46:17', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(21, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:47:18.pdf', '2012-06-28 02:47:18', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(22, 2, 'ahmed', 'ahemdsab1@afdas.com', 'ahmed_{Media_Sales_Executive_}_2012-06-28_02:47:42.pdf', '2012-06-28 02:47:42', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(23, 5, 'test ', 'a@a.com', 'Ahmed mohamed hany CV.docx', '2012-06-28 03:03:03', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(24, 5, 'test', 'a@a.com', 'Ahmed mohamed hany CV.docx', '2012-06-28 03:05:54', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(25, 2, 'ahmed abdelnaby saber', 'ahmedsaber111@gmail.com', 'ahmed_abdelnaby_saber_{Media_Sales_Executive_}_2012-06-28_03:26:04.pdf', '2012-06-28 03:26:04', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(26, 2, 'ahmed abdelnaby saber', 'ahmedsaber111@gmail.com', 'ahmed_abdelnaby_saber_{Media_Sales_Executive_}_2012-06-28_03:26:42.pdf', '2012-06-28 03:26:42', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(27, 2, 'ahmed abdelnaby saber', 'ahmedsaber111@gmail.com', 'ahmed_abdelnaby_saber_{Media_Sales_Executive_}_2012-06-28_03:40:18.pdf', '2012-06-28 03:40:18', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(28, 2, 'ahmed abdelnaby saber', 'ahmedsaber111@gmail.com', 'ahmed_abdelnaby_saber_{Media_Sales_Executive_}_2012-06-28_03:41:16.pdf', '2012-06-28 03:41:16', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(29, 2, 'ahmed abdelnaby saber', 'ahmedsaber111@gmail.com', 'ahmed_abdelnaby_saber_{Media_Sales_Executive_}_2012-06-28_03:43:15.pdf', '2012-06-28 03:43:15', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(30, 2, 'ahmed abdelnaby saber', 'ahmedsaber111@gmail.com', 'ahmed_abdelnaby_saber_{Media_Sales_Executive_}_2012-06-28_03:44:28.pdf', '2012-06-28 03:44:28', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(31, 5, 'a', 'a@a.com', 'Ahmed mohamed hany CV.docx', '2012-06-28 04:05:39', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(32, 1, 'ahmed abdelnaby saber', 'ahmedsaber111@gmail.com', 'ahmed_abdelnaby_saber_{Managing_editor}_2012-06-28_04:31:53.pdf', '2012-06-28 04:31:53', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(33, 5, 'Abrar Mudhir', 'abrarsharif2010@gmail.com', 'Abrar_Mudhir_{web_developer}_2012-06-29_12:47:37.doc', '2012-06-29 12:47:37', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(34, 4, 'Eman Hamdy Farrag', 'emanhamdi6@gmail.com', 'Eman_Hamdy_Farrag_{مصححى_لغة_عربية}_2012-06-29_01:59:46.docx', '2012-06-29 01:59:46', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(35, 5, 'adel mahmoud abd el-hameed khapiri', 'adelfci@gmail.com', 'adel_mahmoud_abd_el-hameed_khapiri_{web_developer}_2012-07-01_07:42:36.doc', '2012-07-01 07:42:36', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(36, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_10:19:17.pdf', '2012-07-02 10:19:17', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(37, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_10:19:41.pdf', '2012-07-02 10:19:41', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(38, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_10:21:31.pdf', '2012-07-02 10:21:31', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(39, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_11:10:50.pdf', '2012-07-02 11:10:50', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(40, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_11:39:53.pdf', '2012-07-02 11:39:53', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(41, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_11:41:02.pdf', '2012-07-02 11:41:02', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(42, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_11:42:15.pdf', '2012-07-02 11:42:15', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(43, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_11:48:51.pdf', '2012-07-02 11:48:51', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(44, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_11:49:55.pdf', '2012-07-02 11:49:55', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(45, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_11:50:22.pdf', '2012-07-02 11:50:22', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(46, 5, 'eslam samir', 'ahmedsaber111@gmail.com', 'eslam_samir_{web_developer}_2012-07-02_11:52:46.pdf', '2012-07-02 11:52:46', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(47, 5, 'hello test', 'ahmedsaber111@gmail.com', 'hello_test_{web_developer}_2012-07-03_12:40:41.pdf', '2012-07-03 12:40:41', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(48, 5, 'hello test', 'ahmedsaber111@gmail.com', 'hello_test_{web_developer}_2012-07-03_12:40:53.pdf', '2012-07-03 12:40:53', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(49, 5, 'hello test', 'ahmedsaber111@gmail.com', 'hello_test_{web_developer}_2012-07-03_12:41:36.pdf', '2012-07-03 12:41:36', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(50, 3, 'Alaa Ahmed Hamad', 'alaahamad@hotmail.com', 'Alaa''s C.V_._.rtf', '2012-07-03 01:53:27', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(51, 5, 'Ammar Marzouk Roshdy', 'itc.ammar@inter-vision.ws', 'Ammar_Marzouk_Roshdy_{web_developer}_2012-07-03_05:50:42.doc', '2012-07-03 05:50:42', 0, 0);
INSERT INTO `ecc_applicant_app` VALUES(52, 5, 'Mohamed Fakhr El Din', 'medmost@gmail.com', 'Mohamed_Fakhr_El_Din_{web_developer}_2012-07-10_09:36:03.DOC', '2012-07-10 09:36:03', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_calls_call`
--

DROP TABLE IF EXISTS `ecc_calls_call`;
CREATE TABLE IF NOT EXISTS `ecc_calls_call` (
  `id_call` int(11) NOT NULL AUTO_INCREMENT,
  `idemp_call` int(11) NOT NULL DEFAULT '0',
  `idco_call` int(11) NOT NULL DEFAULT '0',
  `status_call` varchar(255) NOT NULL DEFAULT '1',
  `callType_call` varchar(255) DEFAULT NULL,
  `accept_call` int(1) DEFAULT NULL,
  `date_call` datetime DEFAULT NULL,
  `dueDate_call` datetime DEFAULT NULL,
  `callStatus_call` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_call`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ecc_calls_call`
--

INSERT INTO `ecc_calls_call` VALUES(1, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(2, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(3, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(4, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(5, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(6, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(7, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(8, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(9, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecc_call_cmeta`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecc_companyBranch_cobr`
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ecc_companyCategory_cocat`
--

INSERT INTO `ecc_companyCategory_cocat` VALUES(1, 'prospect', 2);
INSERT INTO `ecc_companyCategory_cocat` VALUES(2, 'current', 0);
INSERT INTO `ecc_companyCategory_cocat` VALUES(3, 'x-customer', 0);
INSERT INTO `ecc_companyCategory_cocat` VALUES(4, 'vendor', 0);
INSERT INTO `ecc_companyCategory_cocat` VALUES(5, 'partner', 0);
INSERT INTO `ecc_companyCategory_cocat` VALUES(6, 'third party', 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecc_companyContact_cocontact`
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `ecc_companyMeta_cometa`
--

INSERT INTO `ecc_companyMeta_cometa` VALUES(1, 1, 'address', '306 Cornish El-Maadi, HSBC Building');
INSERT INTO `ecc_companyMeta_cometa` VALUES(2, 1, 'website', 'http://www.magrabioptical.com');
INSERT INTO `ecc_companyMeta_cometa` VALUES(3, 1, 'logo', 'Magrabi2.jpg');
INSERT INTO `ecc_companyMeta_cometa` VALUES(4, 2, 'address', 'Egypt Office<br />New Maadi, HSB Building 4th');
INSERT INTO `ecc_companyMeta_cometa` VALUES(5, 2, 'website', 'http://www.magrabioptical.com');
INSERT INTO `ecc_companyMeta_cometa` VALUES(6, 2, 'logo', 'Magrabi3.jpg');
INSERT INTO `ecc_companyMeta_cometa` VALUES(7, 2, 'registeredDate', '2013-02-15 17:33:38');
INSERT INTO `ecc_companyMeta_cometa` VALUES(8, 2, 'creatorId', '1');
INSERT INTO `ecc_companyMeta_cometa` VALUES(9, 2, 'creatorNameSpace', 'Master Account');
INSERT INTO `ecc_companyMeta_cometa` VALUES(10, 4, 'address', 'New Maadi, HSB Building');
INSERT INTO `ecc_companyMeta_cometa` VALUES(11, 4, 'website', 'http://www.magrabiretail.com');
INSERT INTO `ecc_companyMeta_cometa` VALUES(12, 4, 'logo', 'Magrabi4.jpg');
INSERT INTO `ecc_companyMeta_cometa` VALUES(13, 4, 'registeredDate', '2013-02-15 18:27:35');
INSERT INTO `ecc_companyMeta_cometa` VALUES(14, 4, 'creatorId', '4');
INSERT INTO `ecc_companyMeta_cometa` VALUES(15, 4, 'creatorNameSpace', 'Magdy Yassin');
INSERT INTO `ecc_companyMeta_cometa` VALUES(16, 5, 'address', 'New Maadi, HSBC Building');
INSERT INTO `ecc_companyMeta_cometa` VALUES(17, 5, 'website', 'http://www.magrabiretail.com');
INSERT INTO `ecc_companyMeta_cometa` VALUES(18, 5, 'logo', 'Magrabi_Retail1.jpg');
INSERT INTO `ecc_companyMeta_cometa` VALUES(19, 5, 'registeredDate', '2013-02-15 18:31:27');
INSERT INTO `ecc_companyMeta_cometa` VALUES(20, 5, 'creatorId', '4');
INSERT INTO `ecc_companyMeta_cometa` VALUES(21, 5, 'creatorNameSpace', 'Magdy Yassin');
INSERT INTO `ecc_companyMeta_cometa` VALUES(22, 8, 'address', 'New Maadi');
INSERT INTO `ecc_companyMeta_cometa` VALUES(23, 8, 'website', 'http://www.magrabiretail.com');
INSERT INTO `ecc_companyMeta_cometa` VALUES(24, 8, 'logo', 'Magrabi_Lincess.png');
INSERT INTO `ecc_companyMeta_cometa` VALUES(25, 8, 'registeredDate', '2013-02-15 18:41:51');
INSERT INTO `ecc_companyMeta_cometa` VALUES(26, 8, 'creatorId', '6');
INSERT INTO `ecc_companyMeta_cometa` VALUES(27, 8, 'creatorNameSpace', 'Ahmed Saber');
INSERT INTO `ecc_companyMeta_cometa` VALUES(28, 10, 'address', 'Smart Village');
INSERT INTO `ecc_companyMeta_cometa` VALUES(29, 10, 'website', '');
INSERT INTO `ecc_companyMeta_cometa` VALUES(30, 10, 'logo', 'ECCO.png');
INSERT INTO `ecc_companyMeta_cometa` VALUES(31, 10, 'registeredDate', '2013-02-15 20:48:37');
INSERT INTO `ecc_companyMeta_cometa` VALUES(32, 10, 'creatorId', '6');
INSERT INTO `ecc_companyMeta_cometa` VALUES(33, 10, 'creatorNameSpace', 'Ahmed Saber');

-- --------------------------------------------------------

--
-- Table structure for table `ecc_company_co`
--

DROP TABLE IF EXISTS `ecc_company_co`;
CREATE TABLE IF NOT EXISTS `ecc_company_co` (
  `id_co` int(11) NOT NULL AUTO_INCREMENT,
  `idcocat_co` int(11) DEFAULT NULL,
  `name_co` varchar(255) NOT NULL DEFAULT '',
  `status_co` varchar(255) NOT NULL,
  `accountCount_co` int(11) DEFAULT '0',
  PRIMARY KEY (`id_co`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `ecc_company_co`
--

INSERT INTO `ecc_company_co` VALUES(8, 1, 'Magrabi Lincess', 'active', 1);
INSERT INTO `ecc_company_co` VALUES(10, 1, 'ECCO', 'active', 1);
INSERT INTO `ecc_company_co` VALUES(11, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(12, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(13, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(14, NULL, '', 'draft', 0);
INSERT INTO `ecc_company_co` VALUES(15, NULL, '', 'draft', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_department_dep`
--

DROP TABLE IF EXISTS `ecc_department_dep`;
CREATE TABLE IF NOT EXISTS `ecc_department_dep` (
  `id_dep` int(11) NOT NULL AUTO_INCREMENT,
  `name_dep` varchar(255) NOT NULL,
  `status_dep` varchar(255) DEFAULT NULL,
  `count_dep` int(11) DEFAULT '0',
  PRIMARY KEY (`id_dep`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ecc_department_dep`
--

INSERT INTO `ecc_department_dep` VALUES(1, 'S.A.M', '1', 1);
INSERT INTO `ecc_department_dep` VALUES(5, 'Internet Services', '1', 2);
INSERT INTO `ecc_department_dep` VALUES(6, 'Sales', '1', 2);

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
  `regsiteredDate_emp` datetime NOT NULL,
  `level_emp` int(1) DEFAULT NULL,
  `force_password_emp` int(1) DEFAULT '0',
  `companyCount_emp` int(11) DEFAULT '0',
  `callsCount_emp` int(11) DEFAULT '0',
  PRIMARY KEY (`id_emp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ecc_employees_emp`
--

INSERT INTO `ecc_employees_emp` VALUES(1, 'master', '4394af2172185415e647a9a460a33e9c', 1, '2013-01-08 00:00:00', 1, 0, 0, 0);
INSERT INTO `ecc_employees_emp` VALUES(4, 'magdy.yassin@eccsolutions.net', 'fcea920f7412b5da7be0cf42b8c93759', 1, '0000-00-00 00:00:00', 3, 0, 0, 0);
INSERT INTO `ecc_employees_emp` VALUES(6, 'ahmed.saber@eccsolutions.net', 'fcea920f7412b5da7be0cf42b8c93759', 1, '0000-00-00 00:00:00', 3, 0, 3, 0);
INSERT INTO `ecc_employees_emp` VALUES(8, 'mohamed.khaiary@eccsolutions.net', '60021aefe045ca75542e4510b18c8252', 0, '0000-00-00 00:00:00', 3, 1, 0, 0);
INSERT INTO `ecc_employees_emp` VALUES(9, 'ahmed.fawzy@eccsolutions.net', '60021aefe045ca75542e4510b18c8252', 0, '0000-00-00 00:00:00', 3, 1, 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `ecc_employee_empmeta`
--

INSERT INTO `ecc_employee_empmeta` VALUES(1, 1, 'first_name', 'Master');
INSERT INTO `ecc_employee_empmeta` VALUES(2, 1, 'last_name', 'Account');
INSERT INTO `ecc_employee_empmeta` VALUES(3, 1, 'position', 'ECC Sales Cloud Administrator');
INSERT INTO `ecc_employee_empmeta` VALUES(4, 1, 'avatar', 'Magdy_Yassin6.jpg');
INSERT INTO `ecc_employee_empmeta` VALUES(5, 1, 'mobile', '01201129091');
INSERT INTO `ecc_employee_empmeta` VALUES(6, 1, 'mobile2', '1');
INSERT INTO `ecc_employee_empmeta` VALUES(7, 1, 'home_phone', '');
INSERT INTO `ecc_employee_empmeta` VALUES(8, 1, 'address', '');
INSERT INTO `ecc_employee_empmeta` VALUES(25, 4, 'first_name', 'Magdy');
INSERT INTO `ecc_employee_empmeta` VALUES(26, 4, 'last_name', 'Yassin');
INSERT INTO `ecc_employee_empmeta` VALUES(27, 4, 'avatar', 'Magdy Yassin');
INSERT INTO `ecc_employee_empmeta` VALUES(28, 4, 'position', 'Strategy & Planning Director');
INSERT INTO `ecc_employee_empmeta` VALUES(29, 4, 'mobile', '01220098536');
INSERT INTO `ecc_employee_empmeta` VALUES(30, 4, 'mobile2', '');
INSERT INTO `ecc_employee_empmeta` VALUES(31, 4, 'home_phone', '');
INSERT INTO `ecc_employee_empmeta` VALUES(32, 4, 'address', '');
INSERT INTO `ecc_employee_empmeta` VALUES(41, 6, 'first_name', 'Ahmed');
INSERT INTO `ecc_employee_empmeta` VALUES(42, 6, 'last_name', 'Saber');
INSERT INTO `ecc_employee_empmeta` VALUES(43, 6, 'avatar', 'Ahmed Saber');
INSERT INTO `ecc_employee_empmeta` VALUES(44, 6, 'position', 'Senior UI/ UX Designer');
INSERT INTO `ecc_employee_empmeta` VALUES(45, 6, 'mobile', '01015552992');
INSERT INTO `ecc_employee_empmeta` VALUES(46, 6, 'mobile2', '01060634154');
INSERT INTO `ecc_employee_empmeta` VALUES(47, 6, 'home_phone', '0222073227');
INSERT INTO `ecc_employee_empmeta` VALUES(48, 6, 'address', '42 ahmed helmy st. Shobra Masr');
INSERT INTO `ecc_employee_empmeta` VALUES(57, 8, 'first_name', 'Mohamed');
INSERT INTO `ecc_employee_empmeta` VALUES(58, 8, 'last_name', 'Khaiary');
INSERT INTO `ecc_employee_empmeta` VALUES(59, 8, 'avatar', 'Mohamed Khaiary');
INSERT INTO `ecc_employee_empmeta` VALUES(60, 8, 'position', 'Sales Director');
INSERT INTO `ecc_employee_empmeta` VALUES(61, 8, 'mobile', '01902909090');
INSERT INTO `ecc_employee_empmeta` VALUES(62, 8, 'mobile2', '01060634154');
INSERT INTO `ecc_employee_empmeta` VALUES(63, 8, 'home_phone', '');
INSERT INTO `ecc_employee_empmeta` VALUES(64, 8, 'address', '');
INSERT INTO `ecc_employee_empmeta` VALUES(65, 9, 'first_name', 'Ahmed');
INSERT INTO `ecc_employee_empmeta` VALUES(66, 9, 'last_name', 'Fawzy');
INSERT INTO `ecc_employee_empmeta` VALUES(67, 9, 'avatar', 'Ahmed Fawzy');
INSERT INTO `ecc_employee_empmeta` VALUES(68, 9, 'position', 'Senior Account Manager');
INSERT INTO `ecc_employee_empmeta` VALUES(69, 9, 'mobile', '01201129091');
INSERT INTO `ecc_employee_empmeta` VALUES(70, 9, 'mobile2', '');
INSERT INTO `ecc_employee_empmeta` VALUES(71, 9, 'home_phone', '');
INSERT INTO `ecc_employee_empmeta` VALUES(72, 9, 'address', '');

-- --------------------------------------------------------

--
-- Table structure for table `ecc_feedback_feed`
--

DROP TABLE IF EXISTS `ecc_feedback_feed`;
CREATE TABLE IF NOT EXISTS `ecc_feedback_feed` (
  `id_feed` int(11) NOT NULL AUTO_INCREMENT,
  `idcall_feed` int(11) NOT NULL,
  `idemp_feed` int(11) NOT NULL,
  `idco_feed` int(11) NOT NULL,
  `feedback_feed` text NOT NULL,
  `date_feed` datetime NOT NULL,
  PRIMARY KEY (`id_feed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecc_feedback_feed`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecc_files_file`
--


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

INSERT INTO `ecc_managers_man` VALUES(5, 4);
INSERT INTO `ecc_managers_man` VALUES(6, 8);

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
INSERT INTO `ecc_mempership_memper` VALUES(5, 4);
INSERT INTO `ecc_mempership_memper` VALUES(5, 6);
INSERT INTO `ecc_mempership_memper` VALUES(6, 8);
INSERT INTO `ecc_mempership_memper` VALUES(6, 9);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_notifications_notif`
--

DROP TABLE IF EXISTS `ecc_notifications_notif`;
CREATE TABLE IF NOT EXISTS `ecc_notifications_notif` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecc_notifications_notif`
--


-- --------------------------------------------------------

--
-- Table structure for table `ecc_notificationType_ntype`
--

DROP TABLE IF EXISTS `ecc_notificationType_ntype`;
CREATE TABLE IF NOT EXISTS `ecc_notificationType_ntype` (
  `id_ntype` int(11) NOT NULL AUTO_INCREMENT,
  `name_ntype` varchar(255) NOT NULL,
  PRIMARY KEY (`id_ntype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ecc_notificationType_ntype`
--

INSERT INTO `ecc_notificationType_ntype` VALUES(1, 'tips');
INSERT INTO `ecc_notificationType_ntype` VALUES(2, 'notice');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecc_products_prod`
--


-- --------------------------------------------------------

--
-- Table structure for table `ecc_product_prodmeta`
--

DROP TABLE IF EXISTS `ecc_product_prodmeta`;
CREATE TABLE IF NOT EXISTS `ecc_product_prodmeta` (
  `id_prodmeta` int(11) NOT NULL AUTO_INCREMENT,
  `idprod_prodmeta` int(11) NOT NULL,
  `metaKey_prodmeta` varchar(255) NOT NULL,
  `metaValue_prodmeta` text NOT NULL,
  PRIMARY KEY (`id_prodmeta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecc_product_prodmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `ecc_pusher_push`
--

DROP TABLE IF EXISTS `ecc_pusher_push`;
CREATE TABLE IF NOT EXISTS `ecc_pusher_push` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `ecc_pusher_push`
--

INSERT INTO `ecc_pusher_push` VALUES(1, 4, 4, 1, 'Magdy Yassin', 'Master Account', 'employees', 'Hi Magdy Yassin, Welcome to S.A.M Sys.! your are now able to create a highly job experience ', '2013-02-15 16:58:43', 1);
INSERT INTO `ecc_pusher_push` VALUES(2, 2, 4, 1, 'Magdy Yassin', 'Master Account', 'companies', 'Master Account just added a new company', '2013-02-15 17:33:38', 1);
INSERT INTO `ecc_pusher_push` VALUES(5, 6, 6, 1, 'Ahmed Saber', 'Master Account', 'employees', 'Hi Ahmed Saber, Welcome to S.A.M Sys.! your are now able to create a highly job experience ', '2013-02-15 18:12:06', 1);
INSERT INTO `ecc_pusher_push` VALUES(6, 6, 4, 1, 'Magdy Yassin', 'Master Account', 'employees', 'Ahmed Saber a Senior UI/ UX Designer just added to your department, you are now able to assign calls for him', '2013-02-15 18:12:06', 1);
INSERT INTO `ecc_pusher_push` VALUES(7, 7, 7, 1, 'Ahmed Fawzy', 'Master Account', 'employees', 'Hi Ahmed Fawzy, Welcome to S.A.M Sys.! your are now able to create a highly job experience ', '2013-02-15 18:14:39', 1);
INSERT INTO `ecc_pusher_push` VALUES(8, 8, 8, 1, 'Mohamed Khaiary', 'Master Account', 'employees', 'Hi Mohamed Khaiary, Welcome to S.A.M Sys.! your are now able to create a highly job experience ', '2013-02-15 18:23:12', 1);
INSERT INTO `ecc_pusher_push` VALUES(9, 9, 9, 1, 'Ahmed Fawzy', 'Master Account', 'employees', 'Hi Ahmed Fawzy, Welcome to S.A.M Sys.! your are now able to create a highly job experience ', '2013-02-15 18:24:24', 1);
INSERT INTO `ecc_pusher_push` VALUES(10, 9, 8, 1, 'Mohamed Khaiary', 'Master Account', 'employees', 'Ahmed Fawzy a Senior Account Manager just added to your department, you are now able to assign calls for him', '2013-02-15 18:24:24', 1);
INSERT INTO `ecc_pusher_push` VALUES(13, 5, 4, 4, 'Magdy Yassin', 'Magdy Yassin', 'companies', 'Magdy Yassin just added <b>Magrabi Retail</b> as a new company', '2013-02-15 18:31:27', 1);
INSERT INTO `ecc_pusher_push` VALUES(14, 5, 8, 4, 'Mohamed Khaiary', 'Magdy Yassin', 'companies', 'Magdy Yassin just added <b>Magrabi Retail</b> as a new company', '2013-02-15 18:31:27', 1);
INSERT INTO `ecc_pusher_push` VALUES(15, 8, 4, 6, 'Magdy Yassin', 'Ahmed Saber', 'companies', 'Ahmed Saber just added <b>Magrabi Lincess</b> as a new company', '2013-02-15 18:41:51', 1);
INSERT INTO `ecc_pusher_push` VALUES(16, 8, 8, 6, 'Mohamed Khaiary', 'Ahmed Saber', 'companies', 'Ahmed Saber just added <b>Magrabi Lincess</b> as a new company', '2013-02-15 18:41:51', 1);
INSERT INTO `ecc_pusher_push` VALUES(17, 2, 6, 1, 'Ahmed Saber', 'Master Account', 'accounts', 'You are no longer responsible for manage  account any more', '2013-02-15 19:13:07', 1);
INSERT INTO `ecc_pusher_push` VALUES(18, 3, 6, 1, 'Ahmed Saber', 'Master Account', 'accounts', 'You are no longer responsible to manage Ahmed Saber account any more', '2013-02-15 19:14:05', 1);
INSERT INTO `ecc_pusher_push` VALUES(19, 4, 6, 1, 'Ahmed Saber', 'Master Account', 'accounts', 'You are no longer responsible to manage Magrabi Lincess account any more', '2013-02-15 19:16:00', 1);
INSERT INTO `ecc_pusher_push` VALUES(20, 6, 6, 6, 'Ahmed Saber', 'Ahmed Saber', 'accounts', 'ECCO just assigned for you as an account manager, good luck for you! we are waiting to sign the contract with them :)', '2013-02-15 20:48:37', 1);
INSERT INTO `ecc_pusher_push` VALUES(21, 10, 4, 6, 'Magdy Yassin', 'Ahmed Saber', 'companies', 'Ahmed Saber just added <b>ECCO</b> as a new company', '2013-02-15 20:48:37', 1);
INSERT INTO `ecc_pusher_push` VALUES(22, 10, 8, 6, 'Mohamed Khaiary', 'Ahmed Saber', 'companies', 'Ahmed Saber just added <b>ECCO</b> as a new company', '2013-02-15 20:48:37', 1);
INSERT INTO `ecc_pusher_push` VALUES(23, 13, 6, 1, 'Ahmed Saber', 'Master Account', 'accounts', 'Magrabi Lincess just assigned for you as an account manager, good luck for you! we are waiting to sign the contract with them :)', '2013-02-16 10:10:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ecc_userNotification_usrnoti`
--

DROP TABLE IF EXISTS `ecc_userNotification_usrnoti`;
CREATE TABLE IF NOT EXISTS `ecc_userNotification_usrnoti` (
  `id_usrnoti` int(11) NOT NULL AUTO_INCREMENT,
  `idnoti_usrnoti` int(11) NOT NULL,
  `idemp_usrnoti` int(11) NOT NULL,
  `hide_usrnoti` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_usrnoti`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecc_userNotification_usrnoti`
--


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

INSERT INTO `ecc_vacancies_vac` VALUES(1, 'Managing editor', 'write a content for online journal/ website. Establishes journalistic style of the magazine. supervises writers, freelancers.<p>Manages the scheduling, writing, and editing functions of the magazine. Coordinates with the production team on the layout of the magazine/journal.</p><p>Familiar with a variety of the field''s concepts, practices, and procedures. Relies on experience and judgment to plan and accomplish goals. Performs a variety of tasks. Leads and directs the work of others. A wide degree of creativity and latitude is expected. Typically reports <br></p>', '<ul><li>\nTrack all news related to the website.&nbsp;</li><li>Edit, update and maintain data on back-end system &amp; ensure that outputs achieve the content quality policy. </li><li>Properly formulate and write the news &amp; articles in order to upload it to the website.&nbsp;</li><li>Translate English text to Arabic if needed.</li><li>Writes new content. <br></li><li>Assist the editing team in managing the website accounts on social networks. <br></li><li>Coordinate with technical team in order to create &amp; achieve new ideas</li><li>Has a sense of art in one of the following areas: design or decoration or fashion&nbsp; accessories or any similar fields that need creativity.<br></li></ul>', '<ul><li>Strong knowledge with how to run and manage social media accounts&nbsp;</li><li>Minimal concepts of online marketing and how to create new ideas <br></li><li>Strong knowledge in computer and internet</li><li>MS Word, Excel, PowerPoint</li><li>Experience in research and found information</li><li>Work effectively within a cross-departmental team</li><li>The ability to show creativity in general meetings to express new ideas<br></li><li>Photoshop, illustrator is a plus<br></li></ul>', '<ul><li>Working days: 05 days/week, according to work shifts.</li><li>Days off: two days/week, According to work shifts</li><li>Working Hours: 8 Hrs - from 9 - 5pm</li><li>Working Environment: 5 - 10% out, 90% standard office<br></li></ul>', 'Full time', 'ahmed.saber@eccsolutions.com', 1, '2012-06-24 11:43:01', '2012-07-10 00:00:00', 'Fresh Graduated', 'Dokki', '--', 'Female', 'Junior');
INSERT INTO `ecc_vacancies_vac` VALUES(2, 'Media Sales Executive ', 'Responsible for handling all direct sales for pro solution in coordination with other team members, the proper candidates will be selling space on online magazines/ journals to direct clients and media agencies', '<ul>\n<li>Identify opportunities to enhance digital services</li>\n<li>Exceeding sales targets</li>\n<li>Develop a service products and seasonal packages</li>\n<li>Develop and establish relationships to gain repeat business</li>\n<li>Assist with conducing research into the social media &amp; internet industry to gain understanding of key clients</li>\n\n</ul>', '<ul>\n<li>Strong Knowledge in how the internet &amp; social media is run</li>\n<li>Proven record in exceeding sales targets</li>\n<li>Experience in working within the online internet industry is essential </li>\n<li>MS Word, Excel &amp; PowerPoint</li>\n<li>Photoshop is a plus</li>\n</ul>', '<ul>\n<li>Working days: 05 days/week, Sun - Th<br></li>\n<li>Days off: two days/week, Saturday, Friday<br></li>\n<li>Working Hours: 8 Hrs - from 9 - 5pm</li>\n<li>Working Environment: 90% out, 10% standard office</li>\n</ul>', 'Full time', 'ahmed.saber@eccsolutions.com', 1, '2012-06-24 13:57:33', '2012-07-10 00:00:00', 'Fresh Graduated', 'Dokki', '--', 'Male', 'Junior');
INSERT INTO `ecc_vacancies_vac` VALUES(3, 'Marketing Executive', 'working to develop and implement campaigns to increase public awareness for some of our online portals in which we work in.', 'Our philosophy and mentoring programme supports each individual with the coaching, encouragement and opportunity essentials to progressive career growth within the sales and marketing industry.<br>\n<ul>\n<li>self-starters who are goal/detail orientated and have the affinity for working with people.</li>\n<li>Follow up with all execution duties of  Marketing and business plans</li>\n<li>Manage resources to reach goal</li>\n<li>Optimize recources and enhance process flow.</li>\n<li>Follow up on different processes</li>\n<li>Generate Constant Progress Reports .</li>\n</ul>\n', '<ul>\n<li>team players</li>\n<li>creative thinkers</li>\n<li>MS Word, Excel, PowerPoint</li>\n<li>Strong Knowledge in how the internet & social media is run</li>\n<li>Photoshop is a plus</li>\n</ul>', '<ul>\n<li>Working days: 05 days/week, Sun - Th</li>\n<li>Days off: two days/week, Saturday, Friday</li>\n<li>Working Hours: 8 Hrs - from 9 - 5pm</li>\n<li>Working Environment: 20 - 80% out, 20% standard office</li>\n<li></li>\n<li></li>\n</ul>', 'Full time', 'ahmed.saber@eccsolutions.com', 1, '2012-06-24 16:05:12', '2012-07-10 00:00:00', 'Fresh Graduated', 'Dokki', '--', 'Female', 'Junior');
INSERT INTO `ecc_vacancies_vac` VALUES(4, 'مصححى لغة عربية', 'التدقيق اللغوى هو جزء رئيسى من الاخراج الصحفى المميز، نظراً لأننا نهتم بجودة المحتوى فنحن دائما أمام تحدى كبير فى عرض الاخبار والمقالات بدون أى اخطاء نحوية أو لغوية ', '<ul><li>القيام بأعمال التصحيح للغة العربية</li><li>المسؤولية الكاملة عن عرض محتوى عربى دقيق نحوياً ولغوياً</li><li>القدرة على اختيار عناوين اخبارية دالة عن أصل الخبر وملفتة لنظر القارئ<br></li></ul>', '<ul><li>خبرة في مجال النحو والصرف</li><li>خبرة فى التدقيق اللغوى</li><li>اجادة تامة لاستخدام برامج الحاسب الالى والاوفيس</li><li>لهم سابقة أعمال فى مجال التصحيح اللغوى فى دور النشر او الوكالات الصحفية</li><li>ليسانس كلية الاداب قسم اللغة العربية</li><li>ليسانس اللغة العربية جامعة الازهر</li><li>ليسانس كلية دار العلوم قسم اللغة العربية</li></ul>', '<ul>\n   <li>Working days: 05 days/week, Sun - Th</li>\n   <li>Days off: two days/week, Saturday, Friday</li>\n   <li>Working Hours: 8 Hrs - from 9 - 5pm</li>\n   <li>Working Environment: 100% standard office</li>\n</ul>', 'Full time', 'ahmed.saber@eccsolutions.com', 1, '2012-06-25 09:17:08', '2012-07-10 00:00:00', 'Fresh Graduated', 'Dokki', '--', 'Male', 'Junior');
INSERT INTO `ecc_vacancies_vac` VALUES(5, 'web developer', 'Working as a part of the team, the successful candidate will be engaged in all stages of website development. The asp.net Web Developer will be involved in structural planning, creative brainstorming as well as HTML Programming, asp.net programming and Database Design among others.', '<ul><li>Handle and develop front and backend for our websites.</li>\n<li>Bring New Idea''s.</li>\n\n</ul>', '<ul>\n<li>Computer Science Graduate or equivalent certificates</li>\n<li>Very good command of the English language – written and spoken</li>\n<li>Courses in web development and equivalents are a plus</li>\n<li>In depth ASP, json, jquery, CSS and (X) HTML knowledge ( JavaScript will be plus).</li>\n<li>Strong database knowledge specifically SQL Server</li>\n<li>Web / Graphical Design skills would be desirable.</li>\n<li>A flexible attitude with proven experience of working in a small team.</li>\n</ul>', '<ul>\n<li>Working days: 05 days/week, Sun - Th</li>\n<li>Days off: two days/week, Saturday, Friday</li>\n<li>Working Hours: 8 Hrs - from 9 - 5pm</li>\n<li>Working Environment: 100% standard office</li>\n</ul>', 'Full time', 'mahmoud.maksoud@eccsolutions.net', 1, '2012-06-25 14:05:19', '2012-07-10 00:00:00', '2 years', 'Dokkie', '--', '', 'Junior');
