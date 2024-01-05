-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Des 2023 pada 17.44
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry`
--

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_12_11_052332_create_pesanan_table', 3),
(7, '2023_12_11_052716_create_pembayaran_table', 4),
(8, '2014_10_12_000000_create_users_table', 5);

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
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_bayar` bigint(20) UNSIGNED NOT NULL,
  `id_pesan` bigint(20) UNSIGNED NOT NULL,
  `total` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status_p` varchar(255) NOT NULL,
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
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesan` bigint(20) UNSIGNED NOT NULL,
  `cust` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `berat` varchar(11) NOT NULL,
  `tanggal` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL DEFAULT 'Belum Selesai',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id_pesan`, `cust`, `jenis`, `berat`, `tanggal`, `status`, `created_at`, `updated_at`) VALUES
(11, 'Adul', 'Kilat', '21', '2023-12-12', 'Sudah Selesai', '2023-12-11 20:18:06', '2023-12-12 07:54:02'),
(12, 'John Doe', 'Reguler', '2.5', '2023-12-12', 'Belum Selesai', NULL, NULL),
(13, 'Jane Smith', 'Kilat', '1', '2023-12-12', 'Sudah Selesai', NULL, NULL),
(14, 'Alice Johnson', 'Reguler', '0.5', '2023-12-12', 'Belum Selesai', NULL, NULL),
(15, 'Bob Brown', 'Kilat', '3', '2023-12-12', 'Belum Selesai', NULL, NULL),
(16, 'Eva Davis', 'Reguler', '2', '2023-12-12', 'Sudah Selesai', NULL, NULL),
(17, 'Samuel White', 'Kilat', '1.5', '2023-12-12', 'Belum Selesai', NULL, NULL),
(18, 'Olivia Taylor', 'Reguler', '4', '2023-12-12', 'Sudah Selesai', NULL, NULL),
(19, 'Daniel Clark', 'Kilat', '2', '2023-12-12', 'Sudah Selesai', NULL, NULL),
(20, 'Emily Harris', 'Reguler', '1', '2023-12-12', 'Belum Selesai', NULL, NULL),
(21, 'Matthew Miller', 'Kilat', '0.8', '2023-12-12', 'Belum Selesai', NULL, NULL),
(22, 'Sophia Wilson', 'Reguler', '2.3', '2023-12-12', 'Sudah Selesai', NULL, NULL),
(23, 'Liam Anderson', 'Kilat', '1.2', '2023-12-12', 'Sudah Selesai', NULL, NULL),
(24, 'Ava Moore', 'Reguler', '0.7', '2023-12-12', 'Belum Selesai', NULL, NULL),
(25, 'David Turner', 'Kilat', '3.8', '2023-12-12', 'Belum Selesai', NULL, NULL),
(26, 'Grace Parker', 'Reguler', '2.1', '2023-12-12', 'Sudah Selesai', NULL, NULL),
(27, 'Logan Green', 'Kilat', '1.7', '2023-12-12', 'Belum Selesai', NULL, NULL),
(28, 'Mia Evans', 'Reguler', '2.8', '2023-12-12', 'Sudah Selesai', NULL, NULL),
(29, 'Nathan Wright', 'Kilat', '1.9', '2023-12-12', 'Sudah Selesai', NULL, NULL),
(30, 'Sophie Adams', 'Reguler', '0.6', '2023-12-12', 'Belum Selesai', NULL, NULL),
(31, 'William Hall', 'Kilat', '2.2', '2023-12-12', 'Sudah Selesai', NULL, NULL),
(32, 'Aiden Turner', 'Reguler', '1.4', '2023-12-12', 'Belum Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(33, 'Chloe Brooks', 'Kilat', '2.9', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(34, 'Carter Harris', 'Reguler', '3.2', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(35, 'Lily Davis', 'Kilat', '0.9', '2023-12-12', 'Belum Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(36, 'Ethan Wilson', 'Reguler', '1.6', '2023-12-12', 'Belum Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(37, 'Zoe Taylor', 'Kilat', '2.3', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(38, 'Madison White', 'Reguler', '1.1', '2023-12-12', 'Belum Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(39, 'Logan Evans', 'Kilat', '3.5', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(40, 'Aria Clark', 'Reguler', '2.7', '2023-12-12', 'Belum Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(41, 'Mason Anderson', 'Kilat', '1.8', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(42, 'Isabella Parker', 'Reguler', '2.2', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(43, 'Owen Hall', 'Kilat', '1.3', '2023-12-12', 'Belum Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(44, 'Addison Moore', 'Reguler', '0.5', '2023-12-12', 'Belum Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(45, 'Henry Miller', 'Kilat', '2.1', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(46, 'Aubrey Green', 'Reguler', '3.8', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(47, 'Liam Adams', 'Kilat', '1.7', '2023-12-12', 'Belum Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(48, 'Emily Brown', 'Reguler', '2.4', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(49, 'Scarlett Turner', 'Kilat', '1.2', '2023-12-12', 'Belum Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(50, 'Lucas Wilson', 'Reguler', '2.6', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(51, 'Ava Harris', 'Kilat', '0.8', '2023-12-12', 'Belum Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(52, 'Jackson Taylor', 'Reguler', '1.9', '2023-12-12', 'Belum Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(53, 'Liam Moore', 'Reguler', '2.3', '2023-12-12', 'Belum Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(54, 'Emma Parker', 'Kilat', '1.1', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(55, 'Noah Turner', 'Reguler', '3.0', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(56, 'Ava Clark', 'Kilat', '1.5', '2023-12-12', 'Belum Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(57, 'Oliver Evans', 'Reguler', '2.7', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(58, 'Sophia White', 'Kilat', '0.9', '2023-12-12', 'Belum Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(59, 'Lucas Harris', 'Reguler', '1.8', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(60, 'Isabella Taylor', 'Kilat', '2.2', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(61, 'Mia Anderson', 'Reguler', '0.7', '2023-12-12', 'Belum Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(62, 'Ethan Green', 'Kilat', '3.2', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(63, 'Amelia Moore', 'Reguler', '2.0', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(64, 'Mason Turner', 'Kilat', '1.3', '2023-12-12', 'Belum Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(65, 'Harper Adams', 'Reguler', '2.5', '2023-12-12', 'Belum Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(66, 'Carter Wilson', 'Kilat', '1.6', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(67, 'Evelyn Hall', 'Reguler', '0.8', '2023-12-12', 'Belum Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(68, 'Aiden Brown', 'Kilat', '3.5', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(69, 'Abigail Green', 'Reguler', '1.2', '2023-12-12', 'Belum Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(70, 'Daniel Taylor', 'Kilat', '2.4', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(71, 'Madison Parker', 'Reguler', '1.9', '2023-12-12', 'Belum Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(72, 'Logan Harris', 'Kilat', '0.6', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(73, 'Grace Moore', 'Reguler', '2.1', '2023-12-12', 'Sudah Selesai', '2023-12-12 15:14:18', '2023-12-12 15:14:18'),
(74, 'aziz', 'Reguler', '2', '2023-12-12', 'Belum Selesai', '2023-12-12 09:41:17', '2023-12-12 09:41:17'),
(75, 'Adul', 'Kilat', '21', '2023-12-12', 'Belum Selesai', '2023-12-12 09:56:49', '2023-12-12 09:56:49'),
(76, 'Elijah Adams', 'Reguler', '1.4', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(77, 'Mila Wilson', 'Kilat', '2.9', '2023-12-13', 'Belum Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(78, 'Grayson Taylor', 'Reguler', '3.2', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(79, 'Layla Clark', 'Kilat', '0.9', '2023-12-13', 'Belum Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(80, 'Benjamin Evans', 'Reguler', '1.6', '2023-12-13', 'Belum Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(81, 'Luna Harris', 'Kilat', '2.3', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(82, 'Michael Turner', 'Reguler', '1.1', '2023-12-13', 'Belum Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(83, 'Elena Taylor', 'Kilat', '3.5', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(84, 'Alexander Anderson', 'Reguler', '2.7', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(85, 'Chloe Green', 'Kilat', '0.8', '2023-12-13', 'Belum Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(86, 'William Moore', 'Reguler', '2.2', '2023-12-13', 'Belum Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(87, 'Aria Parker', 'Kilat', '1.3', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(88, 'Lucy Adams', 'Reguler', '2.5', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(89, 'Caleb Turner', 'Kilat', '1.6', '2023-12-13', 'Belum Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(90, 'Victoria Harris', 'Reguler', '0.7', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(91, 'James Clark', 'Kilat', '3.2', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(92, 'Hazel Moore', 'Reguler', '2.0', '2023-12-13', 'Belum Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(93, 'Henry Wilson', 'Kilat', '1.3', '2023-12-13', 'Belum Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(94, 'Stella Anderson', 'Reguler', '0.6', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(95, 'Leo Green', 'Kilat', '2.1', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(96, 'Nora Taylor', 'Reguler', '3.8', '2023-12-13', 'Belum Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(97, 'Ezra Adams', 'Kilat', '1.9', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(98, 'Penelope Turner', 'Reguler', '0.5', '2023-12-13', 'Belum Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(99, 'Gabriel Clark', 'Kilat', '2.1', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(100, 'Lily Evans', 'Reguler', '3.4', '2023-12-13', 'Belum Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(101, 'Jack Harris', 'Kilat', '1.7', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(102, 'Aurora Moore', 'Reguler', '2.8', '2023-12-13', 'Belum Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(103, 'Owen Taylor', 'Kilat', '1.2', '2023-12-13', 'Belum Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(104, 'Scarlett Anderson', 'Reguler', '2.3', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(105, 'Jackson Green', 'Kilat', '0.9', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(106, 'Nova Parker', 'Reguler', '1.5', '2023-12-13', 'Belum Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(107, 'Sebastian Adams', 'Kilat', '3.1', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(108, 'Ava Wilson', 'Reguler', '2.2', '2023-12-13', 'Belum Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(109, 'Ethan Turner', 'Kilat', '1.0', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(110, 'Luna Harris', 'Reguler', '3.2', '2023-12-13', 'Belum Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(111, 'Carter Clark', 'Kilat', '2.5', '2023-12-13', 'Belum Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(112, 'Zoe Moore', 'Reguler', '1.8', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(113, 'Mason Taylor', 'Kilat', '0.7', '2023-12-13', 'Belum Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(114, 'Isabella Adams', 'Reguler', '2.0', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(115, 'Liam Turner', 'Kilat', '1.3', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(116, 'Harper Harris', 'Reguler', '2.7', '2023-12-13', 'Belum Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17'),
(117, 'Olivia Parker', 'Kilat', '0.8', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-17 18:41:44'),
(118, 'Henry Wilson', 'Reguler', '1.9', '2023-12-13', 'Sudah Selesai', '2023-12-12 17:03:17', '2023-12-12 17:03:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'email1@gmail.com', NULL, '$2y$12$U6.z12ZbKPYtck4VcjNd3.x74upsupxZP9lNti5J15Zr1UP1zHXDm', NULL, NULL, NULL),
(2, 'rika', 'rika', 'email2@gmail.com', NULL, '$2y$12$HPO8yvpWpfsmDIARtcQe9OrXevsqxwYG7as6fw5TcLDDpbuqzG7Bu', NULL, NULL, NULL),
(7, 'rampo', 'Serika', 'example2@gmail.com', NULL, '$2y$12$TSdl6b6ebEeKfCfVIDy2QuW6291zlwJFHiE72YCLQtOsJOBNDoUGO', NULL, '2023-12-12 09:57:24', '2023-12-12 09:57:24'),
(9, '123', 'Reen', 'example4@gmail.com', NULL, '$2y$12$.Z8oUdbUSGlQTMYzYcy9verShCIXnZlsjOZhqbqX1eXbqgi8FMm.y', NULL, '2023-12-12 10:00:50', '2023-12-12 10:00:50'),
(10, 'admin', 'Adul', 'example33@gmail.com', NULL, '$2y$12$jOjjUvVm9IMw6nT9pns34uf2HOe4W4NkdVheN5x1T08IimCasUYuG', NULL, '2023-12-26 09:42:26', '2023-12-26 09:42:26');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_bayar`),
  ADD KEY `pembayaran_id_pesan_foreign` (`id_pesan`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesan`);

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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_bayar` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_id_pesan_foreign` FOREIGN KEY (`id_pesan`) REFERENCES `pesanan` (`id_pesan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
