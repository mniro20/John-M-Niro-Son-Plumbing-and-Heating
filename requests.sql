-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2025 at 04:17 PM
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
-- Database: `niro_plumbing`
--

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `request_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `preferred_date` date NOT NULL,
  `preferred_time` time NOT NULL,
  `description` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zip_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`request_id`, `name`, `email`, `phone`, `preferred_date`, `preferred_time`, `description`, `address`, `city`, `state`, `zip_code`) VALUES
(1, 'Mike Niro', 'mniro1205@gmail.com', '7325338847', '0000-00-00', '11:20:00', 'this is a test', '60 Trafford St.', 'Shrewsbury', 'NJ', '07702'),
(2, 'Mike Niro', 'mniro1205@gmail.com', '7325338847', '0000-00-00', '11:26:00', 'test this again', '60 Trafford St.', 'Shrewsbury', 'NJ', '07702'),
(3, 'Mike Niro', 'mniro1205@gmail.com', '7325338847', '2025-08-20', '01:31:00', 'test this again again', '60 Trafford St.', 'Shrewsbury', 'NJ', '07702'),
(4, 'Mike Niro', 'mniro1205@gmail.com', '7325338847', '2025-08-07', '05:15:00', 'once again', '60 Trafford St.', 'Shrewsbury', 'NJ', '07702'),
(5, 'Mike Niro', 'mniro1205@gmail.com', '7325338847', '2025-08-21', '06:57:00', 'test number 1738', '60 Trafford St.', 'Shrewsbury', 'NJ', '07702');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`request_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
