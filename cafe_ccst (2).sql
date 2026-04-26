-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2026 at 09:39 AM
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
-- Database: `cafe_ccst`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(110) NOT NULL,
  `lastname` varchar(110) NOT NULL,
  `firstname` varchar(110) NOT NULL,
  `middlename` varchar(110) NOT NULL,
  `email` varchar(110) NOT NULL,
  `username` varchar(110) NOT NULL,
  `password` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `lastname`, `firstname`, `middlename`, `email`, `username`, `password`) VALUES
(2, 'sedillo', 'brix', 'torres', 'brix@gmail.com', 'brix', 'brix'),
(4, 'jec', 'jec', 'jec', 'jec', 'jec', 'jec'),
(5, 'tony', 'tony', 'tony', 'tony', 'tonton', 'tony'),
(6, 'manalo', 'jhamaica', 'vallejo', 'jhamaica@gmail.com', 'maica', 'maica111'),
(7, 'sedillo', 'brix angelo', 'torres', 'jerichosanmiguel83@gmail.com', 'batsjecj', 'jecjec'),
(8, 'adsad', 'adadad', 'aaa', 'jerichosanmiguel83@gmail.com', 'pogi123', 'panget123'),
(9, '11111111', '22222', '333333333', 'jerichosanmiguel83@gmail.com', 'brixmaslam123', 'brixmaslam123'),
(10, 'asdf', 'sadf', 'asdf', 'sbrixangelo', 'brix', 'brix'),
(11, 'sdafsadf', 'dfasd', 'sadf', 'sbrixangelo', 'sadf', 'asdf'),
(12, 'sadf', 'sadf', 'asfd', 'sbrixangelo@gmail.com', 'asdf', 'asdf'),
(13, 'asdf', 'asdf', 'asdf', 'sbrixangelo@gmail.com', 'laksdjf', 'asdf'),
(14, 'asdfsadfsdaf', 'hehehehe', 'hihihihi', 'sbrixangelo@gmail.com', 'brixbark', 'barkbrix'),
(15, 'rhencel', 'pogi', 'agustin', 'jerichosanmiguel83@gmail.com', 'jericho', 'password'),
(16, 'rrrr', 'qqq', 'aaa', 'xbrixtorres@gmail.com', 'brixboi', 'password'),
(17, 'Jec', 'jericho', 'jec', 'jerichosanmiguel83@gmail.com', 'jericho', 'pogi');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `is_active`) VALUES
(1, 'jec', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `product_id` int(11) NOT NULL,
  `stock_level` int(11) DEFAULT 0,
  `restock_threshold` int(11) DEFAULT 5,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `login_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `username`, `login_time`) VALUES
(1, 'jec', '2026-04-26 12:25:49'),
(2, 'asdf', '2026-04-26 12:25:54'),
(3, 'admin', '2026-04-26 12:26:13'),
(4, 'admin', '2026-04-26 12:31:00'),
(5, 'admin', '2026-04-26 13:01:01'),
(6, 'admin', '2026-04-26 13:07:28'),
(7, 'manager', '2026-04-26 13:08:20'),
(8, 'asdf', '2026-04-26 14:03:11'),
(9, 'asdf', '2026-04-26 14:04:35'),
(10, 'asdf', '2026-04-26 14:05:37'),
(11, 'admin', '2026-04-26 14:18:29'),
(12, 'jec', '2026-04-26 14:20:58'),
(13, 'jec', '2026-04-26 15:03:16'),
(14, 'manager', '2026-04-26 15:06:10'),
(15, 'manager', '2026-04-26 15:11:52'),
(16, 'manager', '2026-04-26 15:16:50'),
(17, 'asdf', '2026-04-26 15:22:24'),
(18, 'jericho', '2026-04-26 15:24:04'),
(19, 'admin', '2026-04-26 15:26:43');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `is_available` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `name`, `description`, `price`, `image_url`, `is_available`) VALUES
(11, 1, 'Americano', 'Black Coffee', 85.00, 'C:\\Users\\IceDream\\Downloads\\americano.jpg', 1),
(12, 1, 'Macchiato', 'kape', 110.00, 'C:\\Users\\IceDream\\Downloads\\Macchiato.jpg', 1),
(13, 1, 'Cappuccino', 'kape', 120.00, 'C:\\Users\\IceDream\\Downloads\\Cappuccino.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `sale_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `product_id`, `product_name`, `quantity`, `amount`, `sale_date`) VALUES
(1, 3, NULL, 1, 12.00, '2026-04-26 11:34:04'),
(2, 3, NULL, 1, 12.00, '2026-04-26 11:34:04'),
(3, 3, NULL, 1, 12.00, '2026-04-26 11:34:04'),
(4, 3, NULL, 1, 12.00, '2026-04-26 11:34:05'),
(5, 3, NULL, 1, 12.00, '2026-04-26 11:34:05'),
(6, 2, NULL, 1, 213.00, '2026-04-26 11:35:02'),
(7, 2, NULL, 1, 213.00, '2026-04-26 11:35:02'),
(8, 2, NULL, 1, 213.00, '2026-04-26 11:35:02'),
(9, 2, NULL, 1, 213.00, '2026-04-26 11:35:02'),
(10, 4, NULL, 1, 32313.00, '2026-04-26 11:39:04'),
(11, 4, 'bats', 1, 32313.00, '2026-04-26 11:46:36'),
(12, 3, 'jay', 1, 12.00, '2026-04-26 12:16:25'),
(13, 2, 'jec', 1, 213.00, '2026-04-26 12:16:25'),
(14, 9, 'rj', 1, 32.00, '2026-04-26 12:16:25'),
(15, 8, 'maica', 1, 2.00, '2026-04-26 12:16:25'),
(16, 2, 'jec', 1, 213.00, '2026-04-26 14:06:18'),
(17, 3, 'jay', 1, 12.00, '2026-04-26 15:05:16'),
(18, 3, 'jay', 1, 12.00, '2026-04-26 15:05:16'),
(19, 12, 'Macchiato', 1, 110.00, '2026-04-26 15:25:16'),
(20, 13, 'Cappuccino', 1, 120.00, '2026-04-26 15:25:16'),
(21, 11, 'Americano', 1, 85.00, '2026-04-26 15:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(110) NOT NULL,
  `Username` varchar(110) NOT NULL,
  `Password` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Username`, `Password`) VALUES
('1', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`,`Username`,`Password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(110) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
