-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 17, 2022 at 07:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `l8ta`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `ID` int(11) NOT NULL,
  `title` text NOT NULL,
  `city` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `area`:
--   `city`
--       `cities` -> `ID`
--

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`ID`, `title`, `city`, `date`) VALUES
(3, 'العامرية', 2, '2022-03-16 16:35:20'),
(4, 'العجمي', 2, '2022-03-16 16:35:20');

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `ID` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `bookmarks`:
--   `product`
--       `product` -> `ID`
--   `user`
--       `users` -> `ID`
--

--
-- Dumping data for table `bookmarks`
--

INSERT INTO `bookmarks` (`ID`, `user`, `product`, `date`) VALUES
(34, 1, 58, '2022-03-17 18:19:26'),
(35, 1, 57, '2022-03-17 18:19:36'),
(36, 1, 1, '2022-03-17 18:52:08'),
(38, 1, 59, '2022-03-17 19:01:05'),
(39, 9, 60, '2022-03-17 19:21:43');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `ID` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `icon` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `update_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `branches`:
--

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`ID`, `title`, `icon`, `created_at`, `created_by`, `update_at`, `updated_by`, `status`) VALUES
(1, 'عروض لقطة', 'logo.png', '2022-01-17 21:54:14', 1, '2022-01-17 20:54:10', 1, 1),
(2, 'سيارات', 'car.png', '2022-01-17 21:54:14', 1, '2022-01-17 20:54:10', 1, 1),
(3, 'الموضة والجمال', 'makeup-pouch.png', '2022-01-17 21:54:14', 1, '2022-01-17 20:54:10', 1, 1),
(4, 'الكترونيات', 'devices.png', '2022-01-17 21:54:14', 1, '2022-01-17 20:54:10', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `ID` int(11) NOT NULL,
  `title` varchar(265) NOT NULL,
  `branch` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `update_at` datetime NOT NULL,
  `update_by` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `categories`:
--   `branch`
--       `branches` -> `ID`
--

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`ID`, `title`, `branch`, `created_at`, `created_by`, `update_at`, `update_by`, `status`) VALUES
(1, 'لابتوب', 4, '2022-01-17 15:17:47', 1, '2022-01-17 15:17:47', 1, 1),
(2, 'كمبيوتر سطح مكتب', 4, '2022-01-17 15:17:47', 1, '2022-01-17 15:17:47', 1, 1),
(3, 'موبيلات', 4, '2022-01-17 15:17:47', 1, '2022-01-17 15:17:47', 1, 1),
(4, 'سيارات مستعملة', 2, '2022-03-17 18:15:23', 1, '2022-03-17 18:15:23', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `ID` int(11) NOT NULL,
  `title` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `cities`:
--

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`ID`, `title`, `date`) VALUES
(1, 'القاهرة', '2022-03-16 16:34:06'),
(2, 'الإسكندرية', '2022-03-16 16:34:06');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `ID` int(11) NOT NULL,
  `title` text NOT NULL,
  `product` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `images`:
--   `product`
--       `product` -> `ID`
--   `user`
--       `users` -> `ID`
--

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`ID`, `title`, `product`, `user`, `date`, `status`) VALUES
(1, '62-153511-best-laptops-2020_700x400.jpg', 1, 1, '2022-03-16 21:25:03', 1),
(2, '62-153511-best-laptops-2020_700x400.jpg', 1, 1, '2022-03-16 21:25:03', 1),
(3, '2084380.png', 53, NULL, '2022-03-17 03:03:50', 1),
(4, '2342353.jpg', 53, NULL, '2022-03-17 03:03:50', 1),
(5, '1529510.png', 53, NULL, '2022-03-17 03:03:50', 1),
(6, '1562986.png', 54, NULL, '2022-03-17 03:04:16', 1),
(7, '1676299.jpg', 54, NULL, '2022-03-17 03:04:16', 1),
(8, '863920.png', 54, NULL, '2022-03-17 03:04:16', 1),
(9, '2169563.png', 55, NULL, '2022-03-17 03:05:44', 1),
(10, '1833065.cd73817b117185351793cd1e4d11fd2d', 55, NULL, '2022-03-17 03:05:44', 1),
(11, '1568418.png', 55, NULL, '2022-03-17 03:05:44', 1),
(12, '1519708.png', 56, NULL, '2022-03-17 03:38:55', 1),
(13, '2435066.jpg', 56, NULL, '2022-03-17 03:38:55', 1),
(14, '1486672.png', 56, NULL, '2022-03-17 03:38:55', 1),
(15, '1094117.cd73817b117185351793cd1e4d11fd2d', 56, NULL, '2022-03-17 03:38:55', 1),
(16, '2359754.png', 57, NULL, '2022-03-17 05:08:37', 1),
(17, '1724875.png', 58, NULL, '2022-03-17 15:30:44', 1),
(18, '1745866.png', 58, NULL, '2022-03-17 15:30:44', 1),
(19, '1012292.png', 58, NULL, '2022-03-17 15:30:44', 1),
(20, '1146056.jpg', 59, NULL, '2022-03-17 18:58:11', 1),
(21, '1601811.png', 60, NULL, '2022-03-17 19:19:24', 1),
(22, '1652595.jpg', 61, NULL, '2022-03-17 19:56:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `img` text DEFAULT NULL,
  `price` int(11) NOT NULL,
  `des` text NOT NULL,
  `city` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `category` int(11) NOT NULL,
  `branch` int(11) NOT NULL,
  `phone` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `product`:
--   `user`
--       `users` -> `ID`
--   `branch`
--       `branches` -> `ID`
--   `category`
--       `categories` -> `ID`
--   `area`
--       `area` -> `ID`
--

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `title`, `img`, `price`, `des`, `city`, `area`, `user`, `category`, `branch`, `phone`, `date`, `status`) VALUES
(60, 'BMW 46', NULL, 2000000, 'بحالة الزيرو', 2, 4, 9, 4, 2, '01066861476', '2022-03-17 19:19:24', 1),
(61, 'لاب توب استعمال طبيب', NULL, 3500, 'لاب توب استعمال طبيب', 2, 3, 1, 1, 4, '01094144292', '2022-03-17 19:56:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `ID` int(11) NOT NULL,
  `title` text NOT NULL,
  `category` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `sub_categories`:
--   `category`
--       `categories` -> `ID`
--

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`ID`, `title`, `category`, `date`) VALUES
(1, 'DELL', 1, '2022-03-16 16:51:09'),
(2, 'HP', 1, '2022-03-16 16:51:09'),
(3, 'BWM', 4, '2022-03-16 16:51:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `full_name` text NOT NULL,
  `avatar` text DEFAULT 'avatar.webp',
  `email` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `password` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `users`:
--

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `full_name`, `avatar`, `email`, `phone`, `password`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'abdalstar', '273209235_3064761873790120_2433123646222204871_n.jpg', 'abdalstar371371@gmail.com', '01094144292', '445200aa61d201702dba68b77db2a93f', '2022-03-17 01:37:20', NULL, '2022-03-17 00:36:48', NULL, 1),
(2, 'user', 'avatar.webp', 'abdalstarabdo371@gmail.com', '01021142308', '781e5e245d69b566979b86e28d23f2c7', '2022-02-15 01:37:20', NULL, '2022-02-15 00:36:48', NULL, 1),
(6, 'asdasd', 'avatar.webp', NULL, '445200aa61d201702dba68b77db2a93f', '01094144292', '2022-03-16 23:36:51', NULL, NULL, NULL, 0),
(7, 'محمد عبده', 'avatar.webp', NULL, '445200aa61d201702dba68b77db2a93f', '01021142308', '2022-03-17 04:56:57', NULL, NULL, NULL, 0),
(8, 'مستخدم جديد', 'avatar.webp', NULL, '445200aa61d201702dba68b77db2a93f', '01094144299', '2022-03-17 19:07:09', NULL, NULL, NULL, 0),
(9, 'احمد', 'avatar.webp', NULL, '25d55ad283aa400af464c76d713c07ad', '010668614776', '2022-03-17 19:13:19', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `ID` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `views`:
--   `product`
--       `product` -> `ID`
--   `user`
--       `users` -> `ID`
--

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `city` (`city`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `product` (`product`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `branch` (`branch`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `product` (`product`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user` (`user`),
  ADD KEY `branch` (`branch`),
  ADD KEY `category` (`category`),
  ADD KEY `area` (`area`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `permissions` (`password`(1024)),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `product` (`product`),
  ADD KEY `user` (`user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `area_ibfk_1` FOREIGN KEY (`city`) REFERENCES `cities` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `bookmarks_ibfk_1` FOREIGN KEY (`product`) REFERENCES `product` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `bookmarks_ibfk_2` FOREIGN KEY (`user`) REFERENCES `users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`branch`) REFERENCES `branches` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`product`) REFERENCES `product` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `images_ibfk_2` FOREIGN KEY (`user`) REFERENCES `users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`branch`) REFERENCES `branches` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`category`) REFERENCES `categories` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_ibfk_4` FOREIGN KEY (`area`) REFERENCES `area` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `views`
--
ALTER TABLE `views`
  ADD CONSTRAINT `views_ibfk_1` FOREIGN KEY (`product`) REFERENCES `product` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `views_ibfk_2` FOREIGN KEY (`user`) REFERENCES `users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
