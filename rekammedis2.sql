-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Apr 2022 pada 01.30
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rekammedis2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `level`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'admin', '$2y$10$BBJrdZ/QTX7V8CSdKZetT.V447hYpZ39vblYMrE33ldNzOxc4.15C', 'admin', '2017-08-18 02:51:09', '2017-08-18 02:51:09', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `apotekers`
--

CREATE TABLE `apotekers` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `level` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `apotekers`
--

INSERT INTO `apotekers` (`id`, `username`, `password`, `nama`, `alamat`, `tgl_lahir`, `level`, `photo`, `created_at`, `updated_at`, `remember_token`) VALUES
('AP001', 'apoteker', '$2y$10$ZK/nPfKEnLmFktx1IOxgx.a83rBx1SJBgz0ibeI7NlWQjobtCHuw.', 'apoteker', 'sidoarjo', '1989-06-25', 'apoteker', 'user-apoteker.jpg', '2017-08-18 02:55:32', '2017-08-18 02:55:32', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokters`
--

CREATE TABLE `dokters` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `spesialis_id` smallint(6) NOT NULL,
  `level` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `dokters`
--

INSERT INTO `dokters` (`id`, `username`, `password`, `nama`, `alamat`, `tgl_lahir`, `spesialis_id`, `level`, `photo`, `created_at`, `updated_at`, `remember_token`) VALUES
('DK001', 'dokter', '$2y$10$LDM9s5vPllMmoWa/trmGw.2Grdtp3C22flp7W18rjpgmTPFmGQWfO', 'dokter', 'sidoarjo', '1993-07-20', 1, 'dokter', 'user-dokter.jpg', '2017-08-18 02:54:28', '2017-08-18 02:54:28', NULL),
('DK002', 'reyhan', '$2y$10$xB7ZESKImubGUdk8K7e46O43IDNVBzcqJJc/QwwN82uvtqKLCqZ9a', 'reyhan', 'jl. mawar', '1997-12-29', 1, 'dokter', '2022-04-17.WIN_20211027_17_43_22_Pro.jpg', '2022-04-16 22:13:21', '2022-04-16 22:13:21', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_obat`
--

CREATE TABLE `kategori_obat` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategori` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_obat`
--

INSERT INTO `kategori_obat` (`id`, `kategori`, `created_at`, `updated_at`) VALUES
(1, 'sakit kepala', '2017-08-18 03:20:52', '2017-08-18 04:11:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_08_01_075024_create_dokters_table', 1),
(2, '2017_08_01_075106_create_apotekers_table', 1),
(3, '2017_08_01_075255_create_resepsionists_table', 1),
(4, '2017_08_01_075332_create_pasiens_table', 1),
(5, '2017_08_01_075413_create_rk_medis_table', 1),
(6, '2017_08_01_075513_create_reseps_table', 1),
(7, '2017_08_01_075541_create_obats_table', 1),
(8, '2017_08_02_032344_create_admins_table', 1),
(9, '2017_08_04_101707_create_spesialis_table', 1),
(10, '2017_08_10_113316_create_kategori_obat_table', 1),
(11, '2018_09_03_214800_create_no_antrians_table', 1),
(12, '2018_10_10_212756_create_transaksi_pasiens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `no_antrians`
--

CREATE TABLE `no_antrians` (
  `id` int(10) UNSIGNED NOT NULL,
  `pasien_id` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `no_antrians`
--

INSERT INTO `no_antrians` (`id`, `pasien_id`, `no`, `created_at`, `updated_at`) VALUES
(1, '1', '01', NULL, NULL),
(6, 'PS0002', '002', '2022-04-16 23:23:53', '2022-04-16 23:23:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obats`
--

CREATE TABLE `obats` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kandungan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` int(10) UNSIGNED NOT NULL,
  `harga` double(8,2) NOT NULL,
  `status` enum('ada','habis') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `obats`
--

INSERT INTO `obats` (`id`, `nama`, `kandungan`, `kategori_id`, `harga`, `status`, `created_at`, `updated_at`) VALUES
(1, 'mixagrip', 'amoxilin', 1, 2000.00, 'ada', '2017-08-18 03:21:02', '2022-04-16 22:40:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasiens`
--

CREATE TABLE `pasiens` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('pria','wanita') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `telp` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('antri','obat','selesai') COLLATE utf8mb4_unicode_ci NOT NULL,
  `layanan_dokter` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pasiens`
--

INSERT INTO `pasiens` (`id`, `nama`, `jenis_kelamin`, `alamat`, `tgl_lahir`, `telp`, `pekerjaan`, `status`, `layanan_dokter`, `created_at`, `updated_at`) VALUES
('PS0001', 'ilham', 'pria', 'jl. melati', '2022-04-01', '082782637161', 'pegawai', 'antri', 'gigi', NULL, NULL),
('PS0002', 'aprian', 'pria', 'jl. merdeka no.15', '1999-11-30', '082721276321', 'pns', 'obat', 'DK001', '2022-04-16 23:23:53', '2022-04-16 23:26:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reseps`
--

CREATE TABLE `reseps` (
  `id` int(11) NOT NULL,
  `dokter_id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obat_id` smallint(6) NOT NULL,
  `pasien_id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` smallint(2) NOT NULL,
  `status` enum('belum','selesai','','') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reseps`
--

INSERT INTO `reseps` (`id`, `dokter_id`, `obat_id`, `pasien_id`, `keterangan`, `jumlah`, `status`, `created_at`, `updated_at`) VALUES
(1, '01', 1, '01', 'sadfaf', 2, 'selesai', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `resepsionists`
--

CREATE TABLE `resepsionists` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `level` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `resepsionists`
--

INSERT INTO `resepsionists` (`id`, `username`, `password`, `nama`, `alamat`, `tgl_lahir`, `level`, `photo`, `created_at`, `updated_at`, `remember_token`) VALUES
('RS001', 'resepsionist', '$2y$10$912Ux6ySgiMdtX2MxAGk6uvKNKPRZxJTD/3I0gmJB70vePvmtDtnm', 'resepsionist', 'sidoarjo', '1993-08-24', 'resepsionist', 'user-resepsionist.jpg', '2017-08-18 02:53:13', '2017-08-18 02:53:13', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rk_medis`
--

CREATE TABLE `rk_medis` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pasien_id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `dokter_id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diagnosa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keluhan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anamnesis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tindakan` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alergi_obat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bb` double(8,2) NOT NULL,
  `tb` double(8,2) NOT NULL,
  `tensi` double(8,2) NOT NULL,
  `bw` enum('ya','tidak') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rk_medis`
--

INSERT INTO `rk_medis` (`id`, `pasien_id`, `nama`, `tgl_lahir`, `dokter_id`, `diagnosa`, `keluhan`, `anamnesis`, `tindakan`, `keterangan`, `alergi_obat`, `bb`, `tb`, `tensi`, `bw`, `created_at`, `updated_at`) VALUES
('RK0002', 'PS0002', 'aprian', '0000-00-00', 'DK001', 'darah tinggi', 'batuk', 'not found', 'istirahat', 'perbanyak rebahan', 'tidak', 56.00, 157.00, 120.00, 'tidak', '2022-04-16 23:26:34', '2022-04-16 23:26:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spesialis`
--

CREATE TABLE `spesialis` (
  `id` int(10) UNSIGNED NOT NULL,
  `spesialis` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `spesialis`
--

INSERT INTO `spesialis` (`id`, `spesialis`, `created_at`, `updated_at`) VALUES
(1, 'gigi', '2017-08-18 02:54:22', '2017-08-18 02:54:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_pasiens`
--

CREATE TABLE `transaksi_pasiens` (
  `id` int(10) UNSIGNED NOT NULL,
  `dokter_id` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pasien_id` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_resep` date NOT NULL,
  `bayar` double NOT NULL,
  `total` double NOT NULL,
  `kembalian` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksi_pasiens`
--

INSERT INTO `transaksi_pasiens` (`id`, `dokter_id`, `pasien_id`, `tgl_resep`, `bayar`, `total`, `kembalian`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '2022-04-01', 70000, 50000, 20000, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `apotekers`
--
ALTER TABLE `apotekers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dokters`
--
ALTER TABLE `dokters`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_obat`
--
ALTER TABLE `kategori_obat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `no_antrians`
--
ALTER TABLE `no_antrians`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `obats`
--
ALTER TABLE `obats`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pasiens`
--
ALTER TABLE `pasiens`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reseps`
--
ALTER TABLE `reseps`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `resepsionists`
--
ALTER TABLE `resepsionists`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rk_medis`
--
ALTER TABLE `rk_medis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `spesialis`
--
ALTER TABLE `spesialis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi_pasiens`
--
ALTER TABLE `transaksi_pasiens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori_obat`
--
ALTER TABLE `kategori_obat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `no_antrians`
--
ALTER TABLE `no_antrians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `obats`
--
ALTER TABLE `obats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `reseps`
--
ALTER TABLE `reseps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `spesialis`
--
ALTER TABLE `spesialis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksi_pasiens`
--
ALTER TABLE `transaksi_pasiens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
