-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2022 at 02:51 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_batch4`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sony', 'well', 'brand-images/Flag_of_Bangladesh.svg.png', 1, '2022-10-08 06:29:12', '2022-10-08 06:29:12'),
(2, 'Yellow', 'well', 'brand-images/1656476942.jpg', 1, '2022-10-08 06:29:23', '2022-10-08 06:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sports', 'well', 'category-images/images (1).jpg', 1, '2022-10-01 08:14:37', '2022-10-06 08:24:59'),
(3, 'Woman Fashion', 'Voluptatibus eum excepturi reiciendis explicabo. Architecto eligendi voluptates aut ad. Rerum tempora voluptas numquam aut non nulla. Est necessitatibus vero consequuntur nemo et necessitatibus.', 'https://via.placeholder.com/640x480.png/002244?text=quibusdam', 1, '2022-10-01 08:14:37', '2022-10-15 07:31:19'),
(5, 'Kanchan Fashion', 'Eum optio exercitationem similique aut et quas eos voluptates. Non cupiditate voluptas consectetur voluptatum vel adipisci. Illum ea nobis sunt voluptatem quas consequuntur. Ut consequatur non et.', 'https://via.placeholder.com/640x480.png/00bb00?text=corporis', 1, '2022-10-01 08:14:37', '2022-10-15 07:31:36'),
(6, 'Electronics', 'well', 'category-images/1630730037.jpg', 1, '2022-10-01 08:37:56', '2022-10-01 08:37:56'),
(7, 'Man Fashion', 'dsfgsdfgsdf', 'category-images/1658032044.jpg', 1, '2022-10-06 06:35:03', '2022-10-06 06:35:03');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `mobile`, `nid`, `date_of_birth`, `address`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Rubel Khan', 'rubel@gmail.com', '$2y$10$zfdRhu.QSB2H2tEFRfA8M.qjQ1czR8uJUto2gONeAO/DlgV47g5dK', '0171545613', NULL, NULL, NULL, NULL, 1, '2022-11-07 08:00:11', '2022-11-07 08:00:11'),
(6, 'Rasel Khan', 'khan@gmail.com', '$2y$10$0Azz8jprK/mtDPwJbSLuP.s/zmpqRv5DITC.wHu.QKz/WxszgXY6C', '123456789', NULL, NULL, NULL, NULL, 1, '2022-11-07 08:28:47', '2022-11-07 08:28:47');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_09_19_131750_create_sessions_table', 1),
(7, '2022_10_01_134630_create_categories_table', 2),
(8, '2022_10_08_121848_create_brands_table', 3),
(9, '2022_10_08_124348_create_sub_categories_table', 4),
(10, '2022_10_08_143057_create_units_table', 5),
(11, '2022_10_15_142628_create_products_table', 6),
(12, '2022_10_15_143439_create_other_images_table', 6),
(22, '2022_11_05_140851_create_customers_table', 7),
(23, '2022_11_05_140900_create_orders_table', 7),
(24, '2022_11_05_140906_create_order_details_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_total` double(10,2) NOT NULL,
  `tax_total` double(10,2) NOT NULL,
  `shipping_total` double(10,2) NOT NULL,
  `order_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_timestamp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `payment_status` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `payment_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_amount` double(10,2) NOT NULL DEFAULT 0.00,
  `payment_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_timestamp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `delivery_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_timestamp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_total`, `tax_total`, `shipping_total`, `order_date`, `order_timestamp`, `order_status`, `payment_status`, `payment_type`, `payment_amount`, `payment_date`, `payment_timestamp`, `delivery_status`, `delivery_date`, `delivery_timestamp`, `delivery_address`, `transaction_id`, `created_at`, `updated_at`) VALUES
