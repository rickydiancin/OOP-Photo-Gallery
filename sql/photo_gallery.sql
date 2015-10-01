-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 01, 2015 at 05:27 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `photo_gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
`id` int(11) NOT NULL,
  `photograph_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `author` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `photograph_id`, `created`, `author`, `body`) VALUES
(1, 1, '2009-01-01 11:30:39', 'Kevin', 'I love this picture!'),
(5, 5, '2009-01-01 20:46:39', 'Doug', 'Pretty flowers.'),
(6, 5, '2009-01-01 21:08:58', 'Mary', 'I like them too.'),
(7, 10, '2015-09-17 04:11:18', 'Wiki', 'nice...'),
(8, 4, '2015-09-17 07:40:54', 'Jane', 'Nice Photo');

-- --------------------------------------------------------

--
-- Table structure for table `photographs`
--

CREATE TABLE IF NOT EXISTS `photographs` (
`id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `size` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photographs`
--

INSERT INTO `photographs` (`id`, `filename`, `type`, `size`, `caption`) VALUES
(4, 'roof.jpg', 'image/jpeg', 322870, 'Roof'),
(5, 'flowers.jpg', 'image/jpeg', 394552, 'Flowers'),
(6, 'buddhas.jpg', 'image/jpeg', 261152, 'Buddhas'),
(7, 'wall.jpg', 'image/jpeg', 369592, 'Wall'),
(8, 'wood.jpg', 'image/jpeg', 353050, 'Wood'),
(9, 'Fall & Winter 2015 Catalog.jpg', 'image/jpeg', 72486, 'Fall and Winter'),
(10, 'Fall & Winter 2015 Catalog4.jpg', 'image/jpeg', 102472, ''),
(11, 'Fall & Winter 2015 Catalog13.jpg', 'image/jpeg', 96905, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`) VALUES
(1, 'kskoglund', 'secretpwd', 'Kevin', 'Skoglund'),
(2, 'rickydiancin', '1111', 'Ricky Noel ', 'Diancin Jr. ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`id`), ADD KEY `photograph_id` (`photograph_id`);

--
-- Indexes for table `photographs`
--
ALTER TABLE `photographs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `photographs`
--
ALTER TABLE `photographs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
