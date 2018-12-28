-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 28, 2018 at 01:12 PM
-- Server version: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.13-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'nurhodelta', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'Neovic', 'Devierte', 'facebook-profile-image.jpeg', '2018-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `author` varchar(150) NOT NULL,
  `publisher` varchar(150) NOT NULL,
  `publish_date` date NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `isbn`, `category_id`, `title`, `author`, `publisher`, `publish_date`, `status`) VALUES
(13, '9789863182085', 5, 'Ù‚Ù„Ø¹Ù‡ Ø­ÛŒÙˆØ§Ù†Ø§Øª', ' Ø¬ÙˆØ±Ø¬ Ø§ÙˆØ±ÙˆÙ„ ', 'Ø§Ù†ØªØ´Ø§Ø±Ø§Øª Ø¬Ø§Ù…ÛŒ', '1980-06-17', 0),
(14, '9785699661121', 5, 'Ù†Ø§ØªÙˆØ± Ø¯Ø´Øª', ' Ø¬Ø±ÙˆÙ… Ø¯ÛŒÙˆÛŒØ¯ Ø³Ø§Ù„ÛŒÙ†Ø¬Ø±', 'Ø§Ù†ØªØ´Ø§Ø±Ø§Øª ØµØ¯Ø±Ø§', '1936-08-12', 0),
(15, '9789863182077', 1, 'Ø¨Ø±Ù†Ø§Ù…Ù‡ Ù†ÙˆÛŒØ³ÛŒ Ø¨Ù‡ Ø²Ø¨Ø§Ù† PHP', ' Ø­Ù…ÛŒØ¯Ø±Ø¶Ø§ Ø·Ø§Ù„Ø¨ÛŒ', ' Ù…Ø¤Ø³Ø³Ù‡ ÙØ±Ù‡Ù†Ú¯ÛŒ Ù‡Ù†Ø±ÛŒ Ø¯ÛŒØ¨Ø§Ú¯Ø±Ø§Ù† ØªÙ‡Ø±Ø§Ù† ', '2009-12-17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_borrow` date NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`id`, `student_id`, `book_id`, `date_borrow`, `status`) VALUES
(19, 5, 14, '2018-12-28', 1),
(20, 5, 14, '2018-12-28', 1),
(21, 5, 14, '2018-12-28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Ù…Ù‡Ù†Ø¯Ø³ÛŒ'),
(2, 'Ø±ÛŒØ§Ø¶ÛŒ'),
(3, 'Ø¹Ù„Ù…ÛŒ Ùˆ ØªÚ©Ù†ÙˆÙ„ÙˆÚ˜ÛŒ'),
(4, 'ØªØ§Ø±ÛŒØ®ÛŒ'),
(5, 'Ø±Ù…Ø§Ù†');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `code` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `code`) VALUES
(3, 'Ú©Ø§Ù…Ù¾ÙŠÙˆØªØ± - Ù†Ø±Ù… Ø§ÙØ²Ø§Ø± Ú©Ø§Ù…Ù¾ÙŠÙˆØªØ±', '41022'),
(4, 'Ù…Ù‡Ù†Ø¯Ø³ÛŒ Ø´Ù‡Ø±Ø³Ø§Ø²ÙŠ', '60205'),
(5, 'Ù…Ø¯ÛŒØ±ÛŒØª Ø¨Ø§Ø²Ø±Ú¯Ø§Ù†ÛŒ', '21207'),
(6, 'Ø­Ø³Ø§Ø¨Ø¯Ø§Ø±ÙŠ', '21301'),
(7, 'Ù…Ù‡Ù†Ø¯Ø³ÛŒ Ø´ÙŠÙ…ÛŒ', '40201'),
(8, 'ØªØ±Ø¨ÙŠØª Ø¨Ø¯Ù†ÛŒ ÙˆØ¹Ù„ÙˆÙ… ÙˆØ±Ø²Ø´ÛŒ', '21402');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_return` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`id`, `student_id`, `book_id`, `date_return`) VALUES
(5, 5, 14, '2018-12-28'),
(6, 5, 14, '2018-12-28'),
(7, 5, 14, '2018-12-28');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `student_id` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_id`, `firstname`, `lastname`, `photo`, `course_id`, `created_on`) VALUES
(5, 'ERZ437906825', 'Ø¹Ù„ÛŒ', 'Ù†Ø§Ø¯Ø±Ù„Ùˆ', '', 3, '2018-12-28'),
(6, 'RFC753689241', 'Ø­Ø³ÛŒÙ†', 'Ú©Ø±ÛŒÙ…ÛŒ', '', 6, '2018-12-28'),
(7, 'LQU843512679', 'Ø§Ø­Ø³Ø§Ù†', 'ØµÙÙˆÛŒ', '', 8, '2018-12-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
