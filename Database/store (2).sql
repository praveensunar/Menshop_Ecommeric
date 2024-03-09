-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2022 at 05:37 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'Praveen007');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'BALL Fireman Men\'s Watch', 167700),
(2, 'Rado Integral Jubile Steel and Black', 85722),
(3, 'Rolex YACHT-MASTER II', 159900),
(4, 'EMPORIO ARMANI Tazio Watch AR5906', 13600),
(5, 'Noise Smartwatch', 2699),
(6, 'Apple smartWatch SE', 29000),
(7, 'SAMSUNG GALAXY ACTIVE', 38000),
(8, 'FOSSIL Gen 4', 21995),
(9, 'CASIO G-SHOCK GRAVITY MASTER', 15499),
(10, 'OHSEN Led Sport Swimming Watch', 2499),
(11, 'XONIX Men sport watch', 3400),
(12, 'SANDA Sport Men Waterproof Watch', 16700),
(13, 'Campus plaza blue Running Shoes', 899),
(14, 'Puma Running\r\nShoes\r\n', 3099),
(15, 'Nike Men Skyelux Running Shoes', 2599),
(16, 'Sparx SM-444 Gray Running Shoes\r\n', 1369),
(17, 'Puma Black Flip Flops\r\n', 449),
(18, 'Sparx Sf2034G Maroon Flip Flops', 599),
(19, 'Adidas Eezay(black/grey) flip flop', 1099),
(20, 'MAX Striped Flip Flop\r\n', 499),
(21, 'Puma Men Sandal', 1500),
(22, 'Adidas Sports Sandal', 2499),
(23, 'Sparx Navy Sandal', 750),
(24, 'Campus Synthetic Sandal', 670),
(25, 'Raymond blue formal shirt', 899),
(26, 'Heighlander white Formal Shirts', 599),
(27, 'Celio Regular Solids Formal Shirt', 1199),
(28, 'Allen Solly Black Formal Shirt', 1369),
(29, 'Gritstones-White Men\'s printed Shirt', 699),
(30, 'Paul Street-Brown Men\'s printed Shirt', 599),
(31, 'Creations-Blue Men\'s printed Shirt', 1099),
(32, 'SCROTT- Fit Men\'s printed Shirt', 799),
(33, 'AUSTIN WOOD-Red Men\'s T-Shirt', 400),
(34, 'Puma-Polyester Grey Men\'s T-Shirt', 599),
(35, 'Nike- Maroon Men\'s Polo T Shirt', 950),
(36, 'Aeropostale-Blue Men\'s Polo T Shirt', 1650);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pincode` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`, `pincode`) VALUES
(11, 'sam', 'sam@gmail.com', '14e1b600b1fd579f47433b88e8d85291', '0987654321', 'pune', 'pune kothroud ', '4110116'),
(15, 'raj', 'raj123@gmail.com', '5b766cdafb747549c6e6c0ed280ecd1b', '9035884440', 'BIDAR', 'Kamthana', '123456'),
(16, 'BASWARAJ', 'praveensunar656@gmail.com', '308312667f678f19f50fa5fe95c9b133', '9164122689', 'BIDAR', 'Kamthana', '585226'),
(17, 'shiva', 'shiva123@gmail.com', 'bc81aa1c14b828a9ef74f75189a96a87', '9035884440', 'bidar', 'kamthana', '585226'),
(18, 'Praveen', 'praveen656@gmail.com', '7baf60fe3eaf4d86e7ed5d5cb6d4702b', '9035884440', 'BIDAR', 'Kamthana', '585226'),
(19, 'NANDUKUMAR', 'praveensunar656@gmai.com', '663441ae4d933854a6a3e425cf06db7b', '9035884449', 'bidar', 'kamthana', '585226'),
(20, 'sachin', 'sachin656@gmail.com', 'd5b0231a625c958f96b55b5633690d93', '9035884440', 'BIDAR', 'Kamthana', '585226'),
(21, 'raju', 'raju@gamil.com', 'c53f40ebd8fa6493bb84f575664ffba2', '9035884440', 'puna', 'kklhkjhfkjd', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

CREATE TABLE `users_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_items`
--

INSERT INTO `users_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(97, 16, 15, 'Confirmed'),
(98, 16, 16, 'Confirmed'),
(99, 16, 14, 'Confirmed'),
(100, 16, 17, 'Confirmed'),
(101, 16, 3, 'Confirmed'),
(102, 16, 4, 'Confirmed'),
(103, 16, 7, 'Confirmed'),
(123, 18, 2, 'Added to cart'),
(124, 18, 3, 'Added to cart'),
(125, 18, 4, 'Added to cart'),
(129, 20, 28, 'Added to cart'),
(131, 21, 13, 'Confirmed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_items`
--
ALTER TABLE `users_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users_items`
--
ALTER TABLE `users_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_items`
--
ALTER TABLE `users_items`
  ADD CONSTRAINT `users_items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
