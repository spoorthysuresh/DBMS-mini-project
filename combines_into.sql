-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 25, 2018 at 04:59 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amusementpark`
--

-- --------------------------------------------------------

--
-- Table structure for table `combines_into`
--

DROP TABLE IF EXISTS `combines_into`;
CREATE TABLE IF NOT EXISTS `combines_into` (
  `g_id` varchar(5) NOT NULL,
  `p_id` varchar(5) NOT NULL,
  PRIMARY KEY (`g_id`,`p_id`),
  KEY `p_id` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `combines_into`
--

INSERT INTO `combines_into` (`g_id`, `p_id`) VALUES
('D004', 'CHM01'),
('W004', 'CHM01'),
('W005', 'CHM01'),
('W006', 'CHM01'),
('D001', 'DA001'),
('D002', 'DA001'),
('D003', 'DA001'),
('D004', 'DA001'),
('D005', 'DA001'),
('D006', 'DA001'),
('D001', 'DWC01'),
('D002', 'DWC01'),
('D003', 'DWC01'),
('D005', 'DWC01'),
('D006', 'DWC01'),
('W001', 'DWC01'),
('W002', 'DWC01'),
('W003', 'DWC01'),
('W005', 'DWC01'),
('W006', 'DWC01'),
('W001', 'WA001'),
('W002', 'WA001'),
('W003', 'WA001'),
('W004', 'WA001'),
('W005', 'WA001'),
('W006', 'WA001');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `combines_into`
--
ALTER TABLE `combines_into`
  ADD CONSTRAINT `combines_into_ibfk_1` FOREIGN KEY (`g_id`) REFERENCES `games` (`g_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `combines_into_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `packages` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
