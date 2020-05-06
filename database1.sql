-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 08:49 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database1`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_ID` int(11) NOT NULL,
  `appointment_Code` varchar(45) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `visit_ID` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_ID`, `appointment_Code`, `patient_id`, `visit_ID`, `status`) VALUES
(3, 'update', 18, 'updat', 'updatd'),
(4, '100', 100, '56', 'v104'),
(5, 'AC101', 10, 'v101', 'not-available'),
(6, 'AC102', 12, 'v102', 'not-available'),
(7, 'AC103', 13, 'v103', 'available'),
(8, 'AC104', 14, 'v104', 'available'),
(9, '105', 105, '15', 'v105'),
(10, 'AC106', 16, 'v106', 'available'),
(11, 'AC207', 27, 'V207', 'available'),
(12, '440', 440, '1121', 'V21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
