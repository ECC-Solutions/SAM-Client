-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 09, 2013 at 06:48 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `ecc_accounts_acc`
--

INSERT INTO `ecc_accounts_acc` VALUES(3, 2, 1, '2013-01-09', 'active');
INSERT INTO `ecc_accounts_acc` VALUES(8, 2, 10, '2013-01-09', 'active');
INSERT INTO `ecc_accounts_acc` VALUES(12, 4, 1, '2013-01-09', 'active');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

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
INSERT INTO `ecc_calls_call` VALUES(10, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(11, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(12, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(13, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(14, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(15, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(16, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(17, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(18, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(19, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(20, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(21, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(22, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(23, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(24, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(25, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(26, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(27, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(28, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(29, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(30, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(31, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(32, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(33, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(34, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(35, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(36, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(37, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(38, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(39, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(40, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(41, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(42, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(43, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(44, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(45, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(46, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ecc_calls_call` VALUES(47, 0, 0, 'draft', NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ecc_call_cmeta`
--

INSERT INTO `ecc_call_cmeta` VALUES(1, 26, 'contact', '3', NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ecc_companyContact_cocontact`
--

INSERT INTO `ecc_companyContact_cocontact` VALUES(1, 2, 'Maichal Ibrahim', 'm.ibrahim', '0238985890', '01060634154', '', 'Purchase Manager', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(2, 2, 'Mostafa', 'Sayed', '', '0122768324', '', 'IT Manager', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(3, 1, 'Mostafa', 'mostafa.i@unb.ae', '01060634154', '', '', 'Purchase Manager', '');
INSERT INTO `ecc_companyContact_cocontact` VALUES(4, 10, 'Mohab Omar', 'mohab.omar@gmail.com', '0111675909', '', '', 'CFO', '');

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
INSERT INTO `ecc_companyMeta_cometa` VALUES(4, 1, 'address', 'Abu Dhabi');
INSERT INTO `ecc_companyMeta_cometa` VALUES(5, 1, 'website', '');
INSERT INTO `ecc_companyMeta_cometa` VALUES(6, 1, 'logo', 'UNB.gif');
INSERT INTO `ecc_companyMeta_cometa` VALUES(7, 10, 'address', 'cairo Down Town');
INSERT INTO `ecc_companyMeta_cometa` VALUES(8, 10, 'website', '');
INSERT INTO `ecc_companyMeta_cometa` VALUES(9, 10, 'logo', 'Banque_du_Caire.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ecc_companyType_cotype`
--

DROP TABLE IF EXISTS `ecc_companyType_cotype`;
CREATE TABLE IF NOT EXISTS `ecc_companyType_cotype` (
  `id_cotype` int(11) NOT NULL AUTO_INCREMENT,
  `name_cotype` varchar(255) NOT NULL,
  `count_cotype` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_cotype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecc_companyType_cotype`
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `ecc_company_co`
--

INSERT INTO `ecc_company_co` VALUES(1, 1, 'UNB', 'active', 2);
INSERT INTO `ecc_company_co` VALUES(10, 1, 'Banque du Caire', 'active', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ecc_department_dep`
--

INSERT INTO `ecc_department_dep` VALUES(1, 'internet services', '1', 6);
INSERT INTO `ecc_department_dep` VALUES(2, 'sales', '1', 2);
INSERT INTO `ecc_department_dep` VALUES(3, 'pre sales', '1', 0);
INSERT INTO `ecc_department_dep` VALUES(4, 'marketing', '1', 0);
INSERT INTO `ecc_department_dep` VALUES(5, 'operation', '1', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ecc_employees_emp`
--

INSERT INTO `ecc_employees_emp` VALUES(1, 'master', '4394af2172185415e647a9a460a33e9c', 1, '2013-01-08', 1, 0, 0, 0);
INSERT INTO `ecc_employees_emp` VALUES(2, 'ahmed.saber@eccsolutions.net', 'e10adc3949ba59abbe56e057f20f883e', 1, '2013-01-08', 3, 0, 2, 0);
INSERT INTO `ecc_employees_emp` VALUES(3, 'Mahmoud.hany@eccsolutions.net', '60021aefe045ca75542e4510b18c8252', 0, '2013-01-08', 3, 1, 0, 0);
INSERT INTO `ecc_employees_emp` VALUES(4, 'mohamed.khalifa@eccsolutions.net', 'e10adc3949ba59abbe56e057f20f883e', 1, '2013-01-08', 3, 0, 1, 0);
INSERT INTO `ecc_employees_emp` VALUES(5, 'riham.wahid@eccsolutions.net', '60021aefe045ca75542e4510b18c8252', 0, '2013-01-08', 3, 1, 0, 0);
INSERT INTO `ecc_employees_emp` VALUES(6, 'alaa.elfeky@eccsolutions.net', '60021aefe045ca75542e4510b18c8252', 0, '2013-01-08', 3, 1, 0, 0);
INSERT INTO `ecc_employees_emp` VALUES(7, 'mohamed.khaiary@eccsolutions.net', 'e10adc3949ba59abbe56e057f20f883e', 1, '2013-01-08', 3, 0, 0, 0);
INSERT INTO `ecc_employees_emp` VALUES(8, 'ahmed.fawzy@eccsolutions.net', '60021aefe045ca75542e4510b18c8252', 0, '2013-01-09', 3, 1, 0, 0);
INSERT INTO `ecc_employees_emp` VALUES(9, 'hesham.mohamed@eccsolutions.net', '60021aefe045ca75542e4510b18c8252', 0, '2013-01-09', 3, 1, 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `ecc_employee_empmeta`
--

INSERT INTO `ecc_employee_empmeta` VALUES(1, 1, 'first_name', 'Magdy');
INSERT INTO `ecc_employee_empmeta` VALUES(2, 1, 'last_name', 'Yassin');
INSERT INTO `ecc_employee_empmeta` VALUES(3, 1, 'position', 'Strategy & Planning Director');
INSERT INTO `ecc_employee_empmeta` VALUES(4, 1, 'avatar', 'magdy.jpg');
INSERT INTO `ecc_employee_empmeta` VALUES(5, 1, 'mobile', '01157585858');
INSERT INTO `ecc_employee_empmeta` VALUES(6, 2, 'first_name', 'Ahmed');
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
INSERT INTO `ecc_employee_empmeta` VALUES(31, 7, 'first_name', 'Mohamed');
INSERT INTO `ecc_employee_empmeta` VALUES(32, 7, 'last_name', 'Khaiary');
INSERT INTO `ecc_employee_empmeta` VALUES(33, 7, 'avatar', 'Mohamed_Khaiary.jpg');
INSERT INTO `ecc_employee_empmeta` VALUES(34, 7, 'position', 'Sales Director');
INSERT INTO `ecc_employee_empmeta` VALUES(35, 7, 'mobile', '01001677878');
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
INSERT INTO `ecc_files_file` VALUES(2, 'Operating Systems Technology', 'Operating_Systems_Technology.docx', '2013-01-09 10:38:45', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '17.06', 'a');
INSERT INTO `ecc_files_file` VALUES(3, 'Microsoft Exchange Technology', 'Microsoft_Exchange_Technology.doc', '2013-01-09 10:39:27', 'application/msword', '46', 'a');
INSERT INTO `ecc_files_file` VALUES(4, 'Microsoft Database Technology', 'Microsoft_Database_Technology1.docx', '2013-01-09 10:39:59', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '17.39', 'a');

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

INSERT INTO `ecc_products_prod` VALUES(1, 'Managed Dedicated Servers', '');
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

INSERT INTO `ecc_product_prodmeta` VALUES(1, 1, 'description', ' Get the satisfaction of fully managed solution tailor made to fit your business. Choose from a variety of platforms and services to manage your Business..\n\nECC’s dedicated server options provide solutions for business with needs that range from entry-lev');
INSERT INTO `ecc_product_prodmeta` VALUES(2, 2, 'description', '“VPS hosting provides you the flexibility to optimize your resources to grow with your needs; allowing you to keep your server size and online requirements aligned, instead of paying for server Resources you aren''t using” ');
INSERT INTO `ecc_product_prodmeta` VALUES(3, 3, 'description', '\n\nECC’s Messaging Service offers a fully managed corporate e-Mail solution for businesses requiring 24x7 mission-critical and secure electronic mail capabilities.\n\nECC makes this possible by integrating high quality, highly reliable hardware, industry lea');
INSERT INTO `ecc_product_prodmeta` VALUES(4, 4, 'description', 'Our Data Centre protects your critical information and applications with the latest technology, including redundant UPS’s, reserve bandwidth and back-up generators and a world class high-speed redundant network. Co-location provides privately owned server');
