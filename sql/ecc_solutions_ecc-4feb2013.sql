-- phpMyAdmin SQL Dump
-- version 3.4.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 04, 2013 at 07:37 PM
-- Server version: 5.5.13
-- PHP Version: 5.3.6

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
CREATE TABLE IF NOT EXISTS `ecc_accounts_acc` (
  `id_acc` int(11) NOT NULL AUTO_INCREMENT,
  `idemp_acc` int(11) NOT NULL DEFAULT '0',
  `idco_acc` int(11) NOT NULL DEFAULT '0',
  `registeredDate_acc` date DEFAULT NULL,
  `status_acc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_acc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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

-- --------------------------------------------------------

--
-- Table structure for table `ecc_companybranch_cobr`
--

DROP TABLE IF EXISTS `ecc_companybranch_cobr`;
CREATE TABLE IF NOT EXISTS `ecc_companybranch_cobr` (
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
-- Table structure for table `ecc_companycategory_cocat`
--

DROP TABLE IF EXISTS `ecc_companycategory_cocat`;
CREATE TABLE IF NOT EXISTS `ecc_companycategory_cocat` (
  `id_cocat` int(11) NOT NULL AUTO_INCREMENT,
  `name_cocat` varchar(255) DEFAULT NULL,
  `count_cocat` int(11) DEFAULT '0',
  PRIMARY KEY (`id_cocat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ecc_companycontact_cocontact`
--

DROP TABLE IF EXISTS `ecc_companycontact_cocontact`;
CREATE TABLE IF NOT EXISTS `ecc_companycontact_cocontact` (
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

-- --------------------------------------------------------

--
-- Table structure for table `ecc_companymeta_cometa`
--

DROP TABLE IF EXISTS `ecc_companymeta_cometa`;
CREATE TABLE IF NOT EXISTS `ecc_companymeta_cometa` (
  `id_cometa` int(11) NOT NULL AUTO_INCREMENT,
  `idco_cometa` int(11) NOT NULL,
  `metaKey_cometa` varchar(255) NOT NULL,
  `metaValue_cometa` varchar(255) NOT NULL,
  PRIMARY KEY (`id_cometa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ecc_department_dep`
--

INSERT INTO `ecc_department_dep` (`id_dep`, `name_dep`, `status_dep`, `count_dep`) VALUES
(1, 'Internet Services', '1', 1),
(2, 'Sales', '1', NULL),
(3, 'PreSales', '1', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ecc_employees_emp`
--

INSERT INTO `ecc_employees_emp` (`id_emp`, `email_emp`, `password_emp`, `status_emp`, `regsiteredDate_emp`, `level_emp`, `force_password_emp`, `companyCount_emp`, `callsCount_emp`) VALUES
(1, 'master', '4394af2172185415e647a9a460a33e9c', 1, '2013-01-08', 1, 0, 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ecc_employee_empmeta`
--

INSERT INTO `ecc_employee_empmeta` (`id_empmeta`, `idemp_empmeta`, `metaKey_empmeta`, `metaValue_empmeta`) VALUES
(1, 1, 'first_name', 'Magdy'),
(2, 1, 'last_name', 'Yassin'),
(3, 1, 'position', 'Strategy & Planning Director'),
(4, 1, 'avatar', 'magdy.jpg'),
(5, 1, 'mobile', '01157585858');

-- --------------------------------------------------------

--
-- Table structure for table `ecc_filecallsrelations_fcr`
--

DROP TABLE IF EXISTS `ecc_filecallsrelations_fcr`;
CREATE TABLE IF NOT EXISTS `ecc_filecallsrelations_fcr` (
  `idcall_fcr` int(11) NOT NULL,
  `idfile_fcr` int(11) NOT NULL,
  `idemp_fcr` int(11) DEFAULT NULL,
  `idco_fcr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

INSERT INTO `ecc_managers_man` (`iddep_man`, `idemp_man`) VALUES
(1, 1);

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

INSERT INTO `ecc_mempership_memper` (`iddep_memper`, `idemp_memper`) VALUES
(1, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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

INSERT INTO `ecc_vacancies_vac` (`id_vac`, `title_vac`, `description_vac`, `responsbility_vac`, `requirements_vac`, `working_condition_vac`, `type_vac`, `reported_to_vac`, `active_vac`, `date_vac`, `end_vac`, `experience_vac`, `location_vac`, `vacancies_vac`, `gender_vac`, `rank_vac`) VALUES
(1, 'Managing editor', 'write a content for online journal/ website. Establishes journalistic style of the magazine. supervises writers, freelancers.<p>Manages the scheduling, writing, and editing functions of the magazine. Coordinates with the production team on the layout of the magazine/journal.</p><p>Familiar with a variety of the field''s concepts, practices, and procedures. Relies on experience and judgment to plan and accomplish goals. Performs a variety of tasks. Leads and directs the work of others. A wide degree of creativity and latitude is expected. Typically reports <br></p>', '<ul><li>\nTrack all news related to the website.&nbsp;</li><li>Edit, update and maintain data on back-end system &amp; ensure that outputs achieve the content quality policy. </li><li>Properly formulate and write the news &amp; articles in order to upload it to the website.&nbsp;</li><li>Translate English text to Arabic if needed.</li><li>Writes new content. <br></li><li>Assist the editing team in managing the website accounts on social networks. <br></li><li>Coordinate with technical team in order to create &amp; achieve new ideas</li><li>Has a sense of art in one of the following areas: design or decoration or fashion&nbsp; accessories or any similar fields that need creativity.<br></li></ul>', '<ul><li>Strong knowledge with how to run and manage social media accounts&nbsp;</li><li>Minimal concepts of online marketing and how to create new ideas <br></li><li>Strong knowledge in computer and internet</li><li>MS Word, Excel, PowerPoint</li><li>Experience in research and found information</li><li>Work effectively within a cross-departmental team</li><li>The ability to show creativity in general meetings to express new ideas<br></li><li>Photoshop, illustrator is a plus<br></li></ul>', '<ul><li>Working days: 05 days/week, according to work shifts.</li><li>Days off: two days/week, According to work shifts</li><li>Working Hours: 8 Hrs - from 9 - 5pm</li><li>Working Environment: 5 - 10% out, 90% standard office<br></li></ul>', 'Full time', 'ahmed.saber@eccsolutions.com', 1, '2012-06-24 11:43:01', '2012-07-10 00:00:00', 'Fresh Graduated', 'Dokki', '--', 'Female', 'Junior'),
(2, 'Media Sales Executive ', 'Responsible for handling all direct sales for pro solution in coordination with other team members, the proper candidates will be selling space on online magazines/ journals to direct clients and media agencies', '<ul>\n<li>Identify opportunities to enhance digital services</li>\n<li>Exceeding sales targets</li>\n<li>Develop a service products and seasonal packages</li>\n<li>Develop and establish relationships to gain repeat business</li>\n<li>Assist with conducing research into the social media &amp; internet industry to gain understanding of key clients</li>\n\n</ul>', '<ul>\n<li>Strong Knowledge in how the internet &amp; social media is run</li>\n<li>Proven record in exceeding sales targets</li>\n<li>Experience in working within the online internet industry is essential </li>\n<li>MS Word, Excel &amp; PowerPoint</li>\n<li>Photoshop is a plus</li>\n</ul>', '<ul>\n<li>Working days: 05 days/week, Sun - Th<br></li>\n<li>Days off: two days/week, Saturday, Friday<br></li>\n<li>Working Hours: 8 Hrs - from 9 - 5pm</li>\n<li>Working Environment: 90% out, 10% standard office</li>\n</ul>', 'Full time', 'ahmed.saber@eccsolutions.com', 1, '2012-06-24 13:57:33', '2012-07-10 00:00:00', 'Fresh Graduated', 'Dokki', '--', 'Male', 'Junior'),
(3, 'Marketing Executive', 'working to develop and implement campaigns to increase public awareness for some of our online portals in which we work in.', 'Our philosophy and mentoring programme supports each individual with the coaching, encouragement and opportunity essentials to progressive career growth within the sales and marketing industry.<br>\n<ul>\n<li>self-starters who are goal/detail orientated and have the affinity for working with people.</li>\n<li>Follow up with all execution duties of  Marketing and business plans</li>\n<li>Manage resources to reach goal</li>\n<li>Optimize recources and enhance process flow.</li>\n<li>Follow up on different processes</li>\n<li>Generate Constant Progress Reports .</li>\n</ul>\n', '<ul>\n<li>team players</li>\n<li>creative thinkers</li>\n<li>MS Word, Excel, PowerPoint</li>\n<li>Strong Knowledge in how the internet & social media is run</li>\n<li>Photoshop is a plus</li>\n</ul>', '<ul>\n<li>Working days: 05 days/week, Sun - Th</li>\n<li>Days off: two days/week, Saturday, Friday</li>\n<li>Working Hours: 8 Hrs - from 9 - 5pm</li>\n<li>Working Environment: 20 - 80% out, 20% standard office</li>\n<li></li>\n<li></li>\n</ul>', 'Full time', 'ahmed.saber@eccsolutions.com', 1, '2012-06-24 16:05:12', '2012-07-10 00:00:00', 'Fresh Graduated', 'Dokki', '--', 'Female', 'Junior'),
(4, 'مصححى لغة عربية', 'التدقيق اللغوى هو جزء رئيسى من الاخراج الصحفى المميز، نظراً لأننا نهتم بجودة المحتوى فنحن دائما أمام تحدى كبير فى عرض الاخبار والمقالات بدون أى اخطاء نحوية أو لغوية ', '<ul><li>القيام بأعمال التصحيح للغة العربية</li><li>المسؤولية الكاملة عن عرض محتوى عربى دقيق نحوياً ولغوياً</li><li>القدرة على اختيار عناوين اخبارية دالة عن أصل الخبر وملفتة لنظر القارئ<br></li></ul>', '<ul><li>خبرة في مجال النحو والصرف</li><li>خبرة فى التدقيق اللغوى</li><li>اجادة تامة لاستخدام برامج الحاسب الالى والاوفيس</li><li>لهم سابقة أعمال فى مجال التصحيح اللغوى فى دور النشر او الوكالات الصحفية</li><li>ليسانس كلية الاداب قسم اللغة العربية</li><li>ليسانس اللغة العربية جامعة الازهر</li><li>ليسانس كلية دار العلوم قسم اللغة العربية</li></ul>', '<ul>\n   <li>Working days: 05 days/week, Sun - Th</li>\n   <li>Days off: two days/week, Saturday, Friday</li>\n   <li>Working Hours: 8 Hrs - from 9 - 5pm</li>\n   <li>Working Environment: 100% standard office</li>\n</ul>', 'Full time', 'ahmed.saber@eccsolutions.com', 1, '2012-06-25 09:17:08', '2012-07-10 00:00:00', 'Fresh Graduated', 'Dokki', '--', 'Male', 'Junior'),
(5, 'web developer', 'Working as a part of the team, the successful candidate will be engaged in all stages of website development. The asp.net Web Developer will be involved in structural planning, creative brainstorming as well as HTML Programming, asp.net programming and Database Design among others.', '<ul><li>Handle and develop front and backend for our websites.</li>\n<li>Bring New Idea''s.</li>\n\n</ul>', '<ul>\n<li>Computer Science Graduate or equivalent certificates</li>\n<li>Very good command of the English language – written and spoken</li>\n<li>Courses in web development and equivalents are a plus</li>\n<li>In depth ASP, json, jquery, CSS and (X) HTML knowledge ( JavaScript will be plus).</li>\n<li>Strong database knowledge specifically SQL Server</li>\n<li>Web / Graphical Design skills would be desirable.</li>\n<li>A flexible attitude with proven experience of working in a small team.</li>\n</ul>', '<ul>\n<li>Working days: 05 days/week, Sun - Th</li>\n<li>Days off: two days/week, Saturday, Friday</li>\n<li>Working Hours: 8 Hrs - from 9 - 5pm</li>\n<li>Working Environment: 100% standard office</li>\n</ul>', 'Full time', 'mahmoud.maksoud@eccsolutions.net', 1, '2012-06-25 14:05:19', '2012-07-10 00:00:00', '2 years', 'Dokkie', '--', '', 'Junior');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
