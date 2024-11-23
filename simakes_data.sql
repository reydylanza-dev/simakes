-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jul 2022 pada 09.13
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simakes_data`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kunjungan`
--

CREATE TABLE `data_kunjungan` (
  `idkunjungan` int(11) NOT NULL,
  `keluhan` varchar(100) NOT NULL,
  `tanggalkunjungan` varchar(20) NOT NULL,
  `nik` varchar(11) NOT NULL,
  `iddokter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_kunjungan`
--

INSERT INTO `data_kunjungan` (`idkunjungan`, `keluhan`, `tanggalkunjungan`, `nik`, `iddokter`) VALUES
(2, 'gaerwgrhtth', '17-02-2022', '3462364526', 123);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pasien`
--

CREATE TABLE `data_pasien` (
  `nik` varchar(11) NOT NULL,
  `namapasien` varchar(50) NOT NULL,
  `jeniskelamin` varchar(10) NOT NULL,
  `tempatlahir` varchar(50) NOT NULL,
  `tanggallahir` varchar(20) NOT NULL,
  `usia` varchar(3) NOT NULL,
  `goldar` varchar(2) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_pasien`
--

INSERT INTO `data_pasien` (`nik`, `namapasien`, `jeniskelamin`, `tempatlahir`, `tanggallahir`, `usia`, `goldar`, `alamat`) VALUES
('12345678910', 'Muhammad Firmansyah', 'Pria', 'Sumenep', '06-02-2002', '20', 'B', 'gesdfsBGDIVUHBVFRWS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter_credentials`
--

CREATE TABLE `dokter_credentials` (
  `userdkt` varchar(10) NOT NULL,
  `passdkt` varchar(10) NOT NULL,
  `iddokter` int(11) NOT NULL,
  `namadokter` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dokter_credentials`
--

INSERT INTO `dokter_credentials` (`userdkt`, `passdkt`, `iddokter`, `namadokter`) VALUES
('admin', 'dokter1', 123, 'dokter irawan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perawat_credentials`
--

CREATE TABLE `perawat_credentials` (
  `idcredentprt` int(11) NOT NULL,
  `userprt` varchar(10) NOT NULL,
  `passprt` varchar(10) NOT NULL,
  `idpegawai` int(11) NOT NULL,
  `namapegawai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `perawat_credentials`
--

INSERT INTO `perawat_credentials` (`idcredentprt`, `userprt`, `passprt`, `idpegawai`, `namapegawai`) VALUES
(11232142, 'admin', 'perawat1', 112, 'siti nurkholis');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_kunjungan`
--
ALTER TABLE `data_kunjungan`
  ADD PRIMARY KEY (`idkunjungan`);

--
-- Indeks untuk tabel `data_pasien`
--
ALTER TABLE `data_pasien`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `dokter_credentials`
--
ALTER TABLE `dokter_credentials`
  ADD PRIMARY KEY (`iddokter`);

--
-- Indeks untuk tabel `perawat_credentials`
--
ALTER TABLE `perawat_credentials`
  ADD PRIMARY KEY (`idcredentprt`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
