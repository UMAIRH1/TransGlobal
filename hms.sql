-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 14, 2022 at 08:11 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'admin123', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `userStatus`, `doctorStatus`) VALUES
(3, 'Demo test', 7, 6, 600, '2022-06-29', '9:15 AM', 1, 0),
(4, 'Ayurveda', 5, 5, 8050, '2022-11-08', '1:00 PM', 1, 1),
(5, 'Dermatologist', 9, 7, 500, '2022-11-30', '5:30 PM', 1, 0),
(6, 'General Physician', 3, 2, 1200, '2022-12-09', '12:00 PM', 1, 1),
(7, 'Demo test', 7, 2, 200, '2022-12-12', '3:15 PM', 1, 0),
(8, 'Demo test', 7, 7, 200, '2022-12-09', '3:15 PM', 0, 1),
(9, 'General Physician', 3, 1, 1200, '2022-12-09', '12:00 PM', 0, 1),
(10, 'Dermatologist', 9, 1, 500, '2022-12-09', '12:00 PM', 1, 1),
(11, 'General Physician', 3, 1, 1200, '2022-12-07', '12:00 PM', 1, 1),
(12, 'General Physician', 3, 14, 1200, '2022-12-07', '12:00 PM', 1, 1),
(13, 'General Physician', 10, 7, 2000, '2022-12-09', '12:00 PM', 1, 1),
(14, 'General Physician', 10, 7, 2000, '2022-12-09', '12:00 PM', 1, 1),
(15, 'General Physician', 10, 7, 2000, '2022-12-12', '12:00 PM', 1, 1),
(16, 'Demo test', 7, 7, 200, '2022-12-07', '12:00 PM', 1, 0),
(17, 'Demo test', 7, 7, 200, '2022-12-07', '12:00 PM', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
CREATE TABLE IF NOT EXISTS `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`) VALUES
(1, 'Dentist', 'Eshaal', 'Gulberg', '500', 8285703354, 'eshal@gmail.com', 'f925916e2754e5e03f75dd58a5733251'),
(2, 'Homeopath', 'Afzal Ali', 'Model Town', '600', 2147483647, 'afzal@gmail.com', 'f925916e2754e5e03f75dd58a5733251'),
(3, 'General Physician', 'Subhan Ahmed', 'Jail Road Lahore', '1200', 8523699999, 'subh@gmail.com', 'f925916e2754e5e03f75dd58a5733251'),
(4, 'Homeopath', 'Shaheer', 'faisal town', '700', 25668888, 'shah@gmail.com', 'f925916e2754e5e03f75dd58a5733251'),
(5, 'Ayurveda', 'Taha Aqmal', 'Gulberg 2', '8050', 442166644646, 'taha@gmail.com', 'f925916e2754e5e03f75dd58a5733251'),
(6, 'General Physician', 'Asma ', 'Iqbal Town Lahore', '2500', 45497964, 'asma@test.com', 'f925916e2754e5e03f75dd58a5733251'),
(7, 'Demo test', 'Areeba Afzal', 'Shadmaan A.I.T', '200', 852888888, 'test@demo.com', 'f925916e2754e5e03f75dd58a5733251'),
(8, 'Ayurveda', 'Test Doctor', 'Xyz', '600', 1234567890, 'test@test.com', '202cb962ac59075b964b07152d234b70'),
(9, 'Dermatologist', 'Minal ', 'DHA', '500', 1234567890, 'minal@test.com', 'f925916e2754e5e03f75dd58a5733251'),
(10, 'General Physician', 'Doctor', 'jail road', '2000', 300123456, 'doctor@gmail.com', 'b3666d14ca079417ba6c2a99f079b2ac');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

