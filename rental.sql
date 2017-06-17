-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 17, 2017 at 03:32 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `rental_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` enum('1year','1month','1day') COLLATE utf8mb4_unicode_ci NOT NULL,
  `rent_amount` int(10) UNSIGNED NOT NULL,
  `pic1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pic3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `deactivate_reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `title`, `category`, `sub_category`, `description`, `duration`, `rent_amount`, `pic1`, `pic2`, `pic3`, `user_name`, `phone_no`, `email`, `city`, `user_id`, `created_at`, `updated_at`, `status`, `deactivate_reason`) VALUES
(2, 'suzuki', 'vehicles', 'car', 'gsywysywsygduyqwt6qwrhsgytgdtbdrmiubnryuubryftyjvterygejhbdghgsdhdhgfbxhjebgyervfgydj dgfcfg ygcffgfh cgfygscadg', '1day', 3000, 'o1yaQA4Qr15zO5WF.jpeg', 'jqdw9RgM55JD69lw.jpeg', 'uoZ3A0H0A74CQKNr.jpeg', 'tind cony', '8346746782374', 'cony@gmail.com', 'islamabad', 1, '2017-06-17 01:04:43', '2017-06-17 08:08:34', 'active', ''),
(3, 'suzuki', 'vehicles', 'car', 'gsywysywsygduyqwt6qwrhsgytgdtbdrmiubnryuubryftyjvterygejhbdghgsdhdhgfbxhjebgyervfgydj dgfcfg ygcffgfh cgfygscadg', '1day', 3000, 'hSK0bYPn7qT3zgbD.jpeg', 'JraaYz5fCDC0DjbN.jpeg', 'XW20nZ8ytZ9MmxfF.jpeg', 'tind cony', '8346746782374', 'cony@gmail.com', 'islamabad', NULL, '2017-06-17 01:06:21', '2017-06-17 01:06:21', 'active', ''),
(4, 'chorolla', 'vehicles', 'car', 'gsywysywsygduyqwt6qwrhsgytgdtbdrmiubnryuubryftyjvterygejhbdghgsdhdhgfbxhjebgyervfgydj dgfcfg ygcffgfh cgfygscadg', '1month', 20000, 'XrFJUBzxHzi9dCFK.jpeg', 'palLL62Gvhd77Io5.jpeg', 'ql8Og9PhHLjqeLYK.jpeg', 'sony', '74767474646', 'sony@gmail.com', 'pulwama', NULL, '2017-06-17 01:08:14', '2017-06-17 01:08:14', 'active', ''),
(5, 'toyota', 'vehicles', 'tractors', 'gsywysywsygduyqwt6qwrhsgytgdtbdrmiubnryuj dgfcfg ygcffgfh cgfygscadg', '1year', 500000, 'lHMh91IntKxRQ4nu.jpeg', 'RrbufVI5HJR4dRtY.jpeg', 'AAMEaU4HfiG56JMg.jpeg', 'gagni', '42656546735', 'gagni@gmail.com', 'pulwama', NULL, '2017-06-17 01:10:30', '2017-06-17 01:10:30', 'active', '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2017_06_15_083900_create_deals_table', 1),
(9, '2017_06_16_181953_create_vehicles_table', 1),
(10, '2017_06_16_182005_create_properties_table', 1),
(11, '2017_06_17_125700_add_status_in_deals_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('amina.nisar55@gmail.com', '$2y$10$82zkN/XuyvtNDGt.VeHGpeuIteFMbtOpZ86XvxUfXhCHo/xoUbOjW', '2017-06-17 03:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `room` int(10) UNSIGNED NOT NULL,
  `area` int(10) UNSIGNED NOT NULL,
  `area_unit` enum('square_feet','square_yard','square_meter','marla','kanal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deal_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'amina', 'amina.nisar55@gmail.com', '$2y$10$btOikFMlNdWVcTTEqb0Dbeqe3OUXZQRFtS19AkHi22hVKvKGPanVm', 'JTkzdhEgIwAbtYhZCw31UOwCPdWhi4RdMWnKF5VKKSGpEq8uapxWnMBeXk9C', '2017-06-17 02:52:45', '2017-06-17 02:52:45');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fuel` enum('petrol','diesel','lpg','cng','hybrid') COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(10) UNSIGNED NOT NULL,
  `km_driven` int(10) UNSIGNED NOT NULL,
  `deal_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deals_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `properties_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicles_deal_id_foreign` (`deal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `deals`
--
ALTER TABLE `deals`
  ADD CONSTRAINT `deals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vehicles_deal_id_foreign` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`) ON DELETE CASCADE;
