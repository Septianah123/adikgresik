-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2018 at 03:39 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbadikkita`
--

-- --------------------------------------------------------

--
-- Table structure for table `masterguru`
--

CREATE TABLE IF NOT EXISTS `masterguru` (
  `idguru` varchar(10) NOT NULL,
  `namalengkap` varchar(40) DEFAULT NULL,
  `nik` int(16) NOT NULL,
  `nip` varchar(16) NOT NULL,
  `nuptk` varchar(16) NOT NULL,
  `jeniskelamin` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `ijazahterakhir` varchar(15) DEFAULT NULL,
  `jurusan` varchar(30) DEFAULT NULL,
  `gelarakademik` varchar(15) DEFAULT NULL,
  `lulustahun` varchar(4) DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `tempatlhr` varchar(20) DEFAULT NULL,
  `tanggallhr` date DEFAULT NULL,
  `alamattinggal` varchar(100) DEFAULT NULL,
  `notelp` varchar(13) DEFAULT NULL,
  `emailpribadi` varchar(100) DEFAULT NULL,
  `ibukandung` varchar(30) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `idsekolah` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masterguru`
--

INSERT INTO `masterguru` (`idguru`, `namalengkap`, `nik`, `nip`, `nuptk`, `jeniskelamin`, `ijazahterakhir`, `jurusan`, `gelarakademik`, `lulustahun`, `tmt`, `tempatlhr`, `tanggallhr`, `alamattinggal`, `notelp`, `emailpribadi`, `ibukandung`, `foto`, `username`, `password`, `idsekolah`) VALUES
('GR160001', 'TU SMP Sidayu', 343, '', '354756', 'Laki-Laki', 'SMA/MA/SMK', 'dfbgdfgnd', 'fhdf', '2017', '2016-11-30', 'Surakarta', '2016-10-30', 'Sidayu', '3456345', '3545546745sdgfdgf', 'Curi', 'GR160001-TU SMP Sidayu.jpg', NULL, NULL, 'MD0009'),
('GR100002', 'Hadziq Agasta', 2147483647, '', '0890889686', 'Laki-Laki', 'Strata-1', 'Teknik Informatika', 'S.Kom', '2010', '2010-07-01', 'Gresik', '1988-08-31', 'Sembungan Kidul Dukun', '08888888888', 'ziqyaugust@gmail.com', 'Chudzaifah', 'GR100002-Hadziq Agasta.jpg', NULL, NULL, 'MD0003'),
('GR150001', 'Abdul Kasim', 2147483647, '', '0890889686', 'Laki-Laki', 'Strata-1', 'Rekayasa Perangkat Lunak', 'S.Kom', '2010', '2015-10-29', 'Gresik', '1994-10-30', 'Sambogunung Dukun Gresik', '09090909090', 'ain@ainherbal.com', 'Yuk Na', 'GR150001-Abdul Kasim.jpg', NULL, NULL, 'MD0008'),
('GR140001', 'Supriyanto', 2147483647, '', '354756', 'Laki-Laki', 'Strata-1', 'Elektronika', 'S.I', '2011', '2014-11-30', 'Gresik', '1988-11-29', 'Golokan', '0867485494689', '3545546745sdgfdgf', 'Curi', 'GR140001-Supriyanto.jpg', NULL, NULL, 'MD0003');

-- --------------------------------------------------------

--
-- Table structure for table `masterjabatan`
--

