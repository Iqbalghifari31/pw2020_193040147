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
-- Database: `tubes_193040147`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `makanan`
--

CREATE TABLE `makanan` (
  `Id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `asal` varchar(100) NOT NULL,
  `teknik` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `makanan`
--

INSERT INTO `makanan` (`Id`, `img`, `nama`, `asal`, `teknik`, `kategori`) VALUES
(1, 'mie.jpg', 'Mie Aceh', 'Aceh', 'Goreng, Rebus', 'Menu utama'),
(2, 'bika.jpg', 'Bika Ambon', 'Medan', 'Panggang', 'Cemilan'),
(3, 'rendang.jpg', 'Rendang', 'Padang', 'Goreng, Rebus', 'Menu utama'),
(4, 'pempek.jpg', 'Pempek', 'Palembang', 'Goreng, Rebus', 'Cemilan'),
(5, 'kerak.jpg', 'Kerak Telor', 'Jakarta', 'Goreng hingga bawahnya agak gosong', 'Cemilan'),
(6, 'serabi.jpg', 'Serabi', 'Jawa Barat', 'Panggang', 'Cemilan'),
(7, 'gudeg.jpg', 'Nasi Gudeg', 'Jogja', 'Rebus', 'Menu utama'),
(8, 'rujak.jpg', 'Rujak Cingur', 'Jawa Timur', 'Campuran irisan Buah-buahan dan bumbu', 'Cemilan'),
(9, 'betutu.jpg', 'Ayam Betutu', 'Bali', 'Bakar, Kukus', 'Menu utama'),
(10, 'soto.jpg', 'Soto Banjar', 'Kalimantan Selatan', 'Rebus', 'Menu utama');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `makanan`
--
ALTER TABLE `makanan`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
