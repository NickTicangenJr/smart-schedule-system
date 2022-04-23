-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2022 at 02:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bsit_1b`
--

CREATE TABLE `bsit_1b` (
  `id` int(11) NOT NULL,
  `coursenum` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `monday` varchar(100) NOT NULL,
  `monday_stat` varchar(100) NOT NULL,
  `tuesday` varchar(100) NOT NULL,
  `tue_stat` varchar(100) NOT NULL,
  `wednesday` varchar(100) NOT NULL,
  `wed_stat` varchar(100) NOT NULL,
  `thursday` varchar(100) NOT NULL,
  `thu_stat` varchar(100) NOT NULL,
  `friday` varchar(100) NOT NULL,
  `fri_stat` varchar(100) NOT NULL,
  `faculty` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bsit_1b`
--

INSERT INTO `bsit_1b` (`id`, `coursenum`, `description`, `monday`, `monday_stat`, `tuesday`, `tue_stat`, `wednesday`, `wed_stat`, `thursday`, `thu_stat`, `friday`, `fri_stat`, `faculty`) VALUES
(1, 'GEC 1', 'Understanding the Self', '1:00 - 3:00', 'sss', '', '', '1:00 - 2:00', 'update_bsit_1a', '', '', '', '', 'TX PSYCH'),
(2, 'GEC 2', 'Reading in Philippine History', '10:30 - 12:00', '', '', '', '10:30 - 12:00', '', '', '', '', '', 'BANDONIL, C.'),
(3, 'GEC 3', 'Mathematics in the Modern World', '', '', '10:30 - 12:00', '', '', '', '10:30 - 12:00', '', '', '', 'CALIMAG, N.'),
(4, 'GEC 7', 'Ethics', '', '', '7:30 - 9:00', '', '', '', '7:30 - 9:00', '', '', '', 'PARALLAG, Q.'),
(5, 'IT 121', 'Computer Programming 2', '3:00 - 5:00', '', '', '', '2:00 - 5:00', '', '', '', '', '', 'BALTAZAR, C.'),
(6, 'IT 122', 'Human Computer Interaction 1', '8:30 - 10:30', '', '', '', '7:30 - 10:30', '', '', '', '', '', 'CULLANAN, C.'),
(7, 'IT 123', 'Discrete Mathematics', '', '', '1:00 - 2:30', 'aaa', '', '', '1:00 - 2:30', '', '', 'Agtakki ni erwin', 'BANIQUED, M.'),
(8, 'PE 2', 'Physical Activity Towards Health Fitness II (Exercise Program)', '1:00 - 3:00', '', '', '', '', '', '', '', '', '', 'CENDAÑA'),
(9, 'NSTP', 'CWTS/MS/LTS', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bsit_1c`
--

CREATE TABLE `bsit_1c` (
  `id` int(11) NOT NULL,
  `coursenum` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `monday` varchar(255) NOT NULL,
  `monday_stat` varchar(255) NOT NULL,
  `tuesday` varchar(255) NOT NULL,
  `tue_stat` varchar(255) NOT NULL,
  `wednesday` varchar(255) NOT NULL,
  `wed_stat` varchar(255) NOT NULL,
  `thursday` varchar(255) NOT NULL,
  `thu_stat` varchar(255) NOT NULL,
  `friday` varchar(255) NOT NULL,
  `fri_stat` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bsit_1c`
--

INSERT INTO `bsit_1c` (`id`, `coursenum`, `description`, `monday`, `monday_stat`, `tuesday`, `tue_stat`, `wednesday`, `wed_stat`, `thursday`, `thu_stat`, `friday`, `fri_stat`, `faculty`) VALUES
(1, 'GEC 1', 'Understanding the Self', '', 'Eyow', '10:30 - 12:00', '', '', '', '10:30 - 12:00', '', '', '', 'TX PSYCH'),
(3, 'GEC 2', 'Reading in Philippine History', '', '', '1:00 - 2:30', '', '', '', '1:00 - 2:30', '', '', '', 'BANDONIL, C.'),
(4, 'GEC 3', 'Mathematics in the Modern World', '2:30 - 4:00\r\n', '', '', '', '9:00 - 10:30', '', '', '', '', '', 'CALIMAG, N.'),
(5, 'GEC 7', 'Ethics', '1:00 - 2:30\r\n', '', '', '', '10:30 - 12:00', '', '', '', '', '', 'PARALLAG, Q.'),
(6, 'IT 121', 'Computer Programming 2', '\r\n', '', '8:30 - 10:30', '', '', '', '7:30 - 10:30', '', '', '', 'BALTAZAR, C.'),
(7, 'IT 122', 'Human Computer Interaction 1\r\n', '10:30 - 12:30', '', '', '', '1:00 - 4:00', '', '', '', '', '', 'CULLANAN, C.'),
(8, 'IT 123', 'Discrete Mathematics\r\n', '', '', '2:30 - 4:00', '', '', '', '2:30 - 4:00', '', '', '', 'BANIQUED, M.'),
(9, 'PE 2', 'Physical Activity Towards Health Fitness II (Exercise Program)\r\n', '8:30 - 10:30\r\n', '', '', '', '', '', '', '', '', '', 'CENDAÑA, D.\r\n'),
(10, 'NSTP 2', 'CWTS/MS/LTS\r\n', '', '', '', '', '', '', '', '', '', '', '\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `bsit_1d`
--

CREATE TABLE `bsit_1d` (
  `id` int(11) NOT NULL,
  `coursenum` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `monday` varchar(255) NOT NULL,
  `monday_stat` varchar(255) NOT NULL,
  `tuesday` varchar(255) NOT NULL,
  `tue_stat` varchar(255) NOT NULL,
  `wednesday` varchar(255) NOT NULL,
  `wed_stat` varchar(255) NOT NULL,
  `thursday` varchar(255) NOT NULL,
  `thu_stat` varchar(255) NOT NULL,
  `friday` varchar(255) NOT NULL,
  `fri_stat` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bsit_1d`
--

INSERT INTO `bsit_1d` (`id`, `coursenum`, `description`, `monday`, `monday_stat`, `tuesday`, `tue_stat`, `wednesday`, `wed_stat`, `thursday`, `thu_stat`, `friday`, `fri_stat`, `faculty`) VALUES
(1, 'GEC 1\r\n', 'Understanding the Self', '', '', '9:00 - 10:30\r\n', '', '', '', '9:00 - 10:30\r\n', '', '', '', 'TX PSYCH'),
(3, 'GEC 2\r\n', 'Reading in Philippine History', '1:00 - 2:30', '', '', '', '1:00 - 2:30\r\n', '', '', '', '', '', 'BANDONIL, C.'),
(4, 'GEC 3\r\n', 'Mathematics in the Modern World\r\n', '', '', '3:00 - 4:30\r\n', '', '\r\n', '', '3:00 - 4:30\r\n', '', '', '', 'CALIMAG, N.'),
(5, 'GEC 7\r\n', 'Ethics\r\n\r\n', '7:30 - 9:00\r\n', '', '\r\n', '', '', '', '', '', '9:00 - 10:30', '', 'TIMPLE, M.'),
(6, 'IT 121', 'Computer Programming 2', '', '', '7:30 - 9:30', '', '', '', '7:30 - 10:30', '', '', '', 'BANIQUED, M.'),
(7, 'IT 122', 'Human Computer Interaction 1\r\n', '3:00 - 5:00', '', '9:30 - 12:30', '', '', '', '\r\n', '', '', '', 'CULLANAN, C.'),
(8, 'IT 123', 'Discrete Mathematics\r\n\r\n', '10:30 - 12:00', '', '\r\n', '', '10:30 - 12:00', '', '\r\n', '', '', '', 'BANIQUED, M.'),
(9, 'PE 2\r\n', 'Physical Activity Towards Health Fitness II (Exercise Program)\r\n\r\n', '', '', '\r\n', '', '\r\n', '', '1:00 - 3:00', '', '', '', 'CENDAÑA, D.\r\n'),
(10, 'NSTP 2', 'CWTS/MS/LTS\r\n\r\n', '', '', '\r\n', '', '\r\n', '', '', '', '', '', '\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `bsit_1e`
--

CREATE TABLE `bsit_1e` (
  `id` int(11) NOT NULL,
  `coursenum` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `monday` varchar(255) NOT NULL,
  `monday_stat` varchar(255) NOT NULL,
  `tuesday` varchar(255) NOT NULL,
  `tue_stat` varchar(255) NOT NULL,
  `wednesday` varchar(255) NOT NULL,
  `wed_stat` varchar(255) NOT NULL,
  `thursday` varchar(255) NOT NULL,
  `thu_stat` varchar(255) NOT NULL,
  `friday` varchar(255) NOT NULL,
  `fri_stat` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bsit_1e`
--

INSERT INTO `bsit_1e` (`id`, `coursenum`, `description`, `monday`, `monday_stat`, `tuesday`, `tue_stat`, `wednesday`, `wed_stat`, `thursday`, `thu_stat`, `friday`, `fri_stat`, `faculty`) VALUES
(1, 'GEC 1\r\n', 'Understanding the Self\r\n', '10:30 - 12:00\r\n', '', '\r\n', '', '10:30 - 12:00', '', '', '', '', '', 'TX PSYCH\r\n'),
(2, 'GEC 2', 'Reading in Philippine History\r\n', '3:00 - 5:00', '', '\r\n', '', '', '', '4:00 - 5:00', '', '', '', 'TY SOCSCI'),
(3, 'GEC 3', 'Mathematics in the Modern World\r\n', '\r\n\r\n\r\n', '', '1:00 - 2:30', '', '', '', '1:00 - 2:30', '', '', '', 'CALIMAG, N.'),
(4, 'GEC 7', 'Ethics', '', '', '9:00 - 10:30', '', '', '', '2:30 - 4:00', '', '', '', 'TY SOCSCI'),
(5, 'IT 121', 'Computer Programming 2', '8:30 - 10:30', '', '', '', '7:30 - 10:30', '', '', '', '', '', 'BANIQUED, M.'),
(6, 'IT 122', 'Human Computer Interaction 1', '', '', '3:00 - 5:00', '', '', '', '7:30 - 10:30', '', '', '', 'CULLANAN, C.'),
(7, 'IT 123', 'Discrete Mathematics', '1:00 - 2:30', '', '', '', '1:00 - 2:30', '', '', '', '', '', 'BANIQUED, M.'),
(8, 'PE 2', 'Physical Activity Towards Health Fitness II (Exercise Program)', '', '', '', '', '3:00-5:00', '', '', '', '', '', 'CENDAÑA, D.'),
(9, 'NSTP 2', 'CWTS/MS/LTS', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` int(11) NOT NULL,
  `coursenum` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `monday` varchar(100) NOT NULL,
  `monday_stat` varchar(100) NOT NULL,
  `tuesday` varchar(100) NOT NULL,
  `tue_stat` varchar(100) NOT NULL,
  `wednesday` varchar(100) NOT NULL,
  `wed_stat` varchar(100) NOT NULL,
  `thursday` varchar(100) NOT NULL,
  `thu_stat` varchar(100) NOT NULL,
  `friday` varchar(100) NOT NULL,
  `fri_stat` varchar(100) NOT NULL,
  `faculty` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`id`, `coursenum`, `description`, `monday`, `monday_stat`, `tuesday`, `tue_stat`, `wednesday`, `wed_stat`, `thursday`, `thu_stat`, `friday`, `fri_stat`, `faculty`) VALUES
(1, 'GEC 1', 'Understanding the Self', '', '', '7:30 - 9:00', '', '', '', '7:30 - 9:00', '', '', '', 'TX PSYCH'),
(2, 'GEC 2', 'Reading in Philippine History', '', '', '9:00 - 10:30', '', '', '', '9:00 - 10:30', '', '', '', 'BANDONIL, C.'),
(3, 'GEC 3', 'Mathematics in the Modern World', '10:30 - 12:00', '', '', '', '10:30 - 12:00', '', '', '', '', '', 'CALIMAG, N.'),
(4, 'GEC 7', 'Ethics', '3:00 - 4:30', '', '', '', '3:00 - 4:30', '', '', '', '', '', 'PARALLAG, Q.'),
(5, 'IT 121', 'Computer Programming 2', '1:00 - 3:00', '', '', '', '7:30 - 10:30', '', '', '', '', '', 'BALTAZAR, C.'),
(6, 'IT 122', 'Human Computer Interaction 1', '', '', '1:00 - 3:00', '', '', '', '1:00 - 4:00', '', '', '', 'CULLANAN, C.'),
(7, 'IT 123', 'Discrete Mathematics', '', '', '10:30 - 12:00', '', '', '', '10:30 - 12:00', '', '', '', 'BANIQUED, M.'),
(8, 'PE 2', 'Physical Activity Towards Health Fitness II (Exercise Program)', '', '', '', '', '1:00 - 3:00', '', '', '', '', '', 'CENDAÑA'),
(9, 'NSTP 2', 'CWTS/MS/LTS', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'isu', 'e0ae12e0d4949fa42439e78469e5f7ce', 'admin'),
(2, 'student', 'cd73502828457d15655bbd7a63fb0bc8', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bsit_1b`
--
ALTER TABLE `bsit_1b`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bsit_1c`
--
ALTER TABLE `bsit_1c`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bsit_1d`
--
ALTER TABLE `bsit_1d`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bsit_1e`
--
ALTER TABLE `bsit_1e`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
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
-- AUTO_INCREMENT for table `bsit_1b`
--
ALTER TABLE `bsit_1b`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bsit_1c`
--
ALTER TABLE `bsit_1c`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bsit_1d`
--
ALTER TABLE `bsit_1d`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bsit_1e`
--
ALTER TABLE `bsit_1e`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
