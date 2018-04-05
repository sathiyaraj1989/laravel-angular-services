-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2018 at 01:20 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_angular_api`
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
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2018_04_05_082401_create_todos_table', 1),
(7, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(8, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(9, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(10, '2016_06_01_000004_create_oauth_clients_table', 2),
(11, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0920334f58f4562adbb93cc7fdf5f3d15be462a5c227285f329d862d7fdae3aebec093eed6293df7', 1, 2, NULL, '[\"*\"]', 0, '2018-04-05 04:57:30', '2018-04-05 04:57:30', '2019-04-05 10:27:30'),
('466bb8997f813dfb21883a33edf0af2b6e8f8df6cd353a01ec9841dcb7c2d137a07852f9abbd8792', 1, 2, NULL, '[\"*\"]', 0, '2018-04-05 04:59:17', '2018-04-05 04:59:17', '2019-04-05 10:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'cN6UlVZWS94PpnfIA6cUlNmNATx7aS9LzvULHK6u', 'http://localhost', 1, 0, 0, '2018-04-05 04:41:16', '2018-04-05 04:41:16'),
(2, NULL, 'Laravel Password Grant Client', 'HqbNzgjbp2nTlGhPTCsra2VqUjCtfxfyhrPgWfU1', 'http://localhost', 0, 1, 0, '2018-04-05 04:41:16', '2018-04-05 04:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-04-05 04:41:16', '2018-04-05 04:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('83b2a3b0b42286ea2081035a075dd464803d55b276dbeeed49025a510eb442ac6bfdd97ec95e5334', '0920334f58f4562adbb93cc7fdf5f3d15be462a5c227285f329d862d7fdae3aebec093eed6293df7', 0, '2019-04-05 10:27:30'),
('94e1081fe21a4c860975a963e552a33b8d3bbaf190fdca860878a302c7b84bd29c394f981d85e2ce', '466bb8997f813dfb21883a33edf0af2b6e8f8df6cd353a01ec9841dcb7c2d137a07852f9abbd8792', 0, '2019-04-05 10:29:17');

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
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `task` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `done` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `user_id`, `task`, `done`, `created_at`, `updated_at`) VALUES
(1, 1, 'Veniam soluta expedita natus quo labore quas excepturi.', 1, '2018-04-05 04:15:15', '2018-04-05 04:15:15'),
(2, 1, 'Est harum placeat consequatur.', 0, '2018-04-05 04:15:15', '2018-04-05 04:15:15'),
(3, 1, 'Debitis in ut iste nesciunt accusamus.', 1, '2018-04-05 04:15:15', '2018-04-05 04:15:15'),
(4, 1, 'Ea excepturi adipisci facere sint.', 0, '2018-04-05 04:15:15', '2018-04-05 04:15:15'),
(5, 1, 'Enim et praesentium libero eos.', 0, '2018-04-05 04:15:15', '2018-04-05 04:15:15'),
(6, 1, 'Nobis aspernatur rerum eius perferendis et.', 0, '2018-04-05 04:15:15', '2018-04-05 04:15:15'),
(7, 1, 'Dignissimos qui et velit et et odit voluptatem reprehenderit.', 1, '2018-04-05 04:15:15', '2018-04-05 04:15:15'),
(8, 1, 'Aspernatur totam voluptatum odio est.', 0, '2018-04-05 04:15:15', '2018-04-05 04:15:15'),
(9, 1, 'Soluta architecto voluptatibus quia est corporis.', 1, '2018-04-05 04:15:15', '2018-04-05 04:15:15'),
(10, 1, 'Nihil suscipit minus eaque perspiciatis autem ut placeat.', 1, '2018-04-05 04:15:15', '2018-04-05 04:15:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Miss Makenzie Lesch Jr.', 'vgrady@example.net', '$2y$10$X96zO0UgI2fjqGXmJMB.Z.0cKGxrEl8jAtCTG2dVP4QeUaFQdHUg2', 'Gn0PhlTPZD', '2018-04-05 04:15:14', '2018-04-05 04:15:14'),
(2, 'Preston Bartell', 'vernie58@example.net', '$2y$10$X96zO0UgI2fjqGXmJMB.Z.0cKGxrEl8jAtCTG2dVP4QeUaFQdHUg2', 'HFACrEHNEi', '2018-04-05 04:15:14', '2018-04-05 04:15:14'),
(3, 'Freddy Bogan', 'ghessel@example.net', '$2y$10$X96zO0UgI2fjqGXmJMB.Z.0cKGxrEl8jAtCTG2dVP4QeUaFQdHUg2', 'K6qaK3vo39', '2018-04-05 04:15:14', '2018-04-05 04:15:14'),
(4, 'Dr. Aniyah Adams PhD', 'walton82@example.net', '$2y$10$X96zO0UgI2fjqGXmJMB.Z.0cKGxrEl8jAtCTG2dVP4QeUaFQdHUg2', '3saaKCC9B5', '2018-04-05 04:15:15', '2018-04-05 04:15:15'),
(5, 'Melany Jacobson', 'mwisoky@example.org', '$2y$10$X96zO0UgI2fjqGXmJMB.Z.0cKGxrEl8jAtCTG2dVP4QeUaFQdHUg2', 'hsmWsoWYP3', '2018-04-05 04:15:15', '2018-04-05 04:15:15'),
(6, 'Oceane Hessel', 'herzog.rubye@example.net', '$2y$10$X96zO0UgI2fjqGXmJMB.Z.0cKGxrEl8jAtCTG2dVP4QeUaFQdHUg2', 'HlpWfjfoJf', '2018-04-05 04:15:15', '2018-04-05 04:15:15'),
(7, 'Prof. Aurelia Thompson', 'pollich.sophie@example.net', '$2y$10$X96zO0UgI2fjqGXmJMB.Z.0cKGxrEl8jAtCTG2dVP4QeUaFQdHUg2', 'd9I56LzrLe', '2018-04-05 04:15:15', '2018-04-05 04:15:15'),
(8, 'Melvina Marvin', 'zfranecki@example.org', '$2y$10$X96zO0UgI2fjqGXmJMB.Z.0cKGxrEl8jAtCTG2dVP4QeUaFQdHUg2', 'wWIXYwRQMk', '2018-04-05 04:15:15', '2018-04-05 04:15:15'),
(9, 'Eva Moore', 'elyssa56@example.net', '$2y$10$X96zO0UgI2fjqGXmJMB.Z.0cKGxrEl8jAtCTG2dVP4QeUaFQdHUg2', '07SDcrvypN', '2018-04-05 04:15:15', '2018-04-05 04:15:15'),
(10, 'Ludwig Durgan Sr.', 'marilyne24@example.net', '$2y$10$X96zO0UgI2fjqGXmJMB.Z.0cKGxrEl8jAtCTG2dVP4QeUaFQdHUg2', 'fCDwW8jWUK', '2018-04-05 04:15:15', '2018-04-05 04:15:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
