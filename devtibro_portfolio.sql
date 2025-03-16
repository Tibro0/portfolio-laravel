-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2025 at 12:13 PM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devtibro_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin@gmail.com|127.0.0.1', 'i:2;', 1738054149),
('admin@gmail.com|127.0.0.1:timer', 'i:1738054149;', 1738054149);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'first_name', 'MD. Faysal Hossain', '2024-12-11 04:39:26', '2024-12-11 04:52:17'),
(2, 'last_name', 'Tibro', '2024-12-11 04:39:26', '2024-12-11 04:52:17'),
(3, 'phone', '1734449023', '2024-12-11 04:39:26', '2024-12-11 04:52:17'),
(4, 'email', 'faysaltibro@gmail.com', '2024-12-11 04:39:26', '2024-12-11 04:52:17'),
(5, 'github_link', 'https://github.com/tibro0', '2024-12-11 04:39:26', '2025-01-28 03:30:31'),
(6, 'linkedin_link', 'https://www.linkedin.com/in/md-faysal-hossain-tibro-1aa622226/', '2024-12-11 04:39:26', '2025-01-28 03:34:04'),
(7, 'facebook_link', 'https://www.facebook.com/faysaltibro', '2024-12-11 04:39:26', '2025-01-28 03:30:31'),
(8, 'whatsapp_link', 'https://api.whatsapp.com/send/?phone=8801734449023&text=Hello&type=phone_number&app_absent=0', '2024-12-11 04:39:26', '2025-01-28 03:33:08'),
(9, 'address', 'Monsurabad, Adabor, Dhaka-1207.', '2024-12-11 04:39:26', '2024-12-11 04:52:17'),
(10, 'experience', '1+ Years', '2024-12-12 01:28:34', '2025-01-28 03:30:31'),
(11, 'city', 'Dhaka', '2024-12-12 01:28:34', '2024-12-12 01:28:34'),
(12, 'nationality', 'Bangladeshi', '2024-12-12 01:28:34', '2024-12-12 01:28:34'),
(13, 'language', 'English, Bangla', '2024-12-12 01:28:34', '2024-12-12 01:28:34'),
(14, 'gender', 'Male', '2024-12-12 01:28:34', '2024-12-12 01:28:34'),
(15, 'full_time', 'Available', '2024-12-12 01:28:34', '2024-12-12 01:32:05'),
(16, 'freelancer', 'Available', '2024-12-12 01:28:34', '2024-12-12 01:32:05'),
(17, 'status', 'UnMarried', '2024-12-12 01:28:34', '2024-12-12 01:28:34'),
(18, 'animation_text_one', 'Laravel Developer', '2024-12-12 01:38:51', '2025-01-28 03:34:59'),
(19, 'animation_text_two', 'Web Developer', '2024-12-12 01:38:51', '2025-01-28 03:34:59'),
(20, 'animation_text_three', 'PHP Developer', '2024-12-12 01:38:51', '2025-01-28 03:34:59'),
(21, 'animation_text_four', 'Web Designer', '2024-12-12 01:38:51', '2025-01-28 03:34:59'),
(23, 'home_section_description', 'Highly motivated and results-oriented professional with 1+ years of experience in Laravel. Passionate about Laravel, PHP, HTML, CSS, Bootstrap,  JavaScript, jQuery. Strong work ethic and a desire to continuously learn and grow.', '2024-12-12 01:41:18', '2025-01-28 03:38:51'),
(24, 'my_experience_short_description', 'Over 1+ years of experience in web development. Expertise in Laravel, PHP, and UI/UX design. Proven track record of delivering high-quality, user-centric web applications.', '2024-12-12 02:00:48', '2025-01-28 04:21:16'),
(25, 'my_education_short_description', 'Bachelor of Science in Computer Science from Dhaka Central Polytechnic Institute. Strong academic foundation in Programming, Data Structures, and Algorithms.', '2024-12-12 02:11:17', '2025-01-28 04:24:04'),
(26, 'my_skill_short_description', 'Proficient in PHP, Laravel, JavaScript, HTML, CSS. Experience with databases (MySQL, PostgreSQL). Strong problem-solving, communication, and teamwork skills.', '2024-12-12 02:22:01', '2025-01-28 04:24:46'),
(27, 'age', '24 Years Old', '2024-12-14 00:57:35', '2024-12-14 00:57:35'),
(28, 'about_me_short_description', 'Highly motivated and results-oriented professional with 1+ years of experience in Laravel. Passionate about Laravel, PHP, HTML, CSS, Bootstrap, JavaScript, jQuery. Strong work ethic and a desire to continuously learn and grow.', '2025-01-26 11:26:00', '2025-01-28 04:25:09');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_11_093908_create_information_table', 2),
(6, '2024_12_11_112743_create_service_sections_table', 4),
(7, '2024_12_11_174710_create_my_experiences_table', 5),
(8, '2024_12_11_181820_create_my_education_table', 6),
(10, '2024_12_11_190641_create_my_skills_table', 7),
(11, '2024_12_12_085810_create_portfolios_table', 8),
(12, '2024_12_12_114400_create_user_information_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `my_education`
--

CREATE TABLE `my_education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `years` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_education`
--

INSERT INTO `my_education` (`id`, `years`, `course_name`, `company_name`, `description`, `created_at`, `updated_at`) VALUES
(1, '2015', 'Mission International School & Collage', 'Secondary School Certificate', 'Secondary School Certificate from Mission International School & Collage. Proficient in English, Mathematics, Science. Eager to learn and grow.', '2024-12-11 12:51:48', '2025-01-31 03:10:11'),
(3, '2023', 'Shikhbe Shobai', 'Full Stack Web Development - Wordpress', 'Shikhbe Shobai: Bangladesh\'s premier IT training institute. Learn in-demand skills: web development, programming, digital marketing, and more.', '2025-01-28 04:32:54', '2025-01-31 03:05:20'),
(4, '2024', 'Shikhbe Shobai', 'Full Stack Web Development - PHP Laravel', 'Shikhbe Shobai: Bangladesh\'s premier IT training institute. Learn in-demand skills: web development, programming, digital marketing, and more.', '2025-01-28 04:34:02', '2025-01-31 03:05:13'),
(5, '2025', 'Dhaka Central Polytechnic Institute', 'Diploma Engineering Computer Technology', 'Diploma in Computer Engineering from DCPI. Proficient in Laravel, PHP, and Wordpress. Strong foundation in computer hardware and software.', '2025-01-28 04:35:18', '2025-01-31 03:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `my_experiences`
--

CREATE TABLE `my_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `years` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_experiences`
--

INSERT INTO `my_experiences` (`id`, `years`, `title`, `company_name`, `description`, `created_at`, `updated_at`) VALUES
(1, '2024', 'Udemy Online Courses - Laravel', 'Web Solution US', 'Delivering cutting-edge web solutions for businesses of all sizes. From design and development to digital marketing, we drive online success.', '2024-12-11 12:03:07', '2025-01-28 04:53:27');

-- --------------------------------------------------------

--
-- Table structure for table `my_skills`
--

CREATE TABLE `my_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `icon_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_skills`
--

INSERT INTO `my_skills` (`id`, `icon`, `icon_name`, `created_at`, `updated_at`) VALUES
(1, 'bx bxl-html5', 'HTML5', '2024-12-12 00:46:45', '2024-12-12 00:55:52'),
(3, 'bx bxl-css3', 'CSS3', '2025-01-28 04:26:19', '2025-01-28 04:39:59'),
(4, 'bx bxl-bootstrap', 'Bootstrap', '2025-01-28 04:26:46', '2025-01-28 04:39:30'),
(5, 'bx bxl-jquery', 'jQuery', '2025-01-28 04:27:11', '2025-01-28 04:39:07'),
(6, 'bx bxl-tailwind-css', 'Tailwind CSS', '2025-01-28 04:27:43', '2025-01-28 04:38:43'),
(7, 'bx bxl-javascript', 'JavaScript', '2025-01-28 04:28:02', '2025-01-28 04:44:46'),
(8, 'bx bxl-php', 'PHP', '2025-01-28 04:28:15', '2025-01-28 04:44:18'),
(9, 'bx bxs-paint', 'Laravel', '2025-01-28 04:45:00', '2025-01-28 04:47:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `live_link` varchar(255) NOT NULL,
  `github_link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `image`, `title`, `description`, `language`, `live_link`, `github_link`, `created_at`, `updated_at`) VALUES
(1, 'uploads/portfolio/1822856009071688.png', 'Frontend Project', 'Showcase of a frontend project. Demonstrates skills in HTML, CSS, JavaScript, and front-end frameworks. Includes code examples and project documentation.', 'HTML5, CSS3, Bootstrap, JavaScript, jQuery.', 'https://tibro0.github.io/Securex/', 'https://github.com/Tibro0/Securex', '2024-12-12 04:31:09', '2025-02-01 05:57:20'),
(2, 'uploads/portfolio/1822855344657939.png', 'Charite Website', 'Official website of Charité – Universitätsmedizin Berlin. Provides information about the hospital, research, patient care, and careers. Online appointments and medical information available.', 'HTML5, CSS3, Bootstrap, JavaScript, jQuery.', 'https://tibro0.github.io/chariteam/', 'https://github.com/Tibro0/chariteam', '2024-12-12 05:11:54', '2025-02-01 05:47:22'),
(3, 'uploads/portfolio/1822852843888672.png', 'Construction Company', 'Showcase projects, services, and expertise. Contact information, client testimonials, and project portfolio. Enhance online presence and attract new clients.', 'HTML5, CSS3, Bootstrap, JavaScript, jQuery.', 'https://tibro0.github.io/Buildx/', 'https://github.com/Tibro0/Buildx', '2024-12-12 05:12:38', '2025-02-01 05:15:13'),
(4, 'uploads/portfolio/1822851726679025.png', 'Learning Management System', 'Online platform for delivering and tracking e-learning courses. Features include course enrollment, assignments, quizzes, progress tracking, and communication tools.', 'Laravel, PHP, Bootstrap, HTML5, CSS3, JavaScript, jQuery.', 'https://lms.devtibro.com/', 'http://127.0.0.1:8000/', '2024-12-12 05:13:16', '2025-02-01 04:49:18'),
(5, 'uploads/portfolio/1822496236344192.png', 'Restaurant Management Website', 'Streamline restaurant operations. Online ordering, table reservations, inventory management, employee scheduling, customer relationship management.', 'Laravel, PHP, Bootstrap, HTML5, CSS3, JavaScript, jQuery.', 'https://food-park.devtibro.com/', 'https://github.com/Tibro0/food-park-laravel', '2024-12-12 05:13:54', '2025-01-28 06:41:06'),
(6, 'uploads/portfolio/1822488917472801.png', 'Multi Vendor E-commerce Website', 'Online marketplace where multiple sellers can list and sell their products. Features include product listings, order management, and secure payments. Benefits buyers and sellers.', 'Laravel, PHP, Bootstrap, HTML5, CSS3, JavaScript, jQuery.', 'http://ecommerce.devtibro.com/', 'https://github.com/Tibro0/multi-vendor-ecommerce-website-laravel', '2024-12-14 01:48:34', '2025-01-28 06:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `service_sections`
--

CREATE TABLE `service_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_sections`
--

INSERT INTO `service_sections` (`id`, `icon`, `url`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2, 'bx bxl-jquery', 'https://devtibro.com/', 'jQuery', 'jQuery Development, AJAX Interactions, DOM Manipulation, Front-End Animations, Plugin Development.', '2024-12-11 12:11:50', '2025-01-28 04:48:44'),
(3, 'bx bxs-webcam', 'https://devtibro.com/', 'Web Design', 'Website Design & Development, UI/UX Design, Branding, Logo Design, Responsive Websites.', '2024-12-14 00:22:37', '2025-01-28 04:49:09'),
(4, 'bx bxl-php', 'https://devtibro.com/', 'PHP', 'PHP Development, Custom Web Applications, API Development, CMS Integration, E-commerce Solutions.', '2025-01-28 03:41:59', '2025-01-28 04:48:20'),
(5, 'bx bxl-sketch', 'https://devtibro.com/', 'Web Development', 'Website Design & Development, E-commerce Solutions, SEO, UI/UX, Mobile-Responsive Websites.', '2025-01-28 03:42:28', '2025-01-28 04:49:44'),
(6, 'bx bxl-bootstrap', 'https://devtibro.com/', 'Bootstrap', 'Responsive web design with Bootstrap. Create beautiful, cross-browser compatible websites.', '2025-01-28 03:42:49', '2025-01-28 04:47:59'),
(7, 'bx bxs-paint', 'https://devtibro.com/', 'Laravel', 'Custom Laravel Development, API Integration, E-commerce Solutions, Web App Maintenance, Cloud Deployment.', '2025-01-28 04:19:52', '2025-01-28 04:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1iC6F2Zt7yobzeQojZ8ADITEfwtkk2iWGeiXH7ju', NULL, '222.79.104.23', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRUFpSlExTFJNWDQwbFUxb0FLUkhIN2FNQ3VXa2pmWmRKc3RlajlpViI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742019329),
('2w7VEeZ0tva43KfhhsJgRQjiXcaaiQaLEjMOUE0H', NULL, '3.144.253.199', 'CheckMarkNetwork/1.0 (+http://www.checkmarknetwork.com/spider.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMGNvRW5ZczcxWFJpaWlJNU1YQ2M5NG15b1NjTEs2UEpkd2JxdVEwbyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly9kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741957728),
('363zmqeI2tLsn5cfV39IDwZ9pE8g9x0okE3RWzxu', NULL, '34.116.39.65', 'Mozilla/5.0 (Android 13; Mobile; rv:109.0) Gecko/112.0 Firefox/112.0 AppEngine-Google; (+http://code.google.com/appengine; appid: s~virustotalcloud)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidDB1bXNnTFUyVGdBTmViaDkzNFRuOERFYTZ0dWNyUzNRU0lKam5iaiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741979187),
('3cbqrY4eqKE7By279fJybRGM4MuGbScxKvbRHx2H', NULL, '170.106.193.108', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibDdmaHBiTzl3bEVlalVtWWp3Y2ZBRjRlcU13ZGhlUVlSek5UOGxZMSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741978157),
('3cY8MNXUawADi0kTcw4FvRYmgnEsdhvFLgFtERIK', NULL, '103.14.143.67', '', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMzhZTnN3ZFZPSDN5dWJCZmNmaEQ4c2ZhWVc1T25RcGhQRFhXNW8zMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741982834),
('4K5VJJWt7vUC90w5mhCtn5B55Zfh5M2IA4bGcAlv', NULL, '3.15.38.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVWFZa0ZuN2tkZDNmdUVNc0hmQ202eWNKNXNQd3U4Nk9kRmJXbWhuRSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741979184),
('4ldEOmtFRP7EJkYSrEx6I2jh8dONmOAKbAjKJZ5Y', NULL, '40.113.118.83', 'curl/8.6.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic0RlenVIeUYydEhSRWxQUlZEZ0xHc2VLZlBvcGE0MmNmZ3pLQTBjZSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly9kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1742075327),
('4yQJah9hfRuvbOXlH4Rep9k11QqDsmEOzFNl2GiF', NULL, '222.79.104.23', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS3hKODcwU2ltRjdsMGhIMTR3eVl2Nlljc1VwbGNrMzVSN3h2ZEVnMiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1742074793),
('5UuBgMltgJUvUJZGSYEkgnb6HxHMSnNPUCO3t5fj', NULL, '54.191.98.49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/109.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTlhKYVUwc282U1NPZU1NRkFVSWhqSzgzVElpRmZmNUVLS2gzYTl3aCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742033623),
('5YSOdE2WE5mSocK0edMaX2P0R4UxeDclRwPpiBZt', NULL, '43.153.71.132', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiekRXRFk5dFdOeDJINWxMbkVXWWlxOHkzNEhBWldVekhuUG9BcWxMYyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742028320),
('60ktwnc6wCgQyADjN2T1o1EqAm6ixcXpSUmtTNVP', NULL, '34.116.39.65', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36 AppEngine-Google; (+http://code.google.com/appengine; appid: s~virustotalcloud)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUkg2eFRlbm9Sd0RIaHlMcm01TXl2VFFjUGNSd003VEZzbkpSUERwVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741979184),
('6YroDz3W2V6KmYeq4DhdS3LyqEywE7l0piHPBtPl', NULL, '185.191.171.10', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMUZJTnBpSWlLMUFKZ0h0S0Q4OXcwU2hBQUdMUzFqUlBXSTE4bmFlMSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly9kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741903891),
('73MVy959dypuFOzqiN49w7cA7KtyyNrGa2OR95uH', NULL, '20.105.137.134', 'curl/8.6.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic3FFcDJnbTA0STFVRjZHMVc2dFZLajhsZ2dlbEY2eEVDVTdWd0JNMCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly9kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1742094233),
('74gpdRvCo4z6aA5mj0nLAuHNbutgrwvzoKEaWump', NULL, '54.88.179.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiczVtRkZZem42U2hSUHFqcU5BMmFLanZLQnpmUWtwenhUVEd6UE1taSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly9kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1742065427),
('76M8B7bCCjtdbpqbcM0wMJhM1oRwAXfHE6FB7K5v', NULL, '124.222.196.113', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUXZnNHpKbXVqU01nWU9rSzBMUGdhdkRtY3dDZUtjVnJBT0NKM0VSUyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741969272),
('7MzTV8HQW8Th2Gv1EJDpmlTt2yqZlX6Z0rMJQxer', NULL, '199.244.88.227', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieElWUTdBa0VianN5VEVkcWxCaWJqaFlNMXhJOHU1NmNQMERQWG5HdSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741884934),
('7unQSHdz4Rf4X6j6qh6QMJx0owmRhNmVA3hnFFeC', NULL, '170.106.179.68', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieDJ6ZUdQNkRBdWpCWXZhTmhPR1FNUU1QWUFpZnFCQW8zamxqcnB0TSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741906142),
('7Y4ZvVC4fif3BaZp3kQ5WhQnhgwm9GNC7uwCLmqy', NULL, '34.116.39.65', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36 AppEngine-Google; (+http://code.google.com/appengine; appid: s~virustotalcloud)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOUw0Z3VaYUNMcVZQVUE2UjUyZXFOdmlueUVxcURCeDhRSmh3QzY1aiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741979185),
('8eXMbymdnWnhHJmHPHj92FjfjNrt5XosGAHt74lk', NULL, '134.199.211.222', 'Mozilla/5.0 (compatible)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic2huV0FoOVY2OHViWk1zanRpQjJXV083cml2NXRwRnVFUXlST3hHQiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly9kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1742068681),
('8LXd8AktEO6fjSvWemilK07yYVzhn666BIU9MDtn', NULL, '182.48.67.180', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV3JTOEZCRXpkQkJnMTF2b01HVTV2VUlRNTdYRzdaU2t4TUFZY0NzdSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742101102),
('ag0BWh9gd4t9g7tPToi2XFnXHVqelVXMZlN04BQT', NULL, '43.129.51.239', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU29rc0ZYa2x5cWk5MFc4RW1uSENabnJWdW02RnlUSDhNbGZpU1dEbiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741975686),
('AgmHd90v6eRZFuP5OYaZVHIQR3PlNHwtfwOffpQQ', NULL, '43.158.91.71', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYW1XQ0ZhbWZLd0duaVk0Yjg1b1dPMW9sTDFTM2tPNG85VjFCQzRTQyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1742006829),
('ar90hEepU5CWW8SBl0xIZSf9wz6FhUIOCXPiHOjY', NULL, '62.210.90.211', 'curl/7.81.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMzVGUTU4RWtTblR3MEI0RGtmYnhDY1lNQ1dsZml1T2ZKMEU5TlVadCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741884584),
('aruJWa0XLurhmaziJr7CGSsTfF8KYMI3ULMOAhr0', NULL, '3.248.254.235', 'CheckMarkNetwork/1.0 (+http://www.checkmarknetwork.com/spider.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0dUNldXd3N3Nm5YZzFFNkFxWDdTd1BWclRFc0VLRDZoaVprY0FIcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9kZXZ0aWJyby5jb20vZG93bmxvYWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741957729),
('BKzh6up18OO3wjjLfwoZxUYrPrCYlVNabJCYHz9Y', NULL, '34.217.75.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia0hucEtWRnhNdktsd0VwQ0NnRWREUGdJTFhjb2ZjUWhNNDhHd0x5RyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly9kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741962872),
('bnOlwM3ewNlOSA4oMXTR9u5u1Phx7ds4tCGozPMu', NULL, '43.130.3.120', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVlgxYm9qR3hLTFgyYzVxMWE4eG1ISlM0bEprc1JUeTFhbzBtWjE3SCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741911193),
('cTstZwtuE94zKr3o3ZpxrJLHJvt254iVSazqsx0l', NULL, '204.101.161.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieU5DVmlDT0Eya0hYbnM0SXdvU1piNHc2c0k4M0d5Mks1NllEQUFGTyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742039081),
('D0cWO4NgXjPO7l7RgHv4lCJ8chQfTZPVHYLMdZXa', NULL, '35.171.144.152', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUGFMWUFpazJhN1poVjJwUFJqY2hLcHoyYkVBMnZFZXhYVFVWN3BCbyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNDoiaHR0cHM6Ly93d3cuZGV2dGlicm8uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1742065428),
('dF8bKO67aEmyTbeeNYhvLr6TEBjNqN7MAkbzRaAd', NULL, '62.210.90.211', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.3', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicE5uYkxBZ0lhTkFiSlppUXlwMzJPbExleFJmMXFVQ2hFcFZodkZXayI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741884603),
('DS3BIFXjpeW7aw384enCIjHC7lXrWqaGQvdETsqB', NULL, '168.151.105.123', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWFBkd2xYbko0aVdudjBMNTAzS3lQeFBIbHU3M1V2ZHRJRkVCdWRObyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly9kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741983828),
('dTUYRX9q0fKIXwZF9BXxlVEscwWPbcOAPfps2UW7', NULL, '43.130.100.35', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieXk0NjB5NEwzbVNqTjNrM25Vd3BTNTFBRmxFcUtiOEVQWlFROVVjWCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1742029474),
('e2Mo9MkHqtDkFTHuatfOLZWzGU71rhZw0XF01uaf', NULL, '35.171.144.152', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicVNka2F4WHhLQVFLazNTc0ZVTWtxUTh6aWJDSTZiNU01TWFUTklvUyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1742065429),
('EKpUbau7gkg3xc76pJbFNYjAROWckDfW7SXn0YTE', NULL, '124.156.226.179', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMkVUQ1RnVmhsRW1OSzNqbTBNeEVOZ2pVc2pFYURaRnJKeEROY1ZpayI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742005359),
('f4DbuKkICAB4ZWZjLkKeA8wh5E2q0AkGHNhkEyND', NULL, '185.111.156.150', 'Go-http-client/1.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVmw1NVpISTZjNFB0TEJFUWd4NXR1SHZOeFltVHZseWMxSUlBalJZaCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741888752),
('Fd5IBGxtMfm7C7cAL32fhMjz23dsWQjqvWDWj3hB', NULL, '66.249.70.106', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.6943.141 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidHdRSXQ4U1JvcGNhbzQ3NTlSMUFzbktUZTlWdGF6ZGhPcnJndnE5diI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741979190),
('fi1w34D0xRTGnHAkhNoRILODLG2xPLtaFTbBXP8D', NULL, '43.131.243.61', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWGtzV0oxcmZ2MW5jTG5GaUhPRkJUbWh0UmtPMkI2NHYwWGJvangzTyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741889185),
('fiWS1dYfL2zmhXzyZS8paoFbDmguyacxAB7QwRMA', NULL, '43.166.247.82', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNVZLQ3p3dFZLSU5PR0VlbHFYSm05UlJrSlVOZlZrNlVsNjJnbjFHYyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1742071337),
('fmYB9K1uFv4Rla8oIe5R7tRUAIYFFHUKnzbuKi9j', NULL, '47.82.10.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRXhXY3lLeEdnbXNRQzl5M05jVFdaUGdaMGh6OVZERGxNQ3ZjMDNGcCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742095716),
('G9ItcBF7yKJimxLJuBZ205eT0uDYc3tnJtxQkUk7', NULL, '36.41.75.167', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ3RtS0hpcmtlc056MDFDOHRTb1R4UERUeHNleDZPY0FZQW5jcmxpeiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741894151),
('GENhRe0rL8RhzBrrtKk0A3YRaC0Jc6gvHpPXmQ5R', NULL, '66.249.70.106', 'GoogleOther', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibmhTR3hrR3pVREh5SWdzUXpCOHNyRVpFNkg3ZnNvNjZOa0F6OTRYWCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741979186),
('gfhZIkoH7hvVoNKSupZybGgQqUrJgNqkEvN2ZKJG', NULL, '20.171.207.192', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.2; +https://openai.com/gptbot)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiamdPTTVmY3hhWkFjcDRUYTZpdnA1TU1wN0hSVEZNaW9BV3RvaHBxRCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly9kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741907151),
('GSOljUv18MD9ftKtA1IfnNYFJuWRyo3Uplk4HZHL', NULL, '152.53.52.193', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUHluMUNsYWh6M2tzN2w5MmZ0RzF6ak9sbE9uVTBoTVUzM21TbDJhdiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly9kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741983244),
('gTnKLM0veUv4Ekw7mXlEyoVLz6lOUgZ0Ya3vJb61', NULL, '182.48.67.180', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieGlaclY3TW1YOE96TTZNUjNLTDJJTElKM0JwcENGM2NWMTlDMEJ2NSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742105571),
('h5EsbuiCBvNtZ5X0dqVbOufZCK2aLVrM70HjjKTg', NULL, '139.59.27.243', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWlpyQVdFdE9NTVg2TkFwTERzWWV5YzFRT3hDVzRHU2pPUUJ6V2RQQSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742097043),
('HeBdDug6N21kKmm0h679URpE2d1ovwKrSNfaKGFy', NULL, '43.135.142.7', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU1phYzhENTVnOEpzQzVhczd0Tmt6RzZDMk42MUdqUEd5RDhXMnZEbiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741944748),
('hFxQNLmHZJyR9hCUosu88S58rnSgJ2ed1vpQVNQp', NULL, '35.92.235.234', 'CheckMarkNetwork/1.0 (+http://www.checkmarknetwork.com/spider.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRGVveVhCSUZlTGtxRDVmdmdEaGRKTVdSRWxHMlRpQ3B2SHpVT1prZiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741957634),
('iE4xrgWZfT49LwFcD09kgySdPOYntSvqGOg21gg0', NULL, '170.106.140.110', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSEY3OFk2QzFrRVVDR29zWHN4NFhGbFhldHFzWGczclljeE1uYjdTZiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741904956),
('ieCjV2T9Te6NNDlsI5SSVyrWEW0FneXf1JeCD0oE', NULL, '54.36.148.33', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQmdhTmZoTTZZS3hPSEt3eFNjM25sMVNtbmRiUUxSTzh1bXZabzJhRiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742089455),
('ikWfArQCYy3rZsq9jbVBBJOkEvGDUM70RxezMkNj', NULL, '162.142.125.113', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYXI1V1doQXBSZ1pVeUlpeWs1OW9odnI2dFRZdFQxcDdCc3M5TUtuYyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742090985),
('IXovpdK0vI7K0iNEQ7kn31fSIIuhFSHkPDUTjsZP', NULL, '182.48.67.180', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNEFZbzAzNUdBbmRtTzFOaVNValg0Z0h3ZHQ3bUVwRjQ0QVBPUkcyQiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742105572),
('JK9UoZBaXi5vM3JeJlzYZpggQv5BPYg7Lhon9Q07', NULL, '152.53.53.235', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVXBna2RXNWZ1aHczY1hEdGRqOVhNdzJDb0lFU2VKcGRuREFaRk5xbCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly9kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1742070465),
('JpHm6lua0M4gPe5lImWT2lPI1b6LnoPZUZRpQ0bj', NULL, '43.130.39.254', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZHVrd2hBbWRrRWhaUnpkZDV4VGs3OUFSZXlwWk5zb2Z3NnhzMFMyTSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742062051),
('jyaKIDoufwHvCm3OJnbBkJmK4hNzGfKTmMzYUzQX', NULL, '205.169.39.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUmZmcHFJSEFjZVRWOHNnbFB0YXplQWxEcDdRYXZLV2pYSzc3cGFPTyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741982909),
('kHb9SwHKcQMWAa2giWPRdnz1K5G0BGeEgqNC2f8l', NULL, '64.225.100.118', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-en) AppleWebKit/533.19.4 (KHTML, like Gecko) Version/5.0.3 Safari/533.19.4', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid05YdzBnZkVZcDNVSEhIZ2FkYlU3VTZhZVVNNDBhdGlkWkNCMmM2RCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741983407),
('kj46cZAC6uGPgnv2SQQE4LNrVCeBQnBSlUZLvkM5', NULL, '87.251.78.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRmhNMTY4R1ptdTVqZ3Exb0RXT2JuUTBsQXgzNWRqcmNmeUR2WHQ3WiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742043611),
('Knw4mHwTCYB7q8YNCeSygnciuYab9f5nqKqCwMGg', NULL, '124.222.196.113', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) MicroMessenger Weixin QQ AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.62 XWEB/2692 MMWEBSDK/200901 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM25CN1VIY2N3cjR0czRtdENFWGdWT08xUkhsckQ3dUNYVUNSd3JXdCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741968989),
('kwazG0UowM97jruVX9aPnpOaxMCIglykcsvpSm67', NULL, '60.188.57.0', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWERCZHAxejVEbldXYW11S29JbHNBSnIzNTh4Y1N4Q2w5WDNXT2lLMyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742092309),
('L9oAwzrOPD54jDE16Uy4YFGonJdaswyw3vSWBmzK', NULL, '43.135.148.92', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZXlSZEhpckpkWFV2ajFadktrdTlnNGZCRUNhTXpzRkZGTTN1VlNuOSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741924957),
('lFgd1hu8i0aqdnGXMXk91oGshtSZGfhcbq2Tbzvx', NULL, '43.133.69.37', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU204QVcxcjEzMVI5ZEFuTGR0OUtwNnUyTk9ON0Rhbnh1QUtPbmROMyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1742090848),
('LgmTmXuCa2m61vL61yBB8WXlmO7fnOgxa7YtFimM', NULL, '49.51.183.75', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM3ptOENBbTQ3Z3hvYUNhMzcwb1NPYVVFbVZKWDRYS2dTaGdkTmdIayI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly9kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741999280),
('LHxuFLrAZzqqYlxmdfAQ0d9852wzSdUmzs0aSBdV', NULL, '58.49.233.126', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib0lSZ1JBSEhESmpJZmsxVmNIeUt1bnZUNVExV0lmSG0xYUcwN0xhMSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741947611),
('LnyFxzPk4G6D4Ys8WOD1BBH8TW3r8lOclRSLQhKd', NULL, '34.217.75.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ2ZBT0loQ3VtN2R2WGp2cEJ5ZjVyV3hWTGl1b0lNdXlLVFdnN1hpciI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741962870),
('Lr272wsEGWrJAHDil32uq0S5MUQpUBmrAyVkNAzS', NULL, '182.44.9.147', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZjlCNXRCbklCcWpxREs4REk1bWR6RG9WbTBnWnN0Sm9JelF6OEJHZiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741966414),
('LuVPd1VX6uvQp9uhk8r1rghqkgHjyEop8ct9Hkmv', NULL, '124.226.222.66', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSTB4ZVdlQkYySTYyRUFFU3d0S0oyY3ppQUFKUzVHZ2JyYk5IOE05ZiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741983937),
('m1EkDVZb8g1VWEhPzYd6OU9hLuZPDzI8bhkYkHpm', NULL, '47.79.123.193', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmg3ZkJJd2hWaEx5Yjh5TWNwR1Z4bVVUMWhEZnlqcWtreHdEQTZTaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZGV2dGlicm8uY29tL2Rvd25sb2FkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1742028386),
('mdd2iubOxrt9F5GeNDC82Zz8ZiygsVrog32UHBTW', NULL, '43.157.158.178', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSUhuWlk3cTBTWUt3b1hGN1BqWnFZeUNsVkNUbXI0b3NUcTBEMjJleCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741943556),
('mykx3RNE9fbyQWL70ApuEJQdJEebcpRrk1PyMcBz', NULL, '203.33.203.148', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT2Y3YWZsWjR6dW9mVVhBajVwSFRDWGVQZlNvNjFUOERZV0JaVWZYWSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741929633),
('N454hstUxqFghAI02IhZ2gAebFIGJao82CooWowM', NULL, '43.135.145.77', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoielU4dXdyR09UekM2bWdJOHVURldRUXA5Z0JyZ0lUcVZrcVpNbUJRNSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1742051388),
('N50N5pocgWrjituD6BAbkGsGkUqlFPuaJwQoT8bE', NULL, '205.169.39.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibnRVc3E2YVlzejdwckVxWlBQekpmeFlWS2FPWVI1S2UwTDJNc3N4dCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742035609),
('NeEFCCnma7da5rYjNzmTj3kaGY4LinVOhZ1oIVS3', NULL, '92.255.57.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Avast/131.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZjNRZmRJVW05VjVza1A5azV0czFZZ3BXWkdoQTBEMWkzQjRNczBWTiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741911131),
('NmwGyF9J95HpJtRWatYLzDX99AzOjE7inA1lrJJn', NULL, '205.169.39.17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM2p3MzgxU1A2eU9QdVJzYnBmUmZJWWFOdU9ISFh6dUhMTU9UQkNybSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742035609),
('NO9TQgR942z5Yb5VB1dbg5jVbzmEG6yXv92Itj9x', NULL, '103.14.143.67', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYk9ZSUFRdzRWY0NqejBUOU5SWVZXclpHdkx4NElyQkozVkhnV2J3SiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742031428),
('nSFVCadoPNy8tojJaPqnEYwj9uuMqyWQFpRJtpEE', NULL, '3.17.155.125', 'CheckMarkNetwork/1.0 (+http://www.checkmarknetwork.com/spider.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic1NtRmlUZ21lNld5S0lHNDk5RXRmeFdzWVF1RFdrU1BldVNVdmljaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741957575),
('o6WszBSrDD3W0P0kWPmoyACnlPBj42EiovYzwMc9', NULL, '43.152.72.244', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibzJkT0FpQ1VqTU1odkZXRVVsaU1LdG9oUlg4dkgzaklHaHE0Y0NqTSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742093189),
('O8C6bdBtjcIW3dHl0fec5tm4ddHqkllrzKik73W9', NULL, '170.106.152.218', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidGdkVGNwQlF2U0t0Slp5NHNWSlhuSzhhY0tjN1ZiaFdmM0FqdjR3RyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741878579),
('o9dMpbTmT3mdoob2dZoUaIOI44CGI8WDpbLMW5yW', NULL, '167.172.103.26', 'Mozilla/5.0 (compatible)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidE81dlFqVmV4dkZOVGk3OW9qYUxhVXBWRjlydFExTFNWY0NHOXNFNCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly9kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741898297),
('ocPfAoWPlSAZrzOKT4eN8mXwA7jr9Mojg3V0g1az', NULL, '34.116.187.173', 'Mozilla/5.0 (iPhone13,2; U; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) Version/10.0 Mobile/15E148 Safari/602.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV1VJMGozREhmQXNuM243N0RtVmdZWkVTWXFiOHdJNHlzU1MwaFhhayI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyODoiaHR0cDovL2RldnRpYnJvLmNvbS9kb3dubG9hZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741982977),
('OsuMenz1NS1GgUdbgv1q4xaHtMfR986ir4um99zN', NULL, '43.133.253.253', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVE81aWlTdHBuUjJRc2hGc2k0VXRmZU10RWRmU0ZPZEplOEtBekh2WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9kZXZ0aWJyby5jb20vZG93bmxvYWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1742000928),
('p9W4UW7mTjUsPXAKAkL5jgytvV8CR6FalttG2B92', NULL, '18.119.1.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidnFsSzhSckRzWDZUTjRNZDNhZW1hNVcyanJZUlVjb0hTSlN5WjNRbiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741979184),
('pdGYB77Ym6pNd1ltgqBnjqtyz5v6pXkBA9Z5GEsn', NULL, '114.96.103.33', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTVB6Y05CWWxrWkZqQ2RIeXdPOWZ5THplRmFFT25FWEVLMnBiRGI4aCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1742038159),
('PetYvbLvJflyDrSD2zSaiakPiGuE7YJSQLltstHk', NULL, '20.171.207.192', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.2; +https://openai.com/gptbot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTJxYkIxbGNuQWREVkIyRFZKSmJtZ2llZTBwYU9ISU1RMTZQYTRNcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vZGV2dGlicm8uY29tL2Rvd25sb2FkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741907166),
('PfE9a7ZVsipkCs7FgUvOhsOLCst2wdtkqhNbsszR', NULL, '101.32.208.70', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUFI0T2VDY09qSlh0Sld0cTZTQVpRa2JjU2czWFRmdkZqMHpqY2pCNyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1742094272),
('PQ1FytDHj5N0KW6vgfbuNxtcJ1ltt25fkKv392k3', NULL, '54.88.179.33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNlc4bzZzYTNiSUt5MG5maWJYcU9ONWpxYzFLOWg2NEpnMDJjamhVUyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742065428),
('PUSS3y1zyFY3BILsAHnO3T12yp7qjvL48CNFBu0x', NULL, '43.135.130.202', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY0YyYWhaVGRlMW52TEhkblNSVFpqWnFBQWpTNG90RzZTcWFkQXdPMSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742084026),
('pxH1ypAtU9faAvUsbIGRHuwIuwvwZcEMgeG6CX30', NULL, '13.95.133.245', 'curl/8.6.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMEphY3c2bEF5TmE1RHdEN1pyZjMzNmJCN2tiODV3MEQ5OE5Qd1dUQiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly9kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741921459),
('qerQybMFQmKMwdTFavTFPl2zXPmzTunGrVP4V0UU', NULL, '43.135.172.89', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM0N5cWlzVXJBbHVVeUV3dTRKczl3U3hORnBvWG1qY0lJcUx1SXZuNSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741918034),
('Qg5ADU0MvzPMDblXHVqQBDrkWt3qYDGw7p7pJrIG', NULL, '46.101.9.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiazhjeDZ6Q3V5T2thVkh0RlZDOG1JZHJoVmV0UVdUUlZqNm9qcnR4UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9kZXZ0aWJyby5jb20vZG93bmxvYWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741997331),
('rD42JD7GdKpJn6YcM7gV5NtOsZUQIwbgxttD9lJe', NULL, '43.166.244.251', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSVlBRWt2Wm9YUlhXakRVTXg3RTZmUWxVTVZOWjg3UHVRNGNhSmx3UiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742069826),
('RGsK8T7pVmfGRB7AMufI6kqTU8cpzilzDySaWg0K', NULL, '43.157.82.252', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV2RZZThZdUlGUU5ic1c2U3Zjd21GU1B6eWk5QVYySkJFUUNNQWUwRyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741976216),
('RqVmUZ7bu31K11m8Xw14BVYE0LpRFXQltUNWi0Aq', NULL, '40.77.167.24', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNVdiekQzRDNKSTY5RE1kTzBsR0NpODNTdWUycXhIeTEwMURrSGVNYiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly9kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741965104),
('RV6AH2zqDyuerAMoXfFi6W0EDdWBTOdcMyVvT7Na', NULL, '35.84.189.209', 'Mozilla/5.0 (compatible; wpbot/1.3; +https://forms.gle/ajBaxygz9jSR8p8G9)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaEtkNXpvWHl3RnJ4eGY5dkdnU2FPYmRURmN1RlhhNk9FSU83dnU3QiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly9kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741940153),
('S7AglqmUIfKPbXEKN1ctuHXRaNnFxFdrZfrsbb6V', NULL, '43.159.149.216', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVDlCclJyNkhRVER1ZzVNRzlFSEF3QnV0OWhheGZDa01MU09vYTNqayI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1742004419),
('SDdIdd0uU7QBPPBQIzC8hCGgEchxy5JcTmCsye15', NULL, '43.130.57.76', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNk82ejBzaHRxTzZscE04ekN3cnJRVnNnVVBtQmxtYUE2dFEwOWhmQSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741926041),
('Slop7KeQWGSkO4PpijjR7wMOCUUCrfpwaUjb9kcW', NULL, '205.169.39.159', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTElTaHo0TDhqcUxlVXplc0tRVUZjTEZ0UFowNEhKUVUxUHdPcVVpVCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741982901),
('SYD0i2mIQcRy6dxygfOZFiiniX69a5YEaL0EhfHO', NULL, '93.159.230.84', 'Mozilla/5.0 (Linux; arm_64; Android 12; CPH2205) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.3.86.00 SA/3 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaVN1cWtkcU9XQlE0SjRZQzJMTVdUN1k2Qk91TUZvZ25MUGlhZFpRdSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly9kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741983688),
('TFCxrkjgm6EJmjqobSPGkTNsrYJxCKOF2zYZpZHt', NULL, '46.101.9.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic21WYXpQalNsVzJCMHZXdWtNTjNrY1dCR2RVUTlFdUZMMTE3d2NSaiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741997327),
('tfz85dbiflqaGpxA3xCl0oyIKIGMAFqEgyVv0iEa', NULL, '3.17.155.125', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/70.0.3538.110 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidlZFaTRpYnJseHpnNnBpV05qV3ZGYjQzQjEwajJrVkdDWWUzTjRacyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741957577),
('ubljOozV7mAvfEZ2fE3ji72W5wxC1gCXDoZlxBCO', NULL, '34.116.39.73', 'Mozilla/5.0 (Android 13; Mobile; rv:109.0) Gecko/112.0 Firefox/112.0 AppEngine-Google; (+http://code.google.com/appengine; appid: s~virustotalcloud)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMm5vWUtXN3ZGWFc2SFZhSzNKR2NUOXdzUUxWMlExN296SVVtMzliUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741979187),
('Ud2vOJH9FZywEEo4voBXn4RuENl9dmVOE5rxgzPr', NULL, '182.44.12.37', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN0hlaHdsazlKalpyZFdkVHBNT0pBeGhhS0FNcXJ1RGxmdGhVQ3k5UiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742056789),
('UVWINzCjAW6j9EfiK6uA1UuRqKQMcmMYTpWYPJvU', NULL, '34.122.147.229', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/125.0.6422.60 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSlk3SjhpR2xSb3hhRFo2NFN6WnpaNE5iN20ydUo0TE55NmZJVUFlcSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741982889),
('veMs1zYUnxldLnNKFffBhXMGSrzP50HZpFwax9J1', NULL, '176.100.243.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidGVzdFlDbXZvdXM1bEJOcjR5OE5yTFRkclRYWmxtc051RmpyQkJkZSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741982970),
('vL97WaIescGbwisPRNOA4mi4xd1o5jHHQFxq05Zf', NULL, '43.166.142.76', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNzB0alJPVlZ6V0N5Z1hKVkd2dDR4OFZia0pYQ2RzVXpNM3h5R3BmdCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741997587),
('vTufJRKF619l2K6w3MTB1yHmaPydT7R89NUKUr5g', NULL, '43.133.187.11', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicklMSDV4UUt3OXZ1bERpMGpQWlZva3daMGcxREhPOFJ4ajQ5NVR5YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly93d3cuZGV2dGlicm8uY29tL2Rvd25sb2FkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1742076177),
('VzTkPRru00OFc4b2rTscOtUsCaVgVVT7p5MoNwME', NULL, '188.215.235.121', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZFMxbVh0NGpxS3pxelpiUmdMV0tKeTlEUmJHVHd0Q3o5UWZ0RnRXYiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741983083);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('W7x4gTfdJljbltPmeF2J8PBCA9y2dBuJNynaDZeY', NULL, '62.210.90.211', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.3', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibWNYdjFISWdRVEVHNmxvMUVsUU5nY1BQRkZUVHd6Z0RiV29mYVVwWSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly9kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741884603),
('WnY56UFJiVkGyFpL2stUEeMkMdBNmogCXEhWk0lY', NULL, '43.159.143.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidVNKTUd4RHloTDY2dTNMbFlXZVpmd21TOXV4VWVMSzMyb041OUVDaSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742047822),
('WQ2DaEZxNwAdzubo4g2g0e4JGctbJI8mvX4XvuLC', NULL, '43.133.14.237', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNVRlTm92SUNFbVN5SU8zc3AwYnVIUmE4dUxmQ29OS01sbHZHdklXNiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1742048836),
('XLH9LTPxe1lxNdmKYsuXfGL9RRgKurgyF9duT6Ip', NULL, '43.153.58.28', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicVV2bnY4a05ldnNCVmFkUUZPOFB4Qlg0Sm81aWVOSU9iY1p6VG85SyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741884946),
('xMOxeoX3VzRLmsTIAukgrZflOkKkRGjpofyNVML3', NULL, '43.135.142.37', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSE50bkRiUFNIQkVxc2lKRnk0SENUNXpYMm94aUhtb2swYUpVUzY1SSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741883827),
('XW0SgZgPm8e84SAEjsCXnGWV24luKcV1w74rW6Lp', NULL, '152.53.53.235', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVG9ocUZEMjZQSGE1RlE2ZFlqRXhHSW5RemhvYjNzSVNxaE1xZFZtViI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly9kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741897865),
('xZKm2MduFwTxg66Kn6s31lQpbnpa9dU4GKf0KdCk', NULL, '52.34.76.65', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/133.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoienlrMFNMYW4wWUpHMFI0OThOdzJ5SElpVFpXajEyODk2SllOWW9OeCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741979218),
('YHpwKk2vd3ClRbdeAZOnayQZjbnEOBSFMupgQ5i1', NULL, '43.153.122.30', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTVc4bXo0TmdScUY3VGFRQUdzaVN2akh6Z3JZRTk2Z0tLRTJDTThxUyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMzoiaHR0cDovL3d3dy5kZXZ0aWJyby5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741964990),
('YzzZrEY9KreyhRppSaXjmJkZEdU4XMPQLD3iPTU9', NULL, '134.199.211.222', 'Mozilla/5.0 (compatible)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMnlURmdld1BVTWI4RmZnRmNUb09ieDlCNkpISklhY1k4b0ZiekpPWCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742068681),
('ze6Ef3ipJxJMChsutn0roBCzV6mLcSL7A8IWgWG3', NULL, '167.172.103.26', 'Mozilla/5.0 (compatible)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTGcxV3BCUzZqRnNlUVRRbkFUTGliaHlEQlozRjFaUEt4VEh4VmdJdyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741898297),
('Zfrkr6iWRFcjrtTfGtHSW5aPwUq1UQWdVMjIZJTV', NULL, '66.249.70.105', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMmt1NGg1eWdwN29leVJWVlB4RmJwckhlRjNldU51aUI5bnJkeTRLRSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741979194),
('ZHLF3M36dNLTShfoVuUBj3rFqORlkXJCdQlTIMz4', NULL, '15.206.73.42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNktiNVk2NzVrN1BRMUx5YmZ1cDl1bVdXcktBaVRNZ09GYVZ1alg4aSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoxOToiaHR0cDovL2RldnRpYnJvLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741909721);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT '/uploads/avatar.png',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `avatar`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'uploads/1823148212683306.png', 'MD. Faysal Hossain Tibro', 'faysaltibro@gmail.com', 'admin', NULL, '$2y$12$3wqrVOIStGphIWi4FP.A3.UvCOUfih4E6.ZbnEYbQ1KrZQvU1VD8a', NULL, '2024-12-10 04:59:28', '2025-02-04 11:20:26'),
(2, '/uploads/avatar.png', 'User', 'user@gmail.com', 'user', NULL, '$2y$12$11Yx9YHvWpy5B4YY3KvyAOw5hBNsk0P/P6Xhbh/v1.P0MpQPhn19K', NULL, '2024-12-10 04:59:28', '2024-12-10 04:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_information`
--

CREATE TABLE `user_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email_subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `anser` enum('yes','no') NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_information`
--

INSERT INTO `user_information` (`id`, `name`, `email`, `phone`, `email_subject`, `message`, `anser`, `created_at`, `updated_at`) VALUES
(2, 'Shelby Howell', 'hyquxyjes@mailinator.com', '+1 (103) 366-1567', 'nynuwakep@mailinator.com', 'Fugiat ipsum est mo', 'yes', '2024-12-13 11:58:04', '2024-12-13 11:59:05'),
(3, 'Tednen', 'moqagides18@gmail.com', '86854296214', 'moqagides18@gmail.com', 'Szia, meg akartam tudni az árát.', 'no', '2025-01-30 17:35:25', '2025-01-30 17:35:25'),
(4, 'Georgenen', 'ibucezevuda439@gmail.com', '88436988643', 'ibucezevuda439@gmail.com', 'Salam, qiymətinizi bilmək istədim.', 'no', '2025-02-01 00:20:55', '2025-02-01 00:20:55'),
(5, 'Robertnen', 'ixutikob077@gmail.com', '85114492714', 'ixutikob077@gmail.com', 'Szia, meg akartam tudni az árát.', 'no', '2025-02-02 06:19:42', '2025-02-02 06:19:42'),
(6, 'Tednen', 'moqagides18@gmail.com', '89145452496', 'moqagides18@gmail.com', 'Hi, მინდოდა ვიცოდე თქვენი ფასი.', 'no', '2025-02-04 00:13:50', '2025-02-04 00:13:50'),
(7, 'Georgenen', 'ibucezevuda439@gmail.com', '83471245229', 'ibucezevuda439@gmail.com', 'Dia duit, theastaigh uaim do phraghas a fháil.', 'no', '2025-02-04 18:13:21', '2025-02-04 18:13:21'),
(8, 'Robertnen', 'ixutikob077@gmail.com', '83587394167', 'ixutikob077@gmail.com', 'Ola, quería saber o seu prezo.', 'no', '2025-02-07 11:12:52', '2025-02-07 11:12:52'),
(9, 'Georgenen', 'ibucezevuda439@gmail.com', '87884124154', 'ibucezevuda439@gmail.com', 'Прывітанне, я хацеў даведацца Ваш прайс.', 'no', '2025-02-12 06:01:17', '2025-02-12 06:01:17'),
(10, 'Robertnen', 'ibucezevuda439@gmail.com', '89899286188', 'ibucezevuda439@gmail.com', 'Hi, მინდოდა ვიცოდე თქვენი ფასი.', 'no', '2025-02-13 23:44:34', '2025-02-13 23:44:34'),
(11, 'Tednen', 'ocopesuq299@gmail.com', '87513876237', 'ocopesuq299@gmail.com', 'Hai, saya ingin tahu harga Anda.', 'no', '2025-02-16 18:42:42', '2025-02-16 18:42:42'),
(12, 'Johnnen', 'yawiviseya67@gmail.com', '81539115614', 'yawiviseya67@gmail.com', 'Здравейте, исках да знам цената ви.', 'no', '2025-02-17 22:12:47', '2025-02-17 22:12:47'),
(13, 'Robertnen', 'aferinohis056@gmail.com', '88531863966', 'aferinohis056@gmail.com', 'Salam, qiymətinizi bilmək istədim.', 'no', '2025-02-19 02:14:03', '2025-02-19 02:14:03'),
(14, 'Georgenen', 'ocopesuq299@gmail.com', '81238165679', 'ocopesuq299@gmail.com', 'Ողջույն, ես ուզում էի իմանալ ձեր գինը.', 'no', '2025-02-19 13:46:01', '2025-02-19 13:46:01'),
(15, 'Tednen', 'ocopesuq299@gmail.com', '87142788375', 'ocopesuq299@gmail.com', 'Zdravo, htio sam znati vašu cijenu.', 'no', '2025-02-19 14:15:44', '2025-02-19 14:15:44'),
(16, 'Thank you for registering - it was incredible and pleasant all the best http://yandex.ru ladonna  cucumber', 'xrum011@24red.ru', '81637949967', 'xrum011@24red.ru', '<a href=\"https://goo.com\"><img src=\"https://webref.ru/example/image/panda.png\" alt=\"\"></a>', 'no', '2025-02-27 12:09:46', '2025-02-27 12:09:46'),
(17, 'Robertnen', 'aferinohis056@gmail.com', '83692795247', 'aferinohis056@gmail.com', 'Ola, quería saber o seu prezo.', 'no', '2025-03-01 02:48:08', '2025-03-01 02:48:08'),
(18, 'Tednen', 'ocopesuq299@gmail.com', '82195831559', 'ocopesuq299@gmail.com', 'Aloha, makemake wau eʻike i kāu kumukūʻai.', 'no', '2025-03-02 04:51:28', '2025-03-02 04:51:28'),
(19, 'Georgenen', 'ocopesuq299@gmail.com', '87661652856', 'ocopesuq299@gmail.com', 'Здравейте, исках да знам цената ви.', 'no', '2025-03-08 04:15:40', '2025-03-08 04:15:40'),
(20, 'Tednen', 'ocopesuq299@gmail.com', '85274285224', 'ocopesuq299@gmail.com', 'Hai, saya ingin tahu harga Anda.', 'no', '2025-03-09 00:04:15', '2025-03-09 00:04:15'),
(21, 'Robertnen', 'aferinohis056@gmail.com', '82395126943', 'aferinohis056@gmail.com', 'Hola, volia saber el seu preu.', 'no', '2025-03-09 03:03:34', '2025-03-09 03:03:34'),
(22, 'Masonnen', 'duqotayowud23@gmail.com', '85271673682', 'duqotayowud23@gmail.com', 'Dia duit, theastaigh uaim do phraghas a fháil.', 'no', '2025-03-10 02:46:12', '2025-03-10 02:46:12'),
(23, 'TestUser', 'mbrdrygn@do-not-respond.me', 'TestUser', 'mbrdrygn@do-not-respond.me', 'JAXicf QXAJFQ DkrEKDZH', 'no', '2025-03-11 08:34:18', '2025-03-11 08:34:18'),
(24, 'Georgenen', 'ocopesuq299@gmail.com', '82438568614', 'ocopesuq299@gmail.com', 'Здравейте, исках да знам цената ви.', 'no', '2025-03-13 18:12:11', '2025-03-13 18:12:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_education`
--
ALTER TABLE `my_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_experiences`
--
ALTER TABLE `my_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_skills`
--
ALTER TABLE `my_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_sections`
--
ALTER TABLE `service_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_information`
--
ALTER TABLE `user_information`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `my_education`
--
ALTER TABLE `my_education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `my_experiences`
--
ALTER TABLE `my_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `my_skills`
--
ALTER TABLE `my_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `service_sections`
--
ALTER TABLE `service_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_information`
--
ALTER TABLE `user_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
