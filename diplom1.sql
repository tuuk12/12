-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2025 at 11:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diplom1`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holbolts`
--

CREATE TABLE `holbolts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medeelels`
--

CREATE TABLE `medeelels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `garchig` varchar(255) DEFAULT NULL,
  `tovch` varchar(255) DEFAULT NULL,
  `delgerengui` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medees`
--

CREATE TABLE `medees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `garchig` varchar(255) DEFAULT NULL,
  `tovch` varchar(255) DEFAULT NULL,
  `delgerengui` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medee_controllers`
--

CREATE TABLE `medee_controllers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `garchig` varchar(255) DEFAULT NULL,
  `tovch` varchar(255) DEFAULT NULL,
  `delgerengui` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(55, '2014_10_12_000000_create_users_table', 1),
(56, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(57, '2014_10_12_100000_create_password_resets_table', 1),
(58, '2019_08_19_000000_create_failed_jobs_table', 1),
(59, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(60, '2025_03_31_160950_create_medee_controllers_table', 1),
(61, '2025_03_31_162107_create_holbolts_table', 1),
(62, '2025_04_01_075014_create_medeelels_table', 1),
(63, '2025_04_01_080125_create_medees_table', 1),
(64, '2025_04_01_082559_create_zurags_table', 1),
(65, '2025_04_02_055122_create_zars_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'zasag', 'admin', 'zas1@gmail.com', NULL, '$2y$12$kV2aeDd.O//zEuSf2nUEbehLuhYLHXOhXn79Hb4HKpY5ZEOS10j.a', NULL, '2025-04-15 00:15:41', '2025-04-15 00:15:41'),
(2, 'tsetserleg', 'user', 'tse1@gmail.com', NULL, '$2y$12$.bsNH5/oEt/a9jSsj9y9c.WZwl9Rjc7nNg3bahFkDIMML9yc5ukbe', NULL, '2025-04-15 02:44:05', '2025-04-15 02:44:05'),
(3, 'purewbaatar', 'user', '6821037@muls.edu.mn', NULL, '$2y$12$RTcHeCB7jWOIdpv2crBtneCAta8P4HanKP0hnM6XVvNOHj1KBCAl.', NULL, '2025-04-21 19:42:59', '2025-04-21 19:42:59'),
(4, 'bagsh', 'user', 'bagsh@gmail.com', NULL, '$2y$12$Z8UjYfSfmpHZQV2JFrDysurXdQ2J5YEkQ3WIxSvIr5MpebqsO1xA2', NULL, '2025-04-21 19:45:44', '2025-04-21 19:45:44');

-- --------------------------------------------------------

--
-- Table structure for table `zars`
--

CREATE TABLE `zars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `zar_type` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `author` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zars`
--

INSERT INTO `zars` (`id`, `user_id`, `zar_type`, `title`, `description`, `author`, `image`, `created_at`, `updated_at`) VALUES
(4, 'tsetserleg', 'Эрүүл мэнд', 'eryehgdf', 'dfhgfhnfhgn', 'gfhjbsrtdfhbetdghb', 'uploads/1744714546.jpg', '2025-04-15 02:55:46', '2025-04-15 02:55:46'),
(5, 'tsetserleg', 'Баг1', 'eryehgdf', 'dfhgfhnfhgn', 'fdhsrtjafgt', 'uploads/1745063966.jpg', '2025-04-19 03:59:26', '2025-04-19 03:59:26'),
(17, 'zasag', 'Онцлохмэдээ', 'dsfhrtjt', 'jtykyrukjtr trt yhht', 'trjhrb 7jerthw thwrthrt', 'uploads/1745302079.jpg', '2025-04-21 22:07:59', '2025-04-21 22:07:59'),
(18, 'zasag', 'Сүүлийнүе', 'sum', 'sdgerhg ht', 'thetbjhrtgerfes teyjhg3wetghn hg', 'uploads/1745302166.jpg', '2025-04-21 22:09:26', '2025-04-21 22:09:26'),
(21, 'zasag', 'Сүүлийнүе', 'twrhjetbyjeherg', 'rwtuhetrvtyhg', 'цуөацу а', 'uploads/1745302371.jpg', '2025-04-21 22:12:51', '2025-04-21 22:12:51'),
(22, 'tsetserleg', 'Цэцэрлэг', 'fghjryj', 'rwtuhetrvtyhg', 'hmetdyhjen  erhe', 'uploads/1745309388.jpg', '2025-04-22 00:09:48', '2025-04-22 00:09:48'),
(23, 'tsetserleg', 'Цэцэрлэг', 'уөжбөааб', 'аөабыаб', 'аыыөа', 'uploads/1745310938.jpg', '2025-04-22 00:35:38', '2025-04-22 00:35:38'),
(24, 'bagsh', 'Сургууль', 'rhqetjh', 'tehjryjty', 'trhwrhtw theh rwh twr htrwt', 'uploads/1745311722.jpg', '2025-04-22 00:48:42', '2025-04-22 00:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `zurags`
--

CREATE TABLE `zurags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ner` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `holbolts`
--
ALTER TABLE `holbolts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medeelels`
--
ALTER TABLE `medeelels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medees`
--
ALTER TABLE `medees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medee_controllers`
--
ALTER TABLE `medee_controllers`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `zars`
--
ALTER TABLE `zars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zurags`
--
ALTER TABLE `zurags`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holbolts`
--
ALTER TABLE `holbolts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medeelels`
--
ALTER TABLE `medeelels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medees`
--
ALTER TABLE `medees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medee_controllers`
--
ALTER TABLE `medee_controllers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `zars`
--
ALTER TABLE `zars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `zurags`
--
ALTER TABLE `zurags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
