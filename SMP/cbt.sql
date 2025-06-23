-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 17, 2023 at 04:36 AM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbt`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen_harian`
--

CREATE TABLE `absen_harian` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `level` varchar(20) DEFAULT 'siswa',
  `hadir` date DEFAULT NULL,
  `waktu` time DEFAULT NULL,
  `tahun` int DEFAULT NULL,
  `bulan` tinyint DEFAULT NULL,
  `hari` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `absen_harian`
--

INSERT INTO `absen_harian` (`id`, `id_user`, `level`, `hadir`, `waktu`, `tahun`, `bulan`, `hari`) VALUES
(3627, 329, 'guru', '2022-12-27', '03:07:23', 2022, 12, 27),
(3628, 448, 'siswa', '2022-12-27', '03:09:18', 2022, 12, 27),
(3629, 449, 'siswa', '2022-12-27', '05:09:09', 2022, 12, 27),
(3630, 448, 'siswa', '2022-12-28', '05:14:25', 2022, 12, 28),
(3631, 329, 'guru', '2022-12-28', '05:26:49', 2022, 12, 28),
(3632, 329, 'guru', '2023-01-21', '05:08:39', 2023, 1, 21),
(3633, 448, 'siswa', '2023-02-10', '09:26:39', 2023, 2, 10),
(3634, 329, 'guru', '2023-02-23', '15:08:34', 2023, 2, 23),
(3635, 329, 'guru', '2023-02-24', '07:58:16', 2023, 2, 24),
(3636, 329, 'guru', '2023-02-27', '16:42:36', 2023, 2, 27),
(3637, 448, 'siswa', '2023-02-28', '01:19:37', 2023, 2, 28),
(3638, 329, 'guru', '2023-02-28', '03:20:11', 2023, 2, 28),
(3639, 448, 'siswa', '2023-03-04', '04:33:41', 2023, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--

CREATE TABLE `agama` (
  `agamaku` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `agama`
--

INSERT INTO `agama` (`agamaku`) VALUES
('Buddha'),
('Hindu'),
('Islam'),
('Kong Hu Cu'),
('Kristen'),
('Kristen Katolik'),
('Kristen Protestan');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_tugas`
--

CREATE TABLE `jawaban_tugas` (
  `id_jawaban` int NOT NULL,
  `id_siswa` int DEFAULT NULL,
  `id_tugas` int DEFAULT NULL,
  `jawaban` longtext,
  `file` varchar(255) DEFAULT NULL,
  `tgl_dikerjakan` datetime DEFAULT NULL,
  `tgl_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nilai` varchar(5) DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `jawaban_tugas`
--

INSERT INTO `jawaban_tugas` (`id_jawaban`, `id_siswa`, `id_tugas`, `jawaban`, `file`, `tgl_dikerjakan`, `tgl_update`, `nilai`, `status`) VALUES
(8, 448, 11, '<p>fewfs</p>', NULL, NULL, '2023-02-28 01:22:02', '60', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(11) NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `level`, `nama`) VALUES
('VII A', 'VII', 'VII A'),
('VII B', 'VII', 'VII B'),
('VII C', 'VII', 'VII C'),
('VII D', 'VII', 'VII D'),
('VII E', 'VII', 'VII E'),
('VII F', 'VII', 'VII F'),
('VII G', 'VII', 'VII G');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `kode_level` varchar(5) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`kode_level`, `keterangan`) VALUES
('IX', 'IX'),
('VII', 'VII'),
('VIII', 'VIII');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id_log` int NOT NULL,
  `id_siswa` int NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id_log`, `id_siswa`, `type`, `text`, `date`) VALUES
(33512, 448, 'logout', 'keluar', '2022-12-27 03:09:25'),
(33513, 448, 'logout', 'keluar', '2022-12-27 03:18:49'),
(33514, 448, 'logout', 'keluar', '2022-12-27 03:22:10'),
(33515, 448, 'logout', 'keluar', '2022-12-27 03:23:27'),
(33516, 448, 'logout', 'keluar', '2022-12-27 03:25:27'),
(33517, 448, 'logout', 'keluar', '2022-12-27 03:28:17'),
(33518, 448, 'logout', 'keluar', '2022-12-27 03:36:28'),
(33519, 448, 'logout', 'keluar', '2022-12-27 04:05:07'),
(33520, 448, 'logout', 'keluar', '2022-12-27 05:06:02'),
(33521, 449, 'logout', 'keluar', '2022-12-27 05:10:47'),
(33522, 448, 'logout', 'keluar', '2022-12-27 05:33:08'),
(33523, 449, 'logout', 'keluar', '2022-12-27 05:37:52'),
(33524, 449, 'logout', 'keluar', '2022-12-27 05:39:52'),
(33525, 448, 'logout', 'keluar', '2022-12-27 05:41:24'),
(33526, 449, 'logout', 'keluar', '2022-12-27 05:42:52'),
(33527, 449, 'logout', 'keluar', '2022-12-27 05:44:18'),
(33528, 448, 'logout', 'keluar', '2022-12-28 04:50:42'),
(33529, 448, 'logout', 'keluar', '2022-12-28 05:14:00'),
(33530, 448, 'logout', 'keluar', '2022-12-28 05:22:43'),
(33531, 448, 'logout', 'keluar', '2023-01-24 14:05:27'),
(33532, 448, 'logout', 'keluar', '2023-01-24 14:06:05'),
(33533, 448, 'logout', 'keluar', '2023-01-24 14:07:05'),
(33534, 448, 'logout', 'keluar', '2023-01-24 14:07:46'),
(33535, 448, 'logout', 'keluar', '2023-02-06 03:49:38'),
(33536, 448, 'logout', 'keluar', '2023-02-06 17:59:03'),
(33537, 448, 'logout', 'keluar', '2023-02-06 18:00:10'),
(33538, 448, 'logout', 'keluar', '2023-02-06 18:01:31'),
(33539, 448, 'logout', 'keluar', '2023-02-06 18:06:43'),
(33540, 448, 'logout', 'keluar', '2023-02-07 06:00:58'),
(33541, 448, 'logout', 'keluar', '2023-02-07 07:57:39'),
(33542, 448, 'logout', 'keluar', '2023-02-07 07:58:26'),
(33543, 448, 'logout', 'keluar', '2023-02-08 01:46:55'),
(33544, 448, 'logout', 'keluar', '2023-02-08 01:51:10'),
(33545, 448, 'logout', 'keluar', '2023-02-10 09:26:47'),
(33546, 448, 'logout', 'keluar', '2023-02-21 15:31:23'),
(33547, 448, 'logout', 'keluar', '2023-02-23 14:49:45'),
(33548, 448, 'logout', 'keluar', '2023-02-23 14:50:45'),
(33549, 448, 'logout', 'keluar', '2023-02-23 14:51:41'),
(33550, 448, 'logout', 'keluar', '2023-02-23 14:52:27'),
(33551, 448, 'logout', 'keluar', '2023-02-23 15:02:01'),
(33552, 448, 'logout', 'keluar', '2023-02-23 15:03:22'),
(33553, 448, 'logout', 'keluar', '2023-02-23 15:04:17'),
(33554, 449, 'logout', 'keluar', '2023-02-23 15:05:52'),
(33555, 448, 'logout', 'keluar', '2023-02-23 15:07:34'),
(33556, 448, 'logout', 'keluar', '2023-02-24 07:31:28'),
(33557, 448, 'logout', 'keluar', '2023-02-24 14:40:49'),
(33558, 448, 'logout', 'keluar', '2023-02-24 14:42:07'),
(33559, 448, 'logout', 'keluar', '2023-02-24 14:45:30'),
(33560, 448, 'logout', 'keluar', '2023-02-24 14:47:32'),
(33561, 448, 'logout', 'keluar', '2023-02-25 18:01:59'),
(33562, 448, 'logout', 'keluar', '2023-02-27 16:32:51'),
(33563, 448, 'logout', 'keluar', '2023-02-28 00:45:41'),
(33564, 448, 'logout', 'keluar', '2023-02-28 01:20:11'),
(33565, 448, 'logout', 'keluar', '2023-02-28 01:21:01'),
(33566, 448, 'logout', 'keluar', '2023-02-28 01:21:41'),
(33567, 448, 'logout', 'keluar', '2023-02-28 01:24:25'),
(33568, 448, 'logout', 'keluar', '2023-02-28 01:25:00'),
(33569, 448, 'logout', 'keluar', '2023-02-28 01:25:38'),
(33570, 448, 'logout', 'keluar', '2023-02-28 03:21:31'),
(33571, 448, 'logout', 'keluar', '2023-03-02 19:19:03'),
(33572, 448, 'logout', 'keluar', '2023-03-04 04:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `kode_mapel` varchar(20) NOT NULL,
  `nama_mapel` varchar(150) NOT NULL,
  `mata_pelajaran_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`kode_mapel`, `nama_mapel`, `mata_pelajaran_id`) VALUES
('01_TIK', 'TIK', NULL),
('02_BIndo', 'BIndo', NULL),
('03_MTK', 'MTK', NULL),
('04_IPA', 'IPA', NULL),
('05_IPS', 'IPS', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id_materi` int NOT NULL,
  `id_guru` int NOT NULL DEFAULT '0',
  `kelas` text NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `materi` longtext,
  `file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime NOT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id_materi`, `id_guru`, `kelas`, `mapel`, `judul`, `materi`, `file`, `tgl_mulai`, `youtube`, `tgl`, `status`) VALUES
(55, 329, 'a:1:{i:0;s:5:\"VII A\";}', '04_IPA', 'Pertemuan 1', '<p>jgfj</p>', NULL, '2023-02-27 08:18:00', '', '2023-02-28 01:25:53', NULL),
(56, 1, 'a:1:{i:0;s:5:\"VII A\";}', '01_TIK', 'Materi 1', '<p>fxgfdx</p>', NULL, '2023-02-26 08:24:00', '', '2023-02-28 01:24:47', NULL),
(57, 329, 'a:1:{i:0;s:5:\"VII A\";}', '01_TIK', 'Tugas 1', '<p>czcz</p>', '1677784766_1.pdf', '2022-12-06 02:19:00', '', '2023-03-02 19:19:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `materi_komentar`
--

CREATE TABLE `materi_komentar` (
  `id` int NOT NULL,
  `id_materi` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `komentar` text,
  `level` varchar(20) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `materi_komentar`
--

INSERT INTO `materi_komentar` (`id`, `id_materi`, `id_user`, `komentar`, `level`, `create_at`) VALUES
(18, 47, 448, '<p>yaaa</p>', 'siswa', '2022-12-28 04:49:59'),
(20, 49, 1, '<p>untuk materi halaman 48, bisa melihat video youtube pada link yang sudah tersedia di informasi.</p>', 'admin', '2023-02-06 18:07:50'),
(21, 50, 329, '<p>materi halaman 40 untuk lebih jelasnya bisa klik link di deskripsi agar pemahaman tentang materi tersebut lebih baik</p>', 'guru', '2023-02-07 06:18:48'),
(22, 52, 448, '<p>ya</p><p><br></p>', 'siswa', '2023-02-23 14:50:42'),
(23, 52, 329, '<p>oke</p>', 'guru', '2023-02-23 14:51:02'),
(24, 55, 1, '<p>ya</p>', 'admin', '2023-03-02 18:21:06'),
(25, 57, 448, '<p>y</p>', 'siswa', '2023-03-02 19:21:39');

-- --------------------------------------------------------

--
-- Table structure for table `meet`
--

CREATE TABLE `meet` (
  `id` int NOT NULL,
  `id_guru` int DEFAULT NULL,
  `id_mapel` varchar(50) DEFAULT NULL,
  `id_kelas` varchar(11) DEFAULT NULL,
  `room` varchar(100) DEFAULT NULL,
  `judul` varchar(110) DEFAULT NULL,
  `deskripsi` varchar(250) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `meet`
--

INSERT INTO `meet` (`id`, `id_guru`, `id_mapel`, `id_kelas`, `room`, `judul`, `deskripsi`, `status`, `create_at`) VALUES
(9, 329, '04_IPA', 'VII A', 'ocbt32904_ipaviia', 'Zoom 1', 'yaa', 1, '2023-02-28 01:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `pengawas`
--

CREATE TABLE `pengawas` (
  `id_pengawas` int NOT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` text,
  `level` varchar(10) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `alamat_jalan` varchar(255) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `password2` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `pengawas`
--

INSERT INTO `pengawas` (`id_pengawas`, `nip`, `nama`, `username`, `password`, `level`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `no_hp`, `alamat_jalan`, `foto`, `password2`) VALUES
(1, '-', 'administrator', 'admin', '$2y$10$2rTCXEfsEIbKOCKKN5dQKeiJHFh1wlUC208yUKivwJU5rvL0ELGfa', 'admin', '', '0000-00-00', '', '', '', '', '', NULL),
(329, ' 198111102022211015', 'Pak Tamrin', 'guru', 'guru', 'guru', 'Temanggung', '2022-12-27', 'Laki-Laki', 'Islam', '085226374676', 'Parakan', '19113103.jpg', NULL),
(330, ' 196906112006041005', 'Akhsan Abdillah', 'guru2', 'guru2', 'guru', NULL, NULL, 'Laki-Laki', NULL, '085263748239', 'Bulu', NULL, NULL),
(331, ' 198406112019031007', 'Eko Danang Supriyanto', 'guru3', 'guru3', 'guru', NULL, NULL, 'Laki-Laki', NULL, '085678934520', 'kauman', NULL, NULL),
(332, ' 198005202008012010', 'Endang Purwanti', 'guru4', 'guru4', 'guru', NULL, NULL, 'perempuan', NULL, '082356102940', 'bulu', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int NOT NULL,
  `type` varchar(30) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `user` int NOT NULL,
  `text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `type`, `judul`, `user`, `text`, `date`) VALUES
(6, 'eksternal', 'Libur semester akhir', 1, '<p>libur sampai januari</p>', '2022-12-27 03:27:29'),
(7, 'internal', 'Libur semester akhir', 1, '<p>libur</p>', '2022-12-27 05:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `registrasi_siswa`
--

CREATE TABLE `registrasi_siswa` (
  `id` int NOT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `id_kelas` varchar(11) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(30) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `nama_ayah` varchar(150) DEFAULT NULL,
  `nama_ibu` varchar(150) DEFAULT NULL,
  `th_masuk` int DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `username_login` varchar(50) DEFAULT NULL,
  `password_login` varchar(255) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `registrasi_siswa`
--

INSERT INTO `registrasi_siswa` (`id`, `nis`, `nama_lengkap`, `id_kelas`, `alamat`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `nama_ayah`, `nama_ibu`, `th_masuk`, `no_hp`, `username_login`, `password_login`, `create_at`) VALUES
(20, '2291', 'Achmad Irlendanu Daseva Natta', 'VII C', 'parakan', 'Temanggung', '2018-01-01', 'Laki-Laki', 'Islam', 'Bapak I', 'Ibu U', 2023, '082396102041', '2291', '2291', '2023-02-28 00:58:45');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int NOT NULL,
  `id_kelas` varchar(11) DEFAULT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `no_peserta` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `level` varchar(5) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text,
  `jenis_kelamin` varchar(30) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `alamat` text,
  `hp` varchar(15) DEFAULT NULL,
  `nama_ayah` varchar(150) DEFAULT NULL,
  `nama_ibu` varchar(150) DEFAULT NULL,
  `angkatan` int DEFAULT NULL,
  `status` int DEFAULT '1',
  `online` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_kelas`, `nis`, `no_peserta`, `nama`, `level`, `username`, `password`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `agama`, `alamat`, `hp`, `nama_ayah`, `nama_ibu`, `angkatan`, `status`, `online`) VALUES
(448, 'VII A', '130036', '130036', 'Indah Kurniwati', 'VII', '130036', '130036', 'Laki-Laki', 'Temanggung', '2005-08-06', 'Islam', 'Ngadirejo', '+6281328452737', 'Bapak I', 'Ibu I', 2022, 1, 0),
(449, 'VII B', '160800', '160800', 'DIan Kurniasari', 'VII', '160800', '160800', 'Laki-Laki', 'Temanggung', '2006-08-09', 'Islam', 'Bansari', '085627384920', 'Bapak U', 'Ibu U', 2022, 1, 0),
(450, 'VII A', '12299', '12299', 'Daffa Surya Maulana', 'VII', '12299', '12299', 'Laki-Laki', 'Temanggung', '2005-08-06', 'Islam', 'Ngadirejo', '+6281328452765', 'Bapak I', 'Ibu I', 2022, 1, 0),
(451, 'VII A', '12303', '12303', 'Ghaitsa Ayudya Safa', 'VII', '12303', '12303', 'Perempuan', 'Temanggung', '2005-08-06', 'Islam', 'Ngadirejo', '+62813284501264', 'Bapak I', 'Ibu I', 2022, 1, 0),
(452, 'VII E', '12308', '12308', 'Martha Usni Yolanda', 'VII', '12308', '12308', 'Perempuan', 'Temanggung', '2005-08-06', 'Islam', 'Ngadirejo', '+6281328452710', 'Bapak I', 'Ibu I', 2022, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `id_tugas` int NOT NULL,
  `id_guru` int NOT NULL DEFAULT '0',
  `kelas` text NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `tugas` longtext NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`id_tugas`, `id_guru`, `kelas`, `mapel`, `judul`, `tugas`, `file`, `tgl_mulai`, `tgl_selesai`, `tgl`, `status`) VALUES
(11, 329, 'a:1:{i:0;s:5:\"VII A\";}', '03_MTK', 'Materi 1', '<p>hfxgfjch</p>', NULL, '2023-02-27 08:19:00', '2023-03-16 08:19:00', '2023-02-28 01:19:17', NULL),
(12, 329, 'a:1:{i:0;s:5:\"VII A\";}', '01_TIK', 'Tugas 1', '<p>ljadsj</p>', NULL, '2023-02-20 10:22:00', '2023-03-08 10:22:00', '2023-02-28 03:22:32', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen_harian`
--
ALTER TABLE `absen_harian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`agamaku`);

--
-- Indexes for table `jawaban_tugas`
--
ALTER TABLE `jawaban_tugas`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`kode_level`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`kode_mapel`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `materi_komentar`
--
ALTER TABLE `materi_komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meet`
--
ALTER TABLE `meet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengawas`
--
ALTER TABLE `pengawas`
  ADD PRIMARY KEY (`id_pengawas`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `registrasi_siswa`
--
ALTER TABLE `registrasi_siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registrasi_nis_siswa` (`nis`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id_tugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen_harian`
--
ALTER TABLE `absen_harian`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3640;

--
-- AUTO_INCREMENT for table `jawaban_tugas`
--
ALTER TABLE `jawaban_tugas`
  MODIFY `id_jawaban` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33573;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `materi_komentar`
--
ALTER TABLE `materi_komentar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `meet`
--
ALTER TABLE `meet`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pengawas`
--
ALTER TABLE `pengawas`
  MODIFY `id_pengawas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `registrasi_siswa`
--
ALTER TABLE `registrasi_siswa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=453;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id_tugas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
