-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 03:11 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `properties`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_username` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_username`, `admin_password`) VALUES
('admin', 'samireshal'),
('admin', 'samireshal');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(1, 'resort'),
(2, 'land'),
(3, 'Flat');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_amount`) VALUES
(100029700),
(100029700),
(100029700),
(100029700),
(101330010),
(101330010),
(101330010),
(101330010),
(129910),
(100129910),
(100129910),
(29700),
(29700),
(101229800);

-- --------------------------------------------------------

--
-- Table structure for table `popular`
--

CREATE TABLE `popular` (
  `popular_id` int(11) NOT NULL,
  `popular_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `popular`
--

INSERT INTO `popular` (`popular_id`, `popular_title`) VALUES
(1, 'Delhi'),
(2, 'mumbai'),
(3, 'Karnataka'),
(4, 'bangalor');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `property_id` int(11) NOT NULL,
  `property_title` varchar(100) NOT NULL,
  `property_description` varchar(300) NOT NULL,
  `property_keywords` varchar(300) NOT NULL,
  `category_id` int(11) NOT NULL,
  `popular_id` int(11) NOT NULL,
  `property_image1` varchar(300) NOT NULL,
  `property_image2` varchar(300) NOT NULL,
  `property_image3` varchar(300) NOT NULL,
  `property_price` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`property_id`, `property_title`, `property_description`, `property_keywords`, `category_id`, `popular_id`, `property_image1`, `property_image2`, `property_image3`, `property_price`, `date`, `status`) VALUES
(1, 'Flat in mumbai', 'flat for sale with best vfacilities', 'flat', 3, 2, 'images (5).jfif', 'download (2).jfif', 'images (7).jfif', '100000000', '2022-12-16 02:35:54', 'true'),
(2, 'Land in Karnataka', 'Best green lands for sale', 'land', 2, 3, 'download (5).jfif', 'images (11).jfif', 'images (10).jfif', '1200100', '2022-12-16 02:39:02', 'true'),
(3, 'Resort for rent', 'best resort for rent in Delhi', 'resort', 1, 1, 'b4.jpeg', 'b5.jpeg', 'images (2).jfif', '100210', '2022-12-16 02:41:45', 'true'),
(4, 'Resort', 'best resort to stay', 'resort', 1, 1, 'images (8).jfif', 'house-1867187_1920.jpg', 'house-1836070__480.jpg', '29700', '2022-12-16 03:06:18', 'true'),
(5, 'resort', 'restort stay', 'resort', 1, 1, 'b1.jpeg', 'b7.jpeg', 'b7.jpeg', '1000000', '2022-12-16 04:55:49', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ip` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `username`, `user_email`, `user_password`, `user_image`, `user_ip`, `user_address`, `user_mobile`) VALUES
(1, 'sammitha', 'sammithas318@gmail.com', 'sammitha', 'images (4).jfif ', '::1', '11=150', '7676493889'),
(2, 'reshal', 'reshalm@gmail.com', 'reshal', 'b8.jpeg ', '::1', '11-3889', '7685948586'),
(3, 'dummy', 'dummytry@gmail.com', 'dummy', 'b8.jpeg ', '::1', '11-150', '34456677777');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `property_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`property_id`, `ip_address`) VALUES
(1, '::1'),
(2, '::1'),
(4, '::1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `popular`
--
ALTER TABLE `popular`
  ADD PRIMARY KEY (`popular_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`property_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`property_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `popular`
--
ALTER TABLE `popular`
  MODIFY `popular_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `property_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
