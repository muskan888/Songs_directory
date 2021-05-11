-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2021 at 03:20 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `songs_directory`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `Album id` varchar(10) NOT NULL,
  `Album name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`Album id`, `Album name`) VALUES
('album1', 'Hello'),
('album2', 'bye');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `Artist id` varchar(10) NOT NULL,
  `Artist name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`Artist id`, `Artist name`) VALUES
('A1', 'Sonu Nigam'),
('A2', 'Shreya Ghoshal');

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `Name` text NOT NULL,
  `Duration` int(11) NOT NULL,
  `Year of release` int(11) NOT NULL,
  `Album id` varchar(11) NOT NULL,
  `Artist id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`Name`, `Duration`, `Year of release`, `Album id`, `Artist id`) VALUES
('sonu', 3, 2009, 'album1', 'A1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`Album id`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`Artist id`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD UNIQUE KEY `Year of release` (`Album id`),
  ADD UNIQUE KEY `Duration(in seconds)` (`Artist id`),
  ADD UNIQUE KEY `Artist id` (`Artist id`),
  ADD UNIQUE KEY `Album id` (`Album id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `song_ibfk_1` FOREIGN KEY (`Album id`) REFERENCES `album` (`Album id`),
  ADD CONSTRAINT `song_ibfk_2` FOREIGN KEY (`Artist id`) REFERENCES `artist` (`Artist id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
