-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2026 at 12:48 AM
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
(6, 'manalo', 'jhamaica', 'vallejo', 'jhamaica@gmail.com', 'maica', 'maica111'),
(7, 'sedillo', 'brix angelo', 'torres', 'jerichosanmiguel83@gmail.com', 'batsjecj', 'jecjec'),
(8, 'adsad', 'adadad', 'aaa', 'jerichosanmiguel83@gmail.com', 'pogi123', 'panget123'),
(9, '11111111', '22222', '333333333', 'jerichosanmiguel83@gmail.com', 'brixmaslam123', 'brixmaslam123'),
(10, 'kalbo', 'sadf', 'asdf', 'sbrixangelo', 'brix', 'brix'),
(11, 'sdafsadf', 'dfasd', 'sadf', 'sbrixangelo', 'sadf', 'asdf'),
(13, 'asdf', 'asdf', 'asdf', 'sbrixangelo@gmail.com', 'laksdjf', 'asdf');

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
(1, 'Iced Coffee', 1),
(2, 'Hot Coffee', 1),
(3, 'Add Ons', 1),
(4, 'Pastry', 1);

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
(19, 'admin', '2026-04-26 15:26:43'),
(20, 'jec', '2026-04-27 14:45:09'),
(21, 'jec', '2026-04-27 14:47:18'),
(22, 'admin', '2026-04-27 15:34:25'),
(23, 'admin', '2026-04-27 15:35:39'),
(24, 'admin', '2026-04-27 15:36:17'),
(25, 'admin', '2026-04-27 15:37:14'),
(26, 'admin', '2026-04-27 15:38:54'),
(27, 'admin', '2026-04-27 16:11:19'),
(28, 'jec', '2026-04-27 16:12:12'),
(29, 'admin', '2026-04-27 17:22:21'),
(30, 'manager', '2026-04-27 17:24:21'),
(31, 'jec', '2026-04-27 17:49:29'),
(32, 'admin', '2026-04-27 17:51:35'),
(33, 'admin', '2026-04-27 17:53:35'),
(34, 'admin', '2026-04-27 17:58:25'),
(35, 'admin', '2026-04-27 18:09:18'),
(36, 'jec', '2026-04-27 19:02:17'),
(37, 'JEC', '2026-04-27 19:55:03'),
(38, 'JEC', '2026-04-27 19:55:23'),
(39, 'JEC', '2026-04-27 19:55:56'),
(40, 'manager', '2026-04-27 19:56:15'),
(41, 'manager', '2026-04-27 19:56:56'),
(42, 'manager', '2026-04-27 20:23:19'),
(43, 'admin', '2026-04-27 20:23:51'),
(44, 'admin', '2026-04-27 20:24:29'),
(45, 'jec', '2026-04-27 20:25:32'),
(46, 'manager', '2026-04-27 20:27:54'),
(47, 'manager', '2026-04-27 20:31:43'),
(48, 'jec', '2026-04-27 21:07:08'),
(49, 'manager', '2026-04-27 21:07:18'),
(50, 'admin', '2026-04-27 21:07:35'),
(51, 'admin', '2026-04-27 21:10:49'),
(52, 'admin', '2026-04-27 21:13:50'),
(53, 'jec', '2026-04-27 21:20:40'),
(54, 'manager', '2026-04-27 21:46:35'),
(55, 'manager', '2026-04-27 21:47:42'),
(56, 'admin', '2026-04-27 21:58:57'),
(57, 'manager', '2026-04-27 22:13:11'),
(58, 'admin', '2026-04-27 22:13:19'),
(59, 'manager', '2026-04-27 22:35:54'),
(60, 'manager', '2026-04-27 22:39:19'),
(61, 'manager', '2026-04-27 22:40:31'),
(62, 'manager', '2026-04-27 22:41:30'),
(63, 'manager', '2026-04-27 22:43:05'),
(64, 'manager', '2026-04-27 22:45:10'),
(65, 'manager', '2026-04-27 22:45:56'),
(66, 'manager', '2026-04-27 22:46:49'),
(67, 'manager', '2026-04-27 22:48:30'),
(68, 'manager', '2026-04-27 22:50:15'),
(69, 'manager', '2026-04-27 22:52:07'),
(70, 'manager', '2026-04-27 22:53:12'),
(71, 'manager', '2026-04-27 22:55:33'),
(72, 'manager', '2026-04-27 23:03:12'),
(73, 'manager', '2026-04-27 23:10:02'),
(74, 'manager', '2026-04-27 23:14:58'),
(75, 'manager', '2026-04-27 23:23:26'),
(76, 'manager', '2026-04-27 23:32:52'),
(77, 'manager', '2026-04-28 00:04:58'),
(78, 'manager', '2026-04-28 00:19:13'),
(79, 'admin', '2026-04-28 00:19:27'),
(80, 'manager', '2026-04-28 00:55:24'),
(81, 'admin', '2026-04-28 00:55:32'),
(82, 'manager', '2026-04-28 00:58:46'),
(83, 'manager', '2026-04-28 01:07:53'),
(84, 'manager', '2026-04-28 01:26:10'),
(85, 'manager', '2026-04-28 01:31:18'),
(86, 'manager', '2026-04-28 01:40:32'),
(87, 'jec', '2026-04-28 01:50:58'),
(88, 'jec', '2026-04-28 01:57:59'),
(89, 'jec', '2026-04-28 02:05:56'),
(90, 'admin', '2026-04-28 02:06:31'),
(91, 'manager', '2026-04-28 02:07:15'),
(92, 'admin', '2026-04-28 02:09:08'),
(93, 'manager', '2026-04-28 02:11:24'),
(94, 'jec', '2026-04-28 02:13:19'),
(95, 'admin', '2026-04-28 02:17:10'),
(96, 'admin', '2026-04-28 02:19:10'),
(97, 'admin', '2026-04-28 02:22:02'),
(98, 'admin', '2026-04-28 02:40:41'),
(99, 'admin', '2026-04-28 03:14:02'),
(100, 'admin', '2026-04-28 03:31:45'),
(101, 'manager', '2026-04-28 06:37:52'),
(102, 'manager', '2026-04-28 06:39:16');

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
(15, 1, '​Iced Matcha Latte', 'An earthy, vibrant green tea base whisked with milk and served over ice.', 130.00, 'C:\\Users\\IceDream\\Downloads\\Clarkian_cafe2-main\\Cafe_ccst\\Resources\\iced-matcha-latte.jpg', 1),
(16, 1, '​Iced Spanish Latte:', 'A sweeter, creamier alternative to a standard latte using condensed milk.', 135.00, 'C:\\Users\\IceDream\\Downloads\\Clarkian_cafe2-main\\Cafe_ccst\\Resources\\Spanish-iced-latte-recipe-cover-photo.jpg', 1),
(17, 1, '​Iced Vanilla Latte', 'A crowd-pleasing classic that balances bold espresso with smooth vanilla syrup.', 120.00, 'C:\\Users\\IceDream\\Downloads\\Clarkian_cafe2-main\\Cafe_ccst\\Resources\\Iced-Vanilla-Latte-9.jpg', 1),
(18, 2, 'Hot Americano', 'A clean, robust cup for those who appreciate the pure profile of the espresso bean.', 90.00, 'C:\\Users\\IceDream\\Downloads\\Clarkian_cafe2-main\\Cafe_ccst\\Resources\\americano.jpg', 1),
(19, 2, 'Hot Cappuccino', 'Defined by its luxurious layer of thick milk foam and balanced espresso-to-milk ratio.', 110.00, 'C:\\Users\\IceDream\\Downloads\\Clarkian_cafe2-main\\Cafe_ccst\\Resources\\Cappuccino.jpg', 1),
(20, 2, 'Hot Mocha', 'The perfect \"dessert\" coffee, blending rich chocolate sauce with steamed milk and espresso.', 125.00, 'C:\\Users\\IceDream\\Downloads\\Clarkian_cafe2-main\\Cafe_ccst\\Resources\\mocha.jpg', 1),
(21, 4, 'Butter Croissant', 'The gold standard of pastries—flaky, airy, and perfect for dipping in coffee.', 95.00, 'C:\\Users\\IceDream\\Downloads\\Clarkian_cafe2-main\\Cafe_ccst\\Resources\\Xsant.jpg', 1),
(22, 4, 'Chocolate Chip Cookie', 'A nostalgic, easy-to-eat snack that pairs particularly well with a Hot Mocha.', 85.00, 'C:\\Users\\IceDream\\Downloads\\Clarkian_cafe2-main\\Cafe_ccst\\Resources\\Chocolate Chip Cookies.jpg', 1),
(23, 4, 'Glazed Donut', 'A simple, sweet treat that complements the bitterness of an Americano perfectly.', 105.00, 'C:\\Users\\IceDream\\Downloads\\Clarkian_cafe2-main\\Cafe_ccst\\Resources\\Glazed-Donuts-1.jpg', 1);

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
(23, 23, 'Glazed Donut', 1, 105.00, '2026-04-28 02:14:54'),
(24, 15, '​Iced Matcha Latte', 1, 130.00, '2026-04-28 02:14:54'),
(25, 16, '​Iced Spanish Latte:', 1, 135.00, '2026-04-28 02:14:54'),
(26, 19, 'Hot Cappuccino', 1, 110.00, '2026-04-28 02:14:54');

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
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
