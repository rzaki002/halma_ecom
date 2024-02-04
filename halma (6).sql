-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Sep 2023 pada 06.31
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
-- Database: `halma`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `no_hp`, `nama`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, '83018039', 'Rahmat Zaki', 'zaki12@gmail.com', '$2y$10$N1wfi9NCsdW7n0B838hx/eciSinqxVmhVDkJUQYuAIM3fnc/9LhCC', '2023-07-31 05:08:51', '2023-07-31 05:08:51'),
(2, '83018039', 'nagato', 'nagato@gmail.com', '$2y$10$oCtJV2aE8rjQvRLz2HVTSehWFbfJb323y2MN/JgoFsKmCJSoAj5f2', '2023-08-02 06:42:34', '2023-08-02 06:42:34'),
(3, '83018039', 'Rahmat Zaki', 'zakirahmat730@gmail.com', '$2y$10$OG0IsZDaCmj5PzlSSaZcFOu/bGj.nD0HQfKN2UIaUWPd0pX7EGNSu', '2023-08-04 05:53:33', '2023-08-04 05:53:33'),
(4, '83018039', 'zaki7', 'zaki7@gmail.com', '$2y$10$BmmaytjqHk3x6WILaPMxmeon7FXSbXFyp46nrOOfB9HRK0hANDb/2', '2023-08-06 20:29:57', '2023-08-06 20:29:57'),
(6, '83018039', 'igor', 'igor@gmail.com', '$2y$10$USY6Jm2x2cvAw1Gi7clG8u4jH8f7uwcBF/YSNVZqVQfkdgvl6g.Sq', '2023-08-12 22:53:32', '2023-08-12 22:53:32'),
(7, '83018039', 'customer2', 'customer2@gmail.com', '$2y$10$gkS8fJyEM4lnWm4xzLgoLuWWHyt2YVwG1EAQSKs0Xb6AwOhtlreGK', '2023-08-12 22:54:18', '2023-08-12 22:54:18'),
(8, '83018039', 'denis', 'denis@gmail.com', '$2y$10$x95jq/EKaNF1j9eKW6VhPeoTbS4gB5qbuLxwYZnqD3zQHLNRGIIoO', '2023-08-14 23:04:29', '2023-08-14 23:04:29'),
(9, '83018039', 'denis', 'denis@gmail.com', '$2y$10$5Z5P6QE0sf0o5UtgiyYgx.6bKhfVB8chV9AZxC7r1./FVsoSHMl5y', '2023-08-14 23:04:30', '2023-08-14 23:04:30'),
(10, '83018039', 'denis', 'denis@gmail.com', '$2y$10$hgxT.wa/6PMLnhuOc8qaheS8HecKLNy8xxuz03Gzw8GjUVpl3LWvi', '2023-08-14 23:04:46', '2023-08-14 23:04:46'),
(11, '83018039', 'dedi', 'dedi@gmail.com', '$2y$10$cjjp8jLdIkk/lQ0Bptz1sObrw.XGTPwznHibjXDLeULEf9TZiKdli', '2023-08-14 23:05:10', '2023-08-14 23:05:10');

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
-- Struktur dari tabel `kategori_produks`
--

CREATE TABLE `kategori_produks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_produks`
--

