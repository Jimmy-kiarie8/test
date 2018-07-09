-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2018 at 09:13 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verifyTokon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `verifyTokon`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jimmy', 'doe@gmail.com', '$2y$10$Q.9n337fwl9Y.ga8Q2xeuOtcJkdwvOmJFlbQR3R1v9LjVHOdFnWQ.', 'dVdP5rrzr7GNclLxVb4rdyShbRSTUEimHlmpyJGB', 0, 'plKehINrQFHoPbc28QPknt0xG44DbPPTVRApN5iHmfULoXYoQc5xwDhouUGF', '2018-03-23 11:19:00', '2018-03-23 11:19:00'),
(2, 'Nicholaus', 'nick@yahoo.com', '$2y$10$xNUrIz8x/3Qs8RAdhpw9kewSI7oX5hfEl.hlNjy0rW5...', '$2y$10$xNUrIz8x/3Qs8RAdhpw9kewSI7oX5hfEl.hlNjy0rW5...', 0, NULL, NULL, NULL),
(3, 'Rebeca', 'becs@hotmail.com', '$2y$10$Nw6g8hsuw6W6f59FRTrdyuxGT3Mgb9HPwYnPX/j6kDOY/ljF31KA6', NULL, 0, NULL, '2018-03-25 11:56:05', '2018-03-25 11:56:05');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `role_id`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `user_id`, `question_id`, `survey_id`, `answer`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '\"on\"', '2018-04-12 12:31:26', '2018-04-12 12:31:26'),
(2, 6, 2, 2, '\"tested\"', '2018-04-19 07:48:32', '2018-04-19 07:48:32'),
(3, 6, 2, 2, '\"test2\"', '2018-04-19 07:48:58', '2018-04-19 07:48:58'),
(4, 6, 2, 2, '\"another\"', '2018-04-19 08:39:15', '2018-04-19 08:39:15');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `user_id`, `survey_id`, `question_id`, `answer`, `created_at`, `updated_at`) VALUES
(72, 58, 1, 7, NULL, '2018-04-12 10:11:20', '2018-04-12 10:11:20'),
(73, 58, 1, 7, NULL, '2018-04-12 10:11:20', '2018-04-12 10:11:20'),
(74, 58, 1, 7, NULL, '2018-04-12 10:11:20', '2018-04-12 10:11:20'),
(75, 58, 1, 7, NULL, '2018-04-12 10:11:20', '2018-04-12 10:11:20'),
(76, 58, 1, 7, NULL, '2018-04-12 10:11:20', '2018-04-12 10:11:20'),
(77, 58, 1, 7, NULL, '2018-04-12 10:11:20', '2018-04-12 10:11:20'),
(78, 58, 1, 7, 'submit', '2018-04-12 10:11:20', '2018-04-12 10:11:20'),
(79, 58, 1, 6, NULL, '2018-04-12 10:12:35', '2018-04-12 10:12:35'),
(80, 58, 1, 6, NULL, '2018-04-12 10:12:35', '2018-04-12 10:12:35'),
(81, 58, 1, 6, NULL, '2018-04-12 10:12:35', '2018-04-12 10:12:35'),
(82, 58, 1, 6, NULL, '2018-04-12 10:12:36', '2018-04-12 10:12:36'),
(83, 58, 1, 6, NULL, '2018-04-12 10:12:36', '2018-04-12 10:12:36'),
(84, 58, 1, 6, 'vvvv', '2018-04-12 10:12:36', '2018-04-12 10:12:36'),
(85, 58, 1, 3, NULL, '2018-04-12 10:13:33', '2018-04-12 10:13:33'),
(86, 58, 1, 3, NULL, '2018-04-12 10:13:33', '2018-04-12 10:13:33'),
(87, 58, 1, 3, 'llop', '2018-04-12 10:13:33', '2018-04-12 10:13:33'),
(88, 58, 1, 1, 'vfvf', '2018-04-12 10:13:51', '2018-04-12 10:13:51'),
(89, 58, 1, 2, NULL, '2018-04-12 10:14:10', '2018-04-12 10:14:10'),
(90, 58, 1, 2, 'lpp', '2018-04-12 10:14:10', '2018-04-12 10:14:10'),
(91, 58, 1, 1, 'answer', '2018-04-12 10:38:58', '2018-04-12 10:38:58'),
(92, 58, 1, 1, 'answer', '2018-04-12 10:38:58', '2018-04-12 10:38:58'),
(93, 58, 1, 2, 'answer', '2018-04-12 10:38:58', '2018-04-12 10:38:58'),
(94, 58, 1, 2, 'answer', '2018-04-12 10:38:58', '2018-04-12 10:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_cat` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `path`, `name`, `type`, `size`, `created_at`, `updated_at`, `user_id`, `category_id`, `sub_cat`) VALUES
(62, 'storage/attachments/Vj0LDuW8ApeeMrMs7G0WbDg8sigy895I6OQ2vRy1.pdf', 'Doc3.pdf', 'application/pdf', 297274, '2018-04-19 08:43:35', '2018-04-19 13:01:19', 58, 4, 0),
(63, 'storage/attachments/cwAUdJu1rxa885MVvaiwa69nKtRr42Ts33a70VGl.pdf', 'Doc4.pdf', 'application/pdf', 449920, '2018-04-19 08:43:35', '2018-04-22 16:33:19', 6, 3, 3),
(64, 'storage/attachments/puvNS43DMtJd9fkNzbUub6KuyaOOwU1cIHdJ2hHc.pdf', 'Doc5.pdf', 'application/pdf', 900421, '2018-04-19 08:43:35', '2018-04-23 12:27:25', 6, 2, 3),
(65, 'storage/attachments/9N9375uBGLnxPrtHFjMsWPBCRqw4qrNi2XJMZLfn.pdf', 'Doc3.pdf', 'application/pdf', 297274, '2018-04-22 16:28:48', '2018-04-24 03:32:39', 6, 2, 2),
(66, 'storage/attachments/jdd8aLH4hpE4n2yXjElOhQky8OPn1XWIcFSEOrGY.pdf', 'Doc2.pdf', 'application/pdf', 356140, '2018-04-23 12:26:03', '2018-04-26 12:52:31', 6, 4, 1),
(67, 'storage/attachments/bk0yo7X4HX6nGPQffTspQUxuDvQ9p3YcNPhOap8f.pdf', 'Doc3.pdf', 'application/pdf', 297274, '2018-04-23 12:26:03', '2018-04-23 12:26:03', 6, 4, 0),
(68, 'storage/attachments/bTqUzTlyYEU2Wm2ifdorV9DyinFUpZetRpRVnN13.pdf', 'Doc4.pdf', 'application/pdf', 449920, '2018-04-23 12:26:04', '2018-04-23 12:26:04', 6, 2, 0),
(69, 'storage/attachments/fztOvCP19n0idfxufCDQh4a0idCanMwUfrGbWdo7.pdf', 'map1.pdf', 'application/pdf', 420888, '2018-04-27 04:00:24', '2018-04-27 04:00:24', 6, 23, 0),
(70, 'storage/attachments/xVynEi1ZpplYiJlgbQZhCVbcVuQco6D8XOc0Edbx.pdf', 'My_CV_4.pdf', 'application/pdf', 31806, '2018-04-27 04:00:24', '2018-04-27 04:47:46', 6, 24, 14);

-- --------------------------------------------------------

--
-- Table structure for table `attachment_categories`
--

CREATE TABLE `attachment_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `shareholders` tinyint(1) NOT NULL,
  `directors` tinyint(1) NOT NULL,
  `managers` tinyint(1) NOT NULL,
  `employees` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attachment_categories`
--

INSERT INTO `attachment_categories` (`id`, `name`, `description`, `shareholders`, `directors`, `managers`, `employees`, `created_at`, `updated_at`) VALUES
(2, 'Reports', 'Report documents', 1, 1, 0, 0, '2018-02-28 07:32:10', '2018-02-28 07:32:10'),
(3, 'Finance', 'finance documents', 1, 0, 0, 0, '2018-02-28 07:32:36', '2018-02-28 07:32:36'),
(4, 'Resolution', 'Resolution documents', 0, 0, 0, 0, '2018-02-28 07:48:29', '2018-02-28 07:48:29'),
(23, 'Training', 'lorem', 0, 0, 0, 1, '2018-03-25 13:01:15', '2018-03-25 13:01:15'),
(24, 'test', 'test', 1, 1, 0, 0, '2018-04-20 11:34:36', '2018-04-20 11:34:36');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 'hae guys', '2018-03-27 02:17:06', '2018-03-27 02:17:06'),
(2, 2, 'comments', '2018-03-27 02:28:56', '2018-03-27 02:28:56'),
(3, 5, 'lorem', '2018-03-28 17:28:43', '2018-03-28 17:28:43'),
(4, 6, 'new comment', '2018-03-28 17:40:51', '2018-03-28 17:40:51'),
(5, 3, 'comment', '2018-03-29 01:59:40', '2018-03-29 01:59:40'),
(6, 6, 'comment', '2018-04-07 12:02:43', '2018-04-07 12:02:43'),
(7, 58, 'new comment', '2018-04-12 05:15:55', '2018-04-12 05:15:55'),
(8, 58, 'test', '2018-04-12 05:38:18', '2018-04-12 05:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_no` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `user_id`, `name`, `email`, `logo`, `website`, `description`, `tel_no`, `color`, `created_at`, `updated_at`) VALUES
(3, 6, 'facegram', 'facegram@gmail.com', 'Facegram', 'www.facegram.com', 'lorem', '90001192', 'purple', '2018-03-26 12:42:03', '2018-03-26 12:42:03'),
(4, 1, 'vue', 'jim@gmail.com', 'logo', 'www.corp.com', 'lorem', '92927', 'blue', '2018-03-28 09:55:26', '2018-04-08 14:01:17'),
(5, 6, 'Medium', 'medium@info.com', 'Logo', 'www.medium.org', 'Lorem ipsum', '0009099', 'indigo', '2018-04-20 10:32:13', '2018-04-20 10:32:13'),
(6, 6, 'test', 'test@gmail.com', 'logo', 'www.test.io', 'test', '09900', 'green', '2018-04-21 12:49:52', '2018-05-05 13:42:39');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `direct_comments`
--

CREATE TABLE `direct_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `docs`
--

CREATE TABLE `docs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doc_categories`
--

CREATE TABLE `doc_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `user_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 6, 'post', '2018-04-18 04:30:48', '2018-04-18 04:30:48'),
(2, 6, 'post', '2018-04-18 04:31:28', '2018-04-18 04:31:28'),
(3, 6, 'fvf', '2018-04-18 04:32:18', '2018-04-18 04:32:18'),
(4, 6, 'fvf', '2018-04-18 04:32:51', '2018-04-18 04:32:51'),
(5, 6, 'try', '2018-04-18 04:33:41', '2018-04-18 04:33:41'),
(6, 6, 'chat', '2018-04-18 04:39:43', '2018-04-18 04:39:43'),
(7, 6, 'Post 1', '2018-04-18 04:40:47', '2018-04-18 04:40:47'),
(8, 6, 'ok', '2018-04-18 04:42:17', '2018-04-18 04:42:17'),
(9, NULL, 'fff', '2018-04-18 04:48:26', '2018-04-18 04:48:26'),
(10, NULL, 'lop', '2018-04-18 04:49:17', '2018-04-18 04:49:17'),
(11, NULL, 'send', '2018-04-18 06:17:13', '2018-04-18 06:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(25, 'database', 'default', '{\"displayName\":\"App\\\\Mail\\\\Documents\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\Documents\\\":22:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:0:{}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Mail\\Documents has been attempted too many times or run too long. The job may have previously timed out. in C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php:396\nStack trace:\n#0 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(316): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), 3)\n#1 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(272): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#2 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(118): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#3 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#4 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(85): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#5 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#6 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#7 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#9 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#10 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#11 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Command\\Command.php(252): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#12 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(170): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#13 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(865): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#14 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(241): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#15 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(143): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#16 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(88): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(122): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 C:\\xampp\\htdocs\\codeignitor\\eboard\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 {main}', '2018-04-17 04:22:06'),
(26, 'database', 'default', '{\"displayName\":\"App\\\\Mail\\\\Documents\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\Documents\\\":22:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:0:{}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'ErrorException: Undefined variable: title in C:\\xampp\\htdocs\\codeignitor\\eboard\\storage\\framework\\views\\83a7f93d946b82988f8528ef20bf5b49ce47c2b1.php:6\nStack trace:\n#0 C:\\xampp\\htdocs\\codeignitor\\eboard\\storage\\framework\\views\\83a7f93d946b82988f8528ef20bf5b49ce47c2b1.php(6): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'C:\\\\xampp\\\\htdocs...\', 6, Array)\n#1 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(43): include(\'C:\\\\xampp\\\\htdocs...\')\n#2 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(59): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'C:\\\\xampp\\\\htdocs...\', Array)\n#3 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(137): Illuminate\\View\\Engines\\CompilerEngine->get(\'C:\\\\xampp\\\\htdocs...\', Array)\n#4 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(120): Illuminate\\View\\View->getContents()\n#5 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(85): Illuminate\\View\\View->renderContents()\n#6 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(341): Illuminate\\View\\View->render()\n#7 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(314): Illuminate\\Mail\\Mailer->renderView(\'emails.campaign\', Array)\n#8 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(233): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.campaign\', NULL, NULL, Array)\n#9 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(148): Illuminate\\Mail\\Mailer->send(\'emails.campaign\', Array, Object(Closure))\n#10 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(18): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#11 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(149): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Illuminate\\Translation\\Translator), Object(Closure))\n#12 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#13 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\Mailer))\n#14 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#15 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#19 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(114): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(49): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#23 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(83): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#24 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(322): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(272): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#26 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(118): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(85): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#29 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#31 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#32 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#35 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Command\\Command.php(252): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(170): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(865): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(241): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(143): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(88): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(122): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\codeignitor\\eboard\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 {main}\n\nNext ErrorException: Undefined variable: title (View: C:\\xampp\\htdocs\\codeignitor\\eboard\\resources\\views\\emails\\campaign.blade.php) in C:\\xampp\\htdocs\\codeignitor\\eboard\\storage\\framework\\views\\83a7f93d946b82988f8528ef20bf5b49ce47c2b1.php:6\nStack trace:\n#0 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(45): Illuminate\\View\\Engines\\CompilerEngine->handleViewException(Object(ErrorException), 0)\n#1 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(59): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'C:\\\\xampp\\\\htdocs...\', Array)\n#2 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(137): Illuminate\\View\\Engines\\CompilerEngine->get(\'C:\\\\xampp\\\\htdocs...\', Array)\n#3 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(120): Illuminate\\View\\View->getContents()\n#4 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(85): Illuminate\\View\\View->renderContents()\n#5 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(341): Illuminate\\View\\View->render()\n#6 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(314): Illuminate\\Mail\\Mailer->renderView(\'emails.campaign\', Array)\n#7 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(233): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.campaign\', NULL, NULL, Array)\n#8 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(148): Illuminate\\Mail\\Mailer->send(\'emails.campaign\', Array, Object(Closure))\n#9 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(18): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#10 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(149): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Illuminate\\Translation\\Translator), Object(Closure))\n#11 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\Mailer))\n#13 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#14 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(114): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(49): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#22 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(83): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#23 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(322): Illuminate\\Queue\\Jobs\\Job->fire()\n#24 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(272): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#25 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(118): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#26 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(85): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#28 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#29 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#30 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#32 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#33 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#34 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Command\\Command.php(252): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#35 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(170): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(865): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(241): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(143): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(88): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(122): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp\\htdocs\\codeignitor\\eboard\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 {main}', '2018-04-17 04:23:00'),
(27, 'database', 'default', '{\"displayName\":\"App\\\\Mail\\\\Documents\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\Documents\\\":22:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:55;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:0:{}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'ErrorException: Undefined variable: title in C:\\xampp\\htdocs\\codeignitor\\eboard\\storage\\framework\\views\\83a7f93d946b82988f8528ef20bf5b49ce47c2b1.php:6\nStack trace:\n#0 C:\\xampp\\htdocs\\codeignitor\\eboard\\storage\\framework\\views\\83a7f93d946b82988f8528ef20bf5b49ce47c2b1.php(6): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'C:\\\\xampp\\\\htdocs...\', 6, Array)\n#1 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(43): include(\'C:\\\\xampp\\\\htdocs...\')\n#2 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(59): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'C:\\\\xampp\\\\htdocs...\', Array)\n#3 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(137): Illuminate\\View\\Engines\\CompilerEngine->get(\'C:\\\\xampp\\\\htdocs...\', Array)\n#4 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(120): Illuminate\\View\\View->getContents()\n#5 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(85): Illuminate\\View\\View->renderContents()\n#6 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(341): Illuminate\\View\\View->render()\n#7 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(314): Illuminate\\Mail\\Mailer->renderView(\'emails.campaign\', Array)\n#8 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(233): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.campaign\', NULL, NULL, Array)\n#9 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(148): Illuminate\\Mail\\Mailer->send(\'emails.campaign\', Array, Object(Closure))\n#10 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(18): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#11 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(149): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Illuminate\\Translation\\Translator), Object(Closure))\n#12 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#13 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\Mailer))\n#14 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#15 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#19 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(114): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(49): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#23 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(83): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#24 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(322): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(272): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#26 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(118): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(85): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#29 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#31 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#32 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#35 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Command\\Command.php(252): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(170): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(865): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(241): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(143): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(88): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(122): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\codeignitor\\eboard\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 {main}\n\nNext ErrorException: Undefined variable: title (View: C:\\xampp\\htdocs\\codeignitor\\eboard\\resources\\views\\emails\\campaign.blade.php) in C:\\xampp\\htdocs\\codeignitor\\eboard\\storage\\framework\\views\\83a7f93d946b82988f8528ef20bf5b49ce47c2b1.php:6\nStack trace:\n#0 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(45): Illuminate\\View\\Engines\\CompilerEngine->handleViewException(Object(ErrorException), 0)\n#1 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(59): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'C:\\\\xampp\\\\htdocs...\', Array)\n#2 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(137): Illuminate\\View\\Engines\\CompilerEngine->get(\'C:\\\\xampp\\\\htdocs...\', Array)\n#3 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(120): Illuminate\\View\\View->getContents()\n#4 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(85): Illuminate\\View\\View->renderContents()\n#5 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(341): Illuminate\\View\\View->render()\n#6 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(314): Illuminate\\Mail\\Mailer->renderView(\'emails.campaign\', Array)\n#7 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(233): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.campaign\', NULL, NULL, Array)\n#8 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(148): Illuminate\\Mail\\Mailer->send(\'emails.campaign\', Array, Object(Closure))\n#9 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(18): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#10 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(149): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Illuminate\\Translation\\Translator), Object(Closure))\n#11 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\Mailer))\n#13 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#14 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(114): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(49): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#22 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(83): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#23 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(322): Illuminate\\Queue\\Jobs\\Job->fire()\n#24 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(272): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#25 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(118): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#26 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(85): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#28 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#29 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#30 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#32 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#33 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#34 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Command\\Command.php(252): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#35 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(170): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(865): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(241): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(143): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(88): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(122): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp\\htdocs\\codeignitor\\eboard\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 {main}', '2018-04-17 04:23:00');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(28, 'database', 'default', '{\"displayName\":\"App\\\\Mail\\\\Documents\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\Documents\\\":22:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:60;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:0:{}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'ErrorException: Undefined variable: title in C:\\xampp\\htdocs\\codeignitor\\eboard\\storage\\framework\\views\\83a7f93d946b82988f8528ef20bf5b49ce47c2b1.php:6\nStack trace:\n#0 C:\\xampp\\htdocs\\codeignitor\\eboard\\storage\\framework\\views\\83a7f93d946b82988f8528ef20bf5b49ce47c2b1.php(6): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'C:\\\\xampp\\\\htdocs...\', 6, Array)\n#1 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(43): include(\'C:\\\\xampp\\\\htdocs...\')\n#2 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(59): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'C:\\\\xampp\\\\htdocs...\', Array)\n#3 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(137): Illuminate\\View\\Engines\\CompilerEngine->get(\'C:\\\\xampp\\\\htdocs...\', Array)\n#4 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(120): Illuminate\\View\\View->getContents()\n#5 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(85): Illuminate\\View\\View->renderContents()\n#6 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(341): Illuminate\\View\\View->render()\n#7 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(314): Illuminate\\Mail\\Mailer->renderView(\'emails.campaign\', Array)\n#8 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(233): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.campaign\', NULL, NULL, Array)\n#9 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(148): Illuminate\\Mail\\Mailer->send(\'emails.campaign\', Array, Object(Closure))\n#10 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(18): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#11 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(149): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Illuminate\\Translation\\Translator), Object(Closure))\n#12 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#13 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\Mailer))\n#14 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#15 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#19 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(114): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(49): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#23 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(83): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#24 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(322): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(272): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#26 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(118): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(85): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#29 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#31 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#32 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#35 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Command\\Command.php(252): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(170): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(865): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(241): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(143): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(88): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(122): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\codeignitor\\eboard\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 {main}\n\nNext ErrorException: Undefined variable: title (View: C:\\xampp\\htdocs\\codeignitor\\eboard\\resources\\views\\emails\\campaign.blade.php) in C:\\xampp\\htdocs\\codeignitor\\eboard\\storage\\framework\\views\\83a7f93d946b82988f8528ef20bf5b49ce47c2b1.php:6\nStack trace:\n#0 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(45): Illuminate\\View\\Engines\\CompilerEngine->handleViewException(Object(ErrorException), 0)\n#1 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(59): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'C:\\\\xampp\\\\htdocs...\', Array)\n#2 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(137): Illuminate\\View\\Engines\\CompilerEngine->get(\'C:\\\\xampp\\\\htdocs...\', Array)\n#3 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(120): Illuminate\\View\\View->getContents()\n#4 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(85): Illuminate\\View\\View->renderContents()\n#5 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(341): Illuminate\\View\\View->render()\n#6 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(314): Illuminate\\Mail\\Mailer->renderView(\'emails.campaign\', Array)\n#7 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(233): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.campaign\', NULL, NULL, Array)\n#8 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(148): Illuminate\\Mail\\Mailer->send(\'emails.campaign\', Array, Object(Closure))\n#9 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(18): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#10 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(149): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Illuminate\\Translation\\Translator), Object(Closure))\n#11 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\Mailer))\n#13 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#14 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(114): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#19 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(49): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#22 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(83): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#23 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(322): Illuminate\\Queue\\Jobs\\Job->fire()\n#24 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(272): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#25 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(118): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#26 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(85): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#28 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#29 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#30 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#32 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#33 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#34 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Command\\Command.php(252): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#35 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(170): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(865): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(241): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(143): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(88): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(122): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp\\htdocs\\codeignitor\\eboard\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 {main}', '2018-04-17 04:23:00'),
(29, 'database', 'default', '{\"displayName\":\"App\\\\Mail\\\\Documents\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\Documents\\\":22:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:0:{}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Mail\\Documents has been attempted too many times or run too long. The job may have previously timed out. in C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php:396\nStack trace:\n#0 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(316): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), 3)\n#1 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(272): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#2 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(118): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#3 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#4 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(85): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#5 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#6 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#7 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#9 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#10 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#11 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Command\\Command.php(252): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#12 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(170): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#13 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(865): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#14 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(241): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#15 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(143): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#16 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(88): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(122): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 C:\\xampp\\htdocs\\codeignitor\\eboard\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 {main}', '2018-04-17 04:23:15'),
(30, 'database', 'default', '{\"displayName\":\"App\\\\Mail\\\\Documents\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\Documents\\\":22:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:0:{}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'InvalidArgumentException: View [emails] not found. in C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php:137\nStack trace:\n#0 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths(\'emails\', Array)\n#1 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Factory.php(128): Illuminate\\View\\FileViewFinder->find(\'emails\')\n#2 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(341): Illuminate\\View\\Factory->make(\'emails\', Array)\n#3 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(314): Illuminate\\Mail\\Mailer->renderView(\'emails\', Array)\n#4 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(233): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails\', NULL, NULL, Array)\n#5 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(148): Illuminate\\Mail\\Mailer->send(\'emails\', Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(18): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(149): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Illuminate\\Translation\\Translator), Object(Closure))\n#8 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#9 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\Mailer))\n#10 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#11 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#12 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#13 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#14 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#15 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(114): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#16 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(49): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#19 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(83): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#20 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(322): Illuminate\\Queue\\Jobs\\Job->fire()\n#21 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(272): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#22 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(118): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#23 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#24 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(85): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#25 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#26 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#27 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#28 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#29 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#30 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#31 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Command\\Command.php(252): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#32 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(170): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#33 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(865): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(241): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(143): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(88): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(122): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\xampp\\htdocs\\codeignitor\\eboard\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 {main}', '2018-04-17 04:26:16'),
(31, 'database', 'default', '{\"displayName\":\"App\\\\Mail\\\\Documents\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\Documents\\\":22:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:0:{}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'InvalidArgumentException: View [emails] not found. in C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php:137\nStack trace:\n#0 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths(\'emails\', Array)\n#1 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Factory.php(128): Illuminate\\View\\FileViewFinder->find(\'emails\')\n#2 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(341): Illuminate\\View\\Factory->make(\'emails\', Array)\n#3 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(314): Illuminate\\Mail\\Mailer->renderView(\'emails\', Array)\n#4 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(233): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails\', NULL, NULL, Array)\n#5 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(148): Illuminate\\Mail\\Mailer->send(\'emails\', Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(18): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(149): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Illuminate\\Translation\\Translator), Object(Closure))\n#8 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#9 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\Mailer))\n#10 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#11 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#12 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#13 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#14 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#15 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(114): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#16 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(49): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#19 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(83): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#20 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(322): Illuminate\\Queue\\Jobs\\Job->fire()\n#21 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(272): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#22 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(118): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#23 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#24 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(85): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#25 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#26 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#27 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#28 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#29 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#30 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#31 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Command\\Command.php(252): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#32 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(170): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#33 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(865): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(241): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(143): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(88): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(122): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\xampp\\htdocs\\codeignitor\\eboard\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 {main}', '2018-04-17 04:26:16');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(32, 'database', 'default', '{\"displayName\":\"App\\\\Mail\\\\Documents\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:18:\\\"App\\\\Mail\\\\Documents\\\":22:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:0:{}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 'InvalidArgumentException: View [emails] not found. in C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php:137\nStack trace:\n#0 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths(\'emails\', Array)\n#1 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Factory.php(128): Illuminate\\View\\FileViewFinder->find(\'emails\')\n#2 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(341): Illuminate\\View\\Factory->make(\'emails\', Array)\n#3 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(314): Illuminate\\Mail\\Mailer->renderView(\'emails\', Array)\n#4 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(233): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails\', NULL, NULL, Array)\n#5 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(148): Illuminate\\Mail\\Mailer->send(\'emails\', Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(18): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(149): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Illuminate\\Translation\\Translator), Object(Closure))\n#8 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(52): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#9 [internal function]: Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\Mailer))\n#10 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#11 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#12 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#13 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#14 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#15 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(114): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#16 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(49): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#19 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(83): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#20 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(322): Illuminate\\Queue\\Jobs\\Job->fire()\n#21 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(272): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#22 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(118): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#23 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#24 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(85): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#25 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#26 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#27 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#28 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#29 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(564): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#30 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#31 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Command\\Command.php(252): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#32 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(170): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#33 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(865): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(241): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\symfony\\console\\Application.php(143): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(88): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 C:\\xampp\\htdocs\\codeignitor\\eboard\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(122): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\xampp\\htdocs\\codeignitor\\eboard\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 {main}', '2018-04-17 04:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `file_paths`
--

CREATE TABLE `file_paths` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_paths`
--

INSERT INTO `file_paths` (`id`, `user_id`, `path`, `created_at`, `updated_at`) VALUES
(1, 0, '\\photos\\6\\fold\\6915737-black-jaguar-animal-wallpaper-hd.jpg', '2018-03-07 08:42:54', '2018-03-07 08:42:54'),
(2, 6, '\\photos\\6\\fold\\Taylor.jpeg', '2018-03-07 08:53:45', '2018-03-07 08:53:45'),
(3, 6, '\\photos\\6\\fold\\DJ Headphones 1366 x 768 HDTV.jpeg', '2018-03-07 11:44:53', '2018-03-07 11:44:53'),
(4, 6, '\\photos\\shares\\Cool-Water-Bottle-Pictures-HD-Wallpaper-1080x607.jpg', '2018-03-08 02:09:51', '2018-03-08 02:09:51'),
(5, 6, '\\photos\\6\\docs\\5aa248cc590428v.png', '2018-03-09 05:41:55', '2018-03-19 04:49:38'),
(6, 6, '\\photos\\6\\docs\\5aa24e2d18d46.pdf', '2018-03-09 06:04:45', '2018-03-09 06:04:45'),
(7, 1, '\\photos\\1\\Jimmy\\5abb596fd19bc.jpeg', '2018-03-28 05:59:29', '2018-03-28 05:59:29'),
(8, 1, '\\files\\1\\5abb5af9ade8b.jpg', '2018-03-28 06:06:02', '2018-03-28 06:06:02');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"displayName\":\"App\\\\Mail\\\\CampaignReady\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\CampaignReady\\\":24:{s:10:\\\"subscriber\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:14:\\\"App\\\\Subscriber\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:5:\\\"title\\\";s:4:\\\"test\\\";s:7:\\\"content\\\";s:11:\\\"test tester\\\";s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:0:{}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1528368112, 1528368112),
(2, 'default', '{\"displayName\":\"App\\\\Mail\\\\CampaignReady\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\CampaignReady\\\":24:{s:10:\\\"subscriber\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:14:\\\"App\\\\Subscriber\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:5:\\\"title\\\";s:4:\\\"test\\\";s:7:\\\"content\\\";s:11:\\\"test tester\\\";s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:0:{}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1528368112, 1528368112),
(3, 'default', '{\"displayName\":\"App\\\\Mail\\\\CampaignReady\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\CampaignReady\\\":24:{s:10:\\\"subscriber\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:14:\\\"App\\\\Subscriber\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:5:\\\"title\\\";s:4:\\\"test\\\";s:7:\\\"content\\\";s:11:\\\"test tester\\\";s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:0:{}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1528368112, 1528368112),
(4, 'default', '{\"displayName\":\"App\\\\Mail\\\\CampaignReady\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\CampaignReady\\\":24:{s:10:\\\"subscriber\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:14:\\\"App\\\\Subscriber\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:5:\\\"title\\\";s:4:\\\"test\\\";s:7:\\\"content\\\";s:11:\\\"test tester\\\";s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:0:{}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1528368112, 1528368112),
(5, 'default', '{\"displayName\":\"App\\\\Mail\\\\CampaignReady\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\CampaignReady\\\":24:{s:10:\\\"subscriber\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:14:\\\"App\\\\Subscriber\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:5:\\\"title\\\";s:6:\\\"qwerty\\\";s:7:\\\"content\\\";s:4:\\\"test\\\";s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:0:{}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1528368225, 1528368225),
(6, 'default', '{\"displayName\":\"App\\\\Mail\\\\CampaignReady\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\CampaignReady\\\":24:{s:10:\\\"subscriber\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:14:\\\"App\\\\Subscriber\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:5:\\\"title\\\";s:6:\\\"qwerty\\\";s:7:\\\"content\\\";s:4:\\\"test\\\";s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:0:{}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1528368225, 1528368225),
(7, 'default', '{\"displayName\":\"App\\\\Mail\\\\CampaignReady\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\CampaignReady\\\":24:{s:10:\\\"subscriber\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:14:\\\"App\\\\Subscriber\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:5:\\\"title\\\";s:6:\\\"qwerty\\\";s:7:\\\"content\\\";s:4:\\\"test\\\";s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:0:{}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1528368225, 1528368225),
(8, 'default', '{\"displayName\":\"App\\\\Mail\\\\CampaignReady\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":3:{s:8:\\\"mailable\\\";O:22:\\\"App\\\\Mail\\\\CampaignReady\\\":24:{s:10:\\\"subscriber\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:14:\\\"App\\\\Subscriber\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:5:\\\"title\\\";s:6:\\\"qwerty\\\";s:7:\\\"content\\\";s:4:\\\"test\\\";s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:0:{}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;}\"}}', 0, NULL, 1528368225, 1528368225);

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `user_id`, `image`, `created_at`, `updated_at`) VALUES
(3, 6, '/storage/public/logo/1522143882Blue Vintage Bike 1366 x 768 HDTV.jpeg', '2018-03-27 06:44:43', '2018-03-27 06:44:43');

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/storage/logo/logo.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `user_id`, `company_id`, `image`, `created_at`, `updated_at`) VALUES
(7, 31, 3, '/storage/logo/1523513568brand06.png', '2018-04-09 09:19:29', '2018-04-09 09:19:29'),
(8, 6, 4, '/storage/logo/1524325671brand4.png', '2018-04-09 11:22:05', '2018-04-09 11:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `manages`
--

CREATE TABLE `manages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maxUsers` int(11) NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manages`
--

INSERT INTO `manages` (`id`, `user_id`, `name`, `maxUsers`, `website`, `parent_company`, `description`, `created_at`, `updated_at`) VALUES
(5, 6, 'company', 21, 'www.icdc.com', 'icdc', 'company', '2018-03-19 13:13:38', '2018-03-19 13:13:38'),
(12, 6, 'bridge corp', 1210, 'www.bridge.org', 'A-corp', 'Lorem ipsum', '2018-03-25 12:38:08', '2018-03-25 13:18:32'),
(13, 6, 'A-corp', 100, 'www.corp.com', 'B-corp', 'Lorem', '2018-03-25 13:11:05', '2018-03-25 13:17:28'),
(14, 6, 'vfcd', 123, 'QWEDRF', 'QAWSEDFG', 'SDFVBN', '2018-04-13 12:05:17', '2018-04-13 12:05:17');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2017_11_04_212439_create_attachments_table', 1),
(11, '2017_11_21_090012_create_attachment_categories_table', 1),
(14, '2018_02_25_142103_create_permission_tables', 1),
(15, '2018_02_26_063808_create_events_table', 2),
(17, '2018_02_27_081321_create_nses_table', 4),
(19, '2018_02_22_070144_create_shareholders_table', 6),
(20, '2018_03_02_073838_create_share_comments_table', 7),
(21, '2018_03_02_112758_create_direct_comments_table', 8),
(22, '2018_02_21_095838_create_directors_table', 9),
(23, '2018_03_05_091507_create_doc_categories_table', 10),
(24, '2018_03_06_083830_create_manages_table', 10),
(25, '2017_11_18_062642_create_posts_table', 11),
(26, '2017_11_18_144708_add_user_id_to_posts', 11),
(27, '2017_11_19_060234_add_cover_image_to_posts', 11),
(28, '2018_01_17_103131_create_menus_table', 11),
(29, '2018_03_07_110529_create_file_paths_table', 12),
(30, '2018_03_09_092337_create_new_file_paths_table', 13),
(31, '2018_03_23_102736_create_admins_table', 13),
(32, '2018_03_25_131215_create_user_roles_table', 14),
(33, '2018_03_25_131441_create_admin_roles_table', 14),
(34, '2018_03_01_081803_create_companies_table', 15),
(35, '2018_03_26_113901_create_comments_table', 15),
(36, '2018_02_26_095615_create_loans_table', 16),
(37, '2018_02_26_095615_create_logos_table', 17),
(44, '2018_03_28_095448_create_survey_table', 18),
(45, '2018_03_28_095831_create_question_table', 18),
(46, '2018_03_28_100001_create_answer_table', 18),
(47, '2018_03_30_161949_create_surveys_table', 19),
(48, '2018_03_30_162503_create_questions_table', 19),
(49, '2018_03_30_162838_create_answers_table', 19),
(50, '2018_04_02_140255_create_subcats_table', 20),
(51, '2018_04_03_052630_create_docs_table', 21),
(52, '2018_04_05_104307_create_polls_table', 21),
(53, '2018_04_05_105244_create_poll_options_table', 21),
(54, '2018_04_16_105921_create_jobs_table', 22),
(55, '2018_04_16_123100_create_failed_jobs_table', 23),
(56, '2018_01_15_021429_create_subscribers_table', 24),
(57, '2018_04_18_064619_create_emails_table', 25),
(58, '2018_04_18_123421_create_notifications_table', 26);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 1),
(3, 'App\\User', 1),
(4, 'App\\User', 1),
(5, 'App\\User', 1),
(6, 'App\\User', 1),
(7, 'App\\User', 1),
(8, 'App\\User', 1),
(9, 'App\\User', 1),
(10, 'App\\User', 1),
(11, 'App\\User', 1),
(12, 'App\\User', 1),
(13, 'App\\User', 1),
(14, 'App\\User', 1),
(15, 'App\\User', 1),
(16, 'App\\User', 1),
(17, 'App\\User', 1),
(18, 'App\\User', 1),
(19, 'App\\User', 1),
(20, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(1, 'App\\User', 6),
(1, 'App\\User', 58),
(1, 'App\\User', 63),
(2, 'App\\User', 2),
(2, 'App\\User', 59),
(3, 'App\\User', 3),
(3, 'App\\User', 60),
(4, 'App\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `new_file_paths`
--

CREATE TABLE `new_file_paths` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('02aade93-a007-410c-a98a-48bd2a6a3573', 'App\\Notifications\\Slack', 'App\\User', 1, '{\"thread\":\"some\",\"authUser\":\"Test tester\",\"user\":{\"id\":1,\"name\":\"Jimmy\",\"email\":\"jimkiarie8@gmail.com\",\"credentials\":\"Admin\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":3223232,\"address\":\"main st\",\"verifyToken\":\"\",\"status\":1,\"company_id\":5,\"created_at\":\"2018-02-25 14:48:58\",\"updated_at\":\"2018-04-22 19:38:45\"}}', NULL, '2018-04-23 03:09:53', '2018-04-23 03:09:53'),
('03e902a2-654a-42c0-b219-f0f0b1badf5d', 'App\\Notifications\\Slack', 'App\\User', 6, '{\"thread\":\"Please check your email\",\"authUser\":\"Test tester\",\"user\":{\"id\":1,\"name\":\"Jimmy\",\"email\":\"jimkiarie8@gmail.com\",\"credentials\":\"Admin\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":0,\"address\":null,\"verifyToken\":\"\",\"status\":1,\"company_id\":3,\"created_at\":\"2018-02-25 14:48:58\",\"updated_at\":\"2018-02-25 15:18:28\"}}', '2018-04-19 12:04:43', '2018-04-19 09:35:45', '2018-04-19 12:04:43'),
('0527d30a-851a-49d9-9917-7d592b82f3a5', 'App\\Notifications\\Slack', 'App\\User', 6, '{\"thread\":\"Please check your email\",\"authUser\":\"Test tester\",\"user\":{\"id\":6,\"name\":\"Test tester\",\"email\":\"test@gmail.com\",\"credentials\":\"shareholders\",\"profile\":\"\\/storage\\/profile\\/img07_1522824656.jpg\",\"phone_number\":0,\"address\":\"test@gmail.com\",\"verifyToken\":\"\",\"status\":1,\"company_id\":4,\"created_at\":\"2018-03-06 06:45:07\",\"updated_at\":\"2018-04-15 13:55:28\"}}', NULL, '2018-04-23 12:28:16', '2018-04-23 12:28:16'),
('165338dd-9d7a-4edb-815f-92e1f5412722', 'App\\Notifications\\Slack', 'App\\User', 63, '{\"thread\":\"Please check your email\",\"authUser\":\"Test tester\",\"user\":{\"id\":63,\"name\":\"test\",\"email\":\"test@gmail.com\",\"credentials\":null,\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":731090832,\"address\":\"main street\",\"verifyToken\":null,\"status\":1,\"company_id\":5,\"created_at\":\"2018-04-23 15:02:03\",\"updated_at\":\"2018-04-23 15:03:10\"}}', NULL, '2018-04-23 12:28:17', '2018-04-23 12:28:17'),
('1cb1352c-8417-40e8-b48a-4abbdfc4719a', 'App\\Notifications\\Slack', 'App\\User', 1, '{\"thread\":\"Please check your email\",\"authUser\":\"Test tester\",\"user\":{\"id\":1,\"name\":\"Jimmy\",\"email\":\"jimkiarie8@gmail.com\",\"credentials\":\"Admin\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":3223232,\"address\":\"main st\",\"verifyToken\":\"\",\"status\":1,\"company_id\":5,\"created_at\":\"2018-02-25 14:48:58\",\"updated_at\":\"2018-04-22 19:38:45\"}}', NULL, '2018-04-23 12:28:16', '2018-04-23 12:28:16'),
('29091e17-339a-4d39-8beb-a210f9ccd4fb', 'App\\Notifications\\Slack', 'App\\User', 1, '{\"thread\":\"message\",\"authUser\":\"Test\",\"user\":{\"id\":1,\"name\":\"Jimmy\",\"email\":\"jimkiarie8@gmail.com\",\"credentials\":\"Admin\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":0,\"address\":null,\"verifyToken\":\"\",\"status\":1,\"company_id\":3,\"created_at\":\"2018-02-25 14:48:58\",\"updated_at\":\"2018-02-25 15:18:28\"}}', NULL, '2018-04-20 04:45:11', '2018-04-20 04:45:11'),
('2bd7b979-95c9-46a0-ac4e-5ea0b574c43b', 'App\\Notifications\\Slack', 'App\\User', 1, '{\"thread\":\"jimmy\",\"authUser\":\"Test\",\"user\":{\"id\":1,\"name\":\"Jimmy\",\"email\":\"jimkiarie8@gmail.com\",\"credentials\":\"Admin\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":0,\"address\":null,\"verifyToken\":\"\",\"status\":1,\"company_id\":3,\"created_at\":\"2018-02-25 14:48:58\",\"updated_at\":\"2018-02-25 15:18:28\"}}', NULL, '2018-04-20 04:27:47', '2018-04-20 04:27:47'),
('30c555f8-33da-4100-ada3-6fd3ff324e32', 'App\\Notifications\\Slack', 'App\\User', 6, '{\"thread\":\"Please check your email\",\"user\":{\"id\":58,\"name\":\"Test\",\"email\":\"test@gmail.com\",\"credentials\":\"directors\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":900,\"address\":\"main street\",\"verifyToken\":null,\"status\":1,\"company_id\":3,\"created_at\":\"2018-04-12 06:04:37\",\"updated_at\":\"2018-04-12 06:07:46\"}}', '2018-04-19 10:33:04', '2018-04-19 09:35:45', '2018-04-19 10:33:04'),
('33aa5cc6-c5ee-4b9f-8ae8-67951432d313', 'App\\Notifications\\Slack', 'App\\User', 58, '{\"thread\":\"something\",\"authUser\":\"Test tester\",\"user\":{\"id\":58,\"name\":\"Test\",\"email\":\"test@gmail.com\",\"credentials\":\"directors\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":900,\"address\":\"main street\",\"verifyToken\":null,\"status\":1,\"company_id\":3,\"created_at\":\"2018-04-12 06:04:37\",\"updated_at\":\"2018-04-12 06:07:46\"}}', NULL, '2018-04-26 12:53:03', '2018-04-26 12:53:03'),
('3e74759f-871a-4db2-a77f-b6ecbe5dd88a', 'App\\Notifications\\Slack', 'App\\User', 1, '{\"thread\":\"jim\",\"authUser\":\"Test\",\"user\":{\"id\":1,\"name\":\"Jimmy\",\"email\":\"jimkiarie8@gmail.com\",\"credentials\":\"Admin\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":0,\"address\":null,\"verifyToken\":\"\",\"status\":1,\"company_id\":3,\"created_at\":\"2018-02-25 14:48:58\",\"updated_at\":\"2018-02-25 15:18:28\"}}', NULL, '2018-04-20 04:50:29', '2018-04-20 04:50:29'),
('4ab2d3a5-e5c5-4a97-96b0-3311b207b61d', 'App\\Notifications\\Slack', 'App\\User', 59, '{\"thread\":\"Please check your email\",\"authUser\":\"Test tester\",\"user\":{\"id\":59,\"name\":\"Rebeca\",\"email\":\"becs@hotmail.com\",\"credentials\":null,\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":70090090,\"address\":\"main street\",\"verifyToken\":null,\"status\":1,\"company_id\":4,\"created_at\":\"2018-04-13 10:07:38\",\"updated_at\":\"2018-04-13 10:07:38\"}}', NULL, '2018-04-23 12:28:17', '2018-04-23 12:28:17'),
('4d59ccfd-683e-4757-9068-3044a295d6e4', 'App\\Notifications\\Slack', 'App\\User', 2, '{\"thread\":\"check\",\"authUser\":\"Test tester\",\"user\":{\"id\":2,\"name\":\"Ryan Kris\",\"email\":\"ryan@yahoo.com\",\"credentials\":\"\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":0,\"address\":null,\"verifyToken\":\"\",\"status\":1,\"company_id\":4,\"created_at\":\"2018-02-25 14:48:59\",\"updated_at\":\"2018-02-25 14:48:59\"}}', NULL, '2018-04-19 13:01:57', '2018-04-19 13:01:57'),
('54e422fb-678c-47b0-bc67-907c03e43385', 'App\\Notifications\\Slack', 'App\\User', 6, '{\"thread\":\"some text\",\"authUser\":\"Test tester\",\"user\":{\"id\":6,\"name\":\"Test tester\",\"email\":\"test@gmail.com\",\"credentials\":\"shareholders\",\"profile\":\"\\/storage\\/profile\\/img07_1522824656.jpg\",\"phone_number\":0,\"address\":\"test@gmail.com\",\"verifyToken\":\"\",\"status\":1,\"company_id\":4,\"created_at\":\"2018-03-06 06:45:07\",\"updated_at\":\"2018-04-15 13:55:28\"}}', NULL, '2018-04-22 16:34:01', '2018-04-22 16:34:01'),
('660d9ac4-af2f-47a1-93f6-58002f0b320b', 'App\\Notifications\\Slack', 'App\\User', 6, '{\"thread\":\"Please check your email\",\"user\":{\"id\":6,\"name\":\"Test tester\",\"email\":\"test@gmail.com\",\"credentials\":\"shareholders\",\"profile\":\"\\/storage\\/profile\\/img07_1522824656.jpg\",\"phone_number\":0,\"address\":\"test@gmail.com\",\"verifyToken\":\"\",\"status\":1,\"company_id\":4,\"created_at\":\"2018-03-06 06:45:07\",\"updated_at\":\"2018-04-15 13:55:28\"}}', '2018-04-19 10:33:04', '2018-04-19 09:35:45', '2018-04-19 10:33:04'),
('66810712-86e0-46f5-b21f-b6f1cf2d74a2', 'App\\Notifications\\Slack', 'App\\User', 1, '{\"thread\":\"notification\",\"authUser\":\"Test tester\",\"user\":{\"id\":1,\"name\":\"Jimmy\",\"email\":\"jimkiarie8@gmail.com\",\"credentials\":\"Admin\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":3223232,\"address\":\"main st\",\"verifyToken\":\"\",\"status\":1,\"company_id\":5,\"created_at\":\"2018-02-25 14:48:58\",\"updated_at\":\"2018-04-24 07:19:14\"}}', NULL, '2018-04-27 04:49:23', '2018-04-27 04:49:23'),
('802e7ed2-7cc9-43ca-80ca-beb8bae42755', 'App\\Notifications\\Slack', 'App\\User', 1, '{\"thread\":\"Hellow please check your email\",\"authUser\":\"Test tester\",\"user\":{\"id\":1,\"name\":\"Jimmy\",\"email\":\"jimkiarie8@gmail.com\",\"credentials\":\"Admin\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":0,\"address\":null,\"verifyToken\":\"\",\"status\":1,\"company_id\":3,\"created_at\":\"2018-02-25 14:48:58\",\"updated_at\":\"2018-02-25 15:18:28\"}}', '2018-04-19 12:02:59', '2018-04-19 11:47:14', '2018-04-19 12:02:59'),
('8853339b-f294-42d2-ae7c-83b07c7807c5', 'App\\Notifications\\Slack', 'App\\User', 6, '{\"thread\":\"Hellow please check your email\",\"authUser\":\"Test tester\",\"user\":{\"id\":58,\"name\":\"Test\",\"email\":\"test@gmail.com\",\"credentials\":\"directors\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":900,\"address\":\"main street\",\"verifyToken\":null,\"status\":1,\"company_id\":3,\"created_at\":\"2018-04-12 06:04:37\",\"updated_at\":\"2018-04-12 06:07:46\"}}', NULL, '2018-04-19 11:47:15', '2018-04-19 11:47:15'),
('92a6bb71-ff5e-43e1-9608-1a7d71377fd1', 'App\\Notifications\\Slack', 'App\\User', 2, '{\"thread\":\"something\",\"authUser\":\"Test tester\",\"user\":{\"id\":2,\"name\":\"Ryan Kris\",\"email\":\"ryan@yahoo.com\",\"credentials\":\"\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":732332323,\"address\":\"test@gmail.com\",\"verifyToken\":\"\",\"status\":1,\"company_id\":6,\"created_at\":\"2018-02-25 14:48:59\",\"updated_at\":\"2018-04-22 19:37:14\"}}', NULL, '2018-04-26 12:53:03', '2018-04-26 12:53:03'),
('92a6f208-4551-4531-9ffc-0b405cc95122', 'App\\Notifications\\Slack', 'App\\User', 58, '{\"thread\":\"some text\",\"authUser\":\"Test tester\",\"user\":{\"id\":58,\"name\":\"Test\",\"email\":\"test@gmail.com\",\"credentials\":\"directors\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":900,\"address\":\"main street\",\"verifyToken\":null,\"status\":1,\"company_id\":3,\"created_at\":\"2018-04-12 06:04:37\",\"updated_at\":\"2018-04-12 06:07:46\"}}', NULL, '2018-04-22 16:34:01', '2018-04-22 16:34:01'),
('9879f43f-31d6-4181-847a-41aacfb1017b', 'App\\Notifications\\Slack', 'App\\User', 6, '{\"thread\":\"Hellow please check your email\",\"authUser\":\"Test tester\",\"user\":{\"id\":6,\"name\":\"Test tester\",\"email\":\"test@gmail.com\",\"credentials\":\"shareholders\",\"profile\":\"\\/storage\\/profile\\/img07_1522824656.jpg\",\"phone_number\":0,\"address\":\"test@gmail.com\",\"verifyToken\":\"\",\"status\":1,\"company_id\":4,\"created_at\":\"2018-03-06 06:45:07\",\"updated_at\":\"2018-04-15 13:55:28\"}}', '2018-04-19 12:04:40', '2018-04-19 11:47:15', '2018-04-19 12:04:40'),
('a4471ee0-f440-41ff-bf16-b7f9cadb3e1a', 'App\\Notifications\\Slack', 'App\\User', 5, '{\"thread\":\"Hellow please check your email\",\"authUser\":\"Test tester\",\"user\":{\"id\":5,\"name\":\"Dr. Claud Kutch\",\"email\":\"kutch@hotmail.com\",\"credentials\":\"\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":0,\"address\":null,\"verifyToken\":\"\",\"status\":1,\"company_id\":3,\"created_at\":\"2018-02-25 14:49:00\",\"updated_at\":\"2018-02-25 14:49:00\"}}', NULL, '2018-04-19 11:47:14', '2018-04-19 11:47:14'),
('a538889d-aac7-4cfc-8157-b93bcc53b330', 'App\\Notifications\\Slack', 'App\\User', 6, '{\"thread\":\"notification\",\"authUser\":\"Test tester\",\"user\":{\"id\":6,\"name\":\"Test tester\",\"email\":\"test@gmail.com\",\"credentials\":\"shareholders\",\"profile\":\"\\/storage\\/profile\\/img07_1522824656.jpg\",\"phone_number\":0,\"address\":\"test@gmail.com\",\"verifyToken\":\"\",\"status\":1,\"company_id\":4,\"created_at\":\"2018-03-06 06:45:07\",\"updated_at\":\"2018-04-15 13:55:28\"}}', NULL, '2018-04-27 04:49:24', '2018-04-27 04:49:24'),
('b407e26f-dba4-478b-be71-1a7bd14b5afa', 'App\\Notifications\\Slack', 'App\\User', 1, '{\"thread\":\"message\",\"authUser\":\"Test\",\"user\":{\"id\":1,\"name\":\"Jimmy\",\"email\":\"jimkiarie8@gmail.com\",\"credentials\":\"Admin\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":0,\"address\":null,\"verifyToken\":\"\",\"status\":1,\"company_id\":3,\"created_at\":\"2018-02-25 14:48:58\",\"updated_at\":\"2018-02-25 15:18:28\"}}', NULL, '2018-04-20 04:16:13', '2018-04-20 04:16:13'),
('b7e703fd-e38b-4e7d-b1f1-35c357b2461b', 'App\\Notifications\\Slack', 'App\\User', 63, '{\"thread\":\"something\",\"authUser\":\"Test tester\",\"user\":{\"id\":63,\"name\":\"test\",\"email\":\"test@gmail.com\",\"credentials\":null,\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":731090832,\"address\":\"main street\",\"verifyToken\":null,\"status\":1,\"company_id\":5,\"created_at\":\"2018-04-23 15:02:03\",\"updated_at\":\"2018-04-23 15:03:10\"}}', NULL, '2018-04-26 12:53:03', '2018-04-26 12:53:03'),
('bf091189-27a9-4835-8133-717f719e36b4', 'App\\Notifications\\Slack', 'App\\User', 5, '{\"thread\":\"Please check your email\",\"authUser\":\"Test tester\",\"user\":{\"id\":5,\"name\":\"Dr. Claud Kutch\",\"email\":\"kutch@hotmail.com\",\"credentials\":\"\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":0,\"address\":null,\"verifyToken\":\"\",\"status\":1,\"company_id\":3,\"created_at\":\"2018-02-25 14:49:00\",\"updated_at\":\"2018-02-25 14:49:00\"}}', NULL, '2018-04-23 12:28:16', '2018-04-23 12:28:16'),
('cf2f2e73-e1c5-41e5-9914-9456b29081cd', 'App\\Notifications\\Slack', 'App\\User', 58, '{\"thread\":\"Please check your email\",\"authUser\":\"Test tester\",\"user\":{\"id\":58,\"name\":\"Test\",\"email\":\"test@gmail.com\",\"credentials\":\"directors\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":900,\"address\":\"main street\",\"verifyToken\":null,\"status\":1,\"company_id\":3,\"created_at\":\"2018-04-12 06:04:37\",\"updated_at\":\"2018-04-12 06:07:46\"}}', NULL, '2018-04-23 12:28:16', '2018-04-23 12:28:16'),
('d22c339f-beb0-4484-bc97-16b0e1e69426', 'App\\Notifications\\Slack', 'App\\User', 5, '{\"thread\":\"check\",\"authUser\":\"Test tester\",\"user\":{\"id\":5,\"name\":\"Dr. Claud Kutch\",\"email\":\"kutch@hotmail.com\",\"credentials\":\"\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":0,\"address\":null,\"verifyToken\":\"\",\"status\":1,\"company_id\":3,\"created_at\":\"2018-02-25 14:49:00\",\"updated_at\":\"2018-02-25 14:49:00\"}}', NULL, '2018-04-19 13:01:58', '2018-04-19 13:01:58'),
('d44b983f-6265-4cc7-9522-1b9ab3f627c4', 'App\\Notifications\\Slack', 'App\\User', 1, '{\"thread\":\"hi\",\"authUser\":\"Test\",\"user\":{\"id\":1,\"name\":\"Jimmy\",\"email\":\"jimkiarie8@gmail.com\",\"credentials\":\"Admin\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":0,\"address\":null,\"verifyToken\":\"\",\"status\":1,\"company_id\":3,\"created_at\":\"2018-02-25 14:48:58\",\"updated_at\":\"2018-02-25 15:18:28\"}}', NULL, '2018-04-20 04:42:27', '2018-04-20 04:42:27'),
('e11e8f8a-1b09-40c4-8af3-0752b1bb86a0', 'App\\Notifications\\Slack', 'App\\User', 61, '{\"thread\":\"Please check your email\",\"authUser\":\"Test tester\",\"user\":{\"id\":61,\"name\":\"test\",\"email\":\"test@gmail.com\",\"credentials\":null,\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":731090832,\"address\":\"main street\",\"verifyToken\":\"jfPM7cYf4QxUCuiGhBNeOkNgQ3EkXzBXP6RPlKiM\",\"status\":0,\"company_id\":5,\"created_at\":\"2018-04-23 14:59:25\",\"updated_at\":\"2018-04-23 14:59:25\"}}', NULL, '2018-04-23 12:28:17', '2018-04-23 12:28:17'),
('e252a99a-18fb-482e-bbec-0370221657d7', 'App\\Notifications\\Slack', 'App\\User', 6, '{\"thread\":\"something\",\"authUser\":\"Test tester\",\"user\":{\"id\":6,\"name\":\"Test tester\",\"email\":\"test@gmail.com\",\"credentials\":\"shareholders\",\"profile\":\"\\/storage\\/profile\\/img07_1522824656.jpg\",\"phone_number\":0,\"address\":\"test@gmail.com\",\"verifyToken\":\"\",\"status\":1,\"company_id\":4,\"created_at\":\"2018-03-06 06:45:07\",\"updated_at\":\"2018-04-15 13:55:28\"}}', NULL, '2018-04-26 12:53:03', '2018-04-26 12:53:03'),
('e6c92219-9369-4ea1-b429-2b5a259d1d79', 'App\\Notifications\\Slack', 'App\\User', 2, '{\"thread\":\"notification\",\"authUser\":\"Test tester\",\"user\":{\"id\":2,\"name\":\"Ryan Kris\",\"email\":\"ryan@yahoo.com\",\"credentials\":\"\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":732332323,\"address\":\"test@gmail.com\",\"verifyToken\":\"\",\"status\":1,\"company_id\":6,\"created_at\":\"2018-02-25 14:48:59\",\"updated_at\":\"2018-04-22 19:37:14\"}}', NULL, '2018-04-27 04:49:23', '2018-04-27 04:49:23'),
('eaa6525c-a599-4dc2-a090-ded87e1466dc', 'App\\Notifications\\Slack', 'App\\User', 1, '{\"thread\":\"some\",\"authUser\":\"Test\",\"user\":{\"id\":1,\"name\":\"Jimmy\",\"email\":\"jimkiarie8@gmail.com\",\"credentials\":\"Admin\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":0,\"address\":null,\"verifyToken\":\"\",\"status\":1,\"company_id\":3,\"created_at\":\"2018-02-25 14:48:58\",\"updated_at\":\"2018-02-25 15:18:28\"}}', NULL, '2018-04-20 04:29:29', '2018-04-20 04:29:29'),
('fac2930f-0024-498f-b509-7cdcd3024cb1', 'App\\Notifications\\Slack', 'App\\User', 3, '{\"thread\":\"Please check your email\",\"user\":{\"id\":3,\"name\":\"Arthur Reynolds\",\"email\":\"arthur@gmail.com\",\"credentials\":\"\",\"profile\":\"\\/storage\\/profile\\/noimage.png\",\"phone_number\":0,\"address\":null,\"verifyToken\":\"\",\"status\":1,\"company_id\":4,\"created_at\":\"2018-02-25 14:48:59\",\"updated_at\":\"2018-02-25 14:48:59\"}}', NULL, '2018-04-19 09:35:45', '2018-04-19 09:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `nses`
--

CREATE TABLE `nses` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `evaluated` tinyint(1) NOT NULL,
  `meeting_group` tinyint(1) NOT NULL,
  `cont_manage` tinyint(1) NOT NULL,
  `restrict` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nses`
--

INSERT INTO `nses` (`id`, `parent_group`, `group_name`, `evaluated`, `meeting_group`, `cont_manage`, `restrict`, `created_at`, `updated_at`) VALUES
(2, 'Group', 'eboard', 0, 0, 0, 0, '2018-02-28 03:36:54', '2018-04-13 12:35:09'),
(3, 'Laravel', 'Vue', 1, 0, 1, 1, '2018-03-21 02:58:34', '2018-03-21 02:58:34');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('kivuvaevans@gmail.com', '$2y$10$hx373mWqjxr8WYW.HCoscOVx5E/BSvyUQ4Fa20qP4xDPb4jxbraLq', '2018-03-21 11:48:06'),
('jimkiarie8@yahoo.com', '$2y$10$8PNKvWdVwkMzhlRLWwAnQOSENbuwddxxDvdOtLMIJK3uXx0/Varl.', '2018-04-03 08:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_users', 'web', '2018-02-25 11:47:39', '2018-02-25 11:47:39'),
(2, 'add_users', 'web', '2018-02-25 11:47:39', '2018-02-25 11:47:39'),
(3, 'edit_users', 'web', '2018-02-25 11:47:39', '2018-02-25 11:47:39'),
(4, 'delete_users', 'web', '2018-02-25 11:47:39', '2018-02-25 11:47:39'),
(5, 'view_roles', 'web', '2018-02-25 11:47:40', '2018-02-25 11:47:40'),
(6, 'add_roles', 'web', '2018-02-25 11:47:40', '2018-02-25 11:47:40'),
(7, 'edit_roles', 'web', '2018-02-25 11:47:40', '2018-02-25 11:47:40'),
(8, 'delete_roles', 'web', '2018-02-25 11:47:40', '2018-02-25 11:47:40'),
(9, 'view_shareholders', 'web', '2018-02-25 11:47:40', '2018-02-25 11:47:40'),
(10, 'add_shareholders', 'web', '2018-02-25 11:47:40', '2018-02-25 11:47:40'),
(11, 'edit_shareholders', 'web', '2018-02-25 11:47:40', '2018-02-25 11:47:40'),
(12, 'delete_shareholders', 'web', '2018-02-25 11:47:40', '2018-02-25 11:47:40'),
(13, 'view_directors', 'web', '2018-02-25 11:47:40', '2018-02-25 11:47:40'),
(14, 'add_directors', 'web', '2018-02-25 11:47:40', '2018-02-25 11:47:40'),
(15, 'edit_directors', 'web', '2018-02-25 11:47:40', '2018-02-25 11:47:40'),
(16, 'delete_directors', 'web', '2018-02-25 11:47:40', '2018-02-25 11:47:40'),
(17, 'view_employees', 'web', '2018-02-25 11:47:40', '2018-02-25 11:47:40'),
(18, 'add_employees', 'web', '2018-02-25 11:47:40', '2018-02-25 11:47:40'),
(19, 'edit_employees', 'web', '2018-02-25 11:47:40', '2018-02-25 11:47:40'),
(20, 'delete_employees', 'web', '2018-02-25 11:47:40', '2018-02-25 11:47:40');

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `polls`
--

INSERT INTO `polls` (`id`, `user_id`, `question`, `title`, `active`, `created_at`, `updated_at`) VALUES
(2, 6, 'whats ur favorite program?', 'new', 1, '2018-04-05 08:48:20', '2018-04-05 10:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `poll_options`
--

CREATE TABLE `poll_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `poll_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
(3, 'lorem', '<p><img src=\"/photos/6/1951714.jpg\" alt=\"lorem\" width=\"400\" height=\"400\" /></p>\r\n<p>&nbsp;</p>\r\n<p>lorem</p>', '2018-03-07 09:50:43', '2018-03-07 09:50:43', 6, 'noimage.jpg'),
(4, 'harum iure id reprehenderit', '<p><img src=\"/photos/6/image/Blue Vintage Bike 1366 x 768 HDTV.jpeg\" width=\"466\" height=\"414\" /></p>\r\n<div style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. <em>Quod cum esse ut earum nisi,</em> voluptates quo aspernatur <strong>harum iure id reprehenderit sit consectetur</strong> mollitia eveniet repellendus laudantium ad vero, corporis!</div>', '2018-03-08 04:10:33', '2018-03-08 04:10:33', 6, 'noimage.jpg'),
(5, 'Consectetur adipisicing', '<p><img src=\"/photos/6/fold/Taylor.jpeg\" alt=\"\" width=\"359\" height=\"202\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.<em> Illo reprehenderit accusantium</em> fugiat voluptatum, vero, repudiandae! Inventore soluta consectetur, autem qui ea, dolor <strong>voluptate quaerat</strong> a suscipit <a title=\"Vuetify\" href=\"/posts/vuetifyjs.com\"><em>provident, assumenda</em></a> voluptatum cupiditate?</p>', '2018-03-09 09:24:17', '2018-03-09 09:24:17', 6, 'noimage.jpg'),
(6, 'Tylor', '<p><img src=\"/photos/6/fold/Taylor.jpeg\" alt=\"\" width=\"242\" height=\"136\" /></p>\r\n<p>&nbsp;</p>', '2018-03-20 09:43:10', '2018-03-20 09:43:10', 6, 'noimage.jpg'),
(7, 'Post 1', '<p><img src=\"/photos/1/Jimmy/5abb596fd19bc.jpeg\" alt=\"\" width=\"369\" height=\"208\" /></p>', '2018-03-28 06:00:47', '2018-03-28 06:00:47', 1, 'noimage.jpg'),
(8, 'new post', '<p><a title=\"Lorem\" href=\"/files/1/5abb5af9ade8b.jpg\" target=\"_blank\" rel=\"noopener\">Lorem</a></p>', '2018-03-28 06:07:08', '2018-03-28 06:07:08', 1, 'noimage.jpg'),
(9, 'consectetur adipisicing', '<p><img src=\"/photos/1/Jimmy/5abb596fd19bc.jpeg\" alt=\"\" width=\"300\" height=\"300\" /></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, <a href=\"#top\">possimus veniam</a> porro maxime, ipsam quia dolores omnis mollitia quasi illum dolor eos veritatis cumque incidunt delectus vel consequuntur nesciunt aliquid.</p>', '2018-03-28 06:14:04', '2018-03-28 06:14:04', 1, 'noimage.jpg'),
(10, 'pops', 'lorem ipsum', '2018-04-04 03:54:35', '2018-04-04 03:54:35', 6, 'noimage.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(10) UNSIGNED NOT NULL,
  `survey_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `survey_id`, `user_id`, `title`, `question_type`, `option_name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'new', 'checkbox', '[\"post\",\"boom\"]', '2018-04-12 12:31:09', '2018-04-12 12:31:09'),
(2, 2, 6, 'testing', 'text', NULL, '2018-04-19 07:48:15', '2018-04-19 07:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `user_id`, `survey_id`, `title`, `question_type`, `option_name`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'lorem', 'text', NULL, '2018-04-01 08:57:19', '2018-04-01 08:57:19'),
(2, 6, 1, 'customer', 'text', NULL, '2018-04-01 08:59:01', '2018-04-01 08:59:01'),
(3, 6, 1, 'customer', 'textarea', NULL, '2018-04-01 09:00:06', '2018-04-01 09:00:06'),
(4, 6, 2, 'dwd', 'textarea', NULL, '2018-04-02 02:43:33', '2018-04-02 02:43:33'),
(5, 6, 1, 'customer', 'textarea', NULL, '2018-04-10 03:30:44', '2018-04-10 03:30:44'),
(6, 58, 1, 'customer', 'text', NULL, '2018-04-12 09:51:55', '2018-04-12 09:51:55'),
(7, 58, 1, 'customer', 'text', NULL, '2018-04-12 09:51:55', '2018-04-12 09:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2018-02-25 11:48:53', '2018-02-25 11:48:53'),
(2, 'Director', 'web', '2018-02-25 11:48:59', '2018-02-25 11:48:59'),
(3, 'Shareholder', 'web', '2018-02-25 11:48:59', '2018-02-25 11:48:59'),
(4, 'Manager', 'web', '2018-02-25 11:48:59', '2018-02-25 11:48:59'),
(5, 'employee', 'web', '2018-04-13 11:32:07', '2018-04-13 11:32:07'),
(6, 'companyAdmin', 'web', '2018-03-28 06:11:00', '2018-03-28 06:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(18, 1),
(19, 1),
(20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shareholders`
--

CREATE TABLE `shareholders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shareholders`
--

INSERT INTO `shareholders` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES
(4, 1, '<blockquote>Lorem <strong>ipsum dolor sit amet, consectetur</strong> adipisicing elit. <u>Sed veniam </u>dolor recusandae id ut nam mollitia earum aliquam architecto modi est maiores sapiente, tempore officia beatae <em>voluptatem dicta </em>nesciunt, amet!</blockquote>', '2018-03-02 07:07:50', '2018-03-02 07:07:50'),
(6, 1, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste dolorem reprehenderit alias voluptatum illum sunt consectetur, aliquam cum aspernatur dolorum rem! Provident corporis <em>atque assumenda nihil deleniti odit natus esse!</em></p><iframe class=\"ql-video\" frameborder=\"0\" allowfullscreen=\"true\" src=\"https://vuejs.org/\"></iframe><p><em><span class=\"ql-cursor\">﻿</span></em></p>', '2018-03-02 07:12:11', '2018-03-02 07:12:11');

-- --------------------------------------------------------

--
-- Table structure for table `share_comments`
--

CREATE TABLE `share_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcats`
--

CREATE TABLE `subcats` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcats`
--

INSERT INTO `subcats` (`id`, `user_id`, `cat_id`, `title`, `description`, `users_id`, `created_at`, `updated_at`) VALUES
(1, 6, 3, 'commitee', 'dfe', '[1,2,6,5]', '2018-04-12 07:52:45', '2018-04-06 08:37:29'),
(2, 6, 4, 'lorem', 'loram ipsum', '[2,3,58]', '2018-04-12 07:03:27', '2018-04-06 11:20:02'),
(3, 6, 2, 'meeting', 'lorem', '[3]', '2018-04-27 06:54:46', '2018-04-11 06:11:21'),
(4, 6, 3, 'agm', 'lorem', '[1]', '2018-04-12 07:19:49', '2018-04-11 06:13:05'),
(5, 6, 3, 'management', 'lorem', '[1]', '2018-04-13 08:46:34', '2018-04-11 06:14:28'),
(11, 6, 3, 'Test', 'test', '[1,3,58]', '2018-04-13 08:49:40', '2018-04-11 06:57:53'),
(12, 6, 24, 'testing', 'testing', '[1,2]', '2018-04-20 11:52:41', '2018-04-20 11:52:41'),
(13, 6, 25, 'sub test', 'sub test', '[2,1]', '2018-04-23 12:23:31', '2018-04-23 12:23:31'),
(14, 6, 2, 'test', 'test', '[2,5,3]', '2018-04-27 04:46:56', '2018-04-27 04:46:56');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `firstname`, `lastname`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Jimmy', 'Kiarie', 'jimkiarie8@gmail.com', '2018-04-17 03:47:20', '2018-04-17 03:47:20', NULL),
(2, 'Jimmy', 'Kiarie', 'jimkiarie8@info.com', '2018-04-17 03:48:06', '2018-04-17 03:48:06', NULL),
(3, 'Jimmy', 'Kiarie', 'test@gmail.com', '2018-04-17 03:48:45', '2018-04-17 03:48:45', NULL),
(4, 'John', 'doe', 'doe@info.com', '2018-04-17 12:44:57', '2018-04-17 12:44:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE `survey` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`id`, `title`, `user_id`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Customer feedback', 6, 'customer feedback', NULL, '2018-04-06 02:20:08', '2018-04-06 02:20:08'),
(2, 'Test', 6, 'A test survey', NULL, '2018-04-19 07:47:58', '2018-04-19 07:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`id`, `user_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 6, 'customer feedback', 'customer feedback', '2018-03-30 13:47:22', '2018-04-12 11:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credentials` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/storage/profile/noimage.png',
  `phone_number` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verifyToken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `company_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `credentials`, `profile`, `phone_number`, `address`, `remember_token`, `verifyToken`, `status`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'Jimmy', 'jimkiarie8@gmail.com', '$2y$10$6uzOrZuGDlsUXL6slEKpSOvODBi73TWfmgZauC5IDjV6.4eP7zOQ2', 'Admin', '/storage/profile/noimage.png', 3223232, 'main st', 'em34IDTfpYLRTqOaSLTjvXuY6ILPw6ZyEqRhChZGDyxRQAvsMKd6ukDKzHHd', '', 1, 5, '2018-02-25 11:48:58', '2018-04-27 04:54:35'),
(2, 'Ryan Kris', 'ryan@yahoo.com', '$2y$10$7KD1wzzRbrRa4xtlL7vtPuXO/paWRn1wvgH/shiUyxPRR1laXc2s2', '', '/storage/profile/noimage.png', 732332323, 'test@gmail.com', '8iHzU05pnM', '', 1, 6, '2018-02-25 11:48:59', '2018-04-22 16:37:14'),
(3, 'Arthur Reynolds', 'arthur@gmail.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '', '/storage/profile/noimage.png', 0, NULL, 'hQwSgAN9wQ', '', 1, 4, '2018-02-25 11:48:59', '2018-02-25 11:48:59'),
(5, 'Dr. Claud Kutch', 'kutch@hotmail.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '', '/storage/profile/noimage.png', 0, NULL, 'VJ7H2Jnv9D', '', 1, 3, '2018-02-25 11:49:00', '2018-02-25 11:49:00'),
(6, 'Test tester', 'test@gmail.com', '$2y$10$lDlbkQQ/ljtjxdlsIrheluRk9Zt196KDg/HJcmpn4OK.GQhLi5/k2', 'shareholders', '/storage/profile/Adidas Blue Style 1366 x 768 HDTV_1524816039.jpeg', 0, 'test@gmail.com', 'qUeH0T04YeX6bRf4ItW6roXoGlIAWRHbEc907oL34iSOPlZr9phHCKnma8yk', '', 1, 4, '2018-03-06 03:45:07', '2018-04-15 10:55:28'),
(55, 'Nick', 'nick@yahoo.com', '$2y$10$eX3Y7GtGscV00wtuW5ZMGOVQRbQIhAD2l31J6azYmtDGiAfLwSD32', 'directors', '/storage/profile/noimage.png', 900, 'main street', 'kJcfIeZFjUg2CRrP71rkjLA6gFsvUQjv7DvgxV9pe9EqYiZ2okLYInRARyO9', NULL, 1, 4, '2018-04-11 04:49:02', '2018-04-23 13:02:50'),
(58, 'Test', 'test@yahoo.com', '$2y$10$3d2PUYSfak6kRmjrpBc7WO7IFtcZ7SSQiuf5y07mKN2u7hgSxivyy', 'directors', '/storage/profile/noimage.png', 900, 'main street', 'yJeXvCMF8JQwdLObDcb0QP1H9T0qk3aV7sOSFwjWLp10lY7u1CZ0oQ2YRUCJ', NULL, 1, 3, '2018-04-12 03:04:37', '2018-04-12 03:07:46'),
(59, 'Rebeca', 'becs@hotmail.com', '$2y$10$9/8bgLg4CQAiwV4I1whK2.NhO0IHOz5CmPj/8a.QC4iOO.nf/D8IO', NULL, '/storage/profile/noimage.png', 70090090, 'main street', NULL, NULL, 1, 4, '2018-04-13 07:07:38', '2018-04-13 07:07:38'),
(60, 'Nick', 'nic@yahoo.com', '$2y$10$mHA555c0d.GDPq/Tcn2gheaohI6zaVSIy3Ef96H.XdXD5BJZnlEHO', NULL, '/storage/profile/noimage.png', 90090, 'nick@gmail.com', NULL, '', 1, 4, '2018-04-13 07:19:04', '2018-04-13 07:19:04'),
(63, 'test', 'test@info.com', '$2y$10$xV8CMU6uYrcQsjB/NxkLjeu9rFlYOV2OmZPoU7EPXWiveTADD2TIi', NULL, '/storage/profile/noimage.png', 731090832, 'main street', NULL, NULL, 1, 5, '2018-04-23 12:02:03', '2018-04-23 12:03:10'),
(64, 'john', 'doe@gmail.com', '$2y$10$ClRYq2hXKTGaHmE2St4LGeYDrH.OiOA.wdYAmU7p.rF1vC2rkEyLa', NULL, '/storage/profile/noimage.png', 731090832, 'main street', NULL, 'ACDhVnkskgv6fPMgiyZMO8pnEqFhCs40L6EQnSzM', 0, 6, '2018-04-24 03:00:49', '2018-04-24 03:00:49'),
(65, 'john', 'doe@gmail.com', '$2y$10$qqO4aUF/dhC/BbNn1jZnEee7RdlJCtIMhjcOhyXmWODl8UgKDAY3W', NULL, '/storage/profile/noimage.png', 731090832, 'main street', NULL, NULL, 1, 6, '2018-04-24 03:01:16', '2018-04-24 03:03:09'),
(66, 'Jane', 'jane@gmail.com', '$2y$10$O0.K.WAIx2.tBUHrr3PgNOr9BXUte678ugywh1VZGlhmhC59c9si6', NULL, '/storage/profile/noimage.png', 731090832, 'main street', NULL, NULL, 1, 3, '2018-04-27 04:55:36', '2018-04-27 04:55:59');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '2018-04-17 05:19:24', '2018-04-23 02:56:18'),
(2, 2, 5, '2018-04-09 01:12:14', '2018-04-17 09:47:57'),
(3, 6, 1, '2018-04-10 03:28:00', '2018-04-18 04:00:18'),
(4, 60, 2, '2018-04-11 04:09:11', '2018-04-11 04:09:11'),
(11, 59, 5, '2018-04-17 05:20:02', '2018-04-17 05:20:02'),
(12, 3, 5, '2018-04-17 05:39:44', '2018-04-17 05:39:44'),
(13, 55, 2, '2018-04-17 09:49:44', '2018-04-17 09:49:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachments_user_id_index` (`user_id`),
  ADD KEY `attachments_category_id_index` (`category_id`);

--
-- Indexes for table `attachment_categories`
--
ALTER TABLE `attachment_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `direct_comments`
--
ALTER TABLE `direct_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `docs`
--
ALTER TABLE `docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc_categories`
--
ALTER TABLE `doc_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_paths`
--
ALTER TABLE `file_paths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manages`
--
ALTER TABLE `manages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `new_file_paths`
--
ALTER TABLE `new_file_paths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `nses`
--
ALTER TABLE `nses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_options`
--
ALTER TABLE `poll_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_survey_id_index` (`survey_id`),
  ADD KEY `question_user_id_index` (`user_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `shareholders`
--
ALTER TABLE `shareholders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `share_comments`
--
ALTER TABLE `share_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcats`
--
ALTER TABLE `subcats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`id`),
  ADD KEY `survey_user_id_index` (`user_id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `attachment_categories`
--
ALTER TABLE `attachment_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `direct_comments`
--
ALTER TABLE `direct_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `docs`
--
ALTER TABLE `docs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `doc_categories`
--
ALTER TABLE `doc_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `file_paths`
--
ALTER TABLE `file_paths`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `manages`
--
ALTER TABLE `manages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `new_file_paths`
--
ALTER TABLE `new_file_paths`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nses`
--
ALTER TABLE `nses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `poll_options`
--
ALTER TABLE `poll_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `shareholders`
--
ALTER TABLE `shareholders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `share_comments`
--
ALTER TABLE `share_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subcats`
--
ALTER TABLE `subcats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `survey`
--
ALTER TABLE `survey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `attachment_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attachments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
