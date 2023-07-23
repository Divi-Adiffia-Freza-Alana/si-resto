-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2023 at 11:02 AM
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
('44880533-fa4d-4850-8cfc-f5a9a90ce8d6', '001', 'Terpakai', 'a', '2023-07-21 07:56:53', '2023-07-22 21:17:33', NULL),
('c691be46-d8d0-41ff-9a96-556c313810c0', '002', 'Terpakai', 'b', '2023-07-21 07:57:02', '2023-07-22 21:18:16', NULL);

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
('c7f996d7-346c-44ae-8916-66806564c86f', 'AG1', 'Ayam Goreng', 'Makanan', 'rica rica', 'abc', 'Ayam Goreng-1689951154.jpg', 'http://localhost:8000/foto/Ayam Goreng-1689951154.jpg', 15000.00, NULL, '2023-07-21 07:52:34', '2023-07-21 07:52:34');

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
(16, '2023_07_23_041219_addkodetransaksi_in_transaksi_table', 3);

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
(1, 'App\\Models\\User', '3f606156-a2f4-4164-9b30-59c326070fbf'),
(2, 'App\\Models\\User', 'a9d73c30-b783-4b00-88cd-cffd95947ff5'),
(3, 'App\\Models\\User', '5283be95-ab24-4838-b92e-35ffaead2619'),
(4, 'App\\Models\\User', '2150ed68-31d2-4a56-9ad6-05f00f345268');

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
('16ca3a56-5360-453e-9e77-c4f6d11bc18e', '2150ed68-31d2-4a56-9ad6-05f00f345268', '4b8b25bb-2391-431a-bd78-760e51ac5915', 'cbbeea00-4705-48f3-9404-9ad993e7ed01', '44880533-fa4d-4850-8cfc-f5a9a90ce8d6', '', '2023-07-21', 15000.00, '3', '2', '2023-07-21 07:57:59', '2023-07-22 20:39:53', '2023-07-22 20:39:53'),
('7889113c-01fe-4926-a226-1d9debe6a968', '2150ed68-31d2-4a56-9ad6-05f00f345268', '4b8b25bb-2391-431a-bd78-760e51ac5915', 'cbbeea00-4705-48f3-9404-9ad993e7ed01', 'c691be46-d8d0-41ff-9a96-556c313810c0', 'TR202307232', '2023-07-23', 15000.00, '1', '1', '2023-07-22 21:18:16', '2023-07-22 21:18:16', NULL),
('a8073e66-a27c-4a63-923f-20c2ddd04c26', '2150ed68-31d2-4a56-9ad6-05f00f345268', '4b8b25bb-2391-431a-bd78-760e51ac5915', 'cbbeea00-4705-48f3-9404-9ad993e7ed01', '44880533-fa4d-4850-8cfc-f5a9a90ce8d6', 'TR202307231', '2023-07-23', 15000.00, '1', '1', '2023-07-22 21:17:33', '2023-07-22 21:17:33', NULL),
('c3390ec3-2cb7-4868-8582-5948c4e09cdd', '2150ed68-31d2-4a56-9ad6-05f00f345268', '4b8b25bb-2391-431a-bd78-760e51ac5915', 'cbbeea00-4705-48f3-9404-9ad993e7ed01', 'c691be46-d8d0-41ff-9a96-556c313810c0', '', '2023-07-21', 15000.00, '1', '1', '2023-07-21 08:00:40', '2023-07-22 20:39:51', '2023-07-22 20:39:51');

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
('600030d2-2b83-49b1-94c8-d2e0db68e186', 'c7f996d7-346c-44ae-8916-66806564c86f', 'a8073e66-a27c-4a63-923f-20c2ddd04c26', 1, 15000.00, 15000.00, '2023-07-22 21:17:33', '2023-07-22 21:17:33'),
('819d4ddf-f6be-4c27-b590-0fb9ef406ab5', 'c7f996d7-346c-44ae-8916-66806564c86f', '7889113c-01fe-4926-a226-1d9debe6a968', 1, 15000.00, 15000.00, '2023-07-22 21:18:16', '2023-07-22 21:18:16'),
('8fd3395c-5eca-48fa-ad7c-5b94f04a6bfc', 'c7f996d7-346c-44ae-8916-66806564c86f', '16ca3a56-5360-453e-9e77-c4f6d11bc18e', 1, 15000.00, 15000.00, '2023-07-21 07:57:59', '2023-07-21 07:57:59'),
('9cbc39fa-4a1a-4437-a9c6-37d55f1b498f', 'c7f996d7-346c-44ae-8916-66806564c86f', 'c3390ec3-2cb7-4868-8582-5948c4e09cdd', 1, 15000.00, 15000.00, '2023-07-21 08:00:40', '2023-07-21 08:00:40');

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
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
('2150ed68-31d2-4a56-9ad6-05f00f345268', 'tasya', 'tasya@gmail.com', NULL, '$2y$10$LAk/N4tkF2OZPCZZ02ZLmOH.d9Z23o8o9ljwyX77x8mXK9HmZZ9KK', NULL, '2023-07-21 07:50:27', '2023-07-21 07:50:27', NULL),
('3f606156-a2f4-4164-9b30-59c326070fbf', 'kasir', 'kasir@gmail.com', NULL, '$2y$10$OOrHToGig.QKIM3/Rp2G4uQaiEcrfVSgyrksveWgUEKtCJPF3UoDu', NULL, NULL, NULL, NULL),
('5283be95-ab24-4838-b92e-35ffaead2619', 'adit', 'pelayan@gmail.com', NULL, '$2y$10$8PaUkaNTz/J5xo6kqQpoU.2z1uBV0Rm/rHf02vQsT.le.ayQhdtk.', NULL, '2023-07-21 07:54:46', '2023-07-21 07:54:46', NULL),
('a9d73c30-b783-4b00-88cd-cffd95947ff5', 'glen', 'dapur@gmail.com', NULL, '$2y$10$8DE/UMxiLiRCL04.6f6zxOEjm/5cjjXOybeE5aJthb7I0LwXMa8kK', NULL, '2023-07-21 07:54:23', '2023-07-21 07:54:23', NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
