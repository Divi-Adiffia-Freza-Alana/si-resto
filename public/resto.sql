-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2023 at 02:22 PM
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
('af25ef09-5530-4ea9-92de-9cc5e9f1fb98', '718568ba-a2c2-40e2-a60b-a4b7f9b8e2b6', '0878282826878', 'Perempuan', 'Hadir', '2023-07-20 04:40:51', '2023-07-20 05:21:43', NULL);

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
('64a71619-38a9-41f9-b0b2-edce51ecc794', '001', 'Kosong', 'meja depan', '2023-07-20 04:42:08', '2023-07-20 04:55:31', NULL);

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
('5bb3134d-523d-4b82-91c7-547480d299fa', 'Kj001', 'Singkong keju', 'Makanan', 'abc', 'ABC', 'Singkong keju-1689853297.jpg', 'http://localhost:8000/foto/Singkong keju-1689853297.jpg', 50000.00, NULL, '2023-07-20 04:41:37', '2023-07-20 04:41:37');

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
(13, '2023_07_20_023007_create_transaksi_detail_table', 1);

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
(1, 'App\\Models\\User', '9b667fe5-ed90-4642-9169-fc5682a40300'),
(2, 'App\\Models\\User', '718568ba-a2c2-40e2-a60b-a4b7f9b8e2b6'),
(3, 'App\\Models\\User', '2d7bba02-896e-49a4-90b1-6282e492a1d8');

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
('250d9dfe-694e-471d-a9e4-d3b672925e5f', '2d7bba02-896e-49a4-90b1-6282e492a1d8', '0878282826877', 'Laki-Laki', 'Tidak Hadir', '2023-07-20 04:41:03', '2023-07-20 05:21:48', NULL);

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

INSERT INTO `transaksi` (`id`, `id_konsumen`, `id_bag_dapur`, `id_pelayan`, `id_meja`, `tgl_transaksi`, `total`, `status`, `status_bayar`, `created_at`, `updated_at`, `deleted_at`) VALUES
('1a7c013a-8295-428c-ab9e-0f3ec1a86313', '9b667fe5-ed90-4642-9169-fc5682a40300', 'af25ef09-5530-4ea9-92de-9cc5e9f1fb98', '250d9dfe-694e-471d-a9e4-d3b672925e5f', '64a71619-38a9-41f9-b0b2-edce51ecc794', '2023-07-20', 50000.00, '1', '1', '2023-07-20 04:42:24', '2023-07-20 04:42:24', NULL);

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
('3472731d-4e07-41fa-8a02-655edd32392e', '5bb3134d-523d-4b82-91c7-547480d299fa', '1a7c013a-8295-428c-ab9e-0f3ec1a86313', 1, 50000.00, 50000.00, '2023-07-20 04:42:24', '2023-07-20 04:42:24');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
('2d7bba02-896e-49a4-90b1-6282e492a1d8', 'danang', 'pelayan@gmail.com', NULL, '$2y$10$YuhMu4j7Gqy69ve5ea20mOp.1DXGpp0lwR8mswNfRA3UgobraC4K6', NULL, '2023-07-20 04:40:21', '2023-07-20 04:40:21'),
('718568ba-a2c2-40e2-a60b-a4b7f9b8e2b6', 'intan', 'dapur@gmail.com', NULL, '$2y$10$xf2lJt8J4qpeR/ANsa12dOURy7YHLf2c99Q8gz3Svxf3K3bigj33C', NULL, '2023-07-20 04:39:57', '2023-07-20 04:39:57'),
('9b667fe5-ed90-4642-9169-fc5682a40300', 'kasir', 'kasir@gmail.com', NULL, '$2y$10$THIi0nIIJZges/wmu.NKjuKIfIwg9M1svStuh3Bu0K60THmwd30jq', NULL, NULL, NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
