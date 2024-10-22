-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 03, 2024 at 11:28 AM
-- Server version: 10.11.8-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u686125629_ooliveandbeige`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon_settings`
--

CREATE TABLE `addon_settings` (
  `id` char(36) NOT NULL,
  `key_name` varchar(191) DEFAULT NULL,
  `live_values` longtext DEFAULT NULL,
  `test_values` longtext DEFAULT NULL,
  `settings_type` varchar(255) DEFAULT NULL,
  `mode` varchar(20) NOT NULL DEFAULT 'live',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addon_settings`
--


-- --------------------------------------------------------

--
-- Table structure for table `add_ons`
--

CREATE TABLE `add_ons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch_id` int(255) NOT NULL DEFAULT 1,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` double(8,2) NOT NULL DEFAULT 0.00,
  `type` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_ons`
--


-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `remember_token` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `admin_role_id` bigint(20) NOT NULL DEFAULT 2,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `identity_number` varchar(30) DEFAULT NULL,
  `identity_type` varchar(30) DEFAULT NULL,
  `identity_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `f_name`, `user_type`, `l_name`, `phone`, `email`, `image`, `password`, `remember_token`, `created_at`, `updated_at`, `fcm_token`, `admin_role_id`, `status`, `identity_number`, `identity_type`, `identity_image`) VALUES
(1, 'Rahul', 'Admin', NULL, '8800821136', 'admin@admin.com', '2024-06-29-667ff937af72b.png', '$2y$10$EwY/r3/EGqXN98eKYurP2.kI4XpAXtU13DDkVt0efg0kGdPNFJ3RG', 'upN3IdOLr6aCYqvkvll9NpLZMCGWkteY9rNfJJehoXb7Ba88fBK3nXiWDOT6', '2024-07-06 15:26:07', '2024-08-16 18:04:44', NULL, 1, 1, '1', 'admin', NULL);
-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `module_access` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `module_access`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Master Admin', NULL, 0, '2022-06-07 10:59:59', '2022-06-07 10:59:59'),
(2, 'Demo', '[\"dashboard_management\",\"pos_management\",\"order_management\",\"product_management\",\"help_and_support_management\",\"table_management\"]', 0, '2023-12-20 09:29:15', '2023-12-20 09:29:15'),
(3, 'Waiter', '[\"order_management\"]', 1, '2024-01-18 12:27:03', '2024-01-18 12:27:03'),
(4, 'Cafe', '[\"order_management\"]', 0, '2024-01-18 12:35:38', '2024-01-18 12:35:38'),
(6, 'Kitchen', '[\"order_management\"]', 1, '2024-05-22 11:29:14', '2024-05-23 11:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2024-01-15 11:07:34', '2024-01-15 11:07:34');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch_type` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `branch_promotion_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `coverage` int(11) DEFAULT NULL,
  `remember_token` varchar(1000) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'def.png',
  `phone` varchar(25) DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `restaurant_id`, `name`, `branch_type`, `email`, `password`, `latitude`, `longitude`, `address`, `status`, `branch_promotion_status`, `created_at`, `updated_at`, `coverage`, `remember_token`, `image`, `phone`, `cover_image`) VALUES
(1, NULL, 'Oolive', 'Main Branch', 'ooliveandbeige@gmail.com', '$2y$10$OABRAbdBE2XYA.6slSEBy.8gcPI/FDddsLqhKXJlbJL6mnmw2HgCW', '28.709167', '77.123139', 'C-9/17, 2nd & 3rd floor, sector 7, Rohini, Delhi - 110085', 1, 1, '2021-02-24 09:45:49', '2024-09-02 00:28:37', 25, '1DLw67iMJEJnIsdd1RSXo8BYuSH8ga5xOktWbrp5xfFxCdDr61tWnmXyGFX8', '2024-08-16-66c03325931b6.png', '9717394222', '2024-03-21-65fbd9edc4a11.png');

-- --------------------------------------------------------

--
-- Table structure for table `branch_promotions`
--

CREATE TABLE `branch_promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) NOT NULL,
  `promotion_type` varchar(255) DEFAULT NULL,
  `promotion_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'restaurant_open_time', NULL, '2021-01-06 05:55:51', '2021-01-06 05:55:51'),
