-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2024 at 08:36 AM
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
-- Database: `db_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grocery`
--

CREATE TABLE `tbl_grocery` (
  `gro_id` int(11) NOT NULL,
  `gro_name` varchar(50) NOT NULL,
  `gro_price` int(10) NOT NULL,
  `gro_details` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_grocery`
--

INSERT INTO `tbl_grocery` (`gro_id`, `gro_name`, `gro_price`, `gro_details`) VALUES
(1, 'Amul', 160, 'Amul ghee 250ml'),
(2, 'Bisleri', 50, 'Bisleri water bottle 2 litres'),
(3, 'Kissan', 100, 'Kissan tomato ketchup 1.1kg'),
(4, 'Lays', 20, 'Lays cream and onion chips 40g'),
(5, 'Parle', 40, 'Krack jack sweet and salty 200g'),
(6, 'Basmati rice', 495, 'India Gate basmati rice 5kg'),
(7, 'Fortune', 730, 'Sunlite refined sunflower oil 5L'),
(8, 'Surf excel', 150, 'Detergent powder 1kg'),
(9, 'Kelloggs', 490, 'Muesli fruit nut & seeds 750g pouch'),
(10, 'Farmley', 899, 'California almonds 500g');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_grocery`
--
ALTER TABLE `tbl_grocery`
  ADD PRIMARY KEY (`gro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_grocery`
--
ALTER TABLE `tbl_grocery`
  MODIFY `gro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
