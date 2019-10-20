-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2019 at 06:43 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `post`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_25_074012_create_posts_table', 2),
(5, '2019_08_27_090643_create_schools_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `status`, `description`, `image`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ishara', 1, 'dsd', 'C:\\xampp\\tmp\\phpDF5D.tmp', NULL, NULL, '2019-08-28 11:57:06', '2019-08-28 11:57:06');

-- --------------------------------------------------------

--
-- Table structure for table `schoolphotos`
--

CREATE TABLE `schoolphotos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schoolphotos`
--

INSERT INTO `schoolphotos` (`id`, `school_id`, `filename`, `created_at`, `updated_at`) VALUES
(1, 5, 'photos/2UX22T4q8SyeL5v23Ggk9x5CX9F4B1fsN6Mkqxom.jpeg', '2019-08-28 11:32:59', '2019-08-28 11:32:59'),
(2, 5, 'photos/Xl3fUx7tzBf7vglfHBI5DGeISTMYQib8FyzbYqrs.jpeg', '2019-08-28 11:32:59', '2019-08-28 11:32:59'),
(3, 5, 'photos/il23Lc9WjxC15w49E0VTBIe1gdO8ytE1xJBcVP04.jpeg', '2019-08-28 11:32:59', '2019-08-28 11:32:59'),
(4, 6, 'upload/schoolphotos/i1NSIU8ZDptdhMbfpkNcwXma2e20dRJSohFPcemt.jpeg', '2019-08-28 11:35:10', '2019-08-28 11:35:10'),
(5, 6, 'upload/schoolphotos/c91ya0ibRA0953jSIFtOrHp5c51vj37kaSh2R1MY.jpeg', '2019-08-28 11:35:10', '2019-08-28 11:35:10'),
(6, 6, 'upload/schoolphotos/nwiPzCoRi12hfEqTucxxo76UdmeRJhHnqjEeZqYN.jpeg', '2019-08-28 11:35:10', '2019-08-28 11:35:10'),
(7, 8, 'car3.jpg', '2019-08-28 11:59:54', '2019-08-28 11:59:54'),
(8, 13, 'car3.jpg', '2019-08-28 12:08:29', '2019-08-28 12:08:29'),
(9, 13, 'car4.jpg', '2019-08-28 12:08:29', '2019-08-28 12:08:29'),
(10, 13, 'car5.jpg', '2019-08-28 12:08:29', '2019-08-28 12:08:29'),
(11, 14, '6.png', '2019-08-28 12:09:46', '2019-08-28 12:09:46'),
(12, 14, '7.png', '2019-08-28 12:09:46', '2019-08-28 12:09:46'),
(13, 14, '8.png', '2019-08-28 12:09:46', '2019-08-28 12:09:46'),
(14, 15, '6.png', '2019-08-28 12:10:39', '2019-08-28 12:10:39'),
(15, 15, '7.png', '2019-08-28 12:10:39', '2019-08-28 12:10:39'),
(16, 15, '8.png', '2019-08-28 12:10:39', '2019-08-28 12:10:39'),
(17, 16, '6.png', '2019-08-28 12:11:18', '2019-08-28 12:11:18'),
(18, 16, '7.png', '2019-08-28 12:11:18', '2019-08-28 12:11:18'),
(19, 16, '8.png', '2019-08-28 12:11:18', '2019-08-28 12:11:18'),
(20, 17, 'car1.jpg', '2019-08-28 12:12:05', '2019-08-28 12:12:05'),
(21, 17, 'car2.jpg', '2019-08-28 12:12:05', '2019-08-28 12:12:05'),
(22, 17, 'car5.jpg', '2019-08-28 12:12:05', '2019-08-28 12:12:05'),
(23, 18, 'car1.jpg', '2019-08-28 12:14:33', '2019-08-28 12:14:33'),
(24, 18, 'car2.jpg', '2019-08-28 12:14:33', '2019-08-28 12:14:33'),
(25, 18, 'car5.jpg', '2019-08-28 12:14:33', '2019-08-28 12:14:33'),
(26, 19, '2016_C_HR_Dynamic_02.jpg', '2019-08-28 12:15:07', '2019-08-28 12:15:07'),
(27, 19, '2017_toyota_c_hr_suv-HD.jpg', '2019-08-28 12:15:07', '2019-08-28 12:15:07'),
(28, 19, '50618271_1446968988768813_2391984720138207232_n.jpg', '2019-08-28 12:15:07', '2019-08-28 12:15:07');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Select Post', '2019-08-27 12:25:07', '2019-08-27 12:25:07'),
(2, 'Select Post', '2019-08-28 11:28:41', '2019-08-28 11:28:41'),
(3, 'Select Post', '2019-08-28 11:30:51', '2019-08-28 11:30:51'),
(4, 'Select Post', '2019-08-28 11:31:45', '2019-08-28 11:31:45'),
(5, 'Select Post', '2019-08-28 11:32:59', '2019-08-28 11:32:59'),
(6, 'Select Post', '2019-08-28 11:35:10', '2019-08-28 11:35:10'),
(7, 'Select Post', '2019-08-28 11:52:08', '2019-08-28 11:52:08'),
(8, 'Select Post', '2019-08-28 11:59:54', '2019-08-28 11:59:54'),
(9, 'Select Post', '2019-08-28 12:01:31', '2019-08-28 12:01:31'),
(10, 'Select Post', '2019-08-28 12:03:28', '2019-08-28 12:03:28'),
(11, 'Select Post', '2019-08-28 12:04:57', '2019-08-28 12:04:57'),
(12, 'Select Post', '2019-08-28 12:06:18', '2019-08-28 12:06:18'),
(13, 'Select Post', '2019-08-28 12:08:29', '2019-08-28 12:08:29'),
(14, 'Select Post', '2019-08-28 12:09:46', '2019-08-28 12:09:46'),
(15, 'Select Post', '2019-08-28 12:10:39', '2019-08-28 12:10:39'),
(16, 'Select Post', '2019-08-28 12:11:18', '2019-08-28 12:11:18'),
(17, 'Select Post', '2019-08-28 12:12:04', '2019-08-28 12:12:04'),
(18, 'Select Post', '2019-08-28 12:14:33', '2019-08-28 12:14:33'),
(19, 'Select Post', '2019-08-28 12:15:07', '2019-08-28 12:15:07'),
(20, 'Select Post', '2019-08-28 12:23:18', '2019-08-28 12:23:18'),
(21, 'Select Post', '2019-08-28 12:23:50', '2019-08-28 12:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `school_photos`
--

CREATE TABLE `school_photos` (
  `id` int(11) NOT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_photos`
--

INSERT INTO `school_photos` (`id`, `school_id`, `filename`, `created_at`, `updated_at`) VALUES
(1, 21, 'car2.jpg', '2019-08-28 12:23:50', '2019-08-28 12:23:50'),
(2, 21, 'car3.jpg', '2019-08-28 12:23:50', '2019-08-28 12:23:50'),
(3, 21, 'car5.jpg', '2019-08-28 12:23:50', '2019-08-28 12:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ishara', 'ishara@ymail.com', NULL, '$2y$10$kWOEj57LeSe6Y5k1eoLbvO43ua5LwqsXoa9DHPtU3JP8QxIrlx1ly', NULL, '2019-08-23 12:59:44', '2019-08-23 12:59:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolphotos`
--
ALTER TABLE `schoolphotos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_photos`
--
ALTER TABLE `school_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schoolphotos`
--
ALTER TABLE `schoolphotos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `school_photos`
--
ALTER TABLE `school_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
