-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2021 at 08:35 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


-- for Indian time zone

SET GLOBAL time_zone = "Asia/Calcutta";
SET time_zone = "+05:30";
SET @@session.time_zone = "+05:30";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingspider`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone`, `msg`, `date`) VALUES
(1, 'firstpost', 'firstpost@gmail.com', '123456789', 'firstpost', '2021-07-04 02:11:15'),
(2, 'sample', 'sample@gmail.com', '1236987456', 'hi', '2021-07-05 00:48:28'),
(3, 'saple', 'saple@gmail.com', '123698756', 'hello', '2021-07-05 00:51:06'),
(4, 'niraj lohani', 'nlohani20@gmail.com', '07057512922', 'hie', '2021-07-05 01:05:19'),
(5, 'niraj lohani', 'nlohani20@gmail.com', '07057512922', 'hello all', '2021-07-05 01:06:16'),
(6, 'alexleo', '111alexleo111@gmail.com', '98746622', 'kam kr ja', '2021-07-06 01:24:39'),
(7, 'alexleo', '111alexleo111@gmail.com', '933336622', 'kam kr jake', '2021-07-06 01:28:28'),
(8, 'sample', 'sample@gmail.com', '1236987456', 'ok', '2021-07-06 01:31:29'),
(9, 'niraj', 'koi@bhi.com', '789654133', 'on alex leo', '2021-07-06 01:33:44'),
(10, 'Ritik', '111alexleo111@gmail.com', '324456987', 'hi all', '2021-07-11 12:29:19'),
(11, 'hello', 'hello@gmail.com', '789654', 'hello here', '2021-07-11 12:32:08'),
(12, 'ritik error', 'meramail@gmail.com', '321456', 'mera message', '2021-07-11 12:34:22'),
(13, 'ritik error', 'meramail@gmail.com', '321456', 'mera message', '2021-07-11 12:35:22'),
(14, 'error', 'error@gmail.com', '785413366', 'message gere', '2021-07-11 12:36:14'),
(15, 'niraj ka', 'nlohani20@gmail.com', '07057512922', 'lllllllllllllllllllllllllllllllllllllllllll', '2021-07-11 12:42:02'),
(16, 'niraj lohani', 'nlohani20@gmail.com', '07057512922', 'he', '2021-07-11 12:42:59');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'This is first post', 'first post ever', 'first-post', 'This is my first post about learning flask with code with harry yt channel', 'post-bg.jpg', '2021-07-14 00:20:46'),
(2, 'This is second post', 'And this one is the coolest one ', 'second-post', 'If an application configures Jinja to trim_blocks, the first newline after a template tag is removed automatically (like in PHP). The lstrip_blocks option can also be set to strip tabs and spaces from the beginning of a line to the start of a block. (Nothing will be stripped if there are other characters before the start of the block.)\r\n\r\nWith both trim_blocks and lstrip_blocks enabled, you can put block tags on their own lines, and the entire block line will be removed when rendered, preserving the whitespace of the contents. For examp', 'post-sample-image.jpg', '2021-07-08 00:55:08'),
(3, 'Whitespace Control', 'In the default configuration:', 'third-post', 'If an application configures Jinja to trim_blocks, the first newline after a template tag is removed automatically (like in PHP). The lstrip_blocks option can also be set to strip tabs and spaces from the beginning of a line to the start of a block. (Nothing will be stripped if there are other characters before the start of the block.)\r\n\r\nWith both trim_blocks and lstrip_blocks enabled, you can put block tags on their own lines, and the entire block line will be removed when rendered, preserving the whitespace of the contents. For example, without the trim_blocks and lstrip_blocks options, this template:', '', '2021-07-08 01:14:36'),
(4, 'Template File Extension', 'Example here', 'template-file', 'As stated above, any file can be loaded as a template, regardless of file extension. Adding a .jinja extension, like user.html.jinja may make it easier for some IDEs or editor plugins, but is not required. Autoescaping, introduced later, can be applied based on file extension, so you’ll need to take the extra suffix into account in that case.\r\n\r\nAnother good heuristic for identifying templates is that they are in a templates folder, regardless of extension. This is a common layout for projects.', 'img.png', '2021-07-12 01:36:03'),
(5, 'check', 'check', 'check', 'check', 'check.png', '2021-07-13 23:38:22'),
(8, 'check2', 'check2', 'check2', 'c2', 'check2.png', '2021-07-14 00:08:36'),
(9, 'check3', 'check3', 'check3', 'c3', 'check3.png', '2021-07-14 00:10:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
