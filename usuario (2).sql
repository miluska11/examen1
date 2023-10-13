-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-10-2023 a las 01:54:07
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usuario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_13_025427_create_usuarios_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Estructura de tabla para la tabla `users`
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `correo_electronico` varchar(255) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `correo_electronico`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Harold Block V', 'Erdman', 'granville.kuhic@example.com', '2022-11-08 13:38:24', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(2, 'Rosalee Bednar DDS', 'Ferry', 'wintheiser.gilberto@example.org', '2023-08-16 01:19:14', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(3, 'Terrence Kozey', 'Romaguera', 'mack71@example.net', '2023-02-10 23:56:51', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(4, 'Dejah Russel IV', 'Hahn', 'ugusikowski@example.com', '2023-09-17 19:08:38', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(5, 'Oceane Gorczany', 'Connelly', 'randall43@example.com', '2023-10-06 10:58:38', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(6, 'Mr. Muhammad Heidenreich DDS', 'Jast', 'gschoen@example.com', '2023-09-17 13:45:13', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(7, 'Aron Hoeger', 'Green', 'jzboncak@example.com', '2022-12-04 14:16:04', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(8, 'Kenneth Huels', 'Dooley', 'kovacek.gabe@example.org', '2023-03-27 11:35:43', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(9, 'Mr. Elwyn Sanford I', 'Stroman', 'hermann.kulas@example.net', '2023-08-11 07:45:08', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(10, 'Miguel Nienow', 'Parisian', 'ryan.zita@example.net', '2023-07-17 14:18:26', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(11, 'Dr. Howell Kunde PhD', 'Goldner', 'bradford.bashirian@example.com', '2023-07-02 02:52:57', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(12, 'Kattie Weissnat', 'Russel', 'hspencer@example.org', '2023-05-11 16:58:23', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(13, 'Trever Hintz', 'Bernhard', 'johara@example.net', '2023-01-05 05:36:41', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(14, 'Beverly Hirthe', 'Leuschke', 'howe.antonina@example.org', '2023-01-25 14:06:19', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(15, 'Giovani Haley', 'Terry', 'charity.oberbrunner@example.net', '2023-06-24 12:48:58', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(16, 'Name Kreiger', 'Medhurst', 'block.araceli@example.net', '2023-08-13 20:57:38', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(17, 'Mallory Medhurst', 'Wyman', 'zcrooks@example.org', '2022-11-17 02:13:44', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(18, 'Arnold Greenfelder', 'Dooley', 'rosalyn.bernier@example.org', '2023-06-02 18:01:37', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(19, 'Miss Liza Weber Sr.', 'Hartmann', 'icie22@example.net', '2022-12-05 10:30:39', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(20, 'Bennie Rogahn', 'Rutherford', 'layne.murazik@example.net', '2023-01-27 22:59:51', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(21, 'Jodie Friesen', 'Runolfsson', 'krajcik.michale@example.org', '2023-03-31 10:48:46', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(22, 'Earnestine Schiller II', 'Leannon', 'shanie07@example.com', '2023-06-20 05:28:05', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(23, 'Dr. Erin Balistreri', 'Walter', 'hettinger.antonietta@example.org', '2023-07-17 12:32:35', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(24, 'Prof. Bertrand Abshire DVM', 'Swift', 'jjohns@example.net', '2023-02-17 17:08:53', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(25, 'Sam Towne', 'Wilkinson', 'holden76@example.org', '2023-03-12 11:16:33', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(26, 'Constantin Bashirian', 'McCullough', 'witting.stephon@example.net', '2023-02-14 13:41:57', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(27, 'Erna Jast', 'Kertzmann', 'qgleason@example.com', '2023-08-04 01:57:06', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(28, 'Ms. Joanne Hessel', 'Simonis', 'omills@example.com', '2023-10-07 01:35:15', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(29, 'Cassidy Legros', 'Murazik', 'haleigh.dach@example.net', '2023-01-21 04:19:55', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(30, 'Orpha O\'Keefe', 'Walter', 'rohan.edwina@example.net', '2023-02-18 10:29:52', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(31, 'Mr. Jorge Yost', 'Heaney', 'cielo.feeney@example.com', '2023-05-31 16:39:56', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(32, 'Prof. Zetta Wuckert Sr.', 'Herman', 'linda33@example.net', '2023-07-16 08:33:38', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(33, 'Manley Fahey', 'Zemlak', 'shirthe@example.net', '2023-07-21 21:03:13', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(34, 'Skye Luettgen', 'Goodwin', 'mschumm@example.net', '2023-10-01 01:36:43', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(35, 'Laurence Satterfield', 'Conn', 'bwaters@example.net', '2023-10-10 20:06:48', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(36, 'Friedrich Gleichner', 'Kshlerin', 'stokes.alycia@example.org', '2023-06-09 09:22:33', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(37, 'Mr. Gerhard Mueller', 'Kassulke', 'bhegmann@example.net', '2023-01-08 23:14:27', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(38, 'Brody Zieme', 'Bauch', 'josefina22@example.org', '2023-07-03 12:18:26', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(39, 'Abdullah Crooks', 'Predovic', 'bbergnaum@example.org', '2023-02-08 03:18:22', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(40, 'Walter McClure', 'Runolfsson', 'hmacejkovic@example.net', '2022-11-23 01:37:19', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(41, 'Willis Schamberger', 'Gutmann', 'eryn60@example.net', '2023-02-05 05:51:11', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(42, 'Alvina Feeney', 'Sporer', 'karine25@example.org', '2023-05-17 11:14:38', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(43, 'Mr. Ubaldo Frami PhD', 'Champlin', 'lrath@example.com', '2023-06-04 02:11:05', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(44, 'Emily Feest', 'Smitham', 'allen.sipes@example.net', '2023-07-22 23:02:42', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(45, 'Alva Glover DDS', 'Graham', 'amitchell@example.org', '2023-10-05 18:12:50', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(46, 'Esperanza Wolf', 'Kling', 'jacobson.alejandrin@example.org', '2023-02-08 22:23:26', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(47, 'Dr. Melissa Treutel', 'Kohler', 'sawayn.elda@example.com', '2023-05-31 07:31:58', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(48, 'Mr. Brook Bahringer MD', 'Green', 'lola91@example.com', '2023-04-12 12:14:33', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(49, 'Garland Borer', 'Ferry', 'larkin.octavia@example.com', '2023-05-13 10:51:27', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(50, 'Hilda Huel', 'Nikolaus', 'hester48@example.com', '2023-06-08 20:40:58', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(51, 'Wallace Dare', 'Gaylord', 'kokuneva@example.net', '2023-08-03 11:29:34', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(52, 'Dr. Beaulah Effertz DDS', 'Glover', 'zdubuque@example.com', '2023-07-08 18:37:12', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(53, 'Maynard Lynch', 'Heathcote', 'sgoodwin@example.org', '2022-10-23 04:11:37', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(54, 'Ms. Georgette Ziemann Jr.', 'Rowe', 'christiansen.vernie@example.com', '2023-09-15 14:37:18', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(55, 'Kamille Yundt DDS', 'Murazik', 'maudie.fadel@example.org', '2022-12-14 12:07:31', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(56, 'Sterling Gottlieb', 'Hettinger', 'belle.boyle@example.com', '2023-05-01 09:30:52', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(57, 'Effie Cronin', 'Windler', 'neal96@example.com', '2023-03-09 20:34:41', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(58, 'Mossie Ward', 'Lynch', 'lloyd.walsh@example.com', '2023-08-31 22:30:15', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(59, 'Prof. Frederic Franecki II', 'Parisian', 'tyler07@example.org', '2023-03-03 21:30:29', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(60, 'Ashlee Heathcote', 'Swift', 'frath@example.net', '2023-01-25 13:25:54', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(61, 'Haven Hayes', 'Weber', 'kdare@example.org', '2023-04-14 13:08:45', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(62, 'Edwina Dach', 'Larson', 'vincent77@example.net', '2022-11-02 06:58:16', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(63, 'Ms. Ruth Grady', 'Wuckert', 'aaron.pouros@example.org', '2023-05-17 08:43:00', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(64, 'Nat Lemke', 'O\'Kon', 'ara49@example.org', '2023-06-02 00:37:55', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(65, 'Kaitlyn Mertz', 'Kerluke', 'murphy.zackery@example.com', '2022-10-31 20:34:59', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(66, 'Tatum Pacocha', 'Mayer', 'predovic.verdie@example.com', '2023-01-14 06:08:38', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(67, 'Mark Koepp V', 'Schuster', 'schuster.jayson@example.com', '2023-10-07 16:31:39', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(68, 'Abel Fritsch IV', 'Effertz', 'zbeahan@example.org', '2023-03-11 11:23:29', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(69, 'Leda Schinner', 'Raynor', 'wilmer63@example.org', '2023-05-27 17:11:45', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(70, 'Marge Gerlach', 'Parisian', 'madge21@example.net', '2023-07-27 04:17:47', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(71, 'Derrick Daugherty V', 'Lubowitz', 'amelie.berge@example.com', '2023-09-04 21:53:39', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(72, 'Prof. Lemuel Prosacco', 'Cremin', 'mframi@example.net', '2023-06-25 17:22:22', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(73, 'Jalyn Russel', 'Stanton', 'tkub@example.com', '2023-03-18 02:02:05', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(74, 'Miss Rosalyn Abshire DVM', 'O\'Hara', 'schuster.eulah@example.org', '2022-12-07 13:27:54', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(75, 'Emilia Renner', 'Jaskolski', 'geovanni.gutmann@example.com', '2023-03-17 22:03:21', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(76, 'Dr. Vallie Leffler II', 'Hills', 'roosevelt58@example.com', '2022-10-16 01:53:28', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(77, 'Tina Nikolaus', 'Harber', 'nathan72@example.net', '2023-09-12 13:10:36', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(78, 'Janick Windler', 'Larkin', 'ross67@example.org', '2023-03-07 20:29:35', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(79, 'Dr. Barry Willms Jr.', 'Corwin', 'retta05@example.net', '2023-09-27 07:08:01', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(80, 'Mr. Cordelia Moen', 'Reinger', 'lera73@example.org', '2023-05-29 11:28:36', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(81, 'Will King', 'Veum', 'jewell.larkin@example.com', '2023-09-17 17:23:41', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(82, 'Gwendolyn Bednar', 'Pouros', 'kailyn98@example.net', '2023-05-12 20:28:35', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(83, 'Deangelo Klocko MD', 'Bayer', 'purdy.rocky@example.net', '2023-07-16 17:06:49', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(84, 'Berneice Stehr Sr.', 'Waters', 'zoie.hegmann@example.com', '2023-05-20 15:03:26', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(85, 'Margret Hills', 'Feeney', 'lpfannerstill@example.org', '2023-06-09 22:20:01', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(86, 'Vallie Dare', 'Rowe', 'corbin45@example.com', '2023-10-13 12:41:45', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(87, 'Barry Toy', 'Connelly', 'erwin24@example.com', '2023-01-29 12:32:25', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(88, 'Gudrun Haley', 'West', 'kkunze@example.org', '2023-02-02 08:11:41', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(89, 'Marjory Cummings', 'Koch', 'stevie25@example.org', '2023-01-31 08:05:39', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(90, 'Taryn Trantow', 'Tremblay', 'spinka.afton@example.org', '2023-05-14 00:20:09', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(91, 'Gudrun Pagac', 'Bernhard', 'lblock@example.net', '2023-08-09 02:21:27', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(92, 'Mrs. Lori Frami', 'Sauer', 'tyshawn.kohler@example.org', '2022-10-15 00:04:15', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(93, 'Elwyn Schiller III', 'Hahn', 'lukas13@example.org', '2023-04-21 16:18:32', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(94, 'Evie Gleason MD', 'Lynch', 'kristina29@example.org', '2023-02-28 16:12:33', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(95, 'Prof. Chadd Luettgen IV', 'Mayer', 'fgrant@example.org', '2023-01-01 13:28:35', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(96, 'Curtis Schoen', 'Lebsack', 'marisa.lind@example.net', '2023-04-28 23:53:29', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(97, 'Leonora Casper', 'Satterfield', 'hassan01@example.com', '2023-09-07 04:23:32', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(98, 'Nannie Metz', 'Gottlieb', 'lavinia39@example.com', '2023-06-02 13:41:53', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(99, 'Shany Kuvalis', 'Kiehn', 'damore.domenica@example.org', '2023-09-19 23:22:11', '2023-10-14 04:14:43', '2023-10-14 04:14:43'),
(100, 'Domenico Nolan I', 'Halvorson', 'xrussel@example.org', '2023-04-18 15:49:42', '2023-10-14 04:14:43', '2023-10-14 04:14:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
