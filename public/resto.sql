-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2023 at 04:21 AM
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
('09db6c1d-9ce5-4f8e-9e6f-141c2d6df273', '916bb538-5382-4bad-859f-b7126dec9c4b', '0878282826877', 'Laki-Laki', 'Hadir', '2023-07-29 22:37:26', '2023-07-29 22:37:26', NULL),
('0c425907-0318-4b6a-a055-e6c73678972e', 'af3b31e9-1d73-4b5c-956a-cef50726428c', '087828737389', 'Laki-Laki', 'Tidak Hadir', '2023-07-29 23:47:04', '2023-07-29 23:47:04', NULL);

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
('0a5f182a-4d29-41a6-aad1-e18b27624525', 'Ikan Gurame', 4.00, 'Ekor', NULL, '2023-07-22 19:06:45', '2023-07-22 19:16:15'),
('1dfa2a27-9232-43e9-b3e1-e4f2708d0863', 'Paru', 3.00, 'tusuk', NULL, '2023-07-22 19:10:23', '2023-07-22 19:17:14'),
('2c2c7120-c9c3-40d8-842b-d12d3c86ec07', 'Pepes Jamur', 10.00, 'bungkus', NULL, '2023-07-22 19:11:22', '2023-07-22 19:18:29'),
('3390d41a-daac-4f06-a6ab-36144ccaf2bc', 'Ayam Pejantan', 4.00, 'Potong', NULL, '2023-07-22 19:05:38', '2023-07-22 19:15:03'),
('46bec419-3f69-4e7f-9baf-ac047c3964ff', 'Gepuk', 10.00, 'tusuk', NULL, '2023-07-22 19:10:06', '2023-07-22 19:15:41'),
('7c65a3f5-8a29-4729-bcd9-80f307a471e6', 'Pepes Ikan', 0.00, 'bungkus', NULL, '2023-07-22 19:10:43', '2023-07-22 19:10:43'),
('867ececb-dd74-448f-bb09-7d54f5f3db5d', 'Tempe', 2.00, 'buah', NULL, '2023-07-22 19:13:32', '2023-07-22 19:19:58'),
('a690b035-a16b-49a5-a35b-6339d5f38b69', 'Ikan Mas', 11.00, 'Ekor', NULL, '2023-07-22 19:07:07', '2023-07-22 19:16:44'),
('b0d57470-adf2-43e7-a320-78b614eeb335', 'Pepes Tahu', 3.00, 'bungkus', NULL, '2023-07-22 19:11:46', '2023-07-22 19:18:55'),
('c1b2dc67-bd82-4349-8d06-e6f0f0bc3d0c', 'Sate Udang', 0.00, 'tusuk', NULL, '2023-07-22 19:12:16', '2023-07-22 19:12:16'),
('c56c711a-048f-4e17-97c3-ca4e49388097', 'Tahu', 5.00, 'buah', NULL, '2023-07-22 19:13:13', '2023-07-22 19:19:30'),
('d8fdf5c3-6876-4ef1-86a3-90afdcfa7fdc', 'Ikan Nila', 0.00, 'Ekor', NULL, '2023-07-22 19:07:32', '2023-07-22 19:07:32'),
('e6a2471b-2a77-4738-ba2d-39e9246ac1da', 'Ayam Kampung', 10.00, 'Potong', NULL, '2023-07-22 19:06:03', '2023-07-22 19:14:36'),
('ebba6a2a-f649-448c-b010-187be61fb1cc', 'Pepes Ayam', 15.00, 'bungkus', NULL, '2023-07-22 19:11:04', '2023-07-22 19:17:53'),
('f4212b20-d395-46af-8ded-42a235ec726f', 'Bebek', 0.00, 'Potong', NULL, '2023-07-22 19:06:22', '2023-07-22 19:06:22');

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
('054eeb02-a32d-48c1-aef9-fa64b1c894ec', '16', 'Kosong', 'meja belakang', '2023-07-22 18:31:41', '2023-07-22 18:31:41', NULL),
('0d979ecf-2243-4e0a-b549-80367bc2b0ec', '17', 'Kosong', 'meja belakang', '2023-07-22 18:32:02', '2023-07-22 18:32:02', NULL),
('1cbb47b6-d670-4277-9ead-c94ba10113c8', '05', 'Terpakai', 'meja depan', '2023-07-22 12:33:45', '2023-07-30 19:10:09', NULL),
('1dea5e71-5a2d-47e6-a639-830da5b73539', '09', 'Kosong', 'meja tengah', '2023-07-22 12:34:58', '2023-07-22 13:20:56', NULL),
('24333675-9222-47aa-9fb2-f597e1a39766', '12', 'Kosong', 'meja tengah', '2023-07-22 12:35:56', '2023-07-22 13:21:08', NULL),
('29c5c742-4c73-4b14-8fe6-b8ff91d8bf0b', '01', 'Terpakai', 'meja depan', '2023-07-22 12:32:28', '2023-07-29 12:30:40', NULL),
('44880533-fa4d-4850-8cfc-f5a9a90ce8d6', '001', 'Terpakai', 'a', '2023-07-20 17:56:53', '2023-07-22 12:31:59', '2023-07-22 12:31:59'),
('480ffc1b-4837-44ac-a802-da95a64c7247', '18', 'Kosong', 'meja belakang', '2023-07-22 18:32:25', '2023-07-22 18:32:25', NULL),
('58ee1b70-bad4-478b-9d72-e90407db0f0b', '19', '', 'meja belakang', '2023-07-22 18:31:42', '2023-07-22 18:33:19', NULL),
('7ebcf072-61c2-488d-9703-efa07a2cd081', '04', 'Terpakai', 'meja depan', '2023-07-22 12:33:28', '2023-07-22 19:22:13', NULL),
('8420d408-3baf-41d4-a2a6-20f9b9a36ba3', '06', 'Kosong', 'meja depan', '2023-07-22 12:34:03', '2023-07-22 18:30:58', NULL),
('993b8521-ffc7-4d83-a663-62203bec7211', '13', 'Kosong', 'meja belakang', '2023-07-22 12:36:16', '2023-07-22 12:36:16', NULL),
('9d4850ae-0d57-4e3a-9b7a-f185bce20ad3', '07', 'Kosong', 'meja tengah', '2023-07-22 12:34:19', '2023-07-22 12:34:19', NULL),
('9d4ee9ba-0b69-4922-bfc3-b6544a42a738', '14', 'Kosong', 'meja belakang', '2023-07-22 12:36:38', '2023-07-22 12:36:38', NULL),
('a4aa31e2-732a-4bc1-94ad-7d2692614196', '10', 'Kosong', 'meja tengah', '2023-07-22 12:35:36', '2023-07-22 12:35:36', NULL),
('b17af0e6-3231-4d15-a7bb-5c219dd3c07e', '11', 'Kosong', 'meja tengah', '2023-07-22 12:35:15', '2023-07-22 12:35:15', NULL),
('b387951e-cea4-4fed-b5ed-a7401da0ebb0', '08', 'Kosong', 'meja tengah', '2023-07-22 12:34:37', '2023-07-22 12:34:37', NULL),
('c691be46-d8d0-41ff-9a96-556c313810c0', '002', 'Terpakai', 'b', '2023-07-20 17:57:02', '2023-07-22 12:32:06', '2023-07-22 12:32:06'),
('deac0cc7-842f-46da-9441-05fda23d3a1a', '03', 'Terpakai', 'meja depan', '2023-07-22 12:33:11', '2023-07-30 18:55:04', NULL),
('eaeb6d92-812c-43fa-9381-d244f916f48b', '15', 'Kosong', 'meja belakang', '2023-07-22 12:36:55', '2023-07-22 18:31:15', NULL),
('ec5d6bca-953e-481e-9f72-a6f44519722a', '02', 'Terpakai', 'meja depan', '2023-07-22 12:32:50', '2023-07-29 22:38:31', NULL),
('fa316de7-4821-4233-81f8-f6db9097b772', '20', 'Terpakai', 'meja belakang', '2023-07-22 18:33:51', '2023-07-29 23:52:56', NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `kd_menu`, `nama`, `jenis`, `komposisi`, `deskripsi`, `foto`, `foto_url`, `harga`, `deleted_at`, `created_at`, `updated_at`, `status`) VALUES
('006536d4-aaa5-4e68-8dc9-5587c065b71a', 'N5', 'Greentea', 'Minuman', 'bubuk greentea, gula batu', 'teh yang dibuat dari daun tanaman teh (Camellia sinensis) yang dipetik dan mengalami proses pemanasan untuk mencegah oksidasi, atau bisa juga berarti minuman yang dihasilkan dari menyeduh daun teh tersebut.', 'Greentea-1690126868.jpg', 'http://127.0.0.1:8000/foto/Greentea-1690126868.jpg', 22000.00, NULL, '2023-07-22 18:41:08', '2023-07-22 18:41:08', ''),
('02d8720f-ed74-4e0a-9520-357536c146f3', 'M5', 'Ikan Nila Goreng', 'Makanan', 'Ikan Nila, Jeruk Nipis, kemiri, Kunyit, Garam, Bawang Putih', 'Ikan nila yang digoreng hingga matang dan menghasilkan rasa yang lezat', 'Ikan Nila Goreng-1690127729.jpg', 'http://127.0.0.1:8000/foto/Ikan Nila Goreng-1690127729.jpg', 55000.00, NULL, '2023-07-22 18:55:29', '2023-07-22 18:55:29', ''),
('36caee59-9651-4b99-b5dc-402379471932', 'M4', 'Sate Udang', 'Makanan', 'udang', 'olahan udang yang ditusuk menjadi sate lezat dan bergizi', 'Sate Udang-1690127630.jpg', 'http://127.0.0.1:8000/foto/Sate Udang-1690127630.jpg', 27000.00, NULL, '2023-07-22 18:53:50', '2023-07-22 18:53:50', ''),
('4abfad53-9a0f-4bdb-ac6b-8ebce6b3d3bd', 'N2', 'Jus Strawberry', 'Minuman', 'buah strawberry, es batu', 'Jus dengan buah strawberry yang segar', 'Jus Strawberry-1690104437.jpg', 'http://127.0.0.1:8000/foto/Jus Strawberry-1690104437.jpg', 22000.00, NULL, '2023-07-22 12:27:17', '2023-07-22 12:27:17', ''),
('4cc84b2f-4d06-4039-9a28-fa817eb67f38', 'M10', 'Sop Iga', 'Makanan', 'iga sapi, wortel, kentang, bawang bombay, cengkeh dll', 'Sop iga sapi adalah makanan berkuah yang cocok disantap dalam suasana apapun, terutama ketika musim hujan atau dingin.', 'Sop Iga-1690128271.jpg', 'http://127.0.0.1:8000/foto/Sop Iga-1690128271.jpg', 55000.00, NULL, '2023-07-22 19:04:32', '2023-07-22 19:04:32', ''),
('5850a585-f282-476c-a1dc-3f74651d49c6', 'N10', 'Caramel Latte', 'Minuman', 'Kopi, Susu, Es Batu, Karamel', 'jenis minuman kopi yang mengandung espresso, susu, dan saus karamel.', 'Caramel Latte-1690127471.jpg', 'http://127.0.0.1:8000/foto/Caramel Latte-1690127471.jpg', 27000.00, NULL, '2023-07-22 18:51:11', '2023-07-22 18:51:11', ''),
('71057723-b9e2-4e78-8382-a6ccf8a0d31a', 'M8', 'Gepuk', 'Makanan', 'gepuk', 'Olahan daging sapi yang dibuat menjadi gepeng sehingga menghasilkan daging yang empuk dan lezat', 'Gepuk-1690128034.jpg', 'http://127.0.0.1:8000/foto/Gepuk-1690128034.jpg', 28000.00, NULL, '2023-07-22 19:00:34', '2023-07-22 19:00:34', ''),
('770f023c-db52-4df3-a68a-dcfcf330a1a1', 'M1', 'Ayam Kremes', 'Makanan', 'ayam, tepung sagu, tepung beras, santan', 'ayam ayaman ajah', 'Ayam Kremes-1690104292.jpg', 'http://127.0.0.1:8000/foto/Ayam Kremes-1690104292.jpg', 37000.00, NULL, '2023-07-22 12:24:52', '2023-07-22 12:24:52', ''),
('837df9bc-2d30-45f5-b360-bc818c04d0f4', 'N7', 'Jus Alpukat', 'Minuman', 'Buah alpukat, susu, gula, es batu', 'Jus alpukat adalah minuman yang terbuat dari buah alpukat yang diblender bersama dengan susu atau air dan gula (atau bahan pemanis lainnya).', 'Jus Alpukat-1690127163.jpg', 'http://127.0.0.1:8000/foto/Jus Alpukat-1690127163.jpg', 22000.00, NULL, '2023-07-22 18:46:03', '2023-07-22 18:46:03', ''),
('8e822266-9148-412a-9b19-90c93f09eebd', 'N8', 'Jus Mangga', 'Minuman', 'Buah mangga, susu, gula, es batu', 'Jus mangga adalah minuman yang terbuat dari buah mangga yang diblender bersama dengan susu atau air dan gula (atau bahan pemanis lainnya).', 'Jus Mangga-1690127257.jpg', 'http://127.0.0.1:8000/foto/Jus Mangga-1690127257.jpg', 22000.00, NULL, '2023-07-22 18:47:37', '2023-07-22 18:47:37', ''),
('a4b30f90-e327-4113-9fe7-f12ee7cbd8ec', 'M6', 'Ikan Mas Goreng', 'Makanan', 'Ikan Mas, Jeruk Nipis, kemiri, Kunyit, Garam, Bawang Putih', 'Ikan mas yang digoreng hingga matang dan menghasilkan rasa yang lezat dan gurih', 'Ikan Mas Goreng-1690127842.jpg', 'http://127.0.0.1:8000/foto/Ikan Mas Goreng-1690127842.jpg', 55000.00, NULL, '2023-07-22 18:57:22', '2023-07-22 18:57:22', ''),
('a89ce8b9-8b7f-4026-a2e4-bc5519d19175', 'N9', 'Jus Melon', 'Minuman', 'Buah Melon, Gula, Es Batu, Susu', 'jus melon adalah minuman yang terbuat dari buah melon yang diblender bersama dengan susu atau air dan gula (atau bahan pemanis lainnya).', 'Jus Melon-1690127370.jpg', 'http://127.0.0.1:8000/foto/Jus Melon-1690127370.jpg', 22000.00, NULL, '2023-07-22 18:49:31', '2023-07-22 18:49:31', ''),
('adfbb3a7-005d-4c2c-b262-ac4b7b70e639', 'N3', 'Americano Coffee', 'Minuman', 'bubuk kopi, es batu', 'kopi america yang memiliki cita rasa mewah', 'Americano Coffee-1690126608.jpg', 'http://localhost:8000/foto/Americano Coffee-1690126608.jpg', 14000.00, NULL, '2023-07-22 18:36:48', '2023-07-29 10:41:53', 'Habis'),
('c19df0f6-d9c2-47a0-a45b-dbbee7b42d48', 'M9', 'Babat', 'Makanan', 'Babat sapi', 'Olahan daleman sapi yang bernama babat menjadi makanan yang lezat dan bergizi', 'Babat-1690128111.jpg', 'http://127.0.0.1:8000/foto/Babat-1690128111.jpg', 24000.00, NULL, '2023-07-22 19:01:51', '2023-07-22 19:01:51', ''),
('c342a742-c95a-4978-b464-38b9e2a33a37', 'N4', 'kopi tubruk', 'Minuman', 'bubuk kopi, gula', 'minuman kopi khas Indonesia yang dibuat dengan menuangkan air panas ke dalam gelas atau teko yang sudah diisi bubuk kopi', 'kopi tubruk-1690126729.jpg', 'http://127.0.0.1:8000/foto/kopi tubruk-1690126729.jpg', 17000.00, NULL, '2023-07-22 18:38:49', '2023-07-22 18:38:49', ''),
('c7f996d7-346c-44ae-8916-66806564c86f', 'AG1', 'Ayam Goreng', 'Makanan', 'rica rica', 'abc', 'Ayam Goreng-1689951154.jpg', 'http://localhost:8000/foto/Ayam Goreng-1689951154.jpg', 15000.00, '2023-07-22 12:21:39', '2023-07-20 17:52:34', '2023-07-22 12:21:39', ''),
('c8d37bc8-7cda-4227-bbf2-b36e4ddd0017', 'M2', 'Bebek Kremes', 'Makanan', 'Bebek, Tepung Sagu, Tepung Beras, Santan', 'Bebek lezat mantap', 'Bebek Kremes-1690104334.jpg', 'http://127.0.0.1:8000/foto/Bebek Kremes-1690104334.jpg', 37000.00, NULL, '2023-07-22 12:25:34', '2023-07-22 12:25:34', ''),
('cb18ff88-4880-4c73-9bcc-adff90b298bc', 'N6', 'Chocolate', 'Minuman', 'Bubuk coklat, gula', 'Cokelat panas adalah minuman panas yang dibuat dari cokelat atau kakao bubuk dan gula, dengan air atau susu hangat.', 'Chocolate-1690127043.jpg', 'http://127.0.0.1:8000/foto/Chocolate-1690127043.jpg', 20000.00, NULL, '2023-07-22 18:44:03', '2023-07-22 18:44:03', ''),
('d61d6af6-415e-40e8-ae16-9d97781fe091', 'M2', 'Ayam Kremes', 'Makanan', 'ayam, tepung sagu, tepung beras, santan', 'Ayam Ayaman', 'Ayam Kremes-1690104139.jpg', 'http://127.0.0.1:8000/foto/Ayam Kremes-1690104139.jpg', 24000.00, '2023-07-22 12:22:30', '2023-07-22 12:22:19', '2023-07-22 12:22:30', ''),
('dc3b59bf-661b-49a7-ac1d-f7ff2dadea05', 'M7', 'Paru', 'Makanan', 'paru sapi', 'Paru sapi yang diolah menjadi tusukan sate yang lezat dan bergizi', 'Paru-1690127947.jpg', 'http://127.0.0.1:8000/foto/Paru-1690127947.jpg', 22000.00, NULL, '2023-07-22 18:59:07', '2023-07-22 18:59:07', ''),
('f4e3ae0d-235a-4e7e-8139-a2e58a84096e', 'N1', 'Kopi Susu Gula Aren', 'Minuman', 'Es Batu, Susu, Gula Aren, Kopi dll', 'Kopi-kopian', 'Kopi Susu Gula Aren-1690104246.jpg', 'http://127.0.0.1:8000/foto/Kopi Susu Gula Aren-1690104246.jpg', 14000.00, NULL, '2023-07-22 12:24:06', '2023-07-22 12:24:06', ''),
('f6a88ddd-8e19-4568-88af-0097b429e68d', 'M3', 'Gurame Asam Manis', 'Makanan', 'Bawang Bombay, Bawang Putih, Cabe Merah dll', 'Ikan asam manis lezat', 'Gurame Asam Manis-1690104385.jpg', 'http://127.0.0.1:8000/foto/Gurame Asam Manis-1690104385.jpg', 55000.00, NULL, '2023-07-22 12:26:25', '2023-07-22 12:26:25', '');

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
(14, '2023_07_22_151128_addsoftdeletes_in_users_table', 1),
(15, '2023_07_23_041219_addkodetransaksi_in_transaksi_table', 1),
(16, '2023_07_24_002539_addrole_in_users_table', 1),
(17, '2023_07_30_072804_addstatus_in_menu_table', 1);

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
(1, 'App\\Models\\User', 'af3b31e9-1d73-4b5c-956a-cef50726428c'),
(1, 'App\\Models\\User', 'c72c85f5-0ba8-4b04-abf4-d39b16fd4a89'),
(2, 'App\\Models\\User', '916bb538-5382-4bad-859f-b7126dec9c4b'),
(2, 'App\\Models\\User', 'af3b31e9-1d73-4b5c-956a-cef50726428c'),
(3, 'App\\Models\\User', '54971f3c-2c1e-41f1-aba5-6590d372e50f'),
(3, 'App\\Models\\User', 'cab92a8b-0624-423c-8558-54c7ba488608'),
(4, 'App\\Models\\User', '3704bee6-41ec-4788-a976-57083366ac22'),
(4, 'App\\Models\\User', '5a12783a-2696-495e-8446-2165d104c4b3');

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
('14f2b953-9262-46e3-bc41-37d7d89e1ec6', '54971f3c-2c1e-41f1-aba5-6590d372e50f', '0878282826876', 'Laki-Laki', 'Hadir', '2023-07-29 23:51:29', '2023-07-29 23:51:29', NULL),
('5c52e78d-4d09-4121-8445-c599b3fb0689', 'cab92a8b-0624-423c-8558-54c7ba488608', '0878282826870', 'Laki-Laki', 'Hadir', '2023-07-29 22:37:02', '2023-07-29 22:37:02', NULL);

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
('072e6e6e-c337-482e-b910-e228d49a8b5f', '2c2c7120-c9c3-40d8-842b-d12d3c86ec07', 30.00, 20.00, 10.00, NULL, '2023-07-22 19:18:29', '2023-07-22 19:18:29'),
('0e288b42-410d-4f6f-a5df-7ca49feebaad', '46bec419-3f69-4e7f-9baf-ac047c3964ff', 65.00, 55.00, 10.00, NULL, '2023-07-22 19:15:41', '2023-07-22 19:15:41'),
('13315a91-ab27-4b81-a8d8-bc4b1f99a901', '0a5f182a-4d29-41a6-aad1-e18b27624525', 100.00, 96.00, 4.00, NULL, '2023-07-22 19:16:15', '2023-07-22 19:16:15'),
('2c832429-61c7-4fb2-849d-03ceef6588bc', 'c56c711a-048f-4e17-97c3-ca4e49388097', 45.00, 40.00, 5.00, NULL, '2023-07-22 19:19:30', '2023-07-22 19:19:30'),
('2e33035a-b46f-40be-aa43-90381aa6cdda', '867ececb-dd74-448f-bb09-7d54f5f3db5d', 78.00, 76.00, 2.00, NULL, '2023-07-22 19:19:58', '2023-07-22 19:19:58'),
('623ab0f3-b61e-4cc4-8e82-fcffbe2580ec', 'ebba6a2a-f649-448c-b010-187be61fb1cc', 45.00, 30.00, 15.00, NULL, '2023-07-22 19:17:53', '2023-07-22 19:17:53'),
('8597bdc9-efb3-4de1-b383-11486a5eab55', '3390d41a-daac-4f06-a6ab-36144ccaf2bc', 40.00, 36.00, 4.00, NULL, '2023-07-22 19:15:03', '2023-07-22 19:15:03'),
('9e3a8576-bbc5-433c-9f79-657490a78f22', 'e6a2471b-2a77-4738-ba2d-39e9246ac1da', 30.00, 20.00, 10.00, NULL, '2023-07-22 19:14:36', '2023-07-22 19:14:36'),
('ad919195-57d5-4221-a493-02e22bcec8c9', '1dfa2a27-9232-43e9-b3e1-e4f2708d0863', 89.00, 86.00, 3.00, NULL, '2023-07-22 19:17:14', '2023-07-22 19:17:14'),
('c54a6908-d972-4249-bdf4-55dfa96ced37', 'a690b035-a16b-49a5-a35b-6339d5f38b69', 78.00, 67.00, 11.00, NULL, '2023-07-22 19:16:44', '2023-07-22 19:16:44'),
('c62e4650-ff92-41d6-a7de-295d2facd202', 'b0d57470-adf2-43e7-a320-78b614eeb335', 89.00, 86.00, 3.00, NULL, '2023-07-22 19:18:55', '2023-07-22 19:18:55');

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
('1781ce9c-8010-44dc-a202-de4fc3298c39', '3704bee6-41ec-4788-a976-57083366ac22', '916bb538-5382-4bad-859f-b7126dec9c4b', '54971f3c-2c1e-41f1-aba5-6590d372e50f', '1cbb47b6-d670-4277-9ead-c94ba10113c8', 'TR202307312', '2023-07-31', 110000.00, '1', '1', '2023-07-30 19:10:09', '2023-07-30 19:10:09', NULL),
('66011489-69eb-4b71-95fc-f31ca924dbab', '5a12783a-2696-495e-8446-2165d104c4b3', '916bb538-5382-4bad-859f-b7126dec9c4b', 'cab92a8b-0624-423c-8558-54c7ba488608', 'deac0cc7-842f-46da-9441-05fda23d3a1a', 'TR202307311', '2023-07-31', 82000.00, '3', '1', '2023-07-30 18:55:04', '2023-07-30 19:16:01', NULL);

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
('33646f30-cfa4-4fe1-a733-8e2b1befc917', '36caee59-9651-4b99-b5dc-402379471932', '66011489-69eb-4b71-95fc-f31ca924dbab', 1, 27000.00, 27000.00, '2023-07-30 18:55:04', '2023-07-30 18:55:04'),
('41001db5-3e65-40b1-b7ea-ae906e5fa82e', '4cc84b2f-4d06-4039-9a28-fa817eb67f38', '1781ce9c-8010-44dc-a202-de4fc3298c39', 1, 55000.00, 55000.00, '2023-07-30 19:10:09', '2023-07-30 19:10:09'),
('4834679d-d065-4fc4-af68-c566a86ffc3a', '02d8720f-ed74-4e0a-9520-357536c146f3', '1781ce9c-8010-44dc-a202-de4fc3298c39', 1, 55000.00, 55000.00, '2023-07-30 19:10:09', '2023-07-30 19:10:09'),
('ffa6e9d8-68be-43e7-bcc9-56dfc11c7491', '02d8720f-ed74-4e0a-9520-357536c146f3', '66011489-69eb-4b71-95fc-f31ca924dbab', 1, 55000.00, 55000.00, '2023-07-30 18:55:04', '2023-07-30 18:55:04');

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
('3704bee6-41ec-4788-a976-57083366ac22', 'eko', 'eko@gmail.com', NULL, '$2y$10$Ew94VkVzxIajKn4IuKT5/u3LccK2XNEF8ko9Ctc78toOeZ7eNsx2m', NULL, '2023-07-29 22:30:11', '2023-07-29 22:30:11', NULL, 'konsumen'),
('54971f3c-2c1e-41f1-aba5-6590d372e50f', 'juni', 'juni@gmail.com', NULL, '$2y$10$4v8pNZ7nGNmK2mJIkeUCCeA8P.mT3hGKaHbRa6YSggMg129tZvlkC', NULL, '2023-07-29 23:49:55', '2023-07-29 23:49:55', NULL, 'pelayan'),
('5a12783a-2696-495e-8446-2165d104c4b3', 'dede', 'dede@gmail.com', NULL, '$2y$10$Hy25Iud5KDbOo/d8IauEqORc0CAyGIHhsFZ0ZFFHnQ9cDWHJV8LWG', NULL, '2023-07-29 23:50:15', '2023-07-29 23:50:15', NULL, 'konsumen'),
('916bb538-5382-4bad-859f-b7126dec9c4b', 'adit', 'dapur@gmail.com', NULL, '$2y$10$BzJE/jWdO1sxM2b.fe3TpO7W0xwYlAvbvpeaPnLWxgJUj559AXF2O', NULL, '2023-07-29 22:29:26', '2023-07-29 22:29:26', NULL, 'bag_dapur'),
('af3b31e9-1d73-4b5c-956a-cef50726428c', 'juli', 'juli@gmail.com', NULL, '$2y$10$Vg0po3jK38O3tzqgY2vYQuLk2r7Md1U6IJZuihTsb1Zu.glvSH/Eu', NULL, '2023-07-29 23:46:36', '2023-07-29 23:46:47', NULL, 'bag_dapur'),
('c72c85f5-0ba8-4b04-abf4-d39b16fd4a89', 'kasir', 'kasir@gmail.com', NULL, '$2y$10$rv9Ef8DPbbIEjnMzIY3O0OnZpZPpHbMcSu6g75vVYUF.7TKZPjHXe', NULL, NULL, NULL, NULL, 'superadmin'),
('cab92a8b-0624-423c-8558-54c7ba488608', 'aan', 'pelayan@gmail.com', NULL, '$2y$10$wFCiLHzSRZsRoKiItLFgZ.wOhSRu9fM1FI8HtYI/o1YBcn1zpiagG', NULL, '2023-07-29 22:29:51', '2023-07-29 22:29:51', NULL, 'pelayan');

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
  ADD CONSTRAINT `transaksi_id_bag_dapur_foreign` FOREIGN KEY (`id_bag_dapur`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transaksi_id_konsumen_foreign` FOREIGN KEY (`id_konsumen`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transaksi_id_meja_foreign` FOREIGN KEY (`id_meja`) REFERENCES `meja` (`id`),
  ADD CONSTRAINT `transaksi_id_pelayan_foreign` FOREIGN KEY (`id_pelayan`) REFERENCES `users` (`id`);

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
