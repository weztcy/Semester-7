-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2024 at 02:16 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-prajagamer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updateAt` datetime(3) NOT NULL,
  `nip` varchar(191) NOT NULL,
  `telp_admin` varchar(191) NOT NULL,
  `role` varchar(191) NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `telp_user` varchar(191) NOT NULL,
  `nik` varchar(191) NOT NULL,
  `photo` varchar(191) NOT NULL,
  `place_birth` varchar(191) NOT NULL,
  `birth_date` varchar(191) NOT NULL,
  `province_domicile` varchar(191) NOT NULL,
  `city_domicile` varchar(191) NOT NULL,
  `address_domicile` varchar(191) NOT NULL,
  `province_ktp` varchar(191) NOT NULL,
  `city_ktp` varchar(191) NOT NULL,
  `address_ktp` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updateAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `telp_user`, `nik`, `photo`, `place_birth`, `birth_date`, `province_domicile`, `city_domicile`, `address_domicile`, `province_ktp`, `city_ktp`, `address_ktp`, `createdAt`, `updateAt`) VALUES
(1, 1, '08121313741984', '028331330123821', 'C:\\Users\\Virnika Shefira\\Desktop\\Kuliah\\Semester 7\\KP\\prajagamer-1\\src\\uploads\\photo\\1725191819529-WhatsApp Image 2023-09-29 at 21.48.39_f145f89a.jpg', 'Semarang', '2003-01-20', 'Jawa Tengah', 'Semarang', 'Jl.Pemuda no.18', 'Kalimantan Barat', 'Pontianak', 'Jl.Lingkar', '2024-09-01 11:57:00.008', '2024-09-01 12:02:34.786');

-- --------------------------------------------------------

--
-- Table structure for table `regist`
--

CREATE TABLE `regist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cv` varchar(191) NOT NULL,
  `recommend_letter` varchar(191) NOT NULL,
  `score_list` varchar(191) NOT NULL,
  `portofolio` varchar(191) DEFAULT NULL,
  `available_space` tinyint(1) DEFAULT NULL,
  `first_period` datetime(3) DEFAULT NULL,
  `last_period` datetime(3) DEFAULT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updateAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regist`
--

INSERT INTO `regist` (`id`, `user_id`, `cv`, `recommend_letter`, `score_list`, `portofolio`, `available_space`, `first_period`, `last_period`, `createdAt`, `updateAt`) VALUES
(1, 1, 'C:\\Users\\Virnika Shefira\\Desktop\\Kuliah\\Semester 7\\KP\\prajagamer-1\\src\\uploads\\cv\\1725191819537-Resume_4514_A11.2021.13841.pdf', '', 'C:\\Users\\Virnika Shefira\\Desktop\\Kuliah\\Semester 7\\KP\\prajagamer-1\\src\\uploads\\score_list\\1725191819544-score.pdf', '', NULL, NULL, NULL, '2024-09-01 11:57:00.008', '2024-09-01 11:57:00.008');

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `univ_name` varchar(191) NOT NULL,
  `nim` varchar(191) NOT NULL,
  `major` varchar(191) NOT NULL,
  `ipk` double NOT NULL,
  `semester` varchar(191) NOT NULL,
  `name_supervisor` varchar(191) NOT NULL,
  `telp_supervisor` varchar(191) NOT NULL,
  `email_supervisor` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updateAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`id`, `user_id`, `univ_name`, `nim`, `major`, `ipk`, `semester`, `name_supervisor`, `telp_supervisor`, `email_supervisor`, `createdAt`, `updateAt`) VALUES
(1, 1, 'Universitas Dian Nuswantoro', 'a11.2021.13xxx', 'Teknik Informatika', 3.5, '7', 'Dady', '08193816331', 'dady@gmail.com', '2024-09-01 11:57:00.008', '2024-09-01 12:02:34.803');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `status` enum('Pending','Verifying','Accepted','Rejected') NOT NULL DEFAULT 'Pending',
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updateAt` datetime(3) NOT NULL,
  `deleteAt` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `status`, `createdAt`, `updateAt`, `deleteAt`) VALUES
(1, 'Yohanes Dimas ', 'dimas@gmail.com', '$2a$10$lKx/9gn/fbUIJaMRP9vCn.RQic.YqRBFWfXX/ZNqb2aWZoMizBWwi', 'Verifying', '2024-09-01 11:57:00.008', '2024-09-01 11:57:58.566', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vacancies`
--

CREATE TABLE `vacancies` (
  `id` int(11) NOT NULL,
  `name_banner` varchar(191) NOT NULL,
  `banner` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('437d3859-0e15-4054-a95d-4fc2e9bdd814', '29ee4450c611748203590c9558f8b4b38837d78f269a57ba569bf7fea5dc0d7e', '2024-09-01 08:37:44.529', '20240901083744_add_roleadmin', NULL, NULL, '2024-09-01 08:37:44.523', 1),
('7b2ea50d-ccd6-41db-bfe5-dbc88450b7a8', '0724b66722ddd6d41950a74507e76d965bb5ba0d229c678b3da44ed47624dd9f', '2024-09-01 07:49:40.840', '20240829142840_create_db_prajagamer', NULL, NULL, '2024-09-01 07:49:40.641', 1),
('8e853778-490c-433e-be8b-c15e11625312', '0ab0e77daa14b7ae1c4bc7a11531c0f8fa2ae6256bafcda1f426f4b25992dfcd', '2024-09-01 07:49:52.144', '20240901074952_updated_adminattribute_and_datatype', NULL, NULL, '2024-09-01 07:49:52.129', 1),
('cb690fb6-9a26-4d67-81b5-7bdd28435f38', 'dfd990b44c224960d236b5b71390c9a3b9674a630aad8fa786874d6b868f7258', '2024-09-01 10:38:16.898', '20240901103816_add_table_vacancies', NULL, NULL, '2024-09-01 10:38:16.880', 1),
('f4c9fc20-3908-4afc-ad76-eb9fa100d6aa', 'ef63e4c841c8609cec50ce6a22c5439e578ca54f557db2ff8480d6ce12a730c4', '2024-09-01 07:49:40.886', '20240831100612_update_role', NULL, NULL, '2024-09-01 07:49:40.842', 1),
('f6d6ac3c-de9d-4e85-9885-ac2cd8e0d37e', '7bee0c625bd16b875b13070d064293a39d49e1e9356a7ef6734282d476d2ac4b', '2024-09-01 07:49:40.904', '20240901074539_create_only', NULL, NULL, '2024-09-01 07:49:40.888', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Admin_email_key` (`email`),
  ADD UNIQUE KEY `Admin_nip_key` (`nip`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Profile_user_id_key` (`user_id`),
  ADD UNIQUE KEY `Profile_nik_key` (`nik`);

--
-- Indexes for table `regist`
--
ALTER TABLE `regist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Regist_user_id_key` (`user_id`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `University_user_id_key` (`user_id`),
  ADD UNIQUE KEY `University_nim_key` (`nim`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_name_key` (`name`),
  ADD UNIQUE KEY `User_email_key` (`email`);

--
-- Indexes for table `vacancies`
--
ALTER TABLE `vacancies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `regist`
--
ALTER TABLE `regist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vacancies`
--
ALTER TABLE `vacancies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `Profile_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `regist`
--
ALTER TABLE `regist`
  ADD CONSTRAINT `Regist_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `university`
--
ALTER TABLE `university`
  ADD CONSTRAINT `University_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
