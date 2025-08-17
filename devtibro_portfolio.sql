-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 17, 2025 at 09:53 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio-laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'first_name', 'MD. Faysal Hossain', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(2, 'last_name', 'Tibro', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(3, 'phone', '1734449023', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(4, 'email', 'faysaltibro@gmail.com', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(5, 'github_link', 'https://github.com/tibro0', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(6, 'linkedin_link', 'https://www.linkedin.com/in/md-faysal-hossain-tibro-1aa622226/', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(7, 'facebook_link', 'https://www.facebook.com/faysaltibro', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(8, 'whatsapp_link', 'https://api.whatsapp.com/send/?phone=8801734449023&text=Hello&type=phone_number&app_absent=0', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(9, 'address', 'Monsurabad, Adabor, Dhaka-1207.', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(10, 'experience', '1+ Years', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(11, 'city', 'Dhaka', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(12, 'nationality', 'Bangladeshi', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(13, 'language', 'English, Bangla', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(14, 'gender', 'Male', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(15, 'full_time', 'Available', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(16, 'freelancer', 'Available', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(17, 'status', 'UnMarried', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(18, 'animation_text_one', 'Laravel Developer', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(19, 'animation_text_two', 'Web Developer', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(20, 'animation_text_three', 'PHP Developer', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(21, 'animation_text_four', 'Web Designer', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(22, 'home_section_description', 'Highly motivated and results-oriented professional with 1+ years of experience in Laravel. Passionate about Laravel, PHP, HTML, CSS, Bootstrap,  JavaScript, jQuery. Strong work ethic and a desire to continuously learn and grow.', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(23, 'my_experience_short_description', 'Over 1+ years of experience in web development. Expertise in Laravel, PHP, and UI/UX design. Proven track record of delivering high-quality, user-centric web applications.', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(24, 'my_education_short_description', 'Bachelor of Science in Computer Science from Dhaka Central Polytechnic Institute. Strong academic foundation in Programming, Data Structures, and Algorithms.', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(25, 'my_skill_short_description', 'Proficient in PHP, Laravel, JavaScript, HTML, CSS. Experience with databases (MySQL, PostgreSQL). Strong problem-solving, communication, and teamwork skills.', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(26, 'age', '24 Years Old', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(27, 'about_me_short_description', 'Highly motivated and results-oriented professional with 1+ years of experience in Laravel. Passionate about Laravel, PHP, HTML, CSS, Bootstrap, JavaScript, jQuery. Strong work ethic and a desire to continuously learn and grow.', '2025-08-16 06:21:07', '2025-08-16 06:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '0001_01_01_000000_create_users_table', 1),
(14, '0001_01_01_000001_create_cache_table', 1),
(15, '0001_01_01_000002_create_jobs_table', 1),
(16, '2024_12_11_093908_create_information_table', 1),
(17, '2024_12_11_112743_create_service_sections_table', 1),
(18, '2024_12_11_174710_create_my_experiences_table', 1),
(19, '2024_12_11_181820_create_my_education_table', 1),
(20, '2024_12_11_190641_create_my_skills_table', 1),
(21, '2024_12_12_085810_create_portfolios_table', 1),
(22, '2024_12_12_114400_create_user_information_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `my_education`
--

CREATE TABLE `my_education` (
  `id` bigint UNSIGNED NOT NULL,
  `years` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_education`
--

INSERT INTO `my_education` (`id`, `years`, `course_name`, `company_name`, `description`, `created_at`, `updated_at`) VALUES
(1, '2015', 'Mission International School & Collage', 'Secondary School Certificate', 'Secondary School Certificate from Mission International School & Collage. Proficient in English, Mathematics, Science. Eager to learn and grow.', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(2, '2023', 'Shikhbe Shobai', 'Full Stack Web Development - Wordpress', 'Shikhbe Shobai: Bangladesh\'s premier IT training institute. Learn in-demand skills: web development, programming, digital marketing, and more.', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(3, '2024', 'Shikhbe Shobai', 'Full Stack Web Development - PHP Laravel', 'Shikhbe Shobai: Bangladesh\'s premier IT training institute. Learn in-demand skills: web development, programming, digital marketing, and more.', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(4, '2025', 'Dhaka Central Polytechnic Institute', 'Diploma Engineering Computer Technology', 'Diploma in Computer Engineering from DCPI. Proficient in Laravel, PHP, and Wordpress. Strong foundation in computer hardware and software.', '2025-08-16 06:21:07', '2025-08-16 06:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `my_experiences`
--

CREATE TABLE `my_experiences` (
  `id` bigint UNSIGNED NOT NULL,
  `years` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_experiences`
--

INSERT INTO `my_experiences` (`id`, `years`, `title`, `company_name`, `description`, `created_at`, `updated_at`) VALUES
(1, '2024', 'Udemy Online Courses - Laravel', 'Web Solution US', 'Delivering cutting-edge web solutions for businesses of all sizes. From design and development to digital marketing, we drive online success.', '2025-08-16 06:21:07', '2025-08-16 06:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `my_skills`
--

CREATE TABLE `my_skills` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_skills`
--

INSERT INTO `my_skills` (`id`, `icon`, `icon_name`, `created_at`, `updated_at`) VALUES
(1, 'bx bxl-html5', 'HTML5', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(2, 'bx bxl-css3', 'CSS3', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(3, 'bx bxl-bootstrap', 'Bootstrap', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(4, 'bx bxl-jquery', 'jQuery', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(5, 'bx bxl-jquery', 'jQuery', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(6, 'bx bxl-tailwind-css', 'Tailwind CSS', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(7, 'bx bxl-javascript', 'JavaScript', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(8, 'bx bxl-php', 'PHP', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(9, 'bx bxs-paint', 'Laravel', '2025-08-16 06:21:07', '2025-08-16 06:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `live_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `image`, `title`, `description`, `language`, `live_link`, `github_link`, `created_at`, `updated_at`) VALUES
(1, 'frontend/images/portfolio1.png', 'Frontend Project', 'Showcase of a frontend project. Demonstrates skills in HTML, CSS, JavaScript, and front-end frameworks. Includes code examples and project documentation.', 'HTML5, CSS3, Bootstrap, JavaScript, jQuery.', 'https://tibro0.github.io/Securex/', 'https://github.com/Tibro0/Securex', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(2, 'frontend/images/portfolio2.png', 'Charite Website', 'Official website of Charité – Universitätsmedizin Berlin. Provides information about the hospital, research, patient care, and careers. Online appointments and medical information available.', 'HTML5, CSS3, Bootstrap, JavaScript, jQuery.', 'https://tibro0.github.io/chariteam/', 'https://github.com/Tibro0/chariteam', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(3, 'frontend/images/portfolio3.png', 'Construction Company', 'Showcase projects, services, and expertise. Contact information, client testimonials, and project portfolio. Enhance online presence and attract new clients.', 'HTML5, CSS3, Bootstrap, JavaScript, jQuery.', 'https://tibro0.github.io/Buildx/', 'https://github.com/Tibro0/Buildx', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(4, 'frontend/images/portfolio4.png', 'Learning Management System', 'Online platform for delivering and tracking e-learning courses. Features include course enrollment, assignments, quizzes, progress tracking, and communication tools.', 'Laravel, PHP, Bootstrap, HTML5, CSS3, JavaScript, jQuery.', 'https://lms.devtibro.com/', 'https://lms.devtibro.com/', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(5, 'frontend/images/portfolio5.png', 'Restaurant Management Website', 'Streamline restaurant operations. Online ordering, table reservations, inventory management, employee scheduling, customer relationship management.', 'Laravel, PHP, Bootstrap, HTML5, CSS3, JavaScript, jQuery.', 'https://food-park.devtibro.com/', 'https://github.com/Tibro0/food-park-laravel', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(6, 'frontend/images/portfolio6.png', 'Multi Vendor E-commerce Website', 'Online marketplace where multiple sellers can list and sell their products. Features include product listings, order management, and secure payments. Benefits buyers and sellers.', 'Laravel, PHP, Bootstrap, HTML5, CSS3, JavaScript, jQuery.', 'http://ecommerce.devtibro.com/', 'https://github.com/Tibro0/multi-vendor-ecommerce-website-laravel', '2025-08-16 06:21:07', '2025-08-16 06:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `service_sections`
--

CREATE TABLE `service_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_sections`
--

INSERT INTO `service_sections` (`id`, `icon`, `url`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'bx bxl-jquery', 'https://devtibro.com/', 'jQuery', 'jQuery Development, AJAX Interactions, DOM Manipulation, Front-End Animations, Plugin Development.', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(2, 'bx bxs-webcam', 'https://devtibro.com/', 'Web Design', 'Website Design & Development, UI/UX Design, Branding, Logo Design, Responsive Websites.', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(3, 'bx bxl-php', 'https://devtibro.com/', 'PHP', 'PHP Development, Custom Web Applications, API Development, CMS Integration, E-commerce Solutions.', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(4, 'bx bxl-sketch', 'https://devtibro.com/', 'Web Development', 'Website Design & Development, E-commerce Solutions, SEO, UI/UX, Mobile-Responsive Websites.', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(5, 'bx bxl-bootstrap', 'https://devtibro.com/', 'Bootstrap', 'Responsive web design with Bootstrap. Create beautiful, cross-browser compatible websites.', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(6, 'bx bxs-paint', 'https://devtibro.com/', 'Laravel', 'Custom Laravel Development, API Integration, E-commerce Solutions, Web App Maintenance, Cloud Deployment.', '2025-08-16 06:21:07', '2025-08-16 06:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0dyLx2OtVhuMZumqY1F3zwPd1fLoNNrDfSDE2CSY', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVmU0OWZrb0RHeFZ6MThlY3BDT0lseTdhRlZoMHAwSFhhdnY5Y2dpbCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0OToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL3VzZXItaW5mb3JtYXRpb24tc2hvdyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1755347739),
('DSLTG6l1FaBAQrEH5CIrqKuA4yICAKlHrha2QbDu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidjF4TzdhZUpDTFlPZWI0akJ6ZTQ4ZmtaRnN0THNTTndwT1UyRmR5WSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1755347665),
('zlxRu4NYUOFyGsffNF4JwoUT3ULxCFALcCfEt8dW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNmluekxIb0JiQXNpMk5abzdGR1RSakxPeXFDNGsxNmU0SE0zdVlNRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9fQ==', 1755423616);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/uploads/avatar.png',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('user','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `avatar`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'frontend/images/profile.png', 'MD. Faysal Hossain Tibro', 'faysaltibro@gmail.com', 'admin', '2025-08-16 06:21:06', '$2y$12$W/8b4OmRBdSrJuWclh5vcuQ0vnxIpzUCIgAvs9YxEUV2P6U.5iIC6', 'NxRiBoIP9tYNCUAHl7LnJ5VYqVRq6UwpFreJe65LFscBMBnyJBbnRrQhlcqX', '2025-08-16 06:21:07', '2025-08-16 06:21:07'),
(2, '/uploads/avatar.png', 'User', 'user@gmail.com', 'user', '2025-08-16 06:21:07', '$2y$12$TeoBVNnq/.6gREOsJdW3fe7EnZ5NjjtUznbOp3cqx1gPuEihodsfO', 'UZytSRiRBe', '2025-08-16 06:21:07', '2025-08-16 06:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `user_information`
--

CREATE TABLE `user_information` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anser` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `my_education`
--
ALTER TABLE `my_education`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `my_experiences`
--
ALTER TABLE `my_experiences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `my_skills`
--
ALTER TABLE `my_skills`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service_sections`
--
ALTER TABLE `service_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_information`
--
ALTER TABLE `user_information`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
