-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 17, 2024 at 04:42 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `email` varchar(120) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `password` varchar(8) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('m','f','o') NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`email`, `firstname`, `lastname`, `password`, `dob`, `gender`, `Created_at`) VALUES
('xyz@gmail.com', 'Anushka', 'Singh', '786765', '2006-01-16', '', '2024-12-17 16:24:23'),
('yz@gmail.com', 'Anushka', 'Singh', '8w64', '2007-01-15', '', '2024-12-17 16:31:31');

-- --------------------------------------------------------

--
-- Table structure for table `signup1`
--

DROP TABLE IF EXISTS `signup1`;
CREATE TABLE IF NOT EXISTS `signup1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `signup1`
--

INSERT INTO `signup1` (`id`, `username`, `password`) VALUES
(1, 'rywue_12', '$2y$10$x'),
(2, 'hgfgytw12', '$2y$10$B'),
(3, 'hgfgytw12', '1234565'),
(4, 'hgfgytw12', '123456'),
(5, 'qwrrt12', '09877u'),
(6, 'prashant12', 'yuioyey');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
