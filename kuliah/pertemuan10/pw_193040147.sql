-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Apr 2020 pada 09.43
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pw_193040147`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nrp` char(9) NOT NULL,
  `email` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nrp`, `email`, `jurusan`, `gambar`) VALUES
(1, 'Mohammad Iqbal Ghifari', '193040147', '193040147@mail.unpas.ac.id', 'Teknik Informatika', 'iqbal.png'),
(2, 'Vikry Syauqi', '193040156', '193040156@mail.unpas.ac.id', 'Teknik Informatika', 'syauqi.png'),
(3, 'Rifqi Mulyawan', '193040149', '193040149@mail.unpas.ac.id', 'Teknik Informatika', 'rifqi.png'),
(4, 'Cahyadi Ivansah', '193040155', '193040155@mail.unpas.ac.id', 'Teknik Informatika', 'ivan.png'),
(5, 'Sugih Mohammad Galih', '193040180', '193040180@unpas.ac.id', 'Teknik Informatika', 'sugih.png'),
(6, 'Jeremy Anandhika Elyas', '193040173', '193040173@mail.unpas.ac.id', 'Teknik Informatika', 'jeremy.png'),
(7, 'Kevin Fredrian Syach', '193040163', '193040173@mail.unpas.ac.id', 'Teknik Informatika', 'kevin.png'),
(8, 'Muhamad Fawwazt Sabilarrasyad', '193040176', '193040176@mail.unpas.ac.id', 'Teknik Informatika', 'fawwazt.png'),
(9, 'Rifqi Perdiansyah', '193040188', '193940188@mail.unpas.ac.id', 'Teknik Informatika', 'rifqi_p.png'),
(10, 'Rizky Angga Saputra', '193040160', '193040160@mail.unpas.ac.id', 'Teknik Informatika', 'angga.png'),
(11, 'Fajri Khoirunnisa', '193040159', '193040159@mail.unpas.ac.id', 'Teknik Informatika', 'fajri.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
