-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 16, 2023 at 01:00 PM
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
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `billno` int(10) NOT NULL,
  `name` varchar(35) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `adharno` bigint(20) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `date` varchar(15) NOT NULL,
  `roomno` int(4) NOT NULL,
  `roomtyp` varchar(30) NOT NULL,
  `chkin` varchar(11) NOT NULL,
  `chkout` varchar(11) NOT NULL,
  `price` int(10) NOT NULL,
  `stotal` int(10) NOT NULL,
  `taxrate` varchar(3) NOT NULL,
  `taxvalue` int(3) NOT NULL,
  `total` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`billno`, `name`, `phone`, `adharno`, `emailid`, `date`, `roomno`, `roomtyp`, `chkin`, `chkout`, `price`, `stotal`, `taxrate`, `taxvalue`, `total`) VALUES
(201, 'shruti', 9909313463, 123456789012, 'shruti@gmail.com', '31-08-2023', 105, 'Suite', '01-08-2023', '03-08-2023', 8000, 16000, '6%', 960, 16960),
(202, 'dfv', 9898767654, 98765432112, 'kjb@gmail.com', '31-08-2023', 101, 'Single Bed', '03-08-2023', '06-08-2023', 1000, 3000, '6%', 180, 3180),
(203, 'abc', 9601423773, 987654321342, 'jnd@gmail.com', '31-08-2023', 102, 'Double Bed', '03-08-2023', '04-08-2023', 2000, 2000, '6%', 120, 2120);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `cstid` bigint(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `adharcard` bigint(30) NOT NULL,
  `roomtyp` varchar(40) NOT NULL,
  `roomno` int(4) NOT NULL,
  `chkin` varchar(10) NOT NULL,
  `chkout` varchar(10) NOT NULL,
  `price` int(10) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cstid`, `name`, `phone`, `adharcard`, `roomtyp`, `roomno`, `chkin`, `chkout`, `price`, `email`) VALUES
(1, 'shruti', 9909313463, 123456789012, 'Suite', 105, '01-08-2023', '03-08-2023', 8000, 'shruti@gmail.com'),
(2, 'abc', 9601423773, 987654321342, 'Double Bed', 102, '03-08-2023', '04-08-2023', 2000, 'jnd@gmail.com'),
(3, 'dfv', 9898767654, 98765432112, 'Single Bed', 101, '03-08-2023', '06-08-2023', 1000, 'kjb@gmail.com'),
(4, 'gtu', 9898767659, 98765432112, 'Single Bed', 101, '03-08-2023', '06-08-2023', 1000, 'kjb@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `empid` int(15) NOT NULL,
  `name` varchar(35) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `bdate` varchar(10) NOT NULL,
  `phone` bigint(30) NOT NULL,
  `adharcard` bigint(30) NOT NULL,
  `address` varchar(60) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `qualification` varchar(20) NOT NULL,
  `job` varchar(20) NOT NULL,
  `joiningdate` varchar(10) NOT NULL,
  `salary` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empid`, `name`, `gender`, `bdate`, `phone`, `adharcard`, `address`, `emailid`, `qualification`, `job`, `joiningdate`, `salary`) VALUES
(3, 'ffff', 'female', '01-08-2023', 9601423773, 123456789012, 'kjef', 'hjh@gmail.com', 'bca', 'Receptionist', '09-08-2023', 999),
(4, 'dwq', 'male', '10-08-2023', 9909313245, 274123456789, 'dfw', 'jerf@g', 'nf', 'Receptionist', '24-08-2023', 999),
(2, 'abc', 'female', '01-08-2023', 9909313477, 123456789012, 'kjef', 'hjh@gmail.com', 'bca', 'Receptionist', '09-08-2023', 999),
(1, 'shruti', 'female', '01-08-2023', 9909313463, 123456789012, 'kjef', 'hjh@gmail.com', 'bca', 'Receptionist', '09-08-2023', 999);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `roomno` int(3) NOT NULL,
  `status` varchar(15) NOT NULL,
  `price` int(5) NOT NULL,
  `roomtyp` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomno`, `status`, `price`, `roomtyp`) VALUES
(103, 'Available', 3000, 'Triple Bed'),
(102, 'Available', 2000, 'Double Bed'),
(101, 'Available', 1000, 'Single Bed'),
(104, 'Available', 5000, 'King Room'),
(105, 'Not-Available', 8000, 'Single Bed'),
(106, 'Available', 8000, 'Suite'),
(107, 'Available', 8000, 'Suite');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('Shruti', 'Grace11');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
