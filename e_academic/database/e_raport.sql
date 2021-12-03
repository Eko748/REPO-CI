-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2021 at 07:56 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_raport`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `idguru` int(4) NOT NULL,
  `nip` varchar(25) DEFAULT NULL,
  `nama` varchar(128) DEFAULT NULL,
  `tmp_lhr` varchar(128) DEFAULT NULL,
  `tgl_lhr` date DEFAULT NULL,
  `jk` enum('L','P') DEFAULT NULL,
  `alamat` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`idguru`, `nip`, `nama`, `tmp_lhr`, `tgl_lhr`, `jk`, `alamat`) VALUES
(7, '92060112710970001', 'Nama Guru 1, S.Kom.', 'Jakarta', '1997-10-27', 'L', 'Jalan Kesaktian Persatuan Km.01, Persetujuan - Jakarta'),
(8, '92060112710970002', 'Nama Guru 2, S.Pd.', 'Tangerang', '1997-10-28', 'P', 'Jalan KPersatuan Dualima Km.01, Persetujuan -  Tangerang'),
(9, '92060112710970003', 'Nama Guru 3, S.Pd.', 'Jakarta', '1997-10-29', 'L', 'Jalan Perjalanan Kesaktsian Hati Km.08, Persetujuan - Jakarta'),
(10, '92060112710970004', 'Nama Guru 4, MM.Pd.', 'Bandung', '1997-10-22', 'P', 'Jalan Kesaktian Persatuan Km.01, Persetujuan -  Bandung'),
(12, '92060112710970005', 'Nama Guru 5, S.Pd.', 'Depok', '1997-10-21', 'L', 'Jalan Kesaktian Persatuan Km.01, Persetujuan -  Depok'),
(13, '3221404052336980', 'Nama Guru 6', 'Jakarta', '1991-03-15', 'P', 'Alamat Saya'),
(14, '92060112710970000', 'Nama Guru 6, S.Pd', 'Jakarta', '1997-10-22', 'L', 'Masukan Alamat Guru Di Kolom Ini');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `idkelas` int(4) NOT NULL,
  `kelas_kd` varchar(10) DEFAULT NULL,
  `kelas_nama` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`idkelas`, `kelas_kd`, `kelas_nama`) VALUES
(1, '1A', 'Kelas 1 A'),
(2, '1B', 'Kelas 1 B'),
(4, '2A', 'Kelas 2 A'),
(5, '2B', 'Kelas 2 B'),
(6, '3A', 'Kelas 3 A');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `idmapel` int(4) NOT NULL,
  `mapel_kd` varchar(10) DEFAULT NULL,
  `mapel_nama` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`idmapel`, `mapel_kd`, `mapel_nama`) VALUES
(1, 'MTK', 'Matematika'),
(2, 'BING', 'Bahasa Inggris'),
(3, 'BIND', 'Bahasa Indonesia'),
(4, 'IPA', 'IPA'),
(5, 'AGAMA', 'Agama'),
(6, 'EKM', 'Ekonomi');

-- --------------------------------------------------------

--
-- Table structure for table `mengajar`
--

CREATE TABLE `mengajar` (
  `idmengajar` int(4) NOT NULL,
  `idtahun_akademik` int(11) NOT NULL,
  `semester` enum('Ganjil','Genap') DEFAULT NULL,
  `idguru` int(4) NOT NULL,
  `idmapel` int(4) NOT NULL,
  `idkelas` int(4) NOT NULL,
  `kkm` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mengajar`
--

