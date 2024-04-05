-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 04, 2024 at 10:36 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatty`
--

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `ID` int(11) NOT NULL,
  `fName` char(99) NOT NULL,
  `lName` char(99) NOT NULL,
  `email` char(99) NOT NULL,
  `phonenum` int(10) NOT NULL,
  `sex` char(10) NOT NULL,
  `dob` date NOT NULL,
  `Country` char(99) NOT NULL,
  `username` char(99) NOT NULL,
  `password` char(99) NOT NULL,
  `online` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`ID`, `fName`, `lName`, `email`, `phonenum`, `sex`, `dob`, `Country`, `username`, `password`, `online`) VALUES
(4, 'Vansh', 'Kanjani', 'Vanshkumarkanjani@gmail.com', 2147483647, 'Male', '2003-06-06', 'IN', 'Vansh', 'H123', 1),
(5, 'Hirak', 'Modi', 'hirakmodi26@gmail.com', 2147483647, 'Male', '2003-06-06', 'IN', 'Hirak', 'M123', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `phonenum` (`phonenum`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
