-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2025 at 06:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Product_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `name`, `email`, `phone`, `address`, `product_title`, `quantity`, `price`, `Image`, `Product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 'nithya', 'nithya@gmail.com', '1324242233', 'kdfiadsfsdfk', 'formal black', '1', '1000', '1743244951.jpg', '1', '4', '2025-03-31 02:57:42', '2025-03-31 02:57:42'),
(7, 'nithya', 'nithya@gmail.com', '1324242233', 'kdfiadsfsdfk', 'women formal skirt and shirt', '1', '3500', '1743320991.jpg', '9', '4', '2025-03-31 02:57:53', '2025-03-31 02:57:53'),
(8, 'nithya', 'nithya@gmail.com', '1324242233', 'kdfiadsfsdfk', 'women dress 3', '1', '4500', '1743321036.jpg', '10', '4', '2025-03-31 02:58:04', '2025-03-31 02:58:04');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(4, 'tops', '2025-03-27 22:06:42', '2025-03-27 22:06:42'),
(5, 'laptop', '2025-03-27 22:10:19', '2025-03-27 22:10:19'),
(6, 'mobiles', '2025-03-27 22:10:49', '2025-03-27 22:10:49'),
(7, 'tshirts', '2025-03-27 22:11:16', '2025-03-27 22:11:16'),
(8, 'toys', '2025-03-27 22:13:08', '2025-03-27 22:13:08'),
(9, 'earbuds', '2025-03-27 22:24:47', '2025-03-27 22:24:47'),
(10, 'rings', '2025-03-27 22:30:17', '2025-03-27 22:30:17'),
(11, 'nosepins', '2025-03-27 22:34:58', '2025-03-27 22:34:58'),
(12, 'baggy pants', '2025-03-27 22:38:00', '2025-03-27 22:38:00'),
(14, 'formal men shirts', '2025-03-29 02:48:34', '2025-03-29 02:48:34'),
(15, 'women formals', '2025-03-30 02:18:02', '2025-03-30 02:18:02'),
(16, 'Acessories', '2025-03-31 22:21:09', '2025-03-31 22:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 'Nithya', 'hiii', '7', '2025-04-16 12:57:33', '2025-04-16 12:57:33');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2014_10_12_000000_create_users_table', 2),
(5, '2025_03_27_174154_create_categories_table', 3),
(6, '2014_10_12_100000_create_password_reset_tokens_table', 3),
(7, '2014_10_12_200000_add_two_factor_columns_to_users_table', 4),
(8, '2019_08_19_000000_create_failed_jobs_table', 5),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 6),
(10, '2025_03_26_114012_create_sessions_table', 5),
(11, '2025_03_28_045320_create_products_table', 7),
(12, '2025_03_28_175933_create_products_table', 8),
(13, '2025_03_29_080038_create_products_table', 9),
(14, '2025_03_30_170748_create_carts_table', 10),
(15, '2025_03_31_154954_create_orders_table', 11),
(16, '2025_04_04_051519_create_notifications_table', 12),
(17, '2025_04_16_164553_create_comments_table', 13),
(18, '2025_04_16_164606_create_replies_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `product_title`, `quantity`, `price`, `image`, `product_id`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(8, 'jyothika', 'jyothika@gmail.com', '52436274784', 'hgdfjgrkyltkh', '5', 'shirts', '1', '2000', '1743236599.jpg', '2', 'Amount Received', 'delivered', '2025-04-02 06:34:26', '2025-04-02 22:27:36'),
(9, 'jyothika', 'jyothika@gmail.com', '52436274784', 'hgdfjgrkyltkh', '5', 'formal black', '1', '1000', '1743244951.jpg', '1', 'Amount Received', 'delivered', '2025-04-02 07:03:06', '2025-04-02 22:28:43'),
(10, 'user', 'user@gmail.com', '1234567891', 'kdanfkdshxj', '1', 'shirts', '1', '2000', '1743236599.jpg', '2', 'Paid through card', 'processing', '2025-04-02 22:30:55', '2025-04-02 22:30:55'),
(11, 'user', 'user@gmail.com', '1234567891', 'kdanfkdshxj', '1', 'toy', '1', '480', '1743321157.jpg', '12', 'Paid through card', 'processing', '2025-04-02 22:30:56', '2025-04-02 22:30:56'),
(12, 'user', 'user@gmail.com', '1234567891', 'kdanfkdshxj', '1', 'laptop', '1', '150000', '1743245225.jpg', '5', 'Paid through card', 'processing', '2025-04-02 22:30:56', '2025-04-02 22:30:56'),
(13, 'admin', 'admin@gmail.com', '2324242244', 'lkgnadkljfdgkl', '3', 'formal black', '1', '1000', '1743244951.jpg', '1', 'Paid through card', 'processing', '2025-04-03 06:54:35', '2025-04-03 06:54:35'),
(14, 'Nithya', 'shreenithya862@gmail.com', '8904297524', 'dhgkdjgdlfkhlf', '7', 'formal black', '1', '1000', '1743244951.jpg', '1', 'Amount Received', 'delivered', '2025-04-04 12:33:10', '2025-04-04 12:59:22'),
(15, 'Nithya', 'shreenithya862@gmail.com', '8904297524', 'dhgkdjgdlfkhlf', '7', 'formal black', '1', '1000', '1743244951.jpg', '1', 'Paid through card', 'processing', '2025-04-15 00:00:23', '2025-04-15 00:00:23'),
(16, 'Nithya', 'shreenithya862@gmail.com', '8904297524', 'dhgkdjgdlfkhlf', '7', 'formal black', '1', '1000', '1743244951.jpg', '1', 'cash on delivery', 'processing', '2025-04-16 22:33:33', '2025-04-16 22:33:33'),
(17, 'Nithya', 'shreenithya862@gmail.com', '8904297524', 'dhgkdjgdlfkhlf', '7', 'formals for women', '3', '7500', '1743320931.jpg', '8', 'cash on delivery', 'processing', '2025-04-17 01:28:53', '2025-04-17 01:28:53'),
(18, 'Nithya', 'shreenithya862@gmail.com', '8904297524', 'dhgkdjgdlfkhlf', '7', 'formal black', '2', '2000', '1743244951.jpg', '1', 'cash on delivery', 'processing', '2025-04-17 01:28:53', '2025-04-17 01:28:53'),
(19, 'Nithya', 'shreenithya862@gmail.com', '8904297524', 'dhgkdjgdlfkhlf', '7', 'shirts', '4', '2000', '1743236599.jpg', '2', 'cash on delivery', 'processing', '2025-04-17 01:28:53', '2025-04-17 01:28:53');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `quantity`, `category`, `price`, `discount`, `image`, `created_at`, `updated_at`) VALUES
(1, 'formal black', 'formal shirt', '1', 'formal men shirts', '1200', '1000', '1743244951.jpg', '2025-03-29 02:47:28', '2025-03-30 04:02:04'),
(2, 'shirts', 'formal men shirts(blue)', '1', 'formal men shirts', '2000', NULL, '1743236599.jpg', '2025-03-29 02:53:19', '2025-03-29 05:20:55'),
(5, 'laptop', 'latest laptop design with high speed processor', '1', 'laptop', '150000', NULL, '1743245225.jpg', '2025-03-29 05:17:05', '2025-03-29 05:17:05'),
(6, 'shirts', 'formal shirt', '1', 'formal men shirts', '2000', '1800', '1743245270.jpg', '2025-03-29 05:17:50', '2025-03-30 04:02:24'),
(8, 'formals for women', 'beautiful women formal dress', '1', 'women formals', '3000', '2500', '1743320931.jpg', '2025-03-30 02:18:51', '2025-03-30 04:02:54'),
(9, 'women formal skirt and shirt', 'formal wear skirt and shirt for women', '2', 'women formals', '4000', '3500', '1743320991.jpg', '2025-03-30 02:19:52', '2025-03-30 04:03:14'),
(10, 'women dress 3', '3 dresses', '3', 'women formals', '5000', '4500', '1743321036.jpg', '2025-03-30 02:20:36', '2025-03-30 04:03:43'),
(11, 'dell laptop', 'latest processor laptop', '1', 'laptop', '150000', NULL, '1743321110.jpg', '2025-03-30 02:21:50', '2025-03-30 02:21:50'),
(12, 'toy', 'children toys', '3', 'toys', '500', '480', '1743321157.jpg', '2025-03-30 02:22:37', '2025-03-30 04:04:07'),
(13, 'Acessories', 'Necklace', '1', 'Acessories', '500', '400', '1743479567.jpg', '2025-03-31 22:22:47', '2025-03-31 22:22:47'),
(14, 'Acessories', 'Necklace', '1', 'Acessories', '500', '400', '1743479568.jpg', '2025-03-31 22:22:48', '2025-03-31 22:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment_id` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `name`, `comment_id`, `reply`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Nithya', NULL, 'hello', '7', '2025-04-16 23:12:15', '2025-04-16 23:12:15'),
(3, 'Nithya', NULL, 'hello', '7', '2025-04-16 23:12:29', '2025-04-16 23:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CtRSA3TK5CY4H3o5ZyrEQuBgBOjEQF140wykZRk6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1hGTFh2UThVS242WDBMcFBnSmdPbnJYYU9CMVQyMzlacFQyWFJQMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1744873669);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', '0', '1234567891', 'kdanfkdshxj', NULL, '$2y$12$hrOenVC71uYoB.u//OshBOXtDe1bTYnnqMtAzXh0ltrmcA3qv6Gey', NULL, NULL, NULL, NULL, '2025-03-26 06:57:17', '2025-03-26 06:57:17'),
(3, 'admin', 'admin@gmail.com', '1', '2324242244', 'lkgnadkljfdgkl', '2025-04-03 18:25:44', '$2y$12$Ndyw2NevtHlFz49ZPkW0ieB7XuakYB1C1XNL1p87.d1x8WQF7MNdq', NULL, NULL, NULL, NULL, '2025-03-26 11:36:27', '2025-03-26 11:36:27'),
(4, 'nithya', 'nithya@gmail.com', '0', '1324242233', 'kdfiadsfsdfk', NULL, '$2y$12$pMP3bOgdM1GB4S529hRV3Oje2oVckZrj/JHttIfWEE2TL23hnCrpG', NULL, NULL, NULL, NULL, '2025-03-31 02:13:02', '2025-03-31 02:13:02'),
(5, 'jyothika', 'jyothika@gmail.com', '0', '52436274784', 'hgdfjgrkyltkh', NULL, '$2y$12$UA1i5Kue07bz0UtcdfcHQuQg8iVTz/.yxC9lFP/SLP6Y2TSnJ8qC.', NULL, NULL, NULL, NULL, '2025-03-31 22:19:50', '2025-03-31 22:19:50'),
(6, 'Nithya', 'neee7125@gmail.com', '0', '8904297524', 'dhgkdjgdlfkhlf', NULL, '$2y$12$4MWayA1a2ltNaYbCuvbv3eVeemq6Wab/Xb5hDrIn4zVQOJuIRf5RS', NULL, NULL, NULL, NULL, '2025-04-03 02:36:15', '2025-04-03 02:36:15'),
(7, 'Nithya', 'shreenithya862@gmail.com', '0', '8904297524', 'dhgkdjgdlfkhlf', '2025-04-03 05:52:42', '$2y$12$OaB3tD6izoWk05GJv8EcReOrtbSqMb6vtltn0zBc1PHKzKrjSTrIK', NULL, NULL, NULL, NULL, '2025-04-03 05:47:35', '2025-04-03 05:52:42'),
(8, 'malika mam', 'mallidshetty@gmail.com', '0', '78533456677', 'cgfkj', NULL, '$2y$12$MfaVHrSkdZR4MaAOWpWSAOvhfYr7mOZccpb38raqRP1mMraMfxJxq', NULL, NULL, NULL, NULL, '2025-04-14 23:57:34', '2025-04-14 23:57:34'),
(9, 'bhavyashree', 'shreebhavya876@gmail.com', '0', '8990779876', 'alkjfldskjlkgt', NULL, '$2y$12$u81yYE.T97gNvfAACm51CO0Bf8ujvv0JQQ.Thv5Ph.iO9cfTam4UC', NULL, NULL, NULL, NULL, '2025-04-16 11:06:24', '2025-04-16 11:06:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
