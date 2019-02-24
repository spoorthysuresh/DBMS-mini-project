-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 25, 2018 at 05:02 PM
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
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
CREATE TABLE IF NOT EXISTS `workers` (
  `w_id` varchar(5) NOT NULL,
  `w_name` varchar(30) NOT NULL,
  `w_age` int(3) NOT NULL,
  `w_sal` int(5) NOT NULL,
  `g_id` varchar(5) NOT NULL,
  PRIMARY KEY (`w_id`,`g_id`),
  KEY `g_id` (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workers`
--

INSERT INTO `workers` (`w_id`, `w_name`, `w_age`, `w_sal`, `g_id`) VALUES
('gw01', 'Narayana', 37, 18000, 'D001'),
('gw01', 'Narayana', 37, 18000, 'D003'),
('gw01', 'Narayana', 37, 18000, 'D005'),
('gw02', 'Joseph', 34, 17000, 'D002'),
('gw02', 'Joseph', 34, 17000, 'W001'),
('gw03', 'Sharif', 41, 16000, 'D004'),
('gw03', 'Sharif', 41, 16000, 'W006'),
('gw04', 'Madesha', 43, 26000, 'W002'),
('gw04', 'Madesha', 43, 26000, 'W003'),
('gw04', 'Madesha', 43, 26000, 'W004'),
('gw05', 'Ravi', 52, 24000, 'D006'),
('gw05', 'Ravi', 52, 24000, 'W005');

--
-- Triggers `workers`
--
DROP TRIGGER IF EXISTS `wsalari`;
DELIMITER $$
CREATE TRIGGER `wsalari` BEFORE INSERT ON `workers` FOR EACH ROW begin
if NEW.w_sal<10000 then
set new.w_sal=12000;
elseif new.w_sal>30000 then
set new.w_sal=30000;
end if;
end
$$
DELIMITER ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `workers`
--
ALTER TABLE `workers`
  ADD CONSTRAINT `workers_ibfk_1` FOREIGN KEY (`g_id`) REFERENCES `games` (`g_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
