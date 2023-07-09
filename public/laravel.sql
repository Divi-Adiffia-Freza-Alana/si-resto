-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jul 2023 pada 08.00
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahan_baku`
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
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `kandang`
--

CREATE TABLE `kandang` (
  `id` char(36) NOT NULL,
  `id_keeper` char(36) NOT NULL,
  `id_zona` char(36) NOT NULL,
  `kode_kandang` varchar(255) NOT NULL,
  `jenis_kandang` varchar(255) NOT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kandang_foto`
--

CREATE TABLE `kandang_foto` (
  `id` char(36) NOT NULL,
  `id_kandang` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keeper`
--

CREATE TABLE `keeper` (
  `id` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `is_pic` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keeper_foto`
--

CREATE TABLE `keeper_foto` (
  `id` char(36) NOT NULL,
  `id_keeper` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurir`
--

CREATE TABLE `kurir` (
  `id` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_ktp` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `jk` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mastersatwa`
--

CREATE TABLE `mastersatwa` (
  `id` char(36) NOT NULL,
  `namasatwa` varchar(255) NOT NULL,
  `kingdom` varchar(255) NOT NULL,
  `filum` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `ordo` varchar(255) NOT NULL,
  `famili` varchar(255) NOT NULL,
  `subfamili` varchar(255) NOT NULL,
  `genus` varchar(255) NOT NULL,
  `spesies` varchar(255) NOT NULL,
  `ancaman` varchar(255) NOT NULL,
  `penyebaran` varchar(255) NOT NULL,
  `makanan` varchar(255) NOT NULL,
  `habitat` varchar(255) NOT NULL,
  `trenpopulasi` varchar(255) NOT NULL,
  `funfact` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `komposisi` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `nama`, `jenis`, `komposisi`, `deskripsi`, `deleted_at`, `created_at`, `updated_at`) VALUES
('b2401b89-1e02-11ee-832b-4cedfb0f3c69', 'sdadsadas', 'dasdsdad', 'dasdas', 'dasdas', NULL, NULL, NULL),
('d3131af9-1e0c-11ee-832b-4cedfb0f3c69', 'Nasi goreng ', 'makanan', 'telor,nasi, Kecap', 'Menmbuat dengan cara menggorang ', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(79, '2014_10_12_000000_create_users_table', 1),
(80, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(81, '2019_08_19_000000_create_failed_jobs_table', 1),
(82, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(83, '2023_05_11_022815_create_mastersatwa_table', 1),
(84, '2023_06_05_015852_create_keeper_table', 1),
(85, '2023_06_05_020312_create_keeper_foto_table', 1),
(86, '2023_06_05_020430_create_zona_table', 1),
(87, '2023_06_05_020517_create_kandang_table', 1),
(88, '2023_06_05_020622_create_kandang_foto_table', 1),
(89, '2023_06_05_021523_create_satwa_table', 1),
(90, '2023_06_05_021629_create_satwa_kandang_table', 1),
(91, '2023_06_05_021734_create_satwa_foto_table', 1),
(92, '2023_06_05_022858_create_satwa_in_table', 1),
(93, '2023_06_05_023015_create_satwa_in_dokumen_table', 1),
(94, '2023_06_19_021329_add_url_in_keeper_foto_table', 1),
(95, '2023_06_21_032821_create_permission_tables', 1),
(96, '2023_06_25_023548_add_softdelete_in_satwa_table', 1),
(97, '2023_06_25_072836_add_url_in_satwa_foto_table', 1),
(98, '2023_06_25_074959_add_url_in_satwa_in_dokumen_table', 1),
(99, '2023_06_26_082506_create_satwa_die_table', 1),
(100, '2023_06_26_085400_create_satwa_out_table', 1),
(101, '2023_06_29_081637_create_kurir_table', 1),
(102, '2023_06_29_081707_create_bahan_baku_table', 1),
(103, '2023_07_02_153855_create_menu_table', 1),
(104, '2023_07_03_170507_create_transaction_bahanbaku_table', 1),
(105, '2023_07_09_021931_create_produk_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
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
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `produks`
--

CREATE TABLE `produks` (
  `id` char(36) NOT NULL,
  `id_menu` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produks`
--

INSERT INTO `produks` (`id`, `id_menu`, `name`, `description`, `photo`, `price`, `created_at`, `updated_at`) VALUES
('1', 'd3131af9-1e0c-11ee-832b-4cedfb0f3c69', 'NASI GORENG ', 'NASI + TELOR ', 'https://cdn1-production-images-kly.akamaized.net/a6xvLhjIWqlrNOdjaI40qxT_Jr0=/0x148:1920x1230/640x360/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3093328/original/069244600_1585909700-fried-2509089_1920.jpg', 21000.00, NULL, NULL),
('fb8aae47-1e02-11ee-832b-4cedfb0f3c69', 'b2401b89-1e02-11ee-832b-4cedfb0f3c69', 'dasdas', 'sdadsada', 'https://images.samsung.com/is/image/samsung/p6pim/id/sm-a546elvdxid/gallery/id-galaxy-a54-5g-sm-a546-sm-a546elvdxid-535684201?$360_288_PNG$', 10000.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `satwa`
--

CREATE TABLE `satwa` (
  `id` char(36) NOT NULL,
  `id_mastersatwa` char(36) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `filial` varchar(3) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `induk_jantan` varchar(30) NOT NULL,
  `induk_betina` varchar(30) NOT NULL,
  `status_breeding` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `ciri` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `satwa_die`
--

CREATE TABLE `satwa_die` (
  `id` char(36) NOT NULL,
  `id_satwa` char(36) NOT NULL,
  `Penyebab` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_mati` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `satwa_foto`
--

CREATE TABLE `satwa_foto` (
  `id_satwa` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` char(36) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `satwa_in`
--

CREATE TABLE `satwa_in` (
  `id` char(36) NOT NULL,
  `id_satwa` char(36) NOT NULL,
  `asal_usul` varchar(30) NOT NULL,
  `nama_instansi` varchar(100) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `satwa_in_dokumen`
--

CREATE TABLE `satwa_in_dokumen` (
  `id` char(36) NOT NULL,
  `id_satwa` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `satwa_kandang`
--

CREATE TABLE `satwa_kandang` (
  `id` char(36) NOT NULL,
  `id_kandang` char(36) NOT NULL,
  `id_satwa` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `satwa_out`
--

CREATE TABLE `satwa_out` (
  `id` char(36) NOT NULL,
  `id_satwa` char(36) NOT NULL,
  `instansi` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_keluar` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_bahanbaku`
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
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
('200887f5-cf85-479f-ad76-ca98b244d26c', 'admin', 'admin@gmail.com', NULL, '$2y$10$qTRrjqZP/Dhq4BRKglwUW.ZxhJAoBMQATQrCtQ7NNEUsl..9AIZ5m', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `zona`
--

CREATE TABLE `zona` (
  `id` char(36) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bahan_baku`
--
ALTER TABLE `bahan_baku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kandang`
--
ALTER TABLE `kandang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kandang_id_keeper_foreign` (`id_keeper`),
  ADD KEY `kandang_id_zona_foreign` (`id_zona`);

--
-- Indeks untuk tabel `kandang_foto`
--
ALTER TABLE `kandang_foto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kandang_foto_id_kandang_foreign` (`id_kandang`);

--
-- Indeks untuk tabel `keeper`
--
ALTER TABLE `keeper`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keeper_foto`
--
ALTER TABLE `keeper_foto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keeper_foto_id_keeper_foreign` (`id_keeper`);

--
-- Indeks untuk tabel `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mastersatwa`
--
ALTER TABLE `mastersatwa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produk_id_menu_foreign` (`id_menu`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `satwa`
--
ALTER TABLE `satwa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `satwa_id_mastersatwa_foreign` (`id_mastersatwa`);

--
-- Indeks untuk tabel `satwa_die`
--
ALTER TABLE `satwa_die`
  ADD PRIMARY KEY (`id`),
  ADD KEY `satwa_die_id_satwa_foreign` (`id_satwa`);

--
-- Indeks untuk tabel `satwa_foto`
--
ALTER TABLE `satwa_foto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `satwa_foto_id_satwa_foreign` (`id_satwa`);

--
-- Indeks untuk tabel `satwa_in`
--
ALTER TABLE `satwa_in`
  ADD PRIMARY KEY (`id`),
  ADD KEY `satwa_in_id_satwa_foreign` (`id_satwa`);

--
-- Indeks untuk tabel `satwa_in_dokumen`
--
ALTER TABLE `satwa_in_dokumen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `satwa_in_dokumen_id_satwa_foreign` (`id_satwa`);

--
-- Indeks untuk tabel `satwa_kandang`
--
ALTER TABLE `satwa_kandang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `satwa_kandang_id_kandang_foreign` (`id_kandang`),
  ADD KEY `satwa_kandang_id_satwa_foreign` (`id_satwa`);

--
-- Indeks untuk tabel `satwa_out`
--
ALTER TABLE `satwa_out`
  ADD PRIMARY KEY (`id`),
  ADD KEY `satwa_out_id_satwa_foreign` (`id_satwa`);

--
-- Indeks untuk tabel `transaction_bahanbaku`
--
ALTER TABLE `transaction_bahanbaku`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_bahanbaku_id_bahanbaku_foreign` (`id_bahanbaku`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `zona`
--
ALTER TABLE `zona`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kandang`
--
ALTER TABLE `kandang`
  ADD CONSTRAINT `kandang_id_keeper_foreign` FOREIGN KEY (`id_keeper`) REFERENCES `keeper` (`id`),
  ADD CONSTRAINT `kandang_id_zona_foreign` FOREIGN KEY (`id_zona`) REFERENCES `zona` (`id`);

--
-- Ketidakleluasaan untuk tabel `kandang_foto`
--
ALTER TABLE `kandang_foto`
  ADD CONSTRAINT `kandang_foto_id_kandang_foreign` FOREIGN KEY (`id_kandang`) REFERENCES `kandang` (`id`);

--
-- Ketidakleluasaan untuk tabel `keeper_foto`
--
ALTER TABLE `keeper_foto`
  ADD CONSTRAINT `keeper_foto_id_keeper_foreign` FOREIGN KEY (`id_keeper`) REFERENCES `keeper` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produks`
--
ALTER TABLE `produks`
  ADD CONSTRAINT `produk_id_menu_foreign` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`);

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `satwa`
--
ALTER TABLE `satwa`
  ADD CONSTRAINT `satwa_id_mastersatwa_foreign` FOREIGN KEY (`id_mastersatwa`) REFERENCES `mastersatwa` (`id`);

--
-- Ketidakleluasaan untuk tabel `satwa_die`
--
ALTER TABLE `satwa_die`
  ADD CONSTRAINT `satwa_die_id_satwa_foreign` FOREIGN KEY (`id_satwa`) REFERENCES `satwa` (`id`);

--
-- Ketidakleluasaan untuk tabel `satwa_foto`
--
ALTER TABLE `satwa_foto`
  ADD CONSTRAINT `satwa_foto_id_satwa_foreign` FOREIGN KEY (`id_satwa`) REFERENCES `satwa` (`id`);

--
-- Ketidakleluasaan untuk tabel `satwa_in`
--
ALTER TABLE `satwa_in`
  ADD CONSTRAINT `satwa_in_id_satwa_foreign` FOREIGN KEY (`id_satwa`) REFERENCES `satwa` (`id`);

--
-- Ketidakleluasaan untuk tabel `satwa_in_dokumen`
--
ALTER TABLE `satwa_in_dokumen`
  ADD CONSTRAINT `satwa_in_dokumen_id_satwa_foreign` FOREIGN KEY (`id_satwa`) REFERENCES `satwa` (`id`);

--
-- Ketidakleluasaan untuk tabel `satwa_kandang`
--
ALTER TABLE `satwa_kandang`
  ADD CONSTRAINT `satwa_kandang_id_kandang_foreign` FOREIGN KEY (`id_kandang`) REFERENCES `kandang` (`id`),
  ADD CONSTRAINT `satwa_kandang_id_satwa_foreign` FOREIGN KEY (`id_satwa`) REFERENCES `satwa` (`id`);

--
-- Ketidakleluasaan untuk tabel `satwa_out`
--
ALTER TABLE `satwa_out`
  ADD CONSTRAINT `satwa_out_id_satwa_foreign` FOREIGN KEY (`id_satwa`) REFERENCES `satwa` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaction_bahanbaku`
--
ALTER TABLE `transaction_bahanbaku`
  ADD CONSTRAINT `transaction_bahanbaku_id_bahanbaku_foreign` FOREIGN KEY (`id_bahanbaku`) REFERENCES `bahan_baku` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
