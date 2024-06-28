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
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `pro_price` int(11) NOT NULL,
  `pro_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pro_id`, `pro_name`, `pro_price`, `pro_details`) VALUES
(1, 'Dell', 12000, 'Dell Monitor 15Inch Display'),
(2, 'Mi', 6500, 'Mi 5A Pro'),
(3, 'Samsung', 10000, 'Samsung A15 Black color 8gb Ram 128gb internal'),
(4, 'HP', 37998, 'HP Laptop 15s, 12thgen, 15.6-icnh, 8GB DDR4, 512GB SSD'),
(5, 'Vivo', 22000, 'Vivo v19 pro 8GB 128GB internal storage with silver color'),
(6, 'Lenovo', 33000, 'Lenovo laptop 12th gen'),
(7, 'Oppo', 12000, 'Oppo F15 Mobile with White Cover'),
(8, 'LG', 24990, 'LG 80cm HD ready LED smart WebOS TV\r\n'),
(9, 'Sony', 69990, 'Sony Bravia 108cm Ultra HD(4k) LED smart TV'),
(10, 'Epson', 26999, 'Epson eco tank Color ink tank Printer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
