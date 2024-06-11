-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 06:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_kominfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_transaksi`
--

CREATE TABLE `data_transaksi` (
  `id` int(11) NOT NULL,
  `nama_penyedia` varchar(255) DEFAULT NULL,
  `nama_bank` varchar(255) DEFAULT NULL,
  `kode_kegiatan` varchar(255) DEFAULT NULL,
  `no_pesanan` varchar(255) DEFAULT NULL,
  `npwp` varchar(30) DEFAULT NULL,
  `bagian` varchar(50) DEFAULT NULL,
  `kode_rekening` varchar(255) DEFAULT NULL,
  `jumlah_pengajuan` decimal(10,2) DEFAULT NULL,
  `potongan_pph` decimal(5,2) DEFAULT NULL,
  `biaya_kirim_uang` decimal(10,2) DEFAULT NULL,
  `jumlah_diterima` decimal(10,2) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `jenis_spj` varchar(50) DEFAULT NULL,
  `edit_by` varchar(255) DEFAULT NULL,
  `edit_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_transaksi`

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(3, 'user', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(20171017120422);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `reg` varchar(50) NOT NULL,
  `established` date NOT NULL,
  `address` varchar(200) NOT NULL,
  `founder` varchar(100) NOT NULL,
  `slogan` varchar(500) NOT NULL,
  `file_path` varchar(200) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `cre_or_up_by` varchar(50) NOT NULL,
  `cre_or_up_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `reg`, `established`, `address`, `founder`, `slogan`, `file_path`, `email`, `contact`, `cre_or_up_by`, `cre_or_up_date`, `status`) VALUES
