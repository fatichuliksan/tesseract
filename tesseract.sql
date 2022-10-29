-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2022 at 09:03 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tesseract`
--

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `program_studi_id` varchar(255) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `title`, `status`, `program_studi_id`, `file_name`, `file_path`) VALUES
(78, 'PEMBENTUKAN TIM IMPLEMENTASI  SISTEM AKUNTABILITAS KINERJA INSTANSI PEMERINTAH (SAKIP)  TAHUN 2019  DI', NULL, '0', '20221029140012_SK TIM IMPLEMENTASI SAKIP 2019 - fix.PDF', '/public/upload/pdf/20221029140012_SK TIM IMPLEMENTASI SAKIP 2019 - fix.PDF');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `text` text DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `file_pegawai`
--

CREATE TABLE `file_pegawai` (
  `id` int(255) NOT NULL,
  `file_id` int(11) NOT NULL,
  `pegawai_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_pegawai`
--

INSERT INTO `file_pegawai` (`id`, `file_id`, `pegawai_id`) VALUES
(0, 30, 10);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `program_studi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `status`, `program_studi_id`) VALUES
(1, 'Agus Indra Gunawan', 'DOSEN', 6),
(2, 'Akhmad Hendriawan', 'DOSEN', 6),
(3, 'Ali Husein A', 'DOSEN', 6),
(4, 'Alrijadjis', 'DOSEN', 6),
(5, 'Ardik Wijayanto', 'DOSEN', 6),
(6, 'Arif Irwansyah', 'DOSEN', 6),
(7, 'Bambang Sumantri', 'DOSEN', 6),
(8, 'Budi Nur Iman', 'DOSEN', 6),
(9, 'Dedid Cahya Happyanto', 'DOSEN', 6),
(10, 'Edi Satriyanto', 'DOSEN', 6),
(11, 'Elizabeth Anggraeni Amalo', 'DOSEN', 6),
(12, 'Elly Purwantini', 'DOSEN', 6),
(13, 'Eru Puspita', 'DOSEN', 6),
(14, 'Firman Arifin', 'DOSEN', 6),
(15, 'Hary Oktavianto', 'DOSEN', 6),
(16, 'Hendhi Hermawan', 'DOSEN', 6),
(17, 'Kemalasari', 'DOSEN', 6),
(18, 'Legowo Sulistijono', 'DOSEN', 6),
(19, 'Madyono', 'DOSEN', 6),
(20, 'Moch. Rochmad', 'DOSEN', 6),
(21, 'Mohd. Syafrudin', 'DOSEN', 6),
(22, 'Ni\'am Tamami', 'DOSEN', 6),
(23, 'Paulus Susetyo Wardana', 'DOSEN', 6),
(24, 'Reesa Akbar', 'DOSEN', 6),
(25, 'Retno Sukmaningrum', 'DOSEN', 6),
(26, 'Rika Rokhana', 'DOSEN', 6),
(27, 'Ronny Susetyoko', 'DOSEN', 6),
(28, 'Rusminto Tjatur Widodo', 'DOSEN', 6),
(29, 'Santi Anggraini', 'DOSEN', 6),
(30, 'Taufiqurrahman', 'DOSEN', 6),
(31, 'Wahjoe Tjatur Sesulihatien', 'DOSEN', 6),
(32, 'Zainal Arief', 'DOSEN', 6),
(33, 'Ahmad Zainudin', 'DOSEN', 11),
(34, 'Akuwan Saleh', 'DOSEN', 11),
(35, 'Amang Sudarsono', 'DOSEN', 11),
(36, 'Anang Budikarso', 'DOSEN', 11),
(37, 'Ari Wijayanti', 'DOSEN', 11),
(38, 'Aries Pratiarso', 'DOSEN', 11),
(39, 'Arifin', 'DOSEN', 11),
(40, 'Budi Aswoyo', 'DOSEN', 11),
(41, 'Djoko Santoso', 'DOSEN', 11),
(42, 'Hani\'ah Mahmudah', 'DOSEN', 11),
(43, 'Hari Wahjuningrat Suparno', 'DOSEN', 11),
(44, 'Haryadi Amran Darwito', 'DOSEN', 11),
(45, 'I Gede Puja Astawa', 'DOSEN', 11),
(46, 'Ida Anisah', 'DOSEN', 11),
(47, 'Miftahul Huda', 'DOSEN', 11),
(48, 'Mike Yuliana', 'DOSEN', 11),
(49, 'Moch. Zen Samsono Hadi', 'DOSEN', 11),
(50, 'Muhamad Milchan', 'DOSEN', 11),
(51, 'Nanang Syahroni', 'DOSEN', 11),
(52, 'Nur Adi Siswandari', 'DOSEN', 11),
(53, 'Okkie Puspitorini', 'DOSEN', 11),
(54, 'Prima Kristalina', 'DOSEN', 11),
(55, 'Rahardhita Widyatra Sudibyo', 'DOSEN', 11),
(56, 'Reni Soelistijorini', 'DOSEN', 11),
(57, 'Rini Satiti', 'DOSEN', 11),
(58, 'Susi Harliani', 'DOSEN', 11),
(59, 'Titon Dutono', 'DOSEN', 11),
(60, 'Tri Budi Santoso', 'DOSEN', 11),
(61, 'Yoedy Moegiharto', 'DOSEN', 11),
(62, 'Ainur Rofiq Nansur', 'DOSEN', 5),
(63, 'Anang Tjahjono', 'DOSEN', 5),
(64, 'Arman Jaya', 'DOSEN', 5),
(65, 'Diah Septi Yanaratri', 'DOSEN', 5),
(66, 'Dimas Okky Anggriawan', 'DOSEN', 5),
(67, 'Eka Prasetyono', 'DOSEN', 5),
(68, 'Endro Wahjono', 'DOSEN', 5),
(69, 'Epyk Sunarno', 'DOSEN', 5),
(70, 'Era Purwanto', 'DOSEN', 5),
(71, 'Farid Dwi Murdianto', 'DOSEN', 5),
(72, 'Gigih Prabowo', 'DOSEN', 5),
(73, 'Hendik Eko Hadi Suharyanto', 'DOSEN', 5),
(74, 'Imam Dui Agusalim', 'DOSEN', 5),
(75, 'Indhana Sudiharto', 'DOSEN', 5),
(76, 'Indra Ferdiansyah', 'DOSEN', 5),
(77, 'Irianto', 'DOSEN', 5),
(78, 'Lucky Pradigta Setiya Raharja', 'DOSEN', 5),
(79, 'Mochammad Machmud Rifadil', 'DOSEN', 5),
(80, 'Moh. Zaenal Efendi', 'DOSEN', 5),
(81, 'Novie Ayub Windarko', 'DOSEN', 5),
(82, 'Ony Asrarul Qudsi', 'DOSEN', 5),
(83, 'Rachma Prilian Eviningsih', 'DOSEN', 5),
(84, 'Renny Rakhmawati', 'DOSEN', 5),
(85, 'Suhariningsih', 'DOSEN', 5),
(86, 'Suryono', 'DOSEN', 5),
(87, 'Sutedjo', 'DOSEN', 5),
(88, 'Syechu Dwitya Nugraha', 'DOSEN', 5),
(89, 'Yahya Chusna Arif', 'DOSEN', 5),
(90, 'Ahmad Syauqi Ahsan', 'DOSEN', 8),
(91, 'Aliridho Barakbah', 'DOSEN', 8),
(92, 'Arif Basofi', 'DOSEN', 8),
(93, 'Arna Fariza', 'DOSEN', 8),
(94, 'Desy Intan Permatasari', 'DOSEN', 8),
(95, 'Entin Martiana Kusumaningtyas', 'DOSEN', 8),
(96, 'Fadilah Fahrul Hardiansyah', 'DOSEN', 8),
(97, 'Ferry Astika Saputra', 'DOSEN', 8),
(98, 'Fitri Setyorini', 'DOSEN', 8),
(99, 'Hero Yudo Martono', 'DOSEN', 8),
(100, 'Idris Winarno', 'DOSEN', 8),
(101, 'Ira Prasetyaningrum', 'DOSEN', 8),
(102, 'Irma Wulandari', 'DOSEN', 8),
(103, 'Irwan Sumarsono', 'DOSEN', 8),
(104, 'Isbat Uzzin Nadhori', 'DOSEN', 8),
(105, 'Iwan Syarif', 'DOSEN', 8),
(106, 'Jauari Akhmad Nur Hasim', 'DOSEN', 8),
(107, 'M. Udin Harun Al Rasyid', 'DOSEN', 8),
(108, 'Muarifin', 'DOSEN', 8),
(109, 'Nana Ramadijanti', 'DOSEN', 8),
(110, 'Nur Rosyid Mubtadai', 'DOSEN', 8),
(111, 'Rengga Asmara', 'DOSEN', 8),
(112, 'Tessy Badriyah', 'DOSEN', 8),
(113, 'Tita Karlita', 'DOSEN', 8),
(114, 'Tri Hadiah Muliawati', 'DOSEN', 8),
(115, 'Umi Sa\'adah', 'DOSEN', 8),
(116, 'Wiratmoko Yuwono', 'DOSEN', 8),
(117, 'Yuliana Setiowati', 'DOSEN', 8),
(118, 'Adytia Darmawan', 'DOSEN', 10),
(119, 'Anhar Risnumawan', 'DOSEN', 10),
(120, 'Didik Setyo Purnomo', 'DOSEN', 10),
(121, 'Eko Budi Utomo', 'DOSEN', 10),
(122, 'Eko Henfri Binugroho', 'DOSEN', 10),
(123, 'Endah Suryawati Ningrum', 'DOSEN', 10),
(124, 'Endra Pitowarno', 'DOSEN', 10),
(125, 'Eny Kusumawati', 'DOSEN', 10),
(126, 'Farida Gamar', 'DOSEN', 10),
(127, 'Indra Adji Sulistijono', 'DOSEN', 10),
(128, 'Mohamad Nasyir Tamara', 'DOSEN', 10),
(129, 'Nofria Hanafi', 'DOSEN', 10),
(130, 'Novian Fajar Satria', 'DOSEN', 10),
(131, 'Raden Sanggar Dewanto', 'DOSEN', 10),
(132, 'Zaqiatud Darojah', 'DOSEN', 10),
(133, 'Adnan Rachmat Anom Besari', 'DOSEN', 9),
(134, 'Bayu Sandi Marta', 'DOSEN', 9),
(135, 'Bima Sena Bayu Dewantara', 'DOSEN', 9),
(136, 'Dadet Pramadihanto', 'DOSEN', 9),
(137, 'Dewi Mutiara Sari', 'DOSEN', 9),
(138, 'Dias Agata', 'DOSEN', 9),
(139, 'Dwi Kurnia Basuki', 'DOSEN', 9),
(140, 'Fernando Ardila', 'DOSEN', 9),
(141, 'Heny Yuniarti', 'DOSEN', 9),
(142, 'Iwan Kurnianto Wibowo', 'DOSEN', 9),
(143, 'Mochamad Mobed Bachtiar', 'DOSEN', 9),
(144, 'Riyanto Sigit', 'DOSEN', 9),
(145, 'Setiawardhana', 'DOSEN', 9),
(146, 'Sigit Wasista', 'DOSEN', 9),
(147, 'Tri Harsono', 'DOSEN', 9),
(148, 'Achmad Basuki', 'DOSEN', 2),
(149, 'Akhmad Alimudin', 'DOSEN', 2),
(150, 'Aliv Faizal Muhammad', 'DOSEN', 2),
(151, 'Citra Devi Murdaningtyas', 'DOSEN', 2),
(152, 'Dwi Susanto', 'DOSEN', 2),
(153, 'Fardani Annisa Damastuti', 'DOSEN', 2),
(154, 'Hestiasari Rante', 'DOSEN', 2),
(155, 'Martianda Erste Anggraeni', 'DOSEN', 2),
(156, 'Muh. Hasbi Assidiqi', 'DOSEN', 2),
(157, 'Muhammad Agus Zainuddin', 'DOSEN', 2),
(158, 'Novita Astin', 'DOSEN', 2),
(159, 'Rosiyah Faradisa', 'DOSEN', 2),
(160, 'Sritrusta Sukaridhoto', 'DOSEN', 2),
(161, 'Widi Sarinastiti', 'DOSEN', 2),
(162, 'Arrad Ghani Safitra', 'DOSEN', 4),
(163, 'Erik Tridianto', 'DOSEN', 4),
(164, 'Fifi Hesty Sholihah', 'DOSEN', 4),
(165, 'Hendrik Elvian Gayuh Prasetya', 'DOSEN', 4),
(166, 'Imamul Arifin', 'DOSEN', 4),
(167, 'Joke Pratilastiarso', 'DOSEN', 4),
(168, 'Lohdy Diana', 'DOSEN', 4),
(169, 'Nu Rhahida Arini', 'DOSEN', 4),
(170, 'Prima Dewi Permatasari', 'DOSEN', 4),
(171, 'Radina Anggun Nurisma', 'DOSEN', 4),
(172, 'Rif\'ah Amalia', 'DOSEN', 4),
(173, 'Setyo Nugroho', 'DOSEN', 4),
(174, 'Teguh Hady Ariwibowo', 'DOSEN', 4),
(175, 'Artiarini Kusuma N.', 'DOSEN', 7),
(176, 'Fahim Nur Cahya Bagar', 'DOSEN', 7),
(177, 'Halimatus Sa\'dyah', 'DOSEN', 7),
(178, 'Kholid Fathoni', 'DOSEN', 7),
(179, 'Mohamad Safrodin', 'DOSEN', 7),
(180, 'Mohammad Zikky', 'DOSEN', 7),
(181, 'Rizky Yuniar Hakkun', 'DOSEN', 7),
(182, 'Zulhaydar Fairozal Akbar', 'DOSEN', 7),
(183, 'Achmad Djalaludin', 'PEGAWAI', 3),
(184, 'Achmad Huzaini', 'PEGAWAI', 3),
(185, 'Aestatica Ratri', 'PEGAWAI', 3),
(186, 'Agus Fitriyanto', 'PEGAWAI', 3),
(187, 'Ali Shodikin', 'PEGAWAI', 3),
(188, 'Anang Siswanto', 'PEGAWAI', 3),
(189, 'Aris Eko Saputro', 'PEGAWAI', 3),
(190, 'Ashadi Kurniawan', 'PEGAWAI', 3),
(191, 'Bahtiar Arif', 'PEGAWAI', 3),
(192, 'Bahtiar Setiono', 'PEGAWAI', 3),
(193, 'Bambang Purwanto', 'PEGAWAI', 3),
(194, 'Djohan Kuntjoro', 'PEGAWAI', 3),
(195, 'Dwi Gatot Saputro', 'PEGAWAI', 3),
(196, 'Eko Supriyanto', 'PEGAWAI', 3),
(197, 'Eko Susanto', 'PEGAWAI', 3),
(198, 'Erwin Ardiansyah', 'PEGAWAI', 3),
(199, 'Firmansyah Adi Nugroho', 'PEGAWAI', 3),
(200, 'Hariono', 'PEGAWAI', 3),
(201, 'Ilham Iskandariansyah', 'PEGAWAI', 3),
(202, 'Imam Ghozali', 'PEGAWAI', 3),
(203, 'Ismail', 'PEGAWAI', 3),
(204, 'Luluk Badriyah', 'PEGAWAI', 3),
(205, 'Mochamad Bagus Kurniawan', 'PEGAWAI', 3),
(206, 'Mochammad Darwis', 'PEGAWAI', 3),
(207, 'Moga Kurniajaya', 'PEGAWAI', 3),
(208, 'Muchamad Chaninul Fuad', 'PEGAWAI', 3),
(209, 'Muh. Gatut Hermandana', 'PEGAWAI', 3),
(210, 'Muhammad Nugraha Akbar', 'PEGAWAI', 3),
(211, 'Muhammad Rizqi Erliyanto', 'PEGAWAI', 3),
(212, 'Ridwan Achsan Ramadhan', 'PEGAWAI', 3),
(213, 'Rofiulloh Mu\'azin Al-Insof', 'PEGAWAI', 3),
(214, 'Sayudi', 'PEGAWAI', 3),
(215, 'Sidiq Prasetyo', 'PEGAWAI', 3),
(216, 'Subari', 'PEGAWAI', 3),
(217, 'Sulton', 'PEGAWAI', 3),
(218, 'Suprijanto', 'PEGAWAI', 3),
(219, 'Suwito', 'PEGAWAI', 3),
(220, 'Wiwit Priantono', 'PEGAWAI', 3),
(221, 'Yasin Setio Budi', 'PEGAWAI', 3),
(222, 'Abd. Wahid', 'PEGAWAI', 1),
(223, 'Abdul Wachid', 'PEGAWAI', 1),
(224, 'Abdul Wahib', 'PEGAWAI', 1),
(225, 'Achmad Bashori', 'PEGAWAI', 1),
(226, 'Achmad Bilal Hamdani', 'PEGAWAI', 1),
(227, 'Adi Pranoto', 'PEGAWAI', 1),
(228, 'Aditya Muntoro', 'PEGAWAI', 1),
(229, 'Agus Ari Wahjudi', 'PEGAWAI', 1),
(230, 'Agus Setiyawan', 'PEGAWAI', 1),
(231, 'Ahmad Taufiq Hidayat', 'PEGAWAI', 1),
(232, 'Amira Oribia Wanda Sasmita', 'PEGAWAI', 1),
(233, 'Amirul Nur Santi Basori Putri', 'PEGAWAI', 1),
(234, 'Andri Ristanto', 'PEGAWAI', 1),
(235, 'Andri Suryandari', 'PEGAWAI', 1),
(236, 'Anggar Sari', 'PEGAWAI', 1),
(237, 'Anggi Puspita Sari', 'PEGAWAI', 1),
(238, 'Anita Oktavia', 'PEGAWAI', 1),
(239, 'Anjang Susono', 'PEGAWAI', 1),
(240, 'Aripin', 'PEGAWAI', 1),
(241, 'Arista Rahmawati Jamilah', 'PEGAWAI', 1),
(242, 'Bada\' Amru Al Muhtadin', 'PEGAWAI', 1),
(243, 'Bowo Raharjo', 'PEGAWAI', 1),
(244, 'Cholida Ariani', 'PEGAWAI', 1),
(245, 'Dariyo', 'PEGAWAI', 1),
(246, 'Darto Suswili Wahyudi', 'PEGAWAI', 1),
(247, 'Didik Santoso', 'PEGAWAI', 1),
(248, 'Dimas Angga Wahyu Putra', 'PEGAWAI', 1),
(249, 'Dyah Ayu Retnoning Wulan', 'PEGAWAI', 1),
(250, 'Eka Wulandari', 'PEGAWAI', 1),
(251, 'Eko Mardiyanto', 'PEGAWAI', 1),
(252, 'Elsha Qhusnul Romadhona', 'PEGAWAI', 1),
(253, 'Elya Intan Pratiwi', 'PEGAWAI', 1),
(254, 'Endang Purnomowati', 'PEGAWAI', 1),
(255, 'Endro Leksono', 'PEGAWAI', 1),
(256, 'Esti Kusumawardani', 'PEGAWAI', 1),
(257, 'Faisol Abied', 'PEGAWAI', 1),
(258, 'Gentur Pamungkas Putra Widyastoro', 'PEGAWAI', 1),
(259, 'Hardi Agung Wibowo', 'PEGAWAI', 1),
(260, 'Hariyono', 'PEGAWAI', 1),
(261, 'Harun Effendy', 'PEGAWAI', 1),
(262, 'Hary Pujo Widayanto', 'PEGAWAI', 1),
(263, 'Hendi Yanuar Setianto', 'PEGAWAI', 1),
(264, 'Heri Susanto', 'PEGAWAI', 1),
(265, 'Imam Nurul Hidayat', 'PEGAWAI', 1),
(266, 'Irin Tri Anggraini', 'PEGAWAI', 1),
(267, 'Ismail (kerjasama)', 'PEGAWAI', 1),
(268, 'Isnadi', 'PEGAWAI', 1),
(269, 'Isnaeny Maria Ulfa', 'PEGAWAI', 1),
(270, 'Juhri Ismiyanto', 'PEGAWAI', 1),
(271, 'Juniar Murdiana', 'PEGAWAI', 1),
(272, 'Kartika Sari Dewi Ashari', 'PEGAWAI', 1),
(273, 'Katijo', 'PEGAWAI', 1),
(274, 'Khafiduddin', 'PEGAWAI', 1),
(275, 'Kundoyo', 'PEGAWAI', 1),
(276, 'Lini Herma Andriyana', 'PEGAWAI', 1),
(277, 'Lutfifanti Purwaningtyas Wulan Sufandy', 'PEGAWAI', 1),
(278, 'M. Dini', 'PEGAWAI', 1),
(279, 'Mardiyono', 'PEGAWAI', 1),
(280, 'Mariyati', 'PEGAWAI', 1),
(281, 'Marno', 'PEGAWAI', 1),
(282, 'Martha Citra Dewi', 'PEGAWAI', 1),
(283, 'Mat Urip', 'PEGAWAI', 1),
(284, 'Mega Ofita Abrilia', 'PEGAWAI', 1),
(285, 'Moch. Bagus Surahman', 'PEGAWAI', 1),
(286, 'Moch. Chusnan', 'PEGAWAI', 1),
(287, 'Moh. Khoirul Mutakin', 'PEGAWAI', 1),
(288, 'Muh. Makhfut', 'PEGAWAI', 1),
(289, 'Muhammad Bachtiar Dzulfikar', 'PEGAWAI', 1),
(290, 'Muhammad Fahrizal Eka Ariansah', 'PEGAWAI', 1),
(291, 'Musthofa Syahid', 'PEGAWAI', 1),
(292, 'Musthofah', 'PEGAWAI', 1),
(293, 'Nabilatul Fikriyah', 'PEGAWAI', 1),
(294, 'Nur Azizah', 'PEGAWAI', 1),
(295, 'Pindharwati Bandiannaningsih', 'PEGAWAI', 1),
(296, 'Pipid Muntoro', 'PEGAWAI', 1),
(297, 'Poerwanto', 'PEGAWAI', 1),
(298, 'Puspasari Susanti', 'PEGAWAI', 1),
(299, 'Putri Puji Rahayu', 'PEGAWAI', 1),
(300, 'Rahmad Faisol', 'PEGAWAI', 1),
(301, 'Reny Ayu Aprilliyanti Putri', 'PEGAWAI', 1),
(302, 'Ria Sukmawati', 'PEGAWAI', 1),
(303, 'Rizal Mulia', 'PEGAWAI', 1),
(304, 'Ruhul Akbar', 'PEGAWAI', 1),
(305, 'Siti Ayu Mulyantika', 'PEGAWAI', 1),
(306, 'Siti Maisyaroh', 'PEGAWAI', 1),
(307, 'Soemantri', 'PEGAWAI', 1),
(308, 'Suci Rahayu', 'PEGAWAI', 1),
(309, 'Sudarto', 'PEGAWAI', 1),
(310, 'Sukarman', 'PEGAWAI', 1),
(311, 'Sulistiyani', 'PEGAWAI', 1),
(312, 'Sumiarsih', 'PEGAWAI', 1),
(313, 'Suratman Hadi Nopianto', 'PEGAWAI', 1),
(314, 'Suratno', 'PEGAWAI', 1),
(315, 'Suria Hardita Duanti Putri', 'PEGAWAI', 1),
(316, 'Suroto', 'PEGAWAI', 1),
(317, 'Sutikno', 'PEGAWAI', 1),
(318, 'Suwaji', 'PEGAWAI', 1),
(319, 'Syahirrudin', 'PEGAWAI', 1),
(320, 'Syaifullah', 'PEGAWAI', 1),
(321, 'Syamsul Bahri', 'PEGAWAI', 1),
(322, 'Teguh Setyo Utomo', 'PEGAWAI', 1),
(323, 'Tonny Adi Hartanto', 'PEGAWAI', 1),
(324, 'Tri Setyaningsih', 'PEGAWAI', 1),
(325, 'Umang Prasetyo', 'PEGAWAI', 1),
(326, 'Warjilan', 'PEGAWAI', 1),
(327, 'Wibisono', 'PEGAWAI', 1),
(328, 'Yeni Suryani', 'PEGAWAI', 1),
(329, 'Yetty Handayani', 'PEGAWAI', 1),
(330, 'Zakaria Akhmad Ubaidillah', 'PEGAWAI', 1);

-- --------------------------------------------------------

--
-- Table structure for table `program_studi`
--

CREATE TABLE `program_studi` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program_studi`
--

INSERT INTO `program_studi` (`id`, `name`) VALUES
(1, 'ADMINISTRASI'),
(2, 'MMB'),
(3, 'PLP'),
(4, 'SPE'),
(5, 'T ELEKTRO INDUSTRI'),
(6, 'T ELEKTRONIKA'),
(7, 'T GAME'),
(8, 'T INFORMATIKA'),
(9, 'T KOMPUTER'),
(10, 'T MEKATRONIKA'),
(11, 'T TELEKOMUNIKASI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_pegawai`
--
ALTER TABLE `file_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_studi`
--
ALTER TABLE `program_studi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `program_studi`
--
ALTER TABLE `program_studi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
