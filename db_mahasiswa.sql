-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2023 at 01:33 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tab_agama`
--

CREATE TABLE `tab_agama` (
  `id` int(11) NOT NULL,
  `agama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_agama`
--

INSERT INTO `tab_agama` (`id`, `agama`) VALUES
(1, 'islam'),
(2, 'kristen'),
(3, 'protestan'),
(4, 'khatolik'),
(5, 'hindu'),
(6, 'budha'),
(7, 'khonguchu'),
(8, 'lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `tab_kelurahan`
--

CREATE TABLE `tab_kelurahan` (
  `id` int(11) NOT NULL,
  `kelurahan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_kelurahan`
--

INSERT INTO `tab_kelurahan` (`id`, `kelurahan`) VALUES
(1, 'Jakarta'),
(2, 'Depok'),
(3, 'Pekalongan'),
(4, 'Bandung'),
(5, 'Bekasi'),
(6, 'Jatim'),
(7, 'Jabar');

-- --------------------------------------------------------

--
-- Table structure for table `tab_pendapatan`
--

CREATE TABLE `tab_pendapatan` (
  `id` int(11) NOT NULL,
  `pendapatan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_pendapatan`
--

INSERT INTO `tab_pendapatan` (`id`, `pendapatan`) VALUES
(1, '2019'),
(2, '2020'),
(3, '2021'),
(4, '2022'),
(5, '2023');

-- --------------------------------------------------------

--
-- Table structure for table `tab_pendidikan`
--

CREATE TABLE `tab_pendidikan` (
  `id` int(11) NOT NULL,
  `pendidikan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_pendidikan`
--

INSERT INTO `tab_pendidikan` (`id`, `pendidikan`) VALUES
(1, 'SMA/Sedrajat'),
(2, 'SMK/Sederajat'),
(3, 'Paket C');

-- --------------------------------------------------------

--
-- Table structure for table `tab_penduduk`
--

CREATE TABLE `tab_penduduk` (
  `nik` varchar(30) NOT NULL,
  `no_kk` varchar(20) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `pendidikan` int(11) DEFAULT NULL,
  `pendapatan` int(11) DEFAULT NULL,
  `Agama` int(11) DEFAULT NULL,
  `alamat_lengkap` varchar(255) DEFAULT NULL,
  `kelurahan` int(11) DEFAULT NULL,
  `penduduk_asli` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_penduduk`
--

