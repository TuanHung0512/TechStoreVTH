-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2026 at 09:30 AM
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
-- Database: `laravel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `logo`, `created_at`, `updated_at`) VALUES
(4, 'DELL', 'dell', 'brands/nHefK42ETtt4RuJ8f0fOQbziCA2DYu2MMzmI3PyW.png', '2026-04-27 21:57:13', '2026-04-27 21:57:44'),
(5, 'Apple', 'apple', 'brands/N9mCtBZET0ZJYW8GvSKdJgATFLBKb6J1eLMhHpEn.png', '2026-04-27 22:03:38', '2026-04-27 22:03:38'),
(6, 'MSI', 'msi', 'brands/mpK8i6AYs7xAStw9rgsk4YYwacy89s0QeD2PETNd.png', '2026-04-27 22:04:02', '2026-04-27 22:04:02'),
(7, 'ASUS', 'asus', 'brands/rEIgL8Em9qb4Kl0QBomjAo5riJUEZvgVGFrFdres.png', '2026-04-27 22:04:23', '2026-04-27 22:04:23'),
(8, 'ACER', 'acer', 'brands/gswtJZg4nIw5j2dAxz6QlGpXYxDcTeyZ3d6wKzEm.png', '2026-04-27 22:04:41', '2026-04-27 22:04:41'),
(9, 'KingSton', 'kingston', 'brands/B1ovcDlPiBN6ggejUAQAMV7411iWTyHm4EUpsVBN.png', '2026-04-27 22:06:44', '2026-04-27 22:06:44');

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`) VALUES
(2, 'Laptop Văn Phòng', 'laptop-van-phong', NULL, '2026-04-17 06:25:10', '2026-04-17 06:30:10'),
(3, 'Laptop Gaming', 'laptop-gaming', NULL, '2026-04-27 21:42:38', '2026-04-27 21:42:38'),
(4, 'PC Đồng Bộ', 'pc-dong-bo', NULL, '2026-04-27 21:43:51', '2026-04-27 21:43:51'),
(5, 'Apple', 'apple', NULL, '2026-04-27 21:45:35', '2026-04-27 21:45:35'),
(6, 'Máy Tính Bảng', 'may-tinh-bang', NULL, '2026-04-27 21:45:58', '2026-04-27 21:45:58'),
(7, 'Màn Hình', 'man-hinh', NULL, '2026-04-27 21:46:19', '2026-04-27 21:46:19'),
(8, 'Linh Kiện', 'linh-kien', NULL, '2026-04-27 21:46:29', '2026-04-27 21:46:29'),
(9, 'Gear', 'gear', NULL, '2026-04-27 21:46:40', '2026-04-27 21:46:40');

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
(4, '2025_11_09_062538_create_brands_table', 1),
(5, '2025_11_09_062539_create_categories_table', 1),
(6, '2025_11_09_062602_create_products_table', 1),
(7, '2025_11_09_062625_create_orders_table', 1),
(8, '2025_11_09_062626_create_order_details_table', 1),
(9, '2025_11_10_083900_create_reviews_table', 1),
(10, '2025_11_10_170000_add_more_specs_to_products_table', 1),
(11, '2025_11_23_085847_add_transaction_code_to_orders_table', 1),
(12, '2025_11_23_100239_create_password_reset_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `shipping_address` text NOT NULL,
  `note` text DEFAULT NULL,
  `total_amount` decimal(15,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL DEFAULT 'COD',
  `payment_status` varchar(255) NOT NULL DEFAULT 'Unpaid',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `customer_name`, `customer_phone`, `customer_email`, `shipping_address`, `note`, `total_amount`, `payment_method`, `payment_status`, `status`, `created_at`, `updated_at`, `transaction_code`) VALUES
(1, 3, 'hung', '12346712456', 'tuanhung@gmail.com', 'hn', 'test', 1000000.00, 'BANK', 'Unpaid', 4, '2026-04-17 20:38:54', '2026-04-17 20:47:27', NULL),
(2, 3, 'hung', '123456787', 'tuanhung@gmail.com', 'hn', 'test', 10000.00, 'BANK', 'Paid', 3, '2026-04-17 20:45:34', '2026-04-17 20:47:43', NULL),
(3, 5, 'Minhngoc', '0986329841', 'ngoc@gmail.com', 'kham thien', 'test', 800000.00, 'BANK', 'Paid', 3, '2026-04-28 00:20:14', '2026-04-28 00:24:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Laptop dell', 1, 1000000.00, '2026-04-17 20:38:54', '2026-04-17 20:38:54'),
(2, 2, NULL, 'Laptop dell', 1, 10000.00, '2026-04-17 20:45:34', '2026-04-17 20:45:34'),
(3, 3, 13, 'Tai nghe không dây AKKO GH300 Black', 1, 800000.00, '2026-04-28 00:20:14', '2026-04-28 00:20:14');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL COMMENT 'Mã sản phẩm',
  `thumbnail` varchar(255) DEFAULT NULL,
  `price` decimal(15,2) NOT NULL,
  `sale_price` decimal(15,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `storage` varchar(255) DEFAULT NULL,
  `vga` varchar(255) DEFAULT NULL,
  `screen` varchar(255) DEFAULT NULL,
  `spec_type` varchar(255) DEFAULT NULL,
  `spec_capacity` varchar(255) DEFAULT NULL,
  `spec_speed` varchar(255) DEFAULT NULL,
  `spec_connection_type` varchar(255) DEFAULT NULL,
  `spec_screen_size` varchar(255) DEFAULT NULL,
  `spec_refresh_rate` varchar(255) DEFAULT NULL,
  `spec_panel_type` varchar(255) DEFAULT NULL,
  `spec_dpi` varchar(255) DEFAULT NULL,
  `spec_switch_type` varchar(255) DEFAULT NULL,
  `spec_chip` varchar(255) DEFAULT NULL,
  `spec_storage_options` varchar(255) DEFAULT NULL,
  `spec_ram_options` varchar(255) DEFAULT NULL,
  `spec_screen_info` varchar(255) DEFAULT NULL,
  `spec_function` varchar(255) DEFAULT NULL,
  `spec_print_speed` varchar(255) DEFAULT NULL,
  `spec_paper_size` varchar(255) DEFAULT NULL,
  `spec_wifi_standard` varchar(255) DEFAULT NULL,
  `spec_ports` varchar(255) DEFAULT NULL,
  `spec_antenna` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0: Ẩn, 1: Hiển thị',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `name`, `slug`, `sku`, `thumbnail`, `price`, `sale_price`, `quantity`, `description`, `cpu`, `ram`, `storage`, `vga`, `screen`, `spec_type`, `spec_capacity`, `spec_speed`, `spec_connection_type`, `spec_screen_size`, `spec_refresh_rate`, `spec_panel_type`, `spec_dpi`, `spec_switch_type`, `spec_chip`, `spec_storage_options`, `spec_ram_options`, `spec_screen_info`, `spec_function`, `spec_print_speed`, `spec_paper_size`, `spec_wifi_standard`, `spec_ports`, `spec_antenna`, `status`, `created_at`, `updated_at`) VALUES
(3, 6, 3, 'Laptop gaming MSI Cyborg 15 A13UC 2082VN', 'laptop-gaming-msi-cyborg-15-a13uc-2082vn', 'SP01', 'products/thumbnails/kthQTeYHEgX8FeLrQy0cvw30vgDGesyqbYlgMgUJ.png', 32990000.00, 29990000.00, 10, NULL, 'Intel Core i7-13620H (3.6GHz~4.9GHz) 10 Cores 16 Threads', '16GB (1 x 16GB) DDR5 5200MHz (2x SO-DIMM socket, up to 64GB SDRAM)', '512GB NVMe PCIe SSD Gen4x4 (1 slot)', 'NVIDIA® GeForce RTX™ 3050 Laptop GPU, 4GB GDDR6 Up to 1172.5MHz Boost Clock 45W Maximum Graphics Power with Dynamic Boost.', '15.6\" FHD (1920x1080), 144Hz, IPS-Level, 45% NTSC, 65% sRGB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2026-04-27 22:12:44', '2026-04-27 22:12:44'),
(4, 7, 3, 'Laptop gaming ASUS ROG Strix G16 G614PM-RV233W', 'laptop-gaming-asus-rog-strix-g16-g614pm-rv233w', 'SP02', 'products/thumbnails/OOu20SKJ2R5GiVsKECEXvR6f44QE184qGdHRWCOa.jpg', 50490000.00, 48490000.00, 4, 'Khám phá laptop gaming ASUS ROG Strix G16 G614PM-RV233W\r\nASUS ROG Strix G16 G614PM-RV233W là laptop gaming hiệu năng cao dành cho game thủ hardcore và người dùng sáng tạo nội dung cần sức mạnh xử lý “khủng” trong những tựa game và phần mềm nặng. Máy sử dụng CPU AMD Ryzen 9 8940HX, tùy chọn GPU lên đến GeForce RTX 5080 Laptop GPU 175W, cùng màn hình 16 inch ROG Nebula Display 2.5K 300Hz, mang lại trải nghiệm chiến game mượt, hình ảnh sắc nét và màu sắc chuẩn điện ảnh.\r\n\r\nHiệu năng mạnh với Ryzen 9 và RTX 50 series\r\nStrix G16 được trang bị CPU AMD Ryzen 9 8940HX với 16 nhân, 32 luồng, xung boost lên đến 5.3GHz cho khả năng xử lý tốt cả game lẫn các tác vụ đa nhiệm nặng. Đi kèm là tùy chọn GPU lên đến NVIDIA GeForce RTX 5060 Laptop GPU với TGP tối đa 115W và công nghệ AI mới trên kiến trúc Blackwell giúp tối ưu FPS và chất lượng hình ảnh trong các tựa game AAA.\r\n\r\nLaptop ASUS ROG Strix G16 G614PM-RV233W sở hữu card đồ họa RTX 50 series\r\n\r\nHệ thống tản nhiệt Tri-Fan và full-width heatsink\r\nĐể giữ vững hiệu năng cao, ROG Strix G16 được thiết kế lại khung máy và bo mạch để bố trí bộ tản nhiệt full-width heatsink với tổng diện tích bề mặt lên đến 218.003 mm². Hệ thống sử dụng 3 quạt kết hợp 7 ống đồng hiệu suất cao và các khe gió bao quanh thân máy để tăng luồng khí, tối ưu đường thoát nhiệt cho CPU và GPU trong các phiên chơi game kéo dài.\r\n\r\nLaptop ASUS ROG Strix G16 G614PM-RV233W có hệ thống tản nhiệt Tri-Fan\r\n\r\nMàn hình ROG Nebula Display 16\" 2.5K 300Hz\r\nStrix G16 trang bị màn hình 16 inch QHD chuẩn ROG Nebula Display với nhiều tính năng hiện đại như tần số quét 300Hz, 100% DCI-P3, thời gian phản hồi 3ms. Màn hình hỗ trợ G-SYNC, công nghệ ACR với hai lớp film giảm phản xạ và tăng độ tương phản giúp hình ảnh rõ nét, màu sắc sống động, hạn chế chói khi sử dụng trong nhiều môi trường ánh sáng khác nhau. Ngoài ra, mỗi tấm nền đều được calib Pantone, đạt chứng nhận TÜV Rheinland về ánh sáng xanh thấp và chống nhấp nháy, hỗ trợ tốt cho các phiên chơi game hoặc làm đồ họa, chỉnh màu nhiều giờ liền.\r\n\r\nLaptop ASUS ROG Strix G16 G614PM-RV233W có màn hình ROG Nebula Display 16\r\n\r\nThiết kế gaming đậm chất Strix, bàn phím RGB per-key\r\nASUS ROG Strix G16 G614PM-RV233W mang thiết kế “game-centric” với ngôn ngữ cyberpunk, điểm nhấn sơn speckle phía sau và theo triết lý thiết kế 360° khiến máy nổi bật từ mọi góc nhìn. Bàn phím full-size tích hợp công nghệ Overstroke cho cảm giác gõ nhạy. Hệ thống đèn RGB per-key kết hợp Aura Sync cho phép tùy biến từng phím, đồng bộ với chuột, tai nghe, wallpaper Aura… tạo nên setup mang đậm dấu ấn cá nhân.\r\n\r\nLaptop ASUS ROG Strix G16 G614PM-RV233W có thiết kế gaming đậm chất Strix\r\n\r\nÂm thanh Dolby Atmos và kết nối đầy đủ\r\nMáy sử dụng hệ thống loa kép hỗ trợ Dolby Atmos, giả lập âm thanh vòm 5.1.2 kênh cho đàm thoại, chat voice, stream rõ tiếng hơn. Về kết nối, Strix G16 được trang bị 2 cổng USB 4 Type-C, 2 cổng USB-A 3.2 Gen2, HDMI 2.1, jack 3.5mm đáp ứng đủ nhu cầu xuất hình chất lượng, kết nối gaming gear và thiết bị lưu trữ tốc độ cao.\r\n\r\nLaptop ASUS ROG Strix G16 G614PM-RV233W có âm thanh Dolby Atmos\r\n\r\nMua ngay ASUS ROG Strix G16 G614PM-RV233W tại GearVN\r\nBạn muốn dẫn đầu bảng xếp hạng hay đơn giản là muốn trải nghiệm những tựa game AAA ở một đẳng cấp hoàn toàn khác? Đã đến lúc đánh thức bản năng \"chiến thần\" trong bạn cùng ASUS ROG Strix G16 G614PM-RV233W – cỗ máy sinh ra để thống trị mọi đấu trường! Hãy đến ngay Showroom GearVN để tận tay trải nghiệm cảm giác gõ phím cực nhạy và đắm chìm trong âm thanh Dolby Atmos sống động của siêu phẩm này. Mua hàng tại GearVN, bạn không chỉ sở hữu \"quái vật\" Strix G16 với giá cực tốt mà còn nhận được sự an tâm tuyệt đối từ đội ngũ kỹ thuật chuyên nghiệp và chế độ hậu mãi tận tâm.', 'AMD Ryzen 9-8940HX 2.4GHz (80MB Cache, up to 5.3GHz, 16 lõi, 32 luồng)', '16GB (1 x 16GB) DDR5 5200MHz (2x SO-DIMM socket, up to 64GB SDRAM)', '512GB PCIe 4.0 NVMe M.2 SSD (2 Khe cắm M.2 hỗ trợ cả SATA hoặc NVMe, tối đa 2TB)', 'NVIDIA GeForce RTX 5060 8GB GDDR7', '16 inch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2026-04-27 22:17:38', '2026-04-27 22:17:38'),
(5, 8, 3, 'Laptop gaming Acer Nitro Lite 16 NL16 71G 56WQ', 'laptop-gaming-acer-nitro-lite-16-nl16-71g-56wq', 'SP03', 'products/thumbnails/aJGRv6HWaPwp0xlTeH32eqntYhf2eIyy61TTgbeI.png', 26790000.00, 24990000.00, 20, NULL, 'Intel® Core™ i5-13420H (Upto 4.6 GHz/ 12MB/ 8 nhân, 12 luồng)', '16GB (8GB Onboard + 8GB Sodimm) DDR5 4800MHz (1x SO-DIMM socket, up to 56GB SDRAM)', '512GB PCIe NVMe SED SSD (Tổng 1 khe SSD M.2 PCIE, nâng cấp tối đa 2TB)', 'NVIDIA® GeForce® RTX™ 3050 with 6 GB of dedicated GDDR6 VRAM, supporting 2560 NVIDIA® CUDA® Cores.', '16\" 16:10 WUXGA (1920x1200) IPS, 165Hz, 300nits, 45% NTSC,  Acer ComfyView™, LED-backlit TFT LCD, Wide viewing angle up to 170 degrees', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2026-04-27 23:25:40', '2026-04-27 23:25:40'),
(6, 4, 2, 'Laptop Dell Inspirion N3530 i5U165W11SLU (1334U)', 'laptop-dell-inspirion-n3530-i5u165w11slu-1334u', 'SP04', 'products/thumbnails/l3C4toyoNUwL2CsISodeFMmda1c4JiXfBAzabvao.png', 18490000.00, 15490000.00, 14, NULL, 'Intel Core i5 Raptor Lake - 1334U, up to 4.6GHz, 10 Nhân, 12 Luồng', '2 x 8GB DDR4 2666MHz (2x SO-DIMM socket, up to 16GB SDRAM)', '512GB SSD NVMe PCIe (1 Slot)', 'Intel Iris Xe Graphics (with dual channel memory) Intel® UHD Graphics', '15.6-inch, FHD, 1920 x 1080, 120 Hz, anti-glare, nontouch, 45% NTSC, 250 nits, wide-viewing angle, IPS 15.6-inch, FHD, 1920 x 1080, 60 Hz, anti-glare, touch, 45% NTSC, 220 nits, wide-viewing angle, IPS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2026-04-27 23:30:34', '2026-04-27 23:30:34'),
(7, 5, 5, 'MacBook Neo', 'macbook-neo', 'SP05', 'products/thumbnails/BioOf9KGFC0XM7r43TXozpYcL0hCCIuXFysY5tGF.jpg', 18999000.00, 15999000.00, 2, NULL, 'Chip Apple A18 Pro  CPU 6 lõi với 2 lõi hiệu năng và 4 lõi tiết kiệm điện GPU 5 lõi Công nghệ dò tia tốc độ cao bằng phần cứng Neural Engine 16 lõi Băng thông bộ nhớ 60GB/s', '8GB  Bộ nhớ thống nhất 8GB', 'SSD 512GB', 'không có', 'Màn hình Liquid Retina  Màn hình có đèn nền LED 13,0 inch (theo đường chéo) với công nghệ IPS;2 độ phân giải gốc 2408x1506 với mật độ 219 pixel mỗi inch Độ sáng 500 nit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chip Apple A18 Pro  CPU 6 lõi với 2 lõi hiệu năng và 4 lõi tiết kiệm điện GPU 5 lõi Công nghệ dò tia tốc độ cao bằng phần cứng Neural Engine 16 lõi Băng thông bộ nhớ 60GB/s', '256GB', '8GB', 'Màn hình có đèn nền LED 13,0 inch (theo đường chéo) với công nghệ IPS;2 độ phân giải gốc 2408x1506 với mật độ 219 pixel mỗi inch', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2026-04-27 23:37:02', '2026-04-27 23:39:06'),
(10, 8, 4, 'PC GVN Intel i5-14400F/VGA ARC B580', 'pc-gvn-intel-i5-14400fvga-arc-b580', 'SP07', 'products/thumbnails/DAYDHDqQSOG1MyWKdSl4zSnEV034ei54k1NrSnfq.jpg', 1120000.00, 1020000.00, 9, NULL, 'i5-14400F\\', '16GB (1 x 16GB) DDR5 5200MHz (2x SO-DIMM socket, up to 64GB SDRAM)', '512GB NVMe PCIe SSD Gen4x4 (1 slot)', 'VGA ARC B580', '16 inch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2026-04-27 23:52:16', '2026-04-27 23:52:16'),
(11, 8, 7, 'Màn hình Acer KG271U W3 27\" IPS 2K 240Hz chuyên game', 'man-hinh-acer-kg271u-w3-27-ips-2k-240hz-chuyen-game', 'SP08', 'products/thumbnails/4fDLxawmH4Qe4AyB3lisT3OTBWcOZbc8LAnjaWrY.jpg', 5020000.00, 2020000.00, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14 inch', '144HZ', 'ips', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2026-04-27 23:57:04', '2026-04-27 23:57:04'),
(12, 9, 8, 'RAM Kingston Fury Beast 16GB (1x16GB) buss 6000 DDR5 (KF560C36BBE2-16WP)', 'ram-kingston-fury-beast-16gb-1x16gb-buss-6000-ddr5-kf560c36bbe2-16wp', 'SP09', 'products/thumbnails/HOBiwabJmyiYiX1EtJBtCJXaEIeCrPfaD6picWoj.png', 6490000.00, 4490000.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'DDR5', NULL, '6000 MHz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2026-04-28 00:01:10', '2026-04-28 00:02:10'),
(13, 8, 9, 'Tai nghe không dây AKKO GH300 Black', 'tai-nghe-khong-day-akko-gh300-black', 'SP10', 'products/thumbnails/SU40Qj7xq4vI0sixqWhFWZkZJlsLXB8rX2LNC11k.jpg', 1000000.00, 800000.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2026-04-28 00:04:24', '2026-04-28 00:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reviewer_name` varchar(255) NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `comment` text NOT NULL,
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
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: Customer, 1: Admin',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'User', 'user@gmail.com', '0987654321', 'Hồ Chí Minh', NULL, '$2y$10$E0NR9s6sHk6w7sKnz03Wxu0RduCMsZ/HXXIQK5vCk1vZ1tcHTfb3e', 0, NULL, '2026-04-16 03:49:20', '2026-04-16 03:49:20'),
(3, 'hung', 'tuanhung@gmail.com', NULL, NULL, NULL, '$2y$12$3WzUUb/5fAX9zvuzvGuLOOdmGzXjWn2skWXshsLoEk9gzZ.brCJb2', 0, NULL, '2026-04-15 20:50:47', '2026-04-15 20:50:47'),
(4, 'Vương Tuấn Hưng', 'admin@gmail.com', NULL, NULL, NULL, '$2y$12$NvxVuyKPCrsM9PKN9FkYYexltYzDessv63IdhpF0HwQ4Br2SYZw62', 1, NULL, '2026-04-27 21:39:37', '2026-04-27 21:39:37'),
(5, 'Minhngoc', 'ngoc@gmail.com', NULL, NULL, NULL, '$2y$12$Uk0UunEV/qLqsewEXmOqpuE4p5QVZrTcebYVzkhSXfH/i4xkgZ9R.', 0, NULL, '2026-04-28 00:15:22', '2026-04-28 00:15:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