(2, 'restaurant_close_time', NULL, NULL, NULL),
(3, 'restaurant_name', 'Oolive', NULL, NULL),
(4, 'currency', 'INR', NULL, NULL),
(5, 'logo', '2023-12-20-65828e2a683ba.png', NULL, NULL),
(6, 'mail_config', '{\"status\":0,\"name\":\"Delivery APP\",\"host\":\"mail.demo.com\",\"driver\":\"smtp\",\"port\":\"587\",\"username\":\"info@demo.com\",\"email_id\":\"info@demo.com\",\"encryption\":\"tls\",\"password\":\"demo\"}', NULL, '2023-11-07 09:47:14'),
(7, 'delivery_charge', '0', NULL, NULL),
(8, 'ssl_commerz_payment', '{\"status\":\"0\",\"store_id\":null,\"store_password\":null}', NULL, '2021-07-25 14:38:25'),
(9, 'paypal', '{\"status\":\"0\",\"paypal_client_id\":null,\"paypal_secret\":null}', NULL, '2021-07-25 14:38:48'),
(10, 'stripe', '{\"status\":\"0\",\"api_key\":null,\"published_key\":null}', NULL, '2021-07-25 14:38:57'),
(11, 'phone', '9559364097', NULL, NULL),
(13, 'footer_text', 'Copyright © qrdine-in.com Powered By TrussBiz', NULL, NULL),
(14, 'address', 'E-23',NULL, NULL),
(15, 'email_address', 'ooliveandbeige@gmail.com', NULL, NULL),
(16, 'cash_on_delivery', '{\"status\":\"1\"}', NULL, '2021-02-11 18:39:36'),
(17, 'email_verification', NULL, NULL, NULL),
(18, 'digital_payment', '{\"status\":\"1\"}', '2021-01-30 19:38:54', '2021-01-30 19:38:58'),
(19, 'terms_and_conditions', '<div class=\"ql-editor\" data-gramm=\"false\" contenteditable=\"true\"><h1>Terms and Condition</h1><p><br></p><ol><li>Hello, terms and conditions.......</li><li>Hello</li></ol></div><div class=\"ql-clipboard\" contenteditable=\"true\" tabindex=\"-1\"></div><div class=\"ql-tooltip ql-hidden\"><a class=\"ql-preview\" target=\"_blank\" href=\"about:blank\"></a><input type=\"text\" data-formula=\"e=mc^2\" data-link=\"https://quilljs.com\" data-video=\"Embed URL\"><a class=\"ql-action\"></a><a class=\"ql-remove\"></a></div>', NULL, '2021-02-11 18:31:50'),
(20, 'fcm_topic', '', NULL, NULL),
(21, 'fcm_project_id', '3f34f34', NULL, NULL),
(22, 'push_notification_key', 'demo', NULL, NULL),
(24, 'order_pending_message', '{\"status\":1,\"message\":\"Your order has been placed successfully.\"}', NULL, NULL),
(25, 'order_processing_message', '{\"status\":1,\"message\":\"Your order is going to the cook\"}', NULL, NULL),
(26, 'out_for_delivery_message', '{\"status\":0,\"message\":\"Order out for delivery.\"}', NULL, NULL),
(27, 'order_delivered_message', '{\"status\":1,\"message\":\"delivered\"}', NULL, NULL),
(28, 'delivery_boy_assign_message', '{\"status\":1,\"message\":\"boy assigned\"}', NULL, NULL),
(29, 'delivery_boy_start_message', '{\"status\":1,\"message\":\"start delivery\"}', NULL, NULL),
(30, 'delivery_boy_delivered_message', '{\"status\":1,\"message\":\"boy delivered\"}', NULL, NULL),
(32, 'order_confirmation_msg', '{\"status\":1,\"message\":\"Your order has been confirmed.\"}', NULL, NULL),
(33, 'razor_pay', '{\"status\":\"0\",\"razor_key\":null,\"razor_secret\":null}', '2021-02-14 10:15:12', '2021-07-25 14:38:34'),
(34, 'location_coverage', '{\"status\":1,\"longitude\":\"91.410747\",\"latitude\":\"22.986282\",\"coverage\":\"20\"}', NULL, NULL),
(35, 'minimum_order_value', '50', NULL, NULL),
(36, 'point_per_currency', NULL, NULL, NULL),
(37, 'internal_point', '{\"status\":null}', '2021-04-24 01:50:19', '2021-04-24 01:50:19'),
(38, 'senang_pay', '{\"status\":\"0\",\"secret_key\":null,\"merchant_id\":null}', '2021-04-24 01:58:21', '2021-07-25 14:39:23'),
(39, 'privacy_policy', '<div class=\"ql-editor\" data-gramm=\"false\" contenteditable=\"true\" spellcheck=\"false\"><p>privacy policy</p></div><grammarly-extension data-grammarly-shadow-root=\"true\" style=\"position: absolute; top: 0px; left: -1px; pointer-events: none; z-index: auto;\" class=\"cGcvT\"></grammarly-extension><div class=\"ql-clipboard\" contenteditable=\"true\" tabindex=\"-1\"></div><div class=\"ql-tooltip ql-hidden\"><a class=\"ql-preview\" target=\"_blank\" href=\"about:blank\"></a><input type=\"text\" data-formula=\"e=mc^2\" data-link=\"https://quilljs.com\" data-video=\"Embed URL\"><a class=\"ql-action\"></a><a class=\"ql-remove\"></a></div>', NULL, '2021-04-28 03:36:02'),
(40, 'about_us', '<div class=\"ql-editor\" data-gramm=\"false\" contenteditable=\"true\" spellcheck=\"false\"><p><strong><em>hello world </em></strong></p><p><strong><em>nice </em></strong></p></div><grammarly-extension data-grammarly-shadow-root=\"true\" style=\"position: absolute; top: 0px; left: -1px; pointer-events: none; z-index: auto;\" class=\"cGcvT\"></grammarly-extension><grammarly-extension data-grammarly-shadow-root=\"true\" style=\"mix-blend-mode: darken; position: absolute; top: 0px; left: -1px; pointer-events: none; z-index: auto;\" class=\"cGcvT\"></grammarly-extension><div class=\"ql-clipboard\" contenteditable=\"true\" tabindex=\"-1\"></div><div class=\"ql-tooltip ql-hidden\"><a class=\"ql-preview\" target=\"_blank\" href=\"about:blank\"></a><input type=\"text\" data-formula=\"e=mc^2\" data-link=\"https://quilljs.com\" data-video=\"Embed URL\"><a class=\"ql-action\"></a><a class=\"ql-remove\"></a></div>', NULL, '2021-05-23 18:29:52'),
(42, 'paystack', '{\"status\":\"0\",\"publicKey\":null,\"secretKey\":null,\"paymentUrl\":\"https:\\/\\/api.paystack.co\",\"merchantEmail\":null}', '2021-05-04 14:38:35', '2021-07-25 14:39:12'),
(43, 'time_zone', 'Pacific/Honolulu', NULL, NULL),
(44, 'maintenance_mode', '0', NULL, NULL),
(45, 'currency_symbol_position', 'left', NULL, NULL),
(46, 'language', '[{\"id\":1,\"name\":\"en\",\"direction\":\"ltr\",\"code\":\"en\",\"status\":1,\"default\":true}]', NULL, '2023-12-22 13:13:15'),
(47, 'self_pickup', '1', NULL, NULL),
(48, 'delivery', NULL, NULL, NULL),
(49, 'phone_verification', NULL, NULL, NULL),
(50, 'msg91_sms', '{\"status\":0,\"template_id\":null,\"authkey\":null}', NULL, NULL),
(51, '2factor_sms', '{\"status\":\"0\",\"api_key\":null}', NULL, NULL),
(52, 'nexmo_sms', '{\"status\":0,\"api_key\":null,\"api_secret\":null,\"signature_secret\":\"\",\"private_key\":\"\",\"application_id\":\"\",\"from\":null,\"otp_template\":null}', NULL, NULL),
(53, 'twilio_sms', '{\"status\":0,\"sid\":null,\"token\":null,\"from\":null,\"otp_template\":null}', NULL, NULL),
(54, 'pagination_limit', '8', NULL, NULL),
(55, 'map_api_key', '', NULL, NULL),
(56, 'delivery_management', '{\"status\":\"1\",\"min_shipping_charge\":\"30\",\"shipping_per_km\":\"1\"}', NULL, NULL),
(57, 'bkash', '{\"status\":\"1\",\"api_key\":\"\",\"api_secret\":\"\",\"username\":\"\",\"password\":\"\"}', NULL, NULL),
(58, 'paymob', '{\"status\":\"1\",\"api_key\":\"\",\"iframe_id\":\"\",\"integration_id\":\"\",\"hmac\":\"\"}', NULL, NULL),
(59, 'flutterwave', '{\"status\":\"1\",\"public_key\":\"\",\"secret_key\":\"\",\"hash\":\"\"}', NULL, NULL),
(60, 'mercadopago', '{\"status\":\"1\",\"public_key\":\"\",\"access_token\":\"\"}', NULL, NULL),
(61, 'returned_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(62, 'failed_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(63, 'canceled_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(64, 'recaptcha', '{\"status\":\"0\",\"site_key\":\"\",\"secret_key\":\"\"}', NULL, NULL),
(65, 'firestore_db', '{\"apiKey\":\"\",\"authDomain\":\"\",\"projectId\":\"\",\"storageBucket\":\"\",\"messagingSenderId\":\"\",\"appId\":\"\"}', NULL, NULL),
(66, 'play_store_config', '{\"status\":\"\",\"link\":\"\",\"min_version\":\"1\"}', NULL, NULL),
(67, 'app_store_config', '{\"status\":\"\",\"link\":\"\",\"min_version\":\"1\"}', NULL, NULL),
(68, 'default_preparation_time', '20', NULL, NULL),
(69, 'decimal_point_settings', '4', NULL, NULL),
(70, 'schedule_order_slot_duration', '1', NULL, NULL),
(71, 'time_format', '12', NULL, NULL),
(72, 'wallet_status', '0', NULL, NULL),
(73, 'loyalty_point_status', '0', NULL, NULL),
(74, 'ref_earning_status', '0', NULL, NULL),
(75, 'loyalty_point_exchange_rate', '0', NULL, NULL),
(76, 'ref_earning_exchange_rate', '0', NULL, NULL),
(77, 'loyalty_point_item_purchase_point', '0', NULL, NULL),
(78, 'loyalty_point_minimum_point', '0', NULL, NULL),
(79, 'whatsapp', '{\"status\":0,\"number\":\"\"}', NULL, NULL),
(80, 'fav_icon', '2023-12-20-65828e466025c.png', NULL, NULL),
(81, 'cookies', '{\"status\":null,\"text\":\"Allow Cookies for this site more reliable\"}', NULL, NULL),
(82, 'maximum_otp_hit', '5', NULL, NULL),
(83, 'otp_resend_time', '60', NULL, NULL),
(84, 'temporary_block_time', '600', NULL, NULL),
(85, 'dm_self_registration', NULL, NULL, NULL),
(86, 'toggle_veg_non_veg', '1', NULL, NULL),
(87, 'maximum_login_hit', '5', NULL, NULL),
(88, 'temporary_login_block_time', '600', NULL, NULL),
(89, 'return_page', '{\"status\":\"0\",\"content\":\"\"}', NULL, NULL),
(90, 'refund_page', '{\"status\":\"0\",\"content\":\"\"}', NULL, NULL),
(91, 'cancellation_page', '{\"status\":\"0\",\"content\":\"\"}', NULL, NULL),
(92, 'offline_payment', '{\"status\":\"1\"}', NULL, NULL),
(93, 'guest_checkout', '1', NULL, NULL),
(94, 'partial_payment', '0', NULL, NULL),
(95, 'partial_payment_combine_with', NULL, NULL, NULL),
(96, 'qr_code', '{\"branch_id\":\"1\",\"logo\":\"2024-03-15-65f3f70cc480f.png\",\"title\":\"#TAG\",\"description\":\"Best dish\",\"opening_time\":\"10:00\",\"closing_time\":\"23:30\",\"phone\":\"9651194555\",\"website\":\"http.kandatechnology.com\\/\\/qr-category-screen\",\"social_media\":\"Instagram\"}', NULL, NULL),
(97, 'apple_login', '{\"login_medium\":\"apple\",\"client_id\":\"\",\"client_secret\":\"\",\"team_id\":\"\",\"key_id\":\"\",\"service_file\":\"\",\"redirect_url\":\"\",\"status\":0}', NULL, NULL),
(98, 'add_wallet_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(99, 'add_wallet_bonus_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(100, 'firebase_otp_verification', '{\"status\":0,\"web_api_key\":\"\"}', NULL, NULL),
(101, 'country', 'IN', NULL, NULL),
(102, 'customer_notify_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(103, 'customer_notify_message_for_time_change', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(104, 'firebase_message_config', '{\"apiKey\":null,\"authDomain\":null,\"projectId\":null,\"storageBucket\":null,\"messagingSenderId\":null,\"appId\":null}', '2023-12-20 07:18:27', '2023-12-20 07:18:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint(11) NOT NULL,
  `position` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `branch_id` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT 10,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'def.png',
  `banner_image` varchar(255) DEFAULT NULL,
  `supplier` int(11) NOT NULL DEFAULT 0,
  `preparation_time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `chef_branch`
--

CREATE TABLE `chef_branch` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `branch_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chef_branch`
--

INSERT INTO `chef_branch` (`id`, `user_id`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 6, 1, '2024-05-16 09:41:55', '2024-05-16 09:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(7, 'Red', '#FF0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(16, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(29, 'PeachPuff', '#FFDAB9', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(38, 'Fuchsia', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(47, 'Purple', '#800080', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(76, 'Cyan', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(93, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(121, 'Azure', '#F0FFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(122, 'AliceBlue', '#F0F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(128, 'FloralWhite', '#FFFAF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(129, 'Ivory', '#FFFFF0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(143, 'Black', '#000000', '2018-11-05 02:12:30', '2018-11-05 02:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `image` text DEFAULT NULL,
  `is_reply` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `code` varchar(15) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `min_purchase` decimal(8,2) NOT NULL DEFAULT 0.00,
  `max_discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(15) NOT NULL DEFAULT 'percentage',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `coupon_type` varchar(255) NOT NULL DEFAULT 'default',
  `limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--


-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `exchange_rate` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `country`, `currency_code`, `currency_symbol`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', '$', 1.00, NULL, NULL),
(2, 'Canadian Dollar', 'CAD', 'CA$', 1.00, NULL, NULL),
(3, 'Euro', 'EUR', '€', 1.00, NULL, NULL),
(4, 'United Arab Emirates Dirham', 'AED', 'د.إ.‏', 1.00, NULL, NULL),
(5, 'Afghan Afghani', 'AFN', '؋', 1.00, NULL, NULL),
(6, 'Albanian Lek', 'ALL', 'L', 1.00, NULL, NULL),
(7, 'Armenian Dram', 'AMD', '֏', 1.00, NULL, NULL),
(8, 'Argentine Peso', 'ARS', '$', 1.00, NULL, NULL),
(9, 'Australian Dollar', 'AUD', '$', 1.00, NULL, NULL),
(10, 'Azerbaijani Manat', 'AZN', '₼', 1.00, NULL, NULL),
(11, 'Bosnia-Herzegovina Convertible Mark', 'BAM', 'KM', 1.00, NULL, NULL),
(12, 'Bangladeshi Taka', 'BDT', '৳', 1.00, NULL, NULL),
(13, 'Bulgarian Lev', 'BGN', 'лв.', 1.00, NULL, NULL),
(14, 'Bahraini Dinar', 'BHD', 'د.ب.‏', 1.00, NULL, NULL),
(15, 'Burundian Franc', 'BIF', 'FBu', 1.00, NULL, NULL),
(16, 'Brunei Dollar', 'BND', 'B$', 1.00, NULL, NULL),
(17, 'Bolivian Boliviano', 'BOB', 'Bs', 1.00, NULL, NULL),
(18, 'Brazilian Real', 'BRL', 'R$', 1.00, NULL, NULL),
(19, 'Botswanan Pula', 'BWP', 'P', 1.00, NULL, NULL),
(20, 'Belarusian Ruble', 'BYN', 'Br', 1.00, NULL, NULL),
(21, 'Belize Dollar', 'BZD', '$', 1.00, NULL, NULL),
(22, 'Congolese Franc', 'CDF', 'FC', 1.00, NULL, NULL),
(23, 'Swiss Franc', 'CHF', 'CHf', 1.00, NULL, NULL),
(24, 'Chilean Peso', 'CLP', '$', 1.00, NULL, NULL),
(25, 'Chinese Yuan', 'CNY', '¥', 1.00, NULL, NULL),
(26, 'Colombian Peso', 'COP', '$', 1.00, NULL, NULL),
(27, 'Costa Rican Colón', 'CRC', '₡', 1.00, NULL, NULL),
(28, 'Cape Verdean Escudo', 'CVE', '$', 1.00, NULL, NULL),
(29, 'Czech Republic Koruna', 'CZK', 'Kč', 1.00, NULL, NULL),
(30, 'Djiboutian Franc', 'DJF', 'Fdj', 1.00, NULL, NULL),
(31, 'Danish Krone', 'DKK', 'Kr.', 1.00, NULL, NULL),
(32, 'Dominican Peso', 'DOP', 'RD$', 1.00, NULL, NULL),
(33, 'Algerian Dinar', 'DZD', 'د.ج.‏', 1.00, NULL, NULL),
(34, 'Estonian Kroon', 'EEK', 'kr', 1.00, NULL, NULL),
(35, 'Egyptian Pound', 'EGP', 'E£‏', 1.00, NULL, NULL),
(36, 'Eritrean Nakfa', 'ERN', 'Nfk', 1.00, NULL, NULL),
(37, 'Ethiopian Birr', 'ETB', 'Br', 1.00, NULL, NULL),
(38, 'British Pound Sterling', 'GBP', '£', 1.00, NULL, NULL),
(39, 'Georgian Lari', 'GEL', 'GEL', 1.00, NULL, NULL),
(40, 'Ghanaian Cedi', 'GHS', 'GH¢', 1.00, NULL, NULL),
(41, 'Guinean Franc', 'GNF', 'FG', 1.00, NULL, NULL),
(42, 'Guatemalan Quetzal', 'GTQ', 'Q', 1.00, NULL, NULL),
(43, 'Hong Kong Dollar', 'HKD', 'HK$', 1.00, NULL, NULL),
(44, 'Honduran Lempira', 'HNL', 'L', 1.00, NULL, NULL),
(45, 'Croatian Kuna', 'HRK', 'kn', 1.00, NULL, NULL),
(46, 'Hungarian Forint', 'HUF', 'Ft', 1.00, NULL, NULL),
(47, 'Indonesian Rupiah', 'IDR', 'Rp', 1.00, NULL, NULL),
(48, 'Israeli New Sheqel', 'ILS', '₪', 1.00, NULL, NULL),
(49, 'Indian Rupee', 'INR', '₹', 1.00, NULL, NULL),
(50, 'Iraqi Dinar', 'IQD', 'ع.د', 1.00, NULL, NULL),
(51, 'Iranian Rial', 'IRR', '﷼', 1.00, NULL, NULL),
(52, 'Icelandic Króna', 'ISK', 'kr', 1.00, NULL, NULL),
(53, 'Jamaican Dollar', 'JMD', '$', 1.00, NULL, NULL),
(54, 'Jordanian Dinar', 'JOD', 'د.ا‏', 1.00, NULL, NULL),
(55, 'Japanese Yen', 'JPY', '¥', 1.00, NULL, NULL),
(56, 'Kenyan Shilling', 'KES', 'Ksh', 1.00, NULL, NULL),
(57, 'Cambodian Riel', 'KHR', '៛', 1.00, NULL, NULL),
(58, 'Comorian Franc', 'KMF', 'FC', 1.00, NULL, NULL),
(59, 'South Korean Won', 'KRW', 'CF', 1.00, NULL, NULL),
(60, 'Kuwaiti Dinar', 'KWD', 'د.ك.‏', 1.00, NULL, NULL),
(61, 'Kazakhstani Tenge', 'KZT', '₸.', 1.00, NULL, NULL),
(62, 'Lebanese Pound', 'LBP', 'ل.ل.‏', 1.00, NULL, NULL),
(63, 'Sri Lankan Rupee', 'LKR', 'Rs', 1.00, NULL, NULL),
(64, 'Lithuanian Litas', 'LTL', 'Lt', 1.00, NULL, NULL),
(65, 'Latvian Lats', 'LVL', 'Ls', 1.00, NULL, NULL),
(66, 'Libyan Dinar', 'LYD', 'د.ل.‏', 1.00, NULL, NULL),
(67, 'Moroccan Dirham', 'MAD', 'د.م.‏', 1.00, NULL, NULL),
(68, 'Moldovan Leu', 'MDL', 'L', 1.00, NULL, NULL),
(69, 'Malagasy Ariary', 'MGA', 'Ar', 1.00, NULL, NULL),
(70, 'Macedonian Denar', 'MKD', 'Ден', 1.00, NULL, NULL),
(71, 'Myanma Kyat', 'MMK', 'K', 1.00, NULL, NULL),
(72, 'Macanese Pataca', 'MOP', 'MOP$', 1.00, NULL, NULL),
(73, 'Mauritian Rupee', 'MUR', 'Rs', 1.00, NULL, NULL),
(74, 'Mexican Peso', 'MXN', '$', 1.00, NULL, NULL),
(75, 'Malaysian Ringgit', 'MYR', 'RM', 1.00, NULL, NULL),
(76, 'Mozambican Metical', 'MZN', 'MT', 1.00, NULL, NULL),
(77, 'Namibian Dollar', 'NAD', 'N$', 1.00, NULL, NULL),
(78, 'Nigerian Naira', 'NGN', '₦', 1.00, NULL, NULL),
(79, 'Nicaraguan Córdoba', 'NIO', 'C$', 1.00, NULL, NULL),
(80, 'Norwegian Krone', 'NOK', 'kr', 1.00, NULL, NULL),
(81, 'Nepalese Rupee', 'NPR', 'Re.', 1.00, NULL, NULL),
(82, 'New Zealand Dollar', 'NZD', '$', 1.00, NULL, NULL),
(83, 'Omani Rial', 'OMR', 'ر.ع.‏', 1.00, NULL, NULL),
(84, 'Panamanian Balboa', 'PAB', 'B/.', 1.00, NULL, NULL),
(85, 'Peruvian Nuevo Sol', 'PEN', 'S/', 1.00, NULL, NULL),
(86, 'Philippine Peso', 'PHP', '₱', 1.00, NULL, NULL),
(87, 'Pakistani Rupee', 'PKR', 'Rs', 1.00, NULL, NULL),
(88, 'Polish Zloty', 'PLN', 'zł', 1.00, NULL, NULL),
(89, 'Paraguayan Guarani', 'PYG', '₲', 1.00, NULL, NULL),
(90, 'Qatari Rial', 'QAR', 'ر.ق.‏', 1.00, NULL, NULL),
(91, 'Romanian Leu', 'RON', 'lei', 1.00, NULL, NULL),
(92, 'Serbian Dinar', 'RSD', 'din.', 1.00, NULL, NULL),
(93, 'Russian Ruble', 'RUB', '₽.', 1.00, NULL, NULL),
(94, 'Rwandan Franc', 'RWF', 'FRw', 1.00, NULL, NULL),
(95, 'Saudi Riyal', 'SAR', 'ر.س.‏', 1.00, NULL, NULL),
(96, 'Sudanese Pound', 'SDG', 'ج.س.', 1.00, NULL, NULL),
(97, 'Swedish Krona', 'SEK', 'kr', 1.00, NULL, NULL),
(98, 'Singapore Dollar', 'SGD', '$', 1.00, NULL, NULL),
(99, 'Somali Shilling', 'SOS', 'Sh.so.', 1.00, NULL, NULL),
(100, 'Syrian Pound', 'SYP', 'LS‏', 1.00, NULL, NULL),
(101, 'Thai Baht', 'THB', '฿', 1.00, NULL, NULL),
(102, 'Tunisian Dinar', 'TND', 'د.ت‏', 1.00, NULL, NULL),
(103, 'Tongan Paʻanga', 'TOP', 'T$', 1.00, NULL, NULL),
(104, 'Turkish Lira', 'TRY', '₺', 1.00, NULL, NULL),
(105, 'Trinidad and Tobago Dollar', 'TTD', '$', 1.00, NULL, NULL),
(106, 'New Taiwan Dollar', 'TWD', 'NT$', 1.00, NULL, NULL),
(107, 'Tanzanian Shilling', 'TZS', 'TSh', 1.00, NULL, NULL),
(108, 'Ukrainian Hryvnia', 'UAH', '₴', 1.00, NULL, NULL),
(109, 'Ugandan Shilling', 'UGX', 'USh', 1.00, NULL, NULL),
(110, 'Uruguayan Peso', 'UYU', '$', 1.00, NULL, NULL),
(111, 'Uzbekistan Som', 'UZS', 'so\'m', 1.00, NULL, NULL),
(112, 'Venezuelan Bolívar', 'VEF', 'Bs.F.', 1.00, NULL, NULL),
(113, 'Vietnamese Dong', 'VND', '₫', 1.00, NULL, NULL),
(114, 'CFA Franc BEAC', 'XAF', 'FCFA', 1.00, NULL, NULL),
(115, 'CFA Franc BCEAO', 'XOF', 'CFA', 1.00, NULL, NULL),
(116, 'Yemeni Rial', 'YER', '﷼‏', 1.00, NULL, NULL),
(117, 'South African Rand', 'ZAR', 'R', 1.00, NULL, NULL),
(118, 'Zambian Kwacha', 'ZMK', 'ZK', 1.00, NULL, NULL),
(119, 'Zimbabwean Dollar', 'ZWL', 'Z$', 1.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address_type` varchar(100) DEFAULT NULL,
  `contact_person_number` varchar(20) NOT NULL,
  `floor` varchar(10) DEFAULT NULL,
  `house` varchar(50) DEFAULT NULL,
  `road` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `is_guest` int(11) NOT NULL DEFAULT 0,
  `contact_person_name` varchar(100) DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_addresses`
--


-- --------------------------------------------------------

--
-- Table structure for table `dc_conversations`
--

CREATE TABLE `dc_conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_histories`
--

CREATE TABLE `delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `deliveryman_id` bigint(20) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_men`
--

CREATE TABLE `delivery_men` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `identity_number` varchar(30) DEFAULT NULL,
  `identity_type` varchar(50) DEFAULT NULL,
  `identity_image` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_token` varchar(255) DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `branch_id` bigint(20) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `application_status` varchar(255) NOT NULL DEFAULT 'approved' COMMENT 'pending, approved, denied',
  `login_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `language_code` varchar(255) NOT NULL DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d_m_reviews`
--

CREATE TABLE `d_m_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `background_image` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `button_name` varchar(100) DEFAULT NULL,
  `button_url` varchar(255) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `copyright_text` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `email_type` varchar(255) DEFAULT NULL,
  `email_template` varchar(255) DEFAULT NULL,
  `privacy` tinyint(1) NOT NULL DEFAULT 0,
  `refund` tinyint(1) NOT NULL DEFAULT 0,
  `cancelation` tinyint(1) NOT NULL DEFAULT 0,
  `contact` tinyint(1) NOT NULL DEFAULT 0,
  `facebook` tinyint(1) NOT NULL DEFAULT 0,
  `instagram` tinyint(1) NOT NULL DEFAULT 0,
  `twitter` tinyint(1) NOT NULL DEFAULT 0,
  `linkedin` tinyint(1) NOT NULL DEFAULT 0,
  `pinterest` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guest_users`
--

CREATE TABLE `guest_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guest_users`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory_item_qties`
--

CREATE TABLE `inventory_item_qties` (
  `id` int(11) NOT NULL,
  `item` varchar(255) NOT NULL,
  `type_id` varchar(255) NOT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `branch_id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `available_qty` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_item_qties`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory_item_types`
--

CREATE TABLE `inventory_item_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_item_types`
--

INSERT INTO `inventory_item_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'kg', '2024-06-13 04:37:27', '2024-06-13 04:37:27'),
(2, 'gms', '2024-06-13 04:37:34', '2024-06-13 04:37:34'),
(3, 'ltr', '2024-06-13 04:37:41', '2024-06-13 04:37:41'),
(4, 'ml', '2024-06-13 04:37:48', '2024-06-13 04:37:48');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_product_recepies`
--

CREATE TABLE `inventory_product_recepies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `branch_id` int(255) DEFAULT NULL,
  `water` varchar(255) DEFAULT NULL,
  `quantities` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `deliveryman_id` bigint(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `attachment` text DEFAULT NULL,
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_28_082729_create_admins_table', 1),
(5, '2020_12_28_083059_create_delivery_men_table', 1),
(6, '2020_12_28_085055_create_attributes_table', 1),
(7, '2020_12_28_085146_create_add_ons_table', 1),
(8, '2020_12_28_085255_create_categories_table', 1),
(9, '2020_12_28_085511_create_business_settings_table', 1),
(10, '2020_12_28_085733_create_customer_addresses_table', 1),
(11, '2020_12_28_090037_create_orders_table', 1),
(12, '2020_12_28_090551_create_order_details_table', 1),
(13, '2020_12_28_091214_create_order_delivery_histories_table', 1),
(14, '2020_12_28_092607_create_banners_table', 1),
(15, '2020_12_28_092747_create_notifications_table', 1),
(16, '2020_12_28_092933_create_coupons_table', 1),
(17, '2020_12_28_093409_create_track_deliverymen_table', 1),
(18, '2020_12_28_093637_create_conversations_table', 1),
(19, '2020_12_28_093812_create_reviews_table', 1),
(20, '2020_12_28_093937_create_products_table', 1),
(21, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(22, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(23, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(24, '2016_06_01_000004_create_oauth_clients_table', 2),
(25, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(26, '2021_01_02_053131_add_products_column_attributes', 2),
(27, '2021_01_02_062050_add_products_table_column_discount_tax', 2),
(28, '2021_01_03_083314_add_column_to_order_details', 3),
(29, '2021_01_03_084318_add_another_column_to_order_details', 3),
(30, '2021_01_05_133023_add_columns_to_customer_addressess', 4),
(31, '2021_01_07_142644_add_column_to_conversation', 5),
(32, '2021_01_09_145939_add_column_to_order_table', 6),
(33, '2021_01_09_180439_add_column_to_product_table', 7),
(34, '2021_01_09_182458_add_image_column_to_category', 7),
(35, '2021_01_10_144352_create_wishlists_table', 8),
(36, '2021_01_16_182939_add_column_to_order_table1', 9),
(37, '2021_01_18_124153_add_column_to_cono_table', 10),
(38, '2021_01_18_132026_add_column_to_deliveryman_table', 11),
(39, '2021_01_18_135107_create_delivery_histories_table', 11),
(40, '2021_01_23_102525_add_col_to_banner_category_id', 12),
(41, '2021_01_26_133423_add_delivery_charge_order_table', 13),
(42, '2021_01_27_111644_add_email_token_to_user_table', 13),
(43, '2021_01_27_112309_create_email_verifications_table', 13),
(44, '2021_01_27_120054_remove_column_from_users', 13),
(45, '2021_01_27_120306_add_column_tousers', 13),
(46, '2021_01_28_152556_create_currencies_table', 14),
(47, '2021_02_07_140951_add_firebase_token_to_users_table', 15),
(48, '2021_02_07_141134_add_order_note_to_orders_table', 15),
(49, '2021_02_11_125439_add_fcm_to_delivery_man', 16),
(50, '2021_02_15_094227_add_orderid_to_reviews_table', 17),
(51, '2021_02_18_085112_add_coupon_type_column_in_coupons', 18),
(52, '2021_02_18_095103_add_coupon_code_to_order_table', 18),
(53, '2021_02_20_051812_create_d_m_reviews_table', 19),
(54, '2021_02_20_070636_add_addon_qtys_order_table', 19),
(55, '2021_02_22_084240_add_order_type', 20),
(56, '2021_02_23_053203_create_branches_table', 21),
(57, '2021_02_23_093537_add_branch_in_order', 21),
(58, '2021_02_24_055406_add_coverage_in_branch', 21),
(59, '2021_02_25_063013_add_branch_to_delivery_man', 22),
(60, '2021_02_28_080406_add_remember_token_to_branch', 23),
(61, '2021_03_01_112807_change_poduct_table_column_change', 24),
(62, '2021_03_22_055801_add_branch_id_to_product', 25),
(63, '2021_03_24_055957_add_image_table_in_branch', 26),
(64, '2021_04_05_144520_update_product_image_column', 27),
(65, '2021_04_06_040409_create_colors_table', 28),
(66, '2021_04_10_141505_add_colors_column_products', 28),
(67, '2021_04_17_054600_add_point_to_users', 29),
(68, '2021_04_17_084426_create_point_transitions', 29),
(69, '2021_04_11_140138_create_phone_verifications_table', 30),
(70, '2021_04_12_144205_add_column_password_resets', 30),
(71, '2021_05_03_160034_add_callback_to_order', 31),
(72, '2021_05_04_203143_add_delivery_date_to_order', 32),
(73, '2021_05_06_144650_change_business_value_col_type', 33),
(74, '2021_06_17_054551_create_soft_credentials_table', 34),
(75, '2021_09_01_133521_create_phone_verifications_table', 35),
(76, '2021_09_03_194551_create_translations_table', 35),
(77, '2021_09_04_082220_rename_email_col', 35),
(78, '2021_10_12_164428_add_temporary_token_to_users_table', 36),
(79, '2021_11_07_165323_add_extra_discount_to_order_table', 37),
(80, '2022_02_03_092647_add_fcm_token_to_admins_table', 38),
(81, '2022_02_03_175558_create_dc_conversations_table', 38),
(82, '2022_02_03_175826_create_messages_table', 38),
(83, '2022_02_05_161313_add_sender_column_to_conversations_table', 38),
(84, '2022_02_10_163707_change_banner_title_length', 38),
(85, '2022_02_10_172126_change_name_length_to_attributes_table', 38),
(86, '2022_02_10_173534_change_name_length_to_add_ons_table', 38),
(87, '2022_02_10_175418_change_name_length_to_categories_table', 38),
(88, '2022_02_12_154555_create_social_media_table', 38),
(89, '2022_02_13_102927_create_newsletters_table', 38),
(90, '2022_02_14_115413_chnage_message_data_type_in_conversations_table', 38),
(91, '2022_02_15_133410_change_attachment_column_type_to_messages_table', 38),
(92, '2022_02_15_133618_change_image_colum_type_to_conversations_table', 38),
(93, '2022_03_18_102843_add_delivery_address_to_order_table', 39),
(94, '2022_03_18_151825_add_cover_image_to_category_table', 39),
(95, '2022_05_16_171116_preparation_time_add_in_order_table', 40),
(96, '2022_05_26_102619_create_admin_roles_table', 40),
(97, '2022_05_26_113238_add_admin_role_id_to_admin_table', 40),
(98, '2022_05_26_123911_add_status_column_to_admin_table', 40),
(99, '2022_05_26_163239_add_popularity_count_in_product_table', 40),
(100, '2022_05_28_101608_create_time_schedules_table', 40),
(101, '2022_09_10_163335_add_user_type_on_users_table', 41),
(102, '2022_09_11_143431_create_tables_table', 41),
(103, '2022_09_17_104924_add_column_product_type_to_products_table', 41),
(104, '2022_09_17_122002_add_multiple_column_to_orders_table', 41),
(105, '2022_09_20_102322_create_branch_promotions_table', 41),
(106, '2022_09_21_144009_create_chef_branch_table', 41),
(107, '2022_09_26_100058_add_column_branch_promotion_status_to_branch_table', 41),
(108, '2022_09_26_153140_add_is_available_column_to_tables_table', 41),
(109, '2022_09_27_115927_create_table_order_table', 41),
(110, '2022_09_29_154224_add_column_table_order_id_in_orders_table', 41),
(111, '2022_10_19_121218_drop_cloumn_order_id_from_table_orders', 41),
(112, '2022_10_19_121436_drop_cloumn_is_available_from_tables', 41),
(113, '2022_10_20_193809_change_product_type_in_product_table', 41),
(114, '2022_11_20_181511_add_is_active_column_to_delivery_men_table', 42),
(115, '2022_11_24_122400_add_phone_column_to_branches_table', 42),
(116, '2022_12_20_083125_add_identity_infos_to_admins_table', 42),
(117, '2022_12_20_120533_add_flood_road_to_customer_addresses_table', 42),
(118, '2022_12_24_121705_add_login_medium_column_to_users_table', 42),
(119, '2023_01_25_205515_create_tags_table', 43),
(120, '2023_01_25_205742_create_product_tag_table', 43),
(121, '2023_01_25_222442_create_product_by_branches_table', 43),
(122, '2023_01_29_025152_create_wallet_transactions_table', 43),
(123, '2023_01_29_025649_add_wallet_balance_to_users_table', 43),
(124, '2023_01_30_023546_add_multiple_column_in_point_transitions_table', 43),
(125, '2023_01_30_031145_create_order_transaction_table', 43),
(126, '2023_01_30_232645_add_refer_column_in_users_table', 43),
(127, '2023_02_08_172513_add_cover_image_column_in_branch_table', 43),
(128, '2023_02_11_121351_change_varaition_cloumn_type_in_order_details_table', 43),
(129, '2023_02_27_154902_add_price_column_in_product_by_branches_table', 43),
(130, '2023_02_28_130314_add_discount_column_to_product_by_branches_table', 43),
(131, '2023_05_15_153550_add_otp_hist_counts_column_in_phone_verification_tabel', 44),
(132, '2023_05_15_175430_add_otp_hits_counts_column_in_password_resets', 44),
(133, '2023_05_16_000027_add_otp_hits_counts_column_in_email_verifications', 44),
(134, '2023_05_16_144053_add_application_status_to_delivery_men', 44),
(135, '2023_05_16_190456_add_tax_in_add_ons', 44),
(136, '2023_05_17_121506_add_login_hit_count_in_users', 44),
(137, '2023_05_17_152928_add_login_hit_count_in_delivery_men', 44),
(138, '2023_05_22_143319_add_multiple_colum_in_order_details', 44),
(139, '2023_07_24_153033_create_wallet_bonuses_table', 45),
(140, '2023_07_30_112804_add_priority_column_in_categories_table', 45),
(141, '2023_07_31_114206_create_guest_users_table', 45),
(142, '2023_07_31_121256_add_is_guest_column_in_orders_table', 45),
(143, '2023_07_31_121334_add_is_guest_column_in_customer_addresses_table', 45),
(144, '2023_08_01_164756_create_offline_payment_methods_table', 45),
(145, '2023_08_06_121550_create_offline_payments_table', 45),
(146, '2023_08_21_111614_create_order_partial_payments_table', 45),
(147, '2023_08_21_193541_add_stocks_column_to_product_by_branches', 45),
(148, '2023_08_24_172634_create_email_templates_table', 45),
(149, '2023_08_27_145829_add_language_code_in_users_table', 45),
(150, '2023_08_27_150114_add_language_code_in_delivery_men_table', 45),
(151, '2023_09_05_195131_change_column_size_for_transaction_reference', 45),
(152, '2023_11_01_124210_add_status_column_in_offline_payments', 46),
(153, '2023_11_04_163505_add_colun_in_chef_branch_table', 46),
(154, '2024_01_15_193910_create_suppliers_table', 46),
(155, '2024_02_19_113455_create_product_addon_table', 47);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` varchar(255) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `read_at` varchar(255) DEFAULT NULL,
  `notifiable_id` varchar(255) DEFAULT NULL,
  `notifiable_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--


-- --------------------------------------------------------

--
-- Table structure for table `notification_templates`
--

CREATE TABLE `notification_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `content` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `readed` tinyint(1) NOT NULL DEFAULT 0,
  `redirect_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'z5ky1aF18fNgAczYo0W2MdglqUxpyt0KsKdmbRIt', NULL, 'http://localhost', 1, 0, 0, '2021-01-05 18:07:29', '2021-01-05 18:07:29'),
(2, NULL, 'Laravel Password Grant Client', 'clk5DEe0ANVDYwD79OUYBkLcZ6CLSykUvULubUuk', 'users', 'http://localhost', 0, 1, 0, '2021-01-05 18:07:29', '2021-01-05 18:07:29'),
(3, NULL, 'Laravel Personal Access Client', 'wDHtyTifyKZ422juudaKc8LW6ZSmE9YEovXIWTSM', NULL, 'http://localhost', 1, 0, 0, '2021-04-10 17:00:21', '2021-04-10 17:00:21'),
(4, NULL, 'Laravel Password Grant Client', 'YWRRgYEydgmaZKctc0yO7hA3IiEMYvPZbYDrl8YD', 'users', 'http://localhost', 0, 1, 0, '2021-04-10 17:00:21', '2021-04-10 17:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-01-05 18:07:29', '2021-01-05 18:07:29'),
(2, 3, '2021-04-10 17:00:21', '2021-04-10 17:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_payments`
--

CREATE TABLE `offline_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `payment_info` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => pending, 1 => approved, 2 => denied',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_payment_methods`
--

CREATE TABLE `offline_payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(255) NOT NULL,
  `method_fields` text NOT NULL,
  `payment_note` varchar(255) DEFAULT NULL,
  `method_informations` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `is_guest` int(11) NOT NULL DEFAULT 0,
  `order_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `coupon_discount_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `coupon_discount_title` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'unpaid',
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `order_status` varchar(255) NOT NULL DEFAULT 'pending',
  `total_tax_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(30) DEFAULT NULL,
  `transaction_reference` varchar(255) DEFAULT NULL,
  `delivery_address_id` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `delivery_charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `order_note` text DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `order_type` varchar(255) DEFAULT 'delivery',
  `branch_id` int(255) DEFAULT 1,
  `callback` varchar(255) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `delivery_time` varchar(255) DEFAULT NULL,
  `extra_discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `package_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `delivery_address` text DEFAULT NULL,
  `preparation_time` int(11) DEFAULT NULL,
  `table_id` bigint(20) DEFAULT NULL,
  `order_by_pos` varchar(255) DEFAULT NULL,
  `number_of_people` int(11) DEFAULT NULL,
  `table_order_id` bigint(20) DEFAULT NULL,
  `order_date` date NOT NULL,
  `ordercode` varchar(200) DEFAULT NULL,
  `ins` varchar(100) DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `waiter_id` int(255) DEFAULT NULL,
  `verified_id` int(255) DEFAULT NULL,
  `chief_id` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_check_status`
--

CREATE TABLE `order_check_status` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` int(255) DEFAULT NULL,
  `branch_id` int(255) DEFAULT NULL,
  `product_status` int(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_check_status`
--


-- --------------------------------------------------------

--
-- Table structure for table `order_delivery_histories`
--

CREATE TABLE `order_delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_location` varchar(255) DEFAULT NULL,
  `end_location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `branch_id` int(255) NOT NULL DEFAULT 1,
  `order_id` bigint(20) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `product_details` text DEFAULT NULL,
  `variation` longtext DEFAULT NULL,
  `discount_on_product` decimal(8,2) DEFAULT NULL,
  `discount_type` varchar(20) NOT NULL DEFAULT 'amount',
  `quantity` int(11) NOT NULL DEFAULT 1,
  `tax_amount` decimal(8,2) NOT NULL DEFAULT 1.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `add_on_ids` varchar(255) DEFAULT NULL,
  `extra_ids` varchar(255) DEFAULT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `add_on_qtys` varchar(255) DEFAULT NULL,
  `extra_qtys` varchar(255) DEFAULT NULL,
  `add_on_taxes` varchar(255) DEFAULT NULL,
  `extra_tax` varchar(255) DEFAULT NULL,
  `add_on_prices` varchar(255) DEFAULT NULL,
  `extra_prices` varchar(255) DEFAULT NULL,
  `add_on_tax_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `option1` varchar(100) DEFAULT NULL,
  `option2` varchar(100) DEFAULT NULL,
  `ins` text DEFAULT NULL,
  `order_more` int(11) NOT NULL DEFAULT 0,
  `package_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `extra_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `table_id` int(255) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `timing` varchar(255) DEFAULT NULL,
  `product_variants` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_partial_payments`
--

CREATE TABLE `order_partial_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `paid_with` varchar(255) NOT NULL,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_transactions`
--

CREATE TABLE `order_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `order_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `received_by` varchar(255) DEFAULT NULL,
  `delivery_charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `original_delivery_charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_transactions`
--

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email_or_phone` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_requests`
--

CREATE TABLE `payment_requests` (
  `id` char(36) NOT NULL,
  `payer_id` varchar(64) DEFAULT NULL,
  `receiver_id` varchar(64) DEFAULT NULL,
  `payment_amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `gateway_callback_url` varchar(191) DEFAULT NULL,
  `success_hook` varchar(100) DEFAULT NULL,
  `failure_hook` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `currency_code` varchar(20) NOT NULL DEFAULT 'USD',
  `payment_method` varchar(50) DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payer_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `external_redirect_link` varchar(255) DEFAULT NULL,
  `receiver_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `attribute_id` varchar(64) DEFAULT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `payment_platform` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_verifications`
--

CREATE TABLE `phone_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `point_transitions`
--

CREATE TABLE `point_transitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `debit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `reference` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `preference`
--

CREATE TABLE `preference` (
  `id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `pre_count` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `option1` varchar(100) NOT NULL,
  `option2` varchar(100) NOT NULL,
  `order_no` varchar(100) DEFAULT NULL,
  `add_ons` varchar(100) DEFAULT NULL,
  `orderstatus` int(11) NOT NULL DEFAULT 1,
  `cate_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `preference`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `variations` text DEFAULT NULL,
  `add_ons` varchar(255) DEFAULT NULL,
  `extras` text DEFAULT NULL,
  `product_cust_type` varchar(255) DEFAULT NULL,
  `tax` decimal(8,2) NOT NULL DEFAULT 0.00,
  `available_time_starts` time DEFAULT NULL,
  `available_time_ends` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attributes` varchar(255) DEFAULT NULL,
  `category_ids` varchar(255) DEFAULT NULL,
  `choice_options` text DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(20) NOT NULL DEFAULT 'percent',
  `tax_type` varchar(20) NOT NULL DEFAULT 'percent',
  `set_menu` tinyint(1) NOT NULL DEFAULT 0,
  `branch_id` bigint(20) NOT NULL DEFAULT 1,
  `colors` text DEFAULT NULL,
  `popularity_count` int(11) NOT NULL DEFAULT 0,
  `product_type` varchar(255) DEFAULT NULL COMMENT 'veg, non_veg',
  `category_id` int(11) NOT NULL DEFAULT 0,
  `timing` varchar(255) DEFAULT NULL,
  `product_status` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_addon`
--

CREATE TABLE `product_addon` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `addon_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_by_branches`
--

CREATE TABLE `product_by_branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(255) NOT NULL DEFAULT 'percent',
  `discount` double(8,2) DEFAULT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `is_available` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=>not available, 1=>available',
  `variations` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_type` varchar(255) NOT NULL DEFAULT 'unlimited',
  `stock` int(11) NOT NULL DEFAULT 0,
  `sold_quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_by_branches`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(255) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `basic_price` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `order_by` varchar(255) DEFAULT NULL,
  `credit` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `purchase_no` varchar(255) DEFAULT NULL,
  `paid` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `supplier` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `purchase_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

-- --------------------------------------------------------

--
-- Table structure for table `raws`
--

CREATE TABLE `raws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `raws`
--

-- --------------------------------------------------------

--
-- Table structure for table `raw_supplier`
--

CREATE TABLE `raw_supplier` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `raw_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `raw_supplier`
--

INSERT INTO `raw_supplier` (`id`, `raw_id`, `supplier_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 2, 1, NULL, NULL),
(4, 3, 1, NULL, NULL),
(5, 4, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_status_orders`
--

CREATE TABLE `role_status_orders` (
  `id` int(11) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `role_type` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_status_orders`
--

INSERT INTO `role_status_orders` (`id`, `order_status`, `role_type`, `created_at`, `updated_at`) VALUES
(1, 'pending', 'waiter', '2024-05-13', '2024-05-13'),
(2, 'confirmed', 'waiter', '2024-05-13', '2024-05-13'),
(3, 'delivered', 'waiter', '2024-05-13', '2024-05-13');

-- --------------------------------------------------------

--
-- Table structure for table `social_medias`
--

CREATE TABLE `social_medias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soft_credentials`
--

CREATE TABLE `soft_credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(255) NOT NULL,
  `products` varchar(255) DEFAULT NULL,
  `category_id` int(255) DEFAULT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `in_stock` varchar(255) DEFAULT NULL,
  `stock_update` decimal(10,2) DEFAULT NULL,
  `remaining_stock` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `stock_no` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--


-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `gmail` varchar(255) NOT NULL,
  `item` varchar(255) DEFAULT NULL,
  `item_no` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `whatappsnumber` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--


-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL DEFAULT 1,
  `branch_id` bigint(20) DEFAULT NULL,
  `waiter_id` bigint(20) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `booking` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Dumping data for table `tables`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_orders`
--

CREATE TABLE `table_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table_id` bigint(20) NOT NULL,
  `branch_table_token` varchar(255) NOT NULL,
  `branch_table_token_is_expired` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_waiter`
--

CREATE TABLE `table_waiter` (
  `id` int(11) NOT NULL,
  `waiter_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_waiter`
--

INSERT INTO `table_waiter` (`id`, `waiter_id`, `table_id`, `date`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 5, '2024-01-18', 1, '2024-01-18 10:38:36', '0000-00-00 00:00:00'),
(2, 6, 6, '2024-01-18', 1, '2024-01-18 10:38:36', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_schedules`
--

CREATE TABLE `time_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(255) DEFAULT NULL,
  `opening_time` time DEFAULT NULL,
  `closing_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_schedules`
--

INSERT INTO `time_schedules` (`id`, `day`, `opening_time`, `closing_time`, `created_at`, `updated_at`) VALUES
(1, 'Monday', '20:17:00', '23:17:00', NULL, '2024-09-02 04:47:22'),
(2, 'Tuesday', '21:47:00', '22:50:00', NULL, '2024-08-29 02:14:26'),
(3, 'Wednesday', '00:10:00', '22:37:00', NULL, '2024-08-21 03:08:10'),
(4, 'Thursday', '14:22:00', '14:02:00', NULL, '2024-08-29 01:50:00'),
(5, 'Friday', '10:29:00', '21:45:00', NULL, '2024-04-01 12:37:02'),
(6, 'Saturday', '10:00:00', '11:35:00', NULL, NULL),
(7, 'Sunday', '10:00:00', '11:35:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `track_deliverymen`
--

CREATE TABLE `track_deliverymen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  `latitude` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `translationable_type` varchar(255) NOT NULL,
  `translationable_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL COMMENT 'null for user, kitchen for kitchen user',
  `is_active` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = active, 0 = inactive',
  `image` varchar(100) DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `remember_token` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_verification_token` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `cm_firebase_token` varchar(255) DEFAULT NULL,
  `point` decimal(8,2) NOT NULL DEFAULT 0.00,
  `temporary_token` varchar(255) DEFAULT NULL,
  `login_medium` varchar(15) DEFAULT NULL,
  `table_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`table_id`)),
  `branch_id` int(255) DEFAULT NULL,
  `wallet_balance` decimal(24,3) NOT NULL DEFAULT 0.000,
  `refer_code` varchar(255) DEFAULT NULL,
  `refer_by` bigint(20) DEFAULT NULL,
  `login_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `android_token` varchar(255) DEFAULT NULL,
  `language_code` varchar(255) NOT NULL DEFAULT 'en',
  `notification_count` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `email`, `user_type`, `is_active`, `image`, `is_phone_verified`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `email_verification_token`, `phone`, `cm_firebase_token`, `point`, `temporary_token`, `login_medium`, `table_id`, `branch_id`, `wallet_balance`, `refer_code`, `refer_by`, `login_hit_count`, `is_temp_blocked`, `temp_block_time`, `android_token`, `language_code`, `notification_count`) VALUES
(1, 'admin', NULL, 'admin@admin.com', 'Admin', 1, NULL, 0, NULL, '$2y$10$EwY/r3/EGqXN98eKYurP2.kI4XpAXtU13DDkVt0efg0kGdPNFJ3RG', NULL, NULL, '2024-09-03 12:51:36', NULL, NULL, NULL, 0.00, NULL, NULL, NULL, 1, 0.000, NULL, NULL, 0, 0, NULL, NULL, 'en', '365');

-- --------------------------------------------------------

--
-- Table structure for table `waiters`
--

CREATE TABLE `waiters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unique_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_bonuses`
--

CREATE TABLE `wallet_bonuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `bonus_type` varchar(255) NOT NULL,
  `bonus_amount` double(23,2) NOT NULL DEFAULT 0.00,
  `minimum_add_amount` double(23,2) NOT NULL DEFAULT 0.00,
  `maximum_bonus_amount` double(23,2) NOT NULL DEFAULT 0.00,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_bonuses`
--


-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `debit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `admin_bonus` decimal(24,3) NOT NULL DEFAULT 0.000,
  `balance` decimal(24,3) NOT NULL DEFAULT 0.000,
  `transaction_type` varchar(191) DEFAULT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 2, 23, '2023-12-21 04:25:54', '2023-12-21 04:25:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon_settings`
--
ALTER TABLE `addon_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_settings_id_index` (`id`);

--
-- Indexes for table `add_ons`
--
ALTER TABLE `add_ons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch_promotions`
--
ALTER TABLE `branch_promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chef_branch`
--
ALTER TABLE `chef_branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dc_conversations`
--
ALTER TABLE `dc_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_men`
--
ALTER TABLE `delivery_men`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delivery_men_phone_unique` (`phone`);

--
-- Indexes for table `d_m_reviews`
--
ALTER TABLE `d_m_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest_users`
--
ALTER TABLE `guest_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_item_qties`
--
ALTER TABLE `inventory_item_qties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_item_types`
--
ALTER TABLE `inventory_item_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_product_recepies`
--
ALTER TABLE `inventory_product_recepies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_templates`
--
ALTER TABLE `notification_templates`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_payment_methods`
--
ALTER TABLE `offline_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_check_status`
--
ALTER TABLE `order_check_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_delivery_histories`
--
ALTER TABLE `order_delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_partial_payments`
--
ALTER TABLE `order_partial_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email_or_phone`);

--
-- Indexes for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `point_transitions`
--
ALTER TABLE `point_transitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preference`
--
ALTER TABLE `preference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_addon`
--
ALTER TABLE `product_addon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_addon_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_by_branches`
--
ALTER TABLE `product_by_branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raws`
--
ALTER TABLE `raws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raw_supplier`
--
ALTER TABLE `raw_supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `raw_supplier_raw_id_foreign` (`raw_id`),
  ADD KEY `raw_supplier_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_status_orders`
--
ALTER TABLE `role_status_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_medias`
--
ALTER TABLE `social_medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_orders`
--
ALTER TABLE `table_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_waiter`
--
ALTER TABLE `table_waiter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_schedules`
--
ALTER TABLE `time_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_deliverymen`
--
ALTER TABLE `track_deliverymen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_translationable_id_index` (`translationable_id`),
  ADD KEY `translations_locale_index` (`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `waiters`
--
ALTER TABLE `waiters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `waiters_unique_id_unique` (`unique_id`),
  ADD UNIQUE KEY `waiters_phone_unique` (`phone`);

--
-- Indexes for table `wallet_bonuses`
--
ALTER TABLE `wallet_bonuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_ons`
--
ALTER TABLE `add_ons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1383;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `branch_promotions`
--
ALTER TABLE `branch_promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `chef_branch`
--
ALTER TABLE `chef_branch`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `dc_conversations`
--
ALTER TABLE `dc_conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_men`
--
ALTER TABLE `delivery_men`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d_m_reviews`
--
ALTER TABLE `d_m_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guest_users`
--
ALTER TABLE `guest_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `inventory_item_qties`
--
ALTER TABLE `inventory_item_qties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `inventory_item_types`
--
ALTER TABLE `inventory_item_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inventory_product_recepies`
--
ALTER TABLE `inventory_product_recepies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_templates`
--
ALTER TABLE `notification_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `offline_payments`
--
ALTER TABLE `offline_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offline_payment_methods`
--
ALTER TABLE `offline_payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_check_status`
--
ALTER TABLE `order_check_status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `order_delivery_histories`
--
ALTER TABLE `order_delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_partial_payments`
--
ALTER TABLE `order_partial_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_transactions`
--
ALTER TABLE `order_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `point_transitions`
--
ALTER TABLE `point_transitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `preference`
--
ALTER TABLE `preference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=606;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT for table `product_addon`
--
ALTER TABLE `product_addon`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_by_branches`
--
ALTER TABLE `product_by_branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `raws`
--
ALTER TABLE `raws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `raw_supplier`
--
ALTER TABLE `raw_supplier`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_status_orders`
--
ALTER TABLE `role_status_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_medias`
--
ALTER TABLE `social_medias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `table_orders`
--
ALTER TABLE `table_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_waiter`
--
ALTER TABLE `table_waiter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_schedules`
--
ALTER TABLE `time_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `track_deliverymen`
--
ALTER TABLE `track_deliverymen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1383;

--
-- AUTO_INCREMENT for table `waiters`
--
ALTER TABLE `waiters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_bonuses`
--
ALTER TABLE `wallet_bonuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_addon`
--
ALTER TABLE `product_addon`
  ADD CONSTRAINT `product_addon_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
