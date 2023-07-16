-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2023 at 02:21 PM
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
  `nama` varchar(255) NOT NULL,
  `no_ktp` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `jk` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `foto_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bag_dapur`
--

INSERT INTO `bag_dapur` (`id`, `id_user`, `nama`, `no_ktp`, `tgl_lahir`, `no_hp`, `jk`, `email`, `alamat`, `foto`, `foto_url`, `created_at`, `updated_at`, `deleted_at`) VALUES
('ae5769c8-2779-4f62-b97b-548d0cdfe2fb', '1e9d635f-4784-4c05-a347-e54599a843f2', 'Reza', '321321141241', '2023-07-15', '0878282826877', 'Laki-Laki', 'dapur@gmail.com', 'abc', 'Reza-1689430648.jpg', 'http://localhost:8000/foto/Reza-1689430648.jpg', '2023-07-15 07:17:28', '2023-07-15 07:17:28', NULL),
('cc61c406-598d-4969-8d57-ce82972b9c48', '1e9d635f-4784-4c05-a347-e54599a843f2', 'Reza', '34243242423', '2023-07-02', '0878282826876', 'Laki-Laki', 'dapur@gmail.com', 'abc', 'Reza-1689430523.jpg', 'http://localhost:8000/foto/Reza-1689430523.jpg', '2023-07-15 07:15:23', '2023-07-15 07:16:33', '2023-07-15 07:16:33');

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
('037f4d03-c18b-454a-9d17-f87dcfb2ce30', 'garam', 5.00, 'kg', NULL, '2023-07-15 07:32:09', '2023-07-15 07:32:09');

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
('56e2be4d-0247-4df4-ab6b-d49b39bf8eda', 'AK001', 'Ayam Kampung', 'Makanan', 'abc', 'abc', 'Ayam Kampung-1689431356.jpg', 'http://localhost:8000/foto/Ayam Kampung-1689431356.jpg', 5000.00, '2023-07-15 07:30:21', '2023-07-15 07:29:16', '2023-07-15 07:30:21'),
('7a475ba5-53bb-4718-83fd-113467f4f549', 'IB001', 'ikan bakar', 'Makanan', 'kecap dll', 'abc', 'ikan bakar-1689494783.jpg', 'http://localhost:8000/foto/ikan bakar-1689494783.jpg', 20000.00, NULL, '2023-07-16 01:06:24', '2023-07-16 01:06:24'),
('978c66f0-34c4-48d8-913f-dcaef049266a', 'AK001', 'Ayam Kampung', 'Makanan', 'garam', 'abc', 'Ayam Kampung-1689434578.jpg', 'http://localhost:8000/foto/Ayam Kampung-1689434578.jpg', 5000.00, NULL, '2023-07-15 08:22:58', '2023-07-15 08:22:58');

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
(10, '2023_07_10_040709_create_transaksi_table', 1),
(11, '2023_07_12_160006_create_transaksi_detail_table', 1),
(12, '2023_07_15_154725_add_softdelete_in_transaksi_table', 2),
(14, '2023_07_16_020028_add_statusbayar_in_transaksi_table', 3);

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
(2, 'App\\Models\\User', '33ac5b4a-e6f5-41a5-abdd-d828b53366b6'),
(3, 'App\\Models\\User', '1e9d635f-4784-4c05-a347-e54599a843f2');

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
(1, 'konsumen', 'web', '2023-07-15 06:45:55', '2023-07-15 06:45:55'),
(2, 'superadmin', 'web', '2023-07-15 06:46:04', '2023-07-15 06:46:04'),
(3, 'bag_dapur', 'web', '2023-07-15 06:46:36', '2023-07-15 06:46:36');

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
  `tgl_transaksi` date NOT NULL,
  `total` double(8,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `no_meja` varchar(255) NOT NULL,
  `status_bayar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_konsumen`, `id_bag_dapur`, `tgl_transaksi`, `total`, `status`, `created_at`, `updated_at`, `deleted_at`, `no_meja`, `status_bayar`) VALUES
