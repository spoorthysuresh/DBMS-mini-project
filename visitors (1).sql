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
-- Table structure for table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
CREATE TABLE IF NOT EXISTS `visitors` (
  `v_id` int(11) NOT NULL,
  `v_name` varchar(30) NOT NULL,
  `v_age` varchar(2) NOT NULL,
  `ch_in_time` varchar(10) NOT NULL,
  `p_id` varchar(5) NOT NULL,
  `l_id` varchar(4) NOT NULL,
  PRIMARY KEY (`v_id`),
  KEY `p_id` (`p_id`),
  KEY `l_id` (`l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`v_id`, `v_name`, `v_age`, `ch_in_time`, `p_id`, `l_id`) VALUES
(1, 'Sneha', '23', '10:30am', 'DWC01', 'L04'),
(2, 'Vijay', '34', '11:00am', 'DA001', 'L01'),
(3, 'Krishna', '11', '10:30am', 'CHM01', 'L03'),
(4, 'Francis', '28', '11:00am', 'WA001', 'L11'),
(5, 'Srushti', '29', '10:30am', 'DWC01', 'L05');

--
-- Triggers `visitors`
--
DROP TRIGGER IF EXISTS `agecheck`;
DELIMITER $$
CREATE TRIGGER `agecheck` BEFORE INSERT ON `visitors` FOR EACH ROW begin
if NEW.v_age<16 then
set new.p_id='CHM01';
end if;
end
$$
DELIMITER ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `visitors`
--
ALTER TABLE `visitors`
  ADD CONSTRAINT `visitors_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `packages` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `visitors_ibfk_2` FOREIGN KEY (`l_id`) REFERENCES `lockers` (`l_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
