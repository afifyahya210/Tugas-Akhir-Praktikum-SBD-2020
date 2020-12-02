-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Des 2020 pada 14.20
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes_sbd`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'afif', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'yahya', 'b56776aa98086825550ff0c3fe260907');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alumni`
--

CREATE TABLE `alumni` (
  `nim` varchar(30) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `nomor_hp` varchar(20) NOT NULL,
  `tahun_masuk` varchar(4) NOT NULL,
  `tahun_lulus` varchar(4) NOT NULL,
  `id_jurusan` int(3) NOT NULL,
  `id_admin` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alumni`
--

INSERT INTO `alumni` (`nim`, `nama`, `alamat`, `nomor_hp`, `tahun_masuk`, `tahun_lulus`, `id_jurusan`, `id_admin`) VALUES
('21020113120066', 'ANASTASIA CHANDRA LA', 'Padang Sidimpuan', '85242376058', '2013', '2018', 302, '1'),
('21020113140112', 'FIRSYA DIFTINANDA', 'Pati', '85242376070', '2013', '2018', 302, '1'),
('21030111120027', 'TEGAR FAUZIYYAH PERM', 'Bogor', '85242376076', '2011', '2018', 303, '1'),
('21030112130084', 'MUHAMMAD DZIKRI HANI', 'Bekasi', '85242376077', '2012', '2018', 303, '1'),
('21040113120014', 'GILANG RIZKI RAMADHA', 'Padang Sidimpuan', '85242376199', '2013', '2018', 304, '1'),
('21040113120015', 'FANNY SIMANJUNTAK', 'Tarutung', '85242376200', '2013', '2018', 304, '1'),
('21040113130079', 'MUHAMMAD AUSTIN A', 'Semarang', '85242376220', '2013', '2018', 304, '1'),
('21120113130066', 'SATRIAJATI ARDHENTA', 'Probolinggo', '85242376410', '2013', '2018', 312, '1'),
('21120113130068', 'DUTA ADICAHYA DARMAW', 'Surabaya', '85242376411', '2013', '2018', 312, '1'),
('21120113130077', 'TRI SETYO OKDIYANTO', 'Denpasar', '85242376412', '2013', '2018', 312, '1'),
('2112011718911', 'EKKI FEBRI TRIANTO', 'aceh', '85242376008', '2012', '2018', 312, '1');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `dbalumni`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `dbalumni` (
`nim` varchar(30)
,`nama` varchar(20)
,`alamat` varchar(20)
,`nomor_hp` varchar(20)
,`tahun_masuk` varchar(4)
,`tahun_lulus` varchar(4)
,`nama_jurusan` varchar(255)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(3) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL,
  `akreditasi` varchar(20) NOT NULL,
  `no_telp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`, `akreditasi`, `no_telp`) VALUES
(301, 'Teknik Sipil', 'A', '024 - 7460067'),
(302, 'Arsitektur', 'A', '024 - 7460042'),
(303, 'Teknik Kimia', 'A', '024 - 7460897'),
(304, 'PWK', 'A', '024 - 7460074'),
(305, 'Teknik Mesin', 'A', '024 - 7460153'),
(306, 'Teknik Elektro', 'A', '024 - 7460536'),
(307, 'Teknik Industri', 'A', '024 - 7460062'),
(308, 'Teknik Lingkungan', 'A', '024 - 7460087'),
(309, 'Teknik Perkapalan', 'A', '024 - 7460008'),
(310, 'Teknik Geologi', 'A', '024 - 7460059'),
(311, 'Teknik Geodesi', 'B', '024 - 7460051'),
(312, 'Sistem Komputer', 'B', '024 - 7460100');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun`
--

CREATE TABLE `tahun` (
  `tahun_masuk` char(4) NOT NULL,
  `tahun_lulus` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tahun`
--

INSERT INTO `tahun` (`tahun_masuk`, `tahun_lulus`) VALUES
('1987', '1987'),
('1988', '1988'),
('1989', '1989'),
('1990', '1990'),
('1991', '1991'),
('1992', '1992'),
('1993', '1993'),
('1994', '1994'),
('1995', '1995'),
('1996', '1996'),
('1997', '1997'),
('1998', '1998'),
('1999', '1999'),
('2000', '2000'),
('2001', '2001'),
('2002', '2002'),
('2003', '2003'),
('2004', '2004'),
('2005', '2005'),
('2006', '2006'),
('2007', '2007'),
('2008', '2008'),
('2009', '2009'),
('2010', '2010'),
('2011', '2011'),
('2012', '2012'),
('2013', '2013'),
('2014', '2014'),
('2015', '2015'),
('2016', '2016'),
('2017', '2017'),
('2018', '2018');

-- --------------------------------------------------------

--
-- Struktur untuk view `dbalumni`
--
DROP TABLE IF EXISTS `dbalumni`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dbalumni`  AS  select `a`.`nim` AS `nim`,`a`.`nama` AS `nama`,`a`.`alamat` AS `alamat`,`a`.`nomor_hp` AS `nomor_hp`,`a`.`tahun_masuk` AS `tahun_masuk`,`a`.`tahun_lulus` AS `tahun_lulus`,`j`.`nama_jurusan` AS `nama_jurusan` from (`alumni` `a` left join `jurusan` `j` on(`a`.`id_jurusan` = `j`.`id_jurusan`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `tahun`
--
ALTER TABLE `tahun`
  ADD PRIMARY KEY (`tahun_masuk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `alumni`
--
ALTER TABLE `alumni`
  ADD CONSTRAINT `alumni_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
