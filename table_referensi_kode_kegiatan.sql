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
-- Table structure for table `table_referensi_kode_kegiatan`
--

CREATE TABLE IF NOT EXISTS `table_referensi_kode_kegiatan` (
  `id` int(11) NOT NULL,
  `kode` TEXT,
  `kode_kegiatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_referensi_kode_kegiatan`
--

INSERT INTO `table_referensi_kode_kegiatan` (`id`, `kode`, `kode_kegiatan`) VALUES
(1, '7.02.01.1.06.0009', '7.02.01.1.06.0009 Penyelenggaraan Rapat Koordinasi dan Konsultasi SKPD'),
(2, '7.02.01.1.07.0005', '7.02.01.1.07.0005 Pengadaan Mebel'),
(3, '7.02.01.1.07.0009', '7.02.01.1.07.0009 Pengadaan Gedung Kantor atau Bangunan Lainnya'),
(4, '7.02.01.1.09.0009', '7.02.01.1.09.0009 Pemeliharaan atau Rehabilitas Gedung Kantor dan Bangunan Lainnya'),
(5, '7.02.02.6.03.0001', '7.02.02.6.03.0001 Peningkatan Kapasitas Lembaga Kemasyarakatan Kota Administrasi'),
(6, '7.02.02.6.03.0002', '7.02.02.6.03.0002 Pengurusan Perkara di Pengadilan Tingkat Kota Administrasi'),
(7, '7.02.02.6.03.0003', '7.02.02.6.03.0003 Penyelesaian Sengketa Pertanahan Tingkat Kota Administrasi'),
(8, '7.02.02.6.03.0004', '7.02.02.6.03.0004 Peningkatan Kesadaran Hukum dan Hak Asasi Manusia Tingkat Kota Administrasi'),
(9, '7.02.02.6.03.0005', '7.02.02.6.03.0005 Peningkatan dan Pembinaan Kota Peduli Hak Asasi Manusia (HAM) Kota Administrasi'),
(10, '7.02.02.6.03.0006', '7.02.02.6.03.0006 Penyusunan Laporan dan Evaluasi Kinerja Walikota Administrasi'),
(11, '7.02.02.6.03.0007', '7.02.02.6.03.0007 Penyusunan Laporan Instansi Pemerintah (LKIP) Kota Administrasi'),
(12, '7.02.02.6.03.0008', '7.02.02.6.03.0008 Pelaksanaan Koordinasi, Pemantauan dan Evaluasi dan Pembentukan Kewirausahaan Pada Kota Administrasi'),
(13, '7.02.02.6.03.0015', '7.02.02.6.03.0015 Pelaksanaan Partisipasi Kota Administrasi dalam Asosiasi Pemerintah Kota Seluruh Indonesia (APEKSI)'),
(14, '7.02.02.6.03.0016', '7.02.02.6.03.0016 Pembinaan dan Evaluasi Kecamatan dan Kelurahan Kota Administrasi'),
(15, '7.02.02.6.03.0018', '7.02.02.6.03.0018 Pelaksanaan Rapim dan Rakorwil Kota Administrasi'),
(16, '7.02.02.6.03.0020', '7.02.02.6.03.0020 Pelaksanaan Monitoring dan Evaluasi/Pembangunan/Rehab Total/Rehab Sedang Kantor Lurah Kota Administrasi'),
(17, '7.02.02.6.03.0022', '7.02.02.6.03.0022 Pelaksanaan Koordinasi, Pemantauan dan Evaluasi Pembangunan dan Pemanfaatan Ruang Bangunan'),
(18, '7.02.02.6.03.0024', '7.02.02.6.03.0024 Penyusunan dan Evaluasi Standar Operasional dan Prosedur Kota Administrasi'),
(19, '7.02.02.6.03.0025', '7.02.02.6.03.0025 Pengendalian dan Evaluasi Penanganan Pengaduan Masyarakat Kota Administrasi'),
(20, '7.02.02.6.03.0026', '7.02.02.6.03.0026 Pengendalian dan Evaluasi Pelayanan Publik Tingkat Kota Administrasi'),
(21, '7.02.02.6.03.0027', '7.02.02.6.03.0027 Pelaksanaan Koordinasi Pengukuran Kepuasan Masyarakat Terhadap Pelayanan Publik di Kota Administrasi'),
(22, '7.02.02.6.03.0028', '7.02.02.6.03.0028 Pembinaan Administrasi Kepegawaian Kota Administrasi'),
(23, '7.02.02.6.03.0039', '7.02.02.6.03.0039 Peningkatan Tugas dan Fungsi Dewan Kota Administrasi'),
(24, '7.02.02.6.03.0044', '7.02.02.6.03.0044 Penagihan Kewajiban Fasos Fasum dan Sinkronisasi Data SIPPT Kota Administrasi'),
(25, '7.02.02.6.03.0045', '7.02.02.6.03.0045 Pelaksanaan Koordinasi, Pengendalian, Pemantauan, dan Evaluasi Kegiatan di Bawah Koordinasi Asisten Perekonomian dan Pembangunan Kota Administrasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_referensi_kode_kegiatan`
--
ALTER TABLE `table_referensi_kode_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_referensi_kode_kegiatan`
--
ALTER TABLE `table_referensi_kode_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
