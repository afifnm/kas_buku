-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 23, 2024 at 07:25 AM
-- Server version: 8.0.39-cll-lve
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smkm1543_kas`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL,
  `kategori` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(12, 'Jalan Sehat 2022'),
(15, 'Khas Umum'),
(18, 'jalan sehat 2023'),
(19, 'pengelolaan uang proposal'),
(20, 'Dekorasi dan Sound');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `phone` varchar(100) NOT NULL,
  `norek` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `saldo` decimal(15,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id`, `nama`, `email`, `alamat`, `phone`, `norek`, `logo`, `judul`, `saldo`) VALUES
(1, 'SMK Pembangunan Nasional Sukoharjo', 'gagedesignsolo@gmail.com', 'Jln. Monginsidi III/6, Margorejo, Solo', '(0271) 654038', 'BCA : Bambang Nugroho No Rek. 015 318 899', 'logo.png', 'Aplikasi Keuangan', 30000000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int NOT NULL,
  `kode` varchar(200) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` decimal(15,0) NOT NULL,
  `id_kategori` varchar(200) NOT NULL,
  `transaksi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `kode`, `keterangan`, `tanggal`, `nominal`, `id_kategori`, `transaksi`) VALUES
(32, '', 'Dana proposal', '2022-08-23', 1000000, '12', 'Pemasukan'),
(33, '', 'Konsumsi kerja bakti panjat pinang dan BBM mesin potong', '2022-08-29', 100000, '12', 'Pengeluaran'),
(34, '', 'Dana proposal', '2022-08-24', 1507000, '12', 'Pemasukan'),
(35, '', 'Pembelian hadiah doorprize dan panjat pinang', '2022-08-29', 1500000, '12', 'Pengeluaran'),
(36, '', 'Dana proposal dari bu viska', '2022-08-29', 500000, '12', 'Pemasukan'),
(37, '', 'Pembelian hadiah utama jalan sehat', '2022-08-31', 2000000, '12', 'Pengeluaran'),
(38, '', 'Dana proposal dari pt arah', '2022-08-29', 150000, '12', 'Pemasukan'),
(39, '', 'Pembelian pring', '2022-08-31', 100000, '12', 'Pengeluaran'),
(40, '', 'Dana proposal dari rt 1', '2022-08-30', 800000, '12', 'Pemasukan'),
(41, '', 'Konsumsi rapat', '2022-08-31', 50000, '12', 'Pengeluaran'),
(42, '', 'Proposal dari perta shop', '2022-08-31', 500000, '12', 'Pemasukan'),
(43, '', 'Pembelin konsumsi rapat', '2022-08-31', 120000, '12', 'Pengeluaran'),
(45, '', 'Proposal dari rt 2 ', '2022-08-31', 1000000, '12', 'Pemasukan'),
(46, '', 'Proposal dari pemuda- pemudi rt 2', '2022-08-31', 370000, '12', 'Pemasukan'),
(48, '', 'Proposal iuran warga rt 1', '2022-08-31', 50000, '12', 'Pemasukan'),
(49, '', 'Konsumsi crew + snack jalan sehat + rokok ', '2022-09-01', 2700000, '12', 'Pengeluaran'),
(50, '', 'Proposal rt 3', '2022-08-31', 1065000, '12', 'Pemasukan'),
(51, '', 'Proposal muda mudi rt 3', '2022-08-31', 420000, '12', 'Pemasukan'),
(52, '', 'Proposal dari dewangga rt 3', '2022-08-31', 200000, '12', 'Pemasukan'),
(53, '', 'Hadiah kostum terbaik', '2022-09-01', 400000, '12', 'Pengeluaran'),
(54, '', 'Cetak mmt dan cetak tiket jalan sehat', '2022-09-01', 520000, '12', 'Pengeluaran'),
(55, '', 'Proposal dari Pamsimas', '2022-09-03', 200000, '12', 'Pemasukan'),
(56, '', 'Dana proposal dari Mul Herbal', '2022-09-03', 500000, '12', 'Pemasukan'),
(57, '', 'Iuran rt 1 ', '2022-09-03', 480000, '12', 'Pemasukan'),
(58, '', 'Pembelian oli dan vaselin', '2022-09-03', 200000, '12', 'Pengeluaran'),
(62, '', 'Pembelian konsumsi makan siang dan pembelian kertas ', '2022-09-03', 72000, '12', 'Pengeluaran'),
(63, '', 'Pembelian konsumsi makan malam', '2022-09-03', 220000, '12', 'Pengeluaran'),
(64, '', 'Proposal dari pak lurah ', '2022-09-04', 1000000, '12', 'Pemasukan'),
(65, '', 'Pembelian Rokok', '2022-09-04', 200000, '12', 'Pengeluaran'),
(67, '', 'Pembelian konsumsi makan siang', '2022-09-04', 100000, '12', 'Pengeluaran'),
(68, '', 'Pembelian sabun dan sampo', '2022-09-04', 50000, '12', 'Pengeluaran'),
(69, '', 'Tambahan hadiah kostum ', '2022-09-04', 100000, '12', 'Pengeluaran'),
(70, '', 'Pembelian aqua 7 dus', '2022-09-04', 147000, '12', 'Pengeluaran'),
(71, '', 'Pembelian konsumsi makan siang dan Aqua ', '2022-09-04', 550000, '12', 'Pengeluaran'),
(72, '', 'Pembelian konsumsi hari Sabtu malam', '2022-09-04', 200000, '12', 'Pengeluaran'),
(73, '', 'Tambahan hadiah bendera panjat pinang ', '2022-09-04', 100000, '12', 'Pengeluaran'),
(74, '', 'Beli es batu dan amplop', '2022-09-08', 6000, '12', 'Pengeluaran'),
(75, '', 'Untuk Mbah Tinah', '2022-09-08', 100000, '12', 'Pengeluaran'),
(76, '', 'Untuk mas Rosidi ', '2022-09-08', 70000, '12', 'Pengeluaran'),
(77, '', 'Konsumsi pembongkaran panggung ', '2022-09-08', 100000, '12', 'Pengeluaran'),
(78, '', 'Uang sisa konsumsi ', '2022-09-08', 4000, '12', 'Pemasukan'),
(79, '', 'Uang Tiket RT 01', '2022-09-08', 2260000, '12', 'Pemasukan'),
(80, '', 'Uang Tiket RT 02', '2022-09-08', 2380000, '12', 'Pemasukan'),
(81, '', 'Uang Tiket RT 03', '2022-09-08', 1850000, '12', 'Pemasukan'),
(82, '', 'Sewa panggung dan konsumsi crew', '2022-09-08', 1500000, '12', 'Pengeluaran'),
(83, '', 'Sewa Sound sistem ', '2022-09-08', 1000000, '12', 'Pengeluaran'),
(85, '', 'Konsumsi rapat hari Kamis tanggal 8', '2022-09-08', 160000, '12', 'Pengeluaran'),
(86, '', 'Pembelian Hadiah Lomba 17 Agustus  dan konsumsi ', '2022-09-08', 1100000, '12', 'Pengeluaran'),
(88, '', 'Pembelian kursi Nikita ', '2022-09-08', 150000, '12', 'Pengeluaran'),
(89, '', 'Pindah Saldo ke Khas Umum', '2022-10-05', 2621000, '12', 'Pengeluaran'),
(90, '', 'Pemasukan dari Jalan Sehat 2022', '2022-10-05', 2621000, '15', 'Pemasukan'),
(91, '', 'Kerja Bakti Sound', '2022-10-02', 100000, '15', 'Pengeluaran'),
(95, '', 'Pembelian snak rapat rutin karangtaruna ', '2022-10-14', 75700, '15', 'Pengeluaran'),
(96, '', '	Kenang-kenangan (lepas bujang) 8 orang', '2022-10-14', 200000, '15', 'Pengeluaran'),
(97, '', 'Penyerahan kas periode sebelumnya 2019 2021', '2022-10-28', 10874000, '15', 'Pemasukan'),
(98, '', 'Bantuan bp. Wahyu', '2022-11-11', 3000000, '15', 'Pemasukan'),
(106, '', 'pemasukan uang jalan sehat', '2023-10-09', 32243000, '18', 'Pemasukan'),
(107, '', 'pengeluaran jalan sehat', '2023-10-09', 32479000, '18', 'Pengeluaran'),
(109, '', 'pembuatan kalender', '2023-10-09', 1560000, '15', 'Pengeluaran'),
(110, '', 'pemasukan pembuatan kalender', '2023-02-08', 1680000, '15', 'Pemasukan'),
(111, '', 'pengeluaran untuk dekor', '2023-02-25', 10851000, '15', 'Pengeluaran'),
(112, '', 'pengeluaran beli bahan renovasi gudang', '2023-06-20', 1550000, '15', 'Pengeluaran'),
(113, '', 'bayar jasa tukang', '2023-07-10', 600000, '15', 'Pengeluaran'),
(114, '', 'konsumsi kerja bakti lapangan dll', '2023-07-23', 500000, '15', 'Pengeluaran'),
(115, '', 'konsumsi rapat panitia sepak bola', '2023-07-23', 30000, '15', 'Pengeluaran'),
(116, '', 'nyuci kain dekor', '2023-09-20', 350000, '15', 'Pengeluaran'),
(117, '', 'uang proposal kelurahan', '2023-12-20', 8300000, '15', 'Pemasukan'),
(118, '', 'pemindahan uang kas umum ke uang kas dekor dan sound', '2023-12-30', 8300000, '15', 'Pengeluaran'),
(181, '', 'uang proposal kelurahan', '2023-12-20', 8300000, '19', 'Pemasukan'),
(182, '', 'beli speaker bnc (dewi murni) spul,rcf,spon,gelang mik,trackbel/tali', '2023-12-30', 6550000, '19', 'Pengeluaran'),
(183, '', 'beli baut, plat spikon, kabel, emblem asley, volt jarum, jack hp', '2024-01-03', 400000, '19', 'Pengeluaran'),
(184, '', 'biaya bersih lapangan bpk marsono cedes', '2023-12-17', 300000, '19', 'Pengeluaran'),
(185, '', 'tukar tambah speaker asley di klitikan', '2024-01-12', 850000, '19', 'Pengeluaran'),
(187, '', 'uang transpot 3 hari', '2024-01-03', 200000, '19', 'Pengeluaran'),
(197, '', 'sewa dekor new sdr lukman derso', '2023-04-01', 1000000, '20', 'Pemasukan'),
(198, '', 'operasional pasang dekor sdr lukman derso', '2023-04-01', 450000, '20', 'Pengeluaran'),
(199, '', 'pengecatan box sound', '2023-04-01', 550000, '20', 'Pengeluaran'),
(200, '', 'jasa  dekor (lama) sdr fhais', '2023-03-17', 500000, '20', 'Pemasukan'),
(201, '', 'operasional pasang dekor sdr fhais', '2023-03-17', 150000, '20', 'Pengeluaran'),
(202, '', 'cuci kain dekor', '2023-03-17', 350000, '20', 'Pengeluaran'),
(203, '', 'sewa dekor lama dan sound sdri oktavia RT 2', '2022-11-24', 1500000, '20', 'Pemasukan'),
(204, '', 'bayar jasa (crew) , sewa ,motor,beli solar', '2022-11-24', 850000, '20', 'Pengeluaran'),
(205, '', 'sewa sound dan dekor sdr taufiq RT 1', '2023-03-06', 2000000, '20', 'Pemasukan'),
(206, '', 'operasional (jasa crew dll)', '2023-03-06', 800000, '20', 'Pengeluaran'),
(207, '', 'sewa dekor dan sound sdr supri', '2023-10-19', 1700000, '20', 'Pemasukan'),
(208, '', 'operasional,spull dan service sound', '2023-10-19', 800000, '20', 'Pengeluaran'),
(209, '', 'sewa dekor baru sdr aziz', '2023-05-19', 1500000, '20', 'Pemasukan'),
(210, '', 'operasional (jasa,pilox dan pesan nama) sdr aziz', '2023-05-19', 700000, '20', 'Pengeluaran'),
(211, '', 'pembelian kabel mic,jak input badong', '2023-05-19', 800000, '20', 'Pengeluaran'),
(212, '', 'sewa dekor baru dan sound', '2023-05-21', 2500000, '20', 'Pemasukan'),
(213, '', 'operasional (pesan nama,crew,solar,mobil) sdr widya', '2023-05-21', 1200000, '20', 'Pengeluaran'),
(214, '', 'beli bor listrik,pukul,plastik,box bunga dan bensin', '2023-05-23', 1300000, '20', 'Pengeluaran'),
(215, '', 'sewa sound sdri Novi RT 2', '2023-06-17', 1200000, '20', 'Pemasukan'),
(216, '', 'operasional (jasa crew,solar dll) sdri Novi', '2023-06-17', 600000, '20', 'Pengeluaran'),
(217, '', 'beli equalizer sound', '2023-06-17', 1550000, '20', 'Pengeluaran'),
(218, '', 'sewa dekor bpk Temu RT 2', '2023-02-16', 500000, '20', 'Pemasukan'),
(219, '', 'operasional (jasa crew) bpk Temu RT 2 ', '2023-02-16', 300000, '20', 'Pengeluaran'),
(220, '', 'uang perantauan anak bpk Temu RT 2', '2023-02-16', 1000000, '20', 'Pemasukan'),
(221, '', 'beli spiker sound', '2023-05-06', 2600000, '20', 'Pengeluaran'),
(222, '', 'sewa sound dan dekor baru sdr Amir RT 2', '2023-07-02', 2700000, '20', 'Pemasukan'),
(223, '', 'operasional (jasa crew,solar,motor,stiker,pilox dan steples besar)', '2023-07-02', 1550000, '20', 'Pengeluaran'),
(224, '', 'service equalizer sound,sewa alat sound dan jasa sender bpk Tukiman RT 2', '2023-07-02', 850000, '20', 'Pengeluaran'),
(225, '', 'sewa dekor baru dan sound sdr edy RT 1', '2023-07-10', 2700000, '20', 'Pemasukan'),
(226, '', 'operasional (jasa crew,solar,sewa mobil)', '2023-07-10', 1550000, '20', 'Pengeluaran'),
(227, '', 'sewa dekor dan kursi sdr Tanto RT 3', '2023-07-12', 800000, '20', 'Pemasukan'),
(228, '', 'sewa dekorasi desa mranggen', '2023-10-14', 1500000, '20', 'Pemasukan'),
(229, '', 'operasional (jasa crew,transport dan keperluan dekor)', '2023-10-14', 700000, '20', 'Pengeluaran'),
(230, '', 'sewa kursi dekor sdr Tanto dan lelur', '2023-10-14', 350000, '20', 'Pemasukan'),
(231, '', 'operasional jasa crew sdr agus pur RT 2', '2023-12-11', 250000, '20', 'Pengeluaran'),
(232, '', 'beli kabel gudang,lampu dan jasa pemasangan', '2023-12-11', 250000, '20', 'Pengeluaran'),
(233, '', 'konsumsi bersih bersih gudang dan cek sound 3 hari', '2023-12-11', 400000, '20', 'Pengeluaran'),
(234, '', 'beli kardus,nota,jack dan baut', '2023-12-11', 100000, '20', 'Pengeluaran'),
(235, '', 'sewa dekor sdr Agus pur RT 2', '2023-12-12', 1200000, '20', 'Pemasukan'),
(236, '', 'penjualan mix lama', '2023-12-12', 500000, '20', 'Pemasukan'),
(237, '', 'uang tirakat ', '2023-12-12', 500000, '20', 'Pemasukan'),
(238, '', 'nyuci dekor', '2023-12-12', 300000, '20', 'Pengeluaran'),
(239, '', 'beli jack kabel sound', '2023-12-12', 90000, '20', 'Pengeluaran'),
(240, '', 'beli triplek  dan paku', '2023-12-12', 250000, '20', 'Pengeluaran'),
(241, '', 'jasa bongkar dekor sdr Agus pur RT 2', '2023-12-13', 150000, '20', 'Pengeluaran'),
(242, '', 'jasa pembuatan box sound 2 hari', '2023-12-13', 200000, '20', 'Pengeluaran'),
(243, '', 'service lampu', '2023-12-14', 100000, '20', 'Pengeluaran'),
(245, '', 'service power', '2023-12-14', 300000, '20', 'Pengeluaran'),
(246, '', 'service power cs 800 java', '2023-12-14', 300000, '20', 'Pengeluaran'),
(247, '', 'sewa lampu pengajian bp sriyono RT 1', '2024-03-02', 100000, '20', 'Pemasukan'),
(248, '', 'DP Batik KRT 2024', '2024-07-10', 2350000, '15', 'Pengeluaran'),
(249, '', 'lepas bujang sdr.nado', '2024-07-18', 500000, '15', 'Pemasukan'),
(251, '', 'piagam manten 3 orang', '2024-07-19', 100000, '15', 'Pengeluaran'),
(252, '', 'modal kegiatan 17 Agustus 2024', '2024-07-19', 1000000, '15', 'Pengeluaran'),
(253, '', 'uang perantauan RT 3', '2024-07-18', 800000, '15', 'Pemasukan'),
(254, '', 'lepas bujang sdr Fandi', '2024-07-18', 1000000, '15', 'Pemasukan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `level` varchar(50) NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `nama`, `password`, `level`, `last_login`) VALUES
(1, 'karangtaruna', 'Karang Taruna', '$2y$05$5YkxCpx/xPqfrTSDVhgqWe7vKVlzW3b38jjjNiawHiVikrMvy683O', 'Admin', '0000-00-00 00:00:00'),
(4, 'tiara', 'Mutiara', '$2y$05$ZPRgdKKvxbZteSqnFMrzS.ki/u4rr9QD2ZKynJ2pyLYzwai9iaZrO', 'Front Office', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
