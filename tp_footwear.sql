-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th8 11, 2022 lúc 05:44 PM
-- Phiên bản máy phục vụ: 10.3.34-MariaDB-0ubuntu0.20.04.1
-- Phiên bản PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tp_footwear`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
(1379, '154278642994thaiphamvitop.thaipham@gmail.com94', 'default', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"7cb8fe7b312dd3074a662aad75a16d86\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"7cb8fe7b312dd3074a662aad75a16d86\";s:2:\"id\";i:5;s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:6:\"NMD R2\";s:5:\"price\";d:10;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:1:{s:14:\"product_detail\";O:24:\"App\\Models\\ProductDetail\":27:{s:8:\"\0*\0table\";s:17:\"tp_product_detail\";s:8:\"\0*\0dates\";a:1:{i:0;s:10:\"deleted_at\";}s:10:\"timestamps\";b:1;s:11:\"\0*\0fillable\";a:9:{i:0;s:2:\"id\";i:1;s:10:\"product_id\";i:2;s:8:\"color_id\";i:3;s:4:\"size\";i:4;s:4:\"name\";i:5;s:5:\"image\";i:6;s:5:\"price\";i:7;s:6:\"status\";i:8;s:8:\"quantity\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:22;s:10:\"product_id\";i:5;s:8:\"color_id\";i:1;s:4:\"size\";i:36;s:4:\"name\";s:4:\"Test\";s:5:\"image\";s:27:\"upload/1542776147images.jpg\";s:5:\"price\";i:10;s:8:\"quantity\";i:5;s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2018-11-21 04:55:47\";s:10:\"updated_at\";s:19:\"2018-11-21 04:55:47\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:22;s:10:\"product_id\";i:5;s:8:\"color_id\";i:1;s:4:\"size\";i:36;s:4:\"name\";s:4:\"Test\";s:5:\"image\";s:27:\"upload/1542776147images.jpg\";s:5:\"price\";i:10;s:8:\"quantity\";i:5;s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2018-11-21 04:55:47\";s:10:\"updated_at\";s:19:\"2018-11-21 04:55:47\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:2:{s:7:\"product\";O:18:\"App\\Models\\Product\":27:{s:8:\"\0*\0table\";s:10:\"tp_product\";s:8:\"\0*\0dates\";a:1:{i:0;s:10:\"deleted_at\";}s:10:\"timestamps\";b:1;s:11:\"\0*\0fillable\";a:7:{i:0;s:2:\"id\";i:1;s:11:\"category_id\";i:2;s:8:\"brand_id\";i:3;s:4:\"name\";i:4;s:5:\"image\";i:5;s:6:\"status\";i:6;s:11:\"description\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:5;s:11:\"category_id\";i:8;s:8:\"brand_id\";i:3;s:4:\"name\";s:6:\"NMD R2\";s:5:\"image\";s:27:\"upload/1542701052images.jpg\";s:6:\"status\";i:1;s:11:\"description\";s:191:\"The Nike Air Max 97 shook up the running world with its revolutionary full-length Nike Air unit. The Nike Air Max 97 SE Men\'s Shoe refreshes the original design with new colors and materials.\";s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2018-11-20 08:04:12\";s:10:\"updated_at\";s:19:\"2018-11-20 08:04:12\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:5;s:11:\"category_id\";i:8;s:8:\"brand_id\";i:3;s:4:\"name\";s:6:\"NMD R2\";s:5:\"image\";s:27:\"upload/1542701052images.jpg\";s:6:\"status\";i:1;s:11:\"description\";s:191:\"The Nike Air Max 97 shook up the running world with its revolutionary full-length Nike Air unit. The Nike Air Max 97 SE Men\'s Shoe refreshes the original design with new colors and materials.\";s:10:\"deleted_at\";N;s:10:\"created_at\";s:19:\"2018-11-20 08:04:12\";s:10:\"updated_at\";s:19:\"2018-11-20 08:04:12\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}s:5:\"color\";O:16:\"App\\Models\\Color\":27:{s:8:\"\0*\0table\";s:8:\"tp_color\";s:8:\"\0*\0dates\";a:1:{i:0;s:10:\"deleted_at\";}s:10:\"timestamps\";b:1;s:11:\"\0*\0fillable\";a:2:{i:0;s:2:\"id\";i:1;s:4:\"name\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:1;s:4:\"name\";s:4:\"Gold\";s:4:\"code\";s:6:\"b19c83\";s:10:\"created_at\";N;s:10:\"updated_at\";N;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:1;s:4:\"name\";s:4:\"Gold\";s:4:\"code\";s:6:\"b19c83\";s:10:\"created_at\";N;s:10:\"updated_at\";N;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}s:16:\"\0*\0forceDeleting\";b:0;}}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";N;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:0;}}}', '2018-11-21 00:47:09', NULL),
(1832, '154279578893sonnguyenthanhsoemhoc222@gmail.com93', 'default', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2018-11-21 03:23:08', NULL),
(1839, '154295758396thaipham96', 'default', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2018-11-23 00:19:43', NULL),
(1840, '154295760692thaiphammrquangthai278@gmail.com92', 'default', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2018-11-23 00:20:06', NULL),
(2240, '154400715195thaiphamaccforyou123@gmail.com95', 'default', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2018-12-05 03:52:31', NULL),
(2316, '166018692139adminadmin@gmail.com39', 'default', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2022-08-10 20:02:01', NULL),
(2325, '166020874198devn.hieuthanhps@gmail.com98', 'default', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2022-08-11 02:05:41', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$WcuHG4lfqHYooXZZoYTucOBQASFiE.trFA35ks8uLG2HSs3J5AQYO', '2018-11-16 03:21:53'),
('mrquangthai278@gmail.com', '$2y$10$taP5hkiL3QL0Gcbx7JJ58OKo1KMLoWmvFnD8MekTAC9p5DlPkjBIC', '2018-11-16 04:03:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tp_bill`
--

