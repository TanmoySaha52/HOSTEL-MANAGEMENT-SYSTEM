-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 23, 2021 at 02:15 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `Application`
--

CREATE TABLE `Application` (
  `Application_id` int(100) NOT NULL,
  `Student_id` varchar(255) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Application_status` tinyint(1) DEFAULT NULL,
  `Room_No` int(10) DEFAULT NULL,
  `Message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Application`
--

INSERT INTO `Application` (`Application_id`, `Student_id`, `Hostel_id`, `Application_status`, `Room_No`, `Message`) VALUES
(5, '30701018021', 2, 0, 10, 'amay ektu jayga dao '),
(6, '12345', 1, 0, 12, 'Hello fuck off'),
(7, '30701018054', 1, 0, 15, 'laganor jonno jaiga chai..');

-- --------------------------------------------------------

--
-- Table structure for table `Hostel`
--

CREATE TABLE `Hostel` (
  `Hostel_id` int(10) NOT NULL,
  `Hostel_name` varchar(255) NOT NULL,
  `current_no_of_rooms` varchar(255) DEFAULT NULL,
  `No_of_rooms` varchar(255) DEFAULT NULL,
  `No_of_students` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Hostel`
--

INSERT INTO `Hostel` (`Hostel_id`, `Hostel_name`, `current_no_of_rooms`, `No_of_rooms`, `No_of_students`) VALUES
(1, 'A', NULL, '400', NULL),
(2, 'B', NULL, '400', NULL),
(3, 'C', NULL, '400', NULL),
(4, 'D', NULL, '400', NULL),
(5, 'E', NULL, '400', NULL),
(6, 'F', NULL, '400', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Hostel_Manager`
--

CREATE TABLE `Hostel_Manager` (
  `Hostel_man_id` int(10) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Mob_no` varchar(255) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Pwd` longtext NOT NULL,
  `Isadmin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Hostel_Manager`
--

INSERT INTO `Hostel_Manager` (`Hostel_man_id`, `Username`, `Fname`, `Lname`, `Mob_no`, `Hostel_id`, `Pwd`, `Isadmin`) VALUES
(1, 'man1', 'Tanisha', 'Kumar', '9876543210', 2, '$2y$10$pvNQdTp0AlhjI3Vp6vzCMuL8k1B3U7ALpycTpkEI03npyHrlG6n8u', 0),
(2, 'man2', 'Manager', 'A', '9876543210', 1, '$2y$10$pvNQdTp0AlhjI3Vp6vzCMuL8k1B3U7ALpycTpkEI03npyHrlG6n8u', 0),
(3, 'man3', 'Arpan', 'Saha', '9999999999', 3, '$2y$10$pvNQdTp0AlhjI3Vp6vzCMuL8k1B3U7ALpycTpkEI03npyHrlG6n8u', 0),
(4, 'man4', 'Sayantan', 'Banerjee', '1234567890', 4, '$2y$10$pvNQdTp0AlhjI3Vp6vzCMuL8k1B3U7ALpycTpkEI03npyHrlG6n8u', 0),
(5, 'man5', 'Sonali', 'Santra', '9876000000', 5, '$2y$10$pvNQdTp0AlhjI3Vp6vzCMuL8k1B3U7ALpycTpkEI03npyHrlG6n8u', 0),
(6, 'man6', 'Tanmoy', 'Saha', '9999900000', 6, '$2y$10$pvNQdTp0AlhjI3Vp6vzCMuL8k1B3U7ALpycTpkEI03npyHrlG6n8u', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Message`
--

CREATE TABLE `Message` (
  `msg_id` int(10) NOT NULL,
  `sender_id` varchar(255) DEFAULT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `hostel_id` int(10) DEFAULT NULL,
  `subject_h` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `msg_date` varchar(255) DEFAULT NULL,
  `msg_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Message`
--

INSERT INTO `Message` (`msg_id`, `sender_id`, `receiver_id`, `hostel_id`, `subject_h`, `message`, `msg_date`, `msg_time`) VALUES
(6, '12345', '', 2, 'mca', 'i have a problem fan not working', '2021-03-14', '02:32 PM'),
(7, '12345', '', 1, 'mca', 'hello ', '2021-03-14', '02:34 PM'),
(8, '2', '12345', 1, 'mca', 'hello student', '2021-03-14', '02:35 PM'),
(9, '12345', '', 1, 'mca', 'hello maam ', '2021-03-14', '02:42 PM'),
(10, '2', '12345', 1, 'mca', 'hello student what is your problem ', '2021-03-14', '02:43 PM'),
(11, '12345', '2', 1, 'mca', 'hii', '2021-03-15', '09:01 AM'),
(12, '2', '12345', 1, 'mca', 'hello tanmoy...', '2021-03-15', '09:06 AM');

-- --------------------------------------------------------

--
-- Table structure for table `Room`
--

CREATE TABLE `Room` (
  `Room_id` int(10) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Room_No` int(10) NOT NULL,
  `Allocated` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Room`
--

INSERT INTO `Room` (`Room_id`, `Hostel_id`, `Room_No`, `Allocated`) VALUES
(1, 2, 10, 1),
(2, 1, 15, 1),
(3, 3, 17, 0),
(4, 4, 19, 0),
(5, 5, 5, 0),
(6, 6, 7, 0),
(7, 1, 12, 1),
(8, 2, 25, 0),
(9, 3, 24, 0),
(10, 4, 2, 0),
(11, 5, 4, 0),
(12, 6, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `Student_id` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Mob_no` varchar(255) NOT NULL,
  `Dept` varchar(255) NOT NULL,
  `Year_of_study` varchar(255) NOT NULL,
  `Pwd` longtext NOT NULL,
  `Hostel_id` int(10) DEFAULT NULL,
  `Room_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Student`
--

INSERT INTO `Student` (`Student_id`, `Fname`, `Lname`, `Mob_no`, `Dept`, `Year_of_study`, `Pwd`, `Hostel_id`, `Room_id`) VALUES
('12345', 'abcd', 'def', '9999999990', 'mca', '2021', '$2y$10$ux49ZtF5FaF5cP46BSNP4u5YbY1A6Wea.A5dM0JlBVTtfgM/TDP2u', 1, 7),
('30701018021', 'Sayantan', 'Banerjee', '7980678276', 'MCA', '2018', '$2y$10$2Igft3AEU5jVOgsBIWT1huYcw/xqQ6bv.i2faXv/3DCjL4zU9Gf8y', 2, 1),
('30701018054', 'ARPAN', 'SAHA', '1097', 'SEXOLOGY', '2018', '$2y$10$pKmCXlDHBr5JEo8sU/Ocpupm0lhZnrEsyq2HoJlsge2fv4HAVWEbW', 1, 2),
('s1', 'test', 'case', '9999999991', 'mca', '2021', '$2y$10$pvNQdTp0AlhjI3Vp6vzCMuL8k1B3U7ALpycTpkEI03npyHrlG6n8u', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Application`
--
ALTER TABLE `Application`
  ADD PRIMARY KEY (`Application_id`),
  ADD KEY `Student_id` (`Student_id`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `Hostel`
--
ALTER TABLE `Hostel`
  ADD PRIMARY KEY (`Hostel_id`);

--
-- Indexes for table `Hostel_Manager`
--
ALTER TABLE `Hostel_Manager`
  ADD PRIMARY KEY (`Hostel_man_id`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `Message`
--
ALTER TABLE `Message`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `hostel_id` (`hostel_id`);

--
-- Indexes for table `Room`
--
ALTER TABLE `Room`
  ADD PRIMARY KEY (`Room_id`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`Student_id`),
  ADD KEY `Hostel_id` (`Hostel_id`),
  ADD KEY `Room_id` (`Room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Application`
--
ALTER TABLE `Application`
  MODIFY `Application_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Hostel`
--
ALTER TABLE `Hostel`
  MODIFY `Hostel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Hostel_Manager`
--
ALTER TABLE `Hostel_Manager`
  MODIFY `Hostel_man_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123458;

--
-- AUTO_INCREMENT for table `Message`
--
ALTER TABLE `Message`
  MODIFY `msg_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Room`
--
ALTER TABLE `Room`
  MODIFY `Room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Application`
--
ALTER TABLE `Application`
  ADD CONSTRAINT `Application_ibfk_1` FOREIGN KEY (`Student_id`) REFERENCES `Student` (`Student_id`),
  ADD CONSTRAINT `Application_ibfk_2` FOREIGN KEY (`Hostel_id`) REFERENCES `Hostel` (`Hostel_id`);

--
-- Constraints for table `Hostel_Manager`
--
ALTER TABLE `Hostel_Manager`
  ADD CONSTRAINT `Hostel_Manager_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `Hostel` (`Hostel_id`);

--
-- Constraints for table `Message`
--
ALTER TABLE `Message`
  ADD CONSTRAINT `Message_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `Hostel` (`Hostel_id`);

--
-- Constraints for table `Room`
--
ALTER TABLE `Room`
  ADD CONSTRAINT `Room_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `Hostel` (`Hostel_id`);

--
-- Constraints for table `Student`
--
ALTER TABLE `Student`
  ADD CONSTRAINT `Student_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `Hostel` (`Hostel_id`),
  ADD CONSTRAINT `Student_ibfk_2` FOREIGN KEY (`Room_id`) REFERENCES `Room` (`Room_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
