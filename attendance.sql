-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 16, 2017 at 08:27 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign_subjects`
--

CREATE TABLE `assign_subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `period` int(10) UNSIGNED NOT NULL,
  `section` enum('A','B') COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_subjects`
--

INSERT INTO `assign_subjects` (`id`, `period`, `section`, `teacher_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(2, 5, 'B', 1, 3, '2017-06-16 02:34:12', '2017-06-16 11:05:41'),
(3, 3, 'A', 1, 4, '2017-06-16 02:46:22', '2017-06-16 02:46:22'),
(5, 1, 'A', 1, 5, '2017-06-16 03:14:12', '2017-06-16 03:14:12'),
(6, 2, 'B', 1, 5, '2017-06-16 03:14:12', '2017-06-16 03:14:12'),
(7, 7, 'A', 1, 6, '2017-06-16 03:16:49', '2017-06-16 04:07:42'),
(8, 8, 'B', 1, 6, '2017-06-16 03:16:49', '2017-06-16 04:07:42'),
(9, 3, 'A', 3, 3, '2017-06-16 04:02:00', '2017-06-16 11:05:41'),
(10, 5, 'A', 2, 7, '2017-06-16 04:09:41', '2017-06-16 04:10:04'),
(11, 1, 'B', 2, 7, '2017-06-16 04:09:41', '2017-06-16 04:10:04'),
(12, 1, 'A', 3, 8, '2017-06-16 11:07:29', '2017-06-16 11:07:29'),
(13, 7, 'B', 2, 8, '2017-06-16 11:07:29', '2017-06-16 11:07:29'),
(14, 4, 'A', 3, 9, '2017-06-16 11:08:57', '2017-06-16 11:08:57'),
(15, 5, 'B', 3, 9, '2017-06-16 11:08:57', '2017-06-16 11:08:57'),
(16, 7, 'A', 3, 10, '2017-06-16 11:54:39', '2017-06-16 11:54:39'),
(17, 6, 'B', 3, 10, '2017-06-16 11:54:39', '2017-06-16 11:54:39'),
(18, 5, 'A', 5, 11, '2017-06-16 11:58:29', '2017-06-16 12:21:31'),
(19, 3, 'B', 5, 11, '2017-06-16 11:58:29', '2017-06-16 11:58:29'),
(20, 4, 'A', 5, 12, '2017-06-16 12:08:16', '2017-06-16 12:08:16'),
(21, 7, 'B', 4, 12, '2017-06-16 12:08:16', '2017-06-16 12:08:16'),
(22, 1, 'A', 5, 13, '2017-06-16 12:09:09', '2017-06-16 12:09:09'),
(23, 6, 'B', 5, 13, '2017-06-16 12:09:09', '2017-06-16 12:09:09');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `semester` int(11) NOT NULL,
  `section` enum('A','B') COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `attendance` enum('P','A','L','S') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'P',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `semester`, `section`, `subject_id`, `student_id`, `date`, `attendance`, `created_at`, `updated_at`) VALUES
