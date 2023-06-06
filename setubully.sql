-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 02:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `setubully`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(12, 'Cyberbullying', 'category-images/h9LUFM0HPvB1FCfwZLbxZIyZcwgwzWN1dTaOYi02.jpg', '<p>Laporkan langsung bentuk tindakan bullying yang dilakukan melalui media sosial, pesan teks, atau platform digital lainnya. Cyberbullying dapat melibatkan penghinaan, penyebaran rumor, pelecehan secara online, atau pencemaran nama baik melalui komentar negatif atau gambar yang merendahkan.</p>', 'cyberbullying', '2023-06-06 07:45:39', '2023-06-06 07:45:52'),
(13, 'Verbal Bullying', 'category-images/nwAEJm1S62yOVP6UgBVYLBRewLyjlL6ZyzOqO4Bm.png', '<p>Laporkan hal yang melibatkan penghinaan, ejekan, penghinaan, atau pengucilan secara lisan. Ini bisa terjadi dalam percakapan sehari-hari, di kelas, atau dalam kelompok sosial. Contohnya termasuk mengolok-olok penampilan fisik, cerdas, latar belakang etnis, atau agama seseorang.</p>', 'verbal-bullying', '2023-06-06 07:48:03', '2023-06-06 07:48:03'),
(14, 'Bullying Fisik', 'category-images/wgFIvo27IFiZZ26SZQjDV3umH9NmBOmRKTET1hBa.jpg', '<p>Laporkanlah Tindakan yang melibatkan penggunaan kekerasan fisik atau ancaman fisik untuk menyakiti atau mengintimidasi seseorang. Ini bisa berupa pukulan, tendangan, dorongan, atau ancaman menggunakan kekuatan fisik.</p>', 'bullying-fisik', '2023-06-06 07:49:38', '2023-06-06 07:49:38'),
(15, 'Bullying emosional', 'category-images/1qmUNVAhceaG1DdZRk0nHPeQH2XAqda1qoYFEPGZ.jpg', '<p>Segera beri kabar apabila ada bentuk bullying yang melibatkan penghinaan, pengabaian, isolasi, atau pengucilan yang bertujuan untuk merendahkan atau merusak keadaan emosional seseorang. Ini bisa termasuk mengabaikan seseorang, menyebabkan rasa malu atau cemas, atau membuat seseorang merasa tidak berharga.</p>', 'bullying-emosional', '2023-06-06 07:51:48', '2023-06-06 07:51:48'),
(16, 'Bullying Seksual', 'category-images/2XTSIhm8t6SdIfiXiW7Ccf0Tc2t1n7saAfx4CPi9.jpg', '<p>Laporkan langsung apabila mendapati pelaku atau korban yang melibatkan perilaku tidak diinginkan atau tidak pantas yang bersifat seksual, termasuk pelecehan seksual, komentar yang tidak senonoh, atau ancaman untuk memperoleh layanan seksual melalui penekanan atau pemerasan.</p>', 'bullying-seksual', '2023-06-06 07:53:21', '2023-06-06 07:53:21');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `excerpt` text NOT NULL,
  `student_nik` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `place` enum('out','in') NOT NULL,
  `status` enum('0','1','2') NOT NULL,
  `privacy` enum('anonymous','public') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `date`, `title`, `slug`, `body`, `excerpt`, `student_nik`, `category_id`, `image`, `place`, `status`, `privacy`, `created_at`, `updated_at`) VALUES
