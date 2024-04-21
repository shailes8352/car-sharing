-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2023 at 04:52 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carsharing`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `bid` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `dlno` varchar(20) NOT NULL,
  `address` longtext NOT NULL,
  `locfrom` varchar(100) NOT NULL,
  `locto` varchar(100) NOT NULL,
  `datefrom` varchar(50) NOT NULL,
  `dateto` varchar(50) NOT NULL,
  `bdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `bid`, `name`, `mobile`, `email`, `dlno`, `address`, `locfrom`, `locto`, `datefrom`, `dateto`, `bdate`) VALUES
(1, '1391', 'Rakesh Kumar', '7858965456', 'rakesh@gmail.com', 'abcd12345678', 'Ranchi jah', 'Ranchi', 'Bokaro', '2023-04-20', '2023-04-22', '2023-04-19 02:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `vehicleowner`
--

CREATE TABLE `vehicleowner` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `vehicleno` varchar(30) NOT NULL,
  `ryear` varchar(15) NOT NULL,
  `dlno` varchar(15) NOT NULL,
  `address` longtext NOT NULL,
  `rdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicleowner`
--

INSERT INTO `vehicleowner` (`id`, `name`, `email`, `mobile`, `vehicleno`, `ryear`, `dlno`, `address`, `rdate`) VALUES
(1, 'Ram Kumar', 'ramkumar@gmail.com', '8964562563', 'jh01hk0012', '2020', 'acd123565452', 'Ranchi Jharkhand ', '2023-04-19 02:51:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicleowner`
--
ALTER TABLE `vehicleowner`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicleowner`
--
ALTER TABLE `vehicleowner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