INSERT INTO `mengajar` (`idmengajar`, `idtahun_akademik`, `semester`, `idguru`, `idmapel`, `idkelas`, `kkm`) VALUES
(18, 5, 'Ganjil', 7, 3, 1, 60),
(22, 5, 'Genap', 7, 1, 1, NULL),
(23, 5, 'Genap', 7, 1, 2, NULL),
(24, 5, 'Genap', 7, 3, 1, NULL),
(25, 5, 'Genap', 7, 3, 2, NULL),
(28, 5, 'Genap', 8, 2, 1, NULL),
(29, 5, 'Genap', 7, 2, 2, NULL),
(30, 5, 'Ganjil', 9, 2, 1, 65),
(31, 5, 'Ganjil', 10, 2, 2, 60),
(32, 5, 'Ganjil', 7, 1, 1, 60),
(33, 5, 'Ganjil', 7, 1, 2, 65),
(34, 5, 'Ganjil', 8, 3, 2, 0),
(41, 7, 'Ganjil', 7, 3, 1, NULL),
(42, 7, 'Ganjil', 9, 2, 1, NULL),
(43, 7, 'Ganjil', 10, 2, 2, NULL),
(44, 7, 'Ganjil', 7, 1, 1, NULL),
(45, 7, 'Ganjil', 7, 1, 2, NULL),
(46, 7, 'Ganjil', 8, 3, 2, NULL),
(47, 8, 'Genap', 7, 1, 1, 65),
(48, 8, 'Genap', 8, 2, 2, 65),
(49, 8, 'Genap', 9, 3, 4, 65),
(50, 8, 'Genap', 10, 4, 5, 65),
(51, 8, 'Genap', 12, 6, 6, 65);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `idnilai` int(11) NOT NULL,
  `idtahun_akademik` int(4) NOT NULL,
  `semester` enum('Ganjil','Genap') DEFAULT NULL,
  `idkelas` int(4) NOT NULL,
  `idmapel` int(4) NOT NULL,
  `idsiswa` int(4) NOT NULL,
  `nilai_tp1` int(4) DEFAULT NULL,
  `nilai_tp2` int(4) DEFAULT NULL,
  `nilai_tp3` int(4) DEFAULT NULL,
  `nilai_tp4` int(4) DEFAULT NULL,
  `nilai_tp5` int(4) DEFAULT NULL,
  `nilai_tp6` int(4) DEFAULT NULL,
  `nilai_tp7` int(4) DEFAULT NULL,
  `rata_tp` int(4) DEFAULT NULL,
  `nilai_uh1` int(4) DEFAULT NULL,
  `nilai_uh2` int(4) DEFAULT NULL,
  `nilai_uh3` int(4) DEFAULT NULL,
  `nilai_uh4` int(4) DEFAULT NULL,
  `nilai_uh5` int(4) DEFAULT NULL,
  `nilai_uh6` int(4) DEFAULT NULL,
  `nilai_uh7` int(4) DEFAULT NULL,
  `rata_uh` int(4) DEFAULT NULL,
  `nilai_pts` int(4) DEFAULT NULL,
  `nilai_uas` int(4) DEFAULT NULL,
  `nilai_akhir` int(4) DEFAULT NULL,
  `nilai_huruf` enum('A','B','C','D','E') DEFAULT NULL,
  `deskripsi` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`idnilai`, `idtahun_akademik`, `semester`, `idkelas`, `idmapel`, `idsiswa`, `nilai_tp1`, `nilai_tp2`, `nilai_tp3`, `nilai_tp4`, `nilai_tp5`, `nilai_tp6`, `nilai_tp7`, `rata_tp`, `nilai_uh1`, `nilai_uh2`, `nilai_uh3`, `nilai_uh4`, `nilai_uh5`, `nilai_uh6`, `nilai_uh7`, `rata_uh`, `nilai_pts`, `nilai_uas`, `nilai_akhir`, `nilai_huruf`, `deskripsi`) VALUES
