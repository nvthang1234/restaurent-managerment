-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2019 at 10:37 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `archive`
--

CREATE TABLE `archive` (
  `id` int(11) NOT NULL,
  `createdAt` bigint(20) DEFAULT NULL,
  `fromModel` varchar(255) DEFAULT NULL,
  `originalRecord` longtext,
  `originalRecordId` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jwtoken`
--

CREATE TABLE `jwtoken` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `token` text,
  `issuedAt` double DEFAULT NULL,
  `expiretime` double DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jwtoken`
--

INSERT INTO `jwtoken` (`createdAt`, `updatedAt`, `id`, `token`, `issuedAt`, `expiretime`, `isactive`, `owner`) VALUES
(1558947460407, 1558947460407, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImNyZWF0ZWRBdCI6MTU1ODUxMTM1MTE2NywidXBkYXRlZEF0IjoxNTU4NTExMzUxMTY3LCJuYW1lIjoibnZ0aGFuZ0B0bWEuY29tLnZuIiwiaWQiOjF9LCJpYXQiOjE1NTg5NDc0NjAsImV4cCI6MTU1OTA1NTQ2MH0.12CNILaiTWqbecaSNFOJzr7WkQtuGXP2sDPJyOr_BzM', 1558947460, 1559055460, 0, 1),
(1558950820986, 1558950820986, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImNyZWF0ZWRBdCI6MTU1ODUxMTM1MTE2NywidXBkYXRlZEF0IjoxNTU4NTExMzUxMTY3LCJuYW1lIjoibnZ0aGFuZ0B0bWEuY29tLnZuIiwiaWQiOjF9LCJpYXQiOjE1NTg5NTA4MjAsImV4cCI6MTU1OTA1ODgyMH0.FaXMiT6xWPctNEb4fd0sArUkJOlKOaiqVvUgIm0dkEo', 1558950820, 1559058820, 1, 1),
(1559011881831, 1559011881831, 3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImNyZWF0ZWRBdCI6MTU1ODUxNjgzNDAyNywidXBkYXRlZEF0IjoxNTU4NTE2ODM0MDI3LCJuYW1lIjoibnZ0aGFuZzFAdG1hLmNvbS52biIsImlkIjoyfSwiaWF0IjoxNTU5MDExODgxLCJleHAiOjE1NTkxMTk4ODF9.qOeU-ebhHFApc8EDn_WNV8P0TXSU62xZ2f5Vj3PU56A', 1559011881, 1559119881, 1, 2),
(1559028254974, 1559028254974, 4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImNyZWF0ZWRBdCI6MTU1ODUxNjgzNjE0MSwidXBkYXRlZEF0IjoxNTU4NTE2ODM2MTQxLCJuYW1lIjoibnZ0aGFuZzIxQHRtYS5jb20udm4iLCJpZCI6M30sImlhdCI6MTU1OTAyODI1NCwiZXhwIjoxNTU5MTM2MjU0fQ.N_OVNkkYHpCPo9ysl5YeYNR0OQzU0-35gl4e1zqpiK8', 1559028254, 1559136254, 1, 3),
(1559028759701, 1559028759701, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImNyZWF0ZWRBdCI6MTU1OTAyODcwNDk1MCwidXBkYXRlZEF0IjoxNTU5MDI4NzA0OTUwLCJuYW1lIjoidGhhbmcxMjM0QHRtYS5jb20udm4iLCJpZCI6MX0sImlhdCI6MTU1OTAyODc1OSwiZXhwIjoxNTU5MTM2NzU5fQ.X55stg6LuDPT9o3ozkedcLm3F3gAecaFh8Y7FyIEgSk', 1559028759, 1559136759, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `otp` double DEFAULT NULL,
  `otp_expiretime` double DEFAULT NULL,
  `owner` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`createdAt`, `updatedAt`, `id`, `otp`, `otp_expiretime`, `owner`) VALUES
(1559028706934, 1559028706934, 15, 852002, 1559029006934, 1),
(1559028711249, 1559028711249, 16, 885499, 1559029011249, 2),
(1559028712768, 1559028712768, 17, 856308, 1559029012768, 3),
(1559028715262, 1559028715262, 18, 34528, 1559029015262, 4),
(1559028717288, 1559028717288, 19, 614881, 1559029017288, 5),
(1559028719390, 1559028719390, 20, 67123, 1559029019390, 6),
(1559028721472, 1559028721472, 21, 920856, 1559029021472, 7),
(1559028722909, 1559028722909, 22, 824877, 1559029022909, 8),
(1559028726849, 1559028726849, 23, 111037, 1559029026849, 9),
(1559028729944, 1559028729944, 24, 836595, 1559029029944, 10),
(1559028731839, 1559028731839, 25, 521890, 1559029031839, 11),
(1559028734367, 1559028734367, 26, 336480, 1559029034366, 12),
(1559028736399, 1559028736399, 27, 477913, 1559029036399, 13);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `createdAt` bigint(20) NOT NULL,
  `updatedAt` bigint(20) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `hashedPassword` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` double DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`createdAt`, `updatedAt`, `id`, `email`, `hashedPassword`, `firstname`, `lastname`, `address`, `phone_number`, `role`, `isactive`) VALUES
(1559028704953, 1559028704950, 1, 'thang1234@tma.com.vn', '$2b$10$NCGmg9cUCW.RGsMNAIiTxevnhF2dJnn2/5iJyDHT2qkc7ehphalGm', 'Jens', 'Jonasson', 'sdfs', 21322, 'admin', 1),
(1559028709786, 1559028709786, 2, 'thang15234@tma.com.vn', '$2b$10$40CSObBhvfrkrmSdCxH1oeNvcJuj8qE9XsNgRb5UPpjUSz7O3/eU6', 'Jens', 'Jonasson', 'sdfs', 21322, 'admin', 0),
(1559028711553, 1559028711553, 3, 'thang152364@tma.com.vn', '$2b$10$KIGPXwXb.NOF.azXpQdBnOxVxLxoi69liTgl/44n.MjaDKG4./aQ6', 'Jens', 'Jonasson', 'sdfs', 21322, 'admin', 0),
(1559028713985, 1559028713985, 4, 'thang152364@t3ma.com.vn', '$2b$10$3EfwakDhCz4THSELaw62ZOG9YIfTa4H.UCC8al98PCkZy8uB7Crwq', 'Jens', 'Jonasson', 'sdfs', 21322, 'admin', 0),
(1559028716074, 1559028716074, 5, 'thang1523644@t3ma.com.vn', '$2b$10$IXt3SkDjshFNcKgz3.SNmecDWc945HNK3QkDiYt.USXSnQJtFX4cO', 'Jens', 'Jonasson', 'sdfs', 21322, 'admin', 0),
(1559028718176, 1559028718176, 6, 'thang15644@t3ma.com.vn', '$2b$10$Qbw5hqkLyKDNeWl/gA6UieaYhFORLwvk.Ttw0S61GglcRNqPJBPFK', 'Jens', 'Jonasson', 'sdfs', 21322, 'admin', 0),
(1559028720031, 1559028720031, 7, 'thang156144@t3ma.com.vn', '$2b$10$3dZYq/wSkzOVRvFEZhMV8.Kf7o7793hP88.9alopQNRUdYRfMGHVC', 'Jens', 'Jonasson', 'sdfs', 21322, 'admin', 0),
(1559028721704, 1559028721704, 8, 'tha2ng156144@t3ma.com.vn', '$2b$10$ws8cgB.pZkN1NNkZCoAw4.trUz0XBmORdy5dTg8yiUeeOBMnh1GCu', 'Jens', 'Jonasson', 'sdfs', 21322, 'admin', 0),
(1559028725584, 1559028725584, 9, 'th4a2ng156144@t3ma.com.vn', '$2b$10$p0D9T0DVjj9Rhg3XcMG3Q.leJBAAXKEH2wlyDYZJRWzMuSIi9hiRy', 'Jens', 'Jon5asson', 'sdfs', 21322, 'admin', 0),
(1559028728735, 1559028728735, 10, 'th4a2n4g156144@t3ma.com.vn', '$2b$10$2AKVLaZcyXCQf.KxhmDbTe1A3ukYHGOCQ8Q8hIbo7Mmt9u/9tleAy', 'Jens', 'Jon5asson', 'sdfs', 21322, 'admin', 0),
(1559028730604, 1559028730604, 11, 'th4a2n4g1256144@t3ma.com.vn', '$2b$10$TGqG1ieW4YZU12OZsVjaweznmzuBUH1U77vDueVvt.9Kd9Hnk7zvW', 'Jens', 'Jon5asson', 'sdfs', 21322, 'admin', 0),
(1559028733169, 1559028733169, 12, 'th4a12n4g1256144@t3ma.com.vn', '$2b$10$kIcKgJnqZgi5VNPUzJWft.cnv8hMTHB2JHZv01HgTq6Plj3sXbnay', 'Jens', 'Jon5asson', 'sdfs', 21322, 'admin', 0),
(1559028735064, 1559028735064, 13, 'th4a142n4g1256144@t3ma.com.vn', '$2b$10$06JFXxs20oBkdysRH6wZ1OL7t4bik4JSL6n9FDd2eSvvOt1mDxLnK', 'Jens', 'Jon5asson', 'sdfs', 21322, 'admin', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive`
--
ALTER TABLE `archive`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `jwtoken`
--
ALTER TABLE `jwtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archive`
--
ALTER TABLE `archive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jwtoken`
--
ALTER TABLE `jwtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
