-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Bulan Mei 2020 pada 02.26
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_franchise`
--

CREATE TABLE `tbl_franchise` (
  `id_franchise` varchar(10) NOT NULL,
  `alamat_franchise` varchar(30) NOT NULL,
  `tlp_franchise` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_franchise`
--

INSERT INTO `tbl_franchise` (`id_franchise`, `alamat_franchise`, `tlp_franchise`) VALUES
('CA001', 'Senayan', '8029009'),
('CA002', 'Tebet', '2902112'),
('CA003', 'Depok', '8012009');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_karyawan`
--

CREATE TABLE `tbl_karyawan` (
  `id_karyawan` varchar(10) NOT NULL,
  `nama_karyawan` varchar(30) NOT NULL,
  `alamat_karyawan` varchar(30) NOT NULL,
  `pekerjaan_karyawan` varchar(30) NOT NULL,
  `tlp_karyawan` int(15) NOT NULL,
  `id_franchise` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_karyawan`
--

INSERT INTO `tbl_karyawan` (`id_karyawan`, `nama_karyawan`, `alamat_karyawan`, `pekerjaan_karyawan`, `tlp_karyawan`, `id_franchise`) VALUES
('KA001', 'Mawar', 'Jakarta', 'Kasir', 812812099, 'CA001'),
('KA002', 'Melati', 'Depok', 'Kasir', 812812092, 'CA003'),
('KO001', 'Ahmad', 'Jakarta', 'Chef Juna', 812812121, 'CA002'),
('KO002', 'Agung', 'Jakarta', 'Chef Juna', 812912931, 'CA002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kasir`
--

CREATE TABLE `tbl_kasir` (
  `id_kasir` varchar(10) NOT NULL,
  `kemampuan_bahasa` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kasir`
--

INSERT INTO `tbl_kasir` (`id_kasir`, `kemampuan_bahasa`) VALUES
('KA001', 'Indonesia, Inggris'),
('KA002', 'Indonesia, Inggris');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_koki`
--

CREATE TABLE `tbl_koki` (
  `id_koki` varchar(10) NOT NULL,
  `jenis_masakan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_koki`
--

INSERT INTO `tbl_koki` (`id_koki`, `jenis_masakan`) VALUES
('KO001', 'Dessert'),
('KO002', 'Main Course');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_makanan`
--

CREATE TABLE `tbl_makanan` (
  `id_makanan` varchar(10) NOT NULL,
  `stok_makanan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_makanan`
--

INSERT INTO `tbl_makanan` (`id_makanan`, `stok_makanan`) VALUES
('F01', 80),
('F02', 40),
('F03', 55),
('F04', 21),
('F05', 67),
('F06', 43),
('F07', 74),
('F08', 23),
('F09', 49),
('F10', 34);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id_menu` varchar(5) NOT NULL,
  `nama_menu` varchar(30) NOT NULL,
  `harga_menu` int(11) NOT NULL,
  `foto_menu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_menu`
--

INSERT INTO `tbl_menu` (`id_menu`, `nama_menu`, `harga_menu`, `foto_menu`) VALUES
('F01', 'mie', 10000, 'mie.jpg'),
('F02', 'bika', 7000, 'bika.jpg'),
('F03', 'rendang', 12000, 'rendang.jpg'),
('F04', 'pempek', 8000, 'pempek.jpg'),
('F05', 'kerak_telor', 10000, 'kerak.jpg'),
('F06', 'serabi', 4000, 'serabi.jpg'),
('F07', 'gudeg', 9000, 'gudeg.jpg'),
('F08', 'rujak', 6000, 'rujak.jpg'),
('F09', 'betutu', 15000, 'betutu.jpg'),
('F10', 'soto', 13000, 'soto.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `mie` int(11) NOT NULL,
  `bika` int(11) NOT NULL,
  `rendang` int(11) NOT NULL,
  `pempek` int(11) NOT NULL,
  `kerak_telor` int(11) NOT NULL,
  `serabi` int(11) NOT NULL,
  `gudeg` int(11) NOT NULL,
  `rujak` int(11) NOT NULL,
  `betutu` int(11) NOT NULL,
  `soto` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `total` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `waktu_transaksi` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `mie`, `bika`, `rendang`, `pempek`, `kerak_telor`, `serabi`, `gudeg`, `rujak`, `betutu`, `soto`, `status`, `total`, `tanggal_transaksi`, `waktu_transaksi`) VALUES
(1, 0, 0, 0, 11, 0, 0, 0, 11, 3, 3, 'Selesai', 0, '0000-00-00', '00:00:00'),
(2, 1, 0, 0, 0, 0, 0, 0, 0, 2, 3, 'Selesai', 0, '0000-00-00', '00:00:00'),
(3, 0, 0, 0, 1, 0, 0, 0, 0, 5, 6, 'Selesai', 0, '0000-00-00', '00:00:00'),
(4, 1, 0, 0, 0, 0, 0, 0, 0, 2, 1, 'Selesai', 0, '0000-00-00', '00:00:00'),
(5, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 'Selesai', 0, '0000-00-00', '00:00:00'),
(6, 0, 0, 1, 0, 0, 0, 0, 0, 3, 1, 'Selesai', 0, '0000-00-00', '00:00:00'),
(7, 0, 1, 0, 0, 0, 0, 1, 1, 5, 0, 'Selesai', 0, '0000-00-00', '00:00:00'),
(8, 0, 1, 0, 0, 0, 0, 0, 0, 9, 0, 'Selesai', 0, '0000-00-00', '00:00:00'),
(9, 0, 0, 0, 0, 0, 0, 0, 3, 0, 13, 'Selesai', 0, '0000-00-00', '00:00:00'),
(10, 0, 0, 0, 1, 0, 1, 1, 1, 12, 2, 'Selesai', 0, '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `level` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`, `level`) VALUES
('kasir', 'kasir', 1),
('chef', 'chef', 2),
('admin', '$2y$10$Ke.Zbhn4Hrzg41Rj0mw1p.URYLBKtb0O1cICsMn.LfY', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