(1, 'HMVC AdminLte Grocery Crud Ion Auth', '784512', '2021-01-01', 'Noida', 'Codewife', 'Codeigniter Ready Admin Panel', '02e17-codewife.png', 'codewife@gmail.com', '9876543210', '1', '2021-01-06 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_pagu_anggaran`
--

CREATE TABLE `table_pagu_anggaran` (
  `id` int(11) NOT NULL,
  `tahun` int(11) DEFAULT NULL,
  `kode_program` varchar(20) DEFAULT NULL,
  `program` varchar(255) DEFAULT NULL,
  `kode_sub_program` varchar(20) DEFAULT NULL,
  `sub_program` varchar(255) DEFAULT NULL,
  `kode_kegiatan` varchar(20) DEFAULT NULL,
  `kegiatan` varchar(255) DEFAULT NULL,
  `kode_aktivitas` varchar(20) DEFAULT NULL,
  `aktivitas` varchar(255) DEFAULT NULL,
  `kode_sub_aktivitas` varchar(20) DEFAULT NULL,
  `sub_aktivitas` varchar(255) DEFAULT NULL,
  `kode_rekening` varchar(20) DEFAULT NULL,
  `uraian_kode_rekening` varchar(255) DEFAULT NULL,
  `pagu` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_pagu_anggaran`
--

INSERT INTO `table_pagu_anggaran` (`id`, `tahun`, `kode_program`, `program`, `kode_sub_program`, `sub_program`, `kode_kegiatan`, `kegiatan`, `kode_aktivitas`, `aktivitas`, `kode_sub_aktivitas`, `sub_aktivitas`, `kode_rekening`, `uraian_kode_rekening`, `pagu`) VALUES
(1, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.06', 'Administrasi Umum Perangkat Daerah', '7.02.01.1.06.0009', 'Penyelenggaraan Rapat Koordinasi dan Konsultasi SKPD', '0002', 'Rapat Koordinasi Pemantauan dan Evaluasi Bidang Perhubungan dan Ketenagakerjaan', '', '', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 4500000.00),
(2, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.06', 'Administrasi Umum Perangkat Daerah', '7.02.01.1.06.0009', 'Penyelenggaraan Rapat Koordinasi dan Konsultasi SKPD', '0003', 'Pelaksanaan Koordinasi, Pemantauan dan Evaluasi Penataan Kawasan di Kota Administrasi', '', '', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 3780000.00),
(3, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.06', 'Administrasi Umum Perangkat Daerah', '7.02.01.1.06.0009', 'Penyelenggaraan Rapat Koordinasi dan Konsultasi SKPD', '0004', 'Rapat Koordinasi Pemantauan dan Evaluasi Bidang Pariwisata, Pangan, Kelautan dan Pertanian', '', '', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 3240000.00),
(4, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.06', 'Administrasi Umum Perangkat Daerah', '7.02.01.1.06.0009', 'Penyelenggaraan Rapat Koordinasi dan Konsultasi SKPD', '0005', 'Pelaksanaan Koordinasi, Pemantauan dan Evaluasi Bidang Pekerjaan Umum Kota Administrasi', '', '', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 9000000.00),
(5, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.06', 'Administrasi Umum Perangkat Daerah', '7.02.01.1.06.0009', 'Penyelenggaraan Rapat Koordinasi dan Konsultasi SKPD', '0006', 'Rapat Koordinasi Pemantauan dan Evaluasi Bidang Perindustrian, Perdagangan, dan Koperasi Usaha Kecil dan Menengah', '', '', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 5400000.00),
(6, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.06', 'Administrasi Umum Perangkat Daerah', '7.02.01.1.06.0009', 'Penyelenggaraan Rapat Koordinasi dan Konsultasi SKPD', '0012', 'Pelaksanaan Koordinasi, Pengendalian, Pemantauan dan Evaluasi Bidang Lingkungan Hidup dan Ruang Terbuka Hijau', '', '', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 3250000.00),
(7, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0005', 'Pengadaan Mebel', '0002', 'Pengadaan Mebel Kantor Kelurahan Utan Panjang', '', '', '5.2.02.05.02.0001', 'Belanja Modal Mebel', 418929569.00),
(8, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0005', 'Pengadaan Mebel', '0002', 'Pengadaan Mebel Kantor Kelurahan Utan Panjang', '', '', '5.2.02.05.02.0005', 'Belanja Modal Alat Dapur', 14909073.00),
(9, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0005', 'Pengadaan Mebel', '0002', 'Pengadaan Mebel Kantor Kelurahan Utan Panjang', '', '', '5.2.02.05.02.0006', 'Belanja Modal Alat Rumah Tangga Lainnya (Home Use )', 85567889.00),
(10, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0005', 'Pengadaan Mebel', '0003', 'Pengadaan Mebel Kantor Kelurahan Kebon Kacang', '', '', '5.2.02.05.02.0001', 'Belanja Modal Mebel', 410640156.00),
(11, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0005', 'Pengadaan Mebel', '0003', 'Pengadaan Mebel Kantor Kelurahan Kebon Kacang', '', '', '5.2.02.05.02.0005', 'Belanja Modal Alat Dapur', 14909073.00),
(12, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0005', 'Pengadaan Mebel', '0003', 'Pengadaan Mebel Kantor Kelurahan Kebon Kacang', '', '', '5.2.02.05.02.0006', 'Belanja Modal Alat Rumah Tangga Lainnya (Home Use )', 85567889.00),
(13, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0005', 'Pengadaan Mebel', '0004', 'Pengadaan Mebel Kantor Kelurahan Gelora', '', '', '5.2.02.05.02.0001', 'Belanja Modal Mebel', 463377098.00),
(14, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0005', 'Pengadaan Mebel', '0004', 'Pengadaan Mebel Kantor Kelurahan Gelora', '', '', '5.2.02.05.02.0005', 'Belanja Modal Alat Dapur', 14909073.00),
(15, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0005', 'Pengadaan Mebel', '0004', 'Pengadaan Mebel Kantor Kelurahan Gelora', '', '', '5.2.02.05.02.0006', 'Belanja Modal Alat Rumah Tangga Lainnya (Home Use )', 85567889.00),
(16, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0005', 'Pengadaan Mebel', '0005', 'Pengadaan Mebel Rumah Dinas Camat Sawah Besar', '', '', '5.2.02.05.02.0001', 'Belanja Modal Mebel', 89882320.00),
(17, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0005', 'Pengadaan Mebel', '0005', 'Pengadaan Mebel Rumah Dinas Camat Sawah Besar', '', '', '5.2.02.05.02.0005', 'Belanja Modal Alat Dapur', 10660892.00),
(18, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0005', 'Pengadaan Mebel', '0005', 'Pengadaan Mebel Rumah Dinas Camat Sawah Besar', '', '', '5.2.02.05.02.0006', 'Belanja Modal Alat Rumah Tangga Lainnya (Home Use )', 41084826.00),
(19, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0005', 'Pengadaan Mebel', '0006', 'Pengadaan Mebel Rumah Dinas Lurah Kampung Rawa', '', '', '5.2.02.05.02.0001', 'Belanja Modal Mebel', 74653759.00),
(20, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0005', 'Pengadaan Mebel', '0006', 'Pengadaan Mebel Rumah Dinas Lurah Kampung Rawa', '', '', '5.2.02.05.02.0005', 'Belanja Modal Alat Dapur', 10660892.00),
(21, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0005', 'Pengadaan Mebel', '0006', 'Pengadaan Mebel Rumah Dinas Lurah Kampung Rawa', '', '', '5.2.02.05.02.0006', 'Belanja Modal Alat Rumah Tangga Lainnya (Home Use )', 41084826.00),
(22, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0009', 'Pengadaan Gedung Kantor atau Bangunan Lainnya', '0006', 'Perencanaan Rehab Total Kantor Lurah Senen Kota Administrasi Jakarta Pusat', '', '', '5.2.03.01.01.0001 ', 'Belanja Modal Bangunan Gedung Kantor', 281575698.00),
(23, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0009', 'Pengadaan Gedung Kantor atau Bangunan Lainnya', '020', 'Rehab Total Rudin Lurah Gelora Kota Administrasi Jakarta Pusat', '001', 'Belanja Konsultansi Perencanaan Konstruksi', '5.2.03.01.01.0001 ', 'Belanja Modal Bangunan Gedung Kantor', 2851279.00),
(24, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0009', 'Pengadaan Gedung Kantor atau Bangunan Lainnya', '020', 'Rehab Total Rudin Lurah Gelora Kota Administrasi Jakarta Pusat', '001', 'Belanja Konsultansi Perencanaan Konstruksi', '5.2.03.01.02.0002', 'Belanja Modal Rumah Negara Golongan II', 63825000.00),
(25, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0009', 'Pengadaan Gedung Kantor atau Bangunan Lainnya', '020', 'Rehab Total Rudin Lurah Gelora Kota Administrasi Jakarta Pusat', '002', 'Belanja Konsultansi Pengawasan Konstruksi', '5.2.03.01.01.0001 ', 'Belanja Modal Bangunan Gedung Kantor', 4218000.00),
(26, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0009', 'Pengadaan Gedung Kantor atau Bangunan Lainnya', '020', 'Rehab Total Rudin Lurah Gelora Kota Administrasi Jakarta Pusat', '002', 'Belanja Konsultansi Pengawasan Konstruksi', '5.2.03.01.02.0002', 'Belanja Modal Rumah Negara Golongan II', 191475000.00),
(27, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '7.02.01.1.07.0009', 'Pengadaan Gedung Kantor atau Bangunan Lainnya', '020', 'Rehab Total Rudin Lurah Gelora Kota Administrasi Jakarta Pusat', '003', 'Belanja Pembangunan Rudin', '5.2.03.01.02.0002', 'Belanja Modal Rumah Negara Golongan II', 740375536.00),
(28, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.09', 'Pemeliharaan Barang Milik Daerah Penunjang Urusan Pemerintahan Daerah', '7.02.01.1.09.0009', 'Pemeliharaan/Rehabilitasi Gedung Kantor dan Bangunan Lainnya', '004', 'Rehab Berat Rudin Lurah Pasar Baru Kota Administrasi Jakarta Pusat', '001', 'Belanja Konsultansi Perencanaan Konstruksi', '5.2.03.01.01.0001 ', 'Belanja Modal Bangunan Gedung Kantor', 1332000.00),
(29, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.09', 'Pemeliharaan Barang Milik Daerah Penunjang Urusan Pemerintahan Daerah', '7.02.01.1.09.0009', 'Pemeliharaan/Rehabilitasi Gedung Kantor dan Bangunan Lainnya', '004', 'Rehab Berat Rudin Lurah Pasar Baru Kota Administrasi Jakarta Pusat', '001', 'Belanja Konsultansi Perencanaan Konstruksi', '5.2.03.01.02.0002', 'Belanja Modal Rumah Negara Golongan II', 31912500.00),
(30, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.09', 'Pemeliharaan Barang Milik Daerah Penunjang Urusan Pemerintahan Daerah', '7.02.01.1.09.0009', 'Pemeliharaan/Rehabilitasi Gedung Kantor dan Bangunan Lainnya', '004', 'Rehab Berat Rudin Lurah Pasar Baru Kota Administrasi Jakarta Pusat', '002', 'Belanja Konsultansi Pengawasan Konstruksi', '5.2.03.01.01.0001 ', 'Belanja Modal Bangunan Gedung Kantor', 3774000.00),
(31, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.09', 'Pemeliharaan Barang Milik Daerah Penunjang Urusan Pemerintahan Daerah', '7.02.01.1.09.0009', 'Pemeliharaan/Rehabilitasi Gedung Kantor dan Bangunan Lainnya', '004', 'Rehab Berat Rudin Lurah Pasar Baru Kota Administrasi Jakarta Pusat', '002', 'Belanja Konsultansi Pengawasan Konstruksi', '5.2.03.01.02.0002', 'Belanja Modal Rumah Negara Golongan II', 53835000.00),
(32, 2024, '7:02:01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH PROVINSI', '7.02.01.1.09', 'Pemeliharaan Barang Milik Daerah Penunjang Urusan Pemerintahan Daerah', '7.02.01.1.09.0009', 'Pemeliharaan/Rehabilitasi Gedung Kantor dan Bangunan Lainnya', '004', 'Rehab Berat Rudin Lurah Pasar Baru Kota Administrasi Jakarta Pusat', '003', 'Belanja Pembangunan Rudin', '5.2.03.01.02.0002', 'Belanja Modal Rumah Negara Golongan II', 297783295.00),
(33, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0001', 'Peningkatan Kapasitas Lembaga Kemasyarakatan Kota Administrasi', '001', 'Pelaksanaan Pembinaan Lembaga Kemayarakatan LMK dan RT/RW Tingkat Kota Administrasi Jakarta Pusat', '001', 'Sosialisasi dan Pembinaan LMK, RT dan RW', '5.1.02.01.01.0024', 'Belanja Alat/Bahan untuk Kegiatan Kantor-Alat Tulis Kantor', 5545206.00),
(34, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0001', 'Peningkatan Kapasitas Lembaga Kemasyarakatan Kota Administrasi', '001', 'Pelaksanaan Pembinaan Lembaga Kemayarakatan LMK dan RT/RW Tingkat Kota Administrasi Jakarta Pusat', '001', 'Sosialisasi dan Pembinaan LMK, RT dan RW', '5.1.02.01.01.0026', 'Belanja Alat/Bahan untuk Kegiatan Kantor- Bahan Cetak', 4137000.00),
(35, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0001', 'Peningkatan Kapasitas Lembaga Kemasyarakatan Kota Administrasi', '001', 'Pelaksanaan Pembinaan Lembaga Kemayarakatan LMK dan RT/RW Tingkat Kota Administrasi Jakarta Pusat', '001', 'Sosialisasi dan Pembinaan LMK, RT dan RW', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 9750000.00),
(36, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0001', 'Peningkatan Kapasitas Lembaga Kemasyarakatan Kota Administrasi', '001', 'Pelaksanaan Pembinaan Lembaga Kemayarakatan LMK dan RT/RW Tingkat Kota Administrasi Jakarta Pusat', '001', 'Sosialisasi dan Pembinaan LMK, RT dan RW', '5.1.02.02.01.0003', 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia', 2000000.00),
(37, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0001', 'Peningkatan Kapasitas Lembaga Kemasyarakatan Kota Administrasi', '001', 'Pelaksanaan Pembinaan Lembaga Kemayarakatan LMK dan RT/RW Tingkat Kota Administrasi Jakarta Pusat', '002', 'Rapat Persiapan', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 360000.00),
(38, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0002', 'Pengurusan Perkara di Pengadilan Tingkat Kota Administrasi', '001', 'Pengurusan Perkara di Pengadilan Tingkat Kota Administrasi', '001', 'Pengurusan Perkara di Pengadilan Tingkat Kota Administrasi', '5.1.02.01.01.0027', 'Belanja Alat/Bahan untuk Kegiatan Kantor-Benda Pos', 998108.00),
(39, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0002', 'Pengurusan Perkara di Pengadilan Tingkat Kota Administrasi', '001', 'Pengurusan Perkara di Pengadilan Tingkat Kota Administrasi', '001', 'Pengurusan Perkara di Pengadilan Tingkat Kota Administrasi', '5.1.02.02.01.0004', 'Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan', 69850000.00),
(40, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0003', 'Penyelesaian Sengketa Pertanahan Tingkat Kota Administrasi', '001', 'Penyelesaian Sengketa Pertanahan Tingkat Kota Administrasi', '001', 'Focus Group Discussion (FGD) Penyelesaian Sengketa', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 3900000.00),
(41, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0003', 'Penyelesaian Sengketa Pertanahan Tingkat Kota Administrasi', '001', 'Penyelesaian Sengketa Pertanahan Tingkat Kota Administrasi', '001', 'Focus Group Discussion (FGD) Penyelesaian Sengketa', '5.1.02.02.01.0003', 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia', 2300000.00),
(42, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0003', 'Penyelesaian Sengketa Pertanahan Tingkat Kota Administrasi', '001', 'Penyelesaian Sengketa Pertanahan Tingkat Kota Administrasi', '002', 'Rapat Koordinasi Penyelesaian Sengketa Pertanahan', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 10800000.00),
(43, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0004', 'Peningkatan Kesadaran Hukum dan Hak Asasi Manusia Tingkat Kota Administrasi', '0001', 'Peningkatan Kesadaran Hukum dan Hak Asasi Manusia Tingkat Kota Administrasi', '001', 'Pelaksanaan Pembinaan Kelompok Keluarga Sadar Hukum Kota Administrasi', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 4860000.00),
(44, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0004', 'Peningkatan Kesadaran Hukum dan Hak Asasi Manusia Tingkat Kota Administrasi', '0001', 'Peningkatan Kesadaran Hukum dan Hak Asasi Manusia Tingkat Kota Administrasi', '001', 'Pelaksanaan Pembinaan Kelompok Keluarga Sadar Hukum Kota Administrasi', '5.1.02.02.01.0003', 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia', 10800000.00),
(45, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0004', 'Peningkatan Kesadaran Hukum dan Hak Asasi Manusia Tingkat Kota Administrasi', '0001', 'Peningkatan Kesadaran Hukum dan Hak Asasi Manusia Tingkat Kota Administrasi', '002', 'Pembinaan Keluarga Sadar Hukum', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 3240000.00),
(46, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0004', 'Peningkatan Kesadaran Hukum dan Hak Asasi Manusia Tingkat Kota Administrasi', '0001', 'Peningkatan Kesadaran Hukum dan Hak Asasi Manusia Tingkat Kota Administrasi', '002', 'Pembinaan Keluarga Sadar Hukum', '5.1.02.02.01.0003', 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia', 7200000.00),
(47, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0004', 'Peningkatan Kesadaran Hukum dan Hak Asasi Manusia Tingkat Kota Administrasi', '0001', 'Peningkatan Kesadaran Hukum dan Hak Asasi Manusia Tingkat Kota Administrasi', '003', 'Pembinaan Pemahaman Hukum bagi para Siswa dan Siswi Sekolah', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 45000000.00),
(48, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0004', 'Peningkatan Kesadaran Hukum dan Hak Asasi Manusia Tingkat Kota Administrasi', '0001', 'Peningkatan Kesadaran Hukum dan Hak Asasi Manusia Tingkat Kota Administrasi', '003', 'Pembinaan Pemahaman Hukum bagi para Siswa dan Siswi Sekolah', '5.1.02.02.01.0003', 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia', 36000000.00),
(49, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0005', 'Peningkatan dan Pembinaan Kota Peduli Hak Asasi Manusia (HAM) Kota Administrasi', '0001', 'Peningkatan dan Pembinaan Kota Peduli Hak Asasi Manusia (HAM) Kota Administrasi', '', '', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 1440000.00),
(50, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0006', 'Penyusunan Laporan dan Evaluasi Kinerja Walikota Kota Administrasi', '0001', 'Evaluasi Kinerja Walikota Kota Administrasi', '', '', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 1318680.00),
(51, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0007', 'Penyusunan Laporan Kinerja Instansi Pemerintah (LKIP) Kota Administrasi', '0001', 'Penyusunan Laporan Kinerja Instansi Pemerintah (LKIP) Kota Administrasi', '', '', '5.1.02.01.01.0025', 'Belanja Alat/Bahan untuk Kegiatan Kantor- Kertas dan Cover', 2897655.00),
(52, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0007', 'Penyusunan Laporan Kinerja Instansi Pemerintah (LKIP) Kota Administrasi', '0001', 'Penyusunan Laporan Kinerja Instansi Pemerintah (LKIP) Kota Administrasi', '', '', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 299700.00),
(53, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0008', 'Pelaksanaan Koordinasi, Pemantauan dan Evaluasi Pembentukan Kewirausahaan Baru pada Kota Administrasi', '0001', 'Pelaksanaan Rapat Pelaksanaan Koordinasi, Pemantauan dan Evaluasi Pembentukan Kewirausahaan Baru Pada Kota Administrasi', '', '', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 3600000.00),
(54, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0015', 'Pelaksanaan Partisipasi Kota Administrasi dalam Asosiasi Pemerintah Kota Seluruh Indonesia (APEKSI)', '0001', 'Pembayaran Iuran Keanggotaan Dalam Asosiasi Pemerintah Kota Seluruh Indonesia (APEKSI)', '001', 'Iuran APEKSI Rakernas', '5.1.02.02.01.0066', 'Belanja Registrasi/Keanggotaan', 100000000.00),
(55, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0016', 'Pembinaan dan Evaluasi Kecamatan dan Kelurahan Kota Administrasi', '0001', 'Pembinaan dan Evaluasi Kecamatan dan Kelurahan Kota Administrasi Jakarta Pusat', '001', 'Rapat Persiapan', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 360000.00),
(56, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0016', 'Pembinaan dan Evaluasi Kecamatan dan Kelurahan Kota Administrasi', '0001', 'Pembinaan dan Evaluasi Kecamatan dan Kelurahan Kota Administrasi Jakarta Pusat', '002', 'Pelaksanaan Pembinaan', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 1530000.00),
(57, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0018', 'Pelaksanaan Rapim dan Rakorwil Kota Administrasi', '0001', 'Pelaksanaan Rapim dan Rakorwil Sekretariat Kota Administrasi Jakarta Pusat', '001', 'Pelaksanaan Rapat Pimpinan', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 12168000.00),
(58, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0018', 'Pelaksanaan Rapim dan Rakorwil Kota Administrasi', '0001', 'Pelaksanaan Rapim dan Rakorwil Sekretariat Kota Administrasi Jakarta Pusat', '002', 'Pelaksanaan Rapat Koordinasi Wilayah', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 57900000.00),
(59, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0020', 'Pelaksanaan Monitoring dan Evaluasi Kegiatan/Pembangunan/Rehab Total/Rehab Sedang Kantor Lurah Kota Administrasi', '0001', 'Pelaksanaan Monitoring dan Evaluasi Kegiatan/ Pembangunan/ Rehab Total/Rehab Sedang Kantor Lurah Kota Administrasi', '', '', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 12726200.00),
(60, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0022', 'Pelaksanaan Koordinasi, Pemantauan dan Evaluasi Pembangunan dan Pemanfaatan Ruang Bangunan', '0001', 'Pelaksanaan Rapat Koordinasi, Pemantauan dan Evaluasi Pembangunan serta Pemanfaatan Ruang Bangunan', '', '', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 2700000.00),
(61, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0024', 'Penyusunan dan Evaluasi Standar Operasional dan Prosedur Kota Administrasi', '0001', 'Evaluasi dan Penyusunan Standar Operasional dan Prosedur Kota Administrasi', '001', 'Monitoring dan Evaluasi SOP', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 1875900.00),
(62, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0025', 'Pengendalian dan Evaluasi Penanganan Pengaduan Masyarakat Tingkat Kota Administrasi', '0001', 'Pengendalian dan Evaluasi Penanganan Pengaduan Masyarakat Tingkat Kota Administrasi', '001', 'pengendalian dan evaluasi penanganan pengaduan masyarakat', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 2517480.00),
(63, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0026', 'Pengendalian dan Evaluasi Pelayanan Publik Tingkat Kota Administrasi', '0001', 'Pengendalian dan Evaluasi Pelayanan Publik Tingkat Kota Administrasi', '001', 'pengendalian dan evaluasi pelayanan publik', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 7592400.00),
(64, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0027', 'Pelaksanaan Koordinasi Pengukuran Kepuasan Masyarakat Terhadap Pelayanan Publik di Kota Administrasi', '0001', 'Pelaksanaan Koordinasi Pengukuran Kepuasan Masyarakat Terhadap Pelayanan Publik di Kota Administrasi', '001', 'pengukuran survei kepuasan masyarakat', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 2164500.00),
(65, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0028', 'Pembinaan Administrasi Kepegawaian Kota Administrasi', '0001', 'Pembinaan Administrasi Kepegawaian', '001', 'Rapat Koordinasi Kepegawaian', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 1300000.00),
(66, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0028', 'Pembinaan Administrasi Kepegawaian Kota Administrasi', '0001', 'Pembinaan Administrasi Kepegawaian', '002', 'Pembinaan Kepegawaian', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 3060000.00),
(67, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0039', 'Peningkatan Tugas dan Fungsi Dewan Kota Administrasi', '0001', 'Penyelenggaraan Tugas dan Fungsi Dewan Kota Administrasi Jakarta Pusat', '001', 'Uang Kehormatan Dewan Kota', '5.1.02.02.01.0004', 'Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan', 480000000.00),
(68, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0039', 'Peningkatan Tugas dan Fungsi Dewan Kota Administrasi', '0001', 'Penyelenggaraan Tugas dan Fungsi Dewan Kota Administrasi Jakarta Pusat', '002', 'Uang Transport DewanKota', '5.1.02.02.01.0006', 'Honorarium Penyuluhan atau Pendampingan', 168000000.00),
(69, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0039', 'Peningkatan Tugas dan Fungsi Dewan Kota Administrasi', '0001', 'Penyelenggaraan Tugas dan Fungsi Dewan Kota Administrasi Jakarta Pusat', '003', 'Kelengkapan Kerja Dewan Kota', '5.1.02.01.01.0024', 'Belanja Alat/Bahan untuk Kegiatan Kantor-Alat Tulis Kantor', 3370297.00),
(70, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0039', 'Peningkatan Tugas dan Fungsi Dewan Kota Administrasi', '0001', 'Penyelenggaraan Tugas dan Fungsi Dewan Kota Administrasi Jakarta Pusat', '003', 'Kelengkapan Kerja Dewan Kota', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 9277590.00),
(71, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0039', 'Peningkatan Tugas dan Fungsi Dewan Kota Administrasi', '0001', 'Penyelenggaraan Tugas dan Fungsi Dewan Kota Administrasi Jakarta Pusat', '003', 'Kelengkapan Kerja Dewan Kota', '5.1.02.01.01.0064', 'Belanja Pakaian Dinas Lapangan (PDL)', 4148550.00),
(72, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0039', 'Peningkatan Tugas dan Fungsi Dewan Kota Administrasi', '0001', 'Penyelenggaraan Tugas dan Fungsi Dewan Kota Administrasi Jakarta Pusat', '003', 'Kelengkapan Kerja Dewan Kota', '5.1.02.01.01.0076', 'Belanja Pakaian Olahraga', 3010968.00),
(73, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0039', 'Peningkatan Tugas dan Fungsi Dewan Kota Administrasi', '0001', 'Penyelenggaraan Tugas dan Fungsi Dewan Kota Administrasi Jakarta Pusat', '004', 'Serap Aspirasi Dewan Kota', '5.1.02.01.01.0026', 'Belanja Alat/Bahan untuk Kegiatan Kantor- Bahan Cetak', 4112480.00),
(74, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0039', 'Peningkatan Tugas dan Fungsi Dewan Kota Administrasi', '0001', 'Penyelenggaraan Tugas dan Fungsi Dewan Kota Administrasi Jakarta Pusat', '004', 'Serap Aspirasi Dewan Kota', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 73340000.00),
(75, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0039', 'Peningkatan Tugas dan Fungsi Dewan Kota Administrasi', '0002', 'Pelaksanaan Pemilihan Calon Anggota Dewan Kota Administrasi Jakarta Pusat Periode 2024-2029', '001', 'Pemilihan Anggota Dewan Kota', '5.1.02.01.01.0026', 'Belanja Alat/Bahan untuk Kegiatan Kantor- Bahan Cetak', 822496.00),
(76, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0039', 'Peningkatan Tugas dan Fungsi Dewan Kota Administrasi', '0002', 'Pelaksanaan Pemilihan Calon Anggota Dewan Kota Administrasi Jakarta Pusat Periode 2024-2029', '001', 'Pemilihan Anggota Dewan Kota', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 10400000.00),
(77, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0039', 'Peningkatan Tugas dan Fungsi Dewan Kota Administrasi', '0002', 'Pelaksanaan Pemilihan Calon Anggota Dewan Kota Administrasi Jakarta Pusat Periode 2024-2029', '001', 'Pemilihan Anggota Dewan Kota', '5.1.02.02.01.0004', 'Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan', 159600000.00),
(78, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0039', 'Peningkatan Tugas dan Fungsi Dewan Kota Administrasi', '0002', 'Pelaksanaan Pemilihan Calon Anggota Dewan Kota Administrasi Jakarta Pusat Periode 2024-2029', '002', 'Persiapan Pemilihan', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 540000.00),
(79, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0039', 'Peningkatan Tugas dan Fungsi Dewan Kota Administrasi', '0002', 'Pelaksanaan Pemilihan Calon Anggota Dewan Kota Administrasi Jakarta Pusat Periode 2024-2029', '003', 'Pelaksanaan Pengukuhan/Pelantikan', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 6500000.00),
(80, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0039', 'Peningkatan Tugas dan Fungsi Dewan Kota Administrasi', '0002', 'Pelaksanaan Pemilihan Calon Anggota Dewan Kota Administrasi Jakarta Pusat Periode 2024-2029', '003', 'Pelaksanaan Pengukuhan/Pelantikan', '5.1.02.02.01.0004', 'Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan', 3000000.00),
(81, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0044', 'Penagihan Kewajiban Fasos Fasum dan Sinkronisasi Data SIPPT Kota Administrasi', '0002', 'Pelaksanaan Rapat Penagihan Kewajiban Fasos Fasum dan Sinkronisasi Data SIPPT Kota Administrasi', '001', 'Pelaksanaan rapat penagihan kewajiban fasos fasum dan sinkronisasi data SIPPT', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 6300000.00),
(82, 2024, '7:02:02', 'PROGRAM PENGELOLAAN KOTA ADMINISTRASI', '7.02.02.6.03', 'Peningkatan Penyelenggaraan Kota Administrasi', '7.02.02.6.03.0045', 'Pelaksanaan Koordinasi, Pengendalian, Pemantauan dan Evaluasi Kegiatan di Bawah Koordinasi Asisten Perekonomian dan Pembangunan Kota Administrasi', '0001', 'Pelaksanaan Rapat Koordinasi, Pengendalian, Pemantauan dan Evaluasi Kegiatan dibawah Koordinasi Asisten Perekonomian dan Pembangunan Kota Administrasi', '001', 'Pelaksanaan Rapat Bidang Perekonomian dan Pembangunan', '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', 3250000.00);

-- --------------------------------------------------------

--
-- Table structure for table `table_referensi_bank`
--

CREATE TABLE `table_referensi_bank` (
  `id` int(11) NOT NULL,
  `nama_bank` varchar(255) DEFAULT NULL,
  `no_rekening` varchar(50) DEFAULT NULL,
  `npwp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_referensi_bank`
--

INSERT INTO `table_referensi_bank` (`id`, `nama_bank`, `no_rekening`, `npwp`) VALUES
(1, 'DKI', '83.376.288.3-027.000', '5.1.02.01.01.0053'),
(2, 'BRI', '89.212.231.8-407.000', '5.1.02.02.01.0003'),
(3, 'DKI', '24.815.068.2-029.000', '5.1.02.01.01.0052');

-- --------------------------------------------------------

--
-- Table structure for table `table_referensi_kode_kegiatan`
--

CREATE TABLE `table_referensi_kode_kegiatan` (
  `id` int(11) NOT NULL,
  `kode_kegiatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_referensi_kode_kegiatan`
--

INSERT INTO `table_referensi_kode_kegiatan` (`id`, `kode_kegiatan`) VALUES
(1, '7.02.01.1.06.0009 Penyelenggaraan Rapat Koordinasi dan Konsultasi SKPD'),
(2, '7.02.01.1.07.0005 Pengadaan Mebel'),
(3, '7.02.01.1.07.0009 Pengadaan Gedung Kantor atau Bangunan Lainnya'),
(4, '7.02.01.1.09.0009 Pemeliharaan atau Rehabilitas Gedung Kantor dan Bangunan Lainnya'),
(5, '7.02.02.6.03.0001 Peningkatan Kapasitas Lembaga Kemasyarakatan Kota Administrasi'),
(6, '7.02.02.6.03.0002 Pengurusan Perkara di Pengadilan Tingkat Kota Administrasi'),
(7, '7.02.02.6.03.0003 Penyelesaian Sengketa Pertanahan Tingkat Kota Administrasi'),
(8, '7.02.02.6.03.0004 Peningkatan Kesadaran Hukum dan Hak Asasi Manusia Tingkat Kota Administrasi'),
(9, '7.02.02.6.03.0005 Peningkatan dan Pembinaan Kota Peduli Hak Asasi Manusia (HAM) Kota Administrasi'),
(10, '7.02.02.6.03.0006 Penyusunan Laporan dan Evaluasi Kinerja Walikota Administrasi'),
(11, '7.02.02.6.03.0007 Penyusunan Laporan Instansi Pemerintah (LKIP) Kota Administrasi'),
(12, '7.02.02.6.03.0008 Pelaksanaan Koordinasi, Pemantauan dan Evaluasi dan Pembentukan Kewirausahaan Pada Kota Administrasi'),
(13, '7.02.02.6.03.0015 Pelaksanaan Partisipasi Kota Administrasi dalam Asosiasi Pemerintah Kota Seluruh Indonesia (APEKSI)'),
(14, '7.02.02.6.03.0016 Pembinaan dan Evaluasi Kecamatan dan Kelurahan Kota Administrasi'),
(15, '7.02.02.6.03.0018 Pelaksanaan Rapim dan Rakorwil Kota Administrasi'),
(16, '7.02.02.6.03.0020 Pelaksanaan Monitoring dan Evaluasi/Pembangunan/Rehab Total/Rehab Sedang Kantor Lurah Kota Administrasi'),
(17, '7.02.02.6.03.0022 Pelaksanaan Koordinasi, Pemantauan dan Evaluasi Pembangunan dan Pemanfaatan Ruang Bangunan'),
(18, '7.02.02.6.03.0024 Penyusunan dan Evaluasi Standar Operasional dan Prosedur Kota Administrasi'),
(19, '7.02.02.6.03.0025 Pengendalian dan Evaluasi Penanganan Pengaduan Masyarakat Kota Administrasi'),
(20, '7.02.02.6.03.0026 Pengendalian dan Evaluasi Pelayanan Publik Tingkat Kota Administrasi'),
(21, '7.02.02.6.03.0027 Pelaksanaan Koordinasi Pengukuran Kepuasan Masyarakat Terhadap Pelayanan Publik di Kota Administrasi'),
(22, '7.02.02.6.03.0028 Pembinaan Administrasi Kepegawaian Kota Administrasi'),
(23, '7.02.02.6.03.0039 Peningkatan Tugas dan Fungsi Dewan Kota Administrasi'),
(24, '7.02.02.6.03.0044 Penagihan Kewajiban Fasos Fasum dan Sinkronisasi Data SIPPT Kota Administrasi'),
(25, '7.02.02.6.03.0045 Pelaksanaan Koordinasi, Pengendalian, Pemantauan, dan Evaluasi Kegiatan di Bawah Koordinasi Asisten Perekonomian dan Pembangunan Kota Administrasi');

-- --------------------------------------------------------

--
-- Table structure for table `table_referensi_kode_rekening`
--

CREATE TABLE `table_referensi_kode_rekening` (
  `id` int(11) NOT NULL,
  `kode_rekening` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_referensi_kode_rekening`
--

INSERT INTO `table_referensi_kode_rekening` (`id`, `kode_rekening`) VALUES
(1, '5.1.02.01.01.0024 Belanja Alat/Bahan Untuk Kegiatan Kantor-Alat Tulis Kantor'),
(2, '5.1.02.01.01.0025 Belanja Alat/Bahan Untuk Kegiatan Kantor-Kertas dan Cover'),
(3, '5.1.02.01.01.0026 Belanja Alat/Bahan Untuk Kegiatan Kantor-Bahan Cetak'),
(4, '5.1.02.01.01.0027 Belanja Alat/Bahan Untuk Kegiatan Kantor-Benda Pos'),
(5, '5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'),
(6, '5.1.02.01.01.0064 Belanja Pakaian Dinas Lapangan (PDL)'),
(7, '5.1.02.01.01.0076 Belanja Pakaian Olahraga'),
(8, '5.1.02.02.01.0003 Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia'),
(9, '5.1.02.02.01.0004 Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksanaan Kegiatan'),
(10, '5.1.02.02.01.0006 Honorarium Penyuluhan atau Pendampingan'),
(11, '5.1.02.02.01.0066 Belanja Registasi/Keanggotaan'),
(12, '5.2.02.05.02.0001 Belanja Modal Mebel'),
(13, '5.2.02.05.02.0005 Belanja Modal Alat Dapur'),
(14, '5.2.02.05.02.0006 Belanja Modal Alat Rumah Tangga Lainnya (Home Use)'),
(15, '5.2.03.01.01.0001 Belanja Modal Bangunan Gedung Kantor'),
(16, '5.2.03.01.02.0002 Belanja Modal Rumah Negara Golongan II');

-- --------------------------------------------------------

--
-- Table structure for table `table_referensi_penyedia`
--

CREATE TABLE `table_referensi_penyedia` (
  `id` int(11) NOT NULL,
  `data_transaksi_id` int(11) DEFAULT NULL,
  `nama_penyedia` varchar(255) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nama_bank` varchar(255) NOT NULL,
  `kode_rekening` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_referensi_potongan`
--

CREATE TABLE `table_referensi_potongan` (
  `id` int(11) NOT NULL,
  `jenis_potongan` varchar(255) DEFAULT NULL,
  `nilai_potongan` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `file_path` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `file_path`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$ImF1EG/1jgGNpo4A.Ev7TuSNZpH1HCMvlmi4148ggFliP9sZLBjRq', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 2024, 2024, 1, 'Admin', 'istrator', 'ADMIN', '01851334578', 'assets/images/user/1568612588.png'),
(2, '::1', 'mad', '$2y$12$PoeqdIPE6wQfk6HQYIDr7Ouv6AdwF6zJaTp8LGQNA1LFS4iqHmR.i', 'mad@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1710408639, 2024, 1, 'Mad', 'zeq', NULL, '02121281', 'assets/images/user/1710408639.jpeg'),
(3, '::1', 'user', '$2y$10$W.6veFzXbT2EZaBq22p6beBnt33.k8R0h5Nx6fGzm0smdi1i.RRum', 'user1@user.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2024, 2024, 1, 'user111', 'user1', NULL, '319380138109', 'assets/images/user/1710486891.png');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(8, 1, 1),
(9, 2, 1),
(11, 3, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_transaksi`
--
ALTER TABLE `data_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_pagu_anggaran`
--
ALTER TABLE `table_pagu_anggaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_kegiatan` (`kode_kegiatan`);

--
-- Indexes for table `table_referensi_bank`
--
ALTER TABLE `table_referensi_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_referensi_kode_kegiatan`
--
ALTER TABLE `table_referensi_kode_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_referensi_kode_rekening`
--
ALTER TABLE `table_referensi_kode_rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_referensi_penyedia`
--
ALTER TABLE `table_referensi_penyedia`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_nama_penyedia` (`nama_penyedia`),
  ADD UNIQUE KEY `uk_nomor_rekening` (`kode_rekening`),
  ADD KEY `idx_data_transaksi_id` (`data_transaksi_id`),
  ADD KEY `data_transaksi_id` (`data_transaksi_id`,`nama_penyedia`,`kode_rekening`);

--
-- Indexes for table `table_referensi_potongan`
--
ALTER TABLE `table_referensi_potongan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_transaksi`
--
ALTER TABLE `data_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_referensi_kode_kegiatan`
--
ALTER TABLE `table_referensi_kode_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `table_referensi_kode_rekening`
--
ALTER TABLE `table_referensi_kode_rekening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `table_referensi_penyedia`
--
ALTER TABLE `table_referensi_penyedia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table_referensi_penyedia`
--
ALTER TABLE `table_referensi_penyedia`
  ADD CONSTRAINT `table_referensi_penyedia_ibfk_1` FOREIGN KEY (`data_transaksi_id`) REFERENCES `data_transaksi` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
