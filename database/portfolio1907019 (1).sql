-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2023 at 09:06 PM
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
-- Database: `portfolio1907019`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE IF NOT EXISTS `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `short_title` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` text NOT NULL,
  `about_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `short_title`, `short_description`, `long_description`, `about_image`, `created_at`, `updated_at`) VALUES
(1, 'I have transform your ideas into remarkable digital products', '5+ Years Experience In this game, Means Product Designing', 'I love to work in User Experience & User Interface designing. Because I love to solve the design problem and find easy and better solutions to solve it. I always try my best to make good user interface with the best user experience. I have been working as a UX Designer', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of lorem ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the lorem ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated lorem ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nUser experience design - (Product Design)\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to unseery.\r\n\r\nWeb and user interface design - Development\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of lorem ipsum.\r\n\r\nInteraction design - Animation\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable.', 'upload/home_about/1769870691853352.jpg', NULL, '2023-06-27 09:37:02');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `blog_category_id` varchar(255) DEFAULT NULL,
  `blog_title` varchar(255) DEFAULT NULL,
  `blog_image` varchar(255) DEFAULT NULL,
  `blog_tags` varchar(255) DEFAULT NULL,
  `blog_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_category_id`, `blog_title`, `blog_image`, `blog_tags`, `blog_description`, `created_at`, `updated_at`) VALUES
(2, '2', 'Facebook design is dedicated to what\'s new in design', 'upload/blog/1769965707607122.jpg', 'facebook', 'A business strategy is a combination of proactive actions on the part of management, for the purpose of enhancing the company’s market position and overall performance and reactions to unexpected developments and new market.\r\n\r\nThe maximum part of the company’s present strategy is a result of formerly initiated actions and business approaches, but when market conditions take an unanticipated turn, the company requires a strategic reaction to cope with contingencies. Hence, for unforeseen development, a part of the business strategy is formulated as a reasoned response nature of business strategy.', '2023-06-28 10:47:16', NULL),
(3, '2', 'tuliiiiiiiiiiiiii', 'upload/blog/1769982586770374.jpg', 'facebook', 'habijabiiiiiiiiiiiiiiiiiii', '2023-06-28 15:15:33', NULL),
(4, '4', 'instragram', 'upload/blog/1770243134105666.jpg', 'instragram', 'hhhhhhhhhhhhhhhhhhh', '2023-07-01 12:16:51', NULL),
(5, '3', 'Laravel  design is dedicated to what\'s new in design', 'upload/blog/1770243165593985.jpg', 'home', 'laraavvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv', '2023-07-01 12:17:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `blog_category` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `blog_category`, `created_at`, `updated_at`) VALUES
(2, 'Facebook', NULL, NULL),
(3, 'laravel', NULL, NULL),
(4, 'Instragram', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(3, 'afrin', 'afrin@gmail.com', 'kj', '111111', '98635536673', '2023-06-30 13:49:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE IF NOT EXISTS `footers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instragram` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `number`, `short_description`, `address`, `email`, `facebook`, `instragram`, `copyright`, `created_at`, `updated_at`) VALUES
(1, '01735212840', 'There are many variations of passages of lorem ipsum available but the majority have suffered alteration in some form is also here.', 'Greeen Road,Dhaka', 'tuli@gmail.com', 'https://www.facebook.com/mahmuda.afrin.904?mibextid=ZbWKwL', 'https://instagram.com/mahmuda.afrin.904?igshid=MzRlODBiNWFlZA==', 'Copyright @ Afrin\'s Portfolio All right Reserved', NULL, '2023-06-29 14:45:03');

-- --------------------------------------------------------

--
-- Table structure for table `home_slides`
--

CREATE TABLE IF NOT EXISTS `home_slides` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `short_title` varchar(255) NOT NULL,
  `home_slide` varchar(255) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_slides`
--

