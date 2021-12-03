-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2021 at 02:49 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_academic`
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
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`idguru`, `nip`, `nama`, `tmp_lhr`, `tgl_lhr`, `jk`, `alamat`) VALUES
(15, '112233445566', 'Mali Nur, S.Pd.', 'Indramayu', '2021-12-29', 'L', 'Jatibarang'),
(16, '92060112710970003', 'Eko Permana, S.Pd.', 'Indramayu', '2021-12-07', 'L', 'Lohbener'),
(17, '29092002', 'Mohammad Ilham Teguhriyadi, S.Tr ., M.Kom', 'Amerika', '2002-09-29', 'L', 'Jln. Tuparev, No. 512. Cirebon'),
(18, '12345678', 'Hameha Spd', 'Jakarta', '2021-12-28', 'P', 'Bandung');

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
(7, 'X.A1', 'X MIPA 1'),
(8, 'XI.A1', 'XI MIPA 1'),
(10, 'XII.RPL', 'XII RPL 2'),
(11, 'XII.RPL 3', 'XII RPL 3');

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
(7, 'KIM', 'Kimia'),
(8, 'MTK', 'Matematika');

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
(52, 10, 'Ganjil', 15, 8, 7, 80),
(53, 10, 'Ganjil', 16, 7, 8, NULL),
(54, 11, 'Ganjil', 15, 7, 7, NULL),
(55, 11, 'Ganjil', 16, 8, 8, NULL),
(56, 10, 'Ganjil', 16, 7, 7, 0);

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
  `deskripsi` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`idnilai`, `idtahun_akademik`, `semester`, `idkelas`, `idmapel`, `idsiswa`, `nilai_tp1`, `nilai_tp2`, `nilai_tp3`, `nilai_tp4`, `nilai_tp5`, `nilai_tp6`, `nilai_tp7`, `rata_tp`, `nilai_uh1`, `nilai_uh2`, `nilai_uh3`, `nilai_uh4`, `nilai_uh5`, `nilai_uh6`, `nilai_uh7`, `rata_uh`, `nilai_pts`, `nilai_uas`, `nilai_akhir`, `nilai_huruf`, `deskripsi`) VALUES
(98, 10, 'Ganjil', 7, 8, 23, 90, 90, 90, 100, 100, 100, 100, 96, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 99, 'A', 'Sangat Baik'),
(99, 10, 'Ganjil', 7, 8, 24, 30, 30, 30, 60, 90, 45, 10, 42, 100, 10, 10, 10, 20, 30, 90, 39, 100, 100, 70, 'D', 'Kurang Baik'),
(100, 10, 'Ganjil', 7, 7, 23, 90, 90, 60, 90, 0, 0, 0, 0, 30, 30, 30, 30, 30, 0, 0, 30, 30, 30, 40, 'D', 'Kurang Baik'),
(101, 10, 'Ganjil', 7, 7, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '');

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
(1, 14, 23),
(2, 14, 24),
(5, 14, 23),
(6, 14, 24),
(7, 13, 23),
(8, 12, 23);

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
  `alamat` text DEFAULT NULL,
  `nik_ayah` varchar(25) DEFAULT NULL,
  `nama_ayah` varchar(128) DEFAULT NULL,
  `pend_ayah` varchar(50) DEFAULT NULL,
  `pekr_ayah` varchar(50) DEFAULT NULL,
  `nik_ibu` varchar(25) DEFAULT NULL,
  `nama_ibu` varchar(128) DEFAULT NULL,
  `pend_ibu` varchar(50) DEFAULT NULL,
  `pekr_ibu` varchar(50) DEFAULT NULL,
  `alamat_ortu` text DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `tgl_keluar` date DEFAULT NULL,
  `status` enum('Aktif','Nonaktif','Pindah','Keluar','Alumni') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`idsiswa`, `foto`, `nis`, `nisn`, `nik`, `nama`, `tmp_lhr`, `tgl_lhr`, `jk`, `hobi`, `citacita`, `sts_anak`, `jml_sdr`, `anak_ke`, `alamat`, `nik_ayah`, `nama_ayah`, `pend_ayah`, `pekr_ayah`, `nik_ibu`, `nama_ibu`, `pend_ibu`, `pekr_ibu`, `alamat_ortu`, `tgl_masuk`, `tgl_keluar`, `status`) VALUES
(23, NULL, '1234', '2003068', '', 'Eko Permana', 'Cirebon', '2002-09-23', 'L', '', '', NULL, 0, 0, 'Jamblang', '', '', NULL, '', '', '', NULL, '', '', '2021-12-02', NULL, 'Aktif'),
(24, NULL, '12345', '2003073', '', 'Nur Fajri Maulidia', 'Indramayu', '2021-12-28', 'P', '', '', NULL, 0, 0, 'Lohbener', '', '', NULL, '', '', '', NULL, '', '', '2021-12-02', NULL, 'Aktif');

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
(10, '2021-2022', 'Ganjil', 1, 'Indramayu', '2021-12-02'),
(11, '2022-2023', 'Ganjil', 0, NULL, '2021-12-02');

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
(1, 'Admin', '$2y$10$ePYvbmZHzPxjanA.aCprMO9p0Z7Q9JgzlzyCevd7Jqf.Wb2huO8t.', 'Administrator', 'super_user', 0, 1556509343, 1586934959, 1, 1),
(47, '1234', '$2y$10$i5j5LtnYeh96MawTspkdnuIGTv806UVA0mpDc3HIGsaFErsNE2qBC', 'Eko Permana', 'siswa', 0, 1638468213, 1638486316, 1, 47),
(48, '12345', '$2y$10$B3sGqEPq/RC5EUcMmmh/VO2J88ZL.f2XtVAKCgz4Gfx7UGaPVwGtK', 'Nur Fajri Maulidia', 'siswa', 0, 1638468215, NULL, 1, NULL),
(49, '112233445566', '$2y$10$kaQAHywBoMX4t42ZT/H.IO3Iav4zkAbFKNSji0io/aRS/9uEbPEUS', 'Mali Nur, S.Pd.', 'guru', 0, 1638476651, 1638477348, 1, 49),
(50, '1122', '$2y$10$DK3r288ONhl7JZQxuJuKNuKgQX5WADvk7k2AezJPvsBXdy9Rax2NO', 'Eko Permana, S.Pd.', 'guru', 0, 1638487726, NULL, 1, NULL);

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
(12, 10, 'Ganjil', 7, 16),
(13, 10, 'Ganjil', 8, 15),
(14, 11, 'Ganjil', 10, 17),
(15, 10, 'Ganjil', 11, 18);

-- --------------------------------------------------------

--
-- Table structure for table `_sessions`
--

CREATE TABLE `_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_sessions`
--

INSERT INTO `_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0u18uv0tb6cla4sb3kpqf0hic40s71vj', '192.168.42.129', 1638488533, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383438383436343b69647c733a313a2231223b757365726e616d657c733a353a2241646d696e223b6163636573737c733a31303a2273757065725f75736572223b737563636573737c733a32343a224e696c616920626572686173696c2064692073696d70616e223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
('4rqupai01ibni2elorg5fpdt60gjpk39', '::1', 1638495987, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383439353938373b6d73677c733a3139343a223c64697620636c6173733d22616c65727420616c6572742d64616e67657220616c6572742d6469736d69737369626c65223e3c627574746f6e20747970653d22627574746f6e2220636c6173733d22636c6f73652220646174612d6469736d6973733d22616c6572742220617269612d68696464656e3d2274727565223e2674696d65733b3c2f627574746f6e3e3c6920636c6173733d2266612066612d62616e223e3c2f693e2050617373776f726420616e64612073616c61682e3c2f6469763e223b5f5f63695f766172737c613a333a7b733a333a226d7367223b733a333a226f6c64223b733a373a2273756363657373223b733a333a226f6c64223b733a353a226572726f72223b733a333a226f6c64223b7d69647c733a313a2231223b757365726e616d657c733a353a2241646d696e223b6163636573737c733a31303a2273757065725f75736572223b737563636573737c733a32303a2254616d626168206261727520626572686173696c223b6572726f727c733a3135333a224461746120746964616b2074657273696d70616e2e204b656d756e676b696e616e207465726a616469206475706c696b61736920646174612c2070656e6761747572616e2077616c69206b656c61732062656c756d206469617475722c206174617520736572766572206265726d6173616c61682c2073696c61686b616e20706572696b7361206b656d62616c69206461746120416e64612e223b);

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
  MODIFY `idguru` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `idkelas` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `idmapel` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mengajar`
--
ALTER TABLE `mengajar`
  MODIFY `idmengajar` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `idnilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `profil_sekolah`
