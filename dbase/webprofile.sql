-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2025 at 04:12 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webprofile`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` longtext,
  `image` varchar(255) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `judul`, `keterangan`, `image`, `tanggal`) VALUES
(12, 'Jumat Menanam: Aksi Juna di Tebing Keraton', '<p>UPTD Tahura mengadakan kegiatan Jumat Menanam (Juna) pada spot Tebing Keraton untuk memperkuat konservasi hutan dan meningkatkan kesadaran lingkungan masyarakat.</p>', 'agenda_1.jpg', '2024-07-05 00:00:00'),
(13, 'Koordinasi Kehutanan Jabar di Tahura', '<p>Pada Juli 2025, Dinas Kehutanan Provinsi Jawa Barat menyelenggarakan \"Koordinasi Kawasan Hutan\" di Tahura Djuanda dengan menghadirkan berbagai pemangku kepentingan.</p>', 'agenda_2.jpg', '2025-07-01 13:00:00'),
(14, 'Kunjungan dan Pameran Produk Lokal di Tahura', '<p>Tanggal 21 Desember 2024, acara \"Pasar Pasisian Leuweung\" diselenggarakan di Tahura dengan pameran produk UKM lokal untuk mendukung ekonomi masyarakat sekitar.</p>', 'agenda_3.jpg', '2024-12-21 07:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `user` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`user`, `password`, `nama`, `foto`) VALUES
('admin', 'YWRtaW4=', 'Administrator', 'user2-160x160.jpg'),
('user', 'dXNlcg==', 'user', 'avatar5.png');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` longtext,
  `image` varchar(255) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `keterangan`, `image`, `tanggal`, `kategori`) VALUES
(31, 'Revitalisasi Tahura Djuanda Tetap Buka untuk Umum', '<p>Kawasan Tahura Djuanda saat ini sedang dalam proses revitalisasi. Meski begitu, pengunjung tetap diperbolehkan masuk dan berwisata. Beberapa fasilitas mungkin tidak bisa diakses, namun wisata alam seperti hutan pinus, Goa Belanda, dan Tebing Keraton tetap dibuka untuk umum.</p>', 'berita_1.jpg', '2025-06-30 10:00:00', 1),
(35, '300?m Lahan Rusak di Tahura Dijaga Kembali', '<p>Sebanyak 300?meter lahan di Tahura Djuanda sempat rusak akibat aktivitas motor trail ilegal. Pengelola memperkirakan perlu sebulan untuk pemulihan vegetasi dan area konservasi.</p>', 'berita_2.jpg', '2024-02-23 13:00:00', 1),
(36, 'Rusa Tutul Baru Resmi di Tahura Djuanda', '<p>Pada 20 Agustus 2023, Gubernur Jabar meresmikan kehadiran rusa tutul di Tahura. Rusa ini kini dapat dilihat di sekitar lokasi patung Djuanda, menambah koleksi satwa di kawasan.</p>', 'berita_3.jpg', '2024-12-01 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `no` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `info` text NOT NULL,
  `jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`no`, `judul`, `desc`, `info`, `jenis`) VALUES
