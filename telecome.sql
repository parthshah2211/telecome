-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2023 at 07:23 PM
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
-- Database: `telecome`
--

-- --------------------------------------------------------

--
-- Table structure for table `dummy`
--

CREATE TABLE `dummy` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `last4Dig` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `tarId` varchar(255) NOT NULL,
  `mobileNo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `planhasservices`
--

CREATE TABLE `planhasservices` (
  `id` int(11) NOT NULL,
  `PlanId` int(11) NOT NULL,
  `ServiceId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `planhasservices`
--

INSERT INTO `planhasservices` (`id`, `PlanId`, `ServiceId`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '2023-01-18 17:21:14', '2023-01-18 17:21:14'),
(2, 1, 3, '2023-01-18 17:21:14', '2023-01-18 17:21:14'),
(3, 2, 1, '2023-01-18 17:44:57', '2023-01-18 17:44:57'),
(4, 2, 3, '2023-01-18 17:44:57', '2023-01-18 17:44:57'),
(5, 3, 1, '2023-01-18 17:45:18', '2023-01-18 17:45:18'),
(6, 3, 3, '2023-01-18 17:45:18', '2023-01-18 17:45:18'),
(7, 4, 1, '2023-01-18 17:45:36', '2023-01-18 17:45:36'),
(8, 4, 3, '2023-01-18 17:45:36', '2023-01-18 17:45:36'),
(9, 5, 1, '2023-01-18 17:51:08', '2023-01-18 17:51:08'),
(10, 5, 3, '2023-01-18 17:51:08', '2023-01-18 17:51:08'),
(11, 6, 1, '2023-01-18 17:51:49', '2023-01-18 17:51:49'),
(12, 6, 3, '2023-01-18 17:51:49', '2023-01-18 17:51:49');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `des` varchar(255) NOT NULL,
  `talk_time` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `validity` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `data_speed` varchar(255) DEFAULT NULL,
  `sms` varchar(255) DEFAULT NULL,
  `ProviderId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `PromoCodeId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `des`, `talk_time`, `data`, `validity`, `type`, `data_speed`, `sms`, `ProviderId`, `createdAt`, `updatedAt`, `PromoCodeId`) VALUES
