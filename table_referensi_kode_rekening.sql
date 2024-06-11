-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2024 at 04:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
-- Table structure for table `table_referensi_kode_rekening`
--

CREATE TABLE IF NOT EXISTS `table_referensi_kode_rekening` (
  `id` int(11) NOT NULL,
  `kode` TEXT,
  `kode_rekening` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_referensi_kode_rekening`
--

INSERT INTO `table_referensi_kode_rekening` (`id`, `kode`, `kode_rekening`) VALUES
(1, '5.1.02.01.01.0024', '5.1.02.01.01.0024 Belanja Alat/Bahan Untuk Kegiatan Kantor-Alat Tulis Kantor'),
(2, '5.1.02.01.01.0025', '5.1.02.01.01.0025 Belanja Alat/Bahan Untuk Kegiatan Kantor-Kertas dan Cover'),
(3, '5.1.02.01.01.0026', '5.1.02.01.01.0026 Belanja Alat/Bahan Untuk Kegiatan Kantor-Bahan Cetak'),
(4, '5.1.02.01.01.0027', '5.1.02.01.01.0027 Belanja Alat/Bahan Untuk Kegiatan Kantor-Benda Pos'),
(5, '5.1.02.01.01.0052', '5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'),
(6, '5.1.02.01.01.0064', '5.1.02.01.01.0064 Belanja Pakaian Dinas Lapangan (PDL)'),
(7, '5.1.02.01.01.0076', '5.1.02.01.01.0076 Belanja Pakaian Olahraga'),
(8, '5.1.02.02.01.0003', '5.1.02.02.01.0003 Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia'),
(9, '5.1.02.02.01.0004', '5.1.02.02.01.0004 Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksanaan Kegiatan'),
(10, '5.1.02.02.01.0006', '5.1.02.02.01.0006 Honorarium Penyuluhan atau Pendampingan'),
(11, '5.1.02.02.01.0066', '5.1.02.02.01.0066 Belanja Registasi/Keanggotaan'),
(12, '5.2.02.05.02.0001', '5.2.02.05.02.0001 Belanja Modal Mebel'),
(13, '5.2.02.05.02.0005', '5.2.02.05.02.0005 Belanja Modal Alat Dapur'),
(14, '5.2.02.05.02.0006', '5.2.02.05.02.0006 Belanja Modal Alat Rumah Tangga Lainnya (Home Use)'),
(15, '5.2.03.01.01.0001', '5.2.03.01.01.0001 Belanja Modal Bangunan Gedung Kantor'),
(16, '5.2.03.01.02.0002', '5.2.03.01.02.0002 Belanja Modal Rumah Negara Golongan II');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_referensi_kode_rekening`
--
ALTER TABLE `table_referensi_kode_rekening`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_referensi_kode_rekening`
--
ALTER TABLE `table_referensi_kode_rekening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