(0, 'Tahura Djuanda', 'cwwot49m5lasb3q11.jpeg', '', '3'),
(0, 'Tahura Djuanda', 'nice-for-not-ordinary1.jpg', '', '3'),
(0, 'Makanan Khas Jawa Barat', 'IMG-20220323-WA0003-1024x5761.jpg', '', '1'),
(0, 'SDM Tahura Djuanda', 'Destinasi-Tahura1.jpeg', '', '2'),
(0, 'SDM Tahura Djuanda', '17202909_762617040560516_3476698077498900897_n1.jpg', '', '2'),
(0, 'Tahura Djuanda', '15327343_10211780770738806_6253178354573760971_n1.jpg', '', '3'),
(0, 'Tahura Djuanda', '13077080_961485480625244_1302672399881165567_n1.jpg', '', '2'),
(0, 'Tahura Djuanda', '684183_7201.jpg', '', '3'),
(0, 'Tahura Djuanda', 'goa-belanda-700x5001.jpeg', '', '3'),
(0, 'Tahura Djuanda', 'tahura-djuanda1.jpg', '', '3'),
(0, 'Tahura Djuanda', 'TAHURA-71.jpg', '', '3'),
(0, 'SDM Tahura Djuanda', 'Pengelola-Tahura-Ir-H-Djuanda-saat-silaturahmi-dan-syukuran1.jpg', '', '2'),
(0, 'Makanan Khas Jawa Barat', 'makanan-khas-bandung1.png', '', '1'),
(0, 'Makanan Khas Jawa Barat', 'oleh-oleh_khas_bandung21.png', '', '1'),
(0, 'Makanan', 'm311.png', '', '1'),
(0, 'Makanan', 'm12.png', '', '1'),
(0, 'Tahura Djuanda', 'Peta_Taman_Hutan_Raya_(Tahura)_Ir__H__Djuanda.jpeg', '', '3'),
(0, 'Tahura Djuanda', '142371381_142276021041512_1243644276616272434_n-FILEminimizer1.jpg', '', '3');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `objek_wisata`
--

CREATE TABLE `objek_wisata` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL,
  `deskripsi` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `objek_wisata`
--

INSERT INTO `objek_wisata` (`id`, `nama`, `latitude`, `longitude`, `deskripsi`) VALUES
(1, 'aa', '-6.175100', '106.865000', 'aa');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` longtext,
  `image` varchar(255) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `judul`, `keterangan`, `image`, `tanggal`) VALUES
(12, 'Apel Siaga Nataru 2025 di Tahura Djuanda', '<p>UPTD Tahura Djuanda dan petugas keamanan menggelar Apel Siaga menjelang Natal & Tahun Baru 2025 untuk memastikan kenyamanan dan keamanan pengunjung.</p>', 'pengumuman_1.jpg', '2024-12-26 07:30:00'),
(13, 'Lelang Hak Parkir Dilakukan di Tahura', '<p>Dinas Kehutanan Jabar mengumumkan lelang hak pengelolaan lahan parkir di area Tahura pada 12 Juni 2025. Masyarakat dan mitra UKM dapat mendaftar sesuai ketentuan.</p>', 'pengumuman_2.jpg', '2025-06-12 09:00:00'),
(14, 'Area Bermain Anak Resmi Dibuka', '<p>Area bermain anak baru di Tahura Djuanda resmi dibuka sebagai bagian dari program \"Selasa Informasi Tahura\" untuk memperkaya fasilitas keluarga dan edukasi pengunjung.</p>', 'pengumuman_3.jpg', '2025-06-29 15:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `perihal` varchar(255) DEFAULT NULL,
  `pesan` longtext,
  `status` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `trash` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `nama`, `email`, `perihal`, `pesan`, `status`, `tanggal`, `trash`) VALUES
(11, 'tes sana', 'tes@mail.com', 'tes@mail.com', 'tes saja ya min', 1, '2022-01-28 00:00:00', 1),
(12, 'Om Toni', 'toni@om.com', 'Tes Pesan', 'Kirim Sekarang', 1, '2022-01-28 00:00:00', 1),
(14, 'Om Toni', 'freelancechanel@gmail.com', 'Presentasi Web Profile', 'Silakan Didownload buat daerah yang belum punya profile online ', 1, '2023-01-30 08:46:18', 1),
(15, 'Khairul', 'khairulhuda242@gmail.com', 'Tes', 'Tes', 1, '2024-01-16 11:50:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `nama` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `peta` longtext,
  `logo` varchar(255) DEFAULT NULL,
  `sejarah` longtext,
  `visi` varchar(255) DEFAULT NULL,
  `misi` longtext,
  `lambang` longtext,
  `struktur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`nama`, `kota`, `email`, `telp`, `twitter`, `facebook`, `instagram`, `peta`, `logo`, `sejarah`, `visi`, `misi`, `lambang`, `struktur`) VALUES