(201, '2023-06-06', 'Penghinaan', 'penghinaan', '<p>Saya dihina karena kumis saya yang sangat tebal oleh teman kolega saya dikampus.</p>', 'Saya dihina karena kumis saya yang sangat tebal ol ...', '1234561234567890', 12, 'complaint-images/seHwIw8hLUjLKyTSPSeCZn7Podw7oc802VgWk6SZ.jpg', 'out', '0', 'public', '2023-06-06 08:01:55', '2023-06-06 08:01:55'),
(202, '2023-06-05', 'Dicaci dosen', 'dicaci-dosen', '<p>Saya dicaci oleh dosen fisika karena terlalu bodoh. Sehingga saya sangat tidak suka masuk matkulnya</p>', 'Saya dicaci oleh dosen fisika karena terlalu bodoh ...', '1234556789061234', 13, 'complaint-images/eRglbkFtXgVHqkNJiagKrlSUzySVf3IS6XgzXygR.jpg', 'in', '1', 'anonymous', '2023-06-06 08:47:54', '2023-06-06 09:10:04'),
(203, '2023-05-31', 'Bullying Fisik', 'bullying-fisik', '<p>Saya dihajar habis-habisan oleh pasukan PSHT Yogyakarta dimana ketika saya lewat, teman saya yang mengenali saya langsung menunjuk dan menghajar saya</p>', 'Saya dihajar habis-habisan oleh pasukan PSHT Yogya ...', '1234556789061234', 14, 'complaint-images/KQ5wMBsY8PNs4CKlcYwVH0EJ9iFULYAyvSxTKp2o.jpg', 'out', '0', 'public', '2023-06-06 09:56:38', '2023-06-06 09:57:04'),
(204, '2023-06-07', 'Bullying Seksual', 'bullying-seksual', '<p>Saya di anuin sama teman saya angkatan 18</p>', 'Saya di anuin sama teman saya angkatan 18', '1234556789061234', 16, 'complaint-images/A6noxgozlqIdT91HvpUFnU8LyN7cO2vqZHXndbTt.jpg', 'out', '1', 'anonymous', '2023-06-06 09:59:32', '2023-06-06 12:15:37'),
(205, '2023-06-08', 'Bullying Emosional', 'bullying-emosional', '<p>Saya tidak tahan ketika saya dikelas selalu di bentak2 oleh kolega saya yang bernama anu</p>', 'Saya tidak tahan ketika saya dikelas selalu di ben ...', '1234561234567890', 15, 'complaint-images/JVBa6mPt25S23VVC7U0HqGSncEO5fShaUZTVmLs8.jpg', 'in', '0', 'public', '2023-06-06 10:02:20', '2023-06-06 10:02:20'),
(206, '2023-06-06', 'Pelehan Seksual', 'pelehan-seksual', '<p>Saya dilecehkan oleh seorang mahasiswa yang bernama N di tolet anonim. Saya merasa itu sangat memalukan. Tapi saya harus melaporkannya.</p>', 'Saya dilecehkan oleh seorang mahasiswa yang bernam ...', '1293181301244', 16, NULL, 'out', '2', 'public', '2023-06-06 12:10:04', '2023-06-06 12:12:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_01_130807_create_students_table', 1),
(6, '2023_03_01_131123_create_officers_table', 1),
(7, '2023_03_01_131208_create_categories_table', 1),
(8, '2023_03_01_131308_create_complaints_table', 1),
(9, '2023_03_01_131400_create_responses_table', 1),
(10, '2023_03_02_011825_create_user_triggers', 1),
(11, '2023_05_23_155835_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `officers`
--

CREATE TABLE `officers` (
  `officer_nik` varchar(255) NOT NULL,
  `nip` varchar(18) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `officers`
--

INSERT INTO `officers` (`officer_nik`, `nip`, `created_at`, `updated_at`) VALUES
('1201234563456789', NULL, NULL, NULL),
('1234512345667890', NULL, NULL, NULL),
('1234516678902345', NULL, NULL, NULL),
('1234567890123456', NULL, NULL, NULL),
('1238902345451667', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `complaint_id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `officer_nik` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`id`, `complaint_id`, `body`, `officer_nik`, `created_at`, `updated_at`) VALUES
(202, 202, '<p>Wah. sangat disayangkan kejadian itu terjadi. Besok tgl 10/06/2023 jam 10.00 WIB segera keruang BK ya IST Akprind ya..</p>', '1234516678902345', '2023-06-06 09:10:04', '2023-06-06 09:10:04'),
(203, 206, '<p>Ayo besok segera ke ruang bk yah. semoga masalah bisa diselesaikan</p>', '1234516678902345', '2023-06-06 12:12:01', '2023-06-06 12:12:01'),
(204, 204, '<p>segera selesaikan di ruang bk besok yah</p>', '1234567890123456', '2023-06-06 12:15:37', '2023-06-06 12:15:37');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'WEB_TITLE', 'Setubully', NULL, '2023-06-06 07:26:08'),
(2, 'WEB_LOCATION', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.04943338013!2d110.38584601477812!3d-7.784583894389941!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a59ce29bc3887%3A0x2cad870b4a56cf1!2sINSTITUT%20SAINS%20%26%20TEKNOLOGI%20AKPRIND!5e0!3m2!1sid!2sid!4v1686035967184!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, '2023-06-06 07:26:08'),
(3, 'WEB_LOGO_WHITE', 'website-settings/5l0e5AC6dtn7NRPWqenTkNlpx6UXUc3ObajC7AFy.png', NULL, '2023-06-06 07:26:08'),
(4, 'WEB_LOGO', 'website-settings/f5ddIpnmYEpFy1paPvkePZQy2Cvc4ssAgTXnWa4O.png', NULL, '2023-06-06 07:26:08'),
(5, 'WEB_FAVICON', 'website-settings/kwQZJqUq1W7aygtz3yBQAenM2je2i0hWsnlPJrzp.png', NULL, '2023-06-06 07:26:08'),
(6, 'HERO_TEXT_HEADER', 'Sistem Pengaduan Online Bullying di IST Akprind Yogyakarta', NULL, '2023-06-06 07:26:08'),
(7, 'HERO_TEXT_DESCRIPTION', 'Membuka Suara: Mendorong Pelaporan Bullying dan Membangun Ruang Aman bagi Mahasiswa melalui Pendekatan Whistleblowing System dengan Website Setubully', NULL, '2023-06-06 07:26:08'),
(8, 'FOOTER_IMAGE', 'website-settings/dyVI2ScCfw5wwZBpNdHF4aKtef75U2luaUHFNCpS.png', NULL, '2023-06-06 07:26:08'),
(9, 'FOOTER_TEXT_DASHBOARD', 'IST Akprind Yogyakarta', NULL, '2023-06-06 07:26:08'),
(10, 'FOOTER_IMAGE_DASHBOARD', 'website-settings/ItMr83DSXkSGv1U18vpUeEeBYbP3nzKhA3i1ch7O.png', NULL, '2023-06-06 07:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_nik` varchar(255) NOT NULL,
  `nisn` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_nik`, `nisn`, `created_at`, `updated_at`) VALUES
('1234556789061234', NULL, NULL, NULL),
('1234561234567890', NULL, NULL, NULL),
('1293181301244', NULL, NULL, NULL),
('5678901234561234', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(16) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('student','officer','admin') NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nik`, `name`, `username`, `gender`, `email`, `email_verified_at`, `image`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '1234567890123456', 'Muhammad Adji', 'adji', 'L', 'adji@gmail.com', NULL, NULL, '$2y$10$SS6CIpgbyUCZqL84/pEak.EENRsRfweFZeuSA7AStCUOOsl3bBtNW', 'admin', NULL, '2023-06-06 07:08:20', NULL),
(2, '1201234563456789', 'admin', 'nana', 'P', 'admin@gmail.com', NULL, NULL, '$2y$10$kOI.4mSFy85X7jV7atVnEeH7AEHADZ/pqMigH6E9zhW44M7bJUPuq', 'admin', NULL, '2023-06-06 07:08:20', NULL),
(3, '1234561234567890', 'Adji', 'aji', 'L', 'aji@gmail.com', NULL, NULL, '$2y$10$P0fEUkFu7jWo8iELN6btde5kGybmJ81yIWWmRyI5PDpwZa2XK4E6K', 'student', NULL, '2023-06-06 07:08:20', NULL),
(4, '1234556789061234', 'Student', 'student', 'L', 'student@gmail.com', NULL, NULL, '$2y$10$oyv1VfIsd8VPO9oHngUCLuAhLDqcgwIRa0Jg5EVb9Rm4Rc1FkRmrC', 'student', NULL, '2023-06-06 07:08:20', NULL),
(5, '5678901234561234', 'Muhammad Pasya', 'pasyaa', 'L', 'pasyaa@gmail.com', NULL, NULL, '$2y$10$Q6JbIbj0KktaJpM6kI4DROkRzQCCFg5OSQAhBMDWl7rEP/bjZJN.O', 'student', NULL, '2023-06-06 07:08:20', NULL),
(6, '1234512345667890', 'ajie', 'ajie', 'L', 'ajie@gmail.com', NULL, NULL, '$2y$10$PoANcKGlC7RklpD9mH6cOuNx3Abdnrg5bxZoPrXPg2SvLzqpRFgjm', 'officer', NULL, '2023-06-06 07:08:20', NULL),
(7, '1234516678902345', 'officer', 'officer', 'L', 'officer@gmail.com', NULL, NULL, '$2y$10$AYHFpFdWHl01yCUHac0qEuDPdS7Ae1GQPU9aQjQw/eL61mJlshxgS', 'officer', NULL, '2023-06-06 07:08:20', NULL),
(8, '1238902345451667', 'Arif Rahmaanul', 'arif.rahmaanul', 'L', 'arif@gmail.com', NULL, NULL, '$2y$10$0fq4/OcoJ84cFXXg5zJkX.zKkPfomcts.dYmbFuFfsJJYHNcow7gy', 'officer', NULL, '2023-06-06 07:08:20', NULL),
(9, '1293181301244', 'Lina', 'lina', 'P', 'lina@gmail.com', NULL, NULL, '$2y$10$SS6CIpgbyUCZqL84/pEak.EENRsRfweFZeuSA7AStCUOOsl3bBtNW', 'student', NULL, NULL, NULL);

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `tr_add_user` AFTER INSERT ON `users` FOR EACH ROW BEGIN
                IF NEW.level = "student" THEN
                    INSERT INTO students (student_nik)
                    VALUES (NEW.nik);
                ELSEIF NEW.level = "officer" OR NEW.level = "admin" THEN
                    INSERT INTO officers (officer_nik)
                    VALUES (NEW.nik);
                END IF;
            END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `complaints_slug_unique` (`slug`),
  ADD KEY `complaints_student_nik_foreign` (`student_nik`),
  ADD KEY `complaints_category_id_foreign` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `officers`
--
ALTER TABLE `officers`
  ADD PRIMARY KEY (`officer_nik`),
  ADD UNIQUE KEY `officers_nip_unique` (`nip`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responses_complaint_id_foreign` (`complaint_id`),
  ADD KEY `responses_officer_nik_foreign` (`officer_nik`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_nik`),
  ADD UNIQUE KEY `students_nisn_unique` (`nisn`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nik_unique` (`nik`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_nik_index` (`nik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complaints`
--
ALTER TABLE `complaints`
  ADD CONSTRAINT `complaints_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `complaints_student_nik_foreign` FOREIGN KEY (`student_nik`) REFERENCES `students` (`student_nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `officers`
--
ALTER TABLE `officers`
  ADD CONSTRAINT `officers_officer_nik_foreign` FOREIGN KEY (`officer_nik`) REFERENCES `users` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `responses_complaint_id_foreign` FOREIGN KEY (`complaint_id`) REFERENCES `complaints` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `responses_officer_nik_foreign` FOREIGN KEY (`officer_nik`) REFERENCES `officers` (`officer_nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_student_nik_foreign` FOREIGN KEY (`student_nik`) REFERENCES `users` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
