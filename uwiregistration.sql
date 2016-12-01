-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2016 at 05:12 PM
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
  `requirements_id` int(11) NOT NULL,
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
  `undergraduate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  MODIFY `programme_id` int(11) NOT NULL AUTO_INCREMENT;
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