('Tahura Djuanda', 'Kec. Cimenyan, Kabupaten Bandung', 'tamanhutanrayadjuanda@gmail.com', '081234567890', '#', '#', '#', 'https://maps.google.com/maps?width=600&height=400&hl=en&q=Tahura%20Djuanda&t=&z=14&ie=UTF8&iwloc=B&output=embed', 'logops.png', '<p class=\"MsoNormal\" style=\"text-align:justify\">Kawasan yang sekarang dikenal sebagai <strong>Taman Hutan Raya Ir. H. Djuanda</strong> awalnya bernama <strong>Hutan Lindung Pulosari</strong>, dikelola oleh pemerintah Hindia Belanda sejak tahun <strong>1912</strong>, berawal dari pembangunan terowongan penyadapan air Sungai Cikapundung-yang kini dikenal sebagai <strong>Gua Belanda</strong>-yang diresmikan pada tahun <strong>1922</strong> sebagai bagian dari pengelolaan air bersih.</p>\n\n<p class=\"MsoNormal\" style=\"text-align:justify;text-indent:36.0pt\">Setelah Indonesia merdeka, kawasan ini menjadi aset pemerintah Indonesia dan pada tahun <strong>1960</strong> Gubernur Jawa Barat <strong>Mashudi</strong> menggagas transformasi menjadi Kebun Raya Wisata dan Taman Hutan Wisata. Pada tanggal <strong>23 Agustus 1965</strong>, kawasan ini resmi dinamakan <strong>Kebun Raya Rekreasi Ir. H. Djuanda</strong>, untuk mengenang jasa tokoh nasional dan perdana menteri terakhir era parlementer, <strong>Ir. H. Djuanda Kartawidjaja</strong>.</p>\n\n<p class=\"MsoNormal\" style=\"text-align:justify\">Selanjutnya pada tahun <strong>1978</strong>, pengelolaan dialihkan ke <strong>Perum Perhutani Jawa Barat</strong>, dan kemudian pada tanggal <strong>14 Januari 1985</strong> - bertepatan dengan ulang tahun Ir. H. Djuanda - Presiden Soeharto mengeluarkan <strong>Keputusan Presiden No. 3 Tahun 1985</strong>, secara resmi menetapkan kawasan ini sebagai <strong>Taman Hutan Raya pertama di Indonesia</strong>.</p>\n\n<p class=\"MsoNormal\" style=\"text-align:justify\">Secara geografis, Tahura Djuanda mencakup area seluas ?<strong>526,98 ha</strong>, membentang dari <strong>Curug Dago di Dago Pakar</strong> hingga <strong>Maribaya</strong> di Lembang. Terletak pada ketinggian <strong>770-1330 mdpl</strong>, kawasan ini menggabungkan alam sekunder dan hutan tanaman seperti <strong>Pinus merkusii</strong>, dengan lebih dari <strong>2.500 pohon dari 112 spesies</strong>.</p>', 'Pengembangan dan pengelolaan Taman Hutan Raya Ir. H. Djuanda yang berwawasan lingkungan demi kelestarian hutan dan kesejahteraan rakyat.', '\n<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: none; outline: none; font-size: 15px; line-height: 1.6em; color: rgb(0, 0, 0); font-family: Exo, sans-serif; text-align: justify;\">1.&nbsp;Meningkatkan kontribusi pemanfaatan kawasan hutan melalui pariwisata alam untuk konservasi, sosial, ekonomi, dan budaya masyarakat.</p>\n\n<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: none; outline: none; font-size: 15px; line-height: 1.6em; color: rgb(0, 0, 0); font-family: Exo, sans-serif; text-align: justify;\">2.&nbsp;Mengoptimalkan distribusi manfaat pariwisata alam bagi semua pihak.</p>\n\n<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: none; outline: none; font-size: 15px; line-height: 1.6em; color: rgb(0, 0, 0); font-family: Exo, sans-serif; text-align: justify;\">3.&nbsp;Meningkatkan kesadaran dan pemahaman terhadap manfaat sumber daya alam hayati dan ekosistemnya.</p>\n\n<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: none; outline: none; font-size: 15px; line-height: 1.6em; color: rgb(0, 0, 0); font-family: Exo, sans-serif; text-align: justify;\">4.&nbsp;Meningkatkan pengembangan produk aneka pariwisata alam.</p>\n\n<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: none; outline: none; font-size: 15px; line-height: 1.6em; color: rgb(0, 0, 0); font-family: Exo, sans-serif; text-align: justify;\">5.&nbsp;Menciptakan mekanisme keterlibatan masyarakat dalam proses perencanaan, pengelolaan, dan kemitraan penyelenggara pariwisata alam.</p>\n', '\n<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: none; outline: none; font-size: 15px; line-height: 1.6em; color: rgb(0, 0, 0); font-family: Exo, sans-serif;\"><span style=\"font-weight: bolder;\">BENTUK LAMBANG</span></p>\n<ol style=\"font-size: 15px; color: rgb(0, 0, 0); font-family: Exo, sans-serif;\">\n  <li>Lambang berbentuk lingkaran dengan dominasi warna hijau dan kuning.</li>\n  <li>Di bagian tengah terdapat simbol pohon menjulang yang melambangkan kelestarian hutan dan semangat konservasi.</li>\n  <li>Tulisan \"TAMAN HUTAN RAYA IR. H. DJUANDA\" dan \"JAWA BARAT\" mengelilingi lambang, menunjukkan identitas kawasan konservasi milik pemerintah provinsi.</li>\n</ol>\n\n<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: none; outline: none; font-size: 15px; line-height: 1.6em; color: rgb(0, 0, 0); font-family: Exo, sans-serif;\"><span style=\"font-weight: bolder;\">ARTI DAN MAKNA LAMBANG</span></p>\n<ol style=\"font-size: 15px; color: rgb(0, 0, 0); font-family: Exo, sans-serif;\">\n  <li>Simbol pohon berlapis menggambarkan lapisan hutan tropis yang menjadi ciri khas Tahura Djuanda.</li>\n  <li>Warna hijau melambangkan kesuburan, ketenangan, dan keseimbangan ekosistem.</li>\n  <li>Warna kuning melambangkan harapan, semangat pembangunan berkelanjutan, dan keterbukaan terhadap wisata dan edukasi lingkungan.</li>\n  <li>Bentuk melengkung pohon juga menyerupai tangan terbuka sebagai simbol keramahan terhadap pengunjung dan masyarakat.</li>\n</ol>\n', 'organisasi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` longtext,
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `nama`, `keterangan`, `image`, `thumb`) VALUES
(1, 'Tebing Keraton', 'Tebing Keraton adalah salah satu spot paling ikonik di kawasan Tahura Djuanda, Bandung. Terletak di ujung timur area taman hutan, tempat ini menawarkan pemandangan hutan lebat dari ketinggian dan fenomena lautan kabut yang muncul saat pagi hari. Tebing ini sering dijadikan tempat favorit untuk menikmati sunrise dan fotografi alam. Udara yang sejuk dan suasana yang tenang menjadikannya lokasi yang cocok untuk healing dan pelarian dari hiruk-pikuk kota.', 'tebing_keraton.jpg', 'slider1.jpg'),
(2, 'Hutan Pinus', 'Hutan pinus yang ada di Tahura Djuanda menawarkan suasana rindang, teduh, dan udara segar. Tempat ini menjadi salah satu area favorit pengunjung untuk bersantai, berjalan kaki, atau berfoto karena atmosfernya yang damai. Jalur-jalur setapak di antara pepohonan pinus ini juga sering digunakan untuk trekking ringan. Keunikan area ini adalah nuansa forest escape yang kental meski lokasinya masih berada tidak jauh dari pusat kota Bandung.', 'hutan_pinus.jpg', 'slider2.jpg'),
(3, 'Goa Belanda', 'Goa Belanda merupakan salah satu peninggalan kolonial yang berada di dalam kawasan Tahura Djuanda. Terowongan ini dulunya digunakan oleh tentara Belanda sebagai markas komunikasi dan pertahanan. Panjang lorongnya sekitar 144 meter dan memiliki cabang-cabang jalan kecil di dalamnya. Goa ini menghadirkan pengalaman eksplorasi sejarah yang unik, dengan nuansa sejuk, gelap, dan arsitektur tua yang masih asli. Cocok bagi pengunjung yang tertarik dengan wisata edukatif dan sejarah.', 'goa_belanda.jpg', 'slider3.jpg'),
(4, 'Curug Omas', 'Curug Omas adalah air terjun yang berada di kawasan Tahura Djuanda, tepatnya di daerah Maribaya. Curug ini memiliki tinggi sekitar 30 meter dan berada di antara dua jembatan gantung yang sering jadi spot foto wisatawan. Air yang mengalir deras dari sungai Cikawari ini menambah suasana alami dan sejuk di area sekitar. Selain panorama air terjunnya yang indah, suara gemuruh air dan pepohonan rimbun menjadikan Curug Omas sebagai salah satu tempat healing paling alami di Bandung.', 'curug_omas.jpg', 'slider4.jpg'),
(5, 'Museum Ir. H. Djuanda', 'Museum Ir. H. Djuanda adalah museum kecil yang terletak di dalam kawasan Tahura Djuanda. Museum ini didedikasikan untuk mengenang jasa Ir. H. Djuanda, tokoh penting dalam sejarah kemaritiman Indonesia. Di dalamnya terdapat koleksi foto-foto, dokumen sejarah, dan informasi mengenai perjuangan Djuanda. Meskipun mungil, museum ini menambah nilai edukatif dalam kunjungan ke Tahura. Cocok sebagai destinasi singkat sebelum atau sesudah menjelajahi alam.', 'museum_djuanda.jpg', 'slider5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `ip` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `online` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`ip`, `date`, `hits`, `online`, `time`) VALUES
('::1', '2022-12-16', 73, '1671199733', '2022-12-16 06:03:37'),
('::1', '2022-12-17', 3, '1671237672', '2022-12-17 01:38:17'),
('::1', '2022-12-23', 31, '1671780828', '2022-12-23 06:29:35'),
('::1', '2022-12-28', 1, '1672268139', '2022-12-28 23:55:39'),
('::1', '2022-12-29', 8, '1672269581', '2022-12-29 00:04:48'),
('::1', '2023-01-06', 2, '1672978763', '2023-01-06 05:10:42'),
('::1', '2023-01-17', 2, '1673996056', '2023-01-17 22:30:29'),
('::1', '2023-01-20', 77, '1674222284', '2023-01-20 01:06:46'),
('::1', '2023-01-21', 33, '1674277123', '2023-01-21 00:15:34'),
('::1', '2023-01-24', 30, '1674601113', '2023-01-24 00:02:19'),
('::1', '2023-01-25', 334, '1674687594', '2023-01-25 00:03:53'),
('::1', '2023-01-26', 889, '1674773990', '2023-01-26 00:00:05'),
('::1', '2023-01-27', 149, '1674858669', '2023-01-27 00:00:08'),
('::1', '2023-01-28', 406, '1674945407', '2023-01-28 00:23:01'),
('::1', '2023-01-29', 26, '1674989860', '2023-01-29 04:00:16'),
('::1', '2023-01-30', 39, '1675036375', '2023-01-30 00:26:55'),
('::1', '2024-01-14', 74, '1705263264', '2024-01-14 15:08:30'),
('::1', '2024-01-15', 168, '1705357710', '2024-01-15 03:30:18'),
('::1', '2024-01-16', 52, '1705425676', '2024-01-16 03:23:04'),
('127.0.0.1', '2024-01-16', 1, '1705423496', '2024-01-16 17:44:56'),
('::1', '2024-01-17', 9, '1705496625', '2024-01-17 13:59:50'),
('::1', '2024-01-22', 15, '1705951904', '2024-01-22 19:58:24'),
('::1', '2024-01-30', 2, '1706634247', '2024-01-30 18:03:37'),
('::1', '2024-02-04', 3, '1707045933', '2024-02-04 12:24:17'),
('::1', '2024-02-05', 2, '1707118456', '2024-02-05 08:33:56'),
('::1', '2025-07-02', 260, '1751487434', '2025-07-02 14:50:26'),
('::1', '2025-07-03', 197, '1751551330', '2025-07-03 01:16:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
