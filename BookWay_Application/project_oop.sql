-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2023 at 03:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_oop`
--

-- --------------------------------------------------------

--
-- Table structure for table `appuser`
--

CREATE TABLE `appuser` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appuser`
--

INSERT INTO `appuser` (`id`, `username`, `password`, `role_id`) VALUES
(1, 'admin', '%��2;E8��bM', 2),
(2, 'user', 'n�v��A�{;\rH����', 1),
(3, 'user1', 'n�v��A�{;\rH����', 1),
(4, 'user2', 'n�v��A�{;\rH����', 1),
(5, 'Hendi', '%��2;E8��bM', 1),
(6, 'user3', 'n�v��A�{;\rH����', 1),
(7, 'HendiSulistio', '%��2;E8��bM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `author` text NOT NULL,
  `year` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `year`, `harga`) VALUES
(1, 'Laskar Pelangi', 'Andrea Hirata', 2005, 50000),
(2, 'Cantik Itu Luka', 'Eka Kurniawan', 2002, 25000),
(3, 'Bumi', 'Tere Liye', 2014, 35000),
(4, 'Lelaki Harimau', 'Eka Kurniawan', 2004, 55000),
(5, 'Negeri 5 Menara', 'Ahmad Fuadi', 2009, 65000),
(6, 'Laut Bercerita', 'Leila Salikha Chudori', 2017, 35000),
(7, 'Cinta', 'vanessa', 2022, 3000),
(8, '7 Prajurit Bapak', 'Wulan Nuramalia', 2022, 100000),
(9, 'Catatan Harian Seorang Suami', 'Rasyad Edward', 2005, 60000);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `book_id` int(11) NOT NULL,
  `book_title` text NOT NULL,
  `harga` int(11) NOT NULL,
  `phone` text NOT NULL,
  `payment` text NOT NULL,
  `date_rent` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_return` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `username`, `book_id`, `book_title`, `harga`, `phone`, `payment`, `date_rent`, `date_return`) VALUES
(1, 'user', 1, 'Laskar Pelangi', 50000, '081732659487', 'OVO', '2023-01-15 12:40:21', '2023-01-15 12:40:21'),
(2, 'user', 4, 'Lelaki Harimau', 55000, '081365984567', 'LinkAja', '2023-01-15 13:56:25', '2023-01-15 13:56:25'),
(3, 'user2', 2, 'Cantik Itu Luka', 25000, '081265984678', 'GOPAY', '2023-01-15 14:50:03', '2023-01-15 14:50:03'),
(4, 'user1', 3, 'Bumi', 35000, '089865984566', 'LinkAja', '2023-01-15 14:49:39', '2023-01-15 14:49:39'),
(5, 'user', 6, 'Laut Bercerita', 35000, '083265984632', 'Dana', '2023-01-15 14:49:16', '2023-01-15 14:49:16'),
(6, 'Hendi', 4, 'Lelaki Harimau', 55000, '0632659878', 'OVO', '2023-01-16 07:21:15', '2023-01-16 07:21:15'),
(7, 'Hendi', 6, 'Laut Bercerita', 35000, '0817316597', 'GOPAY', '2023-01-17 10:32:40', '2023-01-17 10:32:40'),
(8, 'Hendi', 3, 'Bumi', 35000, '124569783625', 'LinkAja', '2023-01-17 10:32:49', NULL),
(9, 'HendiSulistio', 5, 'Negeri 5 Menara', 65000, '081731659845', 'GOPAY', '2023-01-17 10:42:04', '2023-01-17 10:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `status`) VALUES
(1, 'Available'),
(2, 'Available'),
(3, 'Rent'),
(4, 'Available'),
(5, 'Available'),
(6, 'Available'),
(7, 'Available'),
(8, 'Available'),
(9, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `tmp`
--

CREATE TABLE `tmp` (
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tmp`
--

INSERT INTO `tmp` (`name`) VALUES
('user3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appuser`
--
ALTER TABLE `appuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appuser`
--
ALTER TABLE `appuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