CREATE TABLE `tp_bill` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT 1 COMMENT '1.Processing 2.Complete 3.Canceled 4. Checkout',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_receive` date DEFAULT NULL,
  `date_delivery` date DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `paypal_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'for checkout paypal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tp_bill`
--

INSERT INTO `tp_bill` (`id`, `user_id`, `address`, `phone`, `status`, `note`, `date_receive`, `date_delivery`, `total`, `paypal_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(30, 39, '123 Watermarque, 100 Browning Street West Midlands 123 Watermarque, 100 Browning Street Birmingham GB', NULL, 2, 'linhtrieu@gmail.com', '2022-08-28', '2022-08-28', 10, 'PAYID-ML2HCCQ9E421310TH6169350', '2022-08-10 20:02:00', '2022-08-10 20:02:26', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tp_bill_detail`
--

CREATE TABLE `tp_bill_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `bill_id` int(10) UNSIGNED DEFAULT NULL,
  `product_detail_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tp_bill_detail`
--

INSERT INTO `tp_bill_detail` (`id`, `bill_id`, `product_detail_id`, `quantity`, `total`, `created_at`, `updated_at`, `deleted_at`) VALUES
(49, 30, 22, 1, 10, '2022-08-10 20:02:00', '2022-08-10 20:02:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tp_brand`
--

CREATE TABLE `tp_brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tp_brand`
--

INSERT INTO `tp_brand` (`id`, `name`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Converse', 'upload/1541992008200px-Converse_logo.svg.png', '2018-11-11 20:06:48', '2018-11-11 20:06:48', NULL),
(2, 'Vans', 'upload/15419920169159c037deef39d83852f1b3946dcf4b.png', '2018-11-11 20:06:56', '2018-11-11 20:06:56', NULL),
(3, 'Adidas', 'upload/1541992025Adidas_Originals_logo.png', '2018-11-11 20:07:05', '2018-11-11 20:07:05', NULL),
(4, 'Gucci', 'upload/1541992032gucci-logo-D760C0492E-seeklogo.com_.png', '2018-11-11 20:07:12', '2018-11-11 20:07:12', NULL),
(5, 'Balenciaga', 'upload/1541992041Logo-Balenciaga.png', '2018-11-11 20:07:21', '2018-11-11 20:07:21', NULL),
(6, 'Nike', 'upload/1541992050nike-logo-5C7A059F94-seeklogo.com.png', '2018-11-11 20:07:30', '2018-11-11 20:07:30', NULL),
(7, 'Puma', 'upload/1541992057puma-logo-F9E13B654C-seeklogo.com.png', '2018-11-11 20:07:37', '2018-11-11 20:07:37', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tp_category`
--

CREATE TABLE `tp_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tp_category`
--

INSERT INTO `tp_category` (`id`, `parent_id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Luxury ', NULL, NULL, NULL),
(5, NULL, 'Sport', NULL, NULL, NULL),
(6, NULL, 'Sandals', NULL, NULL, NULL),
(7, 5, 'Soccer', NULL, NULL, NULL),
(8, 5, 'Running', NULL, NULL, '2018-12-05 23:18:39'),
(9, 1, 'Boot', NULL, NULL, NULL),
(10, 1, 'High Heels', NULL, NULL, NULL),
(11, 5, 'Training', NULL, NULL, NULL),
(12, 6, 'Flip Flops', NULL, NULL, NULL),
(13, 6, 'Flats ', NULL, NULL, NULL),
(14, 5, 'Tennis', NULL, '2018-11-11 20:19:02', '2018-11-11 20:19:02'),
(15, NULL, 'Sneaker', NULL, NULL, NULL),
(16, 15, 'Casual', NULL, '2018-11-11 20:20:14', '2018-11-11 20:20:14'),
(17, 15, 'Chunky', NULL, '2018-11-11 20:20:33', '2018-12-05 23:25:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tp_color`
--

CREATE TABLE `tp_color` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tp_color`
--

INSERT INTO `tp_color` (`id`, `name`, `code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Gold', 'b19c83', NULL, NULL, NULL),
(2, 'Grey', '999999', NULL, NULL, NULL),
(3, 'Red', 'df3b3b', NULL, NULL, NULL),
(4, 'Purple', 'df3b3b', NULL, NULL, NULL),
(5, 'White', '000000', NULL, NULL, NULL),
(6, 'Black', 'df3b3b', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tp_comment`
--

CREATE TABLE `tp_comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` tinyint(4) NOT NULL DEFAULT 3 COMMENT '1-5 Star',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tp_comment`
--

INSERT INTO `tp_comment` (`id`, `user_id`, `product_id`, `content`, `star`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 95, 1, 'Best product', 4, '2018-11-05 17:00:00', '2018-11-15 00:45:12', '2018-11-15 00:45:12'),
(2, 95, 2, 'fsadsadsad', 4, '2018-11-08 17:00:00', '2018-11-15 03:16:58', '2018-11-18 21:34:54'),
(3, 97, 2, 'hahahahahah', 4, '2018-11-15 17:00:00', '2018-11-19 21:13:22', '2018-11-19 21:13:22'),
(4, 95, 5, 'Very Light Product...', 5, '2018-11-20 23:35:20', '2018-11-20 01:11:08', '2018-11-20 23:35:20'),
(5, 95, 6, 'Nice quality', 4, '2018-11-27 20:19:26', '2018-11-20 01:11:43', '2018-11-27 20:19:26'),
(6, 96, 4, 'Very HyperBeast', 4, '2018-11-28 00:10:48', '2018-11-20 01:12:49', '2018-11-28 00:10:48'),
(7, 93, 3, 'Best Product', 4, '2018-11-28 00:10:48', '2018-11-20 01:13:31', '2018-11-28 00:10:48'),
(8, 93, 5, 'Best Product', 4, '2018-11-28 00:10:48', '2018-11-20 01:15:24', '2018-11-28 00:10:48'),
(9, 97, 5, 'fewfewfewfwef', 3, '2018-11-28 00:10:48', '2018-11-20 03:55:40', '2018-11-28 00:10:48'),
(10, 92, 4, 'I think it\'s very comfortable...', 5, '2018-11-28 00:10:48', '2018-11-20 19:41:05', '2018-11-28 00:10:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tp_feedback`
--

CREATE TABLE `tp_feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `star` int(11) DEFAULT 1,
  `reply` int(1) DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tp_feedback`
--

INSERT INTO `tp_feedback` (`id`, `user_id`, `content`, `star`, `reply`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 92, 'ewqewqeqweqweqwe', 4, 1, NULL, '2018-11-20 20:50:18', '2018-12-14 02:35:15'),
(3, 93, '456789', 4, 1, NULL, '2018-11-20 21:29:15', '2018-11-21 03:24:18'),
(4, 96, 'werewrewrwer', 5, 0, NULL, '2018-11-21 03:23:22', '2018-11-21 03:23:22'),
(5, 39, 'Oke', 4, 0, NULL, '2022-08-10 19:44:58', '2022-08-10 19:44:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tp_gallery`
--

CREATE TABLE `tp_gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tp_gallery`
--

INSERT INTO `tp_gallery` (`id`, `product_id`, `url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'upload/1541993060MUS6BT-HERO.jpg', '2018-11-11 20:24:20', '2018-11-11 20:24:20', NULL),
(2, 2, 'upload/1541996929MUS6BT-HERO.jpg', '2018-11-11 21:28:49', '2018-11-11 21:28:49', NULL),
(3, 2, 'upload/15420145129e70d7bdda84b6cf808d8f9e6b4758c6.jpg', '2018-11-12 02:21:52', '2018-11-12 02:21:52', NULL),
(4, 2, 'upload/154201451235a0dd4304fd6cd49243433925c027c3.jpg', '2018-11-12 02:21:52', '2018-11-12 02:21:52', NULL),
(5, 2, 'upload/154201451228753004_178492066122361_8401511258578223104_n.jpg', '2018-11-12 02:21:52', '2018-11-12 02:21:52', NULL),
(6, 2, 'upload/1542014512ginneynoa.jpg', '2018-11-12 02:21:52', '2018-11-12 02:21:52', NULL),
(7, 2, 'upload/1542014512img_0007-e1501393429496.jpg', '2018-11-12 02:21:52', '2018-11-12 02:21:52', NULL),
(8, 2, 'upload/1542014512maxresdefault.jpg', '2018-11-12 02:21:52', '2018-11-12 02:21:52', NULL),
(9, 5, 'upload/1542702536images.jpg', '2018-11-20 01:28:56', '2018-11-20 01:28:56', NULL),
(10, 4, 'upload/1542702568download(13).jpg', '2018-11-20 01:29:28', '2018-11-20 01:29:28', NULL),
(11, 4, 'upload/1542702576download(11).jpg', '2018-11-20 01:29:36', '2018-11-20 01:29:36', NULL),
(12, 4, 'upload/1542702576download(12).jpg', '2018-11-20 01:29:36', '2018-11-20 01:29:36', NULL),
(13, 3, 'upload/1542709102download(1).jpg', '2018-11-20 03:18:22', '2018-11-20 03:18:22', NULL),
(14, 3, 'upload/1542709102download(2).jpg', '2018-11-20 03:18:22', '2018-11-20 03:18:22', NULL),
(15, 3, 'upload/1542709102download(3).jpg', '2018-11-20 03:18:22', '2018-11-20 03:18:22', NULL),
(16, 3, 'upload/1542709102download(4).jpg', '2018-11-20 03:18:22', '2018-11-20 03:18:22', NULL),
(17, 3, 'upload/1542709102download(5).jpg', '2018-11-20 03:18:22', '2018-11-20 03:18:22', NULL),
(18, 4, 'upload/16599768842ac3c3717ad0b98ee0c1.jpg', '2022-08-08 09:41:24', '2022-08-08 09:41:34', '2022-08-08 09:41:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tp_product`
--

CREATE TABLE `tp_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1 COMMENT '1:now 2:stop 3:coming',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tp_product`
--

INSERT INTO `tp_product` (`id`, `category_id`, `brand_id`, `name`, `image`, `status`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 8, 6, 'Air Max 97', 'upload/1542699226download(1).jpg', 1, 'The Nike Air Max 97 shook up the running world with its revolutionary full-length Nike Air unit. The Nike Air Max 97 SE Men\'s Shoe refreshes the original design with new colors and materials.', NULL, '2018-11-20 00:33:46', '2018-11-28 00:10:47'),
(4, 8, 3, 'Yezzy 350', 'upload/1542700108download(12).jpg', 1, 'The Nike Air Max 97 shook up the running world with its revolutionary full-length Nike Air unit. The Nike Air Max 97 SE Men\'s Shoe refreshes the original design with new colors and materials.', NULL, '2018-11-20 00:44:59', '2018-11-28 00:10:47'),
(5, 8, 3, 'NMD R2', 'upload/1542701052images.jpg', 1, 'The Nike Air Max 97 shook up the running world with its revolutionary full-length Nike Air unit. The Nike Air Max 97 SE Men\'s Shoe refreshes the original design with new colors and materials.', NULL, '2018-11-20 01:04:12', '2018-11-28 00:10:47'),
(6, 17, 6, 'Air Max 90', 'upload/1542701164download(6).jpg', 1, 'The Nike Air Max 97 shook up the running world with its revolutionary full-length Nike Air unit. The Nike Air Max 97 SE Men\'s Shoe refreshes the original design with new colors and materials.', NULL, '2018-11-20 01:06:04', '2018-11-28 00:10:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tp_product_detail`
--

CREATE TABLE `tp_product_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `color_id` int(10) UNSIGNED DEFAULT NULL,
  `size` int(2) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tp_product_detail`
--

INSERT INTO `tp_product_detail` (`id`, `product_id`, `color_id`, `size`, `name`, `image`, `price`, `quantity`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 41, 'Ver A', 'upload/1542268152MUS6BT-HERO.jpg', 200, 10, NULL, NULL, '2018-11-19 21:35:30'),
(2, 2, 3, 42, 'Vans Old Skool v3', 'upload/1542687333Adidas_Originals_logo.png', 7, 6, NULL, '2018-11-15 01:41:06', '2018-11-20 00:10:47'),
(3, 2, 3, 43, 'Cable', 'upload/1542696347Logo-Balenciaga.png', 1, 1, NULL, '2018-11-19 21:29:03', '2018-11-19 23:45:47'),
(4, 2, 1, 37, '454564132', 'upload/1542688492MUS6BT-HERO.jpg', 1, 1, NULL, '2018-11-19 21:34:52', '2018-11-19 21:34:52'),
(5, 2, 1, NULL, 'wefgdsdfdsf', NULL, 1, 1, '2018-11-20 00:19:25', '2018-11-20 00:17:40', '2018-11-20 00:19:25'),
(6, 2, 2, 36, 'fasdsadasd', NULL, 1, 1, '2018-11-20 00:20:13', '2018-11-20 00:19:41', '2018-11-20 00:20:13'),
(7, 2, 3, 40, 'AAAAAAAAA', NULL, 1, 1, NULL, '2018-11-20 00:24:49', '2018-11-20 00:24:49'),
(8, 3, 5, 36, '36 Pink', 'upload/1542699320download (5).jpg', 200, 42, NULL, '2018-11-20 00:35:20', '2018-11-22 00:39:16'),
(9, 3, 5, 37, '37 Pink', 'upload/1542699346download (5).jpg', 200, 2, NULL, '2018-11-20 00:35:46', '2022-08-09 08:00:54'),
(10, 3, 6, 39, '39 Black', 'upload/1542699378download (1).jpg', 180, 0, NULL, '2018-11-20 00:36:18', '2018-11-22 00:39:16'),
(11, 3, 6, 40, '40 Black', 'upload/1542699410download (1).jpg', 180, 24, NULL, '2018-11-20 00:36:50', '2018-11-22 00:39:16'),
(12, 3, 1, 42, '42 Oreo', 'upload/1542699664download (4).jpg', 250, 41, NULL, '2018-11-20 00:41:04', '2018-11-22 00:38:46'),
(13, 3, 1, 39, '39 Oreo', 'upload/1542699713download (4).jpg', 250, 49, NULL, '2018-11-20 00:41:53', '2022-08-09 08:00:54'),
(14, 3, 2, 41, '41 Neon', 'upload/1542699757download (3).jpg', 175, 12, NULL, '2018-11-20 00:42:37', '2018-11-21 03:00:55'),
(15, 3, 2, 43, '43 Neon', 'upload/1542699792download (3).jpg', 180, 2, NULL, '2018-11-20 00:43:12', '2018-11-21 03:00:55'),
(16, 4, 6, 40, '40 Black', 'upload/1542700239download (12).jpg', 700, 12, NULL, '2018-11-20 00:50:39', '2018-11-20 00:50:39'),
(17, 4, 6, 43, '38 Black', 'upload/1542700273download (12).jpg', 720, 47, NULL, '2018-11-20 00:51:13', '2022-08-09 08:00:54'),
(18, 4, 2, 36, '36 Grey', 'upload/1542700316download (13).jpg', 680, 15, NULL, '2018-11-20 00:51:56', '2018-11-20 00:51:56'),
(19, 5, 5, 36, '36 White', 'upload/1542701091images.jpg', 100, 11, '2018-11-20 21:52:21', '2018-11-20 01:04:51', '2018-11-20 21:52:21'),
(20, 5, 5, 44, '44 White', 'upload/1542701122images.jpg', 100, 10, '2018-11-20 21:52:18', '2018-11-20 01:05:22', '2018-11-20 21:52:18'),
(21, 6, 6, 37, '37 Black', 'upload/1542701307download (8).jpg', 110, 10, '2018-11-20 21:52:40', '2018-11-20 01:08:27', '2018-11-20 21:52:40'),
(22, 5, 1, 36, 'Test', 'upload/1542776147images.jpg', 10, 1, NULL, '2018-11-20 21:55:47', '2022-08-10 20:02:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tp_specification`
--

CREATE TABLE `tp_specification` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `material` tinyint(4) DEFAULT NULL COMMENT '1.Leather 2.Canvas 3.Other',
  `gender` tinyint(4) DEFAULT NULL COMMENT '1.Male 2.Female 3.Unisex',
  `trendy` tinyint(4) DEFAULT NULL COMMENT '1.Street 2.Vintage 3.High-end 4.Other',
  `weight` float DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tp_specification`
--

INSERT INTO `tp_specification` (`id`, `product_id`, `material`, `gender`, `trendy`, `weight`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 3, 1, 2, 3, 1.4, NULL, '2018-11-20 00:33:46', '2018-11-28 00:10:48'),
(4, 4, 2, 3, 1, 1.2, NULL, '2018-11-20 00:44:59', '2018-11-28 00:10:48'),
(5, 5, 1, 1, 2, 1.1, NULL, '2018-11-20 01:04:12', '2018-11-28 00:10:48'),
(6, 6, 3, 2, 2, 1, NULL, '2018-11-20 01:06:04', '2018-11-28 00:10:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tp_user`
--

CREATE TABLE `tp_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password2nd` int(6) NOT NULL DEFAULT 123456,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL COMMENT '1:male 2:female',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tp_user`
--

INSERT INTO `tp_user` (`id`, `username`, `group_id`, `first_name`, `last_name`, `image`, `address`, `phone`, `email`, `password`, `password2nd`, `provider`, `provider_id`, `gender`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(39, 'admin', 1, 'Admin', 'Admin', 'upload/1660186410296006664_747534182965065_206941396284268239_n.jpg', 'Đồng Nhân, Hải Bối, Đông Anh, Hà Nội', '0355668062', 'admin@gmail.com', '$2y$10$Mcv/Nf8uzaaJA73BQ2Wvru4SxMHbY9j3l8YiuLCNyaWc/Tab0WUPa', 123456, NULL, NULL, 2, 'FhEf1i530xodbtZTJ1OWcWgBHeefG2Ch0P5ivHikSsv5gKP6Mf2gNSUH3Sc6', NULL, NULL, '2022-08-10 19:53:30'),
(98, 'dev', 2, 'dev', 'dev', 'upload/user/1660207322296006664_747534182965065_206941396284268239_n.jpg', 'Ha Noi', '0355668062', 'n.hieuthanhps@gmail.com', '$2y$10$VxBFgyZOrh4mY6oIVPdzOunkOaEoqm.EvIjIUeglUA5nlj25pJuLK', 123456, NULL, NULL, 1, NULL, NULL, '2022-08-11 01:40:24', '2022-08-11 01:42:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tp_user_group`
--

CREATE TABLE `tp_user_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `tp_bill`
--
ALTER TABLE `tp_bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tp_bill_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `tp_bill_detail`
--
ALTER TABLE `tp_bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tp_bill_detail_bill_id_foreign` (`bill_id`),
  ADD KEY `tp_bill_detail_product_detail_id_foreign` (`product_detail_id`);

--
-- Chỉ mục cho bảng `tp_brand`
--
ALTER TABLE `tp_brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tp_category`
--
ALTER TABLE `tp_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tp_color`
--
ALTER TABLE `tp_color`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tp_comment`
--
ALTER TABLE `tp_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tp_comment_user_id_foreign` (`user_id`),
  ADD KEY `tp_comment_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `tp_feedback`
--
ALTER TABLE `tp_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tp_gallery`
--
ALTER TABLE `tp_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tp_gallery_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `tp_product`
--
ALTER TABLE `tp_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tp_product_category_id_foreign` (`category_id`),
  ADD KEY `tp_product_brand_id_foreign` (`brand_id`);

--
-- Chỉ mục cho bảng `tp_product_detail`
--
ALTER TABLE `tp_product_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tp_product_detail_product_id_foreign` (`product_id`),
  ADD KEY `tp_product_detail_color_id_foreign` (`color_id`);

--
-- Chỉ mục cho bảng `tp_specification`
--
ALTER TABLE `tp_specification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tp_specification_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `tp_user`
--
ALTER TABLE `tp_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tp_user_group_id_foreign` (`group_id`);

--
-- Chỉ mục cho bảng `tp_user_group`
--
ALTER TABLE `tp_user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2326;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tp_bill`
--
ALTER TABLE `tp_bill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `tp_bill_detail`
--
ALTER TABLE `tp_bill_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `tp_brand`
--
ALTER TABLE `tp_brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tp_category`
--
ALTER TABLE `tp_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tp_color`
--
ALTER TABLE `tp_color`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tp_comment`
--
ALTER TABLE `tp_comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tp_feedback`
--
ALTER TABLE `tp_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tp_gallery`
--
ALTER TABLE `tp_gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tp_product`
--
ALTER TABLE `tp_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tp_product_detail`
--
ALTER TABLE `tp_product_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tp_specification`
--
ALTER TABLE `tp_specification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tp_user`
--
ALTER TABLE `tp_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `tp_user_group`
--
ALTER TABLE `tp_user_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
