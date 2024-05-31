-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2023 at 05:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kikbwinew`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktivitassanggars`
--

CREATE TABLE `aktivitassanggars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nm_sanggar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sanggar_id` int(11) DEFAULT NULL,
  `kegiatan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aktivitassanggars`
--

INSERT INTO `aktivitassanggars` (`id`, `nm_sanggar`, `sanggar_id`, `kegiatan`, `tanggal`, `photo`, `created_at`, `updated_at`) VALUES
(3, 'Sanggar Jogopati', NULL, 'Sanggar Seni Jogopati dijadikan wadah untuk anak-anak setempat mengenal seni dan budaya sendiri.', '2022-07-22', '/storage/images/1675689133sanggarlang.jpg', '2023-02-06 06:12:13', '2023-02-06 06:12:13'),
(4, 'Sanggar Sekar Arum', NULL, 'Sanggar Sekar Arum mengadakan event bertajuk yok tari untuk memperingati hari tari', '2023-01-10', '/storage/images/1675693841tariijo.jpg', '2023-02-06 07:30:41', '2023-02-06 07:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `anggotas`
--

CREATE TABLE `anggotas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sanggar_id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `nik` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan_terakhir` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_pekerjaan` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telepon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggotas`
--

INSERT INTO `anggotas` (`id`, `sanggar_id`, `id_user`, `nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `jabatan`, `pendidikan_terakhir`, `status_pekerjaan`, `no_telepon`, `alamat`, `created_at`, `updated_at`) VALUES
(3, 47, NULL, '35214839207356128', 'Aiah Sitha', 'Banyuwangi', '2004-06-08', 'perempuan', 'Anggota', 'SMAN 1 Rogojampi', 'siswa', '0888999222', 'Cangkring', '2023-02-06 08:50:09', '2023-02-06 08:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `auto_numbers`
--

CREATE TABLE `auto_numbers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auto_numbers`
--

INSERT INTO `auto_numbers` (`id`, `name`, `number`, `created_at`, `updated_at`) VALUES
(1, '5a8216009f39c8819b5cf61814f688d3', 5, '2023-01-24 20:34:13', '2023-01-24 21:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_karyas`
--

CREATE TABLE `daftar_karyas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sanggar_id` bigint(20) UNSIGNED NOT NULL,
  `judul_karya` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_diciptakan` date NOT NULL,
  `penata_tari` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penata_rias` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penata_musik` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penata_busana` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sinopsis` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengalaman_ditampilkan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daftar_karyas`
--

INSERT INTO `daftar_karyas` (`id`, `sanggar_id`, `judul_karya`, `tahun_diciptakan`, `penata_tari`, `penata_rias`, `penata_musik`, `penata_busana`, `sinopsis`, `pengalaman_ditampilkan`, `photo`, `created_at`, `updated_at`) VALUES
(2, 47, 'Asmalibrasi', '2000-01-06', 'Asila Ori', 'Budi Santoso', 'Sahla Yaya', NULL, 'Asmalibrasi menceritakan seseorang yang sedang jatuh cinta dalam bentuk drama musikal', 'Pernah Tampil di depan gubernur', '/images/1675698737gandrungono.jpg', '2023-02-06 08:52:17', '2023-02-06 08:52:17');

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
-- Table structure for table `jenis_kesenians`
--

CREATE TABLE `jenis_kesenians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jnskesenian` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_kesenians`
--

INSERT INTO `jenis_kesenians` (`id`, `nama_jnskesenian`, `created_at`, `updated_at`) VALUES
(123, 'Seni Tari', NULL, NULL),
(124, 'Seni Musik', NULL, NULL),
(125, 'Seni Drama', NULL, NULL),
(126, 'Seni Teater', NULL, NULL),
(127, 'Seni Drama', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kecamatans`
--

CREATE TABLE `kecamatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_kecamatan` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kecamatan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kecamatans`
--

INSERT INTO `kecamatans` (`id`, `kode_kecamatan`, `nama_kecamatan`, `created_at`, `updated_at`) VALUES
(2, '35.10.13', 'Rogojampi', NULL, NULL),
(3, '35.10.14', 'Kabat', NULL, NULL),
(4, '35.10.12', 'Singojuruh', NULL, NULL),
(5, '35.10.09', 'Genteng', NULL, NULL),
(6, '35.10.06', 'Cluring', NULL, NULL),
(7, '35.10.02', 'Bangorejo', NULL, NULL),
(8, '35.10.16', 'Banyuwangi', NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_19_023119_create_aktivitassanggars_table', 1),
(6, '2022_12_11_050645_create_jenis_kesenians_table', 1),
(7, '2022_12_11_052048_create_sub_kesenians_table', 1),
(8, '2022_12_11_052135_create_kecamatans_table', 1),
(9, '2022_12_11_052250_create_sanggars_table', 1),
(10, '2022_12_11_052405_create_daftar_karyas_table', 1),
(11, '2022_12_11_052516_create_anggotas_table', 1),
(12, '2023_01_25_024432_add_kode_subseni_to_sub_kesenians', 2),
(13, '2017_08_03_055212_create_auto_numbers', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanggars`
--

CREATE TABLE `sanggars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_induk_sanggar` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '556/0312/08.106.ST/429.109/2022',
  `rt` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rw` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dusun` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desa` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_kecamatan` bigint(20) UNSIGNED DEFAULT NULL,
  `kecamatan` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_pos` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lintang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bujur` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_jeniskesenian` bigint(20) UNSIGNED DEFAULT NULL,
  `id_subkesenian` bigint(20) UNSIGNED DEFAULT NULL,
  `pembinaan_seni` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sk_pendirian` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_pendirian` date DEFAULT NULL,
  `status_kepemilikan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_akta` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_penetapan_notaris` date DEFAULT NULL,
  `pejabat_pengesah_notaris` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_penetapan_kemenkumham` date DEFAULT NULL,
  `no_pendaftaran_kemenkumham` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_rekening` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_bank` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cabang_kcp_unit` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `an_rekening` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `luas_tanah_milik` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `luas_tanah_bukanmilik` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_wajib_pajak` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `npwp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_tlp` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_fax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('aktif','tidak aktif','menunggu') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'menunggu',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sanggars`
--

INSERT INTO `sanggars` (`id`, `nama`, `no_induk_sanggar`, `rt`, `rw`, `dusun`, `desa`, `id_kecamatan`, `kecamatan`, `kode_pos`, `lintang`, `bujur`, `id_jeniskesenian`, `id_subkesenian`, `pembinaan_seni`, `sk_pendirian`, `tanggal_pendirian`, `status_kepemilikan`, `no_akta`, `tanggal_penetapan_notaris`, `pejabat_pengesah_notaris`, `tanggal_penetapan_kemenkumham`, `no_pendaftaran_kemenkumham`, `no_rekening`, `nama_bank`, `cabang_kcp_unit`, `an_rekening`, `luas_tanah_milik`, `luas_tanah_bukanmilik`, `nama_wajib_pajak`, `npwp`, `id_user`, `email`, `no_tlp`, `no_fax`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(47, 'Sayu Wiwit', '556/0312/08.106.ST/429.109/2022', NULL, NULL, NULL, 'Aliyan', NULL, 'Rogojampi', NULL, NULL, NULL, NULL, NULL, 'Seni-Teater', NULL, NULL, 'Peseorangan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085233211334', NULL, '/images/1675693960sanggargandrung.jpg', 'aktif', '2023-02-06 07:32:42', '2023-02-06 07:33:26'),
(48, 'Pari Kuning', '556/0312/08.106.ST/429.109/2022', NULL, NULL, NULL, 'Cluring', NULL, 'Cluring', NULL, NULL, NULL, NULL, NULL, 'Seni-Musik', NULL, NULL, 'Peseorangan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '089123433299', NULL, '/images/1675695206gandrung.jpg', 'menunggu', '2023-02-06 07:53:26', '2023-02-06 07:53:26'),
(49, 'Pesona Blambangan', '556/0312/08.106.ST/429.109/2022', NULL, NULL, NULL, 'Krajan', NULL, 'Bangorejo', NULL, NULL, NULL, NULL, NULL, 'Seni-Teater', NULL, NULL, 'Peseorangan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081233421544', NULL, '/images/1675695420jaranan.jpg', 'aktif', '2023-02-06 07:57:00', '2023-02-06 08:09:12'),
(50, 'Roro Jonggrang', '556/0312/08.106.ST/429.109/2022', NULL, NULL, NULL, 'Pengatigan', NULL, 'Rogojampi', NULL, NULL, NULL, NULL, NULL, 'Seni-Tari', NULL, NULL, 'Peseorangan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085236976599', NULL, '/images/1675695515tariijo.jpg', 'tidak aktif', '2023-02-06 07:58:35', '2023-02-06 08:20:16'),
(51, 'Minak Jinggo', '556/0312/08.106.ST/429.109/2022', NULL, NULL, NULL, 'Krajan', NULL, 'Singojuruh', NULL, NULL, NULL, NULL, NULL, 'Seni-Teater', NULL, NULL, 'Peseorangan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '081212455768', NULL, '/images/1675695757gandrungono.jpg', 'menunggu', '2023-02-06 08:02:37', '2023-02-06 08:02:37'),
(52, 'Joko Thulik', '556/0312/08.106.ST/429.109/2022', NULL, NULL, NULL, 'Pengatigan', NULL, 'Rogojampi', NULL, NULL, NULL, NULL, NULL, 'Seni-Tari', NULL, NULL, 'Peseorangan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085216432122', NULL, '/images/1675696118buibunari.jpg', 'menunggu', '2023-02-06 08:08:38', '2023-02-06 08:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `sub_kesenians`
--

CREATE TABLE `sub_kesenians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_subkesenian` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jenis_kesenian` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_kesenians`
--

INSERT INTO `sub_kesenians` (`id`, `nama_subkesenian`, `id_jenis_kesenian`, `created_at`, `updated_at`) VALUES
(2, 'Gandrung', 123, NULL, NULL),
(3, 'Angklung', 124, NULL, NULL),
(9, 'Jaranan', 123, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `level`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'Admin', 'admin', 'admin@admin.com', NULL, '$2y$10$lMCjCeL77Iyzw/0xk7TyP.CzgsAhe.k15eutgqWspCCcYFd/2g2ae', NULL, '2022-11-27 00:08:07', '2022-11-27 00:08:07'),
(12, 'Kantor Desa', 'kepala_desa', 'desa@desa.com', NULL, '$2y$10$90FmDHFn8z7hu8h2CgN0Wep47t.zmU58cXZP/5q6zhFvRaPwlcqBq', NULL, '2022-11-27 00:08:31', '2022-11-27 00:08:31'),
(13, 'Pemilik Sanggar', 'pemilik_sanggar', 'pemiliksanggar@pemiliksanggar.com', NULL, '$2y$10$LNAC/8C8QAysqjnWgWkRguic8FPYi2AxJMUe5SrOinD7xZ4H9CybK', NULL, '2022-11-27 17:01:41', '2022-11-27 17:01:41'),
(26, 'Admin 2', 'admin', 'admin2@admin.com', NULL, '$2y$10$cggtLqKxjtAmKgTo4eLB1OP1Y9RyXj5DsrCPcAjNSbQeHWF5vuhP6', NULL, '2022-12-21 07:57:56', '2022-12-21 07:57:56'),
(27, 'adminnn', 'pemilik_sanggar', 'admin3@admin.com', NULL, '$2y$10$k.UBBQnTm.n2GtQx15373uWZH0Wh08EY9Gi0LcDTW5ynhmShbmti6', NULL, '2023-01-10 22:48:09', '2023-01-10 22:48:09'),
(28, 'AdminVina', 'admin', 'Vina@admin.com', NULL, '$2y$10$hnIfqofb7uBtMjoKEMuo7eirA0uiVda49FH6wjJma1GnQ5PGPKaBG', NULL, '2023-01-10 22:49:10', '2023-01-10 22:49:10'),
(29, 'alisa', 'pemilik_sanggar', 'alisa@gmail.com', NULL, 'JFBGTUNW', NULL, '2023-01-10 23:09:41', '2023-01-10 23:09:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktivitassanggars`
--
ALTER TABLE `aktivitassanggars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggotas`
--
ALTER TABLE `anggotas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anggotas_sanggar_id_foreign` (`sanggar_id`),
  ADD KEY `anggotas_id_user_foreign` (`id_user`);

--
-- Indexes for table `auto_numbers`
--
ALTER TABLE `auto_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftar_karyas`
--
ALTER TABLE `daftar_karyas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daftar_karyas_sanggar_id_foreign` (`sanggar_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jenis_kesenians`
--
ALTER TABLE `jenis_kesenians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kecamatans`
--
ALTER TABLE `kecamatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sanggars`
--
ALTER TABLE `sanggars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanggars_id_kecamatan_foreign` (`id_kecamatan`),
  ADD KEY `sanggars_id_subkesenian_foreign` (`id_subkesenian`),
  ADD KEY `sanggars_id_user_foreign` (`id_user`),
  ADD KEY `sanggars_id_jeniskesenian_foreign` (`id_jeniskesenian`);

--
-- Indexes for table `sub_kesenians`
--
ALTER TABLE `sub_kesenians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_kesenians_id_jenis_kesenian_foreign` (`id_jenis_kesenian`);

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
-- AUTO_INCREMENT for table `aktivitassanggars`
--
ALTER TABLE `aktivitassanggars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `anggotas`
--
ALTER TABLE `anggotas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auto_numbers`
--
ALTER TABLE `auto_numbers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `daftar_karyas`
--
ALTER TABLE `daftar_karyas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_kesenians`
--
ALTER TABLE `jenis_kesenians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `kecamatans`
--
ALTER TABLE `kecamatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sanggars`
--
ALTER TABLE `sanggars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `sub_kesenians`
--
ALTER TABLE `sub_kesenians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggotas`
--
ALTER TABLE `anggotas`
  ADD CONSTRAINT `anggotas_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `anggotas_sanggar_id_foreign` FOREIGN KEY (`sanggar_id`) REFERENCES `sanggars` (`id`);

--
-- Constraints for table `daftar_karyas`
--
ALTER TABLE `daftar_karyas`
  ADD CONSTRAINT `daftar_karyas_sanggar_id_foreign` FOREIGN KEY (`sanggar_id`) REFERENCES `sanggars` (`id`);

--
-- Constraints for table `sanggars`
--
ALTER TABLE `sanggars`
  ADD CONSTRAINT `sanggars_id_jeniskesenian_foreign` FOREIGN KEY (`id_jeniskesenian`) REFERENCES `jenis_kesenians` (`id`),
  ADD CONSTRAINT `sanggars_id_kecamatan_foreign` FOREIGN KEY (`id_kecamatan`) REFERENCES `kecamatans` (`id`),
  ADD CONSTRAINT `sanggars_id_subkesenian_foreign` FOREIGN KEY (`id_subkesenian`) REFERENCES `sub_kesenians` (`id`),
  ADD CONSTRAINT `sanggars_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `sub_kesenians`
--
ALTER TABLE `sub_kesenians`
  ADD CONSTRAINT `sub_kesenians_id_jenis_kesenian_foreign` FOREIGN KEY (`id_jenis_kesenian`) REFERENCES `jenis_kesenians` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