DROP TABLE IF EXISTS `doctorslog`;
CREATE TABLE IF NOT EXISTS `doctorslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-10 03:05:55', NULL, 0),
(21, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-11-10 03:06:18', NULL, 1),
(22, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-11-10 05:02:21', NULL, 1),
(23, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-11-10 05:02:37', NULL, 0),
(24, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-10 05:02:52', NULL, 0),
(25, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-11-18 18:00:11', NULL, 1),
(26, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-12-04 17:08:58', NULL, 0),
(27, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-12-04 17:10:10', NULL, 1),
(28, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-12-04 17:55:25', NULL, 1),
(29, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-12-04 19:22:27', NULL, 1),
(30, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-12-05 17:42:36', NULL, 1),
(31, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-12-06 06:18:48', NULL, 1),
(32, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-12-06 06:20:17', NULL, 1),
(33, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-12-06 07:42:13', NULL, 1),
(34, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-12-06 07:42:58', NULL, 1),
(35, NULL, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-08 11:22:34', NULL, 0),
(36, NULL, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-08 11:22:47', NULL, 0),
(37, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-12-09 06:28:26', NULL, 1),
(38, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-09 06:59:38', NULL, 0),
(39, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-12-09 07:04:57', NULL, 1),
(40, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-09 10:07:33', NULL, 0),
(41, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-12-09 10:07:43', '09-12-2022 03:43:18 PM', 1),
(42, 10, 'doctor@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-09 10:44:10', NULL, 1),
(43, 10, 'doctor@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-09 17:15:36', NULL, 1),
(44, 10, 'doctor@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-09 17:20:20', NULL, 1),
(45, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-12-10 05:11:48', NULL, 0),
(46, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-12-10 05:11:56', '10-12-2022 10:58:38 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

DROP TABLE IF EXISTS `doctorspecilization`;
CREATE TABLE IF NOT EXISTS `doctorspecilization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`) VALUES
(1, 'Gynecologist/Obstetrician'),
(2, 'General Physician'),
(3, 'Dermatologist'),
(4, 'Homeopath'),
(5, 'Ayurveda'),
(6, 'Dentist'),
(7, 'Ear-Nose-Throat (Ent) Specialist'),
(9, 'Demo test'),
(10, 'Bones Specialist demo'),
(11, 'Test'),
(12, 'Dermatologist');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

DROP TABLE IF EXISTS `tblcontactus`;
CREATE TABLE IF NOT EXISTS `tblcontactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.'),
(2, 'Atif Aslam', 'atiffofficial@gmail.com', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.'),
(3, 'Asim Azhar', 'asim@gmail.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  '),
(4, 'alia', 'alia@gmail.com', 312456789, 'This is good hospital');

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

DROP TABLE IF EXISTS `tblmedicalhistory`;
CREATE TABLE IF NOT EXISTS `tblmedicalhistory` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M'),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem'),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

DROP TABLE IF EXISTS `tblpatient`;
CREATE TABLE IF NOT EXISTS `tblpatient` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`) VALUES
(1, 1, 'Minal Khan', 4558968789, 'test@gmail.com', 'Female', '456 C block Faisal Town , Lahore', 26, 'She is diabetic patient'),
(2, 5, 'Habeeba', 9797977979, 'habeeb@gmail.com', 'Male', 'ABC Apartment ,Islamabad', 39, 'No'),
(3, 7, 'Moiz Sidiqui', 9878978798, 'jk@gmail.com', 'Female', 'Ring road ,Lahore', 46, 'No'),
(4, 7, 'Sarim Ali', 9888988989, 'sarim@gmail.com', 'Male', '79 Sikander block Iqbal Town,Lahore', 25, 'He is long suffered by asthma'),
(5, 9, 'John', 1234567890, 'john@test.com', 'male', 'Test ', 25, 'THis is sample text for testing.'),
(6, 1, 'rakaiya', 31234567, 'ruk@gmail.com', 'female', 'kotlakhpat', 40, 'bp high');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-12-01 18:22:11', NULL, 0),
(25, NULL, 'loolakhan123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-01 18:34:33', NULL, 0),
(26, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-04 18:39:57', NULL, 1),
(27, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-09 06:32:51', NULL, 1),
(28, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-09 08:12:43', NULL, 1),
(29, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-09 08:41:02', NULL, 1),
(30, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-09 10:06:29', NULL, 1),
(31, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-09 10:25:00', NULL, 0),
(32, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-09 10:25:08', NULL, 0),
(33, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-09 10:25:49', NULL, 0),
(34, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-09 10:26:01', NULL, 0),
(35, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-09 10:26:18', NULL, 0),
(36, 14, 'patient@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-09 10:27:44', '09-12-2022 03:57:50 PM', 1),
(37, 14, 'patient@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-09 17:16:38', NULL, 1),
(38, 14, 'patient@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-10 03:56:01', NULL, 1),
(39, NULL, 'patient@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-10 03:56:47', NULL, 0),
(40, 14, 'patient@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-10 04:45:59', NULL, 1),
(41, 14, 'patient@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-10 04:48:06', NULL, 1),
(42, 14, 'patient@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-10 04:50:33', NULL, 1),
(43, 14, 'patient@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-10 05:10:33', NULL, 1),
(44, NULL, '030004356', 0x3a3a3100000000000000000000000000, '2022-12-10 05:30:29', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(3, 'Subhan', 'Gulberg', 'Lahore', 'male', 'subhan@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-01-07 06:36:53', '2022-12-09 08:33:02'),
(4, 'Hafsa Syed', 'Shadmaan ', 'Karachi', 'male', 'hafsa@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-01-07 07:41:14', '2022-12-08 10:38:14'),
(7, 'John', 'USA', 'Newyork', 'male', 'john@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-10 18:40:21', '2022-11-10 18:40:51'),
(9, 'fozia', '1132-Ravi Block Allama Iqbal Town, Lahore', 'Lahore', 'female', 'fozi@gmail.com', 'c8eaf18a86518910812ab1c2828e3be5', '2022-12-04 19:10:13', NULL),
(10, 'laiba khan', '73 sikander block', 'islamabas', 'female', 'laibb@gmail.com', '4b25174442dbf0b5251164901be8ddf4', '2022-12-04 19:12:11', NULL),
(14, 'patient', 'arfa tower', 'lahore', 'male', 'patient@gmail.com', 'c63f24079f1d5e4cae3fdc1a29116a7b', '2022-12-09 10:27:28', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
