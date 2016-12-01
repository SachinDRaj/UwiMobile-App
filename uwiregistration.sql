-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2016 at 08:18 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uwiregistration`
--
CREATE DATABASE IF NOT EXISTS `uwiregistration` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `uwiregistration`;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
CREATE TABLE `education` (
  `education_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `education_level_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`education_id`, `name`, `education_level_id`) VALUES
(1, 'CSEC', 1),
(2, 'CAPE', 2);

-- --------------------------------------------------------

--
-- Table structure for table `education_level`
--

DROP TABLE IF EXISTS `education_level`;
CREATE TABLE `education_level` (
  `education_level_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education_level`
--

INSERT INTO `education_level` (`education_level_id`, `level`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `requirements_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `name`, `requirements_id`) VALUES
(1, 'Engineering', 41),
(2, 'Food & Agriculture', 43),
(3, 'Humanities & Education', 44),
(4, 'Law', 4),
(5, 'Medical Sciences', 45),
(6, 'Science & Technology', 46),
(7, 'Social Sciences', 47);

-- --------------------------------------------------------

--
-- Table structure for table `programme`
--

DROP TABLE IF EXISTS `programme`;
CREATE TABLE `programme` (
  `programme_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `requirements_id` int(11) DEFAULT NULL,
  `interests` varchar(50) NOT NULL,
  `working_with` varchar(50) NOT NULL,
  `programme_desc` varchar(50) NOT NULL,
  `find_out_more` varchar(50) NOT NULL,
  `careers` varchar(50) NOT NULL,
  `job_titles` varchar(50) NOT NULL,
  `other_requirements` varchar(50) NOT NULL,
  `fulltime` tinyint(1) NOT NULL,
  `parttime` tinyint(1) NOT NULL,
  `evening` tinyint(1) NOT NULL,
  `undergraduate_id` int(11) NOT NULL,
  `programme_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programme`
--

INSERT INTO `programme` (`programme_id`, `faculty_id`, `requirements_id`, `interests`, `working_with`, `programme_desc`, `find_out_more`, `careers`, `job_titles`, `other_requirements`, `fulltime`, `parttime`, `evening`, `undergraduate_id`, `programme_name`) VALUES
(28, 2, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(29, 2, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(30, 2, NULL, '', '', '', '', 'Business, Industry, Government', 'GIS Data Analyst/Developer, Project Manager,\rGeogr', '', 1, 1, 0, 0, ''),
(31, 2, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(32, 3, NULL, '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
(33, 3, NULL, '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
(34, 3, NULL, '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
(35, 3, NULL, '', '', '', '', '', '', 'A Police Certificate of Good Character (not older ', 0, 0, 0, 0, ''),
(36, 3, NULL, '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
(37, 3, NULL, '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
(38, 3, NULL, '', '', '', '', '', '', '', 0, 0, 0, 0, ''),
(39, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(40, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(41, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(42, 3, NULL, '', '', '', '', '', '', 'interview/audition and/or portfolio', 1, 1, 0, 0, ''),
(43, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(44, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(45, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(46, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(47, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(48, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(49, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(50, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(51, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(52, 3, NULL, '', '', '', '', '', '', 'interview/audition and/or portfolio', 1, 1, 0, 0, ''),
(53, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(54, 3, NULL, '', '', '', '', '', '', 'interview/audition and/or portfolio', 1, 1, 0, 0, ''),
(55, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(56, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(57, 3, NULL, '', '', '', '', '', '', 'Evidence of active participation in\rcontinuous pro', 1, 0, 0, 0, ''),
(58, 3, NULL, '', '', '', '', '', '', 'Evidence of active participation in\rcontinuous pro', 0, 1, 0, 0, ''),
(59, 4, NULL, '', '', '', '', '', '', 'Associate degrees with a minimum GPA of 3.5 and ab', 1, 0, 0, 0, ''),
(60, 5, NULL, '', '', '', '', '', '', 'Interview and 18 years or older', 1, 0, 0, 0, ''),
(61, 5, NULL, '', '', '', '', '', '', 'Interview', 1, 0, 0, 0, ''),
(62, 5, NULL, '', '', '', '', '', '', 'Interview', 1, 0, 0, 0, ''),
(63, 5, NULL, '', '', '', '', '', '', 'Interview', 1, 0, 0, 0, ''),
(64, 5, NULL, '', '', '', '', '', '', 'Interview', 1, 0, 0, 0, ''),
(65, 5, NULL, '', '', '', '', '', '', 'Interview', 1, 0, 0, 0, ''),
(66, 5, NULL, '', '', '', '', '', '', 'Interview', 1, 0, 0, 0, ''),
(67, 5, NULL, '', '', '', '', '', '', 'Applicants from Tobago ONLY', 1, 0, 0, 0, ''),
(68, 6, NULL, '', '', '', '', 'Finance & Insurance, Professional Services, Busine', 'Actuary, Consultant/Entrepreneur, Business Manager', '', 1, 1, 0, 0, ''),
(69, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(70, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(71, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(72, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(73, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(74, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(75, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(76, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(77, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(78, 6, NULL, '', '', '', '', 'Biotechnology Firms; Chemical Companies; Academia;', 'Agronomist, Biochemist; Biologist; Consultant;\rMic', '', 1, 1, 0, 0, ''),
(79, 6, NULL, '', '', '', '', 'Laboratories; Chemical Companies; Academia; Teachi', 'Chemist; Laboratory Technician; Science\rTeacher; P', '', 1, 1, 0, 0, ''),
(80, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(81, 6, NULL, '', '', '', '', 'Actuarial Science, Business and Finance, Education', 'Actuary; Statistician; Business Analyst', '', 1, 1, 0, 0, ''),
(82, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(83, 6, NULL, '', '', '', '', 'Pharmaceutical Industry, Food and Drug Industry, D', 'Immunologist, Clinical Research Associate,\rLecture', '', 1, 1, 0, 0, ''),
(84, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(85, 6, NULL, '', '', '', '', 'Laboratories; Chemical Companies; Academia; Teachi', 'Chemist; Laboratory Technician; Science\rTeacher; P', '', 1, 1, 0, 0, ''),
(86, 6, NULL, '', '', '', '', 'Telecommunications; Software Companies; Computer\rS', 'Computer Programmer; Systems Analyst;\rSoftware Eng', '', 1, 1, 0, 0, ''),
(87, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(88, 6, NULL, '', '', '', '', 'Actuarial Science, Business and Finance, Education', 'Actuary; Statistician; Business Analyst', '', 1, 1, 0, 0, ''),
(89, 6, NULL, '', '', '', '', 'Research Laboratories; Academia; Teaching', 'Science Teacher; Physicist; Laboratory\rTechnician', '', 1, 1, 0, 0, ''),
(90, 6, NULL, '', '', '', '', '', '', '', 1, 0, 0, 0, ''),
(91, 7, NULL, '', '', '', '', '', '', '', 0, 0, 1, 0, ''),
(92, 7, NULL, '', '', '', '', '', '', '', 0, 0, 1, 0, ''),
(93, 7, NULL, '', '', '', '', '', '', '', 0, 0, 1, 0, ''),
(94, 7, NULL, '', '', '', '', 'Auditing; Assurance Services; Management Consultin', 'Auditor; Accountant; Financial Analyst; Tax Adviso', '', 1, 1, 0, 0, ''),
(95, 7, NULL, '', '', '', '', '', '', '', 0, 0, 1, 0, ''),
(96, 7, NULL, '', '', '', '', 'Criminal Justice; Law; Health Sciences & Medicine;', 'Counsellor; Consultant; Manager; Social Worker;\rPs', '', 1, 0, 1, 0, ''),
(97, 7, NULL, '', '', '', '', 'Central Banks; Business Management; Academia;\rInte', 'Economist; Business Analyst; Economic Advisor;\rEco', '', 1, 0, 1, 0, ''),
(98, 7, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, ''),
(99, 7, NULL, '', '', '', '', 'Restaurant (Food & Beverage) Management; Hotel\rMan', 'Hospitality Manager; Hotel Manager; Catering Manag', '', 1, 0, 0, 0, ''),
(100, 7, NULL, '', '', '', '', 'Management Consulting; Human Resources; Business\rM', 'Consultant; Entrepreneur; Management Trainee; Bran', '', 1, 0, 0, 0, ''),
(101, 7, NULL, '', '', '', '', '', '', '', 0, 0, 1, 0, ''),
(102, 7, NULL, '', '', '', '', '', '', '', 1, 0, 1, 0, ''),
(103, 7, NULL, '', '', '', '', 'Restaurant (Food & Beverage) Management; Hotel\rMan', '', '', 1, 0, 0, 0, ''),
(104, 7, NULL, '', '', '', '', '', '', '', 1, 0, 1, 0, ''),
(105, 7, NULL, '', '', '', '', 'Management Consulting; Human Resources; Business\rM', 'Consultant; Entrepreneur; Management Trainee; Bran', '', 1, 0, 0, 0, ''),
(106, 7, NULL, '', '', '', '', 'Management Consulting; Human Resources; Business\rM', 'Consultant; Entrepreneur; Management Trainee; Bran', '', 1, 0, 1, 0, ''),
(107, 7, NULL, '', '', '', '', '', '', '', 1, 0, 1, 0, ''),
(108, 7, NULL, '', '', '', '', 'Criminal Justice; Law; Health Sciences & Medicine;', 'Counsellor; Consultant; Manager; Social Worker;\rPs', '', 1, 0, 1, 0, ''),
(109, 7, NULL, '', '', '', '', 'Management Consulting; Human Resources; Business\rM', 'Consultant; Entrepreneur; Management Trainee; Bran', '', 1, 0, 1, 0, ''),
(110, 7, NULL, '', '', '', '', 'Criminal Justice; Law; Health Sciences & Medicine;', 'Counsellor; Consultant; Manager; Social Worker;\rPs', '', 1, 0, 0, 0, ''),
(111, 7, NULL, '', '', '', '', 'Criminal Justice; Law; Health Sciences & Medicine;', 'Counsellor; Consultant; Manager; Social Worker;\rPs', '', 1, 0, 1, 0, ''),
(112, 7, NULL, '', '', '', '', 'Professional Teams and Leagues; Amateur Associatio', 'Sports Information Director; Facilities Manager;\rP', '', 1, 0, 1, 0, ''),
(113, 7, NULL, '', '', '', '', 'Restaurant (Food & Beverage) Management; Hotel\rMan', 'Hospitality Manager; Hotel Manager; Catering Manag', '', 1, 0, 0, 0, ''),
(114, 0, NULL, '', '', '', '', '', '', '', 1, 0, 0, 1, 'Geographic Land Information Systems'),
(115, 0, NULL, '', '', '', '', 'Chemical & Process, Manufacturing, Environmental\rI', 'Process Engineer; Project Engineer\rEnvironmental, ', '', 1, 0, 0, 0, 'Chemical & Process Engineering'),
(116, 0, NULL, '', '', '', '', 'Government; Construction Companies; Engineering an', 'Structural Engineer; Resident Engineer; Site\rEngin', '', 1, 0, 0, 0, 'Civil Engineering'),
(117, 0, NULL, '', '', '', '', 'Government; Construction Companies; Engineering an', 'Structural Engineer; Resident Engineer; Site\rEngin', '', 1, 0, 0, 0, 'Civil with Environmental Engineering'),
(118, 0, NULL, '', '', '', '', 'Computer, Chemical & Process Companies;\rTelecommun', 'Electronics Engineer; Software Engineer;\rElectrica', '', 1, 0, 0, 0, 'Electrical & Computer Engineering'),
(119, 0, NULL, '', '', '', '', 'Chemical Industry; Manufacturing Companies; Public', 'Assembly Line Engineer; Post Market\rCompliance/Sur', '', 1, 0, 0, 0, 'Industrial Engineering'),
(120, 0, NULL, '', '', '', '', 'Manufacturing Companies; Consultancy; Academia; Ch', 'Project Engineer; Mechanical Engineer;\rEngineer; M', '', 1, 0, 0, 0, 'Mechanical Engineering'),
(121, 0, NULL, '', '', '', '', 'Government; Environmental Industries; Agricultural', 'Agricultural Engineer; Food Engineer;\rDrainage & I', '', 1, 0, 0, 0, 'Mechanical Engineering with a Minor in Biosystems'),
(122, 0, NULL, '', '', '', '', 'Oil and Natural Gas industries; Government; Servic', 'Geoscientist; Geologist; Geophysicist;\rGeological ', '', 1, 0, 0, 0, 'Petroleum Geoscience'),
(123, 0, NULL, '', '', '', '', 'Land & Hydrographic Survey Industry; Consultancy;\r', 'Surveyor; Cadastral Surveyor; Hydrographic\rSurveyo', '', 1, 0, 0, 0, 'Geomatics (formerly Surveying & Land Information)'),
(124, 0, NULL, '', '', '', '', '', '', '', 1, 0, 0, 0, 'Land Management (Valuation)'),
(125, 0, NULL, '', '', '', '', '', '', '', 0, 1, 0, 0, 'Electrical Engineering (NEW)'),
(126, 0, NULL, '', '', '', '', '', '', '', 0, 1, 0, 0, 'Mechanical Engineering (NEW)'),
(127, 0, NULL, '', '', '', '', '', '', 'Alternative: NEC/ COSTAAT/UTT/U Tech/BCC (with a 3', 1, 0, 0, 5, 'Pre-Engineering Programme'),
(128, 2, NULL, '', '', '', '', '', '', '', 1, 0, 0, 6, 'Diploma / Internship in Institutional and Community Dietetic'),
(129, 2, NULL, '', '', '', '', '', '', '', 1, 0, 0, 6, 'Undergraduate Diploma in Agriculture (UDA)'),
(130, 2, NULL, '', '', '', '', 'Agribusiness; Wildlife and Fisheries; Ministry of ', 'Agricultural Economist; Agronomist; Farm\rOwner and', '', 1, 1, 0, 0, 'Agribusiness Management '),
(131, 2, NULL, '', '', '', '', 'Agribusiness; Wildlife and Fisheries; Ministry of ', 'Agricultural Economist; Agronomist; Farm\rOwner and', '', 1, 1, 0, 0, 'Agriculture '),
(132, 2, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, 'Human Nutrition & Dietetics '),
(133, 2, NULL, '', '', '', '', 'Child Care; Family Life Education; Private Nutriti', 'Dietitian, Nutritionist, Nutritional\rRepresentativ', '', 1, 1, 0, 0, 'Human Ecology '),
(134, 2, NULL, '', '', '', '', '', '', '', 1, 1, 0, 8, 'Agribusiness '),
(135, 2, NULL, '', '', '', '', '', '', '', 1, 0, 0, 8, 'Agricultural Technology '),
(136, 2, NULL, '', '', '', '', '', '', '', 1, 1, 0, 8, 'Entrepreneurship '),
(137, 2, NULL, '', '', '', '', 'Forestry Science; Recreation, Parks and Tourism Ma', 'Forestry Science; Recreation, Parks and Tourism Ma', '', 1, 1, 0, 8, 'Environmental & Natural Resources Management '),
(138, 2, NULL, '', '', '', '', '', '', '', 1, 1, 0, 8, 'Family and Consumer Sciences '),
(139, 2, NULL, '', '', '', '', '', '', '', 1, 1, 0, 8, 'Food and Food Service Systems Management '),
(140, 2, NULL, '', '', '', '', '', '', '', 1, 1, 0, 8, 'Nutritional Sciences'),
(141, 2, NULL, '', '', '', '', 'Business, Industry, Government', 'GIS Data Analyst/Developer, Project Manager,\rGeogr', '', 1, 1, 0, 8, 'Geography '),
(142, 2, NULL, '', '', '', '', '', '', '', 1, 1, 0, 8, 'Tropical Landscaping '),
(143, 3, NULL, '', '', '', '', '', '', '', 0, 0, 0, 0, 'Art & Science of Coaching'),
(144, 3, NULL, '', '', '', '', '', '', '', 0, 0, 0, 0, 'Dance & Dance Education'),
(145, 3, NULL, '', '', '', '', '', '', '', 0, 0, 0, 0, 'Drama / Theatre in Education'),
(146, 3, NULL, '', '', '', '', '', '', 'A Police Certificate of Good Character (not older ', 0, 0, 0, 0, 'Early Childhood Care & Development (1Year)'),
(147, 3, NULL, '', '', '', '', '', '', '', 0, 0, 0, 0, 'Music'),
(148, 3, NULL, '', '', '', '', '', '', '', 0, 0, 0, 0, 'Technical Theatre Production'),
(149, 3, NULL, '', '', '', '', '', '', '', 0, 0, 0, 0, 'Visual Arts'),
(150, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'African and Asian Studies'),
(151, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Carnival Studies'),
(152, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Communication Studies'),
(153, 3, NULL, '', '', '', '', '', '', 'interview/audition and/or portfolio', 1, 1, 0, 9, 'Dance'),
(154, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'English Language and Literature with Education (ELLE)'),
(155, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Film'),
(156, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'French'),
(157, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Geography'),
(158, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'History'),
(159, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Latin American Studies'),
(160, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Linguistics'),
(161, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Literatures in English'),
(162, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Mathematics'),
(163, 3, NULL, '', '', '', '', '', '', 'interview/audition and/or portfolio', 1, 1, 0, 9, 'Musical Arts (Special) '),
(164, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Spanish'),
(165, 3, NULL, '', '', '', '', '', '', 'interview/audition and/or portfolio', 1, 1, 0, 9, 'Theatre Arts'),
(166, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Theology (in conjunction with the Seminary of St John Vianne'),
(167, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Visual Arts (Special)'),
(168, 3, NULL, '', '', '', '', '', '', 'Evidence of active participation in\rcontinuous pro', 1, 0, 0, 10, 'Primary Education (In-Service)'),
(169, 3, NULL, '', '', '', '', '', '', 'Evidence of active participation in\rcontinuous pro', 0, 1, 0, 10, 'Primary Education (General)'),
(170, 4, NULL, '', '', '', '', '', '', 'Associate degrees with a minimum GPA of 3.5 and ab', 1, 0, 0, 11, 'Law'),
(171, 5, NULL, '', '', '', '', '', '', 'Interview and 18 years or older', 1, 0, 0, 12, 'Medicine & Bachelor of Surgery (MBBS)'),
(172, 5, NULL, '', '', '', '', '', '', 'Interview', 1, 0, 0, 13, 'Dental Surgery (DDS)'),
(173, 5, NULL, '', '', '', '', '', '', 'Interview', 1, 0, 0, 13, 'Veterinary Medicine (DVM)'),
(174, 5, NULL, '', '', '', '', '', '', 'Interview', 1, 0, 0, 0, 'Nursing (Pre-registration)'),
(175, 5, NULL, '', '', '', '', '', '', 'Interview', 1, 0, 0, 0, 'BSc Nursing (BScN Post RN)'),
(176, 5, NULL, '', '', '', '', '', '', 'Interview', 1, 0, 0, 0, 'BSc Optometry'),
(177, 5, NULL, '', '', '', '', '', '', 'Interview', 1, 0, 0, 0, 'BSc Pharmacy'),
(225, 0, NULL, '', '', '', '', '', '', '', 1, 0, 0, 1, 'Geographic Land Information Systems'),
(226, 0, NULL, '', '', '', '', 'Chemical & Process, Manufacturing, Environmental\rI', 'Process Engineer; Project Engineer\rEnvironmental, ', '', 1, 0, 0, 0, 'Chemical & Process Engineering'),
(227, 0, NULL, '', '', '', '', 'Government; Construction Companies; Engineering an', 'Structural Engineer; Resident Engineer; Site\rEngin', '', 1, 0, 0, 0, 'Civil Engineering'),
(228, 0, NULL, '', '', '', '', 'Government; Construction Companies; Engineering an', 'Structural Engineer; Resident Engineer; Site\rEngin', '', 1, 0, 0, 0, 'Civil with Environmental Engineering'),
(229, 0, NULL, '', '', '', '', 'Computer, Chemical & Process Companies;\rTelecommun', 'Electronics Engineer; Software Engineer;\rElectrica', '', 1, 0, 0, 0, 'Electrical & Computer Engineering'),
(230, 0, NULL, '', '', '', '', 'Chemical Industry; Manufacturing Companies; Public', 'Assembly Line Engineer; Post Market\rCompliance/Sur', '', 1, 0, 0, 0, 'Industrial Engineering'),
(231, 0, NULL, '', '', '', '', 'Manufacturing Companies; Consultancy; Academia; Ch', 'Project Engineer; Mechanical Engineer;\rEngineer; M', '', 1, 0, 0, 0, 'Mechanical Engineering'),
(232, 0, NULL, '', '', '', '', 'Government; Environmental Industries; Agricultural', 'Agricultural Engineer; Food Engineer;\rDrainage & I', '', 1, 0, 0, 0, 'Mechanical Engineering with a Minor in Biosystems'),
(233, 0, NULL, '', '', '', '', 'Oil and Natural Gas industries; Government; Servic', 'Geoscientist; Geologist; Geophysicist;\rGeological ', '', 1, 0, 0, 0, 'Petroleum Geoscience'),
(234, 0, NULL, '', '', '', '', 'Land & Hydrographic Survey Industry; Consultancy;\r', 'Surveyor; Cadastral Surveyor; Hydrographic\rSurveyo', '', 1, 0, 0, 0, 'Geomatics (formerly Surveying & Land Information)'),
(235, 0, NULL, '', '', '', '', '', '', '', 1, 0, 0, 0, 'Land Management (Valuation)'),
(236, 0, NULL, '', '', '', '', '', '', '', 0, 1, 0, 0, 'Electrical Engineering (NEW)'),
(237, 0, NULL, '', '', '', '', '', '', '', 0, 1, 0, 0, 'Mechanical Engineering (NEW)'),
(238, 0, NULL, '', '', '', '', '', '', 'Alternative: NEC/ COSTAAT/UTT/U Tech/BCC (with a 3', 1, 0, 0, 5, 'Pre-Engineering Programme'),
(239, 2, NULL, '', '', '', '', '', '', '', 1, 0, 0, 6, 'Diploma / Internship in Institutional and Community Dietetic'),
(240, 2, NULL, '', '', '', '', '', '', '', 1, 0, 0, 6, 'Undergraduate Diploma in Agriculture (UDA)'),
(241, 2, NULL, '', '', '', '', 'Agribusiness; Wildlife and Fisheries; Ministry of ', 'Agricultural Economist; Agronomist; Farm\rOwner and', '', 1, 1, 0, 0, 'Agribusiness Management '),
(242, 2, NULL, '', '', '', '', 'Agribusiness; Wildlife and Fisheries; Ministry of ', 'Agricultural Economist; Agronomist; Farm\rOwner and', '', 1, 1, 0, 0, 'Agriculture '),
(243, 2, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, 'Human Nutrition & Dietetics '),
(244, 2, NULL, '', '', '', '', 'Child Care; Family Life Education; Private Nutriti', 'Dietitian, Nutritionist, Nutritional\rRepresentativ', '', 1, 1, 0, 0, 'Human Ecology '),
(245, 2, NULL, '', '', '', '', '', '', '', 1, 1, 0, 8, 'Agribusiness '),
(246, 2, NULL, '', '', '', '', '', '', '', 1, 0, 0, 8, 'Agricultural Technology '),
(247, 2, NULL, '', '', '', '', '', '', '', 1, 1, 0, 8, 'Entrepreneurship '),
(248, 2, NULL, '', '', '', '', 'Forestry Science; Recreation, Parks and Tourism Ma', 'Forestry Science; Recreation, Parks and Tourism Ma', '', 1, 1, 0, 8, 'Environmental & Natural Resources Management '),
(249, 2, NULL, '', '', '', '', '', '', '', 1, 1, 0, 8, 'Family and Consumer Sciences '),
(250, 2, NULL, '', '', '', '', '', '', '', 1, 1, 0, 8, 'Food and Food Service Systems Management '),
(251, 2, NULL, '', '', '', '', '', '', '', 1, 1, 0, 8, 'Nutritional Sciences'),
(252, 2, NULL, '', '', '', '', 'Business, Industry, Government', 'GIS Data Analyst/Developer, Project Manager,\rGeogr', '', 1, 1, 0, 8, 'Geography '),
(253, 2, NULL, '', '', '', '', '', '', '', 1, 1, 0, 8, 'Tropical Landscaping '),
(254, 3, NULL, '', '', '', '', '', '', '', 0, 0, 0, 0, 'Art & Science of Coaching'),
(255, 3, NULL, '', '', '', '', '', '', '', 0, 0, 0, 0, 'Dance & Dance Education'),
(256, 3, NULL, '', '', '', '', '', '', '', 0, 0, 0, 0, 'Drama / Theatre in Education'),
(257, 3, NULL, '', '', '', '', '', '', 'A Police Certificate of Good Character (not older ', 0, 0, 0, 0, 'Early Childhood Care & Development (1Year)'),
(258, 3, NULL, '', '', '', '', '', '', '', 0, 0, 0, 0, 'Music'),
(259, 3, NULL, '', '', '', '', '', '', '', 0, 0, 0, 0, 'Technical Theatre Production'),
(260, 3, NULL, '', '', '', '', '', '', '', 0, 0, 0, 0, 'Visual Arts'),
(261, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'African and Asian Studies'),
(262, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Carnival Studies'),
(263, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Communication Studies'),
(264, 3, NULL, '', '', '', '', '', '', 'interview/audition and/or portfolio', 1, 1, 0, 9, 'Dance'),
(265, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'English Language and Literature with Education (ELLE)'),
(266, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Film'),
(267, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'French'),
(268, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Geography'),
(269, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'History'),
(270, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Latin American Studies'),
(271, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Linguistics'),
(272, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Literatures in English'),
(273, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Mathematics'),
(274, 3, NULL, '', '', '', '', '', '', 'interview/audition and/or portfolio', 1, 1, 0, 9, 'Musical Arts (Special) '),
(275, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Spanish'),
(276, 3, NULL, '', '', '', '', '', '', 'interview/audition and/or portfolio', 1, 1, 0, 9, 'Theatre Arts'),
(277, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Theology (in conjunction with the Seminary of St John Vianne'),
(278, 3, NULL, '', '', '', '', '', '', '', 1, 1, 0, 9, 'Visual Arts (Special)'),
(279, 3, NULL, '', '', '', '', '', '', 'Evidence of active participation in\rcontinuous pro', 1, 0, 0, 10, 'Primary Education (In-Service)'),
(280, 3, NULL, '', '', '', '', '', '', 'Evidence of active participation in\rcontinuous pro', 0, 1, 0, 10, 'Primary Education (General)'),
(281, 4, NULL, '', '', '', '', '', '', 'Associate degrees with a minimum GPA of 3.5 and ab', 1, 0, 0, 11, 'Law'),
(282, 5, NULL, '', '', '', '', '', '', 'Interview and 18 years or older', 1, 0, 0, 12, 'Medicine & Bachelor of Surgery (MBBS)'),
(283, 5, NULL, '', '', '', '', '', '', 'Interview', 1, 0, 0, 13, 'Dental Surgery (DDS)'),
(284, 5, NULL, '', '', '', '', '', '', 'Interview', 1, 0, 0, 13, 'Veterinary Medicine (DVM)'),
(285, 5, NULL, '', '', '', '', '', '', 'Interview', 1, 0, 0, 0, 'Nursing (Pre-registration)'),
(286, 5, NULL, '', '', '', '', '', '', 'Interview', 1, 0, 0, 0, 'BSc Nursing (BScN Post RN)'),
(287, 5, NULL, '', '', '', '', '', '', 'Interview', 1, 0, 0, 0, 'BSc Optometry'),
(288, 5, NULL, '', '', '', '', '', '', 'Interview', 1, 0, 0, 0, 'BSc Pharmacy'),
(289, 5, NULL, '', '', '', '', '', '', 'Applicants from Tobago ONLY', 1, 0, 0, 5, 'Pre-Health Professions Programme'),
(290, 6, NULL, '', '', '', '', 'Finance & Insurance, Professional Services, Busine', 'Actuary, Consultant/Entrepreneur, Business Manager', '', 1, 1, 0, 0, 'BSc Actuarial Science'),
(291, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, 'BSc Chemistry and Management'),
(292, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, 'BSc Computer Science with Management'),
(293, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, 'BSc Computer Science (Special)'),
(294, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, 'BSc Electronics'),
(295, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, 'BSc Environmental Science'),
(296, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, 'BSc Information Technology (Special)'),
(297, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, 'Environmental Science and Sustainable Technology'),
(298, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, 'Biomedical Technology'),
(299, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, 'BSc Statistics and Economics'),
(300, 6, NULL, '', '', '', '', 'Biotechnology Firms; Chemical Companies; Academia;', 'Agronomist, Biochemist; Biologist; Consultant;\rMic', '', 1, 1, 0, 0, 'BSc Biology'),
(301, 6, NULL, '', '', '', '', 'Laboratories; Chemical Companies; Academia; Teachi', 'Chemist; Laboratory Technician; Science\rTeacher; P', '', 1, 1, 0, 0, 'BSc Chemistry'),
(302, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, 'BSc Information Technology with Management'),
(303, 6, NULL, '', '', '', '', 'Actuarial Science, Business and Finance, Education', 'Actuary; Statistician; Business Analyst', '', 1, 1, 0, 0, 'BSc Mathematics and Applied Statistics'),
(304, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, 'BSc Mathematics'),
(305, 6, NULL, '', '', '', '', 'Pharmaceutical Industry, Food and Drug Industry, D', 'Immunologist, Clinical Research Associate,\rLecture', '', 1, 1, 0, 8, 'Biochemistry (Major)'),
(306, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 8, 'Biology (Major)'),
(307, 6, NULL, '', '', '', '', 'Laboratories; Chemical Companies; Academia; Teachi', 'Chemist; Laboratory Technician; Science\rTeacher; P', '', 1, 1, 0, 8, 'Chemistry (Major)'),
(308, 6, NULL, '', '', '', '', 'Telecommunications; Software Companies; Computer\rS', 'Computer Programmer; Systems Analyst;\rSoftware Eng', '', 1, 1, 0, 8, 'Computer Science (Major)'),
(309, 6, NULL, '', '', '', '', '', '', '', 1, 1, 0, 8, 'Information Technology (Major)'),
(310, 6, NULL, '', '', '', '', 'Actuarial Science, Business and Finance, Education', 'Actuary; Statistician; Business Analyst', '', 1, 1, 0, 8, 'Mathematics (Major)'),
(311, 6, NULL, '', '', '', '', 'Research Laboratories; Academia; Teaching', 'Science Teacher; Physicist; Laboratory\rTechnician', '', 1, 1, 0, 8, 'Physics (Major)'),
(312, 6, NULL, '', '', '', '', '', '', '', 1, 0, 0, 7, 'Pre-Science Programme (N1) (For entry into Science 7 Technol'),
(313, 7, NULL, '', '', '', '', '', '', '', 0, 0, 1, 0, 'Public Administration '),
(314, 7, NULL, '', '', '', '', '', '', '', 0, 0, 1, 0, 'Local Government Studies '),
(315, 7, NULL, '', '', '', '', '', '', '', 0, 0, 1, 6, 'Public Sector Management '),
(316, 7, NULL, '', '', '', '', 'Auditing; Assurance Services; Management Consultin', 'Auditor; Accountant; Financial Analyst; Tax Adviso', '', 1, 1, 0, 0, 'Accounting '),
(317, 7, NULL, '', '', '', '', '', '', '', 0, 0, 1, 0, 'Banking & Finance '),
(318, 7, NULL, '', '', '', '', 'Criminal Justice; Law; Health Sciences & Medicine;', 'Counsellor; Consultant; Manager; Social Worker;\rPs', '', 1, 0, 1, 0, 'Criminology & Criminal Justice '),
(319, 7, NULL, '', '', '', '', 'Central Banks; Business Management; Academia;\rInte', 'Economist; Business Analyst; Economic Advisor;\rEco', '', 1, 0, 1, 0, 'Economics '),
(320, 7, NULL, '', '', '', '', '', '', '', 1, 1, 0, 0, 'Governance and Local Government '),
(321, 7, NULL, '', '', '', '', 'Restaurant (Food & Beverage) Management; Hotel\rMan', 'Hospitality Manager; Hotel Manager; Catering Manag', '', 1, 0, 0, 0, 'Hotel Management Special (First Year Only) '),
(322, 7, NULL, '', '', '', '', 'Management Consulting; Human Resources; Business\rM', 'Consultant; Entrepreneur; Management Trainee; Bran', '', 1, 0, 0, 0, 'Human Resource Management'),
(323, 7, NULL, '', '', '', '', '', '', '', 0, 0, 1, 0, 'Insurance and Risk Management'),
(324, 7, NULL, '', '', '', '', '', '', '', 1, 0, 1, 0, 'International Relations'),
(325, 7, NULL, '', '', '', '', 'Restaurant (Food & Beverage) Management; Hotel\rMan', '', '', 1, 0, 0, 0, 'International Tourism Management '),
(326, 7, NULL, '', '', '', '', '', '', '', 1, 0, 1, 0, 'Leadership & Management '),
(327, 7, NULL, '', '', '', '', 'Management Consulting; Human Resources; Business\rM', 'Consultant; Entrepreneur; Management Trainee; Bran', '', 1, 0, 0, 0, 'Marketing'),
(328, 7, NULL, '', '', '', '', 'Management Consulting; Human Resources; Business\rM', 'Consultant; Entrepreneur; Management Trainee; Bran', '', 1, 0, 1, 0, 'Management Studies '),
(329, 7, NULL, '', '', '', '', '', '', '', 1, 0, 1, 0, 'Political Science (Government) '),
(330, 7, NULL, '', '', '', '', 'Criminal Justice; Law; Health Sciences & Medicine;', 'Counsellor; Consultant; Manager; Social Worker;\rPs', '', 1, 0, 1, 0, 'Psychology '),
(331, 7, NULL, '', '', '', '', 'Management Consulting; Human Resources; Business\rM', 'Consultant; Entrepreneur; Management Trainee; Bran', '', 1, 0, 1, 0, 'Public Sector Management '),
(332, 7, NULL, '', '', '', '', 'Criminal Justice; Law; Health Sciences & Medicine;', 'Counsellor; Consultant; Manager; Social Worker;\rPs', '', 1, 0, 0, 0, 'Social Work'),
(333, 7, NULL, '', '', '', '', 'Criminal Justice; Law; Health Sciences & Medicine;', 'Counsellor; Consultant; Manager; Social Worker;\rPs', '', 1, 0, 1, 0, 'Sociology '),
(334, 7, NULL, '', '', '', '', 'Professional Teams and Leagues; Amateur Associatio', 'Sports Information Director; Facilities Manager;\rP', '', 1, 0, 1, 0, 'Sports Management '),
(335, 7, NULL, '', '', '', '', 'Restaurant (Food & Beverage) Management; Hotel\rMan', 'Hospitality Manager; Hotel Manager; Catering Manag', '', 1, 0, 0, 0, 'Tourism Management Special (First Year Only) ');

-- --------------------------------------------------------

--
-- Table structure for table `qualify_class_req`
--

DROP TABLE IF EXISTS `qualify_class_req`;
CREATE TABLE `qualify_class_req` (
  `qualify_class_req_id` int(11) NOT NULL,
  `subject_class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualify_class_req`
--

INSERT INTO `qualify_class_req` (`qualify_class_req_id`, `subject_class_id`) VALUES
(6, 4),
(7, 4),
(8, 4),
(9, 4);

-- --------------------------------------------------------

--
-- Table structure for table `qualify_sub_req_and`
--

DROP TABLE IF EXISTS `qualify_sub_req_and`;
CREATE TABLE `qualify_sub_req_and` (
  `qualify_sub_req_and_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualify_sub_req_and`
--

INSERT INTO `qualify_sub_req_and` (`qualify_sub_req_and_id`, `subject_id`) VALUES
(94, 5),
(95, 19),
(96, 21),
(97, 19),
(98, 5),
(99, 19),
(100, 5),
(101, 19),
(102, 5),
(103, 5),
(104, 19),
(105, 21),
(106, 24),
(107, 20),
(108, 21),
(109, 20),
(110, 5),
(111, 19),
(112, 5),
(113, 19);

-- --------------------------------------------------------

--
-- Table structure for table `qualify_sub_req_or`
--

DROP TABLE IF EXISTS `qualify_sub_req_or`;
CREATE TABLE `qualify_sub_req_or` (
  `qualify_sub_req_or_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualify_sub_req_or`
--

INSERT INTO `qualify_sub_req_or` (`qualify_sub_req_or_id`, `subject_id`) VALUES
(14, 0),
(15, 21),
(16, 20),
(17, 0),
(18, 21),
(19, 20),
(20, 0),
(21, 21),
(22, 20),
(23, 1),
(24, 24),
(25, 6);

-- --------------------------------------------------------

--
-- Table structure for table `requirements`
--

DROP TABLE IF EXISTS `requirements`;
CREATE TABLE `requirements` (
  `requirements_id` int(11) NOT NULL,
  `level_1_passes_req` int(11) NOT NULL,
  `level_1_sub_req_and_id` int(11) DEFAULT NULL,
  `level_1_sub_req_or_id` int(11) DEFAULT NULL,
  `level_1_class_req_id` int(11) DEFAULT NULL,
  `level_2_passes_req` int(11) NOT NULL,
  `level_2_sub_req_and_id` int(11) DEFAULT NULL,
  `level_2_sub_req_or_id` int(11) DEFAULT NULL,
  `level_2_class_req_id` int(11) DEFAULT NULL,
  `level_1_sub_req_and_n` int(11) NOT NULL,
  `level_1_sub_req_or_n` int(11) NOT NULL,
  `level_1_class_req_n` int(11) NOT NULL,
  `level_2_sub_req_and_n` int(11) NOT NULL,
  `level_2_sub_req_or_n` int(11) NOT NULL,
  `level_2_class_req_n` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requirements`
--

INSERT INTO `requirements` (`requirements_id`, `level_1_passes_req`, `level_1_sub_req_and_id`, `level_1_sub_req_or_id`, `level_1_class_req_id`, `level_2_passes_req`, `level_2_sub_req_and_id`, `level_2_sub_req_or_id`, `level_2_class_req_id`, `level_1_sub_req_and_n`, `level_1_sub_req_or_n`, `level_1_class_req_n`, `level_2_sub_req_and_n`, `level_2_sub_req_or_n`, `level_2_class_req_n`) VALUES
(41, 5, 96, 0, 0, 0, NULL, NULL, NULL, 3, 0, 0, 0, 0, 0),
(42, 5, 99, 17, 0, 0, NULL, NULL, NULL, 3, 2, 0, 0, 0, 0),
(43, 5, 101, 20, 0, 0, NULL, NULL, NULL, 3, 2, 0, 0, 0, 0),
(44, 5, 102, 0, 0, 0, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0),
(45, 5, 107, 0, 0, 0, NULL, NULL, NULL, 5, 0, 0, 0, 0, 0),
(46, 5, 111, 25, 0, 0, NULL, NULL, NULL, 2, 2, 0, 0, 0, 0),
(47, 5, 113, 0, 0, 0, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `subject_class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`, `subject_class_id`) VALUES
(1, 'Agricultural Science', 1),
(2, 'Religious Education', 1),
(3, 'Social Studies', 1),
(4, 'Caribbean History', 1),
(5, 'English', 1),
(6, 'Geography', 1),
(7, 'Modern Languages', 1),
(8, 'Certificate in Business Studies', 2),
(9, 'Economics', 2),
(10, 'Electronic Document Preparation and Management', 2),
(11, 'Home Economics', 2),
(12, 'Industrial Technology', 2),
(13, 'Integrated Science', 2),
(14, 'Office Administration', 2),
(15, 'Physical Education and Sport', 2),
(16, 'Principles of Accounts', 2),
(17, 'Principles of Business', 2),
(18, 'Additional Mathematics', 3),
(19, 'Mathematics', 3),
(20, 'Biology', 4),
(21, 'Chemistry', 4),
(22, 'Human and Social Biology', 4),
(23, 'Information Technology', 4),
(24, 'Physics', 4),
(25, 'Building Technology', 5),
(26, 'Electrical & Electronic Technology', 5),
(27, 'Mechanical Engineering Technology', 5),
(28, 'Music', 5),
(29, 'Technical Drawing', 5),
(30, 'Theatre Arts', 5),
(31, 'Visual Arts', 5),
(32, 'Art and Design', 6),
(33, 'Performing Arts', 6),
(34, 'Food and Nutrition', 6),
(35, 'Literatures in English', 6),
(36, 'Law', 7),
(37, 'Tourism', 7),
(38, 'History', 7),
(39, 'French', 7),
(40, 'Geography', 7),
(41, 'Spanish', 7),
(42, 'Sociology', 7),
(43, 'Accounting', 8),
(44, 'Caribbean Studies', 8),
(45, 'Communication Studies', 8),
(46, 'Digital Media', 8),
(47, 'Economics', 8),
(48, 'Entrepreneurship', 8),
(49, 'Financial Services Studies', 8),
(50, 'Logistics and Supply Chain Operations', 8),
(51, 'Management of Business', 8),
(52, 'Applied Mathematics', 9),
(53, 'Pure Mathematics', 9),
(54, 'Agricultural Science', 10),
(55, 'Physics', 10),
(56, 'Biology', 10),
(57, 'Chemistry', 10),
(58, 'Computer Science', 10),
(59, 'Physical Education and Sport', 10),
(60, 'Electrical and Electronic Engineering Technology', 10),
(61, 'Environmental Science', 10),
(62, 'Green Engineering', 10),
(63, 'Information Technology', 10),
(64, 'Building and Mechanical Engineering Drawing', 11),
(65, 'Integrated Mathematics', 11);

-- --------------------------------------------------------

--
-- Table structure for table `subject_class`
--

DROP TABLE IF EXISTS `subject_class`;
CREATE TABLE `subject_class` (
  `subject_class_id` int(11) NOT NULL,
  `education_id` int(11) NOT NULL,
  `class_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_class`
--

INSERT INTO `subject_class` (`subject_class_id`, `education_id`, `class_name`) VALUES
(1, 1, 'Humanities'),
(2, 1, 'Business and Human Development Studies'),
(3, 1, 'Mathematics'),
(4, 1, 'Science'),
(5, 1, 'Technical Studies and Creative arts'),
(6, 2, 'Arts'),
(7, 2, 'Humanities'),
(8, 2, 'Business and Human Development Studies'),
(9, 2, 'Mathematics'),
(10, 2, 'Science'),
(11, 2, 'Technical Studies and Creative arts');

-- --------------------------------------------------------

--
-- Table structure for table `undergraduate`
--

DROP TABLE IF EXISTS `undergraduate`;
CREATE TABLE `undergraduate` (
  `undergraduate_id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `undergraduate`
--

INSERT INTO `undergraduate` (`undergraduate_id`, `name`) VALUES
(1, 'CERTIFICATE'),
(2, 'BACHELOR OF SCIENCE (BSc ENGINEERING)'),
(3, 'BACHELOR OF SCIENCE (BSc)'),
(4, 'BACHELOR OF TECHNOLOGY'),
(5, 'OTHER (OFFERED THROUGH THE UWI OPEN CAMPUS)'),
(6, 'DIPLOMA '),
(7, 'OTHER (OFFERED THROUGH THE FACULTY OF SCIENCES & TECHNOLOGY)'),
(8, 'BACHELOR OF SCIENCE (BSc) GENERAL'),
(9, 'BACHELOR OF ARTS (BA)'),
(10, 'BACHELOR OF EDUCATION (BEd)'),
(11, 'BACHELOR OF LAWS (LLB)'),
(12, 'BACHELOR OF MEDICINE & BACHELOR OF SURGERY'),
(13, 'DOCTOR OF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`education_id`),
  ADD KEY `education_level_id` (`education_level_id`);

--
-- Indexes for table `education_level`
--
ALTER TABLE `education_level`
  ADD PRIMARY KEY (`education_level_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `programme`
--
ALTER TABLE `programme`
  ADD PRIMARY KEY (`programme_id`),
  ADD KEY `faculty_id` (`faculty_id`),
  ADD KEY `requirements_id` (`requirements_id`),
  ADD KEY `undergraduate_id` (`undergraduate_id`);

--
-- Indexes for table `qualify_class_req`
--
ALTER TABLE `qualify_class_req`
  ADD PRIMARY KEY (`qualify_class_req_id`,`subject_class_id`);

--
-- Indexes for table `qualify_sub_req_and`
--
ALTER TABLE `qualify_sub_req_and`
  ADD PRIMARY KEY (`qualify_sub_req_and_id`,`subject_id`);

--
-- Indexes for table `qualify_sub_req_or`
--
ALTER TABLE `qualify_sub_req_or`
  ADD PRIMARY KEY (`qualify_sub_req_or_id`,`subject_id`);

--
-- Indexes for table `requirements`
--
ALTER TABLE `requirements`
  ADD PRIMARY KEY (`requirements_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `subject_class_id` (`subject_class_id`);

--
-- Indexes for table `subject_class`
--
ALTER TABLE `subject_class`
  ADD PRIMARY KEY (`subject_class_id`),
  ADD KEY `education_id` (`education_id`);

--
-- Indexes for table `undergraduate`
--
ALTER TABLE `undergraduate`
  ADD PRIMARY KEY (`undergraduate_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `education_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `education_level`
--
ALTER TABLE `education_level`
  MODIFY `education_level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `programme`
--
ALTER TABLE `programme`
  MODIFY `programme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;
--
-- AUTO_INCREMENT for table `qualify_class_req`
--
ALTER TABLE `qualify_class_req`
  MODIFY `qualify_class_req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `qualify_sub_req_and`
--
ALTER TABLE `qualify_sub_req_and`
  MODIFY `qualify_sub_req_and_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `qualify_sub_req_or`
--
ALTER TABLE `qualify_sub_req_or`
  MODIFY `qualify_sub_req_or_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `requirements`
--
ALTER TABLE `requirements`
  MODIFY `requirements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `subject_class`
--
ALTER TABLE `subject_class`
  MODIFY `subject_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `undergraduate`
--
ALTER TABLE `undergraduate`
  MODIFY `undergraduate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