--
ALTER TABLE `profil_sekolah`
  MODIFY `idprofil_sekolah` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rombel`
--
ALTER TABLE `rombel`
  MODIFY `idrombel` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `idsiswa` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  MODIFY `idtahun_akademik` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idusers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `idwali_kelas` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mengajar`
--
ALTER TABLE `mengajar`
  ADD CONSTRAINT `fk_guru_has_mapel_guru1` FOREIGN KEY (`idguru`) REFERENCES `guru` (`idguru`),
  ADD CONSTRAINT `fk_guru_has_mapel_mapel1` FOREIGN KEY (`idmapel`) REFERENCES `mapel` (`idmapel`),
  ADD CONSTRAINT `fk_mengajar_kelas1` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`idkelas`),
  ADD CONSTRAINT `fk_mengajar_tahun_akademik1` FOREIGN KEY (`idtahun_akademik`) REFERENCES `tahun_akademik` (`idtahun_akademik`);

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `fk_mapel_has_siswa_mapel1` FOREIGN KEY (`idmapel`) REFERENCES `mapel` (`idmapel`),
  ADD CONSTRAINT `fk_mapel_has_siswa_siswa1` FOREIGN KEY (`idsiswa`) REFERENCES `siswa` (`idsiswa`),
  ADD CONSTRAINT `fk_nilai_kelas1` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`idkelas`),
  ADD CONSTRAINT `fk_nilai_tahun_akademik1` FOREIGN KEY (`idtahun_akademik`) REFERENCES `tahun_akademik` (`idtahun_akademik`);

--
-- Constraints for table `rombel`
--
ALTER TABLE `rombel`
  ADD CONSTRAINT `fk_rombel_siswa1` FOREIGN KEY (`idsiswa`) REFERENCES `siswa` (`idsiswa`),
  ADD CONSTRAINT `fk_rombel_wali_kelas1` FOREIGN KEY (`idwali_kelas`) REFERENCES `wali_kelas` (`idwali_kelas`);

--
-- Constraints for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD CONSTRAINT `fk_rombel_has_guru_guru1` FOREIGN KEY (`idguru`) REFERENCES `guru` (`idguru`),
  ADD CONSTRAINT `fk_tahun_akademik_tahun_akademik1` FOREIGN KEY (`idtahun_akademik`) REFERENCES `tahun_akademik` (`idtahun_akademik`),
  ADD CONSTRAINT `fk_wali_kelas_kelas1` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`idkelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