(1, 'jio DhanaDhan', 455, 'Unlimted call.internet,service', 'Unlimted', '1.5/perDay', 58, 'unlimted', '1.5/GB', '100', 1, '2023-01-18 17:21:14', '2023-01-18 17:21:14', NULL),
(2, 'jio DhanaDhan', 455, 'Unlimted call.internet,service', 'Unlimted', '2.5/perDay', 58, 'unlimted', '1.5/GB', '100', 1, '2023-01-18 17:44:57', '2023-01-18 17:44:57', NULL),
(3, 'jio DhanaDhan', 455, 'Unlimted call.internet,service', 'Unlimted', '2 GB/perDay', 84, 'unlimted', '1.5/GB', '100', 1, '2023-01-18 17:45:18', '2023-01-18 17:45:18', NULL),
(4, 'jio DhanaDhan', 455, 'Unlimted call.internet,service', 'Unlimted', '2 GB/perDay', 84, 'unlimted', '007.5/GB', '100', 1, '2023-01-18 17:45:36', '2023-01-18 17:45:36', NULL),
(5, 'jio DhanaDhan', 455, 'Unlimted call.internet,service', 'Unlimted', '1.5 GB/perDay', 141, 'unlimted', '007.5/GB', '100', 1, '2023-01-18 17:51:08', '2023-01-18 17:51:08', NULL),
(6, 'jio DhanaDhan', 455, 'Unlimted call.internet,service', 'Unlimted', '1.5/perDay', 141, 'unlimted', '007.5/GB', '100', 1, '2023-01-18 17:51:49', '2023-01-18 17:51:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promocodes`
--

CREATE TABLE `promocodes` (
  `id` int(11) NOT NULL,
  `promo_code` varchar(255) NOT NULL,
  `promo_code_detail` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `contact` varchar(255) DEFAULT '0',
  `website` varchar(255) DEFAULT '0',
  `zip_code` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `name`, `logo`, `des`, `contact`, `website`, `zip_code`, `createdAt`, `updatedAt`) VALUES
(1, 'jio', 'jio', 'Reliance Jio is one of India\'s largest 4G networks and offers the best prepaid & postpaid, JioFiber broadband plans & more. Jio is a young and dynamic organization with a mission to digitally transform India.', '635908698', 's', '389001', '2023-01-18 17:09:55', '2023-01-18 17:09:55');

-- --------------------------------------------------------

--
-- Table structure for table `servicehasproviders`
--

CREATE TABLE `servicehasproviders` (
  `id` int(11) NOT NULL,
  `ServiceId` int(11) NOT NULL,
  `ProviderId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `servicehasproviders`
--

INSERT INTO `servicehasproviders` (`id`, `ServiceId`, `ProviderId`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '2023-01-18 17:09:55', '2023-01-18 17:09:55'),
(2, 3, 1, '2023-01-18 17:09:55', '2023-01-18 17:09:55');

-- --------------------------------------------------------

--
-- Table structure for table `serviceproviders`
--

CREATE TABLE `serviceproviders` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ProviderId` int(11) NOT NULL,
  `ServiceId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service`, `createdAt`, `updatedAt`) VALUES
(1, 'internet', '2023-01-18 17:00:10', '2023-01-18 17:00:10'),
(2, 'calling', '2023-01-18 17:00:34', '2023-01-18 17:00:34'),
(3, 'sms', '2023-01-18 17:00:55', '2023-01-18 17:00:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `customerId` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `customerId`, `createdAt`, `updatedAt`) VALUES
(1, 'jio', 'test@mail.com', '$2a$12$Jha1CVzXM2WY.jdYGSzmzeHFLfSbwxCGUly4vRDNxEKr8a.YKO5Da', 'cus_NC2j53fYcQb8kF', '2023-01-18 16:37:47', '2023-01-18 16:37:47');

-- --------------------------------------------------------

--
-- Table structure for table `zipcodes`
--

CREATE TABLE `zipcodes` (
  `id` int(11) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zipcodes`
--

INSERT INTO `zipcodes` (`id`, `zip_code`, `createdAt`, `updatedAt`) VALUES
(1, 389001, '2023-01-18 16:53:30', '2023-01-18 16:53:30'),
(2, 389002, '2023-01-18 16:53:39', '2023-01-18 16:53:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `planhasservices`
--
ALTER TABLE `planhasservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ProviderId` (`ProviderId`),
  ADD KEY `PromoCodeId` (`PromoCodeId`);

--
-- Indexes for table `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicehasproviders`
--
ALTER TABLE `servicehasproviders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serviceproviders`
--
ALTER TABLE `serviceproviders`
  ADD PRIMARY KEY (`ProviderId`,`ServiceId`),
  ADD KEY `ServiceId` (`ServiceId`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zipcodes`
--
ALTER TABLE `zipcodes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `planhasservices`
--
ALTER TABLE `planhasservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `promocodes`
--
ALTER TABLE `promocodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `servicehasproviders`
--
ALTER TABLE `servicehasproviders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zipcodes`
--
ALTER TABLE `zipcodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `plans`
--
ALTER TABLE `plans`
  ADD CONSTRAINT `plans_ibfk_1` FOREIGN KEY (`ProviderId`) REFERENCES `providers` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `plans_ibfk_2` FOREIGN KEY (`PromoCodeId`) REFERENCES `promocodes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `serviceproviders`
--
ALTER TABLE `serviceproviders`
  ADD CONSTRAINT `serviceproviders_ibfk_1` FOREIGN KEY (`ProviderId`) REFERENCES `providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `serviceproviders_ibfk_2` FOREIGN KEY (`ServiceId`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