(3, 4, 8092.50, 1042.50, 100.00, '2022-11-07', '1667779200', 'Pending', 'Pending', '1', 0.00, NULL, NULL, 'Pending', NULL, NULL, 'Gulsan 2, Dhaka', NULL, '2022-11-07 08:00:11', '2022-11-07 08:00:11'),
(4, 4, 59900.00, 7800.00, 100.00, '2022-11-07', '1667779200', 'Pending', 'Pending', '1', 0.00, NULL, NULL, 'Pending', NULL, NULL, 'dfgsdfgdsfg', NULL, '2022-11-07 08:03:58', '2022-11-07 08:03:58'),
(5, 6, 2630.00, 330.00, 100.00, '2022-11-07', '1667779200', 'Pending', 'Pending', '1', 0.00, NULL, NULL, 'Pending', NULL, NULL, 'Dhaka', NULL, '2022-11-07 08:28:47', '2022-11-07 08:28:47');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_qty`, `created_at`, `updated_at`) VALUES
(4, 3, 2, 'New Football', 2550.00, 1, '2022-11-07 08:00:11', '2022-11-07 08:00:11'),
(5, 3, 4, 'New Smart Shari', 4400.00, 1, '2022-11-07 08:00:11', '2022-11-07 08:00:11'),
(6, 4, 6, 'Sony XPeria XZ', 52000.00, 1, '2022-11-07 08:03:58', '2022-11-07 08:03:58'),
(7, 5, 3, 'New Fashionable T Shirt', 2200.00, 1, '2022-11-07 08:28:47', '2022-11-07 08:28:47');

-- --------------------------------------------------------

--
-- Table structure for table `other_images`
--

CREATE TABLE `other_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_images`
--

INSERT INTO `other_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'product-other-images/1630730037.jpg', '2022-10-17 07:19:35', '2022-10-17 07:19:35'),
(2, 2, 'product-other-images/1656476942.jpg', '2022-10-17 07:19:35', '2022-10-17 07:19:35'),
(3, 2, 'product-other-images/1658032044.jpg', '2022-10-17 07:19:35', '2022-10-17 07:19:35'),
(4, 3, 'product-other-images/download.jpg', '2022-10-24 06:23:18', '2022-10-24 06:23:18'),
(5, 3, 'product-other-images/images (1).jpg', '2022-10-24 06:23:18', '2022-10-24 06:23:18'),
(6, 3, 'product-other-images/mockup-t-shit-vector-typhography-260nw-2116554965.webp', '2022-10-24 06:23:18', '2022-10-24 06:23:18'),
(7, 4, 'product-other-images/images-db3-500x500.jpg', '2022-10-31 05:56:53', '2022-10-31 05:56:53'),
(8, 4, 'product-other-images/20b604c209ec1a65557b96dcf51967b1.jpg', '2022-10-31 05:56:53', '2022-10-31 05:56:53'),
(9, 4, 'product-other-images/FB_IMG_1618904403223.jpg', '2022-10-31 05:56:53', '2022-10-31 05:56:53'),
(10, 5, 'product-other-images/0096082_happy-new-year-couple-t-shirt-sw3555t_550.jpeg', '2022-10-31 05:58:31', '2022-10-31 05:58:31'),
(11, 5, 'product-other-images/download (3).jpg', '2022-10-31 05:58:31', '2022-10-31 05:58:31'),
(12, 5, 'product-other-images/download (2).jpg', '2022-10-31 05:58:31', '2022-10-31 05:58:31'),
(13, 5, 'product-other-images/download (1).jpg', '2022-10-31 05:58:32', '2022-10-31 05:58:32'),
(14, 6, 'product-other-images/sony-xperia-xz-premium-02-600x600.jpg', '2022-10-31 06:52:01', '2022-10-31 06:52:01'),
(15, 6, 'product-other-images/Sony-Xperia-XZ.webp', '2022-10-31 06:52:02', '2022-10-31 06:52:02'),
(16, 6, 'product-other-images/Sony-Xperia-XZ-Premium-600x600.webp', '2022-10-31 06:52:02', '2022-10-31 06:52:02'),
(17, 7, 'product-other-images/images (2).jpg', '2022-10-31 06:53:46', '2022-10-31 06:53:46'),
(18, 7, 'product-other-images/download (5).jpg', '2022-10-31 06:53:46', '2022-10-31 06:53:46');

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
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_amount` int(11) NOT NULL,
  `regular_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `sales_count` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `short_description`, `long_description`, `stock_amount`, `regular_price`, `selling_price`, `image`, `hit_count`, `sales_count`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 1, 1, 'New Football', 'NF112', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><hr><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', 100, 3000, 2550, 'product-images/1658141768.jpg', 0, 0, 1, '2022-10-17 07:19:35', '2022-10-17 07:19:35'),
