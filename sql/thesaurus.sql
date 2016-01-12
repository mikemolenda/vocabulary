-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 24, 2015 at 10:07 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2-log
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thesaurus`
--

-- --------------------------------------------------------

--
-- Table structure for table `Senses`
--

CREATE TABLE IF NOT EXISTS `Senses` (
  `sense_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sense` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sense_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `Senses`
--

INSERT INTO `Senses` (`sense_id`, `sense`) VALUES
(1, 'n. Brief travel on foot'),
(2, 'n. Pathway'),
(3, 'v. Move along on foot'),
(4, 'n. Sheet of paper'),
(5, 'n. Person who serves others'),
(6, 'v. Call for over intercom'),
(7, 'v. Restrain'),
(8, 'n. Glass container for liquids'),
(9, 'v. Preserve');

-- --------------------------------------------------------

--
-- Table structure for table `Words`
--

CREATE TABLE IF NOT EXISTS `Words` (
  `word` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Words`
--

INSERT INTO `Words` (`word`) VALUES
('ambulate'),
('announce'),
('attendant'),
('bottle'),
('carafe'),
('control'),
('decanter'),
('errand boy'),
('flagon'),
('hike'),
('jaunt'),
('keep'),
('leaf'),
('page'),
('path'),
('put up'),
('repress'),
('seek'),
('sidewalk'),
('stroll'),
('walk');

-- --------------------------------------------------------

--
-- Table structure for table `WordSenses`
--

CREATE TABLE IF NOT EXISTS `WordSenses` (
  `word` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sense_id` int(10) NOT NULL,
  PRIMARY KEY (`word`,`sense_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `WordSenses`
--

INSERT INTO `WordSenses` (`word`, `sense_id`) VALUES
('ambulate', 3),
('announce', 6),
('attendant', 5),
('bottle', 7),
('bottle', 8),
('bottle', 9),
('carafe', 8),
('control', 7),
('decanter', 8),
('errand boy', 5),
('flagon', 8),
('hike', 1),
('jaunt', 1),
('keep', 9),
('leaf', 4),
('page', 4),
('page', 5),
('page', 6),
('path', 2),
('put up', 9),
('repress', 7),
('seek', 6),
('sidewalk', 2),
('stroll', 1),
('walk', 1),
('walk', 2),
('walk', 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
