-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2023 at 01:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `user_id` int(10) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user_id`, `user_email`, `user_pass`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(9, 'SPECIALS'),
(11, 'Snacks'),
(12, 'Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_pass` varchar(100) NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_prn` varchar(8) DEFAULT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_contact`, `customer_prn`, `amount`) VALUES
(2, 'kartik', 'kartik70rajesh@yahoo.co.in', '1234', '9773300360', '115a1011', 9003),
(3, 'ajit', 'ajit@xyz.com', '12345', '1234', '115a1003', 1476),
(4, 'kumaran', 'kp@xyz.com', '123456', '98765', '115a1013', 10000),
(5, 'allan', 'allan@gmail.com', '1234567890', '0702820119', 'a2', 250),
(6, 'Allan', 'allan@gmail.com', '12345', '0702820119', 'A5', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_price` int(10) NOT NULL,
  `customer_prn` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders_admin`
--

CREATE TABLE `orders_admin` (
  `order_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_price` int(10) NOT NULL,
  `customer_prn` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_admin`
--

INSERT INTO `orders_admin` (`order_id`, `p_id`, `p_name`, `p_price`, `customer_prn`) VALUES
(91, 31, 'Fanta Orange', 40, 'a2'),
(90, 31, 'Fanta Orange', 40, 'a2'),
(89, 43, 'samosa', 30, 'a2'),
(88, 43, 'samosa', 30, 'a2'),
(87, 39, 'Crisps', 30, 'a2'),
(86, 21, 'Milk 500ml', 60, 'a2'),
(85, 21, 'Milk 500ml', 60, 'a2'),
(84, 21, 'Milk 500ml', 60, 'a2'),
(83, 20, 'Sada Dosa', 25, 'a2'),
(82, 20, 'Sada Dosa', 25, 'a2'),
(81, 38, 'Pav Bhaji', 70, 'a2'),
(80, 27, 'Poha', 25, 'a2'),
(79, 37, 'Lassi', 25, 'a2'),
(78, 40, 'Misal Pav', 30, 'a2'),
(77, 37, 'Lassi', 25, 'a2'),
(76, 27, 'Poha', 25, 'a2'),
(75, 38, 'Pav Bhaji', 70, 'a2'),
(67, 41, 'aloo paratha', 30, 'a2'),
(68, 20, 'Sada Dosa', 25, 'a2'),
(69, 21, 'Masala Dosa', 30, 'a2'),
(70, 22, 'Mysore Masala Dosa', 40, 'a2'),
(71, 22, 'Mysore Masala Dosa', 40, 'a2'),
(72, 28, 'Idli', 20, 'a2'),
(73, 26, 'Toast Sandwich', 40, 'a2'),
(74, 32, 'Chappati Bhaji', 40, 'a2');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_title`, `product_price`, `product_desc`, `product_keywords`) VALUES
(21, 11, 'Milk 500ml', 60, 'Milk is high in calcium and vitamin B2, B12 and vitamin D which is great for your bones and skin. A low-calorie product.', ''),
(24, 11, 'eggs', 30, 'a hard-shelled reproductive body produced by a bird and especially by domestic poultry.', ''),
(28, 11, 'Smokie', 25, ' typically a coarsely ground product, stuffed into either hog casings or cellulose casings (30–40 mm/1.19–1.5 in. diameter) and smoked.', ''),
(29, 11, 'Brown-bread', 25, 'Brown bread is bread made with significant amounts of whole grain flour, usually wheat, and sometimes dark-coloured ingredients such as molasses or coffee.', ''),
(30, 11, 'White bread', 15, 'White bread typically refers to breads made from wheat flour from which the bran and the germ layers have been removed from the whole wheatberry as part of the flour grinding or milling process, producing a light-colored flour.', ''),
(31, 12, 'Fanta Orange', 40, '', ''),
(35, 12, 'Fanta passion ', 45, '', ''),
(36, 12, 'Sprite', 45, '', ''),
(37, 12, 'Diet coke', 50, '', ''),
(38, 12, 'Fanta Blackcurrent', 70, '', ''),
(39, 11, 'Crisps', 30, 'very thin slices of potato fried and eaten cold as a snack.\r\n', ''),
(43, 11, 'samosa', 30, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_prn` (`customer_prn`);

--
-- Indexes for table `orders_admin`
--
ALTER TABLE `orders_admin`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_prn` (`customer_prn`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_admin`
--
ALTER TABLE `orders_admin`
  MODIFY `order_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