(3, 7, 2, 1, 1, 'New Fashionable T Shirt', 'NFTS101', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><div><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p></div><div><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p></div><div><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p></div><div><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p></div><div><br></div>', 200, 2500, 2200, 'product-images/images (1).jpg', 0, 0, 1, '2022-10-24 06:23:18', '2022-10-24 06:23:18'),
(4, 3, 3, 1, 1, 'New Smart Shari', 'NSS115', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '<div class=\"product-detail-header\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235); color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><h2 style=\"padding: 0px; margin: 4px 0px 2px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: inherit; font-size: 15px;\">প্রোডাক্টের বিবরণ :&nbsp;<span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">I Am Fine মেনজ হাফ স্লিভ কটন টি শার্ট -হোয়াইট</span></h2></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px;\">ডিল কোড:</span>&nbsp;<span id=\"DealCodeLabel\" style=\"padding: 0px; margin: 0px;\">১১০৩২৯৮</span></div></div><div class=\"product-details-text-wrapper\" style=\"padding: 0px; margin: 10px 0px 20px; width: 907.188px; float: left; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">Fabric- Cotton T-shirt</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">160-170 gsm</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">Size: M, L, XL</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">M- Length 38\" Chest 288\"</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">L- Length 40\" Chest 29\"</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">XL- Length 42\" Chest 30\"</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px;\">N.B. The color of the actual product may vary due to the resolution and lighting of your computer.</span></div></div><h3 style=\"padding: 0px; margin: 20px 0px 18.1406px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); font-size: 14px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">I Am Fine মেনজ হাফ স্লিভ কটন টি শার্ট -হোয়াইট&nbsp;</span>কিনুন বাংলাদেশের সেরা দামে</h3><div class=\"product-specification-container\" style=\"padding: 0px; margin: 0px 0px 18.1406px; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana; font-size: 14px;\"><span class=\"product-specification-head\" style=\"padding: 0px; margin: 0px 0px 10px; width: 907.188px; float: left; background-color: rgb(233, 234, 235);\"><h2 style=\"padding: 0px; margin: 10px 0px; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; line-height: 1.1; color: inherit; font-size: 15px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px;\">I Am Fine মেনজ হাফ স্লিভ কটন টি শার্ট -হোয়াইট&nbsp;</span>- Product Specification</h2></span><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">ব্র্যান্ড :</span><span id=\"BrandNameInProuductDetails\" style=\"padding: 0px; margin: 0px;\"></span></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-size: 15px; font-weight: 700; color: rgb(0, 0, 0);\">ডিল কোড:&nbsp;</span><span id=\"DealCodeInProuductDetails\" style=\"padding: 0px; margin: 0px;\">১১০৩২৯৮</span></div></div><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">বৈশিষ্ট্যসমূহ :</span><span class=\"feautures-wrapper\" style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 14px;\">প্রযোজ্য নয়</span></span></div><div class=\"header-code-text\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; text-align: right; font-family: SolaimanLipi, Helvetica, Verdana; color: rgb(93, 90, 90);\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-size: 15px; font-weight: 700; color: rgb(0, 0, 0);\">মডেল :</span><span id=\"ModelNo\" style=\"padding: 0px; margin: 0px;\"></span></div></div><div class=\"product-specification-text-wrapper\" style=\"padding: 0px; margin: 9.0625px 0px 0px;\"></div><div class=\"product-detail-header-wrapper\" style=\"padding: 8px; margin: 0px 0px 10px; width: 907.188px; float: left;\"><div class=\"header-text-new\" style=\"padding: 0px; margin: 0px; float: left; width: 445.594px; font-size: 15px; color: rgb(93, 90, 90); font-family: SolaimanLipi, Helvetica, Verdana;\"><span class=\"specication-header\" style=\"padding: 0px; margin: 0px; font-weight: 700; color: rgb(0, 0, 0);\">প্যাকেটে যা থাকছে :</span></div></div><div class=\"packets-includes-product-wrapper\" style=\"padding: 0px; margin: 0px;\"><span class=\"packets-includes-product-text\" style=\"padding: 0px; margin: 0px 0px 0px 10px;\">I Am Fine মেনজ হাফ স্লিভ কটন টি শার্ট -হোয়াইট</span></div></div>', 100, 4500, 4400, 'product-images/4b2b66d4a4e1e9c028ab0b8df6ae3771.jpg', 0, 0, 1, '2022-10-31 05:56:53', '2022-10-31 07:17:56'),
(5, 7, 2, 2, 1, 'New Year Shirt', 'NYS154', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', 150, 3500, 3300, 'product-images/45d5f34df41668b129b6b582286a6a10.jpg', 0, 0, 1, '2022-10-31 05:58:31', '2022-10-31 05:58:31'),
(6, 6, 9, 1, 1, 'Sony XPeria XZ', 'SXXZ125', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', 50, 55000, 52000, 'product-images/download (4).jpg', 0, 0, 1, '2022-10-31 06:52:01', '2022-10-31 06:52:01'),
(7, 6, 9, 1, 1, 'sony xperia xz3', 'SXZ3456', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span></p><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span><br></p>', 40, 45000, 42000, 'product-images/df1011ad2b777f423211ce83366c0313.jpg', 0, 0, 1, '2022-10-31 06:53:46', '2022-10-31 06:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('kveRAYx8GMQA454dzlsfrX79l6GRFV7eTy4oHEXg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2pqa0xPeGlMQTh1SGEwbTUxTlNDNGNtV01mazI5eEFad0NMV215aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1672062159),
('mrhL5BOih7Ais7F6Jn2QOoeuBjYixruW5z2z1zTP', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNE9wRk9QbVVrVkQ0OHpyeG9LWnFkM1lobEpIalByM01sVVYwb01RNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1671716837),
('ONG6s1u78OdUR9canowVIxiBgSEsMQvQDJBxjHnd', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo5OntzOjY6Il90b2tlbiI7czo0MDoicURWWExzdlNzeHhFVFA5OUZ1TXg3WEliR2QwdWxmTGFTZEhBR1pFMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kb3dubG9hZC1pbnZvaWNlLzQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJDkySVhVTnBrak8wck9RNWJ5TWkuWWU0b0tvRWEzUm85bGxDLy5vZy9hdDIudWhlV0cvaWdpIjtzOjI2OiI0eVRsVERLdTNvSk9mekRfY2FydF9pdGVtcyI7TzozMjoiRGFycnlsZGVjb2RlXENhcnRcQ2FydENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7aToyO086MzI6IkRhcnJ5bGRlY29kZVxDYXJ0XEl0ZW1Db2xsZWN0aW9uIjozOntzOjg6IgAqAGl0ZW1zIjthOjY6e3M6MjoiaWQiO2k6MjtzOjQ6Im5hbWUiO3M6MTI6Ik5ldyBGb290YmFsbCI7czo1OiJwcmljZSI7aToyNTUwO3M6ODoicXVhbnRpdHkiO3M6MToiMSI7czoxMDoiYXR0cmlidXRlcyI7Tzo0MToiRGFycnlsZGVjb2RlXENhcnRcSXRlbUF0dHJpYnV0ZUNvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Mzp7czo1OiJpbWFnZSI7czoyOToicHJvZHVjdC1pbWFnZXMvMTY1ODE0MTc2OC5qcGciO3M6ODoiY2F0ZWdvcnkiO3M6NjoiU3BvcnRzIjtzOjU6ImJyYW5kIjtzOjQ6IlNvbnkiO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6MTA6ImNvbmRpdGlvbnMiO2E6MDp7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7czo5OiIAKgBjb25maWciO2E6Njp7czoxNDoiZm9ybWF0X251bWJlcnMiO2I6MDtzOjg6ImRlY2ltYWxzIjtpOjA7czo5OiJkZWNfcG9pbnQiO3M6MToiLiI7czoxMzoidGhvdXNhbmRzX3NlcCI7czoxOiIsIjtzOjc6InN0b3JhZ2UiO047czo2OiJldmVudHMiO047fX19czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjEyOiJ0b3RhbFBheWFibGUiO2Q6MzAzMi41O3M6ODoic2hpcHBpbmciO2k6MTAwO3M6MzoidGF4IjtkOjM4Mi41O30=', 1668432811);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Footbal', 'well', 'sub-category-images/Flag_of_Bangladesh.svg.png', 1, '2022-10-08 07:02:09', '2022-10-08 07:02:09'),
(2, 7, 'Shirt', 'well', 'sub-category-images/1658032044.jpg', 1, '2022-10-08 07:32:22', '2022-10-08 08:20:50'),
(3, 3, 'Shari', 'Shari', 'sub-category-images/surface-Nb5Dm6cIpQU-unsplash.jpg', 1, '2022-10-15 07:32:22', '2022-10-15 07:32:22'),
(4, 3, 'Shoee', 'Shoee', 'sub-category-images/software.png', 1, '2022-10-15 07:32:36', '2022-10-15 07:32:36'),
(5, 5, 'Pant', 'Pant', 'sub-category-images/software.png', 1, '2022-10-15 07:32:49', '2022-10-15 07:32:49'),
(7, 5, 'Kanchan Shirt', 'Kanchan Shirt', 'sub-category-images/software.png', 1, '2022-10-15 07:33:39', '2022-10-15 07:33:39'),
(8, 5, 'Kanchan Shoee', 'Kanchan Shoee', 'sub-category-images/software.png', 1, '2022-10-15 07:34:00', '2022-10-15 07:34:00'),
(9, 6, 'Mobile', 'Mobile', 'sub-category-images/0096082_happy-new-year-couple-t-shirt-sw3555t_550.jpeg', 1, '2022-10-31 06:50:19', '2022-10-31 06:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pices', 'PIC', 'erewr', 1, '2022-10-15 06:50:49', '2022-10-15 06:50:49');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Gerardo Adams', 'patrick99@example.net', '2022-10-01 06:23:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'dKB4dAi4fQ9LxzAHXpR52iV93fq1gPtnGL4QJExo1nhmdmn2jTtKyIq0JycJ', NULL, NULL, '2022-10-01 06:23:22', '2022-10-01 06:23:22'),
(2, 'Mr. Sigurd Emard Sr.', 'pascale86@example.com', '2022-10-01 06:23:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'tbYajelKKs', NULL, NULL, '2022-10-01 06:23:22', '2022-10-01 06:23:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_mobile_unique` (`mobile`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_images`
--
ALTER TABLE `other_images`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_name_unique` (`name`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`),
  ADD UNIQUE KEY `units_code_unique` (`code`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `other_images`
--
ALTER TABLE `other_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
