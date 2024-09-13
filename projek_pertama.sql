-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 13 Sep 2024 pada 04.37
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projek_pertama`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `nip` varchar(18) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(8) NOT NULL,
  `level` enum('Operator','Koordinator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`nip`, `nama`, `jenis_kelamin`, `username`, `password`, `level`) VALUES
('098765432123456789', 'Khofifah Ainurrohmah', 'perempuan', 'Khofifah', 'ainun123', 'Operator'),
('123456789098765432', 'Lyadionic Harington', 'perempuan', 'Lyadionic', 'lya123', 'Koordinator'),
('245167893267890123', 'kaila', 'perempuan', 'mimin', 'mimin123', 'Koordinator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id_barang_masuk` varchar(7) NOT NULL,
  `no_inventori` varchar(8) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `jenis_barang` varchar(30) NOT NULL,
  `qty` int NOT NULL,
  `masa_pakai` date NOT NULL,
  `status` varchar(9) NOT NULL,
  `tanggal` date NOT NULL,
  `lokasi_barang` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `barang_masuk`
--

INSERT INTO `barang_masuk` (`id_barang_masuk`, `no_inventori`, `nama_barang`, `jenis_barang`, `qty`, `masa_pakai`, `status`, `tanggal`, `lokasi_barang`) VALUES
('GD00001', 'INV00001', 'Kemeja', 'Asesoris', 10, '2024-08-30', 'Nonaktif', '2024-08-30', 'Gudang'),
('GD00002', 'INV00002', 'Laptop', 'Elektronik', 5, '2024-09-02', 'Nonaktif', '2024-08-30', 'Gudang'),
('GD00003', 'INV00003', 'Novel', 'ATK', 10, '2024-08-30', 'Nonaktif', '2024-08-30', 'Gudang'),
('GD00004', 'INV00004', 'Kemeja', 'Alat', 17, '2024-09-04', 'Nonaktif', '2024-08-31', 'Gudang'),
('GD00005', 'INV00005', 'Laptop', 'Elektronik', 50, '2024-09-04', 'Nonaktif', '2024-08-31', 'Gudang'),
('GD00006', 'INV00006', 'Laptop', 'Elektronik', 18, '2024-09-03', 'Nonaktif', '2024-09-02', 'Gudang'),
('GD00007', 'INV00007', 'Novel', 'ATK', 5, '2024-09-02', 'Nonaktif', '2024-09-02', 'Gudang'),
('GD00008', 'INV00008', 'PC', 'Elektronik', 5, '2024-09-18', 'Aktif', '2024-09-02', 'Gudang'),
('GD00009', 'INV00009', 'Mouse', 'Elektronik', 8, '2024-10-12', 'Aktif', '2024-09-03', 'Gudang'),
('GD00010', 'INV00010', 'Kemeja', 'Alat', 0, '2024-09-12', 'Aktif', '2024-09-04', 'Gudang'),
('GD00011', 'INV00011', 'Kemeja', 'Alat', 10, '2024-09-04', 'Nonaktif', '2024-09-04', 'Gudang'),
('GD00012', 'INV00012', 'Kemeja', 'Alat', 10, '2024-09-03', 'Nonaktif', '2024-09-04', 'Gudang'),
('GD00013', 'INV00013', 'Kemeja', 'Alat', 1, '2024-09-01', 'Nonaktif', '2024-09-04', 'Gudang'),
('GD00014', 'INV00014', 'Kemeja', 'Alat', 1, '2024-09-04', 'Nonaktif', '2024-09-04', 'Gudang'),
('GD00015', 'INV00015', 'Keyboard', 'Elektronik', 15, '2024-09-07', 'Nonaktif', '2024-09-05', 'Gudang'),
('GD00016', 'INV00016', 'PC', 'Elektronik', 10, '2024-09-13', 'Aktif', '2024-09-09', 'Gudang'),
('GD00017', 'INV00017', 'Mouse', 'Elektronik', 10, '2024-09-09', 'Nonaktif', '2024-09-09', 'Gudang'),
('GD00018', 'INV00018', 'Buku', 'ATK', 12, '2024-09-11', 'Aktif', '2024-09-09', 'Gudang'),
('GD00019', 'INV00019', 'Keyboard', 'Elektronik', 50, '2024-09-10', 'Aktif', '2024-09-09', 'Gudang'),
('GD00020', 'INV00020', 'Sepatu', 'Olahraga', 25, '2024-09-12', 'Aktif', '2024-09-09', 'Gudang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_barang`
--

CREATE TABLE `jenis_barang` (
  `jenis_barang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jenis_barang`
--

INSERT INTO `jenis_barang` (`jenis_barang`) VALUES
('Alat'),
('Asesoris'),
('ATK'),
('Bangunan'),
('Elektronik'),
('Jenis 3'),
('Jensi 2'),
('Kecantikan'),
('Olahraga'),
('Otomotif'),
('P3K');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi_barang`
--

CREATE TABLE `lokasi_barang` (
  `lokasi_barang` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `lokasi_barang`
--

INSERT INTO `lokasi_barang` (`lokasi_barang`) VALUES
('Koperasi'),
('Ruang BK'),
('Ruang Guru'),
('Ruang Kepala Sekolah'),
('UKS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nama_barang`
--

CREATE TABLE `nama_barang` (
  `nama_barang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `nama_barang`
--

INSERT INTO `nama_barang` (`nama_barang`) VALUES
('Barang 2'),
('Buku'),
('Hp'),
('Kemeja'),
('Kerudung'),
('Keyboard'),
('Laptop'),
('Mouse'),
('Nama 1'),
('Novel'),
('PC'),
('Sepatu'),
('Tanah'),
('Udara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemakaian`
--

CREATE TABLE `pemakaian` (
  `id_pemakaian` varchar(7) NOT NULL,
  `no_inventori` varchar(8) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `jenis_barang` varchar(30) NOT NULL,
  `jumlah` int NOT NULL,
  `masa_pakai` date DEFAULT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(9) NOT NULL,
  `lokasi_barang` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `pemakaian`
--

INSERT INTO `pemakaian` (`id_pemakaian`, `no_inventori`, `nama_barang`, `jenis_barang`, `jumlah`, `masa_pakai`, `tanggal`, `status`, `lokasi_barang`) VALUES
('PK00001', 'INV00004', 'Kemeja', 'Alat', 3, '2024-09-04', '2024-09-02', 'Nonaktif', 'UKS'),
('PK00002', 'INV00007', 'Novel', 'ATK', 10, '2024-09-02', '2024-09-02', 'Nonaktif', 'Ruang BK'),
('PK00003', 'INV00006', 'Laptop', 'Elektronik', 2, '2024-09-03', '2024-09-03', 'Nonaktif', 'Ruang BK'),
('PK00004', 'INV00009', 'Mouse', 'Elektronik', 10, '2024-10-12', '2024-09-03', 'Aktif', 'Ruang BK'),
('PK00005', 'INV00015', 'Keyboard', 'Elektronik', 5, '2024-09-07', '2024-09-05', 'Nonaktif', 'UKS'),
('PK00006', 'INV00010', 'Kemeja', 'Alat', 2, '2024-09-12', '2024-09-09', 'Aktif', 'UKS'),
('PK00007', 'INV00009', 'Mouse', 'Elektronik', 2, '2024-10-12', '2024-09-09', 'Aktif', 'Ruang BK'),
('PK00008', 'INV00008', 'PC', 'Elektronik', 20, '2024-09-18', '2024-09-11', 'Aktif', 'Ruang Guru');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`no_inventori`),
  ADD KEY `nama_barang` (`nama_barang`,`jenis_barang`),
  ADD KEY `jenis_barang` (`jenis_barang`),
  ADD KEY `masa_pakai` (`masa_pakai`);

--
-- Indeks untuk tabel `jenis_barang`
--
ALTER TABLE `jenis_barang`
  ADD PRIMARY KEY (`jenis_barang`);

--
-- Indeks untuk tabel `lokasi_barang`
--
ALTER TABLE `lokasi_barang`
  ADD PRIMARY KEY (`lokasi_barang`);

--
-- Indeks untuk tabel `nama_barang`
--
ALTER TABLE `nama_barang`
  ADD PRIMARY KEY (`nama_barang`);

--
-- Indeks untuk tabel `pemakaian`
--
ALTER TABLE `pemakaian`
  ADD PRIMARY KEY (`id_pemakaian`),
  ADD KEY `nama_barang` (`nama_barang`,`jenis_barang`),
  ADD KEY `no_inventori` (`no_inventori`) USING BTREE,
  ADD KEY `masa_pakai` (`masa_pakai`),
  ADD KEY `jenis_barang` (`jenis_barang`),
  ADD KEY `lokasi_barang` (`lokasi_barang`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD CONSTRAINT `barang_masuk_ibfk_1` FOREIGN KEY (`nama_barang`) REFERENCES `nama_barang` (`nama_barang`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_masuk_ibfk_2` FOREIGN KEY (`jenis_barang`) REFERENCES `jenis_barang` (`jenis_barang`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemakaian`
--
ALTER TABLE `pemakaian`
  ADD CONSTRAINT `pemakaian_ibfk_1` FOREIGN KEY (`no_inventori`) REFERENCES `barang_masuk` (`no_inventori`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pemakaian_ibfk_2` FOREIGN KEY (`nama_barang`) REFERENCES `barang_masuk` (`nama_barang`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pemakaian_ibfk_3` FOREIGN KEY (`jenis_barang`) REFERENCES `barang_masuk` (`jenis_barang`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pemakaian_ibfk_4` FOREIGN KEY (`masa_pakai`) REFERENCES `barang_masuk` (`masa_pakai`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pemakaian_ibfk_5` FOREIGN KEY (`lokasi_barang`) REFERENCES `lokasi_barang` (`lokasi_barang`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
