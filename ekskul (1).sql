-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2024 pada 07.00
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ekskul`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `adminemail` varchar(50) NOT NULL,
  `adminpassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`adminid`, `adminemail`, `adminpassword`) VALUES
(4, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` varchar(255) NOT NULL,
  `nama_artikel` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `nama_artikel`, `deskripsi`, `tanggal`) VALUES
('artikel-01', 'Fasd', 'fas', '2024-05-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ekstrakurikuler`
--

CREATE TABLE `ekstrakurikuler` (
  `id_ekskul` varchar(11) NOT NULL,
  `nama_ekskul` varchar(50) NOT NULL,
  `pembina` varchar(50) NOT NULL,
  `no_pembina` varchar(15) DEFAULT NULL,
  `guru_pembina` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ekstrakurikuler`
--

INSERT INTO `ekstrakurikuler` (`id_ekskul`, `nama_ekskul`, `pembina`, `no_pembina`, `guru_pembina`) VALUES
('ekskul-01', '', '', '', ''),
('ekskul-02', 'Paskibra', 'Chandra Widayetno', '085309876543', ''),
('ekskul-03', 'Palang Merah Remaja', 'Sri Agustin', '082234565478', ''),
('ekskul-04', 'Olahraga', 'Toni Bakhrie', '082134567489', ''),
('ekskul-05', 'Pencak Silat', 'Fadli', '082234567898', ''),
('ekskul-06', 'Kesenian', 'Wahyuni', '085345678665', ''),
('ekskul-07', '', '', '', ''),
('ekskul-08', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id_informasi` varchar(110) NOT NULL,
  `nama_informasi` varchar(255) NOT NULL,
  `id_ekskul` varchar(110) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id_informasi`, `nama_informasi`, `id_ekskul`, `deskripsi`) VALUES
('informasi-01', 'Test 1', 'ekskul-04', 'fdas'),
('informasi-02', 'Test 1', 'ekskul-04', 'fdas'),
('informasi-03', 'Fads', 'ekskul-03', 'fdsa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` varchar(255) NOT NULL,
  `nama_jadwal` varchar(255) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `tanggal` date NOT NULL,
  `id_ekskul` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `nama_jadwal`, `jam_mulai`, `jam_selesai`, `tanggal`, `id_ekskul`) VALUES
('jadwal-01', 'fads', '21:57:00', '00:59:00', '2024-06-01', 'ekskul-02'),
('jadwal-02', 'fadsdsfafasd', '14:56:00', '18:56:00', '2024-06-12', 'ekskul-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prestasi`
--

CREATE TABLE `prestasi` (
  `id_prestasi` varchar(255) NOT NULL,
  `nama_prestasi` varchar(255) NOT NULL,
  `id_ekskul` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `prestasi`
--

INSERT INTO `prestasi` (`id_prestasi`, `nama_prestasi`, `id_ekskul`) VALUES
('prestasi-01', 'Fdas', 'ekskul-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `progress`
--

CREATE TABLE `progress` (
  `id_progress` varchar(110) NOT NULL,
  `nama_progress` varchar(255) NOT NULL,
  `id_ekskul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `progress`
--

INSERT INTO `progress` (`id_progress`, `nama_progress`, `id_ekskul`, `deskripsi`, `tanggal`) VALUES
('progress-01', 'Afsds', 'ekskul-03', 'afsd', '2024-05-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `nisn` varchar(20) DEFAULT NULL,
  `hobi` varchar(50) DEFAULT NULL,
  `namalengkap` varchar(100) DEFAULT NULL,
  `jeniskelamin` varchar(10) DEFAULT NULL,
  `kelas` varchar(20) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `ekskul` varchar(11) NOT NULL,
  `pengalaman` text DEFAULT NULL,
  `sertifikat` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `tglkonfirmasi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `userid`, `nisn`, `hobi`, `namalengkap`, `jeniskelamin`, `kelas`, `telepon`, `ekskul`, `pengalaman`, `sertifikat`, `status`, `tglkonfirmasi`) VALUES
(14, 25, '22076118', 'Memasak', 'Hanifah', 'P', 'IX', '0878645334345', 'ekskul-03', 'PMR II', 'images/sertifikat/sertifikat_22076118.jpg', 'Verified', '2023-12-28'),
(15, 31, '22076111', 'Makan', 'Ujang Fernandes', 'L', 'IX', '084512456325', 'ekskul-04', 'asd', 'images/sertifikat/sertifikat_22076111.jpg', NULL, NULL),
(16, 32, '22076112', 'Minum', 'Ucup Alinski', 'L', 'VIII', '0874521542365', 'ekskul-05', 'Minum', 'images/sertifikat/sertifikat_22076112.png', 'Verified', '2024-04-02'),
(17, 33, '22076113', 'tidur', 'rita', 'P', 'VII', '084512546589', 'ekskul-02', 'asdasf', 'images/sertifikat/sertifikat_22076113.png', 'Verified', '2024-04-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `userpassword` varchar(50) NOT NULL,
  `tgldaftar` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userid`, `useremail`, `userpassword`, `tgldaftar`) VALUES
(25, 'hanifah@gmail.com', 'hanifah', '2023-12-26 19:38:45'),
(31, 'ujang@gmail.com', '123', '2024-04-02 16:22:39'),
(32, 'ucup@gmail.com', '123', '2024-04-02 16:25:00'),
(33, 'fatim@gmail.com', '123', '2024-04-02 16:30:16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indeks untuk tabel `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  ADD PRIMARY KEY (`id_ekskul`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD KEY `id_ekskul` (`id_ekskul`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_ekskul` (`id_ekskul`);

--
-- Indeks untuk tabel `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id_prestasi`),
  ADD KEY `id_ekskul` (`id_ekskul`);

--
-- Indeks untuk tabel `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`id_progress`),
  ADD KEY `id_ekskul` (`id_ekskul`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `foreign_key` (`ekskul`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD CONSTRAINT `informasi_ibfk_1` FOREIGN KEY (`id_ekskul`) REFERENCES `ekstrakurikuler` (`id_ekskul`);

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`id_ekskul`) REFERENCES `ekstrakurikuler` (`id_ekskul`);

--
-- Ketidakleluasaan untuk tabel `prestasi`
--
ALTER TABLE `prestasi`
  ADD CONSTRAINT `prestasi_ibfk_1` FOREIGN KEY (`id_ekskul`) REFERENCES `ekstrakurikuler` (`id_ekskul`);

--
-- Ketidakleluasaan untuk tabel `progress`
--
ALTER TABLE `progress`
  ADD CONSTRAINT `progress_ibfk_1` FOREIGN KEY (`id_ekskul`) REFERENCES `ekstrakurikuler` (`id_ekskul`);

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`ekskul`) REFERENCES `ekstrakurikuler` (`id_ekskul`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
