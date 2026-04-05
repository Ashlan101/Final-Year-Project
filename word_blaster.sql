-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2026 at 02:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `word_blaster`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'Commander1', 'admin123', '2026-03-12 20:11:14');

-- --------------------------------------------------------

--
-- Table structure for table `endless_leaderboard`
--

CREATE TABLE `endless_leaderboard` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `accuracy` int(11) DEFAULT NULL,
  `wpm` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `endless_leaderboard`
--

INSERT INTO `endless_leaderboard` (`id`, `username`, `score`, `accuracy`, `wpm`) VALUES
(10, 'Darren', 100, 98, 20),
(11, 'Ashlan', 10, 100, 4),
(12, 'Ashlan', 250, 98, 25),
(13, 'Ashlan', 0, 100, 0),
(14, 'Ashlan', 90, 96, 18),
(15, 'Ashlan', 100, 100, 19),
(16, 'Ashlan', 190, 89, 23),
(17, 'Sherwin', 620, 98, 29),
(18, 'LRR', 30, 92, 10),
(19, 'LRR3', 70, 100, 16),
(20, 'umie', 90, 87, 20),
(21, 'umie', 0, 17, 0),
(22, 'umie', 0, 33, 0),
(23, 'umie', 30, 100, 11),
(24, 'mrten', 100, 91, 19),
(25, 'mrten', 230, 98, 26),
(26, 'mrten', 140, 100, 17),
(27, 'mrten', 30, 100, 9),
(28, 'mrten', 30, 100, 9),
(29, 'mrten', 230, 96, 3);

-- --------------------------------------------------------

--
-- Table structure for table `timed_leaderboard`
--

CREATE TABLE `timed_leaderboard` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `accuracy` int(11) DEFAULT NULL,
  `wpm` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timed_leaderboard`
--

INSERT INTO `timed_leaderboard` (`id`, `username`, `score`, `accuracy`, `wpm`) VALUES
(1, 'Ashlan', 10, 98, 10),
(5, 'umie', 3, 100, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `reset_code` varchar(6) DEFAULT NULL,
  `high_score_timed` int(11) DEFAULT 0,
  `high_score_endless` int(11) DEFAULT 0,
  `levels_cleared` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `reset_code`, `high_score_timed`, `high_score_endless`, `levels_cleared`) VALUES
(1, 'Ashlan', 'ganht2006@gmail.com', '$2y$10$b..xN0048YuJ/Cn7AK/aE.svr9he8En2kMUKaUhWXIgOsUj.crp2y', '752093', 15, 250, 3),
(2, 'Darren', 'dght1027@gmail.com', '$2y$10$YRWs5mSNhecGLhrX2bjBE.GteOqFBtQPsRdPJ1417rOGvxA1f6CE6', NULL, 0, 240, 0),
(5, 'Sherwin', 'sherwinadrc@gmail.com', '$2y$10$4EpRTRrlmj8xOKSgzaVgIOI0MfQaUxrclAVN2K6eMZkUASIFo3/gS', NULL, 0, 620, 1),
(7, 'LRR3', 'livingraj20@gmail.com', '$2y$10$akhLruuKULzVjGzB31tAW.9Z0wi6/mS2MK8RhmTyNDpNEX9kMpCty', NULL, 0, 70, 1),
(8, 'umie', 'umikalsum@segi.edu.my', '$2y$10$DYJQ9auK3Hk6e25ag6DUBueVZ9.NFlHSZ1DNYMTERlIblbEHIS7Q2', NULL, 3, 90, 19),
(9, 'mrten', 'dght2710@gmail.com', '$2y$10$G1FiEixa2w.5w9Zp/Ev0me9CS0rsdyWQjIQ0a/Q8H6itjGuQldOeW', NULL, 0, 230, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `endless_leaderboard`
--
ALTER TABLE `endless_leaderboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timed_leaderboard`
--
ALTER TABLE `timed_leaderboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `endless_leaderboard`
--
ALTER TABLE `endless_leaderboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `timed_leaderboard`
--
ALTER TABLE `timed_leaderboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