(17, 5, 'Ganjil', 1, 3, 4, 12, 0, 0, 0, 0, 0, 0, 12, 34, 0, 0, 0, 0, 0, 0, 34, 56, 78, 45, 'D', 'Kurang Baik'),
(18, 5, 'Ganjil', 1, 3, 5, 23, 0, 0, 0, 0, 0, 0, 23, 45, 0, 0, 0, 0, 0, 0, 45, 67, 89, 56, 'D', 'Kurang Baik'),
(19, 5, 'Ganjil', 1, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(20, 5, 'Ganjil', 1, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(21, 5, 'Ganjil', 1, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(22, 5, 'Ganjil', 1, 3, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(23, 5, 'Ganjil', 1, 3, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(24, 5, 'Ganjil', 1, 3, 16, 89, 21, 0, 0, 0, 0, 0, 55, 98, 89, 0, 0, 0, 0, 0, 94, 95, 95, 85, 'B', 'Baik'),
(25, 5, 'Ganjil', 2, 3, 9, 12, 11, 0, 0, 0, 0, 0, 12, 21, 90, 0, 0, 0, 0, 0, 56, 55, 55, 44, 'B', 'Baik'),
(26, 5, 'Ganjil', 2, 3, 10, 23, 21, 0, 0, 0, 0, 0, 22, 32, 89, 0, 0, 0, 0, 0, 61, 60, 60, 51, 'B', 'Baik'),
(27, 5, 'Ganjil', 2, 3, 11, 34, 32, 0, 0, 0, 0, 0, 33, 43, 78, 0, 0, 0, 0, 0, 61, 65, 65, 56, 'B', 'Baik'),
(28, 5, 'Ganjil', 2, 3, 12, 45, 43, 0, 0, 0, 0, 0, 44, 54, 67, 0, 0, 0, 0, 0, 61, 70, 70, 61, 'B', 'Baik'),
(29, 5, 'Ganjil', 2, 3, 13, 56, 54, 0, 0, 0, 0, 0, 55, 65, 56, 0, 0, 0, 0, 0, 61, 75, 75, 66, 'B', 'Baik'),
(30, 5, 'Ganjil', 2, 3, 17, 67, 65, 0, 0, 0, 0, 0, 66, 76, 45, 0, 0, 0, 0, 0, 61, 80, 80, 72, 'A', 'Sangat Baik'),
(31, 5, 'Ganjil', 2, 3, 18, 78, 76, 0, 0, 0, 0, 0, 77, 87, 34, 0, 0, 0, 0, 0, 61, 85, 85, 77, 'A', 'Sangat Baik'),
(32, 5, 'Ganjil', 2, 3, 19, 89, 87, 0, 0, 0, 0, 0, 88, 98, 23, 0, 0, 0, 0, 0, 61, 90, 90, 82, 'A', 'Sangat Baik'),
(33, 5, 'Ganjil', 2, 3, 20, 90, 98, 0, 0, 0, 0, 0, 94, 90, 12, 0, 0, 0, 0, 0, 51, 95, 95, 84, 'A', 'Sangat Baik'),
(34, 5, 'Ganjil', 1, 2, 4, 56, 78, 0, 0, 0, 0, 0, 67, 76, 77, 0, 0, 0, 0, 0, 77, 87, 89, 80, 'B', 'Baik'),
(35, 5, 'Ganjil', 1, 2, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(36, 5, 'Ganjil', 1, 2, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(37, 5, 'Ganjil', 1, 2, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(38, 5, 'Ganjil', 1, 2, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(39, 5, 'Ganjil', 1, 2, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(40, 5, 'Ganjil', 1, 2, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(41, 5, 'Ganjil', 1, 2, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(42, 5, 'Ganjil', 2, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 5, 'Ganjil', 2, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 5, 'Ganjil', 2, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 5, 'Ganjil', 2, 1, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 5, 'Ganjil', 2, 1, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 5, 'Ganjil', 2, 1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 5, 'Ganjil', 2, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 5, 'Ganjil', 2, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 5, 'Ganjil', 2, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 5, 'Ganjil', 2, 2, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 5, 'Ganjil', 2, 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 5, 'Ganjil', 2, 2, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 5, 'Ganjil', 2, 2, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 5, 'Ganjil', 2, 2, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 5, 'Ganjil', 2, 2, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 5, 'Ganjil', 2, 2, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 5, 'Ganjil', 1, 1, 4, 56, 78, 0, 0, 0, 0, 0, 67, 89, 87, 0, 0, 0, 0, 0, 88, 80, 86, 80, 'B', 'Baik'),
(68, 5, 'Ganjil', 1, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(69, 5, 'Ganjil', 1, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(70, 5, 'Ganjil', 1, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(71, 5, 'Ganjil', 1, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(72, 5, 'Ganjil', 1, 1, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(73, 5, 'Ganjil', 1, 1, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(74, 5, 'Ganjil', 1, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(75, 8, 'Genap', 1, 1, 5, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 'A', 'Sangat Baik'),
(76, 8, 'Genap', 1, 1, 6, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 'A', 'Sangat Baik'),
(77, 8, 'Genap', 1, 1, 9, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 87, 'B', 'Baik'),
(78, 8, 'Genap', 1, 1, 7, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 'A', 'Sangat Baik'),
(79, 8, 'Genap', 1, 1, 8, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 'A', 'Sangat Baik'),
(80, 8, 'Genap', 1, 1, 14, 0, 0, 0, 0, 0, 0, 0, 98, 0, 0, 0, 0, 0, 0, 0, 98, 0, 0, 98, 'A', 'Sangat Baik'),
(81, 8, 'Genap', 1, 1, 15, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 99, 'A', 'Sangat Baik'),
(82, 8, 'Genap', 1, 1, 16, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 99, 'A', 'Sangat Baik'),
(83, 8, 'Genap', 2, 2, 9, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 'A', 'Sangat Baik'),
(84, 8, 'Genap', 2, 2, 10, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 'A', 'Sangat Baik'),
(85, 8, 'Genap', 2, 2, 11, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 88, 'A', 'Sangat Baik'),
(86, 8, 'Genap', 2, 2, 12, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 'B', 'Baik'),
(87, 8, 'Genap', 2, 2, 13, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 78, 77, 'B', 'Baik'),
(88, 8, 'Genap', 2, 2, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 8, 'Genap', 2, 2, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 8, 'Genap', 4, 3, 21, 0, 0, 0, 0, 0, 0, 0, 80, 0, 0, 0, 0, 0, 0, 0, 80, 0, 0, 80, 'B', 'Baik'),
(91, 8, 'Genap', 5, 4, 17, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 'A', 'Sangat Baik'),
(92, 8, 'Genap', 5, 4, 18, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 'A', 'Sangat Baik'),
(93, 8, 'Genap', 5, 4, 21, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 'A', 'Sangat Baik'),
(94, 8, 'Genap', 4, 3, 14, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 'A', 'Sangat Baik'),
(95, 8, 'Genap', 4, 3, 15, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 'A', 'Sangat Baik'),
(96, 8, 'Genap', 4, 3, 16, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 'A', 'Sangat Baik'),
(97, 8, 'Genap', 6, 6, 22, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89, 'A', 'Sangat Baik');

-- --------------------------------------------------------

--
-- Table structure for table `profil_sekolah`
--

CREATE TABLE `profil_sekolah` (
  `idprofil_sekolah` int(4) NOT NULL,
  `nama` varchar(128) DEFAULT NULL,
  `npsn` varchar(10) DEFAULT NULL,
  `status` enum('Negeri','Swasta') DEFAULT NULL,
  `nama_kepsek` varchar(128) DEFAULT NULL,
  `nip_kepsek` varchar(25) DEFAULT NULL,
  `akreditasi` enum('kosong','A','B','C') DEFAULT NULL,
  `logo` varchar(128) DEFAULT NULL,
  `provinsi` varchar(128) DEFAULT NULL,
  `kabupaten` varchar(128) DEFAULT NULL,
  `kecamatan` varchar(128) DEFAULT NULL,
  `kelurahan` varchar(128) DEFAULT NULL,
  `dusun` varchar(128) DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `alamat` varchar(256) DEFAULT NULL,
  `kodepos` varchar(10) DEFAULT NULL,
  `lintang` varchar(15) DEFAULT NULL,
  `bujur` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profil_sekolah`
--

INSERT INTO `profil_sekolah` (`idprofil_sekolah`, `nama`, `npsn`, `status`, `nama_kepsek`, `nip_kepsek`, `akreditasi`, `logo`, `provinsi`, `kabupaten`, `kecamatan`, `kelurahan`, `dusun`, `rt`, `rw`, `alamat`, `kodepos`, `lintang`, `bujur`) VALUES
(1, 'SDN 1 CERDAS SUKAHATI', '60401524', 'Swasta', 'Ibu Cantik Solehah, S.Pd, MM.Pd.', '1277844588499', 'A', 'logo-sekolah.png', 'Banten', 'Tangerang', 'Tangerang Kecamatan', 'Persimpangan', 'Simpang', '001', '002', 'Jl. Sebelah Stasiun Pasar Senen, Km.01 Ramai - Banten', '12345', '0', '134');

-- --------------------------------------------------------

--
-- Table structure for table `rombel`
--

CREATE TABLE `rombel` (
  `idrombel` int(4) NOT NULL,
  `idwali_kelas` int(4) NOT NULL,
  `idsiswa` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rombel`
--

INSERT INTO `rombel` (`idrombel`, `idwali_kelas`, `idsiswa`) VALUES
(16, 2, 19),
(17, 2, 20),
(33, 6, 19),
(112, 10, 17),
(113, 10, 18),
(114, 10, 21),
(120, 7, 4),
(121, 7, 5),
(122, 7, 6),
(123, 7, 7),
(124, 7, 8),
(125, 8, 9),
(126, 8, 10),
(127, 8, 11),
(128, 8, 12),
(129, 8, 13),
(130, 9, 14),
(131, 9, 15),
(132, 9, 16),
(139, 11, 22);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `idsiswa` int(4) NOT NULL,
  `foto` varchar(128) DEFAULT NULL,
  `nis` varchar(5) DEFAULT NULL,
  `nisn` varchar(15) DEFAULT NULL,
  `nik` varchar(25) DEFAULT NULL,
  `nama` varchar(128) DEFAULT NULL,
  `tmp_lhr` varchar(128) DEFAULT NULL,
  `tgl_lhr` date DEFAULT NULL,
  `jk` enum('L','P') DEFAULT NULL,
  `hobi` varchar(128) DEFAULT NULL,
  `citacita` varchar(128) DEFAULT NULL,
  `sts_anak` enum('Anak Kandung','Anak Tiri','Anak Angkat') DEFAULT NULL,
  `jml_sdr` int(2) DEFAULT NULL,
  `anak_ke` int(2) DEFAULT NULL,
  `alamat` text,
  `nik_ayah` varchar(25) DEFAULT NULL,
  `nama_ayah` varchar(128) DEFAULT NULL,
  `pend_ayah` varchar(50) DEFAULT NULL,
  `pekr_ayah` varchar(50) DEFAULT NULL,
  `nik_ibu` varchar(25) DEFAULT NULL,
  `nama_ibu` varchar(128) DEFAULT NULL,
  `pend_ibu` varchar(50) DEFAULT NULL,
  `pekr_ibu` varchar(50) DEFAULT NULL,
  `alamat_ortu` text,
  `tgl_masuk` date DEFAULT NULL,
  `tgl_keluar` date DEFAULT NULL,
  `status` enum('Aktif','Nonaktif','Pindah','Keluar','Alumni') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`idsiswa`, `foto`, `nis`, `nisn`, `nik`, `nama`, `tmp_lhr`, `tgl_lhr`, `jk`, `hobi`, `citacita`, `sts_anak`, `jml_sdr`, `anak_ke`, `alamat`, `nik_ayah`, `nama_ayah`, `pend_ayah`, `pekr_ayah`, `nik_ibu`, `nama_ibu`, `pend_ibu`, `pekr_ibu`, `alamat_ortu`, `tgl_masuk`, `tgl_keluar`, `status`) VALUES
(4, 'siswa-4.jpg', '1234', '9206011271', '9206011603090001', 'Nama Siswa 1', 'Jakarta', '1997-10-27', 'P', 'Hobi', 'Cita cita', 'Anak Tiri', 4, 3, 'Jln Jakarta Sejahtera Km.04 Persatuan Jakarta', '36020560522226', 'Nama Ayah', 'Tidak Sekolah', 'pekr ayah', '3602090220124555', 'Nama Ibu Siswa', 'S1', 'pekr ibu', 'bbbbb', NULL, NULL, 'Aktif'),
(5, 'siswa-5.jpg', '1235', '9206011272', '', 'Nama Siswa 2', 'Jakarta', '1997-10-28', 'P', '', '', NULL, 0, 0, 'Jl. Sebelah Stasiun Pasar Senen, Km.01 Ramai - Banten', '', '', NULL, '', '', '', NULL, '', '', NULL, NULL, 'Aktif'),
(6, '', '1236', '9206011273', '', 'Nama Siswa 3', 'Jakarta', '1997-10-29', 'L', '', '', NULL, 0, 0, 'Jl. Sebelah Stasiun Pasar Senen, Km.01 Ramai - Banten', '', '', NULL, '', '', '', NULL, '', '', NULL, NULL, 'Aktif'),
(7, '', '1237', '9206011274', '', 'Nama Siswa 4', 'Jakarta', '1997-10-22', 'P', '', '', NULL, 0, 0, 'Jln Jakarta Sejahtera Km.04 Persatuan Jakarta', '', '', NULL, '', '', '', NULL, '', '', NULL, NULL, 'Aktif'),
(8, '', '1238', '9206011275', '', 'Nama Siswa 5', 'Jakarta', '1997-10-21', 'L', '', '', NULL, 0, 0, 'Jln Jakarta Sejahtera Km.04 Persatuan Jakarta', '', '', NULL, '', '', '', NULL, '', '', NULL, NULL, 'Aktif'),
(9, '', '1238', '9206011275', '', 'Nama Siswa 6', 'Jakarta', '1997-10-21', 'L', '', '', NULL, 0, 0, 'Jln Jakarta Sejahtera Km.04 Persatuan Jakarta', '', '', NULL, '', '', '', NULL, '', '', NULL, NULL, 'Aktif'),
(10, '', '1238', '9206011275', '', 'Nama Siswa 7', 'Jakarta', '1997-10-21', 'L', '', '', NULL, 0, 0, 'Jln Jakarta Sejahtera Km.04 Persatuan Jakarta', '', '', NULL, '', '', '', NULL, '', '', NULL, NULL, 'Aktif'),
(11, '', '1238', '9206011275', '', 'Nama Siswa 8', 'Jakarta', '1997-10-21', 'L', '', '', NULL, 0, 0, 'Jln Jakarta Sejahtera Km.04 Persatuan Jakarta', '', '', NULL, '', '', '', NULL, '', '', NULL, NULL, 'Aktif'),
(12, '', '1238', '9206011275', '', 'Nama Siswa 9', 'Jakarta', '1997-10-21', 'L', '', '', NULL, 0, 0, 'Jln Jakarta Sejahtera Km.04 Persatuan Jakarta', '', '', NULL, '', '', '', NULL, '', '', NULL, NULL, 'Aktif'),
(13, '', '1238', '9206011275', '', 'Nama Siswa 10', 'Jakarta', '1997-10-21', 'L', '', '', NULL, 0, 0, 'Jln Jakarta Sejahtera Km.04 Persatuan Jakarta', '', '', NULL, '', '', '', NULL, '', '', NULL, NULL, 'Aktif'),
(14, '', '1238', '9206011275', '', 'Nama Siswa 11', 'Jakarta', '1997-10-21', 'L', '', '', NULL, 0, 0, 'Jln Jakarta Sejahtera Km.04 Persatuan Jakarta', '', '', NULL, '', '', '', NULL, '', '', NULL, NULL, 'Aktif'),
(15, '', '1238', '9206011275', '', 'Nama Siswa 12', 'Jakarta', '1997-10-21', 'L', '', '', NULL, 0, 0, 'Jln Jakarta Sejahtera Km.04 Persatuan Jakarta', '', '', NULL, '', '', '', NULL, '', '', NULL, NULL, 'Aktif'),
(16, '', '1238', '9206011275', '', 'Nama Siswa 13', 'Jakarta', '1997-10-21', 'L', '', '', NULL, 0, 0, 'Jln Jakarta Sejahtera Km.04 Persatuan Jakarta', '', '', NULL, '', '', '', NULL, '', '', NULL, NULL, 'Aktif'),
(17, '', '1238', '9206011275', '', 'Nama Siswa 14', 'Jakarta', '1997-10-21', 'L', '', '', NULL, 0, 0, 'Jln Jakarta Sejahtera Km.04 Persatuan Jakarta', '', '', NULL, '', '', '', NULL, '', '', NULL, NULL, 'Aktif'),
(18, '', '1238', '9206011275', '', 'Nama Siswa 15', 'Jakarta', '1997-10-21', 'L', '', '', NULL, 0, 0, 'Jln Jakarta Sejahtera Km.04 Persatuan Jakarta', '', '', NULL, '', '', '', NULL, '', '', NULL, NULL, 'Aktif'),
(19, '', '1238', '9206011275', '', 'Nama Siswa 16', 'Jakarta', '1997-10-21', 'L', '', '', 'Anak Kandung', 0, 0, 'Jln Jakarta Sejahtera Km.04 Persatuan Jakarta', '', '', NULL, '', '', '', NULL, '', '', NULL, NULL, 'Keluar'),
(20, '', '1238', '9206011275', '', 'Nama Siswa 17', 'Jakarta', '1997-10-21', 'L', '', '', NULL, 0, 0, 'Jln Jakarta Sejahtera Km.04 Persatuan Jakarta', '', '', NULL, '', '', '', NULL, '', '', NULL, NULL, 'Alumni'),
(21, NULL, '12300', '9206011200', '', 'Nama Siswa 18', 'Jakarta', '1997-10-27', 'P', '', '', NULL, 0, 0, 'Jl. Sebelah Stasiun Pasar Senen, Km.01 Ramai - Banten', '', '', NULL, '', '', '', NULL, '', '', '2021-06-11', NULL, 'Aktif'),
(22, NULL, '12388', '123456789', '', 'Nama Siswa 19', 'Jakarta', '1997-10-28', 'P', '', '', NULL, 0, 0, 'Jl. Sebelah Stasiun Pasar Senen, Km.01 Ramai - Banten', '', '', NULL, '', '', '', NULL, '', '', '2021-06-11', NULL, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_akademik`
--

CREATE TABLE `tahun_akademik` (
  `idtahun_akademik` int(4) NOT NULL,
  `tahun_akademik` varchar(10) DEFAULT NULL,
  `semester` enum('Ganjil','Genap') DEFAULT NULL,
  `semester_aktif` tinyint(4) DEFAULT NULL,
  `tempat` varchar(128) DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tahun_akademik`
--

INSERT INTO `tahun_akademik` (`idtahun_akademik`, `tahun_akademik`, `semester`, `semester_aktif`, `tempat`, `tanggal`) VALUES
(5, '2018-2019', 'Ganjil', 0, 'Manokwari', '2020-04-02'),
(7, '2019-2020', 'Ganjil', 0, '', '2020-04-02'),
(8, '2021-2022', 'Genap', 1, NULL, '2021-06-11'),
(9, '2022-2023', 'Ganjil', 0, NULL, '2021-06-11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idusers` int(11) NOT NULL,
  `user_name` varchar(25) DEFAULT NULL,
  `user_password` varchar(128) DEFAULT NULL,
  `user_fullname` varchar(128) DEFAULT NULL,
  `user_type` enum('super_user','guru','siswa') DEFAULT NULL,
  `is_block` tinyint(1) DEFAULT NULL,
  `create_at` int(11) DEFAULT NULL,
  `update_at` int(11) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idusers`, `user_name`, `user_password`, `user_fullname`, `user_type`, `is_block`, `create_at`, `update_at`, `create_by`, `update_by`) VALUES
(1, 'admin', '$2y$10$ePYvbmZHzPxjanA.aCprMO9p0Z7Q9JgzlzyCevd7Jqf.Wb2huO8t.', 'SDN 1 Sicerdas', 'super_user', 0, 1556509343, 1586934959, 1, 1),
(38, 'guru1', '$2y$10$LGs6BlWbz.F1oD2DWOvY7.5.5G8SPMQHAtqhOkK5K2b6muKdTKrFO', 'Nama Guru 1', 'guru', 0, 1623382030, NULL, 1, NULL),
(39, 'guru2', '$2y$10$BmqOCtS/w6rFu2QDxDLwIe7kr40azKNh5qyYib7TXwgIjyu3wi0ky', 'Nama Guru 2', 'guru', 0, 1623382045, NULL, 1, NULL),
(40, 'guru3', '$2y$10$zItdLAyvLA1Jh9myLArxEuT1IJMVve7itKX8EcJSJZ9wRZvJXCYqC', 'Nama Guru 3', 'guru', 0, 1623382054, NULL, 1, NULL),
(41, 'guru4', '$2y$10$Pm5ybOFqh8/XYpLiv2geBuOGoNNfIznxsX1PWF0S4VFa9J1zMuZEC', 'Nama Guru 4', 'guru', 0, 1623382070, NULL, 1, NULL),
(42, 'siswa1', '$2y$10$yVgHIl3LlVIK46S/P.A6q.JTp90HP/5ScVPSoXCfx4hyNRzxQweOG', 'Nama Siswa 1', 'siswa', 0, 1623382082, NULL, 1, NULL),
(43, 'siswa2', '$2y$10$Yw/jGP89CrVoFne15WBS0uIjxFkYaRmKQ2M.ohIj2m8iEqjmo0emW', 'Nama Siswa 2', 'siswa', 0, 1623382092, NULL, 1, NULL),
(44, '1238', '$2y$10$Oq.q5rf/hFD6.jkwInsxAuObhVBvyThvZrNwyQpRxLvvgu8Axqufi', 'Nama Siswa 16', 'siswa', 0, 1623383301, NULL, 1, NULL),
(45, 'guru5', '$2y$10$5bfXEsqKSbzf0uXrlW6Y3.2kclrCvnqudzbT1LDbdILl28B7WgAaG', 'Nama Guru 5', 'guru', 0, 1623384425, NULL, 1, NULL),
(46, 'siswa3', '$2y$10$bfQo0pegF4xA/8W4BncfDe9hTEfjJPer5bKYABgFn5WML.rZOWISu', 'Nama Siswa 3', 'siswa', 0, 1623384444, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `idwali_kelas` int(4) NOT NULL,
  `idtahun_akademik` int(4) NOT NULL,
  `semester` enum('Ganjil','Genap') DEFAULT NULL,
  `idkelas` int(4) NOT NULL,
  `idguru` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`idwali_kelas`, `idtahun_akademik`, `semester`, `idkelas`, `idguru`) VALUES
(1, 5, 'Ganjil', 1, 7),
(2, 5, 'Ganjil', 2, 7),
(5, 7, 'Ganjil', 1, 7),
(6, 7, 'Ganjil', 2, 7),
(7, 8, 'Genap', 1, 7),
(8, 8, 'Genap', 2, 8),
(9, 8, 'Genap', 4, 9),
(10, 8, 'Genap', 5, 10),
(11, 8, 'Genap', 6, 12);

-- --------------------------------------------------------

--
-- Table structure for table `_sessions`
--

CREATE TABLE `_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_sessions`
--

INSERT INTO `_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('g9si3ss1ouans440ija33cj720mh68ku', '::1', 1623384913, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632333338343639383b69647c733a313a2231223b757365726e616d657c733a353a2261646d696e223b6163636573737c733a31303a2273757065725f75736572223b);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`idguru`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`idkelas`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`idmapel`);

--
-- Indexes for table `mengajar`
--
ALTER TABLE `mengajar`
  ADD PRIMARY KEY (`idmengajar`,`idtahun_akademik`,`idguru`,`idmapel`,`idkelas`),
  ADD KEY `fk_guru_has_mapel_mapel1_idx` (`idmapel`),
  ADD KEY `fk_guru_has_mapel_guru1_idx` (`idguru`),
  ADD KEY `fk_mengajar_tahun_akademik1_idx` (`idtahun_akademik`),
  ADD KEY `fk_mengajar_kelas1_idx` (`idkelas`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`idnilai`,`idtahun_akademik`,`idkelas`,`idmapel`,`idsiswa`),
  ADD KEY `fk_mapel_has_siswa_siswa1_idx` (`idsiswa`),
  ADD KEY `fk_mapel_has_siswa_mapel1_idx` (`idmapel`),
  ADD KEY `fk_nilai_tahun_akademik1_idx` (`idtahun_akademik`),
  ADD KEY `fk_nilai_kelas1_idx` (`idkelas`);

--
-- Indexes for table `profil_sekolah`
--
ALTER TABLE `profil_sekolah`
  ADD PRIMARY KEY (`idprofil_sekolah`);

--
-- Indexes for table `rombel`
--
ALTER TABLE `rombel`
  ADD PRIMARY KEY (`idrombel`,`idwali_kelas`,`idsiswa`),
  ADD KEY `fk_rombel_siswa1_idx` (`idsiswa`),
  ADD KEY `fk_rombel_wali_kelas1_idx` (`idwali_kelas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`idsiswa`);

--
-- Indexes for table `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  ADD PRIMARY KEY (`idtahun_akademik`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idusers`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`idwali_kelas`,`idtahun_akademik`,`idkelas`,`idguru`),
  ADD KEY `fk_rombel_has_guru_guru1_idx` (`idguru`),
  ADD KEY `fk_wali_kelas_kelas1_idx` (`idkelas`),
  ADD KEY `fk_tahun_akademik_tahun_akademik1_idx` (`idtahun_akademik`);

--
-- Indexes for table `_sessions`
--
ALTER TABLE `_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_TIMESTAMP` (`timestamp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `idguru` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `idkelas` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `idmapel` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mengajar`
--
ALTER TABLE `mengajar`
  MODIFY `idmengajar` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `idnilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `profil_sekolah`
--
ALTER TABLE `profil_sekolah`
  MODIFY `idprofil_sekolah` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rombel`
--
ALTER TABLE `rombel`
  MODIFY `idrombel` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `idsiswa` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  MODIFY `idtahun_akademik` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idusers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `idwali_kelas` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mengajar`
--
ALTER TABLE `mengajar`
  ADD CONSTRAINT `fk_guru_has_mapel_guru1` FOREIGN KEY (`idguru`) REFERENCES `guru` (`idguru`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_guru_has_mapel_mapel1` FOREIGN KEY (`idmapel`) REFERENCES `mapel` (`idmapel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mengajar_kelas1` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`idkelas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mengajar_tahun_akademik1` FOREIGN KEY (`idtahun_akademik`) REFERENCES `tahun_akademik` (`idtahun_akademik`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `fk_mapel_has_siswa_mapel1` FOREIGN KEY (`idmapel`) REFERENCES `mapel` (`idmapel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mapel_has_siswa_siswa1` FOREIGN KEY (`idsiswa`) REFERENCES `siswa` (`idsiswa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_nilai_kelas1` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`idkelas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_nilai_tahun_akademik1` FOREIGN KEY (`idtahun_akademik`) REFERENCES `tahun_akademik` (`idtahun_akademik`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rombel`
--
ALTER TABLE `rombel`
  ADD CONSTRAINT `fk_rombel_siswa1` FOREIGN KEY (`idsiswa`) REFERENCES `siswa` (`idsiswa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rombel_wali_kelas1` FOREIGN KEY (`idwali_kelas`) REFERENCES `wali_kelas` (`idwali_kelas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD CONSTRAINT `fk_rombel_has_guru_guru1` FOREIGN KEY (`idguru`) REFERENCES `guru` (`idguru`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tahun_akademik_tahun_akademik1` FOREIGN KEY (`idtahun_akademik`) REFERENCES `tahun_akademik` (`idtahun_akademik`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_wali_kelas_kelas1` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`idkelas`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
