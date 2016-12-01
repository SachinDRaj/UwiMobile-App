-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2016 at 12:23 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

# Privileges for `uwiadmin`@`localhost`

# Privileges for `admin`@`localhost`

GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' IDENTIFIED BY PASSWORD '*F937AE8271E461113AEEEB0878C4E30CEFE10799' WITH GRANT OPTION;

GRANT ALL PRIVILEGES ON `admin`.* TO 'admin'@'localhost';
-- Database: `admin`
--
CREATE DATABASE IF NOT EXISTS `admin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `admin`;


-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseName` text NOT NULL,
  `progid` int(11) NOT NULL,
  `credits` int(11) NOT NULL,
  `level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `deptid` int(11) NOT NULL,
  `deptName` varchar(300) NOT NULL,
  `facultyid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`deptid`, `deptName`, `facultyid`) VALUES
(1, 'Chemical Engineering', 1),
(3, 'Civil &\r\nEnvironmental Engineering', 1),
(4, 'Electrical &\r\nComputer Engineering', 1),
(5, 'Mechanical & \r\nManufacturing Engineering', 1),
(6, 'Geomatics Engineering & Land Management', 1),
(7, 'Agricultural Economics and Extension', 3),
(8, 'Food Production', 3),
(9, 'Geography', 3),
(10, 'Business Development Unit', 3),
(11, 'Publications and Communications Unit', 3),
(12, 'University Farms', 3),
(13, 'Chemistry', 2),
(14, 'Computing and Information Technology', 2),
(15, 'Life Sciences', 2),
(16, 'Mathematics and Statistics', 2),
(17, 'Physics', 2),
(18, 'Theology', 4),
(19, 'School of Education', 4),
(20, 'Centre for Language Learning', 4),
(21, 'Creative and Festival Arts', 4),
(22, 'History', 4),
(23, 'Literary, Cultural & Communication Studies', 4),
(24, 'Modern Languages & Linguistics', 4),
(25, 'Centre for Medical Sciences Education', 6),
(26, 'Information, Communication & Technology Unit', 6),
(27, 'School of Medicine', 6),
(28, 'School of Dentistry', 6),
(29, 'School of Pharmacy', 6),
(30, 'School of Veterinary Medicine', 6),
(31, 'School of Nursing', 6),
(32, 'Economics', 7),
(33, 'Management Studies', 7),
(34, 'Behavioural Sciences', 7),
(35, 'Political Science', 7);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE `faculty` (
  `facultyid` int(11) NOT NULL,
  `facultyName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`facultyid`, `facultyName`) VALUES
(1, 'Engineering'),
(2, 'Science and Technology'),
(3, 'Food and Agriculture'),
(4, 'Humanities and Education'),
(5, 'Law'),
(6, 'Medical Sciences'),
(7, 'Social Sciences');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`) VALUES
(1, 'CSEC/GCE/BGCSE'),
(2, 'CAPE/GCE A-Level');

-- --------------------------------------------------------

--
-- Table structure for table `pre-requisite`
--

DROP TABLE IF EXISTS `pre-requisite`;
CREATE TABLE `pre-requisite` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `subjects` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pre-requisite`
--

INSERT INTO `pre-requisite` (`id`, `level`, `subjects`) VALUES
(1, 1, 'English Language'),
(2, 1, 'English Language, Mathematics'),
(3, 1, 'English Language, Mathematics, Biology/Chemistry/Physics/Geography/Agricultural Science'),
(4, 1, 'English Language, Mathematics, Chemistry, Biology, Physics'),
(5, 1, 'English Language, Mathematics, Physics/Biology or Human & Social Biology'),
(6, 1, 'English Language and other'),
(7, 1, 'English Language, Mathematics, Chemistry');

-- --------------------------------------------------------

--
-- Table structure for table `programme`
--

DROP TABLE IF EXISTS `programme`;
CREATE TABLE `programme` (
  `id` int(11) NOT NULL,
  `progName` text NOT NULL,
  `dept` int(11) NOT NULL,
  `progType` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `reqs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programme`
--

INSERT INTO `programme` (`id`, `progName`, `dept`, `progType`, `student`, `reqs`) VALUES
(2, 'Geographic Land Information Systems', 6, 2, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `programmelength`
--

DROP TABLE IF EXISTS `programmelength`;
CREATE TABLE `programmelength` (
  `id` int(11) NOT NULL,
  `progType` text NOT NULL,
  `semesters` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programmelength`
--

INSERT INTO `programmelength` (`id`, `progType`, `semesters`) VALUES
(1, 'Diploma', 2),
(2, 'Certificate', 2),
(3, 'Bachelor Of Arts', 7),
(4, 'Bachelor of Science', 7),
(5, 'Bachelor Of Technology', 8);

-- --------------------------------------------------------

--
-- Table structure for table `studentclass`
--

DROP TABLE IF EXISTS `studentclass`;
CREATE TABLE `studentclass` (
  `id` int(11) NOT NULL,
  `studentclass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentclass`
--

INSERT INTO `studentclass` (`id`, `studentclass`) VALUES
(1, 'Full-time'),
(2, 'Part-time'),
(3, 'Evening');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `progid` (`progid`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`deptid`),
  ADD UNIQUE KEY `deptName` (`deptName`),
  ADD KEY `facultyid` (`facultyid`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`facultyid`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pre-requisite`
--
ALTER TABLE `pre-requisite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `programme`
--
ALTER TABLE `programme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `progName` (`progName`(300)),
  ADD KEY `dept` (`dept`,`progType`,`student`,`reqs`);

--
-- Indexes for table `programmelength`
--
ALTER TABLE `programmelength`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `progType` (`progType`(100));

--
-- Indexes for table `studentclass`
--
ALTER TABLE `studentclass`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `deptid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `facultyid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pre-requisite`
--
ALTER TABLE `pre-requisite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `programme`
--
ALTER TABLE `programme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `programmelength`
--
ALTER TABLE `programmelength`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `studentclass`
--
ALTER TABLE `studentclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
