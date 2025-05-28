-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2025 at 03:52 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_sidangakhir2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `NIDN` char(10) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`NIDN`, `nama_dosen`) VALUES
('230202029', 'Arbasya Anandito'),
('230202044', 'Shela Jaya'),
('230202077', 'Lusiman');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hasil_sidang`
--

CREATE TABLE `hasil_sidang` (
  `id_hasil` int(11) NOT NULL,
  `id_sidang` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `catatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `hasil_sidang`
--

INSERT INTO `hasil_sidang` (`id_hasil`, `id_sidang`, `nilai`, `catatan`) VALUES
(7, 1, 88, 'Perbaiki Font Cover dan Isi'),
(8, 2, 88, 'Citation dimasukan');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` char(9) NOT NULL,
  `nama_mahasiswa` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `prodi` char(30) NOT NULL,
  `judul_tugasakhir` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `nama_mahasiswa`, `alamat`, `kelas`, `prodi`, `judul_tugasakhir`) VALUES
('230202027', 'Ana Febri Salusi', 'Jalan Sadang', 'TI 2B', 'D3 Informatika', 'IOT Jaringan'),
('230202031', 'Devia Kippuw', 'Jalan Tentara', 'TI 2B', 'D3 Informatika', 'Sistem Informasi'),
('230202047', 'Yana Aprilia', 'Bumiayu', 'TI-2B', 'D3 Informatika', 'StoryCraft'),
('230202089', 'Stanley', 'Jalan Pendidikan', 'TI-2B', 'D3 Teknik Informatika', 'Sistem Bank');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_10_082508_add_role_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id_notifikasi` int(11) NOT NULL,
  `NIM` char(9) DEFAULT NULL,
  `NIDN` char(10) DEFAULT NULL,
  `pesan` varchar(100) NOT NULL,
  `tanggal_kirim` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notifikasi`
--

INSERT INTO `notifikasi` (`id_notifikasi`, `NIM`, `NIDN`, `pesan`, `tanggal_kirim`) VALUES
(1, '230202031', '230202044', 'Kembali Bimbingan 21 Maret', '2025-03-20'),
(2, '230202027', '230202029', 'Kembali Bimbingan 23 Maret', '2025-03-21'),
(3, '230202027', NULL, 'Bimbingan lagi tanggal 6 April ya okee', '2025-05-21'),
(4, '230202047', '230202044', 'Besok Bimbingan lagi', '2025-05-21'),
(5, '230202031', '230202044', 'Sidang Tanggal 25 Mei 2025', '2025-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('GhzjJxQvcbLIrYlM7W3EpAyWfQL2N4hH6e2y1b4p', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibmVzZTRWQ2diSTBYMExUT1FkdFluMG14NDJ6NXBzM0NGYnhzSWwwcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1746872668);

-- --------------------------------------------------------

--
-- Table structure for table `sidang`
--

CREATE TABLE `sidang` (
  `id_sidang` int(11) NOT NULL,
  `NIM` char(9) DEFAULT NULL,
  `NIDN` char(10) DEFAULT NULL,
  `waktu_sidang` datetime NOT NULL,
  `ruang_sidang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sidang`
--

INSERT INTO `sidang` (`id_sidang`, `NIM`, `NIDN`, `waktu_sidang`, `ruang_sidang`) VALUES
(1, '230202027', '230202029', '2025-03-13 08:00:00', 'J.5.7'),
(2, '230202031', '230202044', '2025-03-14 09:00:00', 'J.5.6'),
(8, '230202089', '230202077', '2025-05-24 08:43:00', 'J.5.6');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `email`, `role`) VALUES
(221, 'devia01', '1111', 'devia@gmail.com', 'mahasiswa'),
(222, 'ana02', '2222', 'ana@gmail.com', 'mahasiswa'),
(223, 'shela03', '3333', 'shela@gmail.com', 'dosen'),
(224, 'arbas04', '4444', 'arbas@gmail.com', 'dosen'),
(225, 'admin', '12345678', 'admin@gmail.com', 'admin'),
(226, '230202027', '12345678', 'anafebrisalusi04@gmail.com', 'mahasiswa'),
(227, '230202044', '3333', 'shelajaya@gmail.com', 'dosen'),
(228, '230202031', '1111', 'deviakippuw@gmail.com', 'mahasiswa'),
(229, '230202029', '4444', 'arbasya@gmail.com', 'dosen'),
(230, '230202047', '12345678', 'yana@gmail.com', 'mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','mahasiswa','dosen') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'mahasiswa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$QiDvVn8K.us1Ng6cHxGEMuDbW2BhsUDkPIo2mt6ngEVaM4DHm7vFy', NULL, '2025-05-10 02:27:28', '2025-05-10 02:27:28', 'admin');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_jadwalsidang`
-- (See below for the actual view)
--
CREATE TABLE `v_jadwalsidang` (
`id_sidang` int(11)
,`NIM` char(9)
,`nama_mahasiswa` varchar(50)
,`NIDN` char(10)
,`nama_dosen` varchar(50)
,`waktu_sidang` datetime
,`ruang_sidang` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_nilaimahasiswa`
-- (See below for the actual view)
--
CREATE TABLE `v_nilaimahasiswa` (
`nama_mahasiswa` varchar(50)
,`NIM` char(9)
,`nilai` int(11)
,`catatan` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure for view `v_jadwalsidang`
--
DROP TABLE IF EXISTS `v_jadwalsidang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_jadwalsidang`  AS SELECT `s`.`id_sidang` AS `id_sidang`, `s`.`NIM` AS `NIM`, `m`.`nama_mahasiswa` AS `nama_mahasiswa`, `s`.`NIDN` AS `NIDN`, `d`.`nama_dosen` AS `nama_dosen`, `s`.`waktu_sidang` AS `waktu_sidang`, `s`.`ruang_sidang` AS `ruang_sidang` FROM ((`sidang` `s` join `mahasiswa` `m` on(`s`.`NIM` = `m`.`NIM`)) join `dosen` `d` on(`s`.`NIDN` = `d`.`NIDN`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_nilaimahasiswa`
--
DROP TABLE IF EXISTS `v_nilaimahasiswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_nilaimahasiswa`  AS SELECT `mahasiswa`.`nama_mahasiswa` AS `nama_mahasiswa`, `mahasiswa`.`NIM` AS `NIM`, `hasil_sidang`.`nilai` AS `nilai`, `hasil_sidang`.`catatan` AS `catatan` FROM ((`mahasiswa` join `sidang`) join `hasil_sidang` on(`sidang`.`id_sidang` = `hasil_sidang`.`id_sidang` and `mahasiswa`.`NIM` = `sidang`.`NIM`)) ;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`NIDN`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hasil_sidang`
--
ALTER TABLE `hasil_sidang`
  ADD PRIMARY KEY (`id_hasil`) USING BTREE,
  ADD KEY `id_sidang` (`id_sidang`) USING BTREE;

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
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id_notifikasi`) USING BTREE,
  ADD KEY `NIM` (`NIM`) USING BTREE,
  ADD KEY `NIDN` (`NIDN`) USING BTREE;

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sidang`
--
ALTER TABLE `sidang`
  ADD PRIMARY KEY (`id_sidang`) USING BTREE,
  ADD UNIQUE KEY `NIM` (`NIM`,`waktu_sidang`) USING BTREE,
  ADD KEY `NIDN` (`NIDN`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

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
-- AUTO_INCREMENT for table `hasil_sidang`
--
ALTER TABLE `hasil_sidang`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id_notifikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sidang`
--
ALTER TABLE `sidang`
  MODIFY `id_sidang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hasil_sidang`
--
ALTER TABLE `hasil_sidang`
  ADD CONSTRAINT `hasil_sidang_ibfk_1` FOREIGN KEY (`id_sidang`) REFERENCES `sidang` (`id_sidang`);

--
-- Constraints for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD CONSTRAINT `notifikasi_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`),
  ADD CONSTRAINT `notifikasi_ibfk_2` FOREIGN KEY (`NIDN`) REFERENCES `dosen` (`NIDN`);

--
-- Constraints for table `sidang`
--
ALTER TABLE `sidang`
  ADD CONSTRAINT `sidang_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`),
  ADD CONSTRAINT `sidang_ibfk_2` FOREIGN KEY (`NIDN`) REFERENCES `dosen` (`NIDN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
