-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 25, 2018 at 04:55 PM
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

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `p_c_u`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_c_u` (IN `total` INT)  begin
update packages
set p_cost=(1.18*p_cost);
end$$

DELIMITER ;

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

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
CREATE TABLE IF NOT EXISTS `games` (
  `g_id` varchar(5) NOT NULL,
  `g_name` varchar(30) DEFAULT NULL,
  `g_op_time` varchar(20) DEFAULT NULL,
  `m_p_w` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`g_id`, `g_name`, `g_op_time`, `m_p_w`) VALUES
('D001', 'Roller Coaster', '11:00am-6:00pm', '2'),
('D002', 'Maverick', '11:00am-5:30pm', '1'),
('D003', 'Y-Scream', '11:00am-5:30pm', '2'),
('D004', 'Giant Wheel', '11:00am-6:30pm', '4'),
('D005', 'Insanity', '11:00am-6:00pm', '2'),
('D006', 'Mixer', '11:00am-5:30pm', '3'),
('W001', 'Water Pendulum', '12:30pm-5:30pm', '1'),
('W002', 'Wave Pool', '12:30pm-4:30pm', '7'),
('W003', 'Rain Disco', '12:30pm-4:30pm', '7'),
('W004', 'Lazy Pool', '12:30pm-6:30pm', '7'),
('W005', 'Water Slides', '12:30pm-5:30pm', '3'),
('W006', 'Wonder Splash', '12:30pm-5:30pm', '4');

-- --------------------------------------------------------

--
-- Table structure for table `lockers`
--

DROP TABLE IF EXISTS `lockers`;
CREATE TABLE IF NOT EXISTS `lockers` (
  `l_id` varchar(4) NOT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lockers`
--

INSERT INTO `lockers` (`l_id`) VALUES
('L01'),
('L02'),
('L03'),
('L04'),
('L05'),
('L06'),
('L07'),
('L08'),
('L09'),
('L10'),
('L11'),
('L12'),
('L13'),
('L14'),
('L15');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
CREATE TABLE IF NOT EXISTS `packages` (
  `p_id` varchar(5) NOT NULL,
  `p_name` varchar(30) DEFAULT NULL,
  `p_cost` int(11) DEFAULT NULL,
  `p_age_range` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`p_id`, `p_name`, `p_cost`, `p_age_range`) VALUES
('CHM01', 'Happy Child', 400, '7y-15y'),
('DA001', 'Dry Thrill', 650, '16y-60y'),
('DWC01', 'Mixed Masti', 1200, '16y-65y'),
('WA001', 'Water Wonder', 780, '16y-70y');

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
CREATE TABLE IF NOT EXISTS `phone` (
  `v_id` int(11) NOT NULL,
  `v_phno` bigint(20) NOT NULL,
  PRIMARY KEY (`v_phno`,`v_id`),
  KEY `v_id` (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`v_id`, `v_phno`) VALUES
(1, 9845843245),
(1, 9900270073),
(2, 8296883911),
(3, 8951807988),
(4, 8277612900),
(4, 8951812900),
(5, 7975062913);

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
-- Constraints for table `combines_into`
--
ALTER TABLE `combines_into`
  ADD CONSTRAINT `combines_into_ibfk_1` FOREIGN KEY (`g_id`) REFERENCES `games` (`g_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `combines_into_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `packages` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`v_id`) REFERENCES `visitors` (`v_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `visitors`
--
ALTER TABLE `visitors`
  ADD CONSTRAINT `visitors_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `packages` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `visitors_ibfk_2` FOREIGN KEY (`l_id`) REFERENCES `lockers` (`l_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `workers`
--
ALTER TABLE `workers`
  ADD CONSTRAINT `workers_ibfk_1` FOREIGN KEY (`g_id`) REFERENCES `games` (`g_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