INSERT INTO `kategori_produks` (`id`, `nama`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Souvernirs', 'Name Tag ', '2023-07-24 01:07:04', '2023-08-06 21:16:37'),
(2, 'Banner Bahan Flexy dan Cloths', 'Banner  ', '2023-08-06 21:16:19', '2023-08-06 21:16:19'),
(3, 'Stiker Meteran', 'Stiker', '2023-08-06 21:17:29', '2023-08-06 21:17:29'),
(4, 'Kertas & Stiker Ukuran A3+', 'Kertas, stiker', '2023-08-06 21:18:05', '2023-08-06 21:18:05'),
(5, 'Offset', 'offset', '2023-08-30 21:40:27', '2023-08-30 21:40:27'),
(6, 'Produk Kertas', 'Produk kertas', '2023-08-30 22:38:05', '2023-08-30 22:38:05');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_03_053919_create_satuans_table', 1),
(6, '2023_05_03_060521_create_kategori_produks_table', 1),
(7, '2023_05_03_061607_create_produks_table', 1),
(8, '2023_05_03_064058_create_customers_table', 1),
(9, '2023_05_03_065924_create_orders_table', 1),
(10, '2023_05_03_070848_create_order_details_table', 1),
(11, '2023_06_04_143802_create_permission_tables', 1),
(12, '2023_07_25_092853_create_pembayarans_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 19);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_customer` int(11) NOT NULL,
  `catatan` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `status_pengambilan` enum('Ambil Sendiri','Kirim') NOT NULL,
  `alamat_kirim` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `status_bayar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `id_customer`, `catatan`, `status`, `status_pengambilan`, `alamat_kirim`, `ongkir`, `status_bayar`, `created_at`, `updated_at`) VALUES
(1, 8, 'ladlaldk', 'proses', 'Kirim', 'palembang', 12000, NULL, '2023-07-31 05:38:11', '2023-07-31 05:38:11'),
(2, 9, 'beli boss', 'proses', 'Kirim', 'jalan pangeran ayin', 12000, NULL, '2023-07-31 07:17:03', '2023-07-31 07:17:03'),
(3, 9, 'beli boss', 'proses', 'Kirim', 'palembang', 12000, NULL, '2023-08-01 04:58:25', '2023-08-01 04:58:25'),
(4, 8, 'jdakldjal', 'proses', 'Kirim', 'Palembang', 12000, 'Pesanan Anda telah dibayar', '2023-08-02 05:50:40', '2023-08-03 06:06:14'),
(5, 1, 'khasdhkas', 'ashdaskhd', 'Ambil Sendiri', 'asdjahskdj', 1231232, 'dadjsnkasj', '2023-08-02 06:36:42', '2023-08-02 06:36:42'),
(6, 10, 'alkdjalk', 'proses', 'Kirim', 'adlkjaklfdla', 12000, 'Pesanan Anda telah dibayar', '2023-08-02 06:43:54', '2023-08-02 07:15:26'),
(7, 10, 'dlkadlla', 'proses', 'Kirim', 'Palalalal', 12000, NULL, '2023-08-02 06:50:04', '2023-08-02 06:50:04'),
(8, 2, 'kadjakjdal', 'proses', 'Kirim', 'Palembang', 12000, NULL, '2023-08-02 06:55:50', '2023-08-02 06:55:50'),
(9, 2, 'adaldk', 'proses', 'Kirim', 'lkajdladjl', 12000, 'Belum Bayar', '2023-08-02 06:58:21', '2023-08-02 06:58:21'),
(10, 1, 'beli boss', 'proses', 'Kirim', 'jalan pangeran ayin', 12000, 'Belum Bayar', '2023-08-02 10:18:59', '2023-08-02 10:18:59'),
(11, 1, 'beli boss', 'proses', 'Kirim', 'sako', 12000, 'Belum Bayar', '2023-08-02 10:31:03', '2023-08-02 10:31:03'),
(12, 1, 'beli boss', 'proses', 'Kirim', 'sako', 12000, 'Belum Bayar', '2023-08-02 10:34:02', '2023-08-02 10:34:02'),
(13, 1, 'beli boss', 'proses', 'Kirim', 'sako', 12000, 'Belum Bayar', '2023-08-02 10:34:25', '2023-08-02 10:34:25'),
(14, 1, 'beli boss', 'proses', 'Kirim', 'sako', 12000, 'Belum Bayar', '2023-08-02 10:35:41', '2023-08-02 10:35:41'),
(15, 1, 'tess', 'proses', 'Kirim', 'Jl Pangeran Ayin Sako', 12000, 'Belum Bayar', '2023-08-04 05:07:17', '2023-08-04 05:07:17'),
(16, 1, 'ladlaldk', 'proses', 'Kirim', 'jalan pangeran ayin', 12000, 'Belum Bayar', '2023-08-04 05:27:32', '2023-08-04 05:27:32'),
(17, 1, 'ladlaldk', 'proses', 'Kirim', 'jalan pangeran ayin', 12000, 'Belum Bayar', '2023-08-04 05:30:49', '2023-08-04 05:30:49'),
(18, 1, 'ladlaldk', 'proses', 'Kirim', 'jalan pangeran ayin', 12000, 'Belum Bayar', '2023-08-04 05:31:34', '2023-08-04 05:31:34'),
(19, 1, 'ladlaldk', 'proses', 'Kirim', 'jalan pangeran ayin', 12000, 'Belum Bayar', '2023-08-04 05:32:19', '2023-08-04 05:32:19'),
(20, 1, 'ladlaldk', 'proses', 'Kirim', 'jalan pangeran ayin', 12000, 'Belum Bayar', '2023-08-04 05:32:44', '2023-08-04 05:32:44'),
(21, 1, 'dadad', 'proses', 'Kirim', 'dada', 12000, 'Belum Bayar', '2023-08-04 05:39:13', '2023-08-04 05:39:13'),
(22, 1, 'dadad', 'proses', 'Kirim', 'dada', 12000, 'Belum Bayar', '2023-08-04 05:39:49', '2023-08-04 05:39:49'),
(23, 3, 'asd', 'proses', 'Kirim', 'jalan pangeran ayin', 12000, 'Transaksi sedang diproses', '2023-08-04 05:54:42', '2023-08-04 06:11:38'),
(24, 2, 'tolong buatkan', 'proses', 'Kirim', 'Jalan padang selsa', 12000, 'Belum Bayar', '2023-08-06 20:10:02', '2023-08-06 20:10:02'),
(25, 4, 'Cepat selesai', 'proses', 'Kirim', 'Jalan Pangeran Ayin Sako', 12000, 'Lunas', '2023-08-06 20:30:49', '2023-08-12 18:44:50'),
(26, 4, 'terangkan gambar design saya', 'proses', 'Kirim', 'jalan pangeran ayin', 12000, 'Lunas', '2023-08-06 23:03:47', '2023-08-12 18:46:36'),
(27, 4, 'asd', 'proses', 'Kirim', 'Jl Pangeran Ayin Sako', 12000, 'Lunas', '2023-08-07 04:27:26', '2023-08-12 18:58:37'),
(28, 4, 'adjakl', 'proses', 'Kirim', 'Palembang', 12000, 'Lunas', '2023-08-07 04:38:32', '2023-08-12 19:07:01'),
(29, 4, 'adjakl', 'proses', 'Kirim', 'Palembang', 12000, 'Lunas', '2023-08-07 04:38:47', '2023-08-12 19:18:31'),
(30, 4, 'asd', 'proses', 'Kirim', 'Palembang', 12000, 'Belum Bayar', '2023-08-09 04:13:22', '2023-08-09 04:13:22'),
(31, 4, 'asd', 'proses', 'Kirim', 'Palembang', 12000, 'Belum Bayar', '2023-08-09 04:17:58', '2023-08-09 04:17:58'),
(32, 4, 'asd', 'proses', 'Kirim', 'Palembang', 12000, 'Belum Bayar', '2023-08-09 04:18:30', '2023-08-09 04:18:30'),
(33, 4, 'asd', 'proses', 'Kirim', 'Palembang', 12000, 'Belum Bayar', '2023-08-09 04:19:09', '2023-08-09 04:19:09'),
(34, 4, 'asd', 'proses', 'Kirim', 'Palembang', 12000, 'Belum Bayar', '2023-08-09 04:19:17', '2023-08-09 04:19:17'),
(35, 4, 'asd', 'proses', 'Kirim', 'Palembang', 12000, 'Belum Bayar', '2023-08-09 04:29:30', '2023-08-09 04:29:30'),
(36, 4, 'tolong di percepat', 'proses', 'Kirim', 'kenten city', 12000, 'Belum Bayar', '2023-08-09 04:47:17', '2023-08-09 04:47:17'),
(38, 4, 'beli boss', 'proses', 'Kirim', 'jalan pangeran ayin', 12000, 'Belum Bayar', '2023-08-09 05:04:20', '2023-08-09 05:04:20'),
(45, 4, 'tolong di percepat', 'proses', 'Kirim', 'Jl Pangeran Ayin Sako', 12000, 'Lunas', '2023-08-12 05:14:55', '2023-08-12 05:16:35'),
(50, 7, 'asd', 'proses', 'Kirim', 'asd', 12000, 'Lunas', '2023-08-12 23:06:46', '2023-08-12 23:11:01'),
(52, 7, 'asd', 'proses', 'Kirim', 'asd', 12000, 'Lunas', '2023-08-12 23:13:20', '2023-08-12 23:14:27'),
(54, 7, 'asd', 'proses', 'Kirim', 'asd', 12000, 'Lunas', '2023-08-12 23:45:09', '2023-08-12 23:45:58'),
(57, 7, 'butuh cepat', 'proses', 'Kirim', 'Jalan srijaya 1', 12000, 'Lunas', '2023-08-14 17:40:18', '2023-08-14 17:41:39'),
(60, 7, 'tolong buat cepat', 'proses', 'Kirim', 'Jl Bangau', 12000, 'Lunas', '2023-08-14 22:34:58', '2023-08-14 22:36:39'),
(61, 11, 'butuh cepat', 'proses', 'Kirim', 'jalan pangeran ayin', 12000, 'Belum Bayar', '2023-08-14 23:07:21', '2023-08-14 23:07:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_details`
--

INSERT INTO `order_details` (`id`, `id_order`, `id_produk`, `qty`, `harga`, `deskripsi`, `file`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 12, 35000, 'Name Taga + Pita Gantung + Plastik', '20230731123811.jpg', '2023-07-31 05:38:11', '2023-07-31 05:38:11'),
(2, 2, 4, 12, 35000, 'Name Taga + Pita Gantung + Plastik', '20230731141703.jpg', '2023-07-31 07:17:03', '2023-07-31 07:17:03'),
(3, 3, 4, 1, 35000, 'Name Taga + Pita Gantung + Plastik', '20230801115825.jpg', '2023-08-01 04:58:25', '2023-08-01 04:58:25'),
(4, 4, 4, 12, 35000, 'Name Taga + Pita Gantung + Plastik', '20230802125040.jpg', '2023-08-02 05:50:40', '2023-08-02 05:50:40'),
(5, 6, 4, 12, 35000, 'Name Taga + Pita Gantung + Plastik', '20230802134354.jpg', '2023-08-02 06:43:54', '2023-08-02 06:43:54'),
(6, 7, 4, 12, 35000, 'Name Taga + Pita Gantung + Plastik', '20230802135004.jpg', '2023-08-02 06:50:04', '2023-08-02 06:50:04'),
(7, 8, 4, 12, 35000, 'Name Taga + Pita Gantung + Plastik', '20230802135550.jpg', '2023-08-02 06:55:50', '2023-08-02 06:55:50'),
(8, 9, 4, 12, 35000, 'Name Taga + Pita Gantung + Plastik', '20230802135821.jpg', '2023-08-02 06:58:21', '2023-08-02 06:58:21'),
(9, 10, 5, 14, 25000, 'Tumbler plastik', '20230802171859.jpg', '2023-08-02 10:18:59', '2023-08-02 10:18:59'),
(10, 15, 5, 12, 25000, 'Tumbler plastik', '20230804120717.jpg', '2023-08-04 05:07:17', '2023-08-04 05:07:17'),
(11, 22, 4, 12, 35000, 'Name Taga + Pita Gantung + Plastik', '', '2023-08-04 05:39:49', '2023-08-04 05:39:49'),
(12, 23, 5, 12, 25000, 'Tumbler plastik', '', '2023-08-04 05:54:42', '2023-08-04 05:54:42'),
(13, 24, 6, 12, 110000, 'TumblerSpesifikasi :Ukuran Cetak Maksimum : 20 cm x 18 cm Ukuran Tumbler : Tinggi 22.5 cm x Diameter 5,6 Cm  Jenis Tumbler  : Termos', '', '2023-08-06 20:10:02', '2023-08-06 20:10:02'),
(14, 25, 6, 1, 110000, 'TumblerSpesifikasi :Ukuran Cetak Maksimum : 20 cm x 18 cm Ukuran Tumbler : Tinggi 22.5 cm x Diameter 5,6 Cm  Jenis Tumbler  : Termos', '', '2023-08-06 20:30:49', '2023-08-06 20:30:49'),
(15, 26, 8, 1, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-06 23:03:47', '2023-08-06 23:03:47'),
(16, 27, 8, 1, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-07 04:27:26', '2023-08-07 04:27:26'),
(17, 28, 8, 12, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-07 04:38:32', '2023-08-07 04:38:32'),
(18, 29, 8, 12, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-07 04:38:47', '2023-08-07 04:38:47'),
(19, 30, 8, 1, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-09 04:13:22', '2023-08-09 04:13:22'),
(20, 31, 8, 1, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-09 04:17:58', '2023-08-09 04:17:58'),
(21, 32, 8, 1, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-09 04:18:30', '2023-08-09 04:18:30'),
(22, 33, 8, 1, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-09 04:19:09', '2023-08-09 04:19:09'),
(23, 34, 8, 1, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-09 04:19:17', '2023-08-09 04:19:17'),
(24, 35, 8, 1, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-09 04:29:30', '2023-08-09 04:29:30'),
(25, 36, 6, 2, 110000, 'TumblerSpesifikasi :Ukuran Cetak Maksimum : 20 cm x 18 cm Ukuran Tumbler : Tinggi 22.5 cm x Diameter 5,6 Cm  Jenis Tumbler  : Termos', '', '2023-08-09 04:47:17', '2023-08-09 04:47:17'),
(26, 37, 4, 14, 35000, 'Name Taga + Pita Gantung + Plastik', '', '2023-08-09 04:54:07', '2023-08-09 04:54:07'),
(27, 38, 8, 2, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-09 05:04:20', '2023-08-09 05:04:20'),
(28, 39, 8, 2, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-09 05:13:02', '2023-08-09 05:13:02'),
(29, 40, 8, 2, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-09 05:13:34', '2023-08-09 05:13:34'),
(30, 41, 8, 4, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-09 05:22:39', '2023-08-09 05:22:39'),
(31, 42, 8, 14, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-09 05:28:09', '2023-08-09 05:28:09'),
(32, 43, 6, 3, 110000, 'TumblerSpesifikasi :Ukuran Cetak Maksimum : 20 cm x 18 cm Ukuran Tumbler : Tinggi 22.5 cm x Diameter 5,6 Cm  Jenis Tumbler  : Termos', '', '2023-08-09 05:37:37', '2023-08-09 05:37:37'),
(33, 44, 5, 10, 25000, 'Tumbler plastik', '', '2023-08-09 05:44:08', '2023-08-09 05:44:08'),
(34, 45, 8, 12, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-12 05:14:55', '2023-08-12 05:14:55'),
(35, 47, 8, 1, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-12 22:56:55', '2023-08-12 22:56:55'),
(36, 48, 8, 2, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-12 23:04:37', '2023-08-12 23:04:37'),
(37, 49, 8, 2, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-12 23:05:22', '2023-08-12 23:05:22'),
(38, 50, 8, 2, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-12 23:06:46', '2023-08-12 23:06:46'),
(39, 51, 8, 2, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-12 23:07:04', '2023-08-12 23:07:04'),
(40, 52, 8, 2, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-12 23:13:20', '2023-08-12 23:13:20'),
(41, 53, 6, 2, 110000, 'TumblerSpesifikasi :Ukuran Cetak Maksimum : 20 cm x 18 cm Ukuran Tumbler : Tinggi 22.5 cm x Diameter 5,6 Cm  Jenis Tumbler  : Termos', '', '2023-08-12 23:16:35', '2023-08-12 23:16:35'),
(42, 54, 8, 1, 275000, 'Bahan 280 Umbul - umbul cloths', '', '2023-08-12 23:45:09', '2023-08-12 23:45:09'),
(43, 55, 5, 2, 25000, 'Tumbler plastik', '', '2023-08-12 23:56:12', '2023-08-12 23:56:12'),
(44, 56, 5, 2, 25000, 'Tumbler plastik', '', '2023-08-13 00:43:34', '2023-08-13 00:43:34'),
(45, 57, 8, 1, 275000, 'Bahan 280\r\n Umbul - umbul cloths', '', '2023-08-14 17:40:18', '2023-08-14 17:40:18'),
(46, 60, 4, 1, 35000, 'Name Taga + Pita Gantung + Plastik', NULL, '2023-08-14 22:34:58', '2023-08-14 22:34:58'),
(47, 61, 8, 2, 275000, 'Bahan 280\r\n Umbul - umbul cloths', NULL, '2023-08-14 23:07:21', '2023-08-14 23:07:21');

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
-- Struktur dari tabel `pembayarans`
--

CREATE TABLE `pembayarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_order` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `bukti_tf` varchar(255) DEFAULT NULL,
  `status_bayar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembayarans`
--

INSERT INTO `pembayarans` (`id`, `id_order`, `jumlah_bayar`, `bukti_tf`, `status_bayar`, `created_at`, `updated_at`) VALUES
(1, 1, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-02 05:50:56', '2023-08-02 06:23:11'),
(2, 1, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-02 05:54:32', '2023-08-02 06:23:11'),
(3, 1, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-02 05:55:32', '2023-08-02 06:23:11'),
(4, 1, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-02 06:03:46', '2023-08-02 06:23:11'),
(5, 1, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-02 06:09:05', '2023-08-02 06:23:11'),
(6, 1, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-02 06:10:40', '2023-08-02 06:23:11'),
(7, 1, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-02 06:11:03', '2023-08-02 06:23:11'),
(8, 1, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-02 06:12:23', '2023-08-02 06:23:11'),
(9, 1, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-02 06:13:25', '2023-08-02 06:23:11'),
(10, 1, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-02 06:13:46', '2023-08-02 06:23:11'),
(11, 1, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-02 06:15:38', '2023-08-02 06:23:11'),
(12, 1, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-02 06:16:22', '2023-08-02 06:23:11'),
(13, 1, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-02 06:21:24', '2023-08-02 06:23:11'),
(14, 6, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-02 06:44:11', '2023-08-02 07:15:25'),
(15, 6, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-02 06:58:49', '2023-08-02 07:15:25'),
(16, 6, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-02 07:02:18', '2023-08-02 07:15:25'),
(17, 6, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-02 07:06:29', '2023-08-02 07:15:25'),
(18, 6, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-02 07:07:20', '2023-08-02 07:15:25'),
(19, 6, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-02 07:13:03', '2023-08-02 07:15:25'),
(20, 4, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-03 06:05:21', '2023-08-03 06:06:14'),
(21, 4, 35000, 'kjdlada', 'Pesanan Anda telah dibayar', '2023-08-03 06:05:47', '2023-08-03 06:06:14'),
(22, 23, 25000, 'adjadja', 'Transaksi sedang diproses', '2023-08-04 06:11:09', '2023-08-04 06:11:38'),
(23, 24, 110000, NULL, NULL, '2023-08-06 20:28:24', '2023-08-06 20:28:24'),
(24, 24, 110000, NULL, NULL, '2023-08-06 20:28:49', '2023-08-06 20:28:49'),
(25, 24, 110000, NULL, NULL, '2023-08-06 20:29:03', '2023-08-06 20:29:03'),
(26, 25, 110000, 'adjadja', 'Transaksi sedang diproses', '2023-08-06 20:31:00', '2023-08-06 20:33:19'),
(27, 25, 110000, 'adjadja', 'Transaksi sedang diproses', '2023-08-06 20:32:23', '2023-08-06 20:33:19'),
(28, 26, 275000, NULL, NULL, '2023-08-06 23:07:02', '2023-08-06 23:07:02'),
(29, 27, 275000, 'adjadja', 'Transaksi sedang diproses', '2023-08-07 04:27:44', '2023-08-07 04:32:08'),
(30, 27, 275000, 'adjadja', 'Transaksi sedang diproses', '2023-08-07 04:31:31', '2023-08-07 04:32:08'),
(31, 25, 110000, NULL, NULL, '2023-08-09 04:13:28', '2023-08-09 04:13:28');

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

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user-list', 'web', '2023-06-28 02:54:48', '2023-06-28 02:54:48'),
(2, 'user-create', 'web', '2023-06-28 02:54:48', '2023-06-28 02:54:48'),
(3, 'user-edit', 'web', '2023-06-28 02:54:48', '2023-06-28 02:54:48'),
(4, 'user-delete', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(5, 'role-list', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(6, 'role-create', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(7, 'role-edit', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(8, 'role-delete', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(9, 'produk-list', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(10, 'produk-create', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(11, 'produk-edit', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(12, 'produk-delete', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(13, 'customer-list', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(14, 'customer-create', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(15, 'customer-edit', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(16, 'customer-delete', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(17, 'satuan-list', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(18, 'satuan-create', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(19, 'satuan-edit', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(20, 'satuan-delete', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(21, 'kategori_produk-list', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(22, 'kategori_produk-create', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(23, 'kategori_produk-edit', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(24, 'kategori_produk-delete', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49');

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `harga` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produks`
--

INSERT INTO `produks` (`id`, `nama`, `id_kategori`, `harga`, `keterangan`, `id_satuan`, `gambar`, `created_at`, `updated_at`) VALUES
(4, 'Name Tag', 1, 35000, 'Name Taga + Pita Gantung + Plastik', 1, '20230726074859.jpg', '2023-07-24 01:20:06', '2023-07-26 00:48:59'),
(5, 'Tumbler plastik', 1, 25000, 'Tumbler plastik', 1, '20230726123624.jpg', '2023-07-26 05:36:24', '2023-07-26 05:36:24'),
(8, 'Banner set60x160 cm', 2, 85000, 'Uk 60x160 cm', 2, '20230807044059.jpg', '2023-08-06 21:40:59', '2023-08-30 23:24:08'),
(9, 'Kertas HVS A4 80 Gram', 4, 49000, 'Kertas A4 HVS 80 Gram', 4, '20230815054359.jpg', '2023-08-14 22:43:59', '2023-08-14 22:43:59'),
(10, 'Kop Surat', 5, 130000, 'Hitam Putih / Warna', 5, '20230831050534.jpg', '2023-08-30 22:05:34', '2023-08-30 22:05:34'),
(11, 'Brosur HVS', 6, 2000, 'Brosur HVS,\r\n1 Muka Warna A4\r\nBB(Bolak Balik)\r\n', 3, '20230831054121.jpeg', '2023-08-30 22:41:21', '2023-08-30 22:41:21'),
(12, 'Kartu Nama', 6, 55000, 'Kartu Nama\r\n2 Sisi + Laminating (Doff/Glosy)', 4, '20230831054333.jpeg', '2023-08-30 22:43:33', '2023-08-30 22:43:33'),
(13, 'Umbul - umbul Cloths', 2, 45000, 'Umbul Bahan Cloths 1,2 meter', 2, '20230831060432.jpg', '2023-08-30 23:04:32', '2023-08-30 23:04:32'),
(14, 'Role Up Banner 60 x 160 cm ( Albatros ) (flexy 280)', 2, 275000, 'Albatros, bahan ini sangat halus dan tipis serta mempunyai hasil print yang bagus dan cocok digunakan untuk cetak poster, x banner , roll up, photo dan sebagainya. Selain itu bahan ini setelah di print bisa dilapisi oleh laminasi Doft / Glossy sesuai dengan selera untuk memperindah serta membuat banner ini menjadi lebih tahan lama , cocok untuk media Indoor.', 5, '20230831063138.jpg', '2023-08-30 23:31:38', '2023-08-30 23:31:38'),
(15, 'Stiker Ritrama', 3, 185000, 'Stiker Ritrama bisa custom', 1, '20230831063616.jpg', '2023-08-30 23:36:16', '2023-08-30 23:36:16'),
(16, 'Kalender Meja Ukuran a5', 6, 35000, 'Kelnder Meja Ukuran a5', 8, '20230831063947.png', '2023-08-30 23:39:47', '2023-08-30 23:39:47'),
(17, 'Sticker Ukuran A3+', 4, 5000, 'Bahan Kromo', 5, '20230831065147.jpg', '2023-08-30 23:51:47', '2023-08-30 23:51:47'),
(18, 'Nota', 6, 150000, 'Nota, invoice, Surat Jalan, 1 ply( Nota Kontan)', 6, '20230831065459.jpeg', '2023-08-30 23:54:59', '2023-08-30 23:54:59'),
(19, 'Stop Map Custom', 6, 15000, '2 sisi luar dalam', 6, '20230831065704.jpeg', '2023-08-30 23:57:04', '2023-08-30 23:57:04'),
(20, 'Amplop(kop amplop custom)', 5, 120000, 'Amplop Kop Custom', 5, '20230831070133.jpeg', '2023-08-31 00:01:33', '2023-08-31 00:01:33'),
(21, 'Buku Yasin', 5, 10000, 'Buku yasin dan tahlil', 8, '20230831070421.jpeg', '2023-08-31 00:04:21', '2023-08-31 00:04:21'),
(22, 'Buku Saku', 5, 10000, 'Buku Saku', 8, '20230831070647.jpeg', '2023-08-31 00:06:47', '2023-08-31 00:06:47'),
(23, 'Buku Saku Note Book A5', 5, 10000, 'Buku Note book a5 ', 8, '20230831070919.jpeg', '2023-08-31 00:09:19', '2023-08-31 00:09:19'),
(24, 'Jam Dinding 32 cm', 1, 60000, 'Jam Dinding 32 cm', 8, '20230831071210.jpg', '2023-08-31 00:12:10', '2023-08-31 00:12:10'),
(25, 'Payung', 1, 70000, 'Payung', 8, '20230831071409.jpeg', '2023-08-31 00:14:09', '2023-08-31 00:14:09'),
(26, 'Goodie Bag Ukuran A4', 1, 12000, 'Goodie Bag Ukuran A4', 8, '20230831071710.jpeg', '2023-08-31 00:17:10', '2023-08-31 00:17:10'),
(27, 'Pena Standart', 1, 3000, 'Pena standart', 8, '20230831071810.jpeg', '2023-08-31 00:18:10', '2023-08-31 00:18:10'),
(28, 'Flashdisk 8GB', 1, 65000, 'Flashdisk 8GB ', 8, '20230831071950.jpeg', '2023-08-31 00:19:50', '2023-08-31 00:19:50'),
(29, 'Hand Sanitizer Antis', 1, 4500, 'Hand Sanitizer Antis', 8, '20230831072138.jpeg', '2023-08-31 00:21:38', '2023-08-31 00:21:38');

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

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-06-28 02:54:49', '2023-06-28 02:54:49'),
(2, 'User', 'web', '2023-06-28 02:56:33', '2023-06-28 02:56:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuans`
--

CREATE TABLE `satuans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `satuans`
--

INSERT INTO `satuans` (`id`, `nama`, `keterangan`, `created_at`, `updated_at`) VALUES
(2, 'set', 'set', '2023-08-06 21:39:47', '2023-08-06 21:39:47'),
(3, 'meter', 'meter persegi', '2023-08-06 21:43:59', '2023-08-06 21:43:59'),
(4, 'cm', 'centi meter', '2023-08-06 21:44:13', '2023-08-06 21:44:13'),
(5, 'Lembar', 'lembar', '2023-08-06 21:44:37', '2023-08-06 21:44:37'),
(6, 'Box(100Lembar)', 'Box(100Lembar)', '2023-08-06 21:44:56', '2023-08-06 21:44:56'),
(7, 'Rim', 'Rim', '2023-08-30 21:41:10', '2023-08-30 21:41:10'),
(8, 'Set', 'set', '2023-08-30 23:29:18', '2023-08-30 23:29:18'),
(9, 'Buah', 'Buah', '2023-08-30 23:38:32', '2023-08-30 23:38:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 'admin', 'adminhalma@gmail.com', NULL, '$2y$10$0MWaHkhnjF80pScEnsMpyeebv3M10KX.0xTuCMNc4g2ibu4YZk1tW', NULL, '2023-06-28 02:54:49', '2023-08-05 04:38:28'),
(8, 'customer', 'customer@gmail.com', NULL, '$2y$10$XpermHk/w3DK6rBW5AL9IeD0PAU0rDHitmQKzMHx5dJ3liZxGSCOi', NULL, '2023-07-07 23:16:26', '2023-07-24 00:56:51'),
(9, 'Rahmat Zaki', 'zaki12@gmail.com', NULL, '$2y$10$DqtBGyFlLnTje.fLI9qZ/O978Fn0dfBsNFZmZKz0UyKdVJ5vxr7AS', NULL, '2023-07-31 05:08:52', '2023-07-31 05:08:52'),
(10, 'nagato', 'nagato@gmail.com', NULL, '$2y$10$wA.UKwQ/1cp0KWoYVtCKXeSsizznotidtv8zT.gxmV3rIHRWEy5DS', NULL, '2023-08-02 06:42:35', '2023-08-02 06:42:35'),
(11, 'Rahmat Zaki', 'zakirahmat730@gmail.com', NULL, '$2y$10$32PnpwKbrCiKUCkjO/qgdeN5ce7JdwFWelLto6J7lc6F4vQWsX7iy', NULL, '2023-08-04 05:53:34', '2023-08-04 05:53:34'),
(12, 'zaki7', 'zaki7@gmail.com', NULL, '$2y$10$gpbIfloMfO/afiO/.ax2aOJaC0TNGUT0BluQryrHYqNUok6zsebaK', NULL, '2023-08-06 20:29:57', '2023-08-06 20:29:57'),
(13, 'igor', 'igor@gmail.com', NULL, '$2y$10$PRhehGskFFT.BFBrNh2WIu.dSk3Wn70sI2OGTs7./x1YQLBYb1dOC', NULL, '2023-08-12 22:50:46', '2023-08-12 22:50:46'),
(15, 'customer2', 'customer2@gmail.com', NULL, '$2y$10$Z0rKDMtC8LufVSrgDAmdZuUGSE3N543IDQnG/8EyMM/v77KJP1/xC', NULL, '2023-08-12 22:54:18', '2023-08-12 22:54:18'),
(16, 'denis', 'denis@gmail.com', NULL, '$2y$10$kFAdBYOBhOjNr1fvZZm.CejJB5sF3inWTPo9ooGMD4DbE/4zzqg5q', NULL, '2023-08-14 23:04:30', '2023-08-14 23:04:30'),
(19, 'dedi', 'dedi@gmail.com', NULL, '$2y$10$cGJMsNDTahAojpQDENZEEectz9Qj0QzJhl7pCOKQwmsods9QzCWhW', NULL, '2023-08-14 23:05:10', '2023-08-14 23:05:10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategori_produks`
--
ALTER TABLE `kategori_produks`
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
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `produks_id_kategori_foreign` (`id_kategori`);

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
-- Indeks untuk tabel `satuans`
--
ALTER TABLE `satuans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori_produks`
--
ALTER TABLE `kategori_produks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `pembayarans`
--
ALTER TABLE `pembayarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produks`
--
ALTER TABLE `produks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `satuans`
--
ALTER TABLE `satuans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

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
  ADD CONSTRAINT `produks_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_produks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
