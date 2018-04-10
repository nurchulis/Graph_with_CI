-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 10, 2018 at 04:16 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL,
  `nama_dosen` varchar(25) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `gelar` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama_dosen`, `alamat`, `gelar`) VALUES
(1, 'Sumarsono', 'Bantul', 'M.Kom'),
(2, 'Bambang', 'Sleman', 'M.kom'),
(3, 'Maria Ulfa', 'Medan', 'M.kom'),
(4, 'Agus Mulyanto', 'Yogyakarta', 'M.kom');

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(11) NOT NULL,
  `nm` varchar(10) NOT NULL,
  `id_dosen` varchar(24) NOT NULL,
  `id_makul` varchar(24) NOT NULL,
  `id_ruang` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id_krs`, `nm`, `id_dosen`, `id_makul`, `id_ruang`) VALUES
(1, '16650015', '1', '2', '1'),
(2, '16650015', '1', '1', '3'),
(3, '16650006', '1', '2', '1'),
(4, '16650006', '1', '1', '3'),
(5, '16650004', '1', '2', '1'),
(6, '16650001', '1', '2', '1'),
(7, '16650002', '1', '2', '3');

-- --------------------------------------------------------

--
-- Table structure for table `makul`
--

CREATE TABLE `makul` (
  `id_makul` int(5) NOT NULL,
  `nama_makul` varchar(24) NOT NULL,
  `jumlah_sks` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makul`
--

INSERT INTO `makul` (`id_makul`, `nama_makul`, `jumlah_sks`) VALUES
(1, 'Aljabar Linear', '2'),
(2, 'Pemograman Web', '3'),
(3, 'Kecerdasan Buatan', '3'),
(4, 'Konsep Bahasa Pemograman', '4');

-- --------------------------------------------------------

--
-- Table structure for table `mhs`
--

CREATE TABLE `mhs` (
  `nm` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `tgl_lahir` int(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `angkatan` varchar(5) NOT NULL,
  `wali` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mhs`
--

INSERT INTO `mhs` (`nm`, `nama`, `password`, `tgl_lahir`, `alamat`, `gender`, `angkatan`, `wali`) VALUES
(16650001, 'fajri rahmadan', '2385948a5a90992e7a7715d1ea510e03', 2021999, 'bima', 'L', '2016', 'safiah'),
(16650002, 'lina puspita sari', '2385948a5a90992e7a7715d1ea510e03', 9011999, 'bekasi', 'P', '2016', 'sutomo'),
(16650003, 'juang sabit', '2385948a5a90992e7a7715d1ea510e03', 1021997, 'tegal', 'L', '2016', 'sabit'),
(16650004, 'kurniawan', '2385948a5a90992e7a7715d1ea510e03', 1011998, 'cirebon', 'L', '2016', 'kunto'),
(16650006, 'nur anita', '2385948a5a90992e7a7715d1ea510e03', 7021998, 'padang', 'P', '2016', 'santo'),
(16650015, 'nurchulis', '2385948a5a90992e7a7715d1ea510e03', 2021997, 'jambi', 'L', '2016', 'genta');

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `id_ruang` int(11) NOT NULL,
  `nama_ruang` varchar(24) NOT NULL,
  `fakultas` varchar(24) NOT NULL,
  `jam` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`id_ruang`, `nama_ruang`, `fakultas`, `jam`) VALUES
(1, '101', 'Saintek', '07:00:00'),
(2, '102', 'Saintek', '07:00:00'),
(3, '101', 'Saintek', '08:40:00'),
(4, '102', 'Saintek', '08:40:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`);

--
-- Indexes for table `makul`
--
ALTER TABLE `makul`
  ADD PRIMARY KEY (`id_makul`);

--
-- Indexes for table `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`nm`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id_ruang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `makul`
--
ALTER TABLE `makul`
  MODIFY `id_makul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id_ruang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