CREATE TABLE IF NOT EXISTS `masterjabatan` (
  `id` int(2) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `level` int(2) NOT NULL,
  `modul` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masterjabatan`
--

INSERT INTO `masterjabatan` (`id`, `jabatan`, `level`, `modul`) VALUES
(1, 'Super Administrator', 1, 'admin'),
(2, 'Administrator', 2, 'useradmin'),
(3, 'Operator', 3, 'userop'),
(4, 'Kepala Sekolah', 4, 'userkepsek'),
(5, 'Guru', 5, 'userguru'),
(6, 'Siswa', 6, 'usersiswa');

-- --------------------------------------------------------

--
-- Table structure for table `masterjenisuji`
--

CREATE TABLE IF NOT EXISTS `masterjenisuji` (
  `idjenisuji` varchar(8) NOT NULL,
  `jenisuji` varchar(30) NOT NULL,
  `jenisujipanjang` varchar(30) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `durasi` time NOT NULL,
  `idsekolah` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `masterkelas`
--

CREATE TABLE IF NOT EXISTS `masterkelas` (
  `idkelas` varchar(20) NOT NULL,
  `namakelas` varchar(35) DEFAULT NULL,
  `kelas` int(3) DEFAULT NULL,
  `kelompok` varchar(30) DEFAULT NULL,
  `jurusan` varchar(30) DEFAULT NULL,
  `dayatampung` int(2) DEFAULT NULL,
  `idsekolah` varchar(10) NOT NULL,
  `statuskelas` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masterkelas`
--

INSERT INTO `masterkelas` (`idkelas`, `namakelas`, `kelas`, `kelompok`, `jurusan`, `dayatampung`, `idsekolah`, `statuskelas`) VALUES
('TUQwMDAzRK001', 'VII-A', 7, 'umum', 'umum', 30, 'MD0003', NULL),
('TUQwMDAzRK002', 'VIII-A', 8, 'umum', 'umum', 30, 'MD0003', NULL),
('TUQwMDAzRK003', 'VII-B', 7, 'umum', 'umum', NULL, 'MD0003', NULL),
('TUQwMDA3RK001', 'VII-Regular', 7, 'umum', 'umum', NULL, 'MD0007', NULL),
('TUQwMDA5RK001', 'VII-Regular', 7, 'umum', 'umum', NULL, 'MD0009', NULL),
('TUQwMDAzRK004', 'IX-A', 9, 'umum', 'umum', NULL, 'MD0003', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `masterkompdasar`
--

CREATE TABLE IF NOT EXISTS `masterkompdasar` (
  `idkompdasar` varchar(10) NOT NULL,
  `kodekompdasar` varchar(5) NOT NULL,
  `idkompinti` varchar(50) NOT NULL,
  `idmapel` varchar(10) NOT NULL,
  `idmapellokal` varchar(10) NOT NULL,
  `kompdasar` text NOT NULL,
  `keterampilan` varchar(100) NOT NULL,
  `spiritual` varchar(100) NOT NULL,
  `sosial` varchar(20) NOT NULL,
  `kelas` varchar(2) NOT NULL,
  `semester` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masterkompdasar`
--

INSERT INTO `masterkompdasar` (`idkompdasar`, `kodekompdasar`, `idkompinti`, `idmapel`, `idmapellokal`, `kompdasar`, `keterampilan`, `spiritual`, `sosial`, `kelas`, `semester`) VALUES
('A0001001', 'KD01', '', 'A0001', '', 'Memahami makna Qu''an & Hadist tentang menuntut ilmu', 'Membaca, menghafal mengkaitkan semangat menuntut ilmu sesuai Q.S al-Mujadilah 58:11, ar Rahman 55:33', 'Berdoa Sesudah dan Sebelum Kegiatan', 'Jujur', '7', 'Gasal'),
('A0001002', 'KD02', '', 'A0001', '', 'Memahami makna al-Asma''ul :al-alim, al-Khabir, as-Sami''& al-Bashir', 'Meneladani al-Asmaul Husna: al-alim,al-Khabir,as-Sami'', al-Bashir', 'Taat Beribadah', 'Disiplin', '7', 'Gasal'),
('A0001003', 'KD03', '', 'A0001', '', 'Memahami makna perilaku jujur, amanah & istiqomah', 'Menyajikan makna perilaku jujur, amanah & istiqomah', 'Memberi salam', 'Tanggungjawab', '7', 'Gasal'),
('A0001004', 'KD04', '', 'A0001', '', 'Memahami ketentuan bersuci dari hadast besar', 'Menyajikan bersuci dari hadast besar', 'Bersyukur', '', '7', 'Genap'),
('A0001005', 'KD05', '', 'A0001', '', 'Membaca al-Qurâ€™an dengan tartil', 'Membaca al-Qur''an dengan tartil', 'Keimanan', 'Sopan Santun', '8', 'Gasal'),
('A0002001', '', '', 'A0002', '', 'Mengetahui bentuk cerita pendek', 'Membuat cerita pendek', 'Sabar', 'Makna berteman', '7', 'Gasal'),
('A0002002', '', '', 'A0002', '', 'Mengetahui bentuk kata penghubung', 'Menyebutkan macam-macam kata penghubung', 'Silaturahim', 'Berteman', '7', 'Gasal'),
('A0003001', 'KD01', '', 'A0003', '', 'Mampu menghitung Ruang Bangun', 'Mampu membuat maket ruang bangun kubus', 'Berdoa Sesudah dan Sebelum Kegiatan', 'Teliti', '7', 'Gasal');

-- --------------------------------------------------------

--
-- Table structure for table `masterkompinti`
--

CREATE TABLE IF NOT EXISTS `masterkompinti` (
  `idkompinti` varchar(50) NOT NULL,
  `idmapel` varchar(10) NOT NULL,
  `kompinti` text NOT NULL,
  `kelas` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mastermapel`
--

CREATE TABLE IF NOT EXISTS `mastermapel` (
  `idmapel` varchar(10) NOT NULL,
  `mapel` varchar(100) DEFAULT NULL,
  `kategori` varchar(30) NOT NULL,
  `kelompok` varchar(20) DEFAULT NULL,
  `jurusan` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mastermapel`
--

INSERT INTO `mastermapel` (`idmapel`, `mapel`, `kategori`, `kelompok`, `jurusan`) VALUES
('A0001', 'Pendidikan Agama Islam', 'Kelompok A', NULL, NULL),
('A0003', 'Matematika', 'Kelompok A', NULL, NULL),
('A0002', 'Bahasa Indonesia', 'Kelompok A', NULL, NULL),
('A0004', 'Seni Budaya', 'Kelompok B', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `masterolah`
--

CREATE TABLE IF NOT EXISTS `masterolah` (
  `iduser` varchar(50) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `notelp` varchar(15) DEFAULT NULL,
  `level` int(2) NOT NULL,
  `blockir` enum('y','n') NOT NULL,
  `idguru` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masterolah`
--

INSERT INTO `masterolah` (`iduser`, `username`, `nama`, `password`, `email`, `notelp`, `level`, `blockir`, `idguru`) VALUES
('123121213', 'admin', 'Wong Super', 'zadminz', 'admin', 'admin', 1, 'n', NULL),
('b9f82495-cc6e-11e7-aec5-002655c078a1', 'SW170003', 'Budi Sasmito', 'SW170003', NULL, NULL, 6, 'n', 'SW170003'),
('4f99955d-cc6e-11e7-aec5-002655c078a1', 'SW170002', 'Subhan Yusuf', 'SW170002', NULL, NULL, 6, 'n', 'SW170002'),
('e3e9da3c-d0f1-11e7-b438-002655c078a1', 'GR140001', 'Supriyanto', 'GR140001', '3545546745sdgfdgf', '0867485494689', 4, 'n', 'GR140001'),
('81a71e08-c538-11e7-ae3a-002655c078a1', 'GR150001', 'Abdul Kasim', 'GR150001', 'ain@ainherbal.com', '09090909090', 3, 'n', 'GR150001'),
('1d2a0f7c-c36e-11e7-a213-002655c078a1', '', 'Muhammad', '', 'ain@ainherbal.com', '08888888888', 5, 'n', NULL),
('a38b5e93-bfc0-11e7-b713-002655c078a1', 'GR100002', 'Hadziq Agasta', 'GR100002', 'ziqyaugust@gmail.com', '08888888888', 3, 'n', 'GR100002'),
('fee01d4a-c377-11e7-a213-002655c078a1', 'GR130001', 'Qulhu Ae Lek', 'GR130001', 'ziqyaugust@gmail.com', '08888888888', 5, 'n', 'GR130001'),
('58741887-cc6d-11e7-aec5-002655c078a1', 'SW170001', 'ACHMAD ROCHIM', 'SW170001', NULL, NULL, 6, 'n', 'SW170001'),
('da2a1255-cc6e-11e7-aec5-002655c078a1', 'SW170004', 'Adi Priyo', 'SW170004', NULL, NULL, 6, 'n', 'SW170004'),
('a5335c74-cd35-11e7-b7e7-e23564578597', 'SW170005', 'Nur Halizah', 'SW170005', NULL, NULL, 6, 'n', 'SW170005'),
('7efea74c-ce5d-11e7-8fa0-896971fb9807', 'SW160001', 'Mahrus Ali', 'SW160001', NULL, NULL, 6, 'n', 'SW160001'),
('0603153a-cff8-11e7-a133-002655c078a1', 'GR160001', 'TU SMP Sidayu', 'GR160001', '3545546745sdgfdgf', '3456345', 3, 'n', 'GR160001'),
('cfe7b956-d0e0-11e7-b438-002655c078a1', 'SW160002', 'Sukamoto', 'SW160002', NULL, NULL, 6, 'n', 'SW160002'),
('fb3cec24-d136-11e7-b438-002655c078a1', 'SW160003', 'Bahrudin Ali', 'SW160003', NULL, NULL, 6, 'n', 'SW160003');

-- --------------------------------------------------------

--
-- Table structure for table `mastersekolah`
--

CREATE TABLE IF NOT EXISTS `mastersekolah` (
  `kodeskul` int(8) NOT NULL,
  `idsekolah` varchar(10) NOT NULL,
  `npsn` varchar(10) NOT NULL,
  `namasekolah` varchar(50) DEFAULT NULL,
  `nss` varchar(20) DEFAULT NULL,
  `idtingkat` varchar(2) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kodepos` varchar(6) DEFAULT NULL,
  `notelpkantor` varchar(13) DEFAULT NULL,
  `kelurahan` varchar(25) NOT NULL,
  `kecamatan` varchar(20) DEFAULT NULL,
  `kabupaten` varchar(20) DEFAULT NULL,
  `provinsi` varchar(20) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `emailkantor` varchar(50) DEFAULT NULL,
  `status` varchar(8) NOT NULL,
  `idguru` varchar(10) DEFAULT NULL,
  `logo` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mastersekolah`
--

INSERT INTO `mastersekolah` (`kodeskul`, `idsekolah`, `npsn`, `namasekolah`, `nss`, `idtingkat`, `alamat`, `kodepos`, `notelpkantor`, `kelurahan`, `kecamatan`, `kabupaten`, `provinsi`, `website`, `emailkantor`, `status`, `idguru`, `logo`) VALUES
(9, 'MD0003', '123', 'MTs YKUI Maskumambang 1 Dukun', '54765785464', '1', 'Jl. Raya Sembungan Kidul Dukun', '61155', '031-394806', 'Sembungan Kidul', 'Dukun', 'Gresik', 'Jawa Timur', 'www.mtsmaskumambangdukun.com', 'mtsmaskdukun@gmail.com', 'Swasta', 'GR140001', 'MD0003-MTs YKUI Maskumambang 1 Dukun.jpg'),
(13, 'MD0007', '125', 'SMP Negeri 1 Dukun Gresik', '5478645563', '1', 'Jl. Raya Mentaras Dukun', '61155', '031-3987876', 'Mentaras', 'Dukun', 'Gresik', 'Jawa Timur', 'www.smpn1dukun.com', 'smp1dukun@gmail.com', 'Negeri', NULL, 'MD0007-SMP Negeri 1 Dukun Gresik.jpg'),
(14, 'MD0008', '122', 'SMP Negeri 1 Gresik', '3435457567', '1', 'Jl. Pendidikan No. 1 Gresik', '61151', '031-3987865', 'Gresik', 'Randuangung', 'Gresik', 'Jawa Timur', 'www.smpn1gresik.com', 'smp1gresik@gmail.com', 'Negeri', 'GR150001', 'MD0008-SMP Negeri 1 Gresik.jpg'),
(15, 'MD0009', '0945735469', 'SMP Negeri 1 Sidayu', '5756875756', '1', 'Sidayu', '61157', '031-3945659', 'Sidayu', 'Sidayu', 'Gresik', 'Jawa Timur', 'www.smpn1sidayu.com', 'smp1sidayu@gmail.com', 'Negeri', 'GR160001', 'MD0009-SMP Negeri 1 Sidayu.jpg'),
(17, 'MD0001', '3425456776', 'SMP Negeri 1 Bungah', '34567546756786', '', 'Jl. Raya Dendles No. 1 Bungah', '61154', '031-3987876', 'Oro-Oro Dowo', 'Bungah', 'Gresik', 'Jawa Timur', 'www.smpn1bungah.com', 'smp1bungah@gmail.com', 'Negeri', NULL, 'MD0001-SMP Negeri 1 Bungah.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mastersiswa`
--

CREATE TABLE IF NOT EXISTS `mastersiswa` (
  `idsiswa` varchar(10) NOT NULL,
  `nis` varchar(16) NOT NULL,
  `nisn` varchar(16) DEFAULT NULL,
  `namalengkap` varchar(40) NOT NULL,
  `namapanggilan` varchar(15) NOT NULL,
  `jeniskelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `tempatlhr` varchar(15) NOT NULL,
  `tanggallhr` date NOT NULL,
  `alamattinggal` varchar(50) NOT NULL,
  `tanggalmasuk` date NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `statusanak` varchar(15) DEFAULT NULL,
  `anakke` varchar(2) DEFAULT NULL,
  `notelpon` varchar(13) DEFAULT NULL,
  `asalsekolah` varchar(50) DEFAULT NULL,
  `namaayah` varchar(30) DEFAULT NULL,
  `namaibu` varchar(30) DEFAULT NULL,
  `alamatortu` varchar(50) DEFAULT NULL,
  `notelportu` varchar(13) DEFAULT NULL,
  `kerjaayah` varchar(20) DEFAULT NULL,
  `kerjaibu` varchar(20) DEFAULT NULL,
  `namawali` varchar(30) DEFAULT NULL,
  `alamatwali` varchar(50) DEFAULT NULL,
  `notelpwali` varchar(13) DEFAULT NULL,
  `kerjawali` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mastersiswa`
--

INSERT INTO `mastersiswa` (`idsiswa`, `nis`, `nisn`, `namalengkap`, `namapanggilan`, `jeniskelamin`, `tempatlhr`, `tanggallhr`, `alamattinggal`, `tanggalmasuk`, `foto`, `agama`, `statusanak`, `anakke`, `notelpon`, `asalsekolah`, `namaayah`, `namaibu`, `alamatortu`, `notelportu`, `kerjaayah`, `kerjaibu`, `namawali`, `alamatwali`, `notelpwali`, `kerjawali`) VALUES
('SW170003', '1233', '1233', 'Budi Sasmito', 'Budi', 'Laki-Laki', 'Surakarta', '2006-11-27', 'Surakarta', '0000-00-00', 'SW170003-Budi Sasmito.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('SW170001', '4902430396028', '7788', 'ACHMAD ROCHIM', 'Rohim', 'Laki-Laki', 'Gresik', '2004-11-30', 'Sambogunung Dukun Gresik', '2016-11-30', 'SW170001-ACHMAD ROCHIM.jpg', 'Islam', 'Anak Kandung', '2', '98768690', 'SD Negeri 1 Palangkaraya', 'Martakim', 'Sukaselfi', 'Paranglor Bangka', '086757578965', 'Guru', 'Ibu Rumah Tangga', 'Sukajepret', 'Jl. Merpati Putih No. 35 Pulopancikan Gresik 61145', '086757578965', 'Guru'),
('SW170002', '376/110.070', '7788', 'Subhan Yusuf', 'Subhan', 'Laki-Laki', 'Bangkalan', '2005-11-30', 'Bangkalan Madura', '0000-00-00', 'SW170002-Subhan Yusuf.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('SW170004', '1234', '1234', 'Adi Priyo', 'Adi', 'Laki-Laki', 'Gresik', '2005-09-30', 'Gresik', '0000-00-00', 'SW170004-Adi Priyo.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('SW170005', '8765', '8765', 'Nur Halizah', 'Nur', 'Perempuan', 'Malay', '2006-11-30', 'Malay', '0000-00-00', 'SW170005-Nur Halizah.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('SW160001', '1235', '1235', 'Mahrus Ali', 'Ali', 'Laki-Laki', 'Gresik', '2005-11-30', 'Sidayu', '2016-11-30', 'SW160001-Mahrus Ali.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('SW160002', '2222', '2222', 'Sukamoto', 'Sukamoto', 'Laki-Laki', 'Jepang', '2009-11-30', 'Jl. Merpati Putih No. 35 Pulopancikan Gresik 61145', '2016-11-30', 'SW160002-Sukamoto.jpg', 'Islam', 'Anak Kandung', '2', '0867485494689', 'SD Muhammadiyah 1 Sidayu', 'Sukajepret', 'Sukaselfi', 'Jl. Merpati Putih No. 35 Pulopancikan Gresik 61145', '086757578965', 'Guru', 'Ibu Rumah Tangga', 'Sukajepret', 'Jl. Merpati Putih No. 35 Pulopancikan Gresik 61145', '086757578965', 'Guru'),
('SW160003', '2221', '2221', 'Bahrudin Ali', 'Ali', 'Laki-Laki', 'Gresik', '2006-10-27', 'Jl. Merpati Putih No. 35 Pulopancikan Gresik 61145', '2016-11-30', 'SW160003-Bahrudin Ali.jpg', 'Islam', 'Anak Kandung', '2', '98768690', 'MI YKUI Maskumambang Dukun', 'Partaji', 'Sumirah', 'Jl. Merpati Putih No. 35 Pulopancikan Gresik 61145', '086757578965', 'Guru', 'Ibu Rumah Tangga', 'Sukajepret', 'Jl. Merpati Putih No. 35 Pulopancikan Gresik 61145', '086757578965', 'Guru');

-- --------------------------------------------------------

--
-- Table structure for table `mastertahunajar`
--

CREATE TABLE IF NOT EXISTS `mastertahunajar` (
  `idtahun` int(10) NOT NULL,
  `tahunajar` varchar(10) NOT NULL,
  `aktif` varchar(2) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mastertahunajar`
--

INSERT INTO `mastertahunajar` (`idtahun`, `tahunajar`, `aktif`) VALUES
(10, '2016-2017', 'y'),
(11, '2017-2018', 'n'),
(12, '2018-2019', 'n'),
(13, '2019-2020', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `mastertingkat`
--

CREATE TABLE IF NOT EXISTS `mastertingkat` (
  `idtingkat` int(2) NOT NULL,
  `tingkatsatuan` varchar(15) NOT NULL,
  `tingkat` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mastertingkat`
--

INSERT INTO `mastertingkat` (`idtingkat`, `tingkatsatuan`, `tingkat`) VALUES
(1, 'SMP/MTs', 3);

-- --------------------------------------------------------

--
-- Table structure for table `siswakelas`
--

CREATE TABLE IF NOT EXISTS `siswakelas` (
  `idsiswa` varchar(10) NOT NULL,
  `idtk` varchar(6) NOT NULL,
  `statussiswa` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `siswakelas`
--

INSERT INTO `siswakelas` (`idsiswa`, `idtk`, `statussiswa`) VALUES
('SW170003', '160001', 'Pindahan'),
('SW170002', '160001', 'Siswa Baru'),
('SW170001', '160001', 'Siswa Baru'),
('SW170004', '160002', 'Siswa Baru'),
('SW170005', '160001', 'Siswa Baru'),
('SW160001', '160002', 'Siswa Baru'),
('SW160002', '160003', 'Siswa Baru'),
('SW160003', '160004', 'Siswa Baru'),
('SW170001', '170001', 'Naik Kelas');

-- --------------------------------------------------------

--
-- Table structure for table `tbmapellokal`
--

CREATE TABLE IF NOT EXISTS `tbmapellokal` (
  `idmapellokal` varchar(10) NOT NULL,
  `idmapel` varchar(10) NOT NULL,
  `idguru` varchar(10) NOT NULL,
  `idsekolah` varchar(10) NOT NULL,
  `idtk` varchar(6) NOT NULL,
  `mapellokal` varchar(80) NOT NULL,
  `kkm` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbmapellokal`
--

INSERT INTO `tbmapellokal` (`idmapellokal`, `idmapel`, `idguru`, `idsekolah`, `idtk`, `mapellokal`, `kkm`) VALUES
('A0001001', 'A0001', 'GR150001', 'MD0003', '160001', 'Pendidikan Agama Islam Rohmatan Lil ''Alamin', 75),
('A0001002', 'A0001', 'GR100002', 'MD0007', '160004', 'Pendidikan Agama Islam', 75),
('A0002001', 'A0002', 'GR100002', 'MD0003', '160001', 'Bahasa Indonesia', 75),
('A0002002', 'A0002', 'GR160001', 'MD0009', '160005', 'Bahasa Indonesia', 80),
('A0003001', 'A0003', 'GR160001', 'MD0009', '160005', 'MTK', 75),
('A0004001', 'A0004', 'GR150001', 'MD0003', '160001', 'Seni Budaya', 80);

-- --------------------------------------------------------

--
-- Table structure for table `tbnilaikd`
--

CREATE TABLE IF NOT EXISTS `tbnilaikd` (
  `idnilaikd` varchar(30) NOT NULL,
  `idkompdasar` varchar(10) NOT NULL,
  `idtk` varchar(6) NOT NULL,
  `idsiswa` varchar(10) NOT NULL,
  `tulis1` int(3) NOT NULL,
  `tulis2` int(3) NOT NULL,
  `tugas1` int(3) NOT NULL,
  `tugas2` int(3) NOT NULL,
  `tugas3` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbnilaikd`
--

INSERT INTO `tbnilaikd` (`idnilaikd`, `idkompdasar`, `idtk`, `idsiswa`, `tulis1`, `tulis2`, `tugas1`, `tugas2`, `tugas3`) VALUES
('A0001001160001SW170001', 'A0001001', '160001', 'SW170001', 80, 80, 80, 80, 80),
('A0001001160001SW170002', 'A0001001', '160001', 'SW170002', 70, 80, 90, 78, 79),
('A0001001160001SW170003', 'A0001001', '160001', 'SW170003', 90, 90, 90, 90, 90),
('A0001001160001SW170005', 'A0001001', '160001', 'SW170005', 90, 90, 89, 89, 78),
('A0001002160001SW170001', 'A0001002', '160001', 'SW170001', 80, 80, 90, 78, 89),
('A0001002160001SW170002', 'A0001002', '160001', 'SW170002', 0, 0, 0, 0, 0),
('A0001002160001SW170003', 'A0001002', '160001', 'SW170003', 0, 0, 0, 0, 0),
('A0001002160001SW170005', 'A0001002', '160001', 'SW170005', 0, 0, 0, 0, 0),
('A0002001160001SW170001', 'A0002001', '160001', 'SW170001', 90, 90, 90, 90, 90),
('A0002001160001SW170002', 'A0002001', '160001', 'SW170002', 67, 67, 67, 67, 67),
('A0002001160001SW170003', 'A0002001', '160001', 'SW170003', 78, 78, 78, 78, 78),
('A0002001160001SW170005', 'A0002001', '160001', 'SW170005', 89, 89, 89, 89, 89);

-- --------------------------------------------------------

--
-- Table structure for table `tbnilaikt`
--

CREATE TABLE IF NOT EXISTS `tbnilaikt` (
  `idnilaikt` varchar(30) NOT NULL,
  `idkompdasar` varchar(10) NOT NULL,
  `idtk` varchar(6) NOT NULL,
  `idsiswa` varchar(10) NOT NULL,
  `praktik1` int(3) NOT NULL,
  `praktik2` int(3) NOT NULL,
  `produk1` int(3) NOT NULL,
  `produk2` int(3) NOT NULL,
  `proyek1` int(3) NOT NULL,
  `proyek2` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbnilaikt`
--

INSERT INTO `tbnilaikt` (`idnilaikt`, `idkompdasar`, `idtk`, `idsiswa`, `praktik1`, `praktik2`, `produk1`, `produk2`, `proyek1`, `proyek2`) VALUES
('A0001002160001SW170001', 'A0001002', '160001', 'SW170001', 79, 79, 79, 79, 79, 79),
('A0001002160001SW170002', 'A0001002', '160001', 'SW170002', 79, 79, 79, 79, 79, 79),
('A0001002160001SW170003', 'A0001002', '160001', 'SW170003', 79, 79, 79, 79, 79, 79),
('A0001002160001SW170005', 'A0001002', '160001', 'SW170005', 79, 79, 79, 79, 79, 79);

-- --------------------------------------------------------

--
-- Table structure for table `tbnilaisp`
--

CREATE TABLE IF NOT EXISTS `tbnilaisp` (
  `idnilaisp` varchar(30) NOT NULL,
  `idkompdasar` varchar(10) NOT NULL,
  `idtk` varchar(6) NOT NULL,
  `idsiswa` varchar(10) NOT NULL,
  `observasisp1` varchar(1) NOT NULL,
  `observasisp2` varchar(1) NOT NULL,
  `dirisp1` varchar(1) NOT NULL,
  `dirisp2` varchar(1) NOT NULL,
  `temansp1` varchar(1) NOT NULL,
  `temansp2` varchar(1) NOT NULL,
  `jurnalsp1` varchar(1) NOT NULL,
  `jurnalsp2` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbnilaisp`
--

INSERT INTO `tbnilaisp` (`idnilaisp`, `idkompdasar`, `idtk`, `idsiswa`, `observasisp1`, `observasisp2`, `dirisp1`, `dirisp2`, `temansp1`, `temansp2`, `jurnalsp1`, `jurnalsp2`) VALUES
('A0001001160001SW170001', 'A0001001', '160001', 'SW170001', 'D', 'D', 'D', 'D', 'D', 'D', 'D', 'D'),
('A0001001160001SW170002', 'A0001001', '160001', 'SW170002', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A'),
('A0001001160001SW170003', 'A0001001', '160001', 'SW170003', 'C', 'C', 'C', 'C', 'C', 'C', 'C', 'C'),
('A0001001160001SW170005', 'A0001001', '160001', 'SW170005', 'D', 'D', 'D', 'D', 'D', 'D', 'D', 'D'),
('A0001002160001SW170001', 'A0001002', '160001', 'SW170001', 'A', 'B', 'A', 'B', 'A', 'B', 'A', 'B'),
('A0001002160001SW170002', 'A0001002', '160001', 'SW170002', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A'),
('A0001002160001SW170003', 'A0001002', '160001', 'SW170003', 'B', 'C', 'B', 'C', 'B', 'C', 'B', 'C'),
('A0001002160001SW170005', 'A0001002', '160001', 'SW170005', 'C', 'D', 'C', 'D', 'C', 'D', 'C', 'D'),
('A0002001160001SW170001', 'A0002001', '160001', 'SW170001', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A'),
('A0002001160001SW170002', 'A0002001', '160001', 'SW170002', 'D', 'D', 'D', 'D', 'D', 'D', 'D', 'D'),
('A0002001160001SW170003', 'A0002001', '160001', 'SW170003', 'D', 'D', 'D', 'D', 'D', 'D', 'D', 'D'),
('A0002001160001SW170005', 'A0002001', '160001', 'SW170005', 'C', 'C', 'C', 'C', 'C', 'C', 'C', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `tbnilaiss`
--

CREATE TABLE IF NOT EXISTS `tbnilaiss` (
  `idnilaiss` varchar(30) NOT NULL,
  `idkompdasar` varchar(10) NOT NULL,
  `idtk` varchar(6) NOT NULL,
  `idsiswa` varchar(10) NOT NULL,
  `observasiss1` varchar(1) NOT NULL,
  `observasiss2` varchar(1) NOT NULL,
  `diriss1` varchar(1) NOT NULL,
  `diriss2` varchar(1) NOT NULL,
  `temanss1` varchar(1) NOT NULL,
  `temanss2` varchar(1) NOT NULL,
  `jurnalss1` varchar(1) NOT NULL,
  `jurnalss2` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbnilaiss`
--

INSERT INTO `tbnilaiss` (`idnilaiss`, `idkompdasar`, `idtk`, `idsiswa`, `observasiss1`, `observasiss2`, `diriss1`, `diriss2`, `temanss1`, `temanss2`, `jurnalss1`, `jurnalss2`) VALUES
('A0001001160001SW170001', 'A0001001', '160001', 'SW170001', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A'),
('A0001001160001SW170002', 'A0001001', '160001', 'SW170002', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B'),
('A0001001160001SW170003', 'A0001001', '160001', 'SW170003', 'D', 'D', 'D', 'D', 'D', 'D', 'D', 'D'),
('A0001001160001SW170005', 'A0001001', '160001', 'SW170005', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B'),
('A0002001160001SW170001', 'A0002001', '160001', 'SW170001', 'D', 'D', 'D', 'D', 'D', 'D', 'D', 'D'),
('A0002001160001SW170002', 'A0002001', '160001', 'SW170002', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A'),
('A0002001160001SW170003', 'A0002001', '160001', 'SW170003', 'C', 'C', 'C', 'C', 'C', 'C', 'C', 'C'),
('A0002001160001SW170005', 'A0002001', '160001', 'SW170005', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B'),
('A0002002160001SW170001', 'A0002002', '160001', 'SW170001', 'C', 'C', 'C', 'C', 'C', 'C', 'C', 'C'),
('A0002002160001SW170002', 'A0002002', '160001', 'SW170002', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A'),
('A0002002160001SW170003', 'A0002002', '160001', 'SW170003', 'B', 'B', 'B', 'B', 'B', 'B', 'B', 'B'),
('A0002002160001SW170005', 'A0002002', '160001', 'SW170005', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `tbsekinduk`
--

CREATE TABLE IF NOT EXISTS `tbsekinduk` (
  `idsekinduk` varchar(20) NOT NULL,
  `idsekolah` varchar(10) DEFAULT NULL,
  `idguru` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `tmt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbsekinduk`
--

INSERT INTO `tbsekinduk` (`idsekinduk`, `idsekolah`, `idguru`, `status`, `tmt`) VALUES
('MD0003GR100002', 'MD0003', 'GR100002', 'Induk', '2010-06-01'),
('MD0003GR140001', 'MD0003', 'GR140001', 'Induk', '2014-11-30'),
('MD0003GR150001', 'MD0003', 'GR150001', 'Non-Induk', '2016-11-30'),
('MD0007GR100002', 'MD0007', 'GR100002', 'Non-Induk', '2013-11-30'),
('MD0008GR150001', 'MD0008', 'GR150001', 'Induk', '2015-10-29'),
('MD0009GR160001', 'MD0009', 'GR160001', 'Induk', '2016-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `tbtahunkelas`
--

CREATE TABLE IF NOT EXISTS `tbtahunkelas` (
  `idtk` varchar(6) NOT NULL,
  `idkelas` varchar(20) NOT NULL,
  `tahunajar` varchar(10) NOT NULL,
  `idguru` varchar(10) NOT NULL,
  `statuskelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbtahunkelas`
--

INSERT INTO `tbtahunkelas` (`idtk`, `idkelas`, `tahunajar`, `idguru`, `statuskelas`) VALUES
('160001', 'TUQwMDAzRK001', '2016-2017', 'GR150001', 'Aktif'),
('160002', 'TUQwMDAzRK002', '2016-2017', 'GR100002', 'Aktif'),
('160003', 'TUQwMDAzRK003', '2016-2017', 'GR100002', 'Aktif'),
('160004', 'TUQwMDA3RK001', '2016-2017', 'GR100002', 'Aktif'),
('160005', 'TUQwMDA5RK001', '2016-2017', 'GR160001', 'Aktif'),
('170001', 'TUQwMDAzRK002', '2017-2018', 'GR100002', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `masterguru`
--
ALTER TABLE `masterguru`
  ADD PRIMARY KEY (`idguru`);

--
-- Indexes for table `masterjabatan`
--
ALTER TABLE `masterjabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masterjenisuji`
--
ALTER TABLE `masterjenisuji`
  ADD PRIMARY KEY (`idjenisuji`);

--
-- Indexes for table `masterkelas`
--
ALTER TABLE `masterkelas`
  ADD PRIMARY KEY (`idkelas`);

--
-- Indexes for table `masterkompdasar`
--
ALTER TABLE `masterkompdasar`
  ADD PRIMARY KEY (`idkompdasar`);

--
-- Indexes for table `masterkompinti`
--
ALTER TABLE `masterkompinti`
  ADD PRIMARY KEY (`idkompinti`);

--
-- Indexes for table `mastermapel`
--
ALTER TABLE `mastermapel`
  ADD PRIMARY KEY (`idmapel`);

--
-- Indexes for table `masterolah`
--
ALTER TABLE `masterolah`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `mastersekolah`
--
ALTER TABLE `mastersekolah`
  ADD PRIMARY KEY (`kodeskul`);

--
-- Indexes for table `mastersiswa`
--
ALTER TABLE `mastersiswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `mastertahunajar`
--
ALTER TABLE `mastertahunajar`
  ADD PRIMARY KEY (`idtahun`);

--
-- Indexes for table `mastertingkat`
--
ALTER TABLE `mastertingkat`
  ADD PRIMARY KEY (`idtingkat`);

--
-- Indexes for table `tbmapellokal`
--
ALTER TABLE `tbmapellokal`
  ADD PRIMARY KEY (`idmapellokal`);

--
-- Indexes for table `tbnilaikd`
--
ALTER TABLE `tbnilaikd`
  ADD PRIMARY KEY (`idnilaikd`);

--
-- Indexes for table `tbnilaikt`
--
ALTER TABLE `tbnilaikt`
  ADD PRIMARY KEY (`idnilaikt`);

--
-- Indexes for table `tbnilaisp`
--
ALTER TABLE `tbnilaisp`
  ADD PRIMARY KEY (`idnilaisp`);

--
-- Indexes for table `tbnilaiss`
--
ALTER TABLE `tbnilaiss`
  ADD PRIMARY KEY (`idnilaiss`);

--
-- Indexes for table `tbsekinduk`
--
ALTER TABLE `tbsekinduk`
  ADD PRIMARY KEY (`idsekinduk`);

--
-- Indexes for table `tbtahunkelas`
--
ALTER TABLE `tbtahunkelas`
  ADD PRIMARY KEY (`idtk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `masterjabatan`
--
ALTER TABLE `masterjabatan`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mastersekolah`
--
ALTER TABLE `mastersekolah`
  MODIFY `kodeskul` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `mastertahunajar`
--
ALTER TABLE `mastertahunajar`
  MODIFY `idtahun` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `mastertingkat`
--
ALTER TABLE `mastertingkat`
  MODIFY `idtingkat` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