('013057fc-2e37-4d2f-b66f-fb34c963fcdd', '33ac5b4a-e6f5-41a5-abdd-d828b53366b6', 'ae5769c8-2779-4f62-b97b-548d0cdfe2fb', '2023-07-22', 5000.00, '1', '2023-07-15 20:27:18', '2023-07-15 20:28:07', '2023-07-15 20:28:07', '002', '2'),
('0e373bec-2508-4a9e-894b-52f0fe13466f', '33ac5b4a-e6f5-41a5-abdd-d828b53366b6', 'ae5769c8-2779-4f62-b97b-548d0cdfe2fb', '2023-07-01', 5000.00, '2', '2023-07-15 20:26:38', '2023-07-15 20:28:09', '2023-07-15 20:28:09', '001', '1'),
('35c774ee-e84a-4dcd-9195-137dcaf5bcf9', '33ac5b4a-e6f5-41a5-abdd-d828b53366b6', 'ae5769c8-2779-4f62-b97b-548d0cdfe2fb', '2023-07-16', 5000.00, '2', '2023-07-15 19:26:41', '2023-07-15 20:28:10', '2023-07-15 20:28:10', '99', '2'),
('554f181e-316b-4fa1-b5cd-bc712533d4be', '33ac5b4a-e6f5-41a5-abdd-d828b53366b6', 'ae5769c8-2779-4f62-b97b-548d0cdfe2fb', '2023-07-22', 5000.00, '1', '2023-07-15 08:42:53', '2023-07-15 08:48:45', '2023-07-15 08:48:45', '', ''),
('5f2f5d1d-4cc2-4ab1-bff4-d0314bd077e9', '1e9d635f-4784-4c05-a347-e54599a843f2', 'ae5769c8-2779-4f62-b97b-548d0cdfe2fb', '2023-07-15', 20000.00, '1', '2023-07-15 08:39:56', '2023-07-15 08:48:48', '2023-07-15 08:48:48', '', ''),
('96c506c2-637f-484c-90f4-64ae1b5fcaca', '33ac5b4a-e6f5-41a5-abdd-d828b53366b6', 'ae5769c8-2779-4f62-b97b-548d0cdfe2fb', '2023-07-16', 50000.00, '1', '2023-07-16 01:08:00', '2023-07-16 01:08:00', NULL, '001', '1'),
('98cb6f70-2585-4923-be4e-8ba69db9fb9f', '33ac5b4a-e6f5-41a5-abdd-d828b53366b6', 'ae5769c8-2779-4f62-b97b-548d0cdfe2fb', '2023-07-11', 0.00, '1', '2023-07-16 00:37:10', '2023-07-16 00:37:21', '2023-07-16 00:37:21', '01', '1'),
('a401373b-024d-4316-94f7-c7917118d64d', '1e9d635f-4784-4c05-a347-e54599a843f2', 'ae5769c8-2779-4f62-b97b-548d0cdfe2fb', '2023-07-15', 10000.00, '1', '2023-07-15 08:44:40', '2023-07-15 08:48:50', '2023-07-15 08:48:50', '', '');

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
('33d060bf-27be-4bca-af54-b136ddf29d9d', '978c66f0-34c4-48d8-913f-dcaef049266a', '96c506c2-637f-484c-90f4-64ae1b5fcaca', 2, 5000.00, 10000.00, '2023-07-16 01:08:00', '2023-07-16 01:08:00'),
('5a52bbb5-3621-492a-904b-2666c2cf9da3', '978c66f0-34c4-48d8-913f-dcaef049266a', 'a401373b-024d-4316-94f7-c7917118d64d', 2, 5000.00, 10000.00, '2023-07-15 08:44:40', '2023-07-15 08:44:40'),
('708b9fe6-81c6-4d12-a379-2cc4de85373f', '978c66f0-34c4-48d8-913f-dcaef049266a', '35c774ee-e84a-4dcd-9195-137dcaf5bcf9', 1, 5000.00, 5000.00, '2023-07-15 19:26:41', '2023-07-15 19:26:41'),
('71bf2f2c-bd70-4699-9c2e-2d397382640d', '978c66f0-34c4-48d8-913f-dcaef049266a', '0e373bec-2508-4a9e-894b-52f0fe13466f', 1, 5000.00, 5000.00, '2023-07-15 20:26:38', '2023-07-15 20:26:38'),
('9dd91747-ef2c-418e-afe3-00c830af080d', '7a475ba5-53bb-4718-83fd-113467f4f549', '96c506c2-637f-484c-90f4-64ae1b5fcaca', 2, 20000.00, 40000.00, '2023-07-16 01:08:00', '2023-07-16 01:08:00'),
('a85a5ec3-92af-477f-89c8-fa1ccb2c4bfd', '978c66f0-34c4-48d8-913f-dcaef049266a', '5f2f5d1d-4cc2-4ab1-bff4-d0314bd077e9', 4, 5000.00, 20000.00, '2023-07-15 08:39:56', '2023-07-15 08:39:56'),
('bf897dbd-7542-4341-a702-48acaa87146a', '978c66f0-34c4-48d8-913f-dcaef049266a', '554f181e-316b-4fa1-b5cd-bc712533d4be', 1, 5000.00, 5000.00, '2023-07-15 08:42:53', '2023-07-15 08:42:53'),
('cf8ef245-0eeb-4750-83bb-97be125c6094', '978c66f0-34c4-48d8-913f-dcaef049266a', '013057fc-2e37-4d2f-b66f-fb34c963fcdd', 1, 5000.00, 5000.00, '2023-07-15 20:27:18', '2023-07-15 20:27:18');

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
('1e9d635f-4784-4c05-a347-e54599a843f2', 'dapur', 'dapur@gmail.com', NULL, '$2y$10$s.PoC4NR7uVHwwxbrtnHIOa3DqHxm6FWcECP.DXSuEv6UeO1B06bq', NULL, '2023-07-15 07:13:09', '2023-07-15 07:13:09'),
('33ac5b4a-e6f5-41a5-abdd-d828b53366b6', 'admin', 'admin@gmail.com', NULL, '$2y$10$brW0aqAXh2xkBHXtMZVPh.DAHNxrUizE.J5F9EtQVASAR0enrtfDa', NULL, NULL, NULL);

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
  ADD KEY `transaksi_id_bag_dapur_foreign` (`id_bag_dapur`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  ADD CONSTRAINT `transaksi_id_konsumen_foreign` FOREIGN KEY (`id_konsumen`) REFERENCES `users` (`id`);

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
