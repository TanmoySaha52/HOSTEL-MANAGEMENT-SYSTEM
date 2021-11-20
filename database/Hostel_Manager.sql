-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 23, 2021 at 02:46 PM
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
-- Database: `id16370416_hostel_management_system`
--

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Hostel_Manager`
--
ALTER TABLE `Hostel_Manager`
  ADD PRIMARY KEY (`Hostel_man_id`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Hostel_Manager`
--
ALTER TABLE `Hostel_Manager`
  MODIFY `Hostel_man_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123458;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Hostel_Manager`
--
ALTER TABLE `Hostel_Manager`
  ADD CONSTRAINT `Hostel_Manager_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `Hostel` (`Hostel_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
