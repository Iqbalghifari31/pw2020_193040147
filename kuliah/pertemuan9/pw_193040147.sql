-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Apr 2020 pada 11.46
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `nama` varchar(100) DEFAULT NULL,
  `nrp` char(9) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nrp`, `email`, `jurusan`, `gambar`) VALUES
(1, 'Sandika Galih', '043040023', 'sandhikagalih@unpas.ac.id', 'Teknik Informatika', 'sandhikagalih.jpeg'),
(2, 'Doddy Ferdiansyah', '043040001', 'doy@gmail.com', 'Teknik Mesin', 'doddy.jpg'),
(3, 'Fajar Darmawan', '033040100', 'fajar_if@yahoo.com', 'Teknik Industri', 'fajar.jpg'),
(4, 'Erik', '023040231', 'erik@icloud.com', 'Teknik Informatika', 'erik.jpg'),
(5, 'Mellia Liyanty', '993040123', 'mellia@unpas.ac.id', 'Teknik Informatika', 'mellia.jpg'),
(6, 'Muhamad Fawwazt', '193040176', '193040176@mail.unpas.ac.id', 'Teknik Informatika', 'Fawwazt.jpg'),
(7, 'Fajri Khoirunnisa', '193040159', '193040159@mail.unpas.ac.id', 'Teknik Informatika', 'Fajri.jpg'),
(8, 'Rifqi Muliawan', '193040149', '193040149@gmail.com', 'Teknik Industri', 'Rifqi.jpg'),
(9, 'Cahyadi Ivansah', '193040155', '193040155@mail.unpas.ac.id', 'Teknik Informatika', 'ivan.jpg'),
(10, 'Rizky Angga Saputra', '193040160', '193040160@mail.unpas.ac.id', 'Teknik Informatika', 'Angga.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
