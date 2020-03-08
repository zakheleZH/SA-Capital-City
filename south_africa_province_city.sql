-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2020 at 12:12 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `south_africa_province_city`
--

-- --------------------------------------------------------

--
-- Table structure for table `province_city`
--

CREATE TABLE `province_city` (
  `id` int(11) NOT NULL,
  `province_name` varchar(50) NOT NULL,
  `city_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `province_city`
--

INSERT INTO `province_city` (`id`, `province_name`, `city_name`) VALUES
(1, 'Western Cape', 'Cape Town'),
(2, 'Eastern Cape', 'Bhisho'),
(3, 'Northern Cape', 'Kimberley'),
(4, 'Free State', 'Bloemfontein'),
(5, 'Gauteng', 'Johannesburg'),
(6, 'KwaZulu-Natal  ', 'Pietermaritzburg'),
(7, 'Limpopo', 'Polokwane'),
(8, 'Mpumalanga', 'Mbombela Nelspruit'),
(9, 'North West', 'Mahikeng');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `province_city`
--
ALTER TABLE `province_city`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `province_city`
--
ALTER TABLE `province_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