INSERT INTO `tab_penduduk` (`nik`, `no_kk`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `pendidikan`, `pendapatan`, `Agama`, `alamat_lengkap`, `kelurahan`, `penduduk_asli`) VALUES
('11111111', '123123111', 'Adityo 1', 'Jakarta', '1997-11-20', 'Pria', 4, 2, 1, 'Sukapura', 7, 'Ya'),
('11111112', '123123112', 'Adityo 2', 'Banjarnegara', '1997-11-20', 'Pria', 6, 2, 1, 'Walikota', 7, 'Ya'),
('11111113', '123123113', 'Adityo 3', 'Yogyakarta', '1997-11-21', 'Wanita', 7, 2, 1, 'Cilincing', 7, 'Ya'),
('11111114', '123123114', 'Adityo 4', 'Banten', '1997-11-22', 'Pria', 4, 2, 3, 'Sukapura', 7, 'Ya'),
('11111115', '123123115', 'Adityo 5', 'Jakarta', '1997-11-23', 'Pria', 6, 2, 4, 'Walikota', 7, 'Ya'),
('11111116', '123123116', 'Adityo 6', 'Banjarnegara', '1997-11-24', 'Wanita', 7, 2, 1, 'Cilincing', 7, 'Ya'),
('11111117', '123123117', 'Adityo 7', 'Yogyakarta', '1997-11-25', 'Pria', 4, 2, 1, 'Sukapura', 7, 'Ya'),
('11111118', '123123118', 'Adityo 8', 'Banten', '1997-11-26', 'Pria', 6, 2, 1, 'Walikota', 7, 'Ya'),
('11111119', '123123119', 'Adityo 9', 'Jakarta', '1997-11-27', 'Wanita', 7, 2, 3, 'Cilincing', 7, 'Ya'),
('11111120', '123123120', 'Adityo 10', 'Banjarnegara', '1997-11-28', 'Pria', 4, 2, 4, 'Sukapura', 1, 'Ya'),
('11111121', '123123121', 'Adityo 11', 'Yogyakarta', '1997-11-29', 'Pria', 6, 2, 1, 'Walikota', 1, 'Ya'),
('11111122', '123123122', 'Adityo 12', 'Banten', '1997-11-30', 'Wanita', 7, 2, 1, 'Cilincing', 1, 'Ya'),
('11111123', '123123123', 'Adityo 13', 'Jakarta', '1997-12-01', 'Pria', 4, 2, 1, 'Sukapura', 1, 'Ya'),
('11111124', '123123124', 'Adityo 14', 'Banjarnegara', '1997-12-02', 'Pria', 6, 2, 3, 'Walikota', 1, 'Ya'),
('11111125', '123123125', 'Adityo 15', 'Yogyakarta', '1997-12-03', 'Wanita', 7, 2, 4, 'Cilincing', 1, 'Ya'),
('11111126', '123123126', 'Adityo 16', 'Banten', '1997-12-04', 'Pria', 4, 2, 1, 'Sukapura', 1, 'Ya'),
('11111127', '123123127', 'Adityo 17', 'Jakarta', '1997-12-05', 'Pria', 6, 2, 1, 'Walikota', 1, 'Ya'),
('11111128', '123123128', 'Adityo 18', 'Banjarnegara', '1997-12-06', 'Wanita', 7, 2, 1, 'Cilincing', 1, 'Ya'),
('11111129', '123123129', 'Adityo 19', 'Yogyakarta', '1997-12-07', 'Pria', 4, 2, 3, 'Sukapura', 1, 'Ya'),
('11111130', '123123130', 'Adityo 20', 'Banten', '1997-12-08', 'Pria', 6, 2, 4, 'Walikota', 2, 'Ya'),
('11111131', '123123131', 'Adityo 21', 'Jakarta', '1997-12-09', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111132', '123123132', 'Adityo 22', 'Banjarnegara', '1997-12-10', 'Pria', 4, 2, 2, 'Sukapura', 2, 'Ya'),
('11111133', '123123133', 'Adityo 23', 'Yogyakarta', '1997-12-11', 'Pria', 6, 2, 2, 'Walikota', 2, 'Ya'),
('11111134', '123123134', 'Adityo 24', 'Banten', '1997-12-12', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111135', '123123135', 'Adityo 25', 'Jakarta', '1997-12-13', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111136', '123123136', 'Adityo 26', 'Banjarnegara', '1997-12-14', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111137', '123123137', 'Adityo 27', 'Yogyakarta', '1997-12-15', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111138', '123123138', 'Adityo 28', 'Banten', '1997-12-16', 'Pria', 4, 2, 3, 'Sukapura', 2, 'Ya'),
('11111139', '123123139', 'Adityo 29', 'Jakarta', '1997-12-17', 'Pria', 6, 2, 4, 'Walikota', 2, 'Ya'),
('11111140', '123123140', 'Adityo 30', 'Banjarnegara', '1997-12-18', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111141', '123123141', 'Adityo 31', 'Yogyakarta', '1997-12-19', 'Pria', 4, 2, 2, 'Sukapura', 2, 'Ya'),
('11111142', '123123142', 'Adityo 32', 'Banten', '1997-12-20', 'Pria', 6, 2, 2, 'Walikota', 2, 'Ya'),
('11111143', '123123143', 'Adityo 33', 'Jakarta', '1997-12-21', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111144', '123123144', 'Adityo 34', 'Banjarnegara', '1997-12-22', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111145', '123123145', 'Adityo 35', 'Yogyakarta', '1997-12-23', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111146', '123123146', 'Adityo 36', 'Banten', '1997-12-24', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111147', '123123147', 'Adityo 37', 'Jakarta', '1997-12-25', 'Pria', 4, 2, 3, 'Sukapura', 2, 'Ya'),
('11111148', '123123148', 'Adityo 38', 'Banjarnegara', '1997-12-26', 'Pria', 6, 2, 4, 'Walikota', 2, 'Ya'),
('11111149', '123123149', 'Adityo 39', 'Yogyakarta', '1997-12-27', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111150', '123123150', 'Adityo 40', 'Banten', '1997-12-28', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111151', '123123151', 'Adityo 41', 'Jakarta', '1997-12-29', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111152', '123123152', 'Adityo 42', 'Banjarnegara', '1997-12-30', 'Wanita', 7, 2, 3, 'Cilincing', 2, 'Ya'),
('11111153', '123123153', 'Adityo 43', 'Yogyakarta', '1997-12-31', 'Pria', 4, 2, 4, 'Sukapura', 2, 'Ya'),
('11111154', '123123154', 'Adityo 44', 'Banten', '1998-01-01', 'Pria', 6, 2, 2, 'Walikota', 2, 'Ya'),
('11111155', '123123155', 'Adityo 45', 'Jakarta', '1998-01-02', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111156', '123123156', 'Adityo 46', 'Banjarnegara', '1998-01-03', 'Pria', 4, 2, 2, 'Sukapura', 2, 'Ya'),
('11111157', '123123157', 'Adityo 47', 'Yogyakarta', '1998-01-04', 'Pria', 6, 2, 2, 'Walikota', 2, 'Ya'),
('11111158', '123123158', 'Adityo 48', 'Banten', '1998-01-05', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111159', '123123159', 'Adityo 49', 'Jakarta', '1998-01-06', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111160', '123123160', 'Adityo 50', 'Banjarnegara', '1998-01-07', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111161', '123123161', 'Adityo 51', 'Yogyakarta', '1998-01-08', 'Wanita', 7, 2, 3, 'Cilincing', 2, 'Ya'),
('11111162', '123123162', 'Adityo 52', 'Banten', '1998-01-09', 'Pria', 4, 2, 4, 'Sukapura', 2, 'Ya'),
('11111163', '123123163', 'Adityo 53', 'Jakarta', '1998-01-10', 'Pria', 6, 2, 2, 'Walikota', 2, 'Ya'),
('11111164', '123123164', 'Adityo 54', 'Banjarnegara', '1998-01-11', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111165', '123123165', 'Adityo 55', 'Yogyakarta', '1998-01-12', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111166', '123123166', 'Adityo 56', 'Banten', '1998-01-13', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111167', '123123167', 'Adityo 57', 'Jakarta', '1998-01-14', 'Wanita', 7, 2, 3, 'Cilincing', 2, 'Ya'),
('11111168', '123123168', 'Adityo 58', 'Banjarnegara', '1998-01-15', 'Pria', 4, 2, 4, 'Sukapura', 2, 'Ya'),
('11111169', '123123169', 'Adityo 59', 'Yogyakarta', '1998-01-16', 'Pria', 6, 2, 2, 'Walikota', 2, 'Ya'),
('11111170', '123123170', 'Adityo 60', 'Banten', '1998-01-17', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111171', '123123171', 'Adityo 61', 'Jakarta', '1998-01-18', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111172', '123123172', 'Adityo 62', 'Banjarnegara', '1998-01-19', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111173', '123123173', 'Adityo 63', 'Yogyakarta', '1998-01-20', 'Wanita', 7, 2, 3, 'Cilincing', 2, 'Ya'),
('11111174', '123123174', 'Adityo 64', 'Banten', '1998-01-21', 'Pria', 4, 2, 4, 'Sukapura', 2, 'Ya'),
('11111175', '123123175', 'Adityo 65', 'Jakarta', '1998-01-22', 'Pria', 6, 2, 2, 'Walikota', 2, 'Ya'),
('11111176', '123123176', 'Adityo 66', 'Banjarnegara', '1998-01-23', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111177', '123123177', 'Adityo 67', 'Yogyakarta', '1998-01-24', 'Pria', 4, 2, 2, 'Sukapura', 2, 'Ya'),
('11111178', '123123178', 'Adityo 68', 'Banten', '1998-01-25', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111179', '123123179', 'Adityo 69', 'Jakarta', '1998-01-26', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111180', '123123180', 'Adityo 70', 'Banjarnegara', '1998-01-27', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111181', '123123181', 'Adityo 71', 'Yogyakarta', '1998-01-28', 'Pria', 6, 2, 3, 'Walikota', 2, 'Ya'),
('11111182', '123123182', 'Adityo 72', 'Banten', '1998-01-29', 'Wanita', 7, 2, 4, 'Cilincing', 2, 'Ya'),
('11111183', '123123183', 'Adityo 73', 'Jakarta', '1998-01-30', 'Pria', 4, 2, 2, 'Sukapura', 2, 'Ya'),
('11111184', '123123184', 'Adityo 74', 'Banjarnegara', '1998-01-31', 'Pria', 6, 2, 2, 'Walikota', 2, 'Ya'),
('11111185', '123123185', 'Adityo 75', 'Yogyakarta', '1998-02-01', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111186', '123123186', 'Adityo 76', 'Banten', '1998-02-02', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111187', '123123187', 'Adityo 77', 'Jakarta', '1998-02-03', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111188', '123123188', 'Adityo 78', 'Banjarnegara', '1998-02-04', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111189', '123123189', 'Adityo 79', 'Yogyakarta', '1998-02-05', 'Pria', 4, 2, 3, 'Sukapura', 2, 'Ya'),
('11111190', '123123190', 'Adityo 80', 'Banten', '1998-02-06', 'Pria', 6, 2, 4, 'Walikota', 2, 'Ya'),
('11111191', '123123191', 'Adityo 81', 'Jakarta', '1998-02-07', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111192', '123123192', 'Adityo 82', 'Banjarnegara', '1998-02-08', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111193', '123123193', 'Adityo 83', 'Yogyakarta', '1998-02-09', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111194', '123123194', 'Adityo 84', 'Banten', '1998-02-10', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111195', '123123195', 'Adityo 85', 'Jakarta', '1998-02-11', 'Pria', 4, 2, 3, 'Sukapura', 2, 'Ya'),
('11111196', '123123196', 'Adityo 86', 'Banjarnegara', '1998-02-12', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111197', '123123197', 'Adityo 87', 'Yogyakarta', '1998-02-13', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111198', '123123198', 'Adityo 88', 'Banten', '1998-02-14', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111199', '123123199', 'Adityo 89', 'Jakarta', '1998-02-15', 'Pria', 6, 2, 3, 'Walikota', 2, 'Ya'),
('11111200', '123123200', 'Adityo 90', 'Banjarnegara', '1998-02-16', 'Wanita', 7, 2, 4, 'Cilincing', 2, 'Ya'),
('11111201', '123123201', 'Adityo 91', 'Yogyakarta', '1998-02-17', 'Pria', 4, 2, 2, 'Sukapura', 2, 'Ya'),
('11111202', '123123202', 'Adityo 92', 'Banten', '1998-02-18', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111203', '123123203', 'Adityo 93', 'Jakarta', '1998-02-19', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111204', '123123204', 'Adityo 94', 'Banjarnegara', '1998-02-20', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111205', '123123205', 'Adityo 95', 'Yogyakarta', '1998-02-21', 'Pria', 6, 2, 3, 'Walikota', 2, 'Ya'),
('11111206', '123123206', 'Adityo 96', 'Banten', '1998-02-22', 'Wanita', 7, 2, 4, 'Cilincing', 2, 'Ya'),
('11111207', '123123207', 'Adityo 97', 'Jakarta', '1998-02-23', 'Pria', 4, 2, 2, 'Sukapura', 2, 'Ya'),
('11111208', '123123208', 'Adityo 98', 'Banjarnegara', '1998-02-24', 'Pria', 6, 2, 2, 'Walikota', 2, 'Ya'),
('11111209', '123123209', 'Adityo 99', 'Yogyakarta', '1998-02-25', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111210', '123123210', 'Adityo 100', 'Banten', '1998-02-26', 'Pria', 4, 2, 2, 'Sukapura', 2, 'Ya'),
('11111211', '123123211', 'Adityo 101', 'Jakarta', '1998-02-27', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111212', '123123212', 'Adityo 102', 'Banjarnegara', '1998-02-28', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111213', '123123213', 'Adityo 103', 'Yogyakarta', '1998-03-01', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111214', '123123214', 'Adityo 104', 'Banten', '1998-03-02', 'Pria', 6, 2, 3, 'Walikota', 2, 'Ya'),
('11111215', '123123215', 'Adityo 105', 'Jakarta', '1998-03-03', 'Wanita', 7, 2, 4, 'Cilincing', 2, 'Ya'),
('11111216', '123123216', 'Adityo 106', 'Banjarnegara', '1998-03-04', 'Pria', 4, 2, 2, 'Sukapura', 2, 'Ya'),
('11111217', '123123217', 'Adityo 107', 'Yogyakarta', '1998-03-05', 'Pria', 6, 2, 2, 'Walikota', 2, 'Ya'),
('11111218', '123123218', 'Adityo 108', 'Banten', '1998-03-06', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111219', '123123219', 'Adityo 109', 'Jakarta', '1998-03-07', 'Pria', 4, 2, 2, 'Sukapura', 2, 'Ya'),
('11111220', '123123220', 'Adityo 110', 'Banjarnegara', '1998-03-08', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111221', '123123221', 'Adityo 111', 'Yogyakarta', '1998-03-09', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111222', '123123222', 'Adityo 112', 'Banten', '1998-03-10', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111223', '123123223', 'Adityo 113', 'Jakarta', '1998-03-11', 'Pria', 6, 2, 3, 'Walikota', 2, 'Ya'),
('11111224', '123123224', 'Adityo 114', 'Banjarnegara', '1998-03-12', 'Wanita', 7, 2, 4, 'Cilincing', 2, 'Ya'),
('11111225', '123123225', 'Adityo 115', 'Yogyakarta', '1998-03-13', 'Pria', 4, 2, 2, 'Sukapura', 2, 'Ya'),
('11111226', '123123226', 'Adityo 116', 'Banten', '1998-03-14', 'Pria', 6, 2, 2, 'Walikota', 2, 'Ya'),
('11111227', '123123227', 'Adityo 117', 'Jakarta', '1998-03-15', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111228', '123123228', 'Adityo 118', 'Banjarnegara', '1998-03-16', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111229', '123123229', 'Adityo 119', 'Yogyakarta', '1998-03-17', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111230', '123123230', 'Adityo 120', 'Banten', '1998-03-18', 'Wanita', 7, 2, 3, 'Cilincing', 2, 'Ya'),
('11111231', '123123231', 'Adityo 121', 'Jakarta', '1998-03-19', 'Pria', 4, 2, 4, 'Sukapura', 2, 'Ya'),
('11111232', '123123232', 'Adityo 122', 'Banjarnegara', '1998-03-20', 'Pria', 6, 2, 2, 'Walikota', 2, 'Ya'),
('11111233', '123123233', 'Adityo 123', 'Yogyakarta', '1998-03-21', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111234', '123123234', 'Adityo 124', 'Banten', '1998-03-22', 'Pria', 4, 2, 2, 'Sukapura', 2, 'Ya'),
('11111235', '123123235', 'Adityo 125', 'Jakarta', '1998-03-23', 'Pria', 6, 2, 2, 'Walikota', 2, 'Ya'),
('11111236', '123123236', 'Adityo 126', 'Banjarnegara', '1998-03-24', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111237', '123123237', 'Adityo 127', 'Yogyakarta', '1998-03-25', 'Pria', 4, 2, 2, 'Sukapura', 2, 'Ya'),
('11111238', '123123238', 'Adityo 128', 'Banten', '1998-03-26', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111239', '123123239', 'Adityo 129', 'Jakarta', '1998-03-27', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111240', '123123240', 'Adityo 130', 'Banjarnegara', '1998-03-28', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111241', '123123241', 'Adityo 131', 'Yogyakarta', '1998-03-29', 'Pria', 6, 2, 3, 'Walikota', 2, 'Ya'),
('11111242', '123123242', 'Adityo 132', 'Banten', '1998-03-30', 'Wanita', 7, 2, 4, 'Cilincing', 2, 'Ya'),
('11111243', '123123243', 'Adityo 133', 'Jakarta', '1998-03-31', 'Pria', 4, 2, 2, 'Sukapura', 2, 'Ya'),
('11111244', '123123244', 'Adityo 134', 'Banjarnegara', '1998-04-01', 'Pria', 6, 2, 2, 'Walikota', 2, 'Ya'),
('11111245', '123123245', 'Adityo 135', 'Yogyakarta', '1998-04-02', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111246', '123123246', 'Adityo 136', 'Banten', '1998-04-03', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111247', '123123247', 'Adityo 137', 'Jakarta', '1998-04-04', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111248', '123123248', 'Adityo 138', 'Banjarnegara', '1998-04-05', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111249', '123123249', 'Adityo 139', 'Yogyakarta', '1998-04-06', 'Pria', 4, 2, 3, 'Sukapura', 2, 'Ya'),
('11111250', '123123250', 'Adityo 140', 'Banten', '1998-04-07', 'Pria', 6, 2, 4, 'Walikota', 2, 'Ya'),
('11111251', '123123251', 'Adityo 141', 'Jakarta', '1998-04-08', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111252', '123123252', 'Adityo 142', 'Banjarnegara', '1998-04-09', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111253', '123123253', 'Adityo 143', 'Yogyakarta', '1998-04-10', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111254', '123123254', 'Adityo 144', 'Banten', '1998-04-11', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111255', '123123255', 'Adityo 145', 'Jakarta', '1998-04-12', 'Pria', 4, 2, 3, 'Sukapura', 2, 'Ya'),
('11111256', '123123256', 'Adityo 146', 'Banjarnegara', '1998-04-13', 'Pria', 6, 2, 4, 'Walikota', 2, 'Ya'),
('11111257', '123123257', 'Adityo 147', 'Yogyakarta', '1998-04-14', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111258', '123123258', 'Adityo 148', 'Banten', '1998-04-15', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111259', '123123259', 'Adityo 149', 'Jakarta', '1998-04-16', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111260', '123123260', 'Adityo 150', 'Banjarnegara', '1998-04-17', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111261', '123123261', 'Adityo 151', 'Yogyakarta', '1998-04-18', 'Pria', 4, 2, 3, 'Sukapura', 2, 'Ya'),
('11111262', '123123262', 'Adityo 152', 'Banten', '1998-04-19', 'Pria', 6, 2, 4, 'Walikota', 2, 'Ya'),
('11111263', '123123263', 'Adityo 153', 'Jakarta', '1998-04-20', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111264', '123123264', 'Adityo 154', 'Banjarnegara', '1998-04-21', 'Pria', 4, 2, 2, 'Sukapura', 2, 'Ya'),
('11111265', '123123265', 'Adityo 155', 'Yogyakarta', '1998-04-22', 'Pria', 6, 2, 2, 'Walikota', 2, 'Ya'),
('11111266', '123123266', 'Adityo 156', 'Banten', '1998-04-23', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111267', '123123267', 'Adityo 157', 'Jakarta', '1998-04-24', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111268', '123123268', 'Adityo 158', 'Banjarnegara', '1998-04-25', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111269', '123123269', 'Adityo 159', 'Yogyakarta', '1998-04-26', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111270', '123123270', 'Adityo 160', 'Banten', '1998-04-27', 'Pria', 4, 2, 3, 'Sukapura', 2, 'Ya'),
('11111271', '123123271', 'Adityo 161', 'Jakarta', '1998-04-28', 'Pria', 6, 2, 4, 'Walikota', 2, 'Ya'),
('11111272', '123123272', 'Adityo 162', 'Banjarnegara', '1998-04-29', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111273', '123123273', 'Adityo 163', 'Yogyakarta', '1998-04-30', 'Pria', 4, 2, 2, 'Sukapura', 2, 'Ya'),
('11111274', '123123274', 'Adityo 164', 'Banten', '1998-05-01', 'Pria', 6, 2, 2, 'Walikota', 2, 'Ya'),
('11111275', '123123275', 'Adityo 165', 'Jakarta', '1998-05-02', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111276', '123123276', 'Adityo 166', 'Banjarnegara', '1998-05-03', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111277', '123123277', 'Adityo 167', 'Yogyakarta', '1998-05-04', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111278', '123123278', 'Adityo 168', 'Banten', '1998-05-05', 'Wanita', 7, 2, 3, 'Cilincing', 2, 'Ya'),
('11111279', '123123279', 'Adityo 169', 'Jakarta', '1998-05-06', 'Pria', 4, 2, 4, 'Sukapura', 2, 'Ya'),
('11111280', '123123280', 'Adityo 170', 'Banjarnegara', '1998-05-07', 'Pria', 6, 2, 2, 'Walikota', 2, 'Ya'),
('11111281', '123123281', 'Adityo 171', 'Yogyakarta', '1998-05-08', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111282', '123123282', 'Adityo 172', 'Banten', '1998-05-09', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111283', '123123283', 'Adityo 173', 'Jakarta', '1998-05-10', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111284', '123123284', 'Adityo 174', 'Banjarnegara', '1998-05-11', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111285', '123123285', 'Adityo 175', 'Yogyakarta', '1998-05-12', 'Pria', 4, 2, 3, 'Sukapura', 2, 'Ya'),
('11111286', '123123286', 'Adityo 176', 'Banten', '1998-05-13', 'Pria', 6, 2, 4, 'Walikota', 2, 'Ya'),
('11111287', '123123287', 'Adityo 177', 'Jakarta', '1998-05-14', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111288', '123123288', 'Adityo 178', 'Banjarnegara', '1998-05-15', 'Pria', 4, 2, 2, 'Sukapura', 2, 'Ya'),
('11111289', '123123289', 'Adityo 179', 'Yogyakarta', '1998-05-16', 'Pria', 6, 2, 2, 'Walikota', 2, 'Ya'),
('11111290', '123123290', 'Adityo 180', 'Banten', '1998-05-17', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111291', '123123291', 'Adityo 181', 'Jakarta', '1998-05-18', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111292', '123123292', 'Adityo 182', 'Banjarnegara', '1998-05-19', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111293', '123123293', 'Adityo 183', 'Yogyakarta', '1998-05-20', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111294', '123123294', 'Adityo 184', 'Banten', '1998-05-21', 'Pria', 4, 2, 3, 'Sukapura', 2, 'Ya'),
('11111295', '123123295', 'Adityo 185', 'Jakarta', '1998-05-22', 'Pria', 6, 2, 4, 'Walikota', 2, 'Ya'),
('11111296', '123123296', 'Adityo 186', 'Banjarnegara', '1998-05-23', 'Wanita', 7, 2, 2, 'Cilincing', 2, 'Ya'),
('11111297', '123123297', 'Adityo 187', 'Yogyakarta', '1998-05-24', 'Pria', 4, 2, 2, 'Sukapura', 2, 'Ya'),
('11111298', '123123298', 'Adityo 188', 'Banten', '1998-05-25', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111299', '123123299', 'Adityo 189', 'Jakarta', '1998-05-26', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111300', '123123300', 'Adityo 190', 'Banjarnegara', '1998-05-27', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111301', '123123301', 'Adityo 191', 'Yogyakarta', '1998-05-28', 'Pria', 6, 2, 3, 'Walikota', 2, 'Ya'),
('11111302', '123123302', 'Adityo 192', 'Banten', '1998-05-29', 'Wanita', 7, 2, 4, 'Cilincing', 2, 'Ya'),
('11111303', '123123303', 'Adityo 193', 'Jakarta', '1998-05-30', 'Pria', 4, 2, 2, 'Sukapura', 2, 'Ya'),
('11111304', '123123304', 'Adityo 194', 'Banjarnegara', '1998-05-31', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111305', '123123305', 'Adityo 195', 'Yogyakarta', '1998-06-01', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111306', '123123306', 'Adityo 196', 'Banten', '1998-06-02', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111307', '123123307', 'Adityo 197', 'Jakarta', '1998-06-03', 'Pria', 6, 2, 1, 'Walikota', 2, 'Ya'),
('11111308', '123123308', 'Adityo 198', 'Banjarnegara', '1998-06-04', 'Wanita', 7, 2, 1, 'Cilincing', 2, 'Ya'),
('11111309', '123123309', 'Adityo 199', 'Yogyakarta', '1998-06-05', 'Pria', 4, 2, 1, 'Sukapura', 2, 'Ya'),
('11111310', '123123310', 'Adityo 200', 'Banten', '1998-06-06', 'Pria', 6, 2, 3, 'Walikota', 2, 'Ya'),
('12342123456', '123453454321123', 'Bagus saputra', 'Jakarta', '2023-01-13', 'Pria', 2, 3, 8, 'Pondok Gede', 6, 'Ya'),
('123454311234', '42113421211111', 'Sakura', 'Jakarta', '2023-01-26', 'Wanita', 3, 1, 8, 'Pondok Gede', 3, 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `tab_user`
--

CREATE TABLE `tab_user` (
  `id` int(11) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `created_by` varchar(15) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_by` varchar(15) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tab_user`
--

INSERT INTO `tab_user` (`id`, `username`, `password`, `lastlogin`, `created_by`, `created_at`, `update_by`, `update_at`) VALUES
(2, 'admin', 'admin', '2023-01-31 06:19:22', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tab_agama`
--
ALTER TABLE `tab_agama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_kelurahan`
--
ALTER TABLE `tab_kelurahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_pendapatan`
--
ALTER TABLE `tab_pendapatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_pendidikan`
--
ALTER TABLE `tab_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_penduduk`
--
ALTER TABLE `tab_penduduk`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `tab_user`
--
ALTER TABLE `tab_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tab_agama`
--
ALTER TABLE `tab_agama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tab_kelurahan`
--
ALTER TABLE `tab_kelurahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tab_pendapatan`
--
ALTER TABLE `tab_pendapatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tab_pendidikan`
--
ALTER TABLE `tab_pendidikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tab_user`
--
ALTER TABLE `tab_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
