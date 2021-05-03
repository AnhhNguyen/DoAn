-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2020 at 05:11 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

DROP DATABASE IF EXISTS `testapii`;
CREATE DATABASE IF NOT EXISTS `testapii` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
GRANT ALL ON `testapii`.* TO 'user'@'%';
USE `testapii`;

--
-- Database: `testapii`
--


-- --------------------------------------------------------

--
-- Table structure for table `p000account`
--

CREATE TABLE `p000account` (
  `id` int(11) NOT NULL,
  `IdRole` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '5f4dcc3b5aa765d61d8327deb882cf99',
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for table `p000account`
--
ALTER TABLE `p000account`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `p000account`
--
ALTER TABLE `p000account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- Dumping data for table `p000account`
--

INSERT INTO `p000account` (`id`, `IdRole`, `name`, `email`, `phone`, `address`, `password`, `img`, `created_date`, `role`) VALUES
(1, 1, 'Administrator', 'admin@gmail.com', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', '../../../assets/images/logo-admin.png', '2021-02-15 08:55:52', 'a:3,b:3');



--
-- Table structure for table `p100Menu`
--

CREATE TABLE `p100Menu` (
  `id` int(11) NOT NULL,
  `IdParentMenu` int(11) DEFAULT NULL,
  `IsGroup` int(11) DEFAULT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Slug` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Icon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `p100Menu`
--

INSERT INTO `p100Menu` (`id`, `IdParentMenu`, `IsGroup`, `Name`, `Slug`, `Icon`, `Position`) VALUES
(1, 0, 0, 'Bảng Thông Tin', '/manager/home', '<i class=\"fas fa-address-card\"></i>', 1),
(2, 0, 1, 'Quản lý Quyền', '', '<i class=\"fas fa-book-spells\"></i>', 2),
(3, 2, 0, 'Quản lý Menu', '/manager/c2-menu', '<i class=\"fas fa-bars\"></i>', 3),
(4, 2, 0, 'Phòng Ban', '/manager/c3-role', '<i class=\"fas fa-building\"></i>', 4),
(5, 2, 0, 'Tài Khoản', '/manager/c1-account', '<i class=\"fas fa-user-circle\"></i>', 5),
(6, 0, 0, 'Quản lý CategoryType', '/manager/c5-CategoryType', '<i class="fab fa-python"></i>', 6);

-- --------------------------------------------------------

--
-- Table structure for table `p200Role`
--

CREATE TABLE `p200Role` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `p200Role`
--

INSERT INTO `p200Role` (`id`, `Name`) VALUES
(1, 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `p300RoleDetail`
--

CREATE TABLE `p300RoleDetail` (
  `id` int(11) NOT NULL,
  `IdRole` int(11) DEFAULT NULL,
  `IdMenu` int(11) DEFAULT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `p300RoleDetail`
--

INSERT INTO `p300RoleDetail` (`id`, `IdRole`, `IdMenu`, `Status`) VALUES
(1, 1, 1, 2),
(2, 1, 2, 2),
(3, 1, 3, 2),
(4, 1, 4, 2),
(5, 1, 5, 2);

-- --------------------------------------------------------

--
-- Indexes for table `p100Menu`
--
ALTER TABLE `p100Menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p200Role`
--
ALTER TABLE `p200Role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p300RoleDetail`
--
ALTER TABLE `p300RoleDetail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `p100Menu`
--
ALTER TABLE `p100Menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `p200Role`
--
ALTER TABLE `p200Role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `p300RoleDetail`
--
ALTER TABLE `p300RoleDetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;  



-- 
-- Table structure for table `p400CategoryType` 
--                      
CREATE TABLE `p400CategoryType` (                                          
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;  
                                                               
--                                                             
-- Indexes for table `p400CategoryType`                                    
--                                                             
ALTER TABLE `p400CategoryType` ADD PRIMARY KEY (`id`);                     
                                                               
--                                                             
-- AUTO_INCREMENT for table `p400CategoryType`                             
--                                                             
ALTER TABLE `p400CategoryType` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
                                                               

 
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
