-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2023 at 06:44 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

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
(5, '2023_01_11_065450_create_skills_table', 2),
(6, '2023_01_11_070917_create_projects_table', 2);

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
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `project_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `skill_id`, `name`, `image`, `project_url`, `created_at`, `updated_at`) VALUES
(12, 27, 'xignature.co.id Landing Page', 'skills/PheYQFilXI0x7Vzlxi4TkTN8igjkKmcdxpOgdIYz.png', 'https://xignature.co.id/', '2023-01-16 07:30:21', '2023-01-16 07:30:21'),
(13, 27, 'xignature repository', 'skills/RK0QLcgGnbVXBlasMLZ6wgmN8cL2ZCTUyxfG4dFL.png', 'https://repository.xignature.co.id/', '2023-01-16 07:31:39', '2023-01-16 07:31:39'),
(14, 22, 'Crowd Funding Web 3', 'skills/mqUI6UyaQQ3jqXluphgKrzx15L7buJdzqHJCHsD3.png', 'https://skycrowdfunding.netlify.app/', '2023-01-16 07:34:14', '2023-01-16 07:34:14'),
(15, 22, 'SkyCo cryptocurrency Landing Page', 'skills/lHt3Fn0tAVVWIsc1H6xR0VOz2a1fOkEJiPEJvOMc.png', 'https://skyco.netlify.app/', '2023-01-16 07:35:35', '2023-01-16 07:35:35'),
(17, 19, 'pempek sluurrr', 'skills/0uLitamvqVjIlZ9TLEBPylrUgiX8CNdTLHrCSY3a.png', 'https://pempeksluurrr.netlify.app/', '2023-01-16 07:41:55', '2023-01-16 07:42:14'),
(18, 22, 'East Garage 94 car rent', 'skills/SLfVAT4VyddbmOQOXva48KQUpf5kv9Gk8h9nq2Fo.png', 'https://eastgarage94.netlify.app/home', '2023-01-16 07:45:06', '2023-01-16 07:45:06'),
(19, 23, 'Portfolio', 'projects/DU4IL5BC1KtjLsszIalraE2gkkMg8V6YptBh4c5y.png', NULL, '2023-01-17 00:06:57', '2023-01-19 01:36:09'),
(20, 16, 'Company profile landing page 1', 'skills/TMqzpjpIACAgRFBJYt3O9tE5Xv0p7mCebrneh5SB.png', 'https://febriantaramuhammad.github.io/skydev/', '2023-01-17 00:49:48', '2023-01-17 00:49:48'),
(21, 17, 'Company profile landing page 2', 'skills/TAWU7gCnYXaXQL6pfY2mUe24Pq5NtQ5bruyq9GDu.png', 'https://febriantaramuhammad.github.io/landing_page/', '2023-01-17 01:20:36', '2023-01-17 01:20:36'),
(22, 16, 'Squid Game landing page', 'skills/zAyYcE1BA4BYdJSmhysXfLTyOxoutMy3OVTCHa05.png', 'https://febriantaramuhammad.github.io/squid_game/', '2023-01-17 01:22:46', '2023-01-17 01:22:46'),
(23, 29, 'Hoobank Landing Page', 'skills/OrbWUqrsMfw3Tuv3ZbVyTm9HQ0sRhnwFeuwThkXU.png', 'https://hoobanksky.netlify.app/', '2023-01-17 20:24:21', '2023-01-17 20:24:21');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(16, 'HTML', 'skills/DyQKCbNJPuOMXYFPC2VECqNEQ2yDOGaxh6z8GKDj.png', '2023-01-16 07:09:05', '2023-01-16 07:09:05'),
(17, 'CSS', 'skills/wJR20jjAMf08yOYeq9HOm7QuggC0zGjQKlT7PWHj.png', '2023-01-16 07:09:38', '2023-01-16 07:09:38'),
(19, 'Javascript', 'skills/SfClLHF6uUhiXL8npSpfKbhOLIMl1zA15GqqlRsy.png', '2023-01-16 07:10:46', '2023-01-16 07:10:46'),
(22, 'ReactJS', 'skills/fBIhYOAbIVk5i0pCfZxa6D0obt2FeEsfh2BVPuZm.png', '2023-01-16 07:14:03', '2023-01-16 21:51:22'),
(23, 'Laravel', 'skills/eg7jmaDm30iAhF83MPRn32tDZcFz2iNOBHUbKKHg.png', '2023-01-16 07:14:59', '2023-01-16 07:14:59'),
(26, 'NextJS', 'skills/KkhGjCTUkpEd5LRhoXNMcpVzLUAqLrf1mNlFDqQw.png', '2023-01-16 07:21:05', '2023-01-16 21:51:36'),
(27, 'Bootstrap', 'skills/3UUfuYMNoFe9YZJ6YVkzESBnCFPCNWMSRspgJKUm.png', '2023-01-16 07:22:29', '2023-01-16 07:22:29'),
(29, 'Tailwind', 'skills/tQ4AWtAanWg5MTaXKRI2BY828rdjtiVhL51PfImk.png', '2023-01-17 20:21:38', '2023-01-17 20:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@app.com', NULL, '$2y$10$pp0ozRk2Vb3Xt3hlj8Acv.J5.Sg11QvbZZIPSVqCiQzZ7rc2Pr6A6', NULL, '2023-01-10 23:50:18', '2023-01-17 00:41:47');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_skill_id_foreign` (`skill_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
