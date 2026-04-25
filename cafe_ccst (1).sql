-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2026 at 06:43 PM
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
(14, 'hahhah', 'hehehehe', 'hihihihi', 'sbrixangelo@gmail.com', 'brixbark', 'barkbrix');

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
(2, 1, 'jec', 'kasdlfjklsdajflkasdjflk', 213.00, 'C:\\Users\\IceDream\\Downloads\\l.PNG', 1),
(3, 1, 'jay', 'lkasjdflkasjdflkasjdflkasjdflksadjflksdajflksdajsdakfjsdflksdajflkadfjlksdajflksdajflksdajflksdajflksdaflkjsdaflksdjflksadjflkjs', 12.00, 'C:\\Users\\IceDream\\Downloads\\ngek.PNG', 1),
(4, 1, 'bats', 'POGI', 32313.00, 'C:\\Users\\IceDream\\Downloads\\hmm...gif', 1),
(6, 1, 'jec', 'lkafjsdlksdflkfsdfjsd', 213.00, 'C:\\Users\\IceDream\\Downloads\\hmm...gif', 1),
(7, 1, 'assasdafsadfsdaf', 'sdafsdfafsdafsdfsdafsdfsdafsdasafdfdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 21312312.00, 'C:\\Users\\IceDream\\Downloads\\hmm...gif', 1),
(8, 1, 'maica', 'sdtery', 2.00, 'C:\\Users\\IceDream\\Downloads\\hmm...gif', 1),
(9, 1, 'rj', 'kjkdslfjlksdfjfdfsdfjdskjlfsdjlkfdslkjsfdkfjlkdsjflksdfjlsdkfjslkdfjlksdj', 32.00, 'E:\\Downloads\\74e4fd0fa14cdefe03d5b4d443ab63bb.gif', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `sale_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `id` int(110) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

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
