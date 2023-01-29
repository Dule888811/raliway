-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2023 at 09:46 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `raliway`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`name`, `created_at`, `updated_at`) VALUES
('beograd', NULL, NULL),
('bosilegrad', NULL, NULL),
('doljevac', NULL, NULL),
('jagodina', NULL, NULL),
('knjazevac', NULL, NULL),
('kragujevac', NULL, NULL),
('kraljevo', NULL, NULL),
('krusevac', NULL, NULL),
('lapovo', NULL, NULL),
('leskovac', NULL, NULL),
('nis', NULL, NULL),
('paracin', NULL, NULL),
('prokuplje', NULL, NULL),
('surdulica', NULL, NULL),
('trstenik', NULL, NULL),
('valjevo', NULL, NULL),
('vladicin han', NULL, NULL),
('vranje', NULL, NULL),
('vrnjacka banja', NULL, NULL),
('zajecar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_27_153140_create_cities_table', 1),
(6, '2023_01_27_162043_create_raliway_lines_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `raliway_lines`
--

CREATE TABLE `raliway_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `train` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` time NOT NULL,
  `distance` smallint(5) UNSIGNED NOT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `raliway_lines`
--

INSERT INTO `raliway_lines` (`id`, `train`, `time`, `distance`, `city_name`, `created_at`, `updated_at`) VALUES
(1, '312', '12:30:00', 0, 'leskovac', NULL, NULL),
(2, '312', '13:00:00', 20, 'doljevac', NULL, NULL),
(3, '312', '13:30:00', 20, 'nis', NULL, NULL),
(4, '231', '10:15:00', 0, 'nis', NULL, NULL),
(5, '231', '11:00:00', 50, 'lapovo', NULL, NULL),
(6, '231', '11:30:00', 30, 'paracin', NULL, NULL),
(7, '231', '12:00:00', 20, 'jagodina', NULL, NULL),
(8, '231', '13:00:00', 30, 'kragujevac', NULL, NULL),
(9, '231', '14:15:00', 50, 'beograd', NULL, NULL),
(10, '238', '11:00:00', 0, 'valjevo', NULL, NULL),
(11, '238', '12:15:00', 80, 'kragujevac', NULL, NULL),
(12, '238', '13:00:00', 40, 'vrnjacka banja', NULL, NULL),
(13, '238', '14:00:00', 40, 'trstenik', NULL, NULL),
(14, '315', '12:10:00', 0, 'paracin', NULL, NULL),
(15, '315', '14:00:00', 100, 'knjazevac', NULL, NULL),
(17, '315', '16:00:00', 85, 'zajecar', NULL, NULL),
(18, '247', '11:00:00', 0, 'nis', NULL, NULL),
(19, '247', '11:45:00', 20, 'doljevac', NULL, NULL),
(20, '247', '12:00:00', 20, 'leskovac', NULL, NULL),
(21, '288', '09:00:00', 0, 'nis', NULL, NULL),
(23, '288', '09:50:00', 30, 'prokuplje', NULL, NULL),
(24, '255', '11:00:00', 0, 'nis', NULL, NULL),
(25, '255', '11:30:00', 30, 'prokuplje', NULL, NULL),
(26, '277', '12:00:00', 0, 'prokuplje', NULL, NULL),
(27, '277', '13:00:00', 30, 'leskovac', NULL, NULL),
(28, '299', '10:00:00', 0, 'prokuplje', NULL, NULL),
(29, '299', '11:00:00', 30, 'leskovac', NULL, NULL),
(30, '418', '12:30:00', 0, 'leskovac', NULL, NULL),
(31, '418', '12:50:00', 35, 'surdulica', NULL, NULL),
(32, '418', '13:10:00', 25, 'vladicin han', NULL, NULL),
(33, '418', '14:30:00', 50, 'vranje', NULL, NULL),
(34, '428', '11:30:00', 0, 'vranje', NULL, NULL),
(35, '428', '12:45:00', 50, 'vladicin han', NULL, NULL),
(36, '428', '13:10:00', 25, 'surdulica', NULL, NULL),
(37, '428', '14:50:00', 45, 'bosilegrad', NULL, NULL),
(38, '518', '11:15:00', 0, 'lapovo', NULL, NULL),
(39, '518', '12:00:00', 30, 'krusevac', NULL, NULL),
(40, '518', '12:45:00', 30, 'trstenik', NULL, NULL),
(41, '518', '13:30:00', 40, 'kraljevo', NULL, NULL),
(42, '518', '14:10:00', 20, 'vrnjacka banja', NULL, NULL),
(43, '611', '11:30:00', 0, 'valjevo', NULL, NULL),
(44, '611', '13:30:00', 80, 'kragujevac', NULL, NULL),
(45, '611', '14:50:00', 60, 'kraljevo', NULL, NULL),
(46, '611', '15:30:00', 40, 'trstenik', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `raliway_lines`
--
ALTER TABLE `raliway_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `raliway_lines_city_name_foreign` (`city_name`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `raliway_lines`
--
ALTER TABLE `raliway_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `raliway_lines`
--
ALTER TABLE `raliway_lines`
  ADD CONSTRAINT `raliway_lines_city_name_foreign` FOREIGN KEY (`city_name`) REFERENCES `cities` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
