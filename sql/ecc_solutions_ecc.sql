-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 25, 2012 at 03:13 PM
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
  `have_interview_app` int(1) NOT NULL,
  `accepted_app` int(1) NOT NULL,
  PRIMARY KEY (`id_app`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ecc_applicant_app`
--

INSERT INTO `ecc_applicant_app` (`id_app`, `idvac_app`, `name_app`, `email_app`, `cv_app`, `date_app`, `have_interview_app`, `accepted_app`) VALUES
(1, 2, 'mohamed abdelnaby', 'ahmedsaber111@gmail.com', 'mohamed_abdelnaby_{Media_Sales_Executive_}_2012-06-24_08:41:38_pm.pdf', '2012-06-24 08:41:38', 0, 0);

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
(5, 'web developer', 'Working as a part of the team, the successful candidate will be engaged in all stages of website development. The asp.net Web Developer will be involved in structural planning, creative brainstorming as well as HTML Programming, asp.net programming and Database Design among others.', '<ul><li>Handle and develop front and backend for our websites.</li>\n<li>Bring New Idea''s.</li>\n\n</ul>', '<ul>\n<li>Computer Science Graduate or equivalent certificates</li>\n<li>Very good command of the English language – written and spoken</li>\n<li>Courses in web development and equivalents are a plus</li>\n<li>In depth ASP, json, jquery, CSS and (X) HTML knowledge ( JavaScript will be plus).</li>\n<li>Strong database knowledge specifically SQL Server</li>\n<li>Web / Graphical Design skills would be desirable.</li>\n<li>A flexible attitude with proven experience of working in a small team.</li>\n</ul>', '<ul>\n<li>Working days: 05 days/week, Sun - Th</li>\n<li>Days off: two days/week, Saturday, Friday</li>\n<li>Working Hours: 8 Hrs - from 9 - 5pm</li>\n<li>Working Environment: 100% standard office</li>\n</ul>', 'Full time', 'mahmoud.maksoud@eccsolutions.net', 1, '2012-06-25 14:05:19', '2012-07-10 00:00:00', '2 years', 'Dokkie', '--', '', 'Senior');
