-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2021 at 10:16 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_ecommerce_tutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Super Admin' COMMENT 'Admin | Super Admin',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone_no`, `avatar`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'ShahAlam', 'shahalamjoha2017@gmail.com', '$2y$10$pIS/uNlqZZK5R9Lxq27PKerh5QrKx.DArdS/gdqjETDFRpq8TfSoG', '01748747564', NULL, 'Super Admin', 'JNyQi4eOEyF2cJ80COTdG7mW9xmucGKeZWkXHgg9c3J4Cb7QHZBzk3rHtaly', '2021-10-29 22:58:51', '2021-11-08 04:16:07');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Walton', 'dfsajf sdlfjksdlskdf', '1629686286.jpg', '2021-08-22 20:38:07', '2021-08-22 20:38:07'),
(3, 'Xiomi', 'sdfsdf ss', '1629686312.jpg', '2021-08-22 20:38:32', '2021-08-22 20:38:32'),
(4, 'Samsung', 'dsf sdf', '1629686330.jpg', '2021-08-22 20:38:50', '2021-08-22 20:38:50'),
(5, 'Sony', 'sdf fas sdfs dfsdf', '1629686371.jpg', '2021-08-22 20:39:31', '2021-08-22 20:39:31'),
(6, 'Bajaj', 'sdf sadfsdfsdfs', '1629686421.jpg', '2021-08-22 20:40:21', '2021-08-22 20:40:21');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `order_id`, `ip_address`, `product_quantity`, `created_at`, `updated_at`) VALUES
(21, 3, NULL, 7, '::1', 1, '2021-09-21 23:01:36', '2021-10-27 20:17:52'),
(39, 5, NULL, 8, '::1', 4, '2021-10-27 20:18:19', '2021-10-27 20:27:45'),
(40, 6, NULL, 8, '::1', 4, '2021-10-27 20:19:11', '2021-10-27 20:27:46'),
(41, 6, NULL, 9, '::1', 1, '2021-10-27 20:28:03', '2021-10-27 20:28:26'),
(42, 5, NULL, 9, '::1', 1, '2021-10-27 20:28:12', '2021-10-27 20:28:26'),
(43, 4, NULL, 9, '::1', 1, '2021-10-27 20:28:14', '2021-10-27 20:28:26'),
(44, 6, NULL, 10, '::1', 1, '2021-10-27 22:41:33', '2021-10-27 23:04:27'),
(45, 5, NULL, 10, '::1', 1, '2021-10-27 23:03:32', '2021-10-27 23:04:27'),
(46, 4, NULL, 10, '::1', 1, '2021-10-27 23:03:57', '2021-10-27 23:04:27'),
(47, 6, NULL, 11, '::1', 2, '2021-10-27 23:09:59', '2021-10-28 18:40:50'),
(48, 5, NULL, 11, '::1', 1, '2021-10-27 23:10:00', '2021-10-28 18:40:50'),
(49, 4, NULL, 11, '::1', 2, '2021-10-27 23:10:01', '2021-10-28 18:40:50'),
(50, 3, NULL, 11, '::1', 2, '2021-10-27 23:14:34', '2021-10-28 18:40:50'),
(51, 8, NULL, 11, '::1', 1, '2021-10-28 18:40:32', '2021-10-28 18:40:50'),
(52, 6, NULL, NULL, '::1', 2, '2021-10-28 18:49:49', '2021-11-03 01:25:42'),
(53, 5, NULL, NULL, '::1', 2, '2021-10-28 18:49:51', '2021-11-02 22:54:36'),
(55, 3, NULL, NULL, '::1', 1, '2021-11-02 00:49:27', '2021-11-02 00:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `parent_id`, `created_at`, `updated_at`) VALUES
(2, 'Phone', 'dsfsdfsdf sdfs', '1629686467.jpg', NULL, '2021-08-22 20:41:07', '2021-08-22 20:41:07'),
(3, 'Camera', 'asdfsd fsadfsd', '1629686505.jpg', NULL, '2021-08-22 20:41:45', '2021-08-22 20:41:45'),
(4, 'Bike', 'asdf sfsad fs', '1629686544.JPG', NULL, '2021-08-22 20:42:24', '2021-08-22 20:42:24'),
(5, 'Android Phone', 'ad sadfa fsdf', '1629686570.jpg', 2, '2021-08-22 20:42:50', '2021-08-22 20:42:50'),
(6, 'Button Phone', 'sadf sfasd', '1629686596.jpg', 2, '2021-08-22 20:43:16', '2021-08-22 20:43:16');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `division_id`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka sadar', 1, '2021-08-22 09:51:21', '2021-08-22 09:51:21'),
(2, 'Gazipur', 1, '2021-08-22 20:25:48', '2021-08-22 20:25:48'),
(3, 'Rajshahi Sadar', 3, '2021-08-22 20:36:36', '2021-08-22 20:36:36'),
(4, 'Natore', 3, '2021-08-22 20:36:47', '2021-08-22 20:36:47'),
(5, 'Chottrogram Sadar', 2, '2021-08-22 20:37:09', '2021-08-22 20:37:09'),
(6, 'Noakhali', 2, '2021-08-22 20:37:29', '2021-08-22 20:37:29');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `priority`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 1, '2021-08-22 09:51:04', '2021-08-22 09:51:04'),
(2, 'Chottrogram', 2, '2021-08-22 20:24:46', '2021-08-22 20:25:08'),
(3, 'Rajshahi', 3, '2021-08-22 20:25:25', '2021-08-22 20:25:25');

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
(46, '2014_10_12_000000_create_users_table', 2),
(47, '2014_10_12_100000_create_password_resets_table', 2),
(48, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(49, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(50, '2021_05_28_061852_create_categories_table', 2),
(51, '2021_05_28_062411_create_brands_table', 2),
(53, '2021_05_28_063628_create_products_table', 2),
(54, '2021_05_28_093313_create_product_images_table', 2),
(55, '2021_06_20_103434_create_sessions_table', 2),
(56, '2021_08_02_072435_create_divisions_table', 3),
(57, '2021_08_02_072600_create_districts_table', 3),
(59, '2021_08_19_102157_create_carts_table', 5),
(60, '2021_09_13_032807_create_settings_table', 6),
(63, '2021_09_14_091832_create_payments_table', 7),
(64, '2021_08_19_102128_create_orders_table', 8),
(65, '2021_05_28_062637_create_admins_table', 9),
(67, '2021_10_06_102506_create_sliders_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `is_seen_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_charge` int(11) NOT NULL DEFAULT 60,
  `custom_discount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_id`, `ip_address`, `name`, `phone_no`, `shipping_address`, `email`, `message`, `is_paid`, `is_completed`, `is_seen_by_admin`, `transaction_id`, `created_at`, `updated_at`, `shipping_charge`, `custom_discount`) VALUES
(3, 1, 1, '::1', 'MD. SHAH alam', '01748747564', 'new address', 'shahalamjoha2017@gmail.com', NULL, 1, 0, 1, NULL, '2021-09-18 02:11:22', '2021-10-12 01:35:43', 60, 0),
(4, NULL, 2, '::1', 'joha', '3546543134', 'sdfsd fsdfsd sd', 'shahalamjoha2017@gmail.com', 'sdfsdfs', 1, 1, 1, '3541654', '2021-09-21 23:02:16', '2021-10-04 05:06:02', 60, 0),
(5, NULL, 1, '::1', 'sdfsf', 'sdfs', 'sdfs', 'shahalamjoha2017@gmail.com', 'sdfs', 1, 1, 1, NULL, '2021-09-21 23:13:02', '2021-10-11 23:09:44', 80, 10),
(6, 1, 2, '::1', 'MD. SHAH alam', '01748747564', 'new address', 'shahalamjoha2017@gmail.com', 'new', 0, 0, 0, 'sdfsdfs', '2021-10-27 20:12:35', '2021-10-27 20:12:35', 60, 0),
(7, 1, 1, '::1', 'MD. SHAH alam', '01748747564', 'new address', 'shahalamjoha2017@gmail.com', NULL, 0, 0, 0, NULL, '2021-10-27 20:17:52', '2021-10-27 20:17:52', 60, 0),
(8, 1, 1, '::1', 'MD. SHAH alam', '01748747564', 'new address', 'shahalamjoha2017@gmail.com', NULL, 0, 0, 0, NULL, '2021-10-27 20:27:45', '2021-10-27 20:27:45', 60, 0),
(9, 1, 2, '::1', 'MD. SHAH alam', '01748747564', 'new address', 'shahalamjoha2017@gmail.com', NULL, 0, 0, 0, '123456', '2021-10-27 20:28:25', '2021-10-27 20:28:25', 60, 0),
(10, 1, 2, '::1', 'MD. SHAH alam', '01748747564', 'new address', 'shahalamjoha2017@gmail.com', NULL, 0, 0, 0, 'fghfgh', '2021-10-27 23:04:26', '2021-10-27 23:04:26', 60, 0),
(11, 1, 1, '::1', 'MD. SHAH alam', '01748747564', 'new address', 'shahalamjoha2017@gmail.com', NULL, 0, 0, 0, NULL, '2021-10-28 18:40:50', '2021-10-28 18:40:50', 60, 0);

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` tinyint(4) NOT NULL DEFAULT 1,
  `short_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Payment Number',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Agent|Personal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `image`, `priority`, `short_name`, `no`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Cash On', 'cash_on.jpg', 1, 'cash_on', NULL, NULL, '2021-09-15 15:33:21', '2021-09-15 15:33:21'),
(2, 'Bkash', 'bkash.jpg', 2, 'bkash', '01748747564', 'personal', '2021-09-15 15:34:35', '2021-09-15 15:34:35'),
(3, 'Rocket', 'rocket.jpg', 2, 'rocket', '01748747564', 'personal', '2021-09-15 15:35:13', '2021-09-15 15:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `offer_price` int(11) DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `title`, `description`, `slug`, `quantity`, `price`, `status`, `offer_price`, `admin_id`, `created_at`, `updated_at`) VALUES
(3, 4, 6, 'Discover v3', 'sad fasd adf', 'discover-v3', 20, 125000, 0, NULL, 1, '2021-08-22 20:45:12', '2021-08-22 20:45:12'),
(4, 6, 2, 'walton button d65', 'adsfa ssa dfsd', 'walton-button-d65', 15, 2000, 0, NULL, 1, '2021-08-22 20:45:57', '2021-08-22 20:45:57'),
(5, 5, 3, 'Redmi 11 pro', 'dsfsa f sdfsdfsdf sdf', 'redmi-11-pro', 10, 15000, 0, NULL, 1, '2021-08-23 23:56:49', '2021-08-23 23:56:49'),
(6, 6, 4, 'ipone 50 pro', 'dsf sfd sds', 'ipone-50-pro', 5, 1000, 0, NULL, 1, '2021-08-23 23:57:49', '2021-08-23 23:57:49'),
(8, 3, 6, 'testx', 'sdfsdfsdfs', 'testx', 10, 10000, 0, NULL, 1, '2021-10-27 23:55:39', '2021-10-27 23:55:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '1629647843.jpg', '2021-08-22 09:57:23', '2021-08-22 09:57:23'),
(2, 2, '1629686672.jpg', '2021-08-22 20:44:32', '2021-08-22 20:44:32'),
(3, 2, '1629686672.jpg', '2021-08-22 20:44:32', '2021-08-22 20:44:32'),
(4, 3, '1629686712.jpg', '2021-08-22 20:45:13', '2021-08-22 20:45:13'),
(5, 4, '1629686757.jpg', '2021-08-22 20:45:57', '2021-08-22 20:45:57'),
(6, 5, '1629784609.JPG', '2021-08-23 23:56:50', '2021-08-23 23:56:50'),
(7, 6, '1629784670.jpg', '2021-08-23 23:57:50', '2021-08-23 23:57:50'),
(8, 8, '16354005390.jpg', '2021-10-27 23:55:39', '2021-10-27 23:55:39');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('sx9orLJEFuTUFOE2ilFc2OWLNDt6OcpovvfAQhU2', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo0OntzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJEtTeURnazk3cUtCL0lLV2lOWkE3QU83clN2bHloSkZDeFNrcmhGVUpwMUV3UGllbVZIRmFxIjtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoiYkxXME1VSXBISVNrNU13ZGtzUFpKZWg4WkFuOFJ6RGxJRE94UWFOaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3QvTGFyYUVjb21tZXJjZS9sb2dpbiI7fX0=', 1637486126),
('vsFN0TLnD8SlBowk1j1BBnVBdoE5UkFsaEQxRgPZ', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWTBHbDMwSTNMajlZeUJMUk9MUzg3bDV4ZlVnSFVkZjJGSzdJNEtIeiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1637485467);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` int(10) UNSIGNED NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `created_at`, `updated_at`, `email`, `phone`, `address`, `shipping_cost`) VALUES
(1, '2021-09-13 03:33:12', '2021-09-13 03:33:12', 'test@example.com', '01748747564', 'Mirpur 13, Dhaka', 100);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 10,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `image`, `button_text`, `button_link`, `priority`, `created_at`, `updated_at`) VALUES
(6, 'This is slider no 1', '1633684914.jpg', 'This is Slider no 1 text', 'https://www.youtube.com/', 1, '2021-10-07 03:37:30', '2021-10-08 22:00:19'),
(7, 'Slider no 2', '1633684679.jpg', 'This is Slider no 2 text', 'https://www.youtube.com/', 2, '2021-10-07 03:38:11', '2021-10-08 03:17:59'),
(8, 'Slider no 3', '1633684691.jpg', 'This is Slider no 3 text', 'https://www.google.com/', 3, '2021-10-07 03:39:12', '2021-10-08 03:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL COMMENT 'Division Table ID',
  `district_id` int(10) UNSIGNED NOT NULL COMMENT 'District Table ID',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0=Inactive|1=Active|2=Ban',
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `phone_no`, `email`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `street_address`, `division_id`, `district_id`, `status`, `ip_address`, `avatar`, `shipping_address`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(2, 'MD.', 'Shah', 'mdshah', '01748747564', 'shahalamjoha2017@gmail.com', '$2y$10$KSyDgk97qKB/IKWiNZA7AO7rSvlyhJFCxSkrhFUJp1EwPiemVHFaq', NULL, NULL, 'TELKUPI PACHANI PARA', 3, 4, 1, '::1', NULL, NULL, '9rta4Hu3el0wH8NHQ7ce8VJ9J0Np0SkEWoWGPTeoxgY5EVqXYb3wb0UEqGyX', NULL, NULL, '2021-10-29 20:38:43', '2021-11-03 01:55:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_short_name_unique` (`short_name`);

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
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_phone_no_unique` (`phone_no`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