INSERT INTO `home_slides` (`id`, `title`, `short_title`, `home_slide`, `video_url`, `created_at`, `updated_at`) VALUES
(1, 'I will give you Best Product in the shortest time.', 'Hi, I\'m AfrinTuli from Bangladesh', 'upload/home_slide/1769856324536769.png', 'https://www.youtube.com/watch?v=tz9jR1qDuhY&list=PL8z-YHNIa8wk3EoWiEVQxXEk0xif9QFEO&index=41', NULL, '2023-06-27 05:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_26_224458_create_home_slides_table', 2),
(6, '2023_06_27_131623_create_abouts_table', 3),
(7, '2023_06_27_164210_create_multi_images_table', 4),
(8, '2023_06_27_204421_create_portfolios_table', 5),
(9, '2023_06_28_104209_create_blog_categories_table', 6),
(10, '2023_06_28_122217_create_blogs_table', 7),
(11, '2023_06_29_192347_create_footers_table', 8),
(12, '2023_06_29_205518_create_contacts_table', 9),
(13, '2023_06_30_162610_create_contacts_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

CREATE TABLE IF NOT EXISTS `multi_images` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `multi_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `multi_image`, `created_at`, `updated_at`) VALUES
(2, 'upload/multi/1769878276945312.png', '2023-06-27 11:37:35', NULL),
(3, 'upload/multi/1769878276984137.png', '2023-06-27 11:37:36', NULL),
(4, 'upload/multi/1769878277068897.png', '2023-06-27 11:37:36', NULL),
(5, 'upload/multi/1769878277109477.png', '2023-06-27 11:37:36', NULL),
(7, 'upload/multi/1769878291327959.png', '2023-06-27 11:37:49', NULL),
(8, 'upload/multi/1769878291406716.png', '2023-06-27 11:37:49', NULL),
(9, 'upload/multi/1769878291435670.png', '2023-06-27 11:37:49', NULL),
(10, 'upload/multi/1769878291453078.png', '2023-06-27 11:37:49', NULL),
(11, 'upload/multi/1769878291483543.png', '2023-06-27 11:37:49', NULL),
(13, 'upload/multi/1769878370779840.png', '2023-06-27 11:39:05', NULL),
(14, 'upload/multi/1769878380639479.png', '2023-06-27 11:39:14', NULL),
(15, 'upload/multi/1769878552596937.png', '2023-06-27 11:41:58', NULL),
(16, 'upload/multi/1769878552678128.png', '2023-06-27 11:41:58', NULL),
(17, 'upload/multi/1769878552711553.png', '2023-06-27 11:41:58', NULL),
(18, 'upload/multi/1769878552732560.png', '2023-06-27 11:41:58', NULL),
(19, 'upload/multi/1769878552759571.png', '2023-06-27 11:41:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE IF NOT EXISTS `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `portfolio_name` varchar(255) DEFAULT NULL,
  `portfolio_title` varchar(255) DEFAULT NULL,
  `portfolio_image` varchar(255) DEFAULT NULL,
  `portfolio_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `portfolio_name`, `portfolio_title`, `portfolio_image`, `portfolio_description`, `created_at`, `updated_at`) VALUES
(1, 'Apps Design', 'Banking  Management System', 'upload/portfolio/1769897382459541.jpg', 'Definition: Business strategy can be understood as the course of action or set of decisions which assist the entrepreneurs in achieving specific business objectives.\r\n\r\nIt is nothing but a master plan that the management of a company implements to secure a competitive position in the market, carry on its operations, please customers and achieve the desired ends of the business.\r\n\r\nIn business, it is the long-range sketch of the desired image, direction and destination of the organization. It is a scheme of corporate intent and action, which is carefully planned and flexibly designed with the purpose of\r\n\r\nAchieving effectiveness,\r\nPerceiving and utilizing opportunities,\r\nMobilising resources,\r\nSecuring an advantageous position,\r\nMeeting challenges and threats,\r\nDirecting efforts and behaviour and\r\nGaining command over the situation.\r\nA business strategy is a set of competitive moves and actions that a business uses to attract customers, compete successfully, strengthening performance, and achieve organizational goals. It outlines how business should be carried out to reach the desired ends', '2023-06-27 16:41:16', NULL),
(2, 'Web Design', 'Banking  Management System', 'upload/portfolio/1769897599039540.png', 'Definition: Business strategy can be understood as the course of action or set of decisions which assist the entrepreneurs in achieving specific business objectives.\r\n\r\nIt is nothing but a master plan that the management of a company implements to secure a competitive position in the market, carry on its operations, please customers and achieve the desired ends of the business.\r\n\r\nIn business, it is the long-range sketch of the desired image, direction and destination of the organization. It is a scheme of corporate intent and action, which is carefully planned and flexibly designed with the purpose of\r\n\r\nAchieving effectiveness,\r\nPerceiving and utilizing opportunities,\r\nMobilising resources,\r\nSecuring an advantageous position,\r\nMeeting challenges and threats,\r\nDirecting efforts and behaviour and\r\nGaining command over the situation.\r\nA business strategy is a set of competitive moves and actions that a business uses to attract customers, compete successfully, strengthening performance, and achieve organizational goals. It outlines how business should be carried out to reach the desired ends', '2023-06-27 16:44:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `profile_image`, `email_verified_at`, `phonenumber`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'afrin', 'afrin@gmail.com', '', NULL, NULL, '', '$2y$10$jU6apv4c7LWT7BcDCHUOYOfAg7F4wUGzSrBF3vt0sXyK7gQ5aPjnO', 'nktpIp3zieqP7uMzZeNbEbcnofFHheDNUTNxwDR2YNOFgfNH6SYHFSpOsbpg', '2023-06-25 00:59:01', '2023-06-25 01:59:09'),
(3, 'mimtababu', 'mimta@gmail.com', 'mimta', NULL, '2023-06-25 05:57:51', '2222222222', '$2y$10$ajEczMFdk2JpYrjUY8XhX.GK.UI2psZyY5LWi9BCxNEUUcPOBb4eK', '2svHQsAGtCdJcVJBwJNso9DPnXlUcyqx0nFmSA4jIImv3N9yR2ZKH6swA49f', '2023-06-25 05:56:56', '2023-06-27 03:20:29'),
(4, 'Mahmuda', 'mahmuda@gmail.com', 'mahmuda', NULL, '2023-06-25 09:43:10', '01789228458', '$2y$10$AOni23y0DVlczwN0iCRIZezCq4oXRcc4xMzqT1oU52A8icqNTGFxW', NULL, '2023-06-25 09:42:32', '2023-06-25 09:43:10'),
(5, 'muskan2', 'muskan2@gmail.com', 'muskan2', '202306261803avatar.png', '2023-06-26 08:30:39', '11111111111', '$2y$10$uZ8QaaXmPWNT0QT3Iuc42OCBZSDUXNqIcGe7oR0nIU.ZSGvdjymRG', 'ZP3nc55J8ZIXluNbcKHx33d8hou06jUzywFM439Kp6N361KZ6C0lBRqCixVU', '2023-06-26 08:28:57', '2023-06-26 12:03:12'),
(6, 'tuli', 'tuli1@gmail.com', 'tuli', NULL, '2023-06-29 14:07:30', '00111111111111', '$2y$10$xj8UNsiGs2htLtXXUbcjd.gQgZXSbZehSAgyFZyQhNjeGEbtMAXJa', NULL, '2023-06-29 14:04:59', '2023-06-29 14:07:30');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
