-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2016 at 06:03 AM
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
(1, 'Engineering', 1),
(2, 'Food & Agriculture', 3),
(3, 'Humanities & Education', 4),
(4, 'Law', 4),
(5, 'Medical Sciences', 5),
(6, 'Science & Technology', 6),
(7, 'Social Sciences', 7);

-- --------------------------------------------------------

--
-- Table structure for table `programme`
--

DROP TABLE IF EXISTS `programme`;
CREATE TABLE `programme` (
  `programme_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `requirements_id` int(11) NOT NULL,
  `undergraduate_id` int(11) NOT NULL,
  `programme_name` varchar(80) NOT NULL,
  `interests` varchar(80) NOT NULL,
  `working_with` varchar(80) NOT NULL,
  `programme_desc` varchar(80) NOT NULL,
  `find_out_more` varchar(80) NOT NULL,
  `careers` varchar(80) NOT NULL,
  `job_titles` varchar(80) NOT NULL,
  `other_requirements` varchar(80) NOT NULL,
  `fulltime` tinyint(1) NOT NULL,
  `parttime` tinyint(1) NOT NULL,
  `evening` tinyint(1) NOT NULL,
  `education1` varchar(150) NOT NULL,
  `education2` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programme`
--

INSERT INTO `programme` (`programme_id`, `faculty_id`, `requirements_id`, `undergraduate_id`, `programme_name`, `interests`, `working_with`, `programme_desc`, `find_out_more`, `careers`, `job_titles`, `other_requirements`, `fulltime`, `parttime`, `evening`, `education1`, `education2`) VALUES
(1, 1, 0, 1, 'Geographic Land Information Systems', '', '', '', '', '', '', '', 1, 0, 0, '5 passes including English Language, Mathematics and Chemistry.', '2 passes Mathematics AND EITHER Physics/Chemistry '),
(2, 1, 0, 2, 'Chemical & Process Engineering', '', '', '', '', 'Chemical & Process, Manufacturing, Environmental\rIndustries; Petroleum, Food Pro', 'Process Engineer; Project Engineer\rEnvironmental, Health & Safety Consul', '', 1, 0, 0, '5 passes including English Language, Mathematics and Chemistry.', '3 passes Chemistry, Mathematics and Physics '),
(3, 1, 0, 2, 'Civil Engineering', '', '', '', '', 'Government; Construction Companies; Engineering and\rArchitectural Firms; Public ', 'Structural Engineer; Resident Engineer; Site\rEngineer; Highway Engineer', '', 1, 0, 0, '5 passes including English Language, Mathematics and Chemistry.', '2 passes Mathematics AND EITHER Physics/Chemistry '),
(4, 1, 0, 2, 'Civil with Environmental Engineering', '', '', '', '', 'Government; Construction Companies; Engineering and\rArchitectural Firms; Public ', 'Structural Engineer; Resident Engineer; Site\rEngineer; Highway Engineer', '', 1, 0, 0, '5 passes including English Language, Mathematics and Chemistry.', '2 passes Mathematics AND EITHER Physics/Chemistry '),
(5, 1, 0, 2, 'Electrical & Computer Engineering', '', '', '', '', 'Computer, Chemical & Process Companies;\rTelecommunications Industries; Energy Se', 'Electronics Engineer; Software Engineer;\rElectrical & Instrumentation Engineer;\r', '', 1, 0, 0, '5 passes including English Language, Mathematics and Chemistry.', '2 passes Mathematics AND EITHER Physics/Chemistry '),
(6, 1, 0, 2, 'Industrial Engineering', '', '', '', '', 'Chemical Industry; Manufacturing Companies; Public Utility\rCompanies; Business M', 'Assembly Line Engineer; Post Market\rCompliance/Surveillance Manager', '', 1, 0, 0, '5 passes including English Language, Mathematics and Chemistry.', '2 passes Mathematics AND EITHER Physics/Chemistry '),
(7, 1, 0, 2, 'Mechanical Engineering', '', '', '', '', 'Manufacturing Companies; Consultancy; Academia; Chemical\r& Process industries; A', 'Project Engineer; Mechanical Engineer;\rEngineer; Management Trainee/Engineer;\rCo', '', 1, 0, 0, '5 passes including English Language, Mathematics and Chemistry.', '2 passes Mathematics AND EITHER Physics/Chemistry '),
(8, 1, 0, 2, 'Mechanical Engineering with a Minor in Biosystems', '', '', '', '', 'Government; Environmental Industries; Agricultural/ Process\rIndustries; Academia', 'Agricultural Engineer; Food Engineer;\rDrainage & Irrigation Engineer; Environmen', '', 1, 0, 0, '5 passes including English Language, Mathematics and Chemistry.', '2 passes Mathematics AND EITHER Physics/Chemistry '),
(9, 1, 0, 3, 'Petroleum Geoscience', '', '', '', '', 'Oil and Natural Gas industries; Government; Service\rCompanies To The Hydrocarbon', 'Geoscientist; Geologist; Geophysicist;\rGeological Engineer; Environmental; Healt', '', 1, 0, 0, '5 passes including English Language, Mathematics and Chemistry.', '2 passes Mathematics AND EITHER Physics/Chemistry '),
(10, 1, 0, 3, 'Geomatics (formerly Surveying & Land Information)', '', '', '', '', 'Land & Hydrographic Survey Industry; Consultancy;\rGeospatial Data Acquisition; M', 'Surveyor; Cadastral Surveyor; Hydrographic\rSurveyor; Land Surveyor with speciali', '', 1, 0, 0, '5 passes including English Language, Mathematics and Chemistry.', '2 passes Mathematics AND EITHER Physics/Chemistry '),
(11, 1, 0, 3, 'Land Management (Valuation)', '', '', '', '', '', '', '', 1, 0, 0, '5 passes including English Language, Mathematics and Chemistry.', '2 passes Mathematics AND EITHER Physics/Chemistry '),
(12, 1, 0, 4, 'Electrical Engineering (NEW)', '', '', '', '', '', '', '', 0, 1, 0, '5 passes including English Language, Mathematics and Chemistry.', '2 passes Mathematics AND EITHER Physics/Chemistry '),
(13, 1, 0, 4, 'Mechanical Engineering (NEW)', '', '', '', '', '', '', '', 0, 1, 0, '5 passes including English Language, Mathematics and Chemistry.', '2 passes Mathematics AND EITHER Physics/Chemistry '),
(14, 1, 0, 5, 'Pre-Engineering Programme', '', '', '', '', '', '', 'Alternative NEC/ COSTAAT/UTT/U Tech/BCC (with a 3.4 GPA)', 1, 0, 0, '', '2 passes in Mathematics, Physics/Chemistry. (CSEC In Chemistry)'),
(15, 2, 0, 6, 'Diploma / Internship in Institutional and Community Dietetics & Nutrition', '', '', '', '', '', '', '', 1, 0, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', ''),
(16, 2, 0, 6, 'Undergraduate Diploma in Agriculture (UDA)', '', '', '', '', '', '', '', 1, 0, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', ''),
(17, 2, 0, 3, 'Agribusiness Management ', '', '', '', '', 'Agribusiness; Wildlife and Fisheries; Ministry of Agriculture;\rAgricultural Deve', 'Agricultural Economist; Agronomist; Farm\rOwner and Manager; Forestry Specialist;', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(18, 2, 0, 3, 'Agriculture ', '', '', '', '', 'Agribusiness; Wildlife and Fisheries; Ministry of Agriculture;\rAgricultural Deve', 'Agricultural Economist; Agronomist; Farm\rOwner and Manager; Forestry Specialist;', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(19, 2, 0, 3, 'Human Nutrition & Dietetics ', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(20, 2, 0, 3, 'Human Ecology ', '', '', '', '', 'Child Care; Family Life Education; Private Nutrition\rConsultancy; Institutional ', 'Dietitian, Nutritionist, Nutritional\rRepresentatives for companies e.g. Ross,\rCo', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(21, 2, 0, 8, 'Agribusiness ', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(22, 2, 0, 8, 'Agricultural Technology ', '', '', '', '', '', '', '', 1, 0, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(23, 2, 0, 8, 'Entrepreneurship ', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(24, 2, 0, 8, 'Environmental & Natural Resources Management ', '', '', '', '', 'Forestry Science; Recreation, Parks and Tourism Management;\rEnvironmental Protec', 'Forestry Science; Recreation, Parks and Tourism Management;\rEnvironmental Protec', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(25, 2, 0, 8, 'Family and Consumer Sciences ', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(26, 2, 0, 8, 'Food and Food Service Systems Management ', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(27, 2, 0, 8, 'Nutritional Sciences', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(28, 2, 0, 8, 'Geography ', '', '', '', '', 'Business, Industry, Government', 'GIS Data Analyst/Developer, Project Manager,\rGeographer, GIS Specialist', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(29, 2, 0, 8, 'Tropical Landscaping ', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(30, 3, 0, 0, 'Art & Science of Coaching', '', '', '', '', '', '', '', 0, 0, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', ''),
(31, 3, 0, 0, 'Dance & Dance Education', '', '', '', '', '', '', '', 0, 0, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', ''),
(32, 3, 0, 0, 'Drama / Theatre in Education', '', '', '', '', '', '', '', 0, 0, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', ''),
(33, 3, 0, 0, 'Early Childhood Care & Development (1Year)', '', '', '', '', '', '', 'A Police Certificate of Good Character (not older than 3 months).', 0, 0, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', ''),
(34, 3, 0, 0, 'Music', '', '', '', '', '', '', '', 0, 0, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', ''),
(35, 3, 0, 0, 'Technical Theatre Production', '', '', '', '', '', '', '', 0, 0, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', ''),
(36, 3, 0, 0, 'Visual Arts', '', '', '', '', '', '', '', 0, 0, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', ''),
(37, 3, 0, 9, 'African and Asian Studies', '', '', '', '', '', '', '', 1, 1, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', '2 passes including at least one Humanities subject or approved equivalent qualifications.'),
(38, 3, 0, 9, 'Carnival Studies', '', '', '', '', '', '', '', 1, 1, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', '2 passes including at least one Humanities subject or approved equivalent qualifications.'),
(39, 3, 0, 9, 'Communication Studies', '', '', '', '', '', '', '', 1, 1, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', '2 passes including at least one Humanities subject or approved equivalent qualifications.'),
(40, 3, 0, 9, 'Dance', '', '', '', '', '', '', 'interview/audition and/or portfolio', 1, 1, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', '2 passes including at least one Humanities subject or approved equivalent qualifications.'),
(41, 3, 0, 9, 'English Language and Literature with Education (ELLE)', '', '', '', '', '', '', '', 1, 1, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', '2 passes including at least one Humanities subject or approved equivalent qualifications.'),
(42, 3, 0, 9, 'Film', '', '', '', '', '', '', '', 1, 1, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', '2 passes including at least one Humanities subject or approved equivalent qualifications.'),
(43, 3, 0, 9, 'French', '', '', '', '', '', '', '', 1, 1, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', '2 passes including at least one Humanities subject or approved equivalent qualifications.'),
(44, 3, 0, 9, 'Geography', '', '', '', '', '', '', '', 1, 1, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', '2 passes including at least one Humanities subject or approved equivalent qualifications.'),
(45, 3, 0, 9, 'History', '', '', '', '', '', '', '', 1, 1, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', '2 passes including at least one Humanities subject or approved equivalent qualifications.'),
(46, 3, 0, 9, 'Latin American Studies', '', '', '', '', '', '', '', 1, 1, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', '2 passes including at least one Humanities subject or approved equivalent qualifications.'),
(47, 3, 0, 9, 'Linguistics', '', '', '', '', '', '', '', 1, 1, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', '2 passes including at least one Humanities subject or approved equivalent qualifications.'),
(48, 3, 0, 9, 'Literatures in English', '', '', '', '', '', '', '', 1, 1, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', '2 passes including at least one Humanities subject or approved equivalent qualifications.'),
(49, 3, 0, 9, 'Mathematics', '', '', '', '', '', '', '', 1, 1, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', '2 passes including at least one Humanities subject or approved equivalent qualifications.'),
(50, 3, 0, 9, 'Musical Arts (Special) ', '', '', '', '', '', '', 'interview/audition and/or portfolio', 1, 1, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', '2 passes including at least one Humanities subject or approved equivalent qualifications.'),
(51, 3, 0, 9, 'Spanish', '', '', '', '', '', '', '', 1, 1, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', '2 passes including at least one Humanities subject or approved equivalent qualifications.'),
(52, 3, 0, 9, 'Theatre Arts', '', '', '', '', '', '', 'interview/audition and/or portfolio', 1, 1, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', '2 passes including at least one Humanities subject or approved equivalent qualifications.'),
(53, 3, 0, 9, 'Theology (in conjunction with the Seminary of St John Vianney and the Uganda Mar', '', '', '', '', '', '', '', 1, 1, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', '2 passes including at least one Humanities subject or approved equivalent qualifications.'),
(54, 3, 0, 9, 'Visual Arts (Special)', '', '', '', '', '', '', '', 1, 1, 0, 'Any 5 passes including English Language or approved equivalent qualifications.', '2 passes including at least one Humanities subject or approved equivalent qualifications.'),
(55, 3, 0, 10, 'Primary Education (In-Service)', '', '', '', '', '', '', 'Evidence of active participation in\rcontinuous professional development courses.', 1, 0, 0, 'Any 5 passes including English Language and Mathematics', '2 passes including at least one Humanities subject or approved equivalent qualifications.'),
(56, 3, 0, 10, 'Primary Education (General)', '', '', '', '', '', '', 'Evidence of active participation in\rcontinuous professional development courses.', 0, 1, 0, 'Any 5 passes including English Language and Mathematics', '2 passes including at least one Humanities subject or approved equivalent qualifications.'),
(57, 4, 0, 11, 'Law', '', '', '', '', '', '', 'Associate degrees with a minimum GPA of 3.5 and above', 1, 0, 0, 'Any 5 passes including English Language & Mathematics.', '3 passes any combination of  subjects or approved equivalent qualifications.'),
(58, 5, 0, 12, 'Medicine & Bachelor of Surgery (MBBS)', '', '', '', '', '', '', 'Interview and 18 years or older', 1, 0, 0, '5 passes including English Language, Mathematics, Chemistry, Physics, Biology or approved equivalent qualifications.', '3 passes Chemistry, Biology and any other subject or approved equivalent'),
(59, 5, 0, 13, 'Dental Surgery (DDS)', '', '', '', '', '', '', 'Interview', 1, 0, 0, '5 passes including English Language, Mathematics, Chemistry, Physics, Biology or approved equivalent qualifications.', '3 passes Chemistry, Biology and any other subject or approved equivalent'),
(60, 5, 0, 13, 'Veterinary Medicine (DVM)', '', '', '', '', '', '', 'Interview', 1, 0, 0, '5 passes including English Language, Mathematics, Chemistry, Physics, Biology or approved equivalent qualifications.', '3 passes Chemistry, Biology and any other subject or approved equivalent'),
(61, 5, 0, 3, 'Nursing (Pre-registration)', '', '', '', '', '', '', 'Interview', 1, 0, 0, '5 passes including English Language, Mathematics, Chemistry, Physics, Biology or approved equivalent qualifications.', '3 passes Chemistry, Biology and any other subject or approved equivalent'),
(62, 5, 0, 3, 'BSc Nursing (BScN Post RN)', '', '', '', '', '', '', 'Interview', 1, 0, 0, '5 passes including English Language, Mathematics, Chemistry, Physics, Biology or approved equivalent qualifications.', '3 passes Chemistry, Biology and any other subject or approved equivalent'),
(63, 5, 0, 3, 'BSc Optometry', '', '', '', '', '', '', 'Interview', 1, 0, 0, '5 passes including English Language, Mathematics, Chemistry, Physics, Biology or approved equivalent qualifications.', '3 passes Chemistry, Biology and any other subject or approved equivalent'),
(64, 5, 0, 3, 'BSc Pharmacy', '', '', '', '', '', '', 'Interview', 1, 0, 0, '5 passes including English Language, Mathematics, Chemistry, Physics, Biology or approved equivalent qualifications.', '3 passes Chemistry, Biology and any other subject or approved equivalent'),
(65, 5, 0, 5, 'Pre-Health Professions Programme', '', '', '', '', '', '', 'Applicants from Tobago ONLY', 1, 0, 0, '5 passes including English Language, Mathematics, Chemistry, Physics, Biology or approved equivalent qualifications.', ''),
(66, 6, 0, 3, 'BSc Actuarial Science', '', '', '', '', 'Finance & Insurance, Professional Services, Business Management, Government', 'Actuary, Consultant/Entrepreneur, Business Manager', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(67, 6, 0, 3, 'BSc Chemistry and Management', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(68, 6, 0, 3, 'BSc Computer Science with Management', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(69, 6, 0, 3, 'BSc Computer Science (Special)', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(70, 6, 0, 3, 'BSc Electronics', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(71, 6, 0, 3, 'BSc Environmental Science', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(72, 6, 0, 3, 'BSc Information Technology (Special)', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(73, 6, 0, 3, 'Environmental Science and Sustainable Technology', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(74, 6, 0, 3, 'Biomedical Technology', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(75, 6, 0, 3, 'BSc Statistics and Economics', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(76, 6, 0, 3, 'BSc Biology', '', '', '', '', 'Biotechnology Firms; Chemical Companies; Academia;\rEnvironmental Consultancy; Fo', 'Agronomist, Biochemist; Biologist; Consultant;\rMicrobiologist; Pathologist; Wild', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(77, 6, 0, 3, 'BSc Chemistry', '', '', '', '', 'Laboratories; Chemical Companies; Academia; Teaching;\rPharmaceutical Industry', 'Chemist; Laboratory Technician; Science\rTeacher; Pharmaceutical Sales Representa', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(78, 6, 0, 3, 'BSc Information Technology with Management', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(79, 6, 0, 3, 'BSc Mathematics and Applied Statistics', '', '', '', '', 'Actuarial Science, Business and Finance, Education,\rEngineering, Statistics', 'Actuary; Statistician; Business Analyst', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(80, 6, 0, 3, 'BSc Mathematics', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(81, 6, 0, 8, 'Biochemistry (Major)', '', '', '', '', 'Pharmaceutical Industry, Food and Drug Industry, Dietetics,\rBiotechnology Firms,', 'Immunologist, Clinical Research Associate,\rLecturer, Technician, Dietician, Deve', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(82, 6, 0, 8, 'Biology (Major)', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(83, 6, 0, 8, 'Chemistry (Major)', '', '', '', '', 'Laboratories; Chemical Companies; Academia; Teaching;\rPharmaceutical Industry', 'Chemist; Laboratory Technician; Science\rTeacher; Pharmaceutical Sales Representa', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(84, 6, 0, 8, 'Computer Science (Major)', '', '', '', '', 'Telecommunications; Software Companies; Computer\rServices', 'Computer Programmer; Systems Analyst;\rSoftware Engineer', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(85, 6, 0, 8, 'Information Technology (Major)', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(86, 6, 0, 8, 'Mathematics (Major)', '', '', '', '', 'Actuarial Science, Business and Finance, Education,\rEngineering, Statistics', 'Actuary; Statistician; Business Analyst', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(87, 6, 0, 8, 'Physics (Major)', '', '', '', '', 'Research Laboratories; Academia; Teaching', 'Science Teacher; Physicist; Laboratory\rTechnician', '', 1, 1, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', '2 passes including at least 1 Science subject or approved equivalent qualifications.'),
(88, 6, 0, 7, 'Pre-Science Programme (N1) (For entry into Science 7 Technology or Food & Agricu', '', '', '', '', '', '', '', 1, 0, 0, '5 passes including English Language, Mathematics and any two (2) of  Chemistry, Biology, Agricultural Science, Physics, Geography or approved equivale', ''),
(89, 7, 0, 0, 'Public Administration ', '', '', '', '', '', '', '', 0, 0, 1, '5 passes including English Language and Mathematics', ''),
(90, 7, 0, 0, 'Local Government Studies ', '', '', '', '', '', '', '', 0, 0, 1, '5 passes including English Language and Mathematics', ''),
(91, 7, 0, 6, 'Public Sector Management ', '', '', '', '', '', '', '', 0, 0, 1, '5 passes including English Language and Mathematics', ''),
(92, 7, 0, 3, 'Accounting ', '', '', '', '', 'Auditing; Assurance Services; Management Consulting;\rFinancial Planning; Financi', 'Auditor; Accountant; Financial Analyst; Tax Advisor', '', 1, 1, 0, '5 passes including English Language and Mathematics', '2 or 3 passes in any subject or approved equivalent qualifications.'),
(93, 7, 0, 3, 'Banking & Finance ', '', '', '', '', '', '', '', 0, 0, 1, '5 passes including English Language and Mathematics', '2 or 3 passes in any subject or approved equivalent qualifications.'),
(94, 7, 0, 3, 'Criminology & Criminal Justice ', '', '', '', '', 'Criminal Justice; Law; Health Sciences & Medicine;\rGovernment; Conflict; Resolut', 'Counsellor; Consultant; Manager; Social Worker;\rPsychologist; Sociologist; Child', '', 1, 0, 1, '5 passes including English Language and Mathematics', '2 or 3 passes in any subject or approved equivalent qualifications.'),
(95, 7, 0, 3, 'Economics ', '', '', '', '', 'Central Banks; Business Management; Academia;\rInternational Organisations; Journ', 'Economist; Business Analyst; Economic Advisor;\rEconomic Statistician; Economic A', '', 1, 0, 1, '5 passes including English Language and Mathematics', '2 or 3 passes in any subject or approved equivalent qualifications.'),
(96, 7, 0, 3, 'Governance and Local Government ', '', '', '', '', '', '', '', 1, 1, 0, '5 passes including English Language and Mathematics', '2 or 3 passes in any subject or approved equivalent qualifications.'),
(97, 7, 0, 3, 'Hotel Management Special (First Year Only) ', '', '', '', '', 'Restaurant (Food & Beverage) Management; Hotel\rManagement; Hospitality Industry ', 'Hospitality Manager; Hotel Manager; Catering Manager', '', 1, 0, 0, '5 passes including English Language and Mathematics', '2 or 3 passes in any subject or approved equivalent qualifications.'),
(98, 7, 0, 3, 'Human Resource Management', '', '', '', '', 'Management Consulting; Human Resources; Business\rManagement; Small Business Mana', 'Consultant; Entrepreneur; Management Trainee; Branch\rManager; Human Resource Off', '', 1, 0, 0, '5 passes including English Language and Mathematics', '2 or 3 passes in any subject or approved equivalent qualifications.'),
(99, 7, 0, 3, 'Insurance and Risk Management', '', '', '', '', '', '', '', 0, 0, 1, '5 passes including English Language and Mathematics', '2 or 3 passes in any subject or approved equivalent qualifications.'),
(100, 7, 0, 3, 'International Relations', '', '', '', '', '', '', '', 1, 0, 1, '5 passes including English Language and Mathematics', '2 or 3 passes in any subject or approved equivalent qualifications.'),
(101, 7, 0, 3, 'International Tourism Management ', '', '', '', '', 'Restaurant (Food & Beverage) Management; Hotel\rManagement; Hospitality Industry ', '', '', 1, 0, 0, '5 passes including English Language and Mathematics', '2 or 3 passes in any subject or approved equivalent qualifications.'),
(102, 7, 0, 3, 'Leadership & Management ', '', '', '', '', '', '', '', 1, 0, 1, '5 passes including English Language and Mathematics', '2 or 3 passes in any subject or approved equivalent qualifications.'),
(103, 7, 0, 3, 'Marketing', '', '', '', '', 'Management Consulting; Human Resources; Business\rManagement; Small Business Mana', 'Consultant; Entrepreneur; Management Trainee; Branch\rManager; Human Resource Off', '', 1, 0, 0, '5 passes including English Language and Mathematics', '2 or 3 passes in any subject or approved equivalent qualifications.'),
(104, 7, 0, 3, 'Management Studies ', '', '', '', '', 'Management Consulting; Human Resources; Business\rManagement; Small Business Mana', 'Consultant; Entrepreneur; Management Trainee; Branch\rManager; Human Resource Off', '', 1, 0, 1, '5 passes including English Language and Mathematics', '2 or 3 passes in any subject or approved equivalent qualifications.'),
(105, 7, 0, 3, 'Political Science (Government) ', '', '', '', '', '', '', '', 1, 0, 1, '5 passes including English Language and Mathematics', '2 or 3 passes in any subject or approved equivalent qualifications.'),
(106, 7, 0, 3, 'Psychology ', '', '', '', '', 'Criminal Justice; Law; Health Sciences & Medicine;\rGovernment; Conflict; Resolut', 'Counsellor; Consultant; Manager; Social Worker;\rPsychologist; Sociologist; Child', '', 1, 0, 1, '5 passes including English Language and Mathematics', '2 or 3 passes in any subject or approved equivalent qualifications.'),
(107, 7, 0, 3, 'Public Sector Management ', '', '', '', '', 'Management Consulting; Human Resources; Business\rManagement; Small Business Mana', 'Consultant; Entrepreneur; Management Trainee; Branch\rManager; Human Resource Off', '', 1, 0, 1, '5 passes including English Language and Mathematics', '2 or 3 passes in any subject or approved equivalent qualifications.'),
(108, 7, 0, 3, 'Social Work', '', '', '', '', 'Criminal Justice; Law; Health Sciences & Medicine;\rGovernment; Conflict; Resolut', 'Counsellor; Consultant; Manager; Social Worker;\rPsychologist; Sociologist; Child', '', 1, 0, 0, '5 passes including English Language and Mathematics', '2 or 3 passes in any subject or approved equivalent qualifications.'),
(109, 7, 0, 3, 'Sociology ', '', '', '', '', 'Criminal Justice; Law; Health Sciences & Medicine;\rGovernment; Conflict; Resolut', 'Counsellor; Consultant; Manager; Social Worker;\rPsychologist; Sociologist; Child', '', 1, 0, 1, '5 passes including English Language and Mathematics', '2 or 3 passes in any subject or approved equivalent qualifications.'),
(110, 7, 0, 3, 'Sports Management ', '', '', '', '', 'Professional Teams and Leagues; Amateur Associations;\rPublic/Private Recreationa', 'Sports Information Director; Facilities Manager;\rPromoter; Sports Agent', '', 1, 0, 1, '5 passes including English Language and Mathematics', '2 or 3 passes in any subject or approved equivalent qualifications.'),
(111, 7, 0, 3, 'Tourism Management Special (First Year Only) ', '', '', '', '', 'Restaurant (Food & Beverage) Management; Hotel\rManagement; Hospitality Industry ', 'Hospitality Manager; Hotel Manager; Catering Manager', '', 1, 0, 0, '5 passes including English Language and Mathematics', '2 or 3 passes in any subject or approved equivalent qualifications.');

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
(1, 4),
(2, 4),
(3, 4),
(4, 4);

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
(1, 5),
(2, 19),
(3, 21),
(4, 19),
(5, 5),
(6, 19),
(7, 5),
(8, 19),
(9, 5),
(10, 5),
(11, 19),
(12, 21),
(13, 24),
(14, 20),
(15, 21),
(16, 20),
(17, 5),
(18, 19),
(19, 5),
(20, 19);

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
(1, 0),
(2, 21),
(3, 20),
(4, 0),
(5, 21),
(6, 20),
(7, 0),
(8, 21),
(9, 20),
(10, 1),
(11, 24),
(12, 6);

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
(1, 5, 3, 0, 0, 0, 4, 1, 0, 3, 0, 0, 1, 1, 0),
(2, 5, 6, 4, 0, 0, 0, 0, 1, 3, 2, 0, 0, 1, 1),
(3, 5, 8, 7, 0, 0, 0, 0, 2, 3, 2, 0, 0, 1, 1),
(4, 5, 9, 0, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 1),
(5, 5, 14, 0, 0, 0, 16, 0, 0, 5, 0, 0, 2, 0, 0),
(6, 5, 18, 12, 0, 0, 0, 0, 4, 2, 2, 0, 0, 0, 1),
(7, 5, 20, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0);

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
  ADD PRIMARY KEY (`programme_id`);

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
  MODIFY `programme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `qualify_class_req`
--
ALTER TABLE `qualify_class_req`
  MODIFY `qualify_class_req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `qualify_sub_req_and`
--
ALTER TABLE `qualify_sub_req_and`
  MODIFY `qualify_sub_req_and_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `qualify_sub_req_or`
--
ALTER TABLE `qualify_sub_req_or`
  MODIFY `qualify_sub_req_or_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `requirements`
--
ALTER TABLE `requirements`
  MODIFY `requirements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