(3, 1, 'A', 7, 1, '2017-06-16 14:31:52', 'A', '2017-06-16 08:40:38', '2017-06-16 09:31:52'),
(4, 1, 'A', 7, 1, '2017-06-16 14:36:15', 'A', '2017-06-16 08:40:38', '2017-06-16 09:36:15'),
(5, 1, 'A', 7, 1, '2017-06-16 14:33:58', 'A', '2017-06-16 09:33:20', '2017-06-16 09:33:58'),
(6, 1, 'A', 7, 1, '2017-06-16 14:35:09', 'A', '2017-06-16 09:34:43', '2017-06-16 09:35:09'),
(7, 1, 'A', 7, 1, '2017-06-16 14:42:20', 'P', '2017-06-16 09:37:11', '2017-06-16 09:42:20'),
(8, 1, 'A', 7, 1, '2017-06-16 14:42:20', 'A', '2017-06-16 09:41:48', '2017-06-16 09:42:20'),
(9, 1, 'A', 7, 1, '2017-06-13 19:00:00', 'L', '2017-06-16 09:41:48', '2017-06-16 09:50:22'),
(10, 1, 'A', 7, 1, '2017-06-15 19:00:00', 'P', '2017-06-16 09:49:14', '2017-06-16 09:50:28'),
(11, 1, 'A', 7, 1, '2017-06-14 19:00:00', 'A', '2017-06-16 09:49:14', '2017-06-16 09:49:23'),
(13, 1, 'A', 11, 1, '2017-06-15 19:00:00', 'P', '2017-06-16 12:29:56', '2017-06-16 12:29:56'),
(14, 1, 'A', 11, 1, '2017-06-08 19:00:00', 'A', '2017-06-16 12:29:56', '2017-06-16 12:29:56'),
(15, 1, 'A', 11, 16, '2017-06-14 19:00:00', 'P', '2017-06-16 12:29:56', '2017-06-16 12:29:56'),
(16, 1, 'A', 11, 16, '2017-06-11 19:00:00', 'A', '2017-06-16 12:29:56', '2017-06-16 12:29:56'),
(17, 1, 'A', 11, 18, '2017-06-13 19:00:00', 'P', '2017-06-16 12:29:56', '2017-06-16 12:29:56'),
(18, 1, 'A', 11, 18, '2017-06-12 19:00:00', 'A', '2017-06-16 12:29:56', '2017-06-16 12:29:56'),
(19, 1, 'A', 11, 1, '2017-06-14 19:00:00', 'P', '2017-06-16 12:30:49', '2017-06-16 12:30:49'),
(20, 1, 'A', 11, 1, '2017-06-13 19:00:00', 'P', '2017-06-16 12:30:49', '2017-06-16 12:30:49'),
(21, 1, 'A', 11, 16, '2017-06-15 19:00:00', 'A', '2017-06-16 12:30:49', '2017-06-16 12:30:49'),
(22, 1, 'A', 11, 16, '2017-06-12 19:00:00', 'P', '2017-06-16 12:30:49', '2017-06-16 12:30:49'),
(23, 1, 'A', 11, 16, '2017-06-07 19:00:00', 'P', '2017-06-16 12:30:49', '2017-06-16 12:30:49'),
(24, 1, 'A', 11, 18, '2017-06-07 19:00:00', 'L', '2017-06-16 12:30:49', '2017-06-16 12:30:49'),
(25, 1, 'A', 11, 1, '2017-06-05 19:00:00', 'P', '2017-06-16 12:31:46', '2017-06-16 12:31:46'),
(26, 1, 'A', 11, 1, '2017-06-04 19:00:00', 'L', '2017-06-16 12:31:46', '2017-06-16 12:31:46'),
(27, 1, 'A', 11, 16, '2017-06-05 19:00:00', 'P', '2017-06-16 12:31:46', '2017-06-16 12:31:46'),
(28, 1, 'A', 11, 16, '2017-06-04 19:00:00', 'S', '2017-06-16 12:31:46', '2017-06-16 12:31:46'),
(29, 1, 'A', 11, 18, '2017-06-05 19:00:00', 'P', '2017-06-16 12:31:46', '2017-06-16 12:31:46'),
(30, 1, 'A', 11, 18, '2017-06-04 19:00:00', 'A', '2017-06-16 12:31:46', '2017-06-16 12:31:46'),
(31, 1, 'B', 11, 14, '2017-06-14 19:00:00', 'P', '2017-06-16 12:32:32', '2017-06-16 12:32:32'),
(32, 1, 'B', 11, 14, '2017-06-12 19:00:00', 'P', '2017-06-16 12:32:32', '2017-06-16 12:32:32'),
(33, 1, 'B', 11, 14, '2017-06-08 19:00:00', 'A', '2017-06-16 12:32:32', '2017-06-16 12:32:32'),
(34, 1, 'B', 11, 14, '2017-06-06 19:00:00', 'S', '2017-06-16 12:32:32', '2017-06-16 12:32:32'),
(35, 5, 'A', 12, 20, '2017-06-15 19:00:00', 'P', '2017-06-16 12:33:02', '2017-06-16 12:33:02'),
(36, 5, 'A', 12, 20, '2017-06-14 19:00:00', 'P', '2017-06-16 12:33:02', '2017-06-16 12:33:02'),
(37, 5, 'A', 12, 20, '2017-06-13 19:00:00', 'P', '2017-06-16 12:33:02', '2017-06-16 12:33:02'),
(38, 5, 'A', 12, 20, '2017-06-12 19:00:00', 'P', '2017-06-16 12:33:02', '2017-06-16 12:33:02'),
(39, 5, 'A', 12, 20, '2017-06-08 19:00:00', 'P', '2017-06-16 12:33:02', '2017-06-16 12:33:02'),
(40, 5, 'A', 12, 20, '2017-06-07 19:00:00', 'P', '2017-06-16 12:33:02', '2017-06-16 12:33:02'),
(41, 5, 'A', 12, 20, '2017-06-06 19:00:00', 'P', '2017-06-16 12:33:02', '2017-06-16 12:33:02'),
(42, 5, 'A', 12, 20, '2017-06-05 19:00:00', 'P', '2017-06-16 12:33:02', '2017-06-16 12:33:02'),
(43, 5, 'A', 12, 20, '2017-05-31 19:00:00', 'P', '2017-06-16 12:33:02', '2017-06-16 12:33:02'),
(44, 1, 'B', 11, 14, '2017-06-13 19:00:00', 'L', '2017-06-16 12:33:21', '2017-06-16 12:33:21'),
(45, 4, 'B', 13, 7, '2017-06-15 19:00:00', 'L', '2017-06-16 12:34:07', '2017-06-16 12:34:07'),
(46, 4, 'B', 13, 7, '2017-06-14 19:00:00', 'P', '2017-06-16 12:34:07', '2017-06-16 12:34:07'),
(47, 4, 'B', 13, 7, '2017-06-13 19:00:00', 'S', '2017-06-16 12:34:07', '2017-06-16 12:34:07'),
(48, 4, 'B', 13, 7, '2017-06-12 19:00:00', 'P', '2017-06-16 12:34:07', '2017-06-16 12:34:07'),
(49, 4, 'B', 13, 7, '2017-06-11 19:00:00', 'A', '2017-06-16 12:34:07', '2017-06-16 12:34:07'),
(50, 4, 'B', 13, 7, '2017-06-08 19:00:00', 'P', '2017-06-16 12:34:07', '2017-06-16 12:34:07'),
(51, 4, 'B', 13, 7, '2017-06-07 19:00:00', 'P', '2017-06-16 12:34:07', '2017-06-16 12:34:07'),
(52, 4, 'B', 13, 7, '2017-06-06 19:00:00', 'P', '2017-06-16 12:34:07', '2017-06-16 12:34:07'),
(53, 4, 'B', 13, 7, '2017-06-05 19:00:00', 'L', '2017-06-16 12:34:07', '2017-06-16 12:34:07'),
(54, 4, 'B', 13, 7, '2017-06-04 19:00:00', 'L', '2017-06-16 12:34:07', '2017-06-16 12:34:07'),
(55, 1, 'A', 11, 16, '2017-06-06 19:00:00', 'S', '2017-06-16 12:34:18', '2017-06-16 12:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `semester` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `semester`, `section`, `identifier`, `created_at`, `updated_at`) VALUES
(1, 'semester1', 'A', 'semester1_A', '2017-06-16 01:51:29', '2017-06-16 01:51:29'),
(2, 'semester1', 'B', 'semester1_B', '2017-06-16 01:51:29', '2017-06-16 01:51:29'),
(3, 'semester2', 'A', 'semester2_A', '2017-06-16 01:51:29', '2017-06-16 01:51:29'),
(4, 'semester2', 'B', 'semester2_B', '2017-06-16 01:51:29', '2017-06-16 01:51:29'),
(5, 'semester3', 'A', 'semester3_A', '2017-06-16 01:51:29', '2017-06-16 01:51:29'),
(6, 'semester3', 'B', 'semester3_B', '2017-06-16 01:51:29', '2017-06-16 01:51:29'),
(7, 'semester4', 'A', 'semester4_A', '2017-06-16 01:51:29', '2017-06-16 01:51:29'),
(8, 'semester4', 'B', 'semester4_B', '2017-06-16 01:51:29', '2017-06-16 01:51:29'),
(9, 'semester5', 'A', 'semester5_A', '2017-06-16 01:51:29', '2017-06-16 01:51:29'),
(10, 'semester5', 'B', 'semester5_B', '2017-06-16 01:51:29', '2017-06-16 01:51:29'),
(11, 'semester6', 'A', 'semester6_A', '2017-06-16 01:51:29', '2017-06-16 01:51:29'),
(12, 'semester6', 'B', 'semester6_B', '2017-06-16 01:51:29', '2017-06-16 01:51:29'),
(13, 'semester7', 'A', 'semester7_A', '2017-06-16 01:51:29', '2017-06-16 01:51:29'),
(14, 'semester7', 'B', 'semester7_B', '2017-06-16 01:51:29', '2017-06-16 01:51:29'),
(15, 'semester8', 'A', 'semester8_A', '2017-06-16 01:51:29', '2017-06-16 01:51:29'),
(16, 'semester8', 'B', 'semester8_B', '2017-06-16 01:51:29', '2017-06-16 01:51:29');

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
(42, '2014_10_12_000000_create_users_table', 1),
(43, '2014_10_12_100000_create_password_resets_table', 1),
(44, '2017_06_12_091322_create_classes_table', 1),
(45, '2017_06_12_092021_create_students_table', 1),
(46, '2017_06_12_092827_create_teachers_table', 1),
(47, '2017_06_12_094347_create_subjects_table', 1),
(48, '2017_06_12_101156_create_attendances_table', 1),
(49, '2017_06_12_152000_add_teacher_id_in_users', 1),
(50, '2017_06_15_083416_create_assign_subjects_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `semester` int(11) NOT NULL,
  `section` enum('A','B') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roll_no` int(10) UNSIGNED NOT NULL,
  `enroll_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `semester`, `section`, `name`, `roll_no`, `enroll_no`, `email`, `phone_no`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'A', 'student1', 1, 'sem12345', 'student1@gmail.com', '09988796898789', 'India', 'active', '2017-06-16 01:51:29', '2017-06-16 01:51:29'),
(2, 2, 'A', 'student2', 1, 'sem2323', 'student2@gmail.com', '09988796898789', 'India', 'active', '2017-06-16 01:51:29', '2017-06-16 01:51:29'),
(7, 4, 'B', 'student 1', 1, 'adcdehb', 'teacher7@gmail.com', '03000364236', 'india', 'active', '2017-06-16 11:12:46', '2017-06-16 11:12:46'),
(13, 6, 'B', 'samian', 1, 'adcdehbj', 'ali@gmaill.com', '0404040404', 'jjkkj', 'active', '2017-06-16 11:50:34', '2017-06-16 11:50:34'),
(14, 1, 'B', 'adnan ali', 1, '6546532', 'adnan@gmail.com', '02535243288', 'jhgshgymwhdudj', 'active', '2017-06-16 12:00:07', '2017-06-16 12:00:07'),
(15, 2, 'A', 'saira khan', 2, '2676672', 'saira@gmail.com', '84677482654', 'uwydu', 'active', '2017-06-16 12:01:28', '2017-06-16 12:01:28'),
(16, 1, 'A', 'atia', 2, '763467', 'atia@gmail.com', '065235673', 'hsah', 'active', '2017-06-16 12:02:35', '2017-06-16 12:02:35'),
(17, 2, 'B', 'bella', 1, '3244', 'bella@gmail.com', '43545454645', 'fhvkdf', 'active', '2017-06-16 12:03:44', '2017-06-16 12:03:44'),
(18, 1, 'A', 'noman', 3, '56325', 'nomi@gmail.com', '26324746372663', 'dhhwd', 'active', '2017-06-16 12:06:49', '2017-06-16 12:06:49'),
(19, 3, 'B', 'fasil', 1, 'jhd', 'dj@ndsj.com', '762654634', 'ddhdsh', 'active', '2017-06-16 12:11:29', '2017-06-16 12:11:29'),
(20, 5, 'A', 'dani', 1, '523', 'd@jh.com', '664524762376', 'dsuyguw', 'active', '2017-06-16 12:12:30', '2017-06-16 12:12:30'),
(21, 5, 'B', 'atiq', 1, 'y3737', 'ad@jd.com', '76476767783', 'jhfjhf', 'active', '2017-06-16 12:13:14', '2017-06-16 12:13:14'),
(22, 6, 'A', 'hafsa', 1, '7643', 'eroor@njd.com', '7673284673', 'jshdmkei', 'active', '2017-06-16 12:14:00', '2017-06-16 12:14:00'),
(23, 6, 'B', 'hafsa nadeem', 2, '743', 'hafsa@dkd.com', '76237647326', 'edjheuhdhw', 'active', '2017-06-16 12:14:39', '2017-06-16 12:14:39'),
(24, 7, 'A', 'edward', 1, '64', 'ed@mdn.com', '736247674682374', 'dhhd', 'active', '2017-06-16 12:15:34', '2017-06-16 12:15:34'),
(25, 7, 'B', 'hasan', 1, '647383', 'h@s.com', '8746274678', 'hgdf', 'active', '2017-06-16 12:16:41', '2017-06-16 12:16:41'),
(26, 8, 'B', 'dhu', 1, '6345', 'rar@bdj.com', '476237782', 'hdgygd', 'active', '2017-06-16 12:17:31', '2017-06-16 12:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `semester` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_hour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `semester`, `name`, `short_key`, `credit_hour`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'phycis', 'phy', '2', 'active', '2017-06-16 02:10:26', '2017-06-16 02:10:26'),
(3, 1, 'Chemistry', 'phy1', '4.5', 'active', '2017-06-16 02:34:12', '2017-06-16 11:05:41'),
(4, 3, 'qsq', 'dq', 'ad', 'active', '2017-06-16 02:46:22', '2017-06-16 02:46:22'),
(5, 3, 'physics', 'phy2', '3', 'active', '2017-06-16 03:14:12', '2017-06-16 03:14:12'),
(6, 1, 'phycis', 'phy4', '909', 'active', '2017-06-16 03:16:49', '2017-06-16 04:03:36'),
(7, 2, 'maths', 'math', '2.3', 'active', '2017-06-16 04:09:41', '2017-06-16 04:09:41'),
(8, 6, 'biology', 'bio3', '3.5', 'active', '2017-06-16 11:07:29', '2017-06-16 11:07:29'),
(9, 7, 'botany', 'bot1', '3.5', 'active', '2017-06-16 11:08:57', '2017-06-16 11:08:57'),
(10, 8, 'history', 'h2', '5.6', 'active', '2017-06-16 11:54:39', '2017-06-16 11:54:39'),
(11, 1, 'persian', 'per3', '3.0', 'active', '2017-06-16 11:58:29', '2017-06-16 11:58:29'),
(12, 5, 'zoology', 'zoo3', '3.3', 'active', '2017-06-16 12:08:16', '2017-06-16 12:08:16'),
(13, 4, 'math', 'math3', '5.0', 'active', '2017-06-16 12:09:09', '2017-06-16 12:09:09');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualification` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `phone_no`, `email`, `address`, `qualification`, `unique_name`, `cnic`, `status`, `created_at`, `updated_at`) VALUES
(1, 'teacher1', '03000589799080', 'teacher1@gmail.com', 'India', 'PHD chem', 'teacher1', '0987654321', 'active', '2017-06-16 01:51:29', '2017-06-16 01:51:29'),
(2, 'teaccher 2 name', '08989809090', 'teacher2@gmail.com', 'jnsadk', 'asdqwdf', 't2', '78y2897389127', 'active', '2017-06-16 04:09:11', '2017-06-16 04:09:11'),
(3, 'shaheen', '98998098908', 'shaheen@gmail.com', 'jhwqilhhujqwhfjhf', 'phd Math', 'sha', '87676876', 'active', '2017-06-16 10:11:16', '2017-06-16 10:11:16'),
(4, 'shahzad', '0635467235746', 'shahzad@gmail.com', 'hgwdyhdd', 'phd urdu', 'shah', '52436547663746', 'active', '2017-06-16 11:55:44', '2017-06-16 11:55:44'),
(5, 'umer', '03652356523', 'umer@gmail.com', 'ajhuabfnfjf', 'm.phill chem', 'u.h', '764372476545237473', 'active', '2017-06-16 11:57:38', '2017-06-16 11:57:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('admin','teacher') COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `teacher_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `type`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `teacher_id`) VALUES
(1, 'amina', 'admin', 'amina', 'amina@gmail.com', '$2y$10$1LrhBSvII2EoiiuHoBYAPuYKQunRISb7rYk4rT3alL1mp.Co7z5E.', 'ag4a5zaRNmx2gdN77dHqXq4xAXaIr8gAqPzYWUUVkoWk7QeJrpgHHcvPEgpQ', '2017-06-16 01:51:29', '2017-06-16 01:51:29', NULL),
(2, 'teaccher 2 name', 'teacher', 't2', 'teacher2@gmail.com', '$2y$10$dg4xKV4C350dul1yy00ituBewpFHLQ4JgIE3HN3EkTtutKc28QyKq', 'v32IYt2fmdROPyKBLFAA8mK8zsYJyutuYXsdcmH7Xo7edoj4gRBBVoCa29TE', '2017-06-16 04:09:12', '2017-06-16 04:09:12', 1),
(3, 'shaheen', 'teacher', 'sha', 'shaheen@gmail.com', '$2y$10$okoQV7tI56hIt6CG1E3cVO/qKCtnDHFOX8lJb8Bcq3PptcQiwfepG', NULL, '2017-06-16 10:11:16', '2017-06-16 10:11:16', 3),
(4, 'shahzad', 'teacher', 'shah', 'shahzad@gmail.com', '$2y$10$3C0E0rt.S0fTXiorv2tKhOmONsv5gzUTypI3aV6kBeykvsDbGqLnm', NULL, '2017-06-16 11:55:44', '2017-06-16 11:55:44', 4),
(5, 'umer', 'teacher', 'u.h', 'umer@gmail.com', '$2y$10$pgWS3owPyA7n/CkzlZpXYeuetTKX.JqVX0o9RHcOBU0AkiBOzB2pC', 'nqMvywFO2K2G2WP0YORC9teZupJIbdMhdNRFhKr8RgYVKzYQNOCc8653GIyh', '2017-06-16 11:57:38', '2017-06-16 11:57:38', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assign_subjects_teacher_id_foreign` (`teacher_id`),
  ADD KEY `assign_subjects_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_subject_id_foreign` (`subject_id`),
  ADD KEY `attendances_student_id_foreign` (`student_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `classes_identifier_unique` (`identifier`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_enroll_no_unique` (`enroll_no`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subjects_short_key_unique` (`short_key`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_unique_name_unique` (`unique_name`),
  ADD UNIQUE KEY `teachers_cnic_unique` (`cnic`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_teacher_id_foreign` (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  ADD CONSTRAINT `assign_subjects_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assign_subjects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;
