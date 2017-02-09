-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2017 at 07:29 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tespey`
--

-- --------------------------------------------------------

--
-- Table structure for table `yaxci_oglanlar`
--

CREATE TABLE `yaxci_oglanlar` (
  `id_yaxcioglan` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `abshak` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yaxci_oglanlar`
--

INSERT INTO `yaxci_oglanlar` (`id_yaxcioglan`, `name`, `age`, `address`, `abshak`) VALUES
(1, 'Sabir ', '20', 'Vasmoy mikrorayon', '50000000'),
(2, 'Cefer', '20', 'Vasmoy kilometr ushagi', '500000'),
(3, 'Nicat', '20', 'Genclik ushagi', '1234567'),
(4, 'Vezir', '20', 'Yasamal ushagi', 'unlimited'),
(5, 'Huseyn', '25', 'Hovsan ', '150000'),
(6, 'Celil', '20', 'Berde, 28, Xetai, Zig ushagi', '2 manat');

-- --------------------------------------------------------

--
-- Stand-in structure for view `yaxci_oglanlar_view`
-- (See below for the actual view)
--
CREATE TABLE `yaxci_oglanlar_view` (
`name` varchar(50)
,`address` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `yaxci_oglanlar_view`
--
DROP TABLE IF EXISTS `yaxci_oglanlar_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `yaxci_oglanlar_view`  AS  select `yaxci_oglanlar`.`name` AS `name`,`yaxci_oglanlar`.`address` AS `address` from `yaxci_oglanlar` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `yaxci_oglanlar`
--
ALTER TABLE `yaxci_oglanlar`
  ADD PRIMARY KEY (`id_yaxcioglan`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
