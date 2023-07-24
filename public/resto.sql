-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2023 at 02:52 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resto`
--

-- --------------------------------------------------------

--
-- Table structure for table `bag_dapur`
--

CREATE TABLE `bag_dapur` (
  `id` char(36) NOT NULL,
  `id_user` char(36) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `jk` varchar(255) NOT NULL,
  `status_kehadiran` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bag_dapur`
--

INSERT INTO `bag_dapur` (`id`, `id_user`, `no_hp`, `jk`, `status_kehadiran`, `created_at`, `updated_at`, `deleted_at`) VALUES
('3c4c244e-54cb-4a79-9291-d8eb92667dc3', 'd5062408-f339-4163-ac46-488a08f287b9', '082134562134', 'Laki-Laki', 'Hadir', '2023-07-23 03:10:52', '2023-07-23 03:10:52', NULL),
('463e0f80-28ac-45c0-9f66-0a5b2da13f59', 'cd2a55da-ba34-49e5-8cda-0865e624e771', '087845673421', 'Perempuan', 'Hadir', '2023-07-23 03:10:06', '2023-07-23 03:10:25', NULL),
('4b8b25bb-2391-431a-bd78-760e51ac5915', 'a9d73c30-b783-4b00-88cd-cffd95947ff5', '0878282826878', 'Laki-Laki', 'Hadir', '2023-07-21 07:55:49', '2023-07-21 07:55:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bahan_baku`
--

CREATE TABLE `bahan_baku` (
  `id` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `stok` double(8,2) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bahan_baku`
--

INSERT INTO `bahan_baku` (`id`, `nama`, `stok`, `satuan`, `deleted_at`, `created_at`, `updated_at`) VALUES
('0a5f182a-4d29-41a6-aad1-e18b27624525', 'Ikan Gurame', 4.00, 'Ekor', NULL, '2023-07-23 09:06:45', '2023-07-23 09:16:15'),
('1dfa2a27-9232-43e9-b3e1-e4f2708d0863', 'Paru', 3.00, 'tusuk', NULL, '2023-07-23 09:10:23', '2023-07-23 09:17:14'),
('2c2c7120-c9c3-40d8-842b-d12d3c86ec07', 'Pepes Jamur', 10.00, 'bungkus', NULL, '2023-07-23 09:11:22', '2023-07-23 09:18:29'),
('3390d41a-daac-4f06-a6ab-36144ccaf2bc', 'Ayam Pejantan', 4.00, 'Potong', NULL, '2023-07-23 09:05:38', '2023-07-23 09:15:03'),
('46bec419-3f69-4e7f-9baf-ac047c3964ff', 'Gepuk', 10.00, 'tusuk', NULL, '2023-07-23 09:10:06', '2023-07-23 09:15:41'),
('7c65a3f5-8a29-4729-bcd9-80f307a471e6', 'Pepes Ikan', 0.00, 'bungkus', NULL, '2023-07-23 09:10:43', '2023-07-23 09:10:43'),
('867ececb-dd74-448f-bb09-7d54f5f3db5d', 'Tempe', 2.00, 'buah', NULL, '2023-07-23 09:13:32', '2023-07-23 09:19:58'),
('a690b035-a16b-49a5-a35b-6339d5f38b69', 'Ikan Mas', 11.00, 'Ekor', NULL, '2023-07-23 09:07:07', '2023-07-23 09:16:44'),
('b0d57470-adf2-43e7-a320-78b614eeb335', 'Pepes Tahu', 3.00, 'bungkus', NULL, '2023-07-23 09:11:46', '2023-07-23 09:18:55'),
('c1b2dc67-bd82-4349-8d06-e6f0f0bc3d0c', 'Sate Udang', 0.00, 'tusuk', NULL, '2023-07-23 09:12:16', '2023-07-23 09:12:16'),
('c56c711a-048f-4e17-97c3-ca4e49388097', 'Tahu', 5.00, 'buah', NULL, '2023-07-23 09:13:13', '2023-07-23 09:19:30'),
('d8fdf5c3-6876-4ef1-86a3-90afdcfa7fdc', 'Ikan Nila', 0.00, 'Ekor', NULL, '2023-07-23 09:07:32', '2023-07-23 09:07:32'),
('e6a2471b-2a77-4738-ba2d-39e9246ac1da', 'Ayam Kampung', 10.00, 'Potong', NULL, '2023-07-23 09:06:03', '2023-07-23 09:14:36'),
('ebba6a2a-f649-448c-b010-187be61fb1cc', 'Pepes Ayam', 15.00, 'bungkus', NULL, '2023-07-23 09:11:04', '2023-07-23 09:17:53'),
('f4212b20-d395-46af-8ded-42a235ec726f', 'Bebek', 0.00, 'Potong', NULL, '2023-07-23 09:06:22', '2023-07-23 09:06:22');

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
-- Table structure for table `meja`
--

CREATE TABLE `meja` (
  `id` char(36) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meja`
--

INSERT INTO `meja` (`id`, `nomor`, `status`, `deskripsi`, `created_at`, `updated_at`, `deleted_at`) VALUES
('054eeb02-a32d-48c1-aef9-fa64b1c894ec', '16', 'Kosong', 'meja belakang', '2023-07-23 08:31:41', '2023-07-23 08:31:41', NULL),
('0d979ecf-2243-4e0a-b549-80367bc2b0ec', '17', 'Kosong', 'meja belakang', '2023-07-23 08:32:02', '2023-07-23 08:32:02', NULL),
('1cbb47b6-d670-4277-9ead-c94ba10113c8', '05', 'Kosong', 'meja depan', '2023-07-23 02:33:45', '2023-07-23 02:33:45', NULL),
('1dea5e71-5a2d-47e6-a639-830da5b73539', '09', 'Kosong', 'meja tengah', '2023-07-23 02:34:58', '2023-07-23 03:20:56', NULL),
('24333675-9222-47aa-9fb2-f597e1a39766', '12', 'Kosong', 'meja tengah', '2023-07-23 02:35:56', '2023-07-23 03:21:08', NULL),
('29c5c742-4c73-4b14-8fe6-b8ff91d8bf0b', '01', 'Kosong', 'meja depan', '2023-07-23 02:32:28', '2023-07-23 08:30:50', NULL),
('44880533-fa4d-4850-8cfc-f5a9a90ce8d6', '001', 'Terpakai', 'a', '2023-07-21 07:56:53', '2023-07-23 02:31:59', '2023-07-23 02:31:59'),
('480ffc1b-4837-44ac-a802-da95a64c7247', '18', 'Kosong', 'meja belakang', '2023-07-23 08:32:25', '2023-07-23 08:32:25', NULL),
('58ee1b70-bad4-478b-9d72-e90407db0f0b', '19', '', 'meja belakang', '2023-07-23 08:31:42', '2023-07-23 08:33:19', NULL),
('7ebcf072-61c2-488d-9703-efa07a2cd081', '04', 'Terpakai', 'meja depan', '2023-07-23 02:33:28', '2023-07-23 09:22:13', NULL),
('8420d408-3baf-41d4-a2a6-20f9b9a36ba3', '06', 'Kosong', 'meja depan', '2023-07-23 02:34:03', '2023-07-23 08:30:58', NULL),
('993b8521-ffc7-4d83-a663-62203bec7211', '13', 'Kosong', 'meja belakang', '2023-07-23 02:36:16', '2023-07-23 02:36:16', NULL),
('9d4850ae-0d57-4e3a-9b7a-f185bce20ad3', '07', 'Kosong', 'meja tengah', '2023-07-23 02:34:19', '2023-07-23 02:34:19', NULL),
('9d4ee9ba-0b69-4922-bfc3-b6544a42a738', '14', 'Kosong', 'meja belakang', '2023-07-23 02:36:38', '2023-07-23 02:36:38', NULL),
('a4aa31e2-732a-4bc1-94ad-7d2692614196', '10', 'Kosong', 'meja tengah', '2023-07-23 02:35:36', '2023-07-23 02:35:36', NULL),
('b17af0e6-3231-4d15-a7bb-5c219dd3c07e', '11', 'Kosong', 'meja tengah', '2023-07-23 02:35:15', '2023-07-23 02:35:15', NULL),
('b387951e-cea4-4fed-b5ed-a7401da0ebb0', '08', 'Kosong', 'meja tengah', '2023-07-23 02:34:37', '2023-07-23 02:34:37', NULL),
('c691be46-d8d0-41ff-9a96-556c313810c0', '002', 'Terpakai', 'b', '2023-07-21 07:57:02', '2023-07-23 02:32:06', '2023-07-23 02:32:06'),
('deac0cc7-842f-46da-9441-05fda23d3a1a', '03', 'Kosong', 'meja depan', '2023-07-23 02:33:11', '2023-07-23 02:33:11', NULL),
('eaeb6d92-812c-43fa-9381-d244f916f48b', '15', 'Kosong', 'meja belakang', '2023-07-23 02:36:55', '2023-07-23 08:31:15', NULL),
('ec5d6bca-953e-481e-9f72-a6f44519722a', '02', 'Kosong', 'meja depan', '2023-07-23 02:32:50', '2023-07-23 02:32:50', NULL),
('fa316de7-4821-4233-81f8-f6db9097b772', '20', 'Kosong', 'meja belakang', '2023-07-23 08:33:51', '2023-07-23 08:33:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` char(36) NOT NULL,
  `kd_menu` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `komposisi` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `foto_url` varchar(255) NOT NULL,
  `harga` double(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `kd_menu`, `nama`, `jenis`, `komposisi`, `deskripsi`, `foto`, `foto_url`, `harga`, `deleted_at`, `created_at`, `updated_at`) VALUES
('006536d4-aaa5-4e68-8dc9-5587c065b71a', 'N5', 'Greentea', 'Minuman', 'bubuk greentea, gula batu', 'teh yang dibuat dari daun tanaman teh (Camellia sinensis) yang dipetik dan mengalami proses pemanasan untuk mencegah oksidasi, atau bisa juga berarti minuman yang dihasilkan dari menyeduh daun teh tersebut.', 'Greentea-1690126868.jpg', 'http://127.0.0.1:8000/foto/Greentea-1690126868.jpg', 22000.00, NULL, '2023-07-23 08:41:08', '2023-07-23 08:41:08'),
('02d8720f-ed74-4e0a-9520-357536c146f3', 'M5', 'Ikan Nila Goreng', 'Makanan', 'Ikan Nila, Jeruk Nipis, kemiri, Kunyit, Garam, Bawang Putih', 'Ikan nila yang digoreng hingga matang dan menghasilkan rasa yang lezat', 'Ikan Nila Goreng-1690127729.jpg', 'http://127.0.0.1:8000/foto/Ikan Nila Goreng-1690127729.jpg', 55000.00, NULL, '2023-07-23 08:55:29', '2023-07-23 08:55:29'),
('36caee59-9651-4b99-b5dc-402379471932', 'M4', 'Sate Udang', 'Makanan', 'udang', 'olahan udang yang ditusuk menjadi sate lezat dan bergizi', 'Sate Udang-1690127630.jpg', 'http://127.0.0.1:8000/foto/Sate Udang-1690127630.jpg', 27000.00, NULL, '2023-07-23 08:53:50', '2023-07-23 08:53:50'),
('4abfad53-9a0f-4bdb-ac6b-8ebce6b3d3bd', 'N2', 'Jus Strawberry', 'Minuman', 'buah strawberry, es batu', 'Jus dengan buah strawberry yang segar', 'Jus Strawberry-1690104437.jpg', 'http://127.0.0.1:8000/foto/Jus Strawberry-1690104437.jpg', 22000.00, NULL, '2023-07-23 02:27:17', '2023-07-23 02:27:17'),
('4cc84b2f-4d06-4039-9a28-fa817eb67f38', 'M10', 'Sop Iga', 'Makanan', 'iga sapi, wortel, kentang, bawang bombay, cengkeh dll', 'Sop iga sapi adalah makanan berkuah yang cocok disantap dalam suasana apapun, terutama ketika musim hujan atau dingin.', 'Sop Iga-1690128271.jpg', 'http://127.0.0.1:8000/foto/Sop Iga-1690128271.jpg', 55000.00, NULL, '2023-07-23 09:04:32', '2023-07-23 09:04:32'),
('5850a585-f282-476c-a1dc-3f74651d49c6', 'N10', 'Caramel Latte', 'Minuman', 'Kopi, Susu, Es Batu, Karamel', 'jenis minuman kopi yang mengandung espresso, susu, dan saus karamel.', 'Caramel Latte-1690127471.jpg', 'http://127.0.0.1:8000/foto/Caramel Latte-1690127471.jpg', 27000.00, NULL, '2023-07-23 08:51:11', '2023-07-23 08:51:11'),
('71057723-b9e2-4e78-8382-a6ccf8a0d31a', 'M8', 'Gepuk', 'Makanan', 'gepuk', 'Olahan daging sapi yang dibuat menjadi gepeng sehingga menghasilkan daging yang empuk dan lezat', 'Gepuk-1690128034.jpg', 'http://127.0.0.1:8000/foto/Gepuk-1690128034.jpg', 28000.00, NULL, '2023-07-23 09:00:34', '2023-07-23 09:00:34'),
('770f023c-db52-4df3-a68a-dcfcf330a1a1', 'M1', 'Ayam Kremes', 'Makanan', 'ayam, tepung sagu, tepung beras, santan', 'ayam ayaman ajah', 'Ayam Kremes-1690104292.jpg', 'http://127.0.0.1:8000/foto/Ayam Kremes-1690104292.jpg', 37000.00, NULL, '2023-07-23 02:24:52', '2023-07-23 02:24:52'),
('837df9bc-2d30-45f5-b360-bc818c04d0f4', 'N7', 'Jus Alpukat', 'Minuman', 'Buah alpukat, susu, gula, es batu', 'Jus alpukat adalah minuman yang terbuat dari buah alpukat yang diblender bersama dengan susu atau air dan gula (atau bahan pemanis lainnya).', 'Jus Alpukat-1690127163.jpg', 'http://127.0.0.1:8000/foto/Jus Alpukat-1690127163.jpg', 22000.00, NULL, '2023-07-23 08:46:03', '2023-07-23 08:46:03'),
('8e822266-9148-412a-9b19-90c93f09eebd', 'N8', 'Jus Mangga', 'Minuman', 'Buah mangga, susu, gula, es batu', 'Jus mangga adalah minuman yang terbuat dari buah mangga yang diblender bersama dengan susu atau air dan gula (atau bahan pemanis lainnya).', 'Jus Mangga-1690127257.jpg', 'http://127.0.0.1:8000/foto/Jus Mangga-1690127257.jpg', 22000.00, NULL, '2023-07-23 08:47:37', '2023-07-23 08:47:37'),
('a4b30f90-e327-4113-9fe7-f12ee7cbd8ec', 'M6', 'Ikan Mas Goreng', 'Makanan', 'Ikan Mas, Jeruk Nipis, kemiri, Kunyit, Garam, Bawang Putih', 'Ikan mas yang digoreng hingga matang dan menghasilkan rasa yang lezat dan gurih', 'Ikan Mas Goreng-1690127842.jpg', 'http://127.0.0.1:8000/foto/Ikan Mas Goreng-1690127842.jpg', 55000.00, NULL, '2023-07-23 08:57:22', '2023-07-23 08:57:22'),
('a89ce8b9-8b7f-4026-a2e4-bc5519d19175', 'N9', 'Jus Melon', 'Minuman', 'Buah Melon, Gula, Es Batu, Susu', 'jus melon adalah minuman yang terbuat dari buah melon yang diblender bersama dengan susu atau air dan gula (atau bahan pemanis lainnya).', 'Jus Melon-1690127370.jpg', 'http://127.0.0.1:8000/foto/Jus Melon-1690127370.jpg', 22000.00, NULL, '2023-07-23 08:49:31', '2023-07-23 08:49:31'),
('adfbb3a7-005d-4c2c-b262-ac4b7b70e639', 'N3', 'Americano Coffee', 'Minuman', 'bubuk kopi, es batu', 'kopi america yang memiliki cita rasa mewah', 'Americano Coffee-1690126608.jpg', 'http://127.0.0.1:8000/foto/Americano Coffee-1690126608.jpg', 14000.00, NULL, '2023-07-23 08:36:48', '2023-07-23 08:36:48'),
('c19df0f6-d9c2-47a0-a45b-dbbee7b42d48', 'M9', 'Babat', 'Makanan', 'Babat sapi', 'Olahan daleman sapi yang bernama babat menjadi makanan yang lezat dan bergizi', 'Babat-1690128111.jpg', 'http://127.0.0.1:8000/foto/Babat-1690128111.jpg', 24000.00, NULL, '2023-07-23 09:01:51', '2023-07-23 09:01:51'),
('c342a742-c95a-4978-b464-38b9e2a33a37', 'N4', 'kopi tubruk', 'Minuman', 'bubuk kopi, gula', 'minuman kopi khas Indonesia yang dibuat dengan menuangkan air panas ke dalam gelas atau teko yang sudah diisi bubuk kopi', 'kopi tubruk-1690126729.jpg', 'http://127.0.0.1:8000/foto/kopi tubruk-1690126729.jpg', 17000.00, NULL, '2023-07-23 08:38:49', '2023-07-23 08:38:49'),
('c7f996d7-346c-44ae-8916-66806564c86f', 'AG1', 'Ayam Goreng', 'Makanan', 'rica rica', 'abc', 'Ayam Goreng-1689951154.jpg', 'http://localhost:8000/foto/Ayam Goreng-1689951154.jpg', 15000.00, '2023-07-23 02:21:39', '2023-07-21 07:52:34', '2023-07-23 02:21:39'),
('c8d37bc8-7cda-4227-bbf2-b36e4ddd0017', 'M2', 'Bebek Kremes', 'Makanan', 'Bebek, Tepung Sagu, Tepung Beras, Santan', 'Bebek lezat mantap', 'Bebek Kremes-1690104334.jpg', 'http://127.0.0.1:8000/foto/Bebek Kremes-1690104334.jpg', 37000.00, NULL, '2023-07-23 02:25:34', '2023-07-23 02:25:34'),
('cb18ff88-4880-4c73-9bcc-adff90b298bc', 'N6', 'Chocolate', 'Minuman', 'Bubuk coklat, gula', 'Cokelat panas adalah minuman panas yang dibuat dari cokelat atau kakao bubuk dan gula, dengan air atau susu hangat.', 'Chocolate-1690127043.jpg', 'http://127.0.0.1:8000/foto/Chocolate-1690127043.jpg', 20000.00, NULL, '2023-07-23 08:44:03', '2023-07-23 08:44:03'),
('d61d6af6-415e-40e8-ae16-9d97781fe091', 'M2', 'Ayam Kremes', 'Makanan', 'ayam, tepung sagu, tepung beras, santan', 'Ayam Ayaman', 'Ayam Kremes-1690104139.jpg', 'http://127.0.0.1:8000/foto/Ayam Kremes-1690104139.jpg', 24000.00, '2023-07-23 02:22:30', '2023-07-23 02:22:19', '2023-07-23 02:22:30'),
('dc3b59bf-661b-49a7-ac1d-f7ff2dadea05', 'M7', 'Paru', 'Makanan', 'paru sapi', 'Paru sapi yang diolah menjadi tusukan sate yang lezat dan bergizi', 'Paru-1690127947.jpg', 'http://127.0.0.1:8000/foto/Paru-1690127947.jpg', 22000.00, NULL, '2023-07-23 08:59:07', '2023-07-23 08:59:07'),
('f4e3ae0d-235a-4e7e-8139-a2e58a84096e', 'N1', 'Kopi Susu Gula Aren', 'Minuman', 'Es Batu, Susu, Gula Aren, Kopi dll', 'Kopi-kopian', 'Kopi Susu Gula Aren-1690104246.jpg', 'http://127.0.0.1:8000/foto/Kopi Susu Gula Aren-1690104246.jpg', 14000.00, NULL, '2023-07-23 02:24:06', '2023-07-23 02:24:06'),
('f6a88ddd-8e19-4568-88af-0097b429e68d', 'M3', 'Gurame Asam Manis', 'Makanan', 'Bawang Bombay, Bawang Putih, Cabe Merah dll', 'Ikan asam manis lezat', 'Gurame Asam Manis-1690104385.jpg', 'http://127.0.0.1:8000/foto/Gurame Asam Manis-1690104385.jpg', 55000.00, NULL, '2023-07-23 02:26:25', '2023-07-23 02:26:25');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_21_032821_create_permission_tables', 1),
(6, '2023_06_29_081637_create_bag_dapur_table', 1),
(7, '2023_06_29_081707_create_bahan_baku_table', 1),
(8, '2023_07_02_153855_create_menu_table', 1),
(9, '2023_07_03_170507_create_transaction_bahanbaku_table', 1),
(10, '2023_07_20_022722_create_pelayan_table', 1),
(11, '2023_07_20_022830_create_meja_table', 1),
(12, '2023_07_20_022905_create_transaksi_table', 1),
(13, '2023_07_20_023007_create_transaksi_detail_table', 1),
(14, '2023_07_22_151128_addsoftdeletes_in_users_table', 2),
(16, '2023_07_23_041219_addkodetransaksi_in_transaksi_table', 3),
(17, '2023_07_24_002539_addrole_in_users_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', '0987a5a1-2259-405a-ab86-8d1935204f0d'),
(1, 'App\\Models\\User', '3f606156-a2f4-4164-9b30-59c326070fbf'),
(2, 'App\\Models\\User', 'a9d73c30-b783-4b00-88cd-cffd95947ff5'),
(2, 'App\\Models\\User', 'cd2a55da-ba34-49e5-8cda-0865e624e771'),
(2, 'App\\Models\\User', 'd5062408-f339-4163-ac46-488a08f287b9'),
(3, 'App\\Models\\User', '5283be95-ab24-4838-b92e-35ffaead2619'),
(3, 'App\\Models\\User', '53cca6f2-75b0-412b-842a-52999ad3a21c'),
(3, 'App\\Models\\User', 'bc82da92-4f0b-4d75-bbb5-8cbcfc5e34fa'),
(4, 'App\\Models\\User', '0987a5a1-2259-405a-ab86-8d1935204f0d'),
(4, 'App\\Models\\User', '1cc0933b-cf36-4bc3-94f8-7782686533b0'),
(4, 'App\\Models\\User', '53cca6f2-75b0-412b-842a-52999ad3a21c'),
(4, 'App\\Models\\User', '9f3f38d3-d367-445e-a996-ab15c9f2261a'),
(4, 'App\\Models\\User', 'bc82da92-4f0b-4d75-bbb5-8cbcfc5e34fa'),
(4, 'App\\Models\\User', 'cd2a55da-ba34-49e5-8cda-0865e624e771'),
(4, 'App\\Models\\User', 'd5062408-f339-4163-ac46-488a08f287b9');

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
-- Table structure for table `pelayan`
--

CREATE TABLE `pelayan` (
  `id` char(36) NOT NULL,
  `id_user` char(36) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `jk` varchar(255) NOT NULL,
  `status_kehadiran` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelayan`
--

INSERT INTO `pelayan` (`id`, `id_user`, `no_hp`, `jk`, `status_kehadiran`, `created_at`, `updated_at`, `deleted_at`) VALUES
('0834701d-0a0c-46ce-b2b2-292beec38dfa', 'bc82da92-4f0b-4d75-bbb5-8cbcfc5e34fa', '087843214321', 'Perempuan', 'Hadir', '2023-07-23 03:13:12', '2023-07-23 03:13:12', NULL),
('54f07732-243b-4285-b560-026e809fdec3', '53cca6f2-75b0-412b-842a-52999ad3a21c', '081248569234', 'Laki-Laki', 'Hadir', '2023-07-23 03:13:38', '2023-07-23 03:13:38', NULL),
('cbbeea00-4705-48f3-9404-9ad993e7ed01', '5283be95-ab24-4838-b92e-35ffaead2619', '0878282826876', 'Laki-Laki', 'Hadir', '2023-07-21 07:55:04', '2023-07-21 07:55:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'web', NULL, NULL),
(2, 'bag_dapur', 'web', NULL, NULL),
(3, 'pelayan', 'web', NULL, NULL),
(4, 'konsumen', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_bahanbaku`
--

CREATE TABLE `transaction_bahanbaku` (
  `id` char(36) NOT NULL,
  `id_bahanbaku` char(36) NOT NULL,
  `stok_awal` double(8,2) NOT NULL,
  `stok_terpakai` double(8,2) NOT NULL,
  `sisa` double(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_bahanbaku`
--

INSERT INTO `transaction_bahanbaku` (`id`, `id_bahanbaku`, `stok_awal`, `stok_terpakai`, `sisa`, `deleted_at`, `created_at`, `updated_at`) VALUES
('072e6e6e-c337-482e-b910-e228d49a8b5f', '2c2c7120-c9c3-40d8-842b-d12d3c86ec07', 30.00, 20.00, 10.00, NULL, '2023-07-23 09:18:29', '2023-07-23 09:18:29'),
('0e288b42-410d-4f6f-a5df-7ca49feebaad', '46bec419-3f69-4e7f-9baf-ac047c3964ff', 65.00, 55.00, 10.00, NULL, '2023-07-23 09:15:41', '2023-07-23 09:15:41'),
('13315a91-ab27-4b81-a8d8-bc4b1f99a901', '0a5f182a-4d29-41a6-aad1-e18b27624525', 100.00, 96.00, 4.00, NULL, '2023-07-23 09:16:15', '2023-07-23 09:16:15'),
('2c832429-61c7-4fb2-849d-03ceef6588bc', 'c56c711a-048f-4e17-97c3-ca4e49388097', 45.00, 40.00, 5.00, NULL, '2023-07-23 09:19:30', '2023-07-23 09:19:30'),
('2e33035a-b46f-40be-aa43-90381aa6cdda', '867ececb-dd74-448f-bb09-7d54f5f3db5d', 78.00, 76.00, 2.00, NULL, '2023-07-23 09:19:58', '2023-07-23 09:19:58'),
('623ab0f3-b61e-4cc4-8e82-fcffbe2580ec', 'ebba6a2a-f649-448c-b010-187be61fb1cc', 45.00, 30.00, 15.00, NULL, '2023-07-23 09:17:53', '2023-07-23 09:17:53'),
('8597bdc9-efb3-4de1-b383-11486a5eab55', '3390d41a-daac-4f06-a6ab-36144ccaf2bc', 40.00, 36.00, 4.00, NULL, '2023-07-23 09:15:03', '2023-07-23 09:15:03'),
('9e3a8576-bbc5-433c-9f79-657490a78f22', 'e6a2471b-2a77-4738-ba2d-39e9246ac1da', 30.00, 20.00, 10.00, NULL, '2023-07-23 09:14:36', '2023-07-23 09:14:36'),
('ad919195-57d5-4221-a493-02e22bcec8c9', '1dfa2a27-9232-43e9-b3e1-e4f2708d0863', 89.00, 86.00, 3.00, NULL, '2023-07-23 09:17:14', '2023-07-23 09:17:14'),
('c54a6908-d972-4249-bdf4-55dfa96ced37', 'a690b035-a16b-49a5-a35b-6339d5f38b69', 78.00, 67.00, 11.00, NULL, '2023-07-23 09:16:44', '2023-07-23 09:16:44'),
('c62e4650-ff92-41d6-a7de-295d2facd202', 'b0d57470-adf2-43e7-a320-78b614eeb335', 89.00, 86.00, 3.00, NULL, '2023-07-23 09:18:55', '2023-07-23 09:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` char(36) NOT NULL,
  `id_konsumen` char(36) NOT NULL,
  `id_bag_dapur` char(36) NOT NULL,
  `id_pelayan` char(36) NOT NULL,
  `id_meja` char(36) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `total` double(8,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `status_bayar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_konsumen`, `id_bag_dapur`, `id_pelayan`, `id_meja`, `kode`, `tgl_transaksi`, `total`, `status`, `status_bayar`, `created_at`, `updated_at`, `deleted_at`) VALUES
('05aef2cd-7c33-406a-88ac-851eddf530c6', '2150ed68-31d2-4a56-9ad6-05f00f345268', '4b8b25bb-2391-431a-bd78-760e51ac5915', 'cbbeea00-4705-48f3-9404-9ad993e7ed01', '1dea5e71-5a2d-47e6-a639-830da5b73539', 'TR202307231', '2023-07-23', 96000.00, '2', '2', '2023-07-23 02:38:30', '2023-07-23 02:44:24', '2023-07-23 02:44:24'),
('16ca3a56-5360-453e-9e77-c4f6d11bc18e', '2150ed68-31d2-4a56-9ad6-05f00f345268', '4b8b25bb-2391-431a-bd78-760e51ac5915', 'cbbeea00-4705-48f3-9404-9ad993e7ed01', '44880533-fa4d-4850-8cfc-f5a9a90ce8d6', '', '2023-07-21', 15000.00, '3', '2', '2023-07-21 07:57:59', '2023-07-22 20:39:53', '2023-07-22 20:39:53'),
('42a99a2b-457a-444f-a8f9-7081808909b6', '2150ed68-31d2-4a56-9ad6-05f00f345268', '4b8b25bb-2391-431a-bd78-760e51ac5915', 'cbbeea00-4705-48f3-9404-9ad993e7ed01', '29c5c742-4c73-4b14-8fe6-b8ff91d8bf0b', 'TR202307232', '2023-07-23', 51000.00, '3', '2', '2023-07-23 03:06:51', '2023-07-23 03:33:53', '2023-07-23 03:33:53'),
('460ef252-088e-43d0-bc3f-0184b0c090c0', '9f3f38d3-d367-445e-a996-ab15c9f2261a', '4b8b25bb-2391-431a-bd78-760e51ac5915', '54f07732-243b-4285-b560-026e809fdec3', '8420d408-3baf-41d4-a2a6-20f9b9a36ba3', 'TR202307234', '2023-07-23', 114000.00, '3', '2', '2023-07-23 03:18:05', '2023-07-23 03:34:00', '2023-07-23 03:34:00'),
('6e405381-92e6-4f7e-b312-8478b4c01e01', '2150ed68-31d2-4a56-9ad6-05f00f345268', '4b8b25bb-2391-431a-bd78-760e51ac5915', 'cbbeea00-4705-48f3-9404-9ad993e7ed01', '7ebcf072-61c2-488d-9703-efa07a2cd081', 'TR202307231', '2023-07-23', 220000.00, '3', '2', '2023-07-23 09:22:13', '2023-07-23 09:24:53', NULL),
('7889113c-01fe-4926-a226-1d9debe6a968', '2150ed68-31d2-4a56-9ad6-05f00f345268', '4b8b25bb-2391-431a-bd78-760e51ac5915', 'cbbeea00-4705-48f3-9404-9ad993e7ed01', 'c691be46-d8d0-41ff-9a96-556c313810c0', 'TR202307232', '2023-07-23', 15000.00, '1', '1', '2023-07-22 21:18:16', '2023-07-23 02:30:32', '2023-07-23 02:30:32'),
('a8073e66-a27c-4a63-923f-20c2ddd04c26', '2150ed68-31d2-4a56-9ad6-05f00f345268', '4b8b25bb-2391-431a-bd78-760e51ac5915', 'cbbeea00-4705-48f3-9404-9ad993e7ed01', '44880533-fa4d-4850-8cfc-f5a9a90ce8d6', 'TR202307231', '2023-07-23', 15000.00, '1', '1', '2023-07-22 21:17:33', '2023-07-23 02:30:39', '2023-07-23 02:30:39'),
('b3513691-dde8-4106-b907-5bf92ed6f165', '1cc0933b-cf36-4bc3-94f8-7782686533b0', '463e0f80-28ac-45c0-9f66-0a5b2da13f59', 'cbbeea00-4705-48f3-9404-9ad993e7ed01', 'eaeb6d92-812c-43fa-9381-d244f916f48b', 'TR202307233', '2023-07-23', 106000.00, '3', '2', '2023-07-23 03:15:52', '2023-07-23 03:34:14', '2023-07-23 03:34:14'),
('c3390ec3-2cb7-4868-8582-5948c4e09cdd', '2150ed68-31d2-4a56-9ad6-05f00f345268', '4b8b25bb-2391-431a-bd78-760e51ac5915', 'cbbeea00-4705-48f3-9404-9ad993e7ed01', 'c691be46-d8d0-41ff-9a96-556c313810c0', '', '2023-07-21', 15000.00, '1', '1', '2023-07-21 08:00:40', '2023-07-22 20:39:51', '2023-07-22 20:39:51'),
('eb57a41b-ed29-4c2b-a418-71df9857d802', '2150ed68-31d2-4a56-9ad6-05f00f345268', '4b8b25bb-2391-431a-bd78-760e51ac5915', 'cbbeea00-4705-48f3-9404-9ad993e7ed01', '24333675-9222-47aa-9fb2-f597e1a39766', 'TR202307231', '2023-07-23', 96000.00, '3', '2', '2023-07-23 02:49:23', '2023-07-23 03:20:27', '2023-07-23 03:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id` char(36) NOT NULL,
  `id_menu` char(36) NOT NULL,
  `id_transaksi` char(36) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` double(8,2) NOT NULL,
  `subtotal` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id`, `id_menu`, `id_transaksi`, `qty`, `harga`, `subtotal`, `created_at`, `updated_at`) VALUES
('0cc5f7b1-befb-49de-b1e8-3cfbe79d13cc', 'f6a88ddd-8e19-4568-88af-0097b429e68d', 'b3513691-dde8-4106-b907-5bf92ed6f165', 1, 55000.00, 55000.00, '2023-07-23 03:15:52', '2023-07-23 03:15:52'),
('1b72bea1-4aa3-4f1a-89cf-3ac06cc19c34', '770f023c-db52-4df3-a68a-dcfcf330a1a1', '42a99a2b-457a-444f-a8f9-7081808909b6', 1, 37000.00, 37000.00, '2023-07-23 03:06:51', '2023-07-23 03:06:51'),
('1f7333d9-68a2-4a3d-a591-3d339e328cd4', '4abfad53-9a0f-4bdb-ac6b-8ebce6b3d3bd', '460ef252-088e-43d0-bc3f-0184b0c090c0', 1, 22000.00, 22000.00, '2023-07-23 03:18:05', '2023-07-23 03:18:05'),
('29498934-e850-44ed-bf00-40f54ecfe2bb', '4abfad53-9a0f-4bdb-ac6b-8ebce6b3d3bd', 'eb57a41b-ed29-4c2b-a418-71df9857d802', 1, 22000.00, 22000.00, '2023-07-23 02:49:23', '2023-07-23 02:49:23'),
('39c0a476-ae1c-4bef-b15e-99aada809dc7', '5850a585-f282-476c-a1dc-3f74651d49c6', '6e405381-92e6-4f7e-b312-8478b4c01e01', 1, 27000.00, 27000.00, '2023-07-23 09:22:13', '2023-07-23 09:22:13'),
('3a127edf-796f-4ebe-bf9b-3ff7041e385e', '770f023c-db52-4df3-a68a-dcfcf330a1a1', 'eb57a41b-ed29-4c2b-a418-71df9857d802', 1, 37000.00, 37000.00, '2023-07-23 02:49:23', '2023-07-23 02:49:23'),
('43fd07f3-4a5d-49d5-a1e3-b44080af1ac1', '770f023c-db52-4df3-a68a-dcfcf330a1a1', '05aef2cd-7c33-406a-88ac-851eddf530c6', 1, 37000.00, 37000.00, '2023-07-23 02:38:30', '2023-07-23 02:38:30'),
('53462f8b-09d7-4fe1-81f8-e10ab890da4f', 'f4e3ae0d-235a-4e7e-8139-a2e58a84096e', '42a99a2b-457a-444f-a8f9-7081808909b6', 1, 14000.00, 14000.00, '2023-07-23 03:06:51', '2023-07-23 03:06:51'),
('56c55206-f97d-4acb-b783-160debe33991', '006536d4-aaa5-4e68-8dc9-5587c065b71a', '6e405381-92e6-4f7e-b312-8478b4c01e01', 1, 22000.00, 22000.00, '2023-07-23 09:22:13', '2023-07-23 09:22:13'),
('600030d2-2b83-49b1-94c8-d2e0db68e186', 'c7f996d7-346c-44ae-8916-66806564c86f', 'a8073e66-a27c-4a63-923f-20c2ddd04c26', 1, 15000.00, 15000.00, '2023-07-22 21:17:33', '2023-07-22 21:17:33'),
('6eb9b3df-40dd-4a3f-a225-075e5607ac5b', 'c8d37bc8-7cda-4227-bbf2-b36e4ddd0017', 'b3513691-dde8-4106-b907-5bf92ed6f165', 1, 37000.00, 37000.00, '2023-07-23 03:15:52', '2023-07-23 03:15:52'),
('819d4ddf-f6be-4c27-b590-0fb9ef406ab5', 'c7f996d7-346c-44ae-8916-66806564c86f', '7889113c-01fe-4926-a226-1d9debe6a968', 1, 15000.00, 15000.00, '2023-07-22 21:18:16', '2023-07-22 21:18:16'),
('8fd3395c-5eca-48fa-ad7c-5b94f04a6bfc', 'c7f996d7-346c-44ae-8916-66806564c86f', '16ca3a56-5360-453e-9e77-c4f6d11bc18e', 1, 15000.00, 15000.00, '2023-07-21 07:57:59', '2023-07-21 07:57:59'),
('906d724d-93cc-46bc-85ad-389007c74465', '02d8720f-ed74-4e0a-9520-357536c146f3', '6e405381-92e6-4f7e-b312-8478b4c01e01', 1, 55000.00, 55000.00, '2023-07-23 09:22:13', '2023-07-23 09:22:13'),
('96088044-0628-41bc-bb50-5578c94bbd82', 'c8d37bc8-7cda-4227-bbf2-b36e4ddd0017', '05aef2cd-7c33-406a-88ac-851eddf530c6', 1, 37000.00, 37000.00, '2023-07-23 02:38:30', '2023-07-23 02:38:30'),
('9bdb019d-a315-4915-aaa0-265ba3c888b5', '4abfad53-9a0f-4bdb-ac6b-8ebce6b3d3bd', '05aef2cd-7c33-406a-88ac-851eddf530c6', 1, 22000.00, 22000.00, '2023-07-23 02:38:30', '2023-07-23 02:38:30'),
('9cbc39fa-4a1a-4437-a9c6-37d55f1b498f', 'c7f996d7-346c-44ae-8916-66806564c86f', 'c3390ec3-2cb7-4868-8582-5948c4e09cdd', 1, 15000.00, 15000.00, '2023-07-21 08:00:40', '2023-07-21 08:00:40'),
('ae424151-6376-4f74-a3d8-5269f2382743', 'c8d37bc8-7cda-4227-bbf2-b36e4ddd0017', 'eb57a41b-ed29-4c2b-a418-71df9857d802', 1, 37000.00, 37000.00, '2023-07-23 02:49:23', '2023-07-23 02:49:23'),
('b982eed2-5b50-473a-96c5-0ab445f8d7dc', 'f4e3ae0d-235a-4e7e-8139-a2e58a84096e', 'b3513691-dde8-4106-b907-5bf92ed6f165', 1, 14000.00, 14000.00, '2023-07-23 03:15:52', '2023-07-23 03:15:52'),
('bd5a7b00-7f81-4dfc-a317-d2313f57a251', 'c8d37bc8-7cda-4227-bbf2-b36e4ddd0017', '460ef252-088e-43d0-bc3f-0184b0c090c0', 1, 37000.00, 37000.00, '2023-07-23 03:18:05', '2023-07-23 03:18:05'),
('d0636e5e-91f0-4065-bfb4-ae60d5d00834', 'c19df0f6-d9c2-47a0-a45b-dbbee7b42d48', '6e405381-92e6-4f7e-b312-8478b4c01e01', 1, 24000.00, 24000.00, '2023-07-23 09:22:13', '2023-07-23 09:22:13'),
('d1dae880-82eb-417c-90eb-d179820f99b2', '770f023c-db52-4df3-a68a-dcfcf330a1a1', '6e405381-92e6-4f7e-b312-8478b4c01e01', 1, 37000.00, 37000.00, '2023-07-23 09:22:13', '2023-07-23 09:22:13'),
('d6ac6526-b127-4a9b-8392-14600cdc3c9b', '4cc84b2f-4d06-4039-9a28-fa817eb67f38', '6e405381-92e6-4f7e-b312-8478b4c01e01', 1, 55000.00, 55000.00, '2023-07-23 09:22:13', '2023-07-23 09:22:13'),
('dd7c502a-6c2a-4e82-a372-eea3778d1c52', 'f6a88ddd-8e19-4568-88af-0097b429e68d', '460ef252-088e-43d0-bc3f-0184b0c090c0', 1, 55000.00, 55000.00, '2023-07-23 03:18:05', '2023-07-23 03:18:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `role`) VALUES
('0987a5a1-2259-405a-ab86-8d1935204f0d', 'Sarah', 'sarah@gmail.com', NULL, '$2y$10$qufP5jmUydl6c3rIPw.k1.RkEHVDJW526VGuUjS6iKr2bJXLDYrXC', NULL, '2023-07-23 03:31:47', '2023-07-23 17:40:06', NULL, 'konsumen'),
('1cc0933b-cf36-4bc3-94f8-7782686533b0', 'Danang', 'danang@gmail.com', NULL, '$2y$10$ZE1cmnAjJrs6SI2QRqsfUe9aMhTEk4CgghTjJIbfVjyBEWrE.2GJa', NULL, '2023-07-23 03:14:38', '2023-07-23 17:37:47', NULL, 'konsumen'),
('2150ed68-31d2-4a56-9ad6-05f00f345268', 'tasya', 'tasya@gmail.com', NULL, '$2y$10$LAk/N4tkF2OZPCZZ02ZLmOH.d9Z23o8o9ljwyX77x8mXK9HmZZ9KK', NULL, '2023-07-21 07:50:27', '2023-07-21 07:50:27', NULL, ''),
('3f606156-a2f4-4164-9b30-59c326070fbf', 'kasir', 'kasir@gmail.com', NULL, '$2y$10$OOrHToGig.QKIM3/Rp2G4uQaiEcrfVSgyrksveWgUEKtCJPF3UoDu', NULL, NULL, '2023-07-23 17:39:41', NULL, 'superadmin'),
('5283be95-ab24-4838-b92e-35ffaead2619', 'adit', 'pelayan@gmail.com', NULL, '$2y$10$8PaUkaNTz/J5xo6kqQpoU.2z1uBV0Rm/rHf02vQsT.le.ayQhdtk.', NULL, '2023-07-21 07:54:46', '2023-07-23 17:37:33', NULL, 'pelayan'),
('53cca6f2-75b0-412b-842a-52999ad3a21c', 'Rahmad', 'rahmad@gmail.com', NULL, '$2y$10$LL3wxHeTttM4usGlYOSfleXQgjYoI5OFeM25bd2Wg/S2zQgL691fu', NULL, '2023-07-23 03:12:10', '2023-07-23 17:39:57', NULL, 'konsumen'),
('9f3f38d3-d367-445e-a996-ab15c9f2261a', 'Surya', 'surya@gmail.com', NULL, '$2y$10$BSIJGnmgQGZZCYR0t37wvexh6D3zCUEah8UoZ1hVXWEALRSXfmX6G', NULL, '2023-07-23 03:17:00', '2023-07-23 17:40:23', NULL, 'konsumen'),
('a9d73c30-b783-4b00-88cd-cffd95947ff5', 'glen', 'dapur@gmail.com', NULL, '$2y$10$8DE/UMxiLiRCL04.6f6zxOEjm/5cjjXOybeE5aJthb7I0LwXMa8kK', NULL, '2023-07-21 07:54:23', '2023-07-23 17:39:20', NULL, 'bag_dapur'),
('bc82da92-4f0b-4d75-bbb5-8cbcfc5e34fa', 'Siti', 'siti@gmail.com', NULL, '$2y$10$1mIW3lhBt7tjOe.N2ivMkuO1VOmEVpqzM564vTV56WFVtCxblamwm', NULL, '2023-07-23 03:12:37', '2023-07-23 17:40:14', NULL, 'konsumen'),
('cd2a55da-ba34-49e5-8cda-0865e624e771', 'narita', 'narita@gmail.com', NULL, '$2y$10$1TvqzoVJZzoDeAA8EABCsOc4M9rsGMLLFn44eXNuuQu7p2rVa04lW', NULL, '2023-07-23 02:57:36', '2023-07-23 17:39:50', NULL, 'konsumen'),
('d5062408-f339-4163-ac46-488a08f287b9', 'jajang', 'jajang@gmail.com', NULL, '$2y$10$MzBE4E15yMEiL6YLNjUDe.1Z0Dgbr5mwLKOEyp8Adnux2Fo0LWY7.', NULL, '2023-07-23 02:57:00', '2023-07-23 17:39:32', NULL, 'konsumen');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bag_dapur`
--
ALTER TABLE `bag_dapur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bag_dapur_id_user_foreign` (`id_user`);

--
-- Indexes for table `bahan_baku`
--
ALTER TABLE `bahan_baku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `meja`
--
ALTER TABLE `meja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pelayan`
--
ALTER TABLE `pelayan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelayan_id_user_foreign` (`id_user`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `transaction_bahanbaku`
--
ALTER TABLE `transaction_bahanbaku`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_bahanbaku_id_bahanbaku_foreign` (`id_bahanbaku`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_id_konsumen_foreign` (`id_konsumen`),
  ADD KEY `transaksi_id_bag_dapur_foreign` (`id_bag_dapur`),
  ADD KEY `transaksi_id_pelayan_foreign` (`id_pelayan`),
  ADD KEY `transaksi_id_meja_foreign` (`id_meja`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_detail_id_menu_foreign` (`id_menu`),
  ADD KEY `transaksi_detail_id_transaksi_foreign` (`id_transaksi`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bag_dapur`
--
ALTER TABLE `bag_dapur`
  ADD CONSTRAINT `bag_dapur_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pelayan`
--
ALTER TABLE `pelayan`
  ADD CONSTRAINT `pelayan_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaction_bahanbaku`
--
ALTER TABLE `transaction_bahanbaku`
  ADD CONSTRAINT `transaction_bahanbaku_id_bahanbaku_foreign` FOREIGN KEY (`id_bahanbaku`) REFERENCES `bahan_baku` (`id`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_id_bag_dapur_foreign` FOREIGN KEY (`id_bag_dapur`) REFERENCES `bag_dapur` (`id`),
  ADD CONSTRAINT `transaksi_id_konsumen_foreign` FOREIGN KEY (`id_konsumen`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transaksi_id_meja_foreign` FOREIGN KEY (`id_meja`) REFERENCES `meja` (`id`),
  ADD CONSTRAINT `transaksi_id_pelayan_foreign` FOREIGN KEY (`id_pelayan`) REFERENCES `pelayan` (`id`);

--
-- Constraints for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD CONSTRAINT `transaksi_detail_id_menu_foreign` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `transaksi_detail_id_transaksi_foreign` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
