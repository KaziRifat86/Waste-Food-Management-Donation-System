-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20221214.fafa7d289d
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 11:28 PM
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
-- Database: `food-donate`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(13, 'Administrator', 'admin', '1234'),
(14, 'farhan', 'farhan', 'farhan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(9, 'KFC', 'Food_Category_305.png', 'Yes', 'Yes'),
(10, 'Ruchitomo', 'Food_Category_316.jpg', 'Yes', 'Yes'),
(11, 'Abacus', 'Food_Category_444.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`, `quantity`) VALUES
(3, 'Dumplings Specials', 'Chicken Dumpling with herbs from Mountains', 5.00, 'Food-Name-3649.jpg', 10, 'Yes', 'Yes', 15),
(4, 'Best Burger', 'Burger with Ham, Pineapple and lots of Cheese.', 4.00, 'Food-Name-6340.jpg', 10, 'Yes', 'Yes', 5),
(5, 'Smoky BBQ Pizza', 'Best Firewood Pizza in Town.', 6.00, 'Food-Name-8298.jpg', 9, 'No', 'Yes', 20),
(6, 'Sadeko Momo', 'Best Spicy Momo for Winter', 6.00, 'Food-Name-7387.jpg', 9, 'Yes', 'Yes', 3),
(7, 'Mixed Pizza', 'Pizza with chicken, Ham, Buff, Mushroom and Vegetables', 10.00, 'Food-Name-7833.jpg', 10, 'Yes', 'Yes', 17),
(9, 'Mixed Burger', 'Burger with Ham, Pineapple and lots of Cheese.', 5.00, 'Food-Name-816.jpg', 9, 'No', 'No', 3),
(13, 'Kacchi', 'Biriyani', 100.00, 'Food-Name-3722.jpg', 11, 'No', 'Yes', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 'Sadeko Momo', 6.00, 3, 18.00, '2020-11-30 03:49:48', 'Cancelled', 'Bradley Farrell', '+1 (576) 504-4657', 'zuhafiq@mailinator.com', 'Duis aliqua Qui lor'),
(2, 'Best Burger', 4.00, 4, 16.00, '2020-11-30 03:52:43', 'Delivered', 'Kelly Dillard', '+1 (908) 914-3106', 'fexekihor@mailinator.com', 'Incidunt ipsum ad d'),
(3, 'Mixed Pizza', 10.00, 2, 20.00, '2020-11-30 04:07:17', 'Delivered', 'Jana Bush', '+1 (562) 101-2028', 'tydujy@mailinator.com', 'Minima iure ducimus'),
(4, 'Best Burger', 4.00, 1, 4.00, '2022-12-15 05:22:44', 'Delivered', 'Irfan Ahmed', '01745323298', 'irfanahmed651@gmail.com', '367 ElephantRoad, Newmarket. (Apartment- 4A)'),
(5, 'Sadeko Momo', 6.00, 4, 24.00, '2022-12-15 08:51:18', 'Ordered', 'john cena', '0196969696', 'u.cant@see.me', 'bracu'),
(6, 'Kacchi Biriyani', 10.00, 5, 50.00, '2022-12-15 09:35:17', 'Cancelled', 'kazi rifat', '0171', 'k@z.i', 'dhaka'),
(7, 'Kacchi Biriyani', 10.00, 6, 60.00, '2022-12-15 09:36:44', 'On Delivery', 'farhan', '016', 'f@rh.n', 'uttara'),
(21, 'Mixed Burger', 5.00, 5, 25.00, '2022-12-16 10:33:12', 'Delivered', 'Irfan Ahmed', '01745323298', 'irfanahmed651@gmail.com', '367 ElephantRoad, Newmarket. (Apartment- 4A)'),
(22, 'Kacchi Biriyani', 250.00, 100, 25000.00, '2022-12-16 01:12:16', 'Ordered', 'John Cena', '0111111111', 'abcd@xyz.pq', 'usa'),
(23, 'Kacchi', 100.00, 5, 500.00, '2022-12-16 01:20:01', 'Ordered', 'xz', '65', 'xz@g.b', 'ab'),
(24, 'chicken', 9.00, 10, 90.00, '2022-12-16 01:22:43', 'Ordered', 'ab', '456', 'a@b', 'aaa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
