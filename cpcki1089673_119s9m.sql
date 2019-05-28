-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 08, 2019 at 08:04 PM
-- Server version: 10.1.37-MariaDB-1~jessie
-- PHP Version: 5.6.39-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpcki1089673_119s9m`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `A_ID` int(11) NOT NULL,
  `REG_NO` int(11) NOT NULL,
  `CATEGORY` varchar(50) NOT NULL,
  `TITLE` varchar(500) NOT NULL,
  `DESCRIPTION` varchar(3500) NOT NULL,
  `START_TIME` date NOT NULL,
  `END_TIME` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `REG_NO` int(11) NOT NULL,
  `TERM_ID` int(11) NOT NULL,
  `CLASS_MASTER_ID` int(11) NOT NULL,
  `SUBJECT_ID` varchar(10) NOT NULL,
  `DATE` date NOT NULL,
  `TIME` time NOT NULL,
  `TIME_SLOT` varchar(30) NOT NULL,
  `STATUS` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_master`
--

CREATE TABLE `attendance_master` (
  `ID` int(11) NOT NULL,
  `TERM_ID` int(11) NOT NULL,
  `CLASS_MASTER_ID` int(11) NOT NULL,
  `SUBJECT_ID` varchar(8) NOT NULL,
  `NO_OF_CLASSES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class_master`
--

CREATE TABLE `class_master` (
  `CLASS_MASTER_ID` int(11) NOT NULL,
  `CLASS` varchar(50) NOT NULL,
  `SECTION` varchar(10) NOT NULL,
  `IS_ACTIVE` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_master`
--

INSERT INTO `class_master` (`CLASS_MASTER_ID`, `CLASS`, `SECTION`, `IS_ACTIVE`) VALUES
(14, '7', 'A', b'1'),
(15, '10', 'A', b'1'),
(16, '11', 'A', b'1'),
(17, '12', 'A', b'1'),
(23, '8', 'A', b'1'),
(24, '8', 'B', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `class_reg`
--

CREATE TABLE `class_reg` (
  `CLASS_MASTER_ID` int(10) NOT NULL,
  `SUBJECT_ID` varchar(10) NOT NULL,
  `SYLLABUS_LINK` varchar(400) NOT NULL,
  `IS_ACTIVE` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_reg`
--

INSERT INTO `class_reg` (`CLASS_MASTER_ID`, `SUBJECT_ID`, `SYLLABUS_LINK`, `IS_ACTIVE`) VALUES
(14, 'HIN100', '', 1),
(14, 'ENG100', '', 1),
(14, 'MTH100', '', 0),
(14, 'SCI100', '', 1),
(14, 'SCI101', '', 1),
(14, 'SST100', '', 0),
(15, 'HIN100', '', 1),
(15, 'ENG100', '', 1),
(15, 'MTH100', '', 0),
(15, 'SCI101', '', 1),
(15, 'MTH100', '', 0),
(16, 'ENG100', '', 1),
(16, 'HIN100', '', 1),
(16, 'MTH100', '', 0),
(16, 'SCI101', '', 1),
(16, 'SST100', '', 0),
(17, 'SST100', '', 0),
(17, 'SCI101', '', 1),
(17, 'MTH100', '', 0),
(17, 'HIN100', '', 1),
(17, 'ENG100', '', 1),
(14, 'CHE111', '', 1),
(16, 'PHY101', '', 1),
(14, 'CHE 101', 'Screenshot_20190508_124339_com.google.android.apps.docs.jpg', 1),
(14, 'CHE111', 'Screenshot_20190508_124339_com.google.android.apps.docs.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class_test_master`
--

CREATE TABLE `class_test_master` (
  `CLASS_TEST_ID` int(11) NOT NULL,
  `CLASS_MASTER_ID` int(11) NOT NULL,
  `TERM_ID` int(11) NOT NULL,
  `SUBJECT_ID` varchar(10) NOT NULL,
  `TEST_TYPE` varchar(50) NOT NULL,
  `TEST_NAME` varchar(10) NOT NULL,
  `TOPIC` varchar(50) NOT NULL,
  `TOTAL_MARKS` int(11) NOT NULL,
  `WEIGHT_MAX_MARKS` int(11) NOT NULL,
  `DATE` date NOT NULL,
  `START_TIME` time NOT NULL,
  `DURATION` time NOT NULL,
  `ROOM_NO` varchar(30) NOT NULL,
  `IS_ACTIVE` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_test_master`
--

INSERT INTO `class_test_master` (`CLASS_TEST_ID`, `CLASS_MASTER_ID`, `TERM_ID`, `SUBJECT_ID`, `TEST_TYPE`, `TEST_NAME`, `TOPIC`, `TOTAL_MARKS`, `WEIGHT_MAX_MARKS`, `DATE`, `START_TIME`, `DURATION`, `ROOM_NO`, `IS_ACTIVE`) VALUES
(2, 14, 15, 'HIN100', 'CA1', 'test', 'test', 100, 100, '2019-05-02', '07:41:00', '01:00:00', 'room 405', 0),
(3, 14, 15, 'SCI101', 'CA2', 'test2', 'test2', 100, 100, '2019-05-02', '08:10:00', '01:00:00', 'room 405', 0),
(4, 14, 15, 'HIN100', 'END_TERM', 'test 3', 'test 3', 100, 100, '2019-05-02', '10:20:00', '01:00:00', 'room 405', 0),
(7, 14, 1, 'HIN100', 'CA1', 'data struc', '1234567', 100, 100, '2019-05-09', '09:00:00', '00:00:01', 'room 401', 1),
(8, 14, 1, 'HIN100', 'CA2', 'algorithm', '1234566', 100, 100, '2019-05-09', '09:00:00', '00:00:01', 'room 402', 1),
(9, 14, 1, 'HIN100', 'END_TERM', 'error hand', '1234567', 100, 100, '2019-05-10', '09:00:00', '00:00:01', 'room 403', 1),
(10, 14, 1, 'ENG100', 'CA1', 'grammer', '7638762387', 100, 100, '2019-05-09', '09:00:00', '00:00:01', 'room 402', 1),
(11, 14, 1, 'ENG100', 'CA2', 'determiner', '2386532687', 100, 100, '2019-05-10', '10:01:00', '00:00:01', 'room 405', 1),
(12, 14, 1, 'ENG100', 'END_TERM', 'passage', '63276487642387', 100, 100, '2019-06-01', '09:00:00', '00:00:03', 'room 309', 1),
(13, 14, 2, 'HIN100', 'CA1', 'Essay writ', '8798789', 100, 100, '2019-06-06', '03:23:00', '00:00:01', 'room 405', 1),
(14, 14, 2, 'HIN100', 'CA2', 'grammer', '74874289', 100, 100, '2019-06-08', '16:25:00', '00:00:01', 'room 405', 1),
(15, 14, 2, 'HIN100', 'END_TERM', 'questions', '87089798', 100, 100, '2019-06-10', '16:26:00', '00:00:01', 'room 405', 1),
(16, 14, 2, 'ENG100', 'CA1', 'this is fo', '89348979', 100, 100, '2019-09-08', '16:27:00', '00:00:01', 'room 405', 1),
(17, 14, 2, 'ENG100', 'CA2', 'this is en', '798979088', 100, 100, '2019-05-19', '16:28:00', '00:00:01', 'room 543', 1),
(18, 14, 2, 'ENG100', 'END_TERM', 'this is en', '34774899', 100, 100, '2019-05-26', '16:30:00', '00:00:01', 'room 407', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class_test_table`
--

CREATE TABLE `class_test_table` (
  `REG_NO` int(11) NOT NULL,
  `CLASS_TEST_ID` int(11) NOT NULL,
  `MARKS_OBTAINED` int(11) NOT NULL,
  `WEIGHTAGE_MARKS_OBTAINED` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_test_table`
--

INSERT INTO `class_test_table` (`REG_NO`, `CLASS_TEST_ID`, `MARKS_OBTAINED`, `WEIGHTAGE_MARKS_OBTAINED`) VALUES
(30191000, 7, 10, 5),
(30191001, 7, 20, 5),
(30191002, 7, 30, 5),
(30191003, 7, 40, 5),
(30191004, 7, 50, 5),
(30191005, 7, 60, 5),
(30191006, 7, 70, 5),
(30191007, 7, 80, 5),
(30191008, 7, 90, 5),
(30191009, 7, 15, 5),
(30191010, 7, 25, 5),
(30191041, 7, 35, 5),
(30191000, 8, 90, 5),
(30191001, 8, 80, 5),
(30191002, 8, 70, 5),
(30191003, 8, 60, 5),
(30191004, 8, 50, 5),
(30191005, 8, 40, 5),
(30191006, 8, 30, 5),
(30191007, 8, 20, 5),
(30191008, 8, 10, 5),
(30191009, 8, 85, 5),
(30191010, 8, 75, 5),
(30191041, 8, 65, 5),
(30191000, 9, 90, 5),
(30191001, 9, 91, 5),
(30191002, 9, 80, 5),
(30191003, 9, 81, 5),
(30191004, 9, 70, 5),
(30191005, 9, 71, 5),
(30191006, 9, 60, 5),
(30191007, 9, 61, 5),
(30191008, 9, 50, 5),
(30191009, 9, 51, 5),
(30191010, 9, 40, 5),
(30191041, 9, 41, 5),
(30191000, 10, 51, 5),
(30191001, 10, 52, 5),
(30191002, 10, 53, 5),
(30191003, 10, 54, 5),
(30191004, 10, 55, 5),
(30191005, 10, 56, 5),
(30191006, 10, 57, 5),
(30191007, 10, 58, 5),
(30191008, 10, 59, 5),
(30191009, 10, 60, 5),
(30191010, 10, 61, 5),
(30191041, 10, 62, 5),
(30191000, 11, 62, 5),
(30191001, 11, 61, 5),
(30191002, 11, 60, 5),
(30191003, 11, 59, 5),
(30191004, 11, 58, 5),
(30191005, 11, 57, 5),
(30191006, 11, 56, 5),
(30191007, 11, 55, 5),
(30191008, 11, 54, 5),
(30191009, 11, 53, 5),
(30191010, 11, 52, 5),
(30191041, 11, 51, 5),
(30191000, 12, 45, 5),
(30191001, 12, 35, 5),
(30191002, 12, 67, 5),
(30191003, 12, 56, 5),
(30191004, 12, 33, 5),
(30191005, 12, 78, 5),
(30191006, 12, 43, 5),
(30191007, 12, 69, 5),
(30191008, 12, 86, 5),
(30191009, 12, 55, 5),
(30191010, 12, 95, 5),
(30191041, 12, 18, 5);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `EVENT_ID` int(11) NOT NULL,
  `EVENT_DATE` date NOT NULL,
  `EVENT` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`EVENT_ID`, `EVENT_DATE`, `EVENT`) VALUES
(1, '2019-05-03', 'test'),
(2, '2019-05-04', 'test'),
(3, '2019-05-03', 'test two'),
(4, '2019-05-02', 'Yes'),
(5, '2019-05-01', 'Ucufu hchyc'),
(6, '2019-05-02', 'Hcuh yucu'),
(7, '2019-05-06', 'Server test');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `ID` int(11) NOT NULL,
  `REG_NO` int(11) NOT NULL,
  `DATE` date NOT NULL,
  `SUBJECT` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`ID`, `REG_NO`, `DATE`, `SUBJECT`, `DESCRIPTION`) VALUES
(1, 30191000, '2019-04-02', 'This is Test', 'BVFBVXBFNCGN'),
(2, 30191000, '2019-04-25', 'Nothing', 'For testing purpose');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `ID` int(11) NOT NULL,
  `IMAGE` int(11) NOT NULL,
  `DESCRIPTION` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `id` int(11) NOT NULL,
  `CLASS_MASTER_ID` int(11) NOT NULL,
  `SUBJECT_ID` varchar(250) NOT NULL,
  `TITLE` varchar(100) NOT NULL,
  `REG_NO` int(11) NOT NULL,
  `FILE` varchar(500) NOT NULL,
  `DATE` date NOT NULL,
  `TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homework`
--

INSERT INTO `homework` (`id`, `CLASS_MASTER_ID`, `SUBJECT_ID`, `TITLE`, `REG_NO`, `FILE`, `DATE`, `TIME`) VALUES
(19, 14, 'HIN100', 'CA1', 2019101, 'http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/image_uploads/RecommandationVianey.pdf', '2019-04-19', '04:00:00'),
(20, 14, 'HIN100', 'CA2', 2019101, 'http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/image_uploads/image.png', '2019-04-19', '12:26:11'),
(21, 16, 'SCI101', 'CA1', 2019105, 'http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/image_uploads/FinalReport.pdf', '2019-04-22', '11:38:01'),
(22, 14, 'HIN100', 'Test1', 2019101, 'http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/image_uploads/TimeLine.pdf', '2019-04-22', '11:54:24'),
(23, 14, 'HIN100', 'Hindi', 2019101, 'http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/image_uploads/14-00-32-minions-tulaliloo-ti-amo_o_2571297.jpg', '2019-04-23', '10:56:07'),
(24, 14, 'HIN100', 'Hjags', 2019100, 'http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/image_uploads/Screenshot_2019-05-02-23-17-46-702_com.instagram.android.png', '2019-05-03', '06:53:03'),
(25, 14, 'HIN100', 'Qiuz', 2019100, 'http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/image_uploads/Screenshot_2019-05-03-12-14-52-650_ums.lovely.university.png', '2019-05-03', '09:00:49'),
(26, 14, 'HIN100', 'Jxuch hchchchh hchcjchch hc', 2019100, 'http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/image_uploads/Screenshot_2019-05-03-08-41-06-928_com.instagram.android.png', '2019-05-03', '10:38:48'),
(27, 15, 'ENG100', 'Gxfhchcyy', 2019100, 'http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/image_uploads/Screenshot_2019-05-03-08-41-06-928_com.instagram.android.png', '2019-05-03', '10:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `MSG_ID` int(11) NOT NULL,
  `SENDER` int(11) NOT NULL,
  `TITLE` varchar(150) NOT NULL,
  `DESCRIPTION` varchar(500) NOT NULL,
  `RECIPIENT` int(11) NOT NULL,
  `DATE` date NOT NULL,
  `TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`MSG_ID`, `SENDER`, `TITLE`, `DESCRIPTION`, `RECIPIENT`, `DATE`, `TIME`) VALUES
(1, 1019100, 'test1', 'this test was made without push notification connection', 30191001, '2019-04-11', '12:00:38'),
(2, 1019100, 'xfdghjkl', 'asdrtry', 30191000, '2019-04-11', '12:03:59'),
(3, 1019100, 'TestMessage', 'asdfrefesssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss', 30191011, '2019-04-15', '07:14:21'),
(4, 1019100, 'Testing with chanda', 'miaausskfadjgnrieguahvurngvai;rev', 2019100, '2019-04-19', '06:45:04'),
(5, 1019100, 'parent convocation', 'because of your disciplinary attitude, your parents are suppose to come here for ....', 30191011, '2019-04-19', '12:35:19'),
(6, 1019100, 'THIS IS A TEST', 'TESTINGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG', 30191001, '2019-05-02', '07:29:05'),
(7, 2019100, 'Amrinder', 'Chutiya hu mai', 2019100, '2019-05-02', '07:52:52'),
(8, 1019100, 'May Test', 'this ais a test made the 3rd May', 30191001, '2019-05-03', '07:40:37'),
(9, 1019100, 'Test entry', 'Testing the application beautiful application', 2019101, '2019-05-03', '12:01:51');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_table`
--

CREATE TABLE `quiz_table` (
  `ID` int(11) NOT NULL,
  `QUESTION` varchar(200) NOT NULL,
  `OPTION1` varchar(100) NOT NULL,
  `OPTION2` varchar(100) NOT NULL,
  `OPTION3` varchar(100) NOT NULL,
  `OPTION4` varchar(100) NOT NULL,
  `ANSWER` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_table`
--

INSERT INTO `quiz_table` (`ID`, `QUESTION`, `OPTION1`, `OPTION2`, `OPTION3`, `OPTION4`, `ANSWER`) VALUES
(1, 'How many continents ', '4', '5', '7', '6', '5'),
(2, 'What is the largest Country of the world', 'Ethiopia', 'China', 'Russia', 'United State', 'Russia'),
(3, 'What is the political capital of Cameroon', 'Yaounde', 'DOUALA', 'BERTOUA', 'BAMENDA', 'YAOUNDE'),
(4, 'What is the most famous sport in India', 'Rugby', 'Cricket', 'Football', 'Basketball', 'Cricket'),
(5, 'What does FIFA stand for :', 'Federation internationale de football americain', 'Federation internationale de football association', 'Federation internationale de facebook association', 'Federation internet de football  association                                                        ', 'Federation internationale de football association'),
(6, 'Find out the intrude:', 'Football', 'Tennis', 'Softball', 'House', 'House'),
(7, 'Which one is not a color :', 'Black', 'Table', 'Red', 'Green', 'Table'),
(8, 'Who invented the school education system', 'William Shakespeare', 'Bill Gate', 'Charlemagne', 'Modi', 'Charlemagne'),
(9, 'When was the first world international war :', '28 juil. 1913 till lr  11 nov. 1918', '28 juil. 1914 till 11 june. 1918', '28 juil. 1914 till 11 nov. 1918', '28 jan. 1914 till 11 nov. 1918', '28 juil. 1914 till                                                   11 nov. 1918'),
(10, 'Find out the Vowel:', 't', 'a', 'p', 'r', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `ID` int(11) NOT NULL,
  `REG_NO` int(11) NOT NULL,
  `TERM_ID` int(11) NOT NULL,
  `CLASS_MASTER_ID` int(11) NOT NULL,
  `SUBJECT_ID` varchar(20) NOT NULL,
  `CA1` int(11) NOT NULL,
  `CA2` int(11) NOT NULL,
  `END_TERM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`ID`, `REG_NO`, `TERM_ID`, `CLASS_MASTER_ID`, `SUBJECT_ID`, `CA1`, `CA2`, `END_TERM`) VALUES
(1, 30191000, 1, 14, 'HIN100', 10, 90, 90),
(2, 30191001, 1, 14, 'HIN100', 20, 80, 91),
(3, 30191002, 1, 14, 'HIN100', 30, 70, 80),
(4, 30191003, 1, 14, 'HIN100', 40, 60, 81),
(5, 30191004, 1, 14, 'HIN100', 50, 50, 70),
(6, 30191005, 1, 14, 'HIN100', 60, 40, 71),
(7, 30191006, 1, 14, 'HIN100', 70, 30, 60),
(8, 30191007, 1, 14, 'HIN100', 80, 20, 61),
(9, 30191008, 1, 14, 'HIN100', 90, 10, 50),
(10, 30191009, 1, 14, 'HIN100', 15, 85, 51),
(11, 30191010, 1, 14, 'HIN100', 25, 75, 40),
(12, 30191041, 1, 14, 'HIN100', 35, 65, 41),
(13, 30191000, 1, 14, 'ENG100', 51, 62, 45),
(14, 30191001, 1, 14, 'ENG100', 52, 61, 35),
(15, 30191002, 1, 14, 'ENG100', 53, 60, 67),
(16, 30191003, 1, 14, 'ENG100', 54, 59, 56),
(17, 30191004, 1, 14, 'ENG100', 55, 58, 33),
(18, 30191005, 1, 14, 'ENG100', 56, 57, 78),
(19, 30191006, 1, 14, 'ENG100', 57, 56, 43),
(20, 30191007, 1, 14, 'ENG100', 58, 55, 69),
(21, 30191008, 1, 14, 'ENG100', 59, 54, 86),
(22, 30191009, 1, 14, 'ENG100', 60, 53, 55),
(23, 30191010, 1, 14, 'ENG100', 61, 52, 95),
(24, 30191041, 1, 14, 'ENG100', 62, 51, 18);

-- --------------------------------------------------------

--
-- Table structure for table `rfshowbiz`
--

CREATE TABLE `rfshowbiz` (
  `ID` int(11) NOT NULL,
  `OTP` int(11) NOT NULL,
  `NAME` varchar(80) NOT NULL,
  `CHECKED` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rfshowbiz`
--

INSERT INTO `rfshowbiz` (`ID`, `OTP`, `NAME`, `CHECKED`, `email`) VALUES
(10, 445599811, 'jordan', 0, ''),
(9, 800292405, 'vianey', 1, 'nymbl93@gmail.com'),
(11, 67716939, 'lambert', 0, ''),
(12, 227146819, 'yvan', 0, ''),
(14, 77893020, 'mama', 0, ''),
(15, 387293650, 'diana', 0, ''),
(16, 285959802, 'toumelo', 0, ''),
(17, 678100603, 'christian', 0, ''),
(18, 871984236, 'carol', 0, ''),
(19, 364797107, 'Stephane', 0, 'eyebestephane20@gmail.com'),
(20, 762673309, 'Pitou', 0, 'nymbl93@gmail.com'),
(21, 135864312, 'Pit', 0, 'nymbl93@gmail.com'),
(22, 758403935, 'abc', 0, ''),
(23, 699672796, 'Chitu', 0, ''),
(24, 891090193, 'Edna', 0, ''),
(25, 507904143, 'Tumelo', 0, ''),
(26, 828924314, 'Diana Keketso', 0, ''),
(27, 775067073, 'Natasha', 0, ''),
(28, 182697710, 'Gwen', 1, 'gwendolinecharlotte30@gmail.com'),
(29, 255270415, 'AÃ¯cha', 0, ''),
(30, 858843715, 'Diana', 1, 'marealle05@gmail.com'),
(31, 478365569, 'Pendo', 1, 'pendo2911@gmail.com'),
(32, 828823899, 'Lena', 0, ''),
(33, 731975673, 'Viola', 0, ''),
(34, 22338113, 'Jamila', 0, ''),
(35, 705859478, 'Maria', 0, ''),
(36, 504326676, 'Irene', 0, ''),
(37, 14474844, 'Gracia', 1, 'graciaserenna@yahoo.fr'),
(38, 515166861, 'Celeste', 1, 'gacuticeleste@gmail.com'),
(39, 396256037, 'Rianne', 0, ''),
(40, 715526700, 'Grace', 1, 'johanegrace9@gmail.com'),
(41, 730083295, 'Cecilia', 1, 'maty.lepasa@gmail.com'),
(42, 597400983, 'Flora', 0, ''),
(43, 809506942, 'Margareth', 1, 'nthatisihlapisi05@gmail.com'),
(44, 285618547, 'Banks', 0, ''),
(45, 772556142, 'Idriss', 0, ''),
(46, 531537671, 'Fabrice', 0, ''),
(47, 63926314, 'Xavier', 0, ''),
(48, 369540702, 'Habdy', 0, ''),
(49, 781888895, 'Chama', 0, ''),
(50, 843625268, 'Joyce', 0, ''),
(51, 255433208, 'Ameerah', 0, ''),
(52, 312301403, 'Mary', 0, ''),
(53, 434410067, 'Christina', 0, ''),
(54, 663160532, 'Potso4', 1, 'Joycemafeka456@gmail.com'),
(55, 802529717, 'Damaless', 0, ''),
(56, 899912728, 'Fatima', 1, 'zarahaminut@gmail.com'),
(57, 529528129, 'Aiman farooqie', 1, 'Peerzadiaimmy@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `session_master`
--

CREATE TABLE `session_master` (
  `SESSION_MASTER_ID` int(11) NOT NULL,
  `SESSION_START_DATE` date NOT NULL,
  `SESSION_END_DATE` date NOT NULL,
  `IS_ACTIVE` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session_master`
--

INSERT INTO `session_master` (`SESSION_MASTER_ID`, `SESSION_START_DATE`, `SESSION_END_DATE`, `IS_ACTIVE`) VALUES
(7, '2019-01-01', '2019-12-31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_class_reg`
--

CREATE TABLE `student_class_reg` (
  `REG_NO` int(11) NOT NULL,
  `CLASS_MASTER_ID` int(11) NOT NULL,
  `SESSION_MASTER_ID` int(11) NOT NULL,
  `IS_ACTIVE` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class_reg`
--

INSERT INTO `student_class_reg` (`REG_NO`, `CLASS_MASTER_ID`, `SESSION_MASTER_ID`, `IS_ACTIVE`) VALUES
(30191000, 14, 7, b'1'),
(30191001, 14, 7, b'1'),
(30191002, 14, 7, b'1'),
(30191003, 14, 7, b'1'),
(30191004, 14, 7, b'1'),
(30191005, 14, 7, b'1'),
(30191006, 14, 7, b'1'),
(30191007, 14, 7, b'1'),
(30191008, 14, 7, b'1'),
(30191009, 14, 7, b'1'),
(30191010, 14, 7, b'1'),
(30191011, 15, 7, b'1'),
(30191012, 15, 7, b'1'),
(30191013, 15, 7, b'1'),
(30191014, 15, 7, b'1'),
(30191015, 15, 7, b'1'),
(30191016, 15, 7, b'1'),
(30191017, 15, 7, b'1'),
(30191018, 15, 7, b'1'),
(30191019, 15, 7, b'1'),
(30191020, 15, 7, b'1'),
(30191021, 16, 7, b'1'),
(30191022, 16, 7, b'1'),
(30191023, 16, 7, b'1'),
(30191024, 16, 7, b'1'),
(30191025, 16, 7, b'1'),
(30191026, 16, 7, b'1'),
(30191027, 16, 7, b'1'),
(30191028, 16, 7, b'1'),
(30191029, 16, 7, b'1'),
(30191030, 16, 7, b'1'),
(30191031, 17, 7, b'1'),
(30191032, 17, 7, b'1'),
(30191033, 17, 7, b'1'),
(30191034, 17, 7, b'1'),
(30191035, 17, 7, b'1'),
(30191036, 17, 7, b'1'),
(30191037, 17, 7, b'1'),
(30191038, 17, 7, b'1'),
(30191039, 17, 7, b'1'),
(30191040, 17, 7, b'1'),
(30191041, 14, 7, b'1'),
(30191042, 15, 7, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SUBJECT_ID` varchar(10) NOT NULL,
  `SUBJECT_NAME` varchar(50) NOT NULL,
  `SUBJECT_TYPE` varchar(20) NOT NULL,
  `SUBJECT_MATERIAL` varchar(20) NOT NULL,
  `IS_ACTIVE` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SUBJECT_ID`, `SUBJECT_NAME`, `SUBJECT_TYPE`, `SUBJECT_MATERIAL`, `IS_ACTIVE`) VALUES
('CAP100', 'Programming', 'Core', 'Practical', b'1'),
('CHE 101', 'Chemistry', 'Core', 'Practical', b'1'),
('CHE111', 'Environmental Studies', 'Selective', 'Theory', b'1'),
('ECO101', 'Economics', 'Selective', 'Theory', b'1'),
('ENG100', 'English', 'Core', 'Theory', b'0'),
('HIN100', 'Hindi', 'Core', 'Theory', b'0'),
('HIS101', 'History', 'Selective', 'Theory', b'1'),
('MTH100', 'Mathematics', 'Core', 'Theory', b'0'),
('PHY101', 'Physics', 'Selective', 'Practical', b'1'),
('POL101', 'Political Science', 'Selective', 'Theory', b'1'),
('SCI100', 'Science Pr', 'Core', 'Practical', b'1'),
('SCI101', 'Science', 'Core', 'Practical', b'1'),
('SST100', 'Social Studies', 'Core', 'Theory', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_master`
--

CREATE TABLE `teacher_master` (
  `REG_NO` int(11) NOT NULL,
  `DESIGNATION` varchar(50) NOT NULL,
  `DEPARTMENT` varchar(20) NOT NULL,
  `IS_ACTIVE` tinyint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_master`
--

INSERT INTO `teacher_master` (`REG_NO`, `DESIGNATION`, `DEPARTMENT`, `IS_ACTIVE`) VALUES
(2019100, '', 'computer science eng', 0),
(2019101, 'Asst Pro', 'Networking', 1),
(2019102, 'Pro', 'Database', 1),
(2019103, 'Asst Pro', 'Hindi', 1),
(2019104, 'Asst Pro', 'English', 1),
(2019105, 'Asst Pro', 'System Software', 1),
(2019106, 'Asst Pro', 'Mathmatics', 1),
(2019107, 'Asst Pro', 'Drawing', 1),
(2019108, 'Asst Pro', 'Art and Craft', 1),
(2019109, 'Asst Pro', 'Programming', 1),
(2019110, 'Asst Pro', 'System Architecture', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_table`
--

CREATE TABLE `teacher_table` (
  `REG_NO` int(11) NOT NULL,
  `SUBJECT_ID` varchar(10) NOT NULL,
  `IS_ACTIVE` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_table`
--

INSERT INTO `teacher_table` (`REG_NO`, `SUBJECT_ID`, `IS_ACTIVE`) VALUES
(2019100, 'CHE111', 1),
(2019101, 'ECO101', 1),
(2019102, 'ENG100', 1),
(2019103, 'HIN100', 1),
(2019104, 'HIS101', 1),
(2019105, 'MTH100', 1),
(2019106, 'PHY101', 1),
(2019107, 'POL101', 1),
(2019108, 'SCI100', 1),
(2019109, 'SCI101', 1),
(2019110, 'SST100', 1),
(2019100, 'HIN100', 1),
(2019100, 'ENG100', 1);

-- --------------------------------------------------------

--
-- Table structure for table `term_master`
--

CREATE TABLE `term_master` (
  `TERM_ID` int(11) NOT NULL,
  `SESSION_MASTER_ID` int(11) NOT NULL,
  `TERM` int(11) NOT NULL,
  `START_DATE` date NOT NULL,
  `END_DATE` date NOT NULL,
  `IS_ACTIVE` tinyint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `term_master`
--

INSERT INTO `term_master` (`TERM_ID`, `SESSION_MASTER_ID`, `TERM`, `START_DATE`, `END_DATE`, `IS_ACTIVE`) VALUES
(1, 7, 1, '2019-01-01', '2019-04-30', 0),
(2, 7, 2, '2019-05-01', '2019-08-31', 1),
(3, 7, 3, '2019-09-01', '2019-12-31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `timeslot`
--

CREATE TABLE `timeslot` (
  `SLOT` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeslot`
--

INSERT INTO `timeslot` (`SLOT`) VALUES
('09 AM - 10 AM'),
('10 AM - 11 AM'),
('11 AM - 12 PM'),
('12 PM - 01 PM'),
('01 PM - 02 PM');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `ID` int(11) NOT NULL,
  `CLASS_MASTER_ID` int(11) NOT NULL,
  `SUBJECT_ID` varchar(10) NOT NULL,
  `TIME_SLOT` varchar(50) NOT NULL,
  `DAY` text NOT NULL,
  `IS_ACTIVE` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`ID`, `CLASS_MASTER_ID`, `SUBJECT_ID`, `TIME_SLOT`, `DAY`, `IS_ACTIVE`) VALUES
(15, 14, 'HIN100', '10 AM - 11 AM', 'Monday', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USER_ID` int(10) NOT NULL,
  `REG_NO` int(11) NOT NULL,
  `USER_PIC` varchar(512) NOT NULL,
  `ROLE` varchar(10) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `E_MAIL` varchar(30) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `OTP` int(11) DEFAULT NULL,
  `firebaseKey` varchar(500) DEFAULT NULL,
  `attempted_quiz` tinyint(1) NOT NULL DEFAULT '0',
  `IS_ACTIVE` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USER_ID`, `REG_NO`, `USER_PIC`, `ROLE`, `FIRST_NAME`, `LAST_NAME`, `DOB`, `GENDER`, `E_MAIL`, `PASSWORD`, `OTP`, `firebaseKey`, `attempted_quiz`, `IS_ACTIVE`) VALUES
(1226, 1150, 'http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/image_uploads/image.png', 'Admin', 'M', 'V', '2019-04-01', 'male', 'admin@gmail.com', '123', NULL, NULL, 0, b'1'),
(1171, 1019100, 'http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/image_uploads/image.png', 'Admin', 'EMMY', 'RAJPUT', '1996-01-02', 'male', 'emmy1171er29@gmail.com', 'Admin@1234', NULL, NULL, 0, b'1'),
(1172, 2019100, 'http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/image_uploads/1556876949445.jpg', 'teacher', 'AMRINDER', 'SINGH', '1990-08-03', 'male', 'amrinder@gmail.com', 'Tea@1234', 0, NULL, 0, b'0'),
(1216, 2019101, 'http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/image_uploads/1551691694462.jpg', 'Teacher', 'Ankit', 'Singh', '1990-04-13', 'male', 'Ankit@gmail.com', 'Tea@1234', NULL, NULL, 0, b'1'),
(1217, 2019102, '', 'Teacher', 'Mansi', 'Rana', '1989-04-13', 'female', 'mansi@gmail.com', 'Tea@1234', NULL, NULL, 0, b'1'),
(1218, 2019103, '', 'Teacher', 'Seema', 'Mishra', '1986-12-13', 'female', 'seema@gmail.com', 'Tea@1234', NULL, NULL, 0, b'1'),
(1219, 2019104, '', 'Teacher', 'Suman', 'Soni', '1990-10-13', 'female', 'suman@gmail.com', 'Tea@1234', NULL, NULL, 0, b'1'),
(1220, 2019105, '', 'Teacher', 'Balraj', 'Kumar', '1991-10-13', 'male', 'balraj@gmail.com', 'Tea@1234', NULL, NULL, 0, b'1'),
(1221, 2019106, '', 'Teacher', 'Anup', 'Singh', '1990-10-13', 'male', 'anup@gmail.com', 'Tea@1234', NULL, NULL, 0, b'1'),
(1222, 2019107, '', 'Teacher', 'Sheryti', 'Singh', '1989-10-13', 'female', 'sheryti@gmail.com', 'Tea@1234', NULL, NULL, 0, b'1'),
(1223, 2019108, '', 'Teacher', 'Sheryti', 'Jaiswal', '1986-10-13', 'female', 'sheryti@gmail.com', 'Tea@1234', NULL, NULL, 0, b'1'),
(1224, 2019109, '', 'Teacher', 'Anupama', 'Rana', '1992-11-10', 'female', 'anupama@gmail.com', 'Tea@1234', NULL, NULL, 0, b'1'),
(1225, 2019110, '', 'Teacher', 'Akshay', 'Sharma', '1992-12-13', 'male', 'akshay@gmail.com', 'Tea@1234', NULL, NULL, 0, b'1'),
(1173, 30191000, '', 'Student', 'CHANDA', 'KUMARI', '1996-05-29', 'FEMALE', 'chandakumari658@gmail.com', 'Stu@1234', 0, NULL, 0, b'1'),
(1174, 30191001, 'http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/image_uploads/1551691227991.jpg', 'Student', 'awerty', 'awerty', '2005-11-30', 'female', 'a@a.com', 'Stu@1234', NULL, NULL, 1, b'1'),
(1177, 30191002, '', 'Student', 'Mamta', 'Rawat', '1995-02-13', 'female', 'mamta@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1178, 30191003, '', 'Student', 'Deep', 'Singh', '1996-04-13', 'male', 'deep@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1179, 30191004, '', 'Student', 'Deepanshi', 'Singh', '1996-04-03', 'female', 'deepanshi@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1180, 30191005, '', 'Student', 'jyoti', 'Kumari', '1996-12-13', 'female', 'jyoti@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1181, 30191006, '', 'Student', 'Ankit', 'Singh', '1996-04-13', 'male', 'Ankit@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1182, 30191007, '', 'Student', 'Laxmi', 'Singh', '1996-04-13', 'female', 'laxmi@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1183, 30191008, '', 'Student', 'Sherya', 'thakur', '1996-12-13', 'female', 'sherya@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1184, 30191009, '', 'Student', 'Sheryti', 'Singh', '1996-10-13', 'female', 'sheryti@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1185, 30191010, '', 'Student', 'Shahil', 'thakur', '1995-12-01', 'male', 'Shahil@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1186, 30191011, '', 'Student', 'chahat', 'Singh', '1996-10-13', 'female', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1187, 30191012, '', 'Student', 'Ankit', 'Singh', '1996-04-13', 'male', 'Ankit@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1188, 30191013, '', 'Student', 'Laxmi', 'Singh', '1996-04-13', 'female', 'laxmi@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1189, 30191014, '', 'Student', 'Sherya', 'thakur', '1996-12-13', 'female', 'sherya@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1190, 30191015, '', 'Student', 'Sheryti', 'Singh', '1996-10-13', 'female', 'sheryti@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1191, 30191016, '', 'Student', 'Shahil', 'thakur', '1995-12-01', 'male', 'Shahil@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1192, 30191017, '', 'Student', 'chahat', 'Singh', '1996-10-13', 'male', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1193, 30191018, '', 'Student', 'Priya', 'Singh', '1996-10-13', 'female', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1194, 30191019, '', 'Student', 'Neena', 'Singh', '1996-10-13', 'female', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1195, 30191020, '', 'Student', 'Lola', 'Singh', '1996-10-13', 'female', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1196, 30191021, '', 'Student', 'Preeti', 'Singh', '1996-10-13', 'female', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1197, 30191022, '', 'Student', 'Lini', 'Singh', '1996-10-13', 'female', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1198, 30191023, '', 'Student', 'Anshika', 'Singh', '1996-10-13', 'female', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1199, 30191024, '', 'Student', 'Supriya', 'Singh', '1996-10-13', 'female', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1200, 30191025, '', 'Student', 'Kasak', 'Chaudhary', '1996-10-13', 'female', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1201, 30191026, '', 'Student', 'Kanak', 'Bhahadur', '1996-10-13', 'female', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1202, 30191027, '', 'Student', 'Tina', 'Kapoor', '1996-10-13', 'female', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1203, 30191028, '', 'Student', 'Anjali', 'Sharma', '1996-10-13', 'female', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1204, 30191029, '', 'Student', 'Rohit', 'Verma', '1996-10-13', 'male', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1205, 30191030, '', 'Student', 'Rajat', 'Kapoor', '1996-10-13', 'male', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1206, 30191031, '', 'Student', 'Akshay', 'Patidar', '1996-10-13', 'male', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1207, 30191032, '', 'Student', 'Ankush', 'Rana', '1996-10-13', 'male', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1208, 30191033, '', 'Student', 'Aseem', 'Katoch', '1996-10-13', 'male', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1209, 30191034, '', 'Student', 'Ajay', 'Bhanushali', '1996-10-13', 'male', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1210, 30191035, '', 'Student', 'Sam', 'Bhanushali', '1999-07-13', 'male', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1211, 30191036, '', 'Student', 'Rakesh', 'Singh', '1996-08-13', 'male', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1212, 30191037, '', 'Student', 'Vishal', 'Singh', '1996-09-13', 'male', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1213, 30191038, '', 'Student', 'Vinay', 'Singh', '2002-11-13', 'male', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1214, 30191039, '', 'Student', 'Vaibhav', 'Singh', '2001-10-03', 'male', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1215, 30191040, '', 'Student', 'Akshay', 'Singh', '2000-10-13', 'male', 'chahat@gmail.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1227, 30191041, 'http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/image_uploads/1556185628577.png', 'student', 'Priya', 'Singh', '1994-12-31', 'female', 'priya@gmail.com', 'Stu@1234', NULL, NULL, 1, b'1'),
(1228, 30191042, 'http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/image_uploads/1556789575842.png', 'student', 'Mohit', 'Toto', '2012-12-31', 'male', 'a@a.com', 'Stu@1234', NULL, NULL, 0, b'1'),
(1229, 30191043, 'http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/image_uploads1557222841674.jpg', 'student', 'Sourav', 'Kainth', '1996-12-31', 'male', 'souravkainth@outlook.com', 'Kainth@258', NULL, NULL, 0, b'1'),
(1230, 30191044, 'http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/image_uploads1557299953243.jpg', 'student', 'Okay', 'Okay', '2012-12-31', 'male', 'souravkainth@outlook.com', 'Abba@123', NULL, NULL, 0, b'1'),
(1231, 30191045, 'http://ftp.cpckingdom.com/easyschool.cpckingdom.com/schoolapi/image_uploads1557336093940.jpg', 'student', 'Okay', 'Okay', '2012-12-31', 'male', 'souravkainth@outlook.com', 'Kainth@123', NULL, NULL, 0, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `REG_NO` int(11) NOT NULL,
  `FATHER_NAME` varchar(50) NOT NULL,
  `MOTHER_NAME` varchar(50) NOT NULL,
  `ADDRESS_TYPE` varchar(20) NOT NULL,
  `ADDRESS_LINE_1` varchar(100) NOT NULL,
  `ADDRESS_LINE_2` varchar(50) NOT NULL,
  `STATE` varchar(50) NOT NULL,
  `PINCODE` int(11) NOT NULL,
  `CITY` varchar(50) NOT NULL,
  `CONTACT_NO` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`REG_NO`, `FATHER_NAME`, `MOTHER_NAME`, `ADDRESS_TYPE`, `ADDRESS_LINE_1`, `ADDRESS_LINE_2`, `STATE`, `PINCODE`, `CITY`, `CONTACT_NO`) VALUES
(30191000, 'Father', 'Mother', 'Permanent', 'A-1', 'ADDRESS_LINE_2', 'State', 110019, 'City', 9876543210),
(1019100, 'Admin Father', 'Admin Mother', 'Permanent', 'A-1', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191001, 'Father', 'Mother', 'Permanent', 'A-1', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191002, 'Father', 'Mother', 'Permanent', 'A-2', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191003, 'Father', 'Mother', 'Permanent', 'A-3', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191004, 'Father', 'Mother', 'Permanent', 'A-4', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191005, 'Father', 'Mother', 'Permanent', 'A-5', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191006, 'Father', 'Mother', 'Permanent', 'A-6', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191007, 'Father', 'Mother', 'Permanent', 'A-7', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191008, 'Father', 'Mother', 'Permanent', 'A-8', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191009, 'Father', 'Mother', 'Permanent', 'A-9', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191010, 'Father', 'Mother', 'Permanent', 'A-10', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191011, 'Father', 'Mother', 'Permanent', 'A-11', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191012, 'Father', 'Mother', 'Permanent', 'A-12', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191013, 'Father', 'Mother', 'Permanent', 'A-13', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191014, 'Father', 'Mother', 'Permanent', 'A-14', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191015, 'Father', 'Mother', 'Permanent', 'A-15', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191016, 'Father', 'Mother', 'Permanent', 'A-16', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191017, 'Father', 'Mother', 'Permanent', 'A-17', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191018, 'Father', 'Mother', 'Permanent', 'A-18', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191019, 'Father', 'Mother', 'Permanent', 'A-19', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191020, 'Father', 'Mother', 'Permanent', 'A-20', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191021, 'Father', 'Mother', 'Permanent', 'A-21', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191022, 'Father', 'Mother', 'Permanent', 'A-22', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191023, 'Father', 'Mother', 'Permanent', 'A-23', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191024, 'Father', 'Mother', 'Permanent', 'A-24', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191025, 'Father', 'Mother', 'Permanent', 'A-25', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191026, 'Father', 'Mother', 'Permanent', 'A-26', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191027, 'Father', 'Mother', 'Permanent', 'A-27', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191028, 'Father', 'Mother', 'Permanent', 'A-28', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191029, 'Father', 'Mother', 'Permanent', 'A-29', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191030, 'Father', 'Mother', 'Permanent', 'A-30', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191031, 'Father', 'Mother', 'Permanent', 'A-31', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191032, 'Father', 'Mother', 'Permanent', 'A-32', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191033, 'Father', 'Mother', 'Permanent', 'A-33', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191034, 'Father', 'Mother', 'Permanent', 'A-34', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191035, 'Father', 'Mother', 'Permanent', 'A-35', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191036, 'Father', 'Mother', 'Permanent', 'A-36', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191037, 'Father', 'Mother', 'Permanent', 'A-37', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191038, 'Father', 'Mother', 'Permanent', 'A-38', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191039, 'Father', 'Mother', 'Permanent', 'A-39', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(30191040, 'Father', 'Mother', 'Permanent', 'A-40', 'ADDRESS_LINE_2', 'State', 100009, 'City', 9876543210),
(2019100, 'Teacher Father', 'Teacher Mother', 'Permanent', 'T-1', 'address2', 'State', 100001, 'City', 9012345678),
(2019101, 'Teacher Father', 'Teacher Mother', 'Permanent', 'T-2', 'ADDRESS_LINE_2', 'State', 100001, 'City', 9012345678),
(2019102, 'Teacher Father', 'Teacher Mother', 'Permanent', 'T-3', 'ADDRESS_LINE_2', 'State', 100001, 'City', 9012345678),
(2019103, 'Teacher Father', 'Teacher Mother', 'Permanent', 'T-4', 'ADDRESS_LINE_2', 'State', 100001, 'City', 9012345678),
(2019104, 'Teacher Father', 'Teacher Mother', 'Permanent', 'T-5', 'ADDRESS_LINE_2', 'State', 100001, 'City', 9012345678),
(2019105, 'Teacher Father', 'Teacher Mother', 'Permanent', 'T-6', 'ADDRESS_LINE_2', 'State', 100001, 'City', 9012345678),
(2019106, 'Teacher Father', 'Teacher Mother', 'Permanent', 'T-7', 'ADDRESS_LINE_2', 'State', 100001, 'City', 9012345678),
(2019107, 'Teacher Father', 'Teacher Mother', 'Permanent', 'T-8', 'ADDRESS_LINE_2', 'State', 100001, 'City', 9012345678),
(2019108, 'Teacher Father', 'Teacher Mother', 'Permanent', 'T-9', 'ADDRESS_LINE_2', 'State', 100001, 'City', 9012345678),
(2019109, 'Teacher Father', 'Teacher Mother', 'Permanent', 'T-10', 'ADDRESS_LINE_2', 'State', 100001, 'City', 9012345678),
(2019110, 'Teacher Father', 'Teacher Mother', 'Permanent', 'T-11', 'ADDRESS_LINE_2', 'State', 100001, 'City', 9012345678),
(1150, 'f', 'm', 'Home', 'erger', 'dsfd', 'Jalandhar', 144411, 'Punjab', 1478523690),
(30191041, 'Prem', '', 'temporary', 'India', 'India', 'Phagwara', 144411, 'Jalandhar', 9876543210),
(30191042, 'Papa', '', 'Permanent', 'Street1', 'Street2', 'Delhi', 123456, 'Noeda', 7896541230),
(30191043, 'Okay', '', 'Permanent', 'Okay', 'Okay', 'Okay', 144025, 'Just', 8427561676),
(30191044, 'Okay', '', 'Permanent', 'Information', 'Okay', 'Okay', 144025, 'Just', 8427561676),
(30191045, 'Okay', '', 'Permanent', 'I DA', 'Inda', 'Okay', 140025, 'Jaada and', 8427561676);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`A_ID`),
  ADD KEY `TEACHER_ID` (`REG_NO`),
  ADD KEY `TEACHER_ID_2` (`REG_NO`),
  ADD KEY `REG_NO` (`REG_NO`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `CLASS_ID` (`CLASS_MASTER_ID`),
  ADD KEY `TERM_ID` (`TERM_ID`),
  ADD KEY `SUBJECT_ID` (`SUBJECT_ID`),
  ADD KEY `REG_NO` (`REG_NO`);

--
-- Indexes for table `attendance_master`
--
ALTER TABLE `attendance_master`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `class_master`
--
ALTER TABLE `class_master`
  ADD PRIMARY KEY (`CLASS_MASTER_ID`);

--
-- Indexes for table `class_reg`
--
ALTER TABLE `class_reg`
  ADD KEY `CLASS_MASTER_ID` (`CLASS_MASTER_ID`),
  ADD KEY `SUBJECT_ID` (`SUBJECT_ID`),
  ADD KEY `CLASS_MASTER_ID_2` (`CLASS_MASTER_ID`),
  ADD KEY `SUBJECT_ID_2` (`SUBJECT_ID`);

--
-- Indexes for table `class_test_master`
--
ALTER TABLE `class_test_master`
  ADD PRIMARY KEY (`CLASS_TEST_ID`),
  ADD KEY `CLASS_MASTER_ID` (`CLASS_MASTER_ID`),
  ADD KEY `TERM_ID_2` (`TERM_ID`),
  ADD KEY `SUBJECT_ID_3` (`SUBJECT_ID`);

--
-- Indexes for table `class_test_table`
--
ALTER TABLE `class_test_table`
  ADD KEY `USER_ID` (`REG_NO`),
  ADD KEY `CLASS_TEST_ID` (`CLASS_TEST_ID`),
  ADD KEY `REG_NO` (`REG_NO`),
  ADD KEY `CLASS_TEST_ID_2` (`CLASS_TEST_ID`),
  ADD KEY `CLASS_TEST_ID_3` (`CLASS_TEST_ID`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`EVENT_ID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `REG_NO` (`REG_NO`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_classID` (`CLASS_MASTER_ID`),
  ADD KEY `fk_sujectID` (`SUBJECT_ID`),
  ADD KEY `fk_teacherID` (`REG_NO`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`MSG_ID`),
  ADD KEY `TEACHER_ID` (`SENDER`),
  ADD KEY `REG_NO` (`SENDER`),
  ADD KEY `RECIPIENT` (`RECIPIENT`);

--
-- Indexes for table `quiz_table`
--
ALTER TABLE `quiz_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `REG_NO` (`REG_NO`),
  ADD KEY `TERM_ID_2` (`TERM_ID`),
  ADD KEY `CLASS_MASTER_ID` (`CLASS_MASTER_ID`),
  ADD KEY `SUBJECT_ID` (`SUBJECT_ID`);

--
-- Indexes for table `rfshowbiz`
--
ALTER TABLE `rfshowbiz`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `session_master`
--
ALTER TABLE `session_master`
  ADD PRIMARY KEY (`SESSION_MASTER_ID`);

--
-- Indexes for table `student_class_reg`
--
ALTER TABLE `student_class_reg`
  ADD PRIMARY KEY (`REG_NO`),
  ADD KEY `CLASS_ID` (`CLASS_MASTER_ID`),
  ADD KEY `REG_NO` (`REG_NO`),
  ADD KEY `SESSION_MASTER_ID` (`SESSION_MASTER_ID`),
  ADD KEY `REG_NO_2` (`REG_NO`),
  ADD KEY `CLASS_MASTER_ID` (`CLASS_MASTER_ID`),
  ADD KEY `SESSION_MASTER_ID_2` (`SESSION_MASTER_ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SUBJECT_ID`),
  ADD UNIQUE KEY `SUBJECT_ID` (`SUBJECT_ID`);

--
-- Indexes for table `teacher_master`
--
ALTER TABLE `teacher_master`
  ADD PRIMARY KEY (`REG_NO`),
  ADD KEY `REG_NO` (`REG_NO`);

--
-- Indexes for table `teacher_table`
--
ALTER TABLE `teacher_table`
  ADD KEY `TEACHER_ID` (`REG_NO`),
  ADD KEY `SUBJECT_ID` (`SUBJECT_ID`),
  ADD KEY `SPEC_ID` (`REG_NO`),
  ADD KEY `USER_ID` (`REG_NO`),
  ADD KEY `REG_NO` (`REG_NO`),
  ADD KEY `SUBJECT_ID_2` (`SUBJECT_ID`);

--
-- Indexes for table `term_master`
--
ALTER TABLE `term_master`
  ADD PRIMARY KEY (`TERM_ID`),
  ADD KEY `SESSION_MASTER_ID` (`SESSION_MASTER_ID`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CLASS_ID` (`CLASS_MASTER_ID`),
  ADD KEY `SUBJECT_ID` (`SUBJECT_ID`),
  ADD KEY `CLASS_ID_2` (`CLASS_MASTER_ID`),
  ADD KEY `SUBJECT_ID_2` (`SUBJECT_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`REG_NO`),
  ADD UNIQUE KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD KEY `USER_ID` (`REG_NO`),
  ADD KEY `USER_ID_2` (`REG_NO`),
  ADD KEY `USER_ID_3` (`REG_NO`),
  ADD KEY `REG_NO` (`REG_NO`),
  ADD KEY `USER` (`REG_NO`),
  ADD KEY `USER_ID_4` (`REG_NO`),
  ADD KEY `REG_NO_2` (`REG_NO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `A_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `attendance_master`
--
ALTER TABLE `attendance_master`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_master`
--
ALTER TABLE `class_master`
  MODIFY `CLASS_MASTER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `class_test_master`
--
ALTER TABLE `class_test_master`
  MODIFY `CLASS_TEST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `EVENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `MSG_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quiz_table`
--
ALTER TABLE `quiz_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `rfshowbiz`
--
ALTER TABLE `rfshowbiz`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `session_master`
--
ALTER TABLE `session_master`
  MODIFY `SESSION_MASTER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `term_master`
--
ALTER TABLE `term_master`
  MODIFY `TERM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `USER_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1232;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcement`
--
ALTER TABLE `announcement`
  ADD CONSTRAINT `announcement_ibfk_1` FOREIGN KEY (`REG_NO`) REFERENCES `user` (`REG_NO`);

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`CLASS_MASTER_ID`) REFERENCES `class_master` (`CLASS_MASTER_ID`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`REG_NO`) REFERENCES `user` (`REG_NO`),
  ADD CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`SUBJECT_ID`) REFERENCES `subject` (`SUBJECT_ID`),
  ADD CONSTRAINT `attendance_ibfk_4` FOREIGN KEY (`TERM_ID`) REFERENCES `term_master` (`TERM_ID`);

--
-- Constraints for table `class_reg`
--
ALTER TABLE `class_reg`
  ADD CONSTRAINT `class_reg_ibfk_2` FOREIGN KEY (`SUBJECT_ID`) REFERENCES `subject` (`SUBJECT_ID`),
  ADD CONSTRAINT `class_reg_ibfk_3` FOREIGN KEY (`CLASS_MASTER_ID`) REFERENCES `class_master` (`CLASS_MASTER_ID`);

--
-- Constraints for table `class_test_master`
--
ALTER TABLE `class_test_master`
  ADD CONSTRAINT `class_test_master_ibfk_2` FOREIGN KEY (`SUBJECT_ID`) REFERENCES `subject` (`SUBJECT_ID`),
  ADD CONSTRAINT `class_test_master_ibfk_4` FOREIGN KEY (`CLASS_MASTER_ID`) REFERENCES `class_master` (`CLASS_MASTER_ID`);

--
-- Constraints for table `class_test_table`
--
ALTER TABLE `class_test_table`
  ADD CONSTRAINT `class_test_table_ibfk_1` FOREIGN KEY (`REG_NO`) REFERENCES `user` (`REG_NO`),
  ADD CONSTRAINT `class_test_table_ibfk_2` FOREIGN KEY (`CLASS_TEST_ID`) REFERENCES `class_test_master` (`CLASS_TEST_ID`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`REG_NO`) REFERENCES `user` (`REG_NO`);

--
-- Constraints for table `homework`
--
ALTER TABLE `homework`
  ADD CONSTRAINT `fk_classID` FOREIGN KEY (`CLASS_MASTER_ID`) REFERENCES `class_master` (`CLASS_MASTER_ID`),
  ADD CONSTRAINT `fk_sujectID` FOREIGN KEY (`SUBJECT_ID`) REFERENCES `subject` (`SUBJECT_ID`),
  ADD CONSTRAINT `fk_teacherID` FOREIGN KEY (`REG_NO`) REFERENCES `user` (`REG_NO`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`SENDER`) REFERENCES `user` (`REG_NO`),
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`RECIPIENT`) REFERENCES `user` (`REG_NO`);

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`REG_NO`) REFERENCES `user` (`REG_NO`),
  ADD CONSTRAINT `result_ibfk_3` FOREIGN KEY (`CLASS_MASTER_ID`) REFERENCES `class_master` (`CLASS_MASTER_ID`),
  ADD CONSTRAINT `result_ibfk_4` FOREIGN KEY (`SUBJECT_ID`) REFERENCES `subject` (`SUBJECT_ID`),
  ADD CONSTRAINT `result_ibfk_5` FOREIGN KEY (`TERM_ID`) REFERENCES `term_master` (`TERM_ID`);

--
-- Constraints for table `student_class_reg`
--
ALTER TABLE `student_class_reg`
  ADD CONSTRAINT `student_class_reg_ibfk_2` FOREIGN KEY (`REG_NO`) REFERENCES `user` (`REG_NO`),
  ADD CONSTRAINT `student_class_reg_ibfk_4` FOREIGN KEY (`CLASS_MASTER_ID`) REFERENCES `class_master` (`CLASS_MASTER_ID`);

--
-- Constraints for table `teacher_master`
--
ALTER TABLE `teacher_master`
  ADD CONSTRAINT `teacher_master_ibfk_1` FOREIGN KEY (`REG_NO`) REFERENCES `user` (`REG_NO`);

--
-- Constraints for table `teacher_table`
--
ALTER TABLE `teacher_table`
  ADD CONSTRAINT `teacher_table_ibfk_1` FOREIGN KEY (`REG_NO`) REFERENCES `user` (`REG_NO`),
  ADD CONSTRAINT `teacher_table_ibfk_2` FOREIGN KEY (`SUBJECT_ID`) REFERENCES `subject` (`SUBJECT_ID`);

--
-- Constraints for table `time_table`
--
ALTER TABLE `time_table`
  ADD CONSTRAINT `time_table_ibfk_2` FOREIGN KEY (`SUBJECT_ID`) REFERENCES `subject` (`SUBJECT_ID`),
  ADD CONSTRAINT `time_table_ibfk_3` FOREIGN KEY (`CLASS_MASTER_ID`) REFERENCES `class_master` (`CLASS_MASTER_ID`);

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`REG_NO`) REFERENCES `user` (`REG_NO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
