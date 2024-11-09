-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2024 at 03:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(35, 'esha tmg', 'esha', 'bf5140ea297674d8fbe5fdec62eb759d');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(28, 'Mo:Mo', 'Food_Category_627.jpg', 'Yes', 'Yes'),
(29, 'Pizza', 'Food_Category_801.jpg', 'Yes', 'Yes'),
(30, 'Burger', 'Food_Category_945.avif', 'Yes', 'Yes'),
(31, 'Drinks', 'Food_Category_477.jpeg', 'Yes', 'Yes'),
(32, 'Khana Set', 'Food_Category_795.jpg', 'Yes', 'Yes'),
(33, 'Snacks', 'Food_Category_396.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `name`, `email`, `phone`, `message`, `submitted_at`) VALUES
(46, 'Clarke Velazquez', 'tilal@mailinator.com', '7777888896', 'Ratione nostrud eum', '2024-10-28 15:36:20');

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
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(18, 'Chicken Momo', 'Cupidatat laudantiumssssssssss', 171.00, 'Food-Name7760.jpg', 28, 'No', 'Yes'),
(24, 'Chicken Khana Set', 'ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss', 200.00, 'Food-Name65.jpeg', 32, 'No', 'Yes'),
(25, 'Mutton Khana Set', 'sssssssssssccccccccccccccccccccccccccccccccccccccccccc', 230.00, 'Food-Name-2469.jpg', 32, 'No', 'Yes'),
(26, 'Thakali Khana Set', 'scjnsddofwfejewrjfwiefjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', 300.00, 'Food-Name-863.jpg', 32, 'No', 'Yes'),
(27, 'Cheese Pizza', 'efewfwefewwfffffffewwwwwwwwwww', 250.00, 'Food-Name-4990.jpg', 29, 'No', 'Yes'),
(29, 'Pepperoni Pizza', 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', 350.00, 'Food-Name-1060.jpg', 29, 'No', 'Yes'),
(33, 'BBQ Burger', 'eeeeeeeeeeeeeeeeeeeeeeeeeeeee', 350.00, 'Food-Name-4816.jpg', 30, 'No', 'Yes'),
(42, 'Mango Juice', 'fffffffffffffffffffffffffffffffffffffffffffffffffffffffff', 150.00, 'Food-Name-7051.jpg', 31, 'No', 'Yes'),
(47, 'Jhol Momo', 'dddddddddddddddddddddddddddddd', 120.00, 'Food-Name8231.jpg', 28, 'No', 'Yes'),
(49, 'Buff Momo', 'ssssssssssssssssssssssssssssss', 140.00, 'Food-Name4368.jpg', 28, 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(15000) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(11, 'Chicken Mo:Mo', 130.00, 1, 130.00, '2024-10-02 06:02:23', 'On Delivery', 'esha', '9834444444', 'esha@gmail.com', 'Dhulikhel'),
(12, 'Pepperoni Pizza', 350.00, 852, 298200.00, '2024-10-24 12:57:17', 'On Delivery', 'Austin Manning', '+1 (389) 421-6884', 'puxomebi@mailinator.com', 'Quod ut quia exercit'),
(13, 'Chicken Khana Set', 200.00, 5, 1000.00, '2024-10-24 02:02:10', 'Delivered', 'Nasim Farmer', '+1 (937) 417-3598', 'pydoze@mailinator.com', 'Aliquid rerum ipsum '),
(14, 'Pepperoni Pizza', 350.00, 12, 4200.00, '2024-10-24 02:06:08', 'Ordered', 'Nathaniel Watkins', '+1 (905) 484-4309', 'tefoz@mailinator.com', 'Et quod quis ipsa v'),
(15, 'Cheese Pizza', 250.00, 1, 250.00, '2024-10-25 01:49:12', 'Ordered', 'esha', '9863023944', 'eshatamang999@gmail.com', 'Dhulikhel'),
(16, 'Chicken Khana Set', 200.00, 2, 400.00, '2024-10-25 02:40:58', 'Ordered', 'Martina Tyson', '+1 (465) 918-7231', 'sohu@mailinator.com', 'Distinctio A dignis'),
(17, 'Pepperoni Pizza', 350.00, 633, 221550.00, '2024-10-25 04:40:32', 'Ordered', 'Lani Hodges', '+1 (735) 959-6177', 'kaqofefode@mailinator.com', 'Elit aspernatur qui');

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
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
