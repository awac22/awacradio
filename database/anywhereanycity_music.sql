-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 13, 2023 at 09:02 AM
-- Server version: 10.3.38-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anywhereanycity_music`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `cover` text NOT NULL,
  `release_date` date NOT NULL,
  `artist_id` int(11) NOT NULL,
  `created_by` varchar(191) NOT NULL,
  `genre_id` varchar(191) DEFAULT NULL,
  `isProduct` tinyint(1) NOT NULL DEFAULT 0,
  `isExclusive` tinyint(1) NOT NULL DEFAULT 0,
  `isExplicit` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `spotify_link` varchar(191) DEFAULT NULL,
  `soundcloud_link` varchar(191) DEFAULT NULL,
  `youtube_link` varchar(191) DEFAULT NULL,
  `itunes_link` varchar(191) DEFAULT NULL,
  `deezer_link` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `cover`, `release_date`, `artist_id`, `created_by`, `genre_id`, `isProduct`, `isExclusive`, `isExplicit`, `created_at`, `updated_at`, `spotify_link`, `soundcloud_link`, `youtube_link`, `itunes_link`, `deezer_link`) VALUES
(68789, 'Suzan album', '', '2022-05-14', 4799, 'artist', NULL, 0, 0, 0, '2022-07-12 14:56:15', '2022-07-12 14:56:15', NULL, NULL, NULL, NULL, NULL),
(68790, 'BTS Songs', '', '2020-05-04', 0, 'admin', NULL, 0, 0, 0, '2022-07-12 15:53:26', '2022-07-12 15:53:26', NULL, NULL, NULL, NULL, NULL),
(68791, 'anye West', '', '2022-05-11', 0, 'admin', NULL, 0, 0, 0, '2022-07-12 15:56:35', '2022-07-12 15:56:35', NULL, NULL, NULL, NULL, NULL),
(68792, 'test album', '', '2021-02-02', 0, 'admin', NULL, 0, 0, 0, '2022-07-21 21:32:28', '2022-07-21 21:32:28', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `album_artist`
--

CREATE TABLE `album_artist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `album_artist`
--

INSERT INTO `album_artist` (`id`, `artist_id`, `album_id`) VALUES
(1, 4801, 68790),
(3, 4800, 68791),
(4, 4797, 68792),
(5, 4798, 68792),
(6, 4799, 68792);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `funds` double(8,2) NOT NULL DEFAULT 0.00,
  `firstname` varchar(191) DEFAULT NULL,
  `lastname` varchar(191) DEFAULT NULL,
  `displayname` varchar(191) NOT NULL,
  `address` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `available_disk_space` bigint(20) NOT NULL DEFAULT 500,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `spotify_link` varchar(191) DEFAULT NULL,
  `soundcloud_link` varchar(191) DEFAULT NULL,
  `youtube_link` varchar(191) DEFAULT NULL,
  `itunes_link` varchar(191) DEFAULT NULL,
  `deezer_link` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `user_id`, `avatar`, `funds`, `firstname`, `lastname`, `displayname`, `address`, `country`, `email`, `phone`, `available_disk_space`, `created_at`, `updated_at`, `spotify_link`, `soundcloud_link`, `youtube_link`, `itunes_link`, `deezer_link`) VALUES
(4797, NULL, '', 0.00, NULL, NULL, 'Kuzan', NULL, NULL, NULL, NULL, 500, '2022-06-26 21:28:49', '2022-06-26 21:28:49', NULL, NULL, NULL, NULL, NULL),
(4798, NULL, '', 0.00, NULL, NULL, 'JGB', NULL, NULL, NULL, NULL, 500, '2022-07-10 16:53:10', '2022-07-10 16:53:10', NULL, NULL, NULL, NULL, NULL),
(4799, 2, '', 493.50, 'Atul', 'Dogra', 'atuldogra23', 'House no.1286/1 sector 30-B, sdsdsd', 'India', 'atuldogra23@gmail.com', '09592330998', 500, '2022-07-10 17:09:54', '2022-08-30 21:44:19', NULL, NULL, NULL, NULL, NULL),
(4800, NULL, '', 0.00, NULL, NULL, 'Taylor Swift', NULL, NULL, NULL, NULL, 500, '2022-07-12 15:33:40', '2022-07-12 15:33:40', NULL, NULL, NULL, NULL, NULL),
(4801, NULL, '', 0.00, NULL, NULL, 'Ariana Grande', NULL, NULL, NULL, NULL, 500, '2022-07-12 15:34:34', '2022-07-12 15:34:34', NULL, NULL, NULL, NULL, NULL),
(4802, NULL, '', 0.00, NULL, NULL, 'Beyonce', NULL, NULL, NULL, NULL, 500, '2022-07-12 15:35:52', '2022-07-12 15:35:52', NULL, NULL, NULL, NULL, NULL),
(4803, NULL, '', 0.00, NULL, NULL, 'Ed Sheeran', NULL, NULL, NULL, NULL, 500, '2022-07-12 15:37:57', '2022-07-12 15:37:57', NULL, NULL, NULL, NULL, NULL),
(4804, 2, '', 0.00, 'atul', 'dogra', 'dogra23', '667 fun street', 'United States', 'speciesgroup@gmail.com', '+12034149080', 500, '2022-08-03 09:00:26', '2022-08-03 09:00:26', NULL, NULL, NULL, NULL, NULL),
(4805, 1, NULL, 0.00, 'Admin', NULL, 'Admin', NULL, NULL, NULL, NULL, 500, '2022-03-04 22:45:19', '2022-03-04 22:45:19', NULL, NULL, NULL, NULL, NULL),
(4806, 2, NULL, 0.00, 'Atul', NULL, 'Atul', NULL, NULL, NULL, NULL, 500, '2022-03-04 22:45:19', '2022-03-04 22:45:19', NULL, NULL, NULL, NULL, NULL),
(4810, 6, NULL, 0.00, 'vikas', NULL, 'vikas', NULL, NULL, NULL, NULL, 500, '2022-03-04 22:45:19', NULL, NULL, NULL, NULL, NULL, NULL),
(4812, 8, NULL, 0.00, 'kanuram14786', NULL, 'kanuram14786', NULL, NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4815, 11, NULL, 0.00, 'Jerrytoots', NULL, 'Jerrytoots', NULL, NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4818, 14, NULL, 0.00, 'alvin14786@gmail.com', NULL, 'alvin14786@gmail.com', NULL, NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4819, 16, NULL, 0.00, 'Alexander', NULL, 'Alexander', NULL, NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4821, 18, NULL, 0.00, 'B O', NULL, 'B O', NULL, NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4822, 19, NULL, 0.00, 'dhasr22', NULL, 'dhasr22', NULL, NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4823, 20, NULL, 0.00, 'dkalexander', NULL, 'dkalexander', NULL, NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4830, 27, NULL, 5.50, 'johndoe', NULL, 'johndoe', NULL, NULL, NULL, NULL, 500, NULL, '2023-04-13 15:59:37', NULL, NULL, NULL, NULL, NULL),
(4837, 34, NULL, 0.00, 'Ebony Satterfield', NULL, 'Ebony Satterfield', NULL, NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4839, 36, NULL, 0.00, 'Test', NULL, 'Test', NULL, NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4842, 92, NULL, 0.00, 'Tanish', 'Dogra', 'Tanish', '#1286/3', 'India', 'tanish@gmail.com', '+619493324536', 500, '2023-03-08 13:42:09', '2023-03-08 13:42:09', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `artist_song`
--

CREATE TABLE `artist_song` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` varchar(191) NOT NULL,
  `song_id` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artist_song`
--

INSERT INTO `artist_song` (`id`, `artist_id`, `song_id`) VALUES
(3, '4802', '1687443'),
(5, '4803', '1687444'),
(9, '4800', '1687446'),
(10, '4801', '1687445'),
(11, '4803', '1687500'),
(12, '4803', '1687501'),
(13, '4803', '1687502'),
(20, '4830', '1687504'),
(23, '4830', '1687505'),
(24, '4830', '1687507'),
(25, '4830', '1687508'),
(28, '4830', '1687509'),
(30, '4830', '1687510'),
(32, '4830', '1687512'),
(33, '4830', '1687513'),
(34, '4830', '1687511');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `file` varchar(191) NOT NULL,
  `banner` varchar(191) NOT NULL,
  `hls` tinyint(1) NOT NULL,
  `playAfterXSongs` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `start_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `expiry_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `read_at` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `message_id`, `session_id`, `user_id`, `read_at`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 13, 93, NULL, 0, '2023-03-16 20:43:43', '2023-03-16 20:43:43'),
(2, 1, 13, 93, NULL, 1, '2023-03-16 20:43:43', '2023-03-16 20:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `source` text NOT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT 0,
  `source_format` varchar(191) NOT NULL,
  `duration` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `podcast_id` int(11) NOT NULL,
  `hls` tinyint(1) NOT NULL DEFAULT 0,
  `file_size` bigint(20) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `followed_source` varchar(191) NOT NULL,
  `followed_type` varchar(191) NOT NULL,
  `followed_id` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`followed_source`, `followed_type`, `followed_id`, `user_id`, `created_at`, `updated_at`) VALUES
('local', 'artist', '4797', 1, NULL, NULL),
('local', 'artist', '4801', 1, NULL, NULL),
('local', 'artist', '4802', 1, NULL, NULL),
('local', 'artist', '4801', 2, NULL, NULL),
('local', 'artist', '4800', 2, NULL, NULL),
('local', 'artist', '4830', 41, NULL, NULL),
('local', 'artist', '4830', 93, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `friendships`
--

CREATE TABLE `friendships` (
  `id` int(10) UNSIGNED NOT NULL,
  `friend_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `friendships`
--

INSERT INTO `friendships` (`id`, `friend_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 91, 14, '2023-03-15 22:46:50', NULL),
(2, 2, 1, '2023-03-10 06:24:56', '2023-03-10 06:24:56'),
(3, 18, 2, '2023-03-10 06:24:56', '2023-03-10 06:24:56'),
(4, 19, 2, '2023-03-10 06:24:56', '2023-03-10 06:24:56'),
(5, 2, 14, '2023-03-10 06:24:56', '2023-03-10 06:24:56'),
(6, 89, 14, '2023-03-10 06:24:56', '2023-03-10 06:24:56'),
(7, 89, 1, '2023-03-10 06:24:56', '2023-03-10 06:24:56'),
(8, 53, 89, '2023-03-10 06:24:56', '2023-03-10 06:24:56'),
(9, 27, 89, '2023-03-10 06:24:56', '2023-03-10 06:24:56'),
(10, 27, 53, '2023-03-10 06:24:56', '2023-03-10 06:24:56'),
(11, 93, 93, '2023-03-16 20:43:28', '2023-03-16 20:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `cover` text NOT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `slug`, `cover`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Electronic', 'electronic', '', NULL, '2022-03-04 22:45:09', '2022-03-04 22:45:09'),
(2, 'Sound FX', 'sound-fx', '', NULL, '2022-03-04 22:45:10', '2022-03-04 22:45:10'),
(3, 'Gaming', 'gaming', '', NULL, '2022-03-04 22:45:10', '2022-03-04 22:45:10'),
(4, 'Piano', 'piano', '', NULL, '2022-03-04 22:45:10', '2022-03-04 22:45:10'),
(5, 'Chill', 'chill', '', NULL, '2022-03-04 22:45:10', '2022-03-04 22:45:10'),
(6, 'Jazz', 'jazz', '', NULL, '2022-03-04 22:45:10', '2022-03-04 22:45:10'),
(7, 'K Pop', 'k-pop', '', NULL, '2022-03-04 22:45:10', '2022-03-04 22:45:10'),
(8, 'Classical', 'classical', '', NULL, '2022-03-04 22:45:10', '2022-03-04 22:45:10'),
(9, 'Hip Hop', 'hip-hop', '', NULL, '2022-03-04 22:45:11', '2022-03-04 22:45:11'),
(10, 'Indie', 'indie', '', NULL, '2022-03-04 22:45:11', '2022-03-04 22:45:11');

-- --------------------------------------------------------

--
-- Table structure for table `genre_artist`
--

CREATE TABLE `genre_artist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `song_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genre_artist`
--

INSERT INTO `genre_artist` (`id`, `song_id`, `artist_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(6, 1687512, 4830, 3, '2022-10-05 11:07:07', '2022-10-05 11:07:07'),
(7, 1687511, 4830, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genre_podcast`
--

CREATE TABLE `genre_podcast` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `podcast_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genre_song`
--

CREATE TABLE `genre_song` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `song_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genre_song`
--

INSERT INTO `genre_song` (`id`, `song_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(2, 1687444, 6, NULL, NULL),
(6, 1687446, 4, NULL, NULL),
(7, 1687445, 2, NULL, NULL),
(8, 1687498, 4, NULL, NULL),
(9, 1687500, 1, NULL, NULL),
(10, 1687500, 2, NULL, NULL),
(11, 1687501, 1, NULL, NULL),
(12, 1687501, 2, NULL, NULL),
(13, 1687502, 1, NULL, NULL),
(14, 1687502, 2, NULL, NULL),
(22, 1687504, 1, NULL, NULL),
(23, 1687504, 3, NULL, NULL),
(26, 1687505, 1, NULL, NULL),
(27, 1687507, 1, NULL, NULL),
(28, 1687508, 1, NULL, NULL),
(32, 1687509, 1, NULL, NULL),
(33, 1687509, 10, NULL, NULL),
(36, 1687510, 1, NULL, NULL),
(37, 1687510, 3, NULL, NULL),
(40, 1687512, 1, NULL, NULL),
(41, 1687512, 3, NULL, NULL),
(42, 1687511, 1, NULL, NULL),
(43, 1687515, 9, NULL, NULL),
(44, 1687515, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `locale` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `flag` varchar(191) DEFAULT NULL,
  `isDeletable` tinyint(1) NOT NULL DEFAULT 1,
  `isDefault` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `locale`, `status`, `flag`, `isDeletable`, `isDefault`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 1, 'usa', 0, 1, '2022-03-04 22:45:15', '2022-03-04 22:45:15'),
(2, 'Español', 'es', -1, 'spain', 0, 0, '2022-03-04 22:45:15', '2022-03-04 22:45:15'),
(3, 'Français', 'fr', -1, 'france', 0, 0, '2022-03-04 22:45:15', '2022-03-04 22:45:15'),
(4, 'Deutsch', 'de', -1, 'germany', 0, 0, '2022-03-04 22:45:15', '2022-03-04 22:45:15'),
(5, 'العربية', 'ar', -1, 'uae', 0, 0, '2022-03-04 22:45:15', '2022-03-04 22:45:15'),
(6, 'हिंदी', 'hi', -1, 'india', 0, 0, '2022-03-04 22:45:15', '2022-03-04 22:45:15'),
(7, 'Italiano', 'it', -1, 'italy', 0, 0, '2022-03-04 22:45:15', '2022-03-04 22:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `content_type` varchar(191) NOT NULL,
  `content_source` varchar(191) NOT NULL,
  `content_id` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`content_type`, `content_source`, `content_id`, `user_id`, `created_at`, `updated_at`) VALUES
('album', 'local', '68789', 1, NULL, NULL),
('album', 'local', '68789', 1, NULL, NULL),
('album', 'local', '68791', 2, NULL, NULL),
('album', 'local', '68790', 1, NULL, NULL),
('album', 'local', '68791', 2, NULL, NULL),
('album', 'local', '68789', 2, NULL, NULL),
('album', 'local', '68790', 2, NULL, NULL),
('song', 'local', '1687503', 89, NULL, NULL),
('song', 'local', '1687515', 89, NULL, NULL),
('song', 'local', '1687511', 93, NULL, NULL),
('song', 'local', '1687511', 93, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) NOT NULL,
  `group` varchar(191) NOT NULL,
  `key` text NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `ltm_translations`
--

INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', '_json', 'Monetizing', 'Monetizing', '2022-03-04 22:44:20', '2022-03-04 22:44:20'),
(2, 1, 'en', '_json', 'Content', 'Content', '2022-03-04 22:44:20', '2022-03-04 22:44:20'),
(3, 1, 'en', '_json', 'Analytics', 'Analytics', '2022-03-04 22:44:20', '2022-03-04 22:44:20'),
(4, 1, 'en', '_json', 'Translations', 'Translations', '2022-03-04 22:44:20', '2022-03-04 22:44:20'),
(5, 1, 'en', '_json', 'Settings', 'Settings', '2022-03-04 22:44:20', '2022-03-04 22:44:20'),
(6, 1, 'en', '_json', 'Members', 'Members', '2022-03-04 22:44:20', '2022-03-04 22:44:20'),
(7, 1, 'en', '_json', 'Indie', 'Indie', '2022-03-04 22:44:20', '2022-03-04 22:44:20'),
(8, 1, 'en', '_json', 'Hip Hop', 'Hip Hop', '2022-03-04 22:44:20', '2022-03-04 22:44:20'),
(9, 1, 'en', '_json', 'Classical', 'Classical', '2022-03-04 22:44:20', '2022-03-04 22:44:20'),
(10, 1, 'en', '_json', 'K Pop', 'K Pop', '2022-03-04 22:44:20', '2022-03-04 22:44:20'),
(11, 1, 'en', '_json', 'Jazz', 'Jazz', '2022-03-04 22:44:20', '2022-03-04 22:44:20'),
(12, 1, 'en', '_json', 'Chill', 'Chill', '2022-03-04 22:44:20', '2022-03-04 22:44:20'),
(13, 1, 'en', '_json', 'Piano', 'Piano', '2022-03-04 22:44:20', '2022-03-04 22:44:20'),
(14, 1, 'en', '_json', 'Gaming', 'Gaming', '2022-03-04 22:44:20', '2022-03-04 22:44:20'),
(15, 1, 'en', '_json', 'Electronic', 'Electronic', '2022-03-04 22:44:20', '2022-03-04 22:44:20'),
(16, 1, 'en', '_json', 'Charts', 'Charts', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(17, 1, 'en', '_json', 'Genres & Moods', 'Genres & Moods', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(18, 1, 'en', '_json', 'Explore and listen to various genres & moods', 'Explore and listen to various genres & moods', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(19, 1, 'en', '_json', 'Search', 'Search', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(20, 1, 'en', '_json', 'There is no content to be displayed', 'There is no content to be displayed', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(21, 1, 'en', '_json', 'No content!', 'No content!', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(22, 1, 'en', '_json', 'Friends', 'Friends', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(23, 1, 'en', '_json', 'Explore', 'Explore', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(24, 1, 'en', '_json', 'Explore & enjoy listening to music', 'Explore & enjoy listening to music', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(25, 1, 'en', '_json', 'Most played songs', 'Most played songs', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(26, 1, 'en', '_json', 'No data to show yet!', 'No data to show yet!', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(27, 1, 'en', '_json', 'Top Visiting Countries', 'Top Visiting Countries', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(28, 1, 'en', '_json', 'Interval', 'Interval', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(29, 1, 'en', '_json', 'Number of plays per interval', 'Number of plays per interval', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(30, 1, 'en', '_json', 'New this month', 'New this month', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(31, 1, 'en', '_json', 'Save Changes', 'Save Changes', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(32, 1, 'en', '_json', 'Appearance', 'Appearance', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(33, 1, 'en', '_json', 'Configuration', 'Configuration', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(34, 1, 'en', '_json', 'Podcast Genres', 'Podcast Genres', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(35, 1, 'en', '_json', 'Song Genres', 'Song Genres', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(36, 1, 'en', '_json', 'Podcasts', 'Podcasts', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(37, 1, 'en', '_json', 'Playlists', 'Playlists', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(38, 1, 'en', '_json', 'Songs', 'Songs', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(39, 1, 'en', '_json', 'Albums', 'Albums', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(40, 1, 'en', '_json', 'Pages', 'Pages', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(41, 1, 'en', '_json', 'Your credentials are incorrect. Please try again', 'Your credentials are incorrect. Please try again.', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(42, 1, 'en', '_json', 'Account already exists', 'Account already exists.', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(43, 1, 'en', '_json', 'Logged out successfully', 'Logged out successfully.', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(44, 1, 'en', '_json', 'Latest Podcasts', 'Latest Podcasts', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(45, 1, 'en', '_json', 'Popular Podcasts', 'Popular Podcasts', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(46, 1, 'en', '_json', 'Login', 'Login', '2022-03-04 22:44:21', '2022-03-04 22:44:21'),
(47, 1, 'en', '_json', 'Logout', 'Logout', '2022-03-04 22:44:22', '2022-03-04 22:44:22'),
(48, 1, 'en', '_json', 'Light Mode', 'Light Mode', '2022-03-04 22:44:22', '2022-03-04 22:44:22'),
(49, 1, 'en', '_json', 'Dark Mode', 'Dark Mode', '2022-03-04 22:44:22', '2022-03-04 22:44:22'),
(50, 1, 'en', '_json', 'Upgrade', 'Upgrade', '2022-03-04 22:44:22', '2022-03-04 22:44:22'),
(51, 1, 'en', '_json', 'Friend Requests', 'Friend Requests', '2022-03-04 22:44:22', '2022-03-04 22:44:22'),
(52, 1, 'en', '_json', 'New Releases', 'New Releases', '2022-03-04 22:44:22', '2022-03-04 22:44:22'),
(53, 1, 'en', '_json', 'Plans', 'Plans', '2022-03-04 22:44:22', '2022-03-04 22:44:22'),
(54, 1, 'en', '_json', 'Subscriptions', 'Subscriptions', '2022-03-04 22:44:22', '2022-03-04 22:44:22'),
(55, 1, 'en', '_json', 'Advertisements', 'Advertisements', '2022-03-04 22:44:22', '2022-03-04 22:44:22'),
(56, 1, 'en', '_json', 'New Translation', 'New Translation', '2022-03-04 22:44:22', '2022-03-04 22:44:22'),
(57, 1, 'en', '_json', 'Add', 'Add', '2022-03-04 22:44:22', '2022-03-04 22:44:22'),
(58, 1, 'en', '_json', 'Top', 'Top', '2022-03-04 22:44:22', '2022-03-04 22:44:22'),
(59, 1, 'en', '_json', 'Artists', 'Artists', '2022-03-04 22:44:22', '2022-03-04 22:44:22'),
(60, 1, 'en', '_json', 'Users', 'Users', '2022-03-04 22:44:22', '2022-03-04 22:44:22'),
(61, 1, 'en', '_json', 'Roles', 'Roles', '2022-03-04 22:44:22', '2022-03-04 22:44:22'),
(62, 1, 'en', '_json', 'Last Year', 'Last Year', '2022-03-04 22:44:22', '2022-03-04 22:44:22'),
(63, 1, 'en', '_json', 'Last Month', 'Last Month', '2022-03-04 22:44:23', '2022-03-04 22:44:23'),
(64, 1, 'en', '_json', 'Last 7 days', 'Last 7 days', '2022-03-04 22:44:23', '2022-03-04 22:44:23'),
(65, 1, 'en', '_json', 'Popular', 'Popular', '2022-03-04 22:44:23', '2022-03-04 22:44:23'),
(66, 1, 'en', '_json', 'Top Visiting Browsers', 'Top Visiting Browsers', '2022-03-04 22:44:23', '2022-03-04 22:44:23'),
(67, 1, 'en', '_json', 'Queue', 'Queue', '2022-03-04 22:44:23', '2022-03-04 22:44:23'),
(68, 1, 'en', '_json', 'Download', 'Download', '2022-03-04 22:44:23', '2022-03-04 22:44:23'),
(69, 1, 'en', '_json', 'Play Speed', 'Play Speed', '2022-03-04 22:44:23', '2022-03-04 22:44:23'),
(70, 1, 'en', '_json', 'Next', 'Next', '2022-03-04 22:44:23', '2022-03-04 22:44:23'),
(71, 1, 'en', '_json', 'Pause', 'Pause', '2022-03-04 22:44:23', '2022-03-04 22:44:23'),
(72, 1, 'en', '_json', 'Rewind', 'Rewind', '2022-03-04 22:44:23', '2022-03-04 22:44:23'),
(73, 1, 'en', '_json', 'Previous', 'Previous', '2022-03-04 22:44:23', '2022-03-04 22:44:23'),
(74, 1, 'en', '_json', 'Shuffle', 'Shuffle', '2022-03-04 22:44:24', '2022-03-04 22:44:24'),
(75, 1, 'en', '_json', 'Loop', 'Loop', '2022-03-04 22:44:24', '2022-03-04 22:44:24'),
(76, 1, 'en', '_json', 'Play', 'Play', '2022-03-04 22:44:24', '2022-03-04 22:44:24'),
(77, 1, 'en', '_json', 'Dislike', 'Dislike', '2022-03-04 22:44:24', '2022-03-04 22:44:24'),
(78, 1, 'en', '_json', 'No', 'No', '2022-03-04 22:44:24', '2022-03-04 22:44:24'),
(79, 1, 'en', '_json', 'Yes', 'Yes', '2022-03-04 22:44:24', '2022-03-04 22:44:24'),
(80, 1, 'en', '_json', 'podcast', 'podcast', '2022-03-04 22:44:24', '2022-03-04 22:44:24'),
(81, 1, 'en', '_json', 'episode', 'episode', '2022-03-04 22:44:24', '2022-03-04 22:44:24'),
(82, 1, 'en', '_json', 'album', 'album', '2022-03-04 22:44:24', '2022-03-04 22:44:24'),
(83, 1, 'en', '_json', 'Listening to', 'Listening to', '2022-03-04 22:44:24', '2022-03-04 22:44:24'),
(84, 1, 'en', '_json', 'from', 'from', '2022-03-04 22:44:24', '2022-03-04 22:44:24'),
(85, 1, 'en', '_json', 'by', 'by', '2022-03-04 22:44:24', '2022-03-04 22:44:24'),
(86, 1, 'en', '_json', 'Are you sure you wanna be a friend with', 'Are you sure you wanna be a friend with', '2022-03-04 22:44:24', '2022-03-04 22:44:24'),
(87, 1, 'en', '_json', 'You seem to be having no friends. Add some!', 'You seem to be having no friends. Add some!', '2022-03-04 22:44:24', '2022-03-04 22:44:24'),
(88, 1, 'en', '_json', 'No Friends!', 'No Friends!', '2022-03-04 22:44:24', '2022-03-04 22:44:24'),
(89, 1, 'en', '_json', 'Unfriend', 'Unfriend', '2022-03-04 22:44:24', '2022-03-04 22:44:24'),
(90, 1, 'en', '_json', 'Listen', 'Listen', '2022-03-04 22:44:24', '2022-03-04 22:44:24'),
(91, 1, 'en', '_json', 'Chat', 'Chat', '2022-03-04 22:44:24', '2022-03-04 22:44:24'),
(92, 1, 'en', '_json', 'Profile', 'Profile', '2022-03-04 22:44:25', '2022-03-04 22:44:25'),
(93, 1, 'en', '_json', 'Are you sure you wanna block', 'Are you sure you wanna block', '2022-03-04 22:44:25', '2022-03-04 22:44:25'),
(94, 1, 'en', '_json', 'Block', 'Block', '2022-03-04 22:44:25', '2022-03-04 22:44:25'),
(95, 1, 'en', '_json', 'Cancel', 'Cancel', '2022-03-04 22:44:25', '2022-03-04 22:44:25'),
(96, 1, 'en', '_json', 'Seen', 'Seen', '2022-03-04 22:44:25', '2022-03-04 22:44:25'),
(97, 1, 'en', '_json', 'Unblock', 'Unblock', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(98, 1, 'en', '_json', 'You can no longer chat with this person.', 'You can no longer chat with this person.', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(99, 1, 'en', '_json', 'Just Now', 'Just Now', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(100, 1, 'en', '_json', 'Sign Up', 'Sign Up', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(101, 1, 'en', '_json', 'Name', 'Name', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(102, 1, 'en', '_json', 'Password', 'Password', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(103, 1, 'en', '_json', 'Reset your password', 'Reset your password', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(104, 1, 'en', '_json', 'Enter your login email', 'Enter your login email', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(105, 1, 'en', '_json', 'Login to your account', 'Login to your account', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(106, 1, 'en', '_json', 'Remember you password?', 'Remember you password?', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(107, 1, 'en', '_json', 'Email', 'Email', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(108, 1, 'en', '_json', 'Logging in...', 'Logging in...', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(109, 1, 'en', '_json', 'Password does not match!', 'Password does not match!', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(110, 1, 'en', '_json', 'Please enter a valid email.', 'Please enter a valid email.', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(111, 1, 'en', '_json', 'Min 6 characters.', 'Min 6 characters.', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(112, 1, 'en', '_json', 'Required.', 'Required.', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(113, 1, 'en', '_json', 'Confirm Password', 'Confirm Password', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(114, 1, 'en', '_json', 'At least 6 characters', 'At least 6 characters', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(115, 1, 'en', '_json', 'Create An Account', 'Create An Account', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(116, 1, 'en', '_json', 'Forgot your password?', 'Forgot your password?', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(117, 1, 'en', '_json', 'Open New Account', 'Open New Account', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(118, 1, 'en', '_json', 'Complete Sign Up', 'Complete Sign Up', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(119, 1, 'en', '_json', 'Or', 'Or', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(120, 1, 'en', '_json', 'Account created successfully. You can login now.', 'Account created successfully. You can login now.', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(121, 1, 'en', '_json', 'Already have an account?', 'Already have an account?', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(122, 1, 'en', '_json', 'Sign In', 'Sign In', '2022-03-04 22:44:26', '2022-03-04 22:44:26'),
(123, 1, 'en', '_json', 'You do not have an account yet?', 'You do not have an account yet?', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(124, 1, 'en', '_json', 'Password reset successfully. Redirecting to login...', 'Password reset successfully. Redirecting to login...', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(125, 1, 'en', '_json', 'Reset', 'Reset', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(126, 1, 'en', '_json', 'Private', 'Private', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(127, 1, 'en', '_json', 'Public', 'Public', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(128, 1, 'en', '_json', 'Playlist Name', 'Playlist Name', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(129, 1, 'en', '_json', 'Edit Playlist', 'Edit Playlist', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(130, 1, 'en', '_json', 'Pick', 'Pick', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(131, 1, 'en', '_json', 'Crop Image', 'Crop Image', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(132, 1, 'en', '_json', 'Create Playlist', 'Create Playlist', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(133, 1, 'en', '_json', 'Create', 'Create', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(134, 1, 'en', '_json', 'Start typing to search', 'Start typing to search', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(135, 1, 'en', '_json', 'Search Song', 'Search Song', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(136, 1, 'en', '_json', 'No playlists!', 'No playlists!', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(137, 1, 'en', '_json', 'New Playlist', 'New Playlist', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(138, 1, 'en', '_json', 'Choose Playlist', 'Choose Playlist', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(139, 1, 'en', '_json', 'updated successfully!', 'updated successfully!', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(140, 1, 'en', '_json', 'Song Deleted!', 'Song Deleted!', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(141, 1, 'en', '_json', 'Are you sure you wanna delete this song?', 'Are you sure you wanna delete this song?', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(142, 1, 'en', '_json', 'Delete', 'Delete', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(143, 1, 'en', '_json', 'Make Private', 'Make Private', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(144, 1, 'en', '_json', 'Make Public', 'Make Public', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(145, 1, 'en', '_json', 'Title', 'Title', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(146, 1, 'en', '_json', 'Are you sure you wanna make this song private? This means that it\'s gonna be visible only for you.', 'Are you sure you wanna make this song private? This means that it\'s gonna be visible only for you.', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(147, 1, 'en', '_json', 'Are you sure you wanna make this song public? This means that it\'s gonna be visible on your profile.', 'Are you sure you wanna make this song public? This means that it\'s gonna be visible on your profile.', '2022-03-04 22:44:27', '2022-03-04 22:44:27'),
(148, 1, 'en', '_json', 'has been removed from playlist successfully!', 'has been removed from playlist successfully!', '2022-03-04 22:44:28', '2022-03-04 22:44:28'),
(149, 1, 'en', '_json', 'Are you sure you wanna remove this song from this playlist?', 'Are you sure you wanna remove this song from this playlist?', '2022-03-04 22:44:28', '2022-03-04 22:44:28'),
(150, 1, 'en', '_json', 'Remove song from playlist', 'Remove song from playlist', '2022-03-04 22:44:28', '2022-03-04 22:44:28'),
(151, 1, 'en', '_json', 'Song already exists on this playlist!', 'Song already exists on this playlist!', '2022-03-04 22:44:28', '2022-03-04 22:44:28'),
(152, 1, 'en', '_json', 'Already There!', 'Already There!', '2022-03-04 22:44:28', '2022-03-04 22:44:28'),
(153, 1, 'en', '_json', 'New', 'New', '2022-03-04 22:44:28', '2022-03-04 22:44:28'),
(154, 1, 'en', '_json', 'There are no results found for this search keyword.', 'There are no results found for this search keyword.', '2022-03-04 22:44:28', '2022-03-04 22:44:28'),
(155, 1, 'en', '_json', 'Logo Image', 'Logo Image', '2022-03-04 22:44:28', '2022-03-04 22:44:28'),
(156, 1, 'en', '_json', 'Please choose an image', 'Please choose an image', '2022-03-04 22:44:28', '2022-03-04 22:44:28'),
(157, 1, 'en', '_json', 'Image must be less then', 'Image must be less then', '2022-03-04 22:44:28', '2022-03-04 22:44:28'),
(158, 1, 'en', '_json', 'Choose Image', 'Choose Image', '2022-03-04 22:44:28', '2022-03-04 22:44:28'),
(159, 1, 'en', '_json', 'Latest Song', 'Latest Song', '2022-03-04 22:44:28', '2022-03-04 22:44:28'),
(160, 1, 'en', '_json', 'By', 'By', '2022-03-04 22:44:28', '2022-03-04 22:44:28'),
(161, 1, 'en', '_json', 'Empty!', 'Empty!', '2022-03-04 22:44:28', '2022-03-04 22:44:28'),
(162, 1, 'en', '_json', 'This playlist has no songs.', 'This playlist has no songs.', '2022-03-04 22:44:28', '2022-03-04 22:44:28'),
(163, 1, 'en', '_json', 'You need to copy the URL manually.', 'You need to copy the URL manually.', '2022-03-04 22:44:28', '2022-03-04 22:44:28'),
(164, 1, 'en', '_json', 'Oops!', 'Oops!', '2022-03-04 22:44:28', '2022-03-04 22:44:28'),
(165, 1, 'en', '_json', 'URL copied to clipboard.', 'URL copied to clipboard.', '2022-03-04 22:44:28', '2022-03-04 22:44:28'),
(166, 1, 'en', '_json', 'Add To Playlist', 'Add To Playlist', '2022-03-04 22:44:28', '2022-03-04 22:44:28'),
(167, 1, 'en', '_json', 'Add To Queue', 'Add To Queue', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(168, 1, 'en', '_json', 'Go To Artist', 'Go To Artist', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(169, 1, 'en', '_json', 'Share', 'Share', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(170, 1, 'en', '_json', 'Copy URL', 'Copy URL', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(171, 1, 'en', '_json', 'Copy to clipboard', 'Copy to clipboard', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(172, 1, 'en', '_json', 'Total Plays', 'Total Plays', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(173, 1, 'en', '_json', 'Followers', 'Followers', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(174, 1, 'en', '_json', 'Cover', 'Cover', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(175, 1, 'en', '_json', 'Plays', 'Plays', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(176, 1, 'en', '_json', 'Created At', 'Created At', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(177, 1, 'en', '_json', 'Likes', 'Likes', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(178, 1, 'en', '_json', 'Updated', 'Updated', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(179, 1, 'en', '_json', 'Created', 'Created', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(180, 1, 'en', '_json', 'Saved', 'Saved', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(181, 1, 'en', '_json', 'Deleted.', 'Deleted.', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(182, 1, 'en', '_json', 'Are you sure you wanna delete this', 'Are you sure you wanna delete this', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(183, 1, 'en', '_json', 'Fetching data...', 'Fetching data...', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(184, 1, 'en', '_json', 'Error', 'Error', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(185, 1, 'en', '_json', 'Success', 'Success', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(186, 1, 'en', '_json', 'Artist account', 'Artist account', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(187, 1, 'en', '_json', 'This name will be displayed on your profile.', 'This name will be displayed on your profile.', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(188, 1, 'en', '_json', 'Displayname', 'Displayname', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(189, 1, 'en', '_json', 'Lastname', 'Lastname', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(190, 1, 'en', '_json', 'This is a private information.', 'This is a private information.', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(191, 1, 'en', '_json', 'Firstname', 'Firstname', '2022-03-04 22:44:29', '2022-03-04 22:44:29'),
(192, 1, 'en', '_json', 'Firstly, fill your information', 'Firstly, fill your information', '2022-03-04 22:44:30', '2022-03-04 22:44:30'),
(193, 1, 'en', '_json', 'Welcome to your artist account', 'Welcome to your artist account', '2022-03-04 22:44:30', '2022-03-04 22:44:30'),
(194, 1, 'en', '_json', 'Rank', 'Rank', '2022-03-04 22:44:30', '2022-03-04 22:44:30'),
(195, 1, 'en', '_json', 'Empty Section', 'Empty Section', '2022-03-04 22:44:30', '2022-03-04 22:44:30'),
(196, 1, 'en', '_json', 'No Data!', 'No Data!', '2022-03-04 22:44:30', '2022-03-04 22:44:30'),
(197, 1, 'en', '_json', 'Use Default', 'Use Default', '2022-03-04 22:44:30', '2022-03-04 22:44:30'),
(198, 1, 'en', '_json', 'Deleted', 'Deleted', '2022-03-04 22:44:30', '2022-03-04 22:44:30'),
(199, 1, 'en', '_json', 'Operations', 'Operations', '2022-03-04 22:44:30', '2022-03-04 22:44:30'),
(200, 1, 'en', '_json', 'Podcasts are disabled.', 'Podcasts are disabled.', '2022-03-04 22:44:30', '2022-03-04 22:44:30'),
(201, 1, 'en', '_json', 'Edit Personal Information', 'Edit Personal Information', '2022-03-04 22:44:30', '2022-03-04 22:44:30'),
(202, 1, 'en', '_json', 'Released At', 'Released At', '2022-03-04 22:44:30', '2022-03-04 22:44:30'),
(203, 1, 'en', '_json', 'Personal Information', 'Personal Information', '2022-03-04 22:44:30', '2022-03-04 22:44:30'),
(204, 1, 'en', '_json', 'Nothing New!', 'Nothing New!', '2022-03-04 22:44:30', '2022-03-04 22:44:30'),
(205, 1, 'en', '_json', 'You do not have any new notifications.', 'You do not have any new notifications.', '2022-03-04 22:44:30', '2022-03-04 22:44:30'),
(206, 1, 'en', '_json', 'Settings reset successfully!', 'Settings reset successfully!', '2022-03-04 22:44:30', '2022-03-04 22:44:30'),
(207, 1, 'en', '_json', 'Are you sure you wanna reset to the default settings?', 'Are you sure you wanna reset to the default settings?', '2022-03-04 22:44:30', '2022-03-04 22:44:30'),
(208, 1, 'en', '_json', 'You need to enter your Google OAuth client ID.', 'You need to enter your Google OAuth client ID.', '2022-03-04 22:44:30', '2022-03-04 22:44:30'),
(209, 1, 'en', '_json', 'You need to add your Pusher credentials if you enable chatting.', 'You need to add your Pusher credentials if you enable chatting.', '2022-03-04 22:44:30', '2022-03-04 22:44:30'),
(210, 1, 'en', '_json', 'Are you sure you wanna change to the current settings?', 'Are you sure you wanna change to the current settings?', '2022-03-04 22:44:30', '2022-03-04 22:44:30'),
(211, 1, 'en', '_json', 'SEO', 'SEO', '2022-03-04 22:44:31', '2022-03-04 22:44:31'),
(212, 1, 'en', '_json', 'Auth', 'Auth', '2022-03-04 22:44:31', '2022-03-04 22:44:31'),
(213, 1, 'en', '_json', 'Storage', 'Storage', '2022-03-04 22:44:31', '2022-03-04 22:44:31'),
(214, 1, 'en', '_json', 'Billing', 'Billing', '2022-03-04 22:44:31', '2022-03-04 22:44:31'),
(215, 1, 'en', '_json', 'General', 'General', '2022-03-04 22:44:31', '2022-03-04 22:44:31'),
(216, 1, 'en', '_json', 'Preview', 'Preview', '2022-03-04 22:44:31', '2022-03-04 22:44:31'),
(217, 1, 'en', '_json', 'Positions', 'Positions', '2022-03-04 22:44:31', '2022-03-04 22:44:31'),
(218, 1, 'en', '_json', 'Outlined', 'Outlined', '2022-03-04 22:44:31', '2022-03-04 22:44:31'),
(219, 1, 'en', '_json', 'Must be a material design icon', 'Must be a material design icon', '2022-03-04 22:44:31', '2022-03-04 22:44:31'),
(220, 1, 'en', '_json', 'Subscription Button', 'Subscription Button', '2022-03-04 22:44:31', '2022-03-04 22:44:31'),
(221, 1, 'en', '_json', 'Images & Icons', 'Images & Icons', '2022-03-04 22:44:31', '2022-03-04 22:44:31'),
(222, 1, 'en', '_json', 'Dark', 'Dark', '2022-03-04 22:44:31', '2022-03-04 22:44:31'),
(223, 1, 'en', '_json', 'Light', 'Light', '2022-03-04 22:44:31', '2022-03-04 22:44:31'),
(224, 1, 'en', '_json', 'Default Theme', 'Default Theme', '2022-03-04 22:44:31', '2022-03-04 22:44:31'),
(225, 1, 'en', '_json', 'Home Page', 'Home Page', '2022-03-04 22:44:31', '2022-03-04 22:44:31'),
(226, 1, 'en', '_json', 'Themes', 'Themes', '2022-03-04 22:44:31', '2022-03-04 22:44:31'),
(227, 1, 'en', '_json', 'Navigation', 'Navigation', '2022-03-04 22:44:31', '2022-03-04 22:44:31'),
(228, 1, 'en', '_json', 'Landing', 'Landing', '2022-03-04 22:44:31', '2022-03-04 22:44:31'),
(229, 1, 'en', '_json', 'Call to action button', 'Call to action button', '2022-03-04 22:44:31', '2022-03-04 22:44:31'),
(230, 1, 'en', '_json', 'Header Title', 'Header Title', '2022-03-04 22:44:31', '2022-03-04 22:44:31'),
(231, 1, 'en', '_json', 'Header Subtitle', 'Header Subtitle', '2022-03-04 22:44:32', '2022-03-04 22:44:32'),
(232, 1, 'en', '_json', 'Background Image', 'Background Image', '2022-03-04 22:44:32', '2022-03-04 22:44:32'),
(233, 1, 'en', '_json', 'Change', 'Change', '2022-03-04 22:44:32', '2022-03-04 22:44:32'),
(234, 1, 'en', '_json', 'Image', 'Image', '2022-03-04 22:44:32', '2022-03-04 22:44:32'),
(235, 1, 'en', '_json', 'Show Contact Us form', 'Show Contact Us form', '2022-03-04 22:44:32', '2022-03-04 22:44:32'),
(236, 1, 'en', '_json', 'Description', 'Description', '2022-03-04 22:44:32', '2022-03-04 22:44:32'),
(237, 1, 'en', '_json', 'Footer Background', 'Footer Background', '2022-03-04 22:44:32', '2022-03-04 22:44:32'),
(238, 1, 'en', '_json', 'Use a custom landing header', 'Use a custom landing header', '2022-03-04 22:44:32', '2022-03-04 22:44:32'),
(239, 1, 'en', '_json', 'Use Muzzie\'s default landing header', 'Use Muzzie\'s default landing header', '2022-03-04 22:44:32', '2022-03-04 22:44:32'),
(240, 1, 'en', '_json', 'Are you sure you wanna reset to default settings?', 'Are you sure you wanna reset to default settings?', '2022-03-04 22:44:32', '2022-03-04 22:44:32'),
(241, 1, 'en', '_json', 'Sections', 'Sections', '2022-03-04 22:44:32', '2022-03-04 22:44:32'),
(242, 1, 'en', '_json', 'Header', 'Header', '2022-03-04 22:44:32', '2022-03-04 22:44:32'),
(243, 1, 'en', '_json', 'Footer', 'Footer', '2022-03-04 22:44:32', '2022-03-04 22:44:32'),
(244, 1, 'en', '_json', 'Make sure to add your SMTP credentials in the Email settings.', 'Make sure to add your SMTP credentials in the Email settings.', '2022-03-04 22:44:32', '2022-03-04 22:44:32'),
(245, 1, 'en', '_json', 'Background Layer Color', 'Background Layer Color', '2022-03-04 22:44:32', '2022-03-04 22:44:32'),
(246, 1, 'en', '_json', 'Landing Page', 'Landing Page', '2022-03-04 22:44:32', '2022-03-04 22:44:32'),
(247, 1, 'en', '_json', 'Enable Landing Page', 'Enable Landing Page', '2022-03-04 22:44:32', '2022-03-04 22:44:32'),
(248, 1, 'en', '_json', 'The welcome page. Disable if you want the visitors to access the player directly.', 'The welcome page. Disable if you want the visitors to access the player directly.', '2022-03-04 22:44:32', '2022-03-04 22:44:32'),
(249, 1, 'en', '_json', 'New Item', 'New Item', '2022-03-04 22:44:33', '2022-03-04 22:44:33'),
(250, 1, 'en', '_json', 'This is the sidebar of the player. You can customize almost everything: Icon, text, and destination.', 'This is the sidebar of the player. You can customize almost everything: Icon, text, and destination.', '2022-03-04 22:44:33', '2022-03-04 22:44:33'),
(251, 1, 'en', '_json', 'Sidebar', 'Sidebar', '2022-03-04 22:44:33', '2022-03-04 22:44:33'),
(252, 1, 'en', '_json', 'Select Page', 'Select Page', '2022-03-04 22:44:33', '2022-03-04 22:44:33'),
(253, 1, 'en', '_json', 'Navigates to', 'Navigates to', '2022-03-04 22:44:33', '2022-03-04 22:44:33'),
(254, 1, 'en', '_json', 'Text Color', 'Text Color', '2022-03-04 22:44:33', '2022-03-04 22:44:33'),
(255, 1, 'en', '_json', 'Chat, Friendlist...etc', 'Chat, Friendlist...etc', '2022-03-04 22:44:33', '2022-03-04 22:44:33'),
(256, 1, 'en', '_json', 'Panel Color', 'Panel Color', '2022-03-04 22:44:33', '2022-03-04 22:44:33'),
(257, 1, 'en', '_json', 'For gradients with Prim. Color( Ex: progress bar of the player)', 'For gradients with Prim. Color( Ex: progress bar of the player)', '2022-03-04 22:44:33', '2022-03-04 22:44:33'),
(258, 1, 'en', '_json', 'Secondary Color', 'Secondary Color', '2022-03-04 22:44:33', '2022-03-04 22:44:33'),
(259, 1, 'en', '_json', 'For buttons,icons, nav items, active items...', 'For buttons,icons, nav items, active items...', '2022-03-04 22:44:33', '2022-03-04 22:44:33'),
(260, 1, 'en', '_json', 'Primary Color', 'Primary Color', '2022-03-04 22:44:33', '2022-03-04 22:44:33'),
(261, 1, 'en', '_json', 'Colors', 'Colors', '2022-03-04 22:44:33', '2022-03-04 22:44:33'),
(262, 1, 'en', '_json', 'Gateway', 'Gateway', '2022-03-04 22:44:33', '2022-03-04 22:44:33'),
(263, 1, 'en', '_json', 'Enable Billing', 'Enable Billing', '2022-03-04 22:44:33', '2022-03-04 22:44:33'),
(264, 1, 'en', '_json', 'Authentication', 'Authentication', '2022-03-04 22:44:33', '2022-03-04 22:44:33'),
(265, 1, 'en', '_json', 'Require authentication will force visitors to authenticate.', 'Require authentication will force visitors to authenticate.', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(266, 1, 'en', '_json', 'Last Update', 'Last Update', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(267, 1, 'en', '_json', 'Plan', 'Plan', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(268, 1, 'en', '_json', 'Avatar', 'Avatar', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(269, 1, 'en', '_json', 'User Account', 'User Account', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(270, 1, 'en', '_json', 'Saved successfully.', 'Saved successfully.', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(271, 1, 'en', '_json', 'Bottom of right-sidebar', 'Bottom of right-sidebar', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(272, 1, 'en', '_json', 'Top of the right-sidebar', 'Top of the right-sidebar', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(273, 1, 'en', '_json', 'Top of content pages', 'Top of content pages', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(274, 1, 'en', '_json', 'Bottom of content pages', 'Bottom of content pages', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(275, 1, 'en', '_json', 'Generated', 'Generated', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(276, 1, 'en', '_json', 'Generate', 'Generate', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(277, 1, 'en', '_json', 'Page', 'Page', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(278, 1, 'en', '_json', 'Site Description', 'Site Description', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(279, 1, 'en', '_json', 'Site Title', 'Site Title', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(280, 1, 'en', '_json', 'will be replaced with', 'will be replaced with', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(281, 1, 'en', '_json', 'Quick Guide', 'Quick Guide', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(282, 1, 'en', '_json', 'reset successfully.', 'reset successfully.', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(283, 1, 'en', '_json', 'Please add a valid Google OAuth Client ID.', 'Please add a valid Google OAuth Client ID.', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(284, 1, 'en', '_json', 'Please add your billing credentials.', 'Please add your billing credentials.', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(285, 1, 'en', '_json', 'You need to add your SMTP information.', 'You need to add your SMTP information.', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(286, 1, 'en', '_json', 'Mail From Name', 'Mail From Name', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(287, 1, 'en', '_json', 'Mail From Address', 'Mail From Address', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(288, 1, 'en', '_json', 'Contact Email Address', 'Contact Email Address', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(289, 1, 'en', '_json', 'Enable Emails', 'Enable Emails', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(290, 1, 'en', '_json', 'Max file size allowed', 'Max file size allowed', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(291, 1, 'en', '_json', 'Max image size allowed', 'Max image size allowed', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(292, 1, 'en', '_json', 'Available disk space for users', 'Available disk space for users', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(293, 1, 'en', '_json', 'Available disk space for artists', 'Available disk space for artists', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(294, 1, 'en', '_json', 'Local Storage', 'Local Storage', '2022-03-04 22:44:34', '2022-03-04 22:44:34'),
(295, 1, 'en', '_json', 'Default Artist Disk Space', 'Default Artist Disk Space', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(296, 1, 'en', '_json', 'Max Image Size', 'Max Image Size', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(297, 1, 'en', '_json', 'Default User Disk Space', 'Default User Disk Space', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(298, 1, 'en', '_json', 'Credentials', 'Credentials', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(299, 1, 'en', '_json', 'Storage Disk', 'Storage Disk', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(300, 1, 'en', '_json', 'Key', 'Key', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(301, 1, 'en', '_json', 'Translation', 'Translation', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(302, 1, 'en', '_json', 'Select a similar language to fill the translations. You can leave it empty.', 'Select a similar language to fill the translations. You can leave it empty.', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(303, 1, 'en', '_json', 'Select Similar Language', 'Select Similar Language', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(304, 1, 'en', '_json', 'Add New Language', 'Add New Language', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(305, 1, 'en', '_json', 'Edit Language', 'Edit Language', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(306, 1, 'en', '_json', 'Update', 'Update', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(307, 1, 'en', '_json', 'Deactivated', 'Deactivated', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(308, 1, 'en', '_json', 'Activated', 'Activated', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(309, 1, 'en', '_json', 'Default', 'Default', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(310, 1, 'en', '_json', 'New Language', 'New Language', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(311, 1, 'en', '_json', 'Subscription cancelled successfully.', 'Subscription cancelled successfully.', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(312, 1, 'en', '_json', 'Cancelled', 'Cancelled', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(313, 1, 'en', '_json', 'Subscription', 'Subscription', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(314, 1, 'en', '_json', 'Owner', 'Owner', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(315, 1, 'en', '_json', 'Status', 'Status', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(316, 1, 'en', '_json', 'Renews At', 'Renews At', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(317, 1, 'en', '_json', 'Downloads', 'Downloads', '2022-03-04 22:44:35', '2022-03-04 22:44:35'),
(318, 1, 'en', '_json', 'Are you sure you wanna save the current permissions?', 'Are you sure you wanna save the current permissions?', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(319, 1, 'en', '_json', 'Edit', 'Edit', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(320, 1, 'en', '_json', 'Permission', 'Permission', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(321, 1, 'en', '_json', 'Permissions', 'Permissions', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(322, 1, 'en', '_json', 'Roles reset successfully.', 'Roles reset successfully.', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(323, 1, 'en', '_json', 'Podcast', 'Podcast', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(324, 1, 'en', '_json', 'Playlist', 'Playlist', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(325, 1, 'en', '_json', 'Chats', 'Chats', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(326, 1, 'en', '_json', 'Opening chat...Please wait!', 'Opening chat...Please wait!', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(327, 1, 'en', '_json', 'No chats to show!', 'No chats to show!', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(328, 1, 'en', '_json', 'Add some friends and start chatting!', 'Add some friends and start chatting!', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(329, 1, 'en', '_json', 'Discard', 'Discard', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(330, 1, 'en', '_json', 'Are you sure you wanna quit without saving the changes?', 'Are you sure you wanna quit without saving the changes?', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(331, 1, 'en', '_json', 'used already.', 'used already.', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(332, 1, 'en', '_json', 'Amount', 'Amount', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(333, 1, 'en', '_json', 'Storage Space', 'Storage Space', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(334, 1, 'en', '_json', 'Background Color', 'Background Color', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(335, 1, 'en', '_json', 'You do not have any new requests.', 'You do not have any new requests.', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(336, 1, 'en', '_json', 'Are you sure you wanna unfriend', 'Are you sure you wanna unfriend', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(337, 1, 'en', '_json', 'Are you sure you wanna make this playlist private? This means that it\'s gonna be visible only for you.', 'Are you sure you wanna make this playlist private? This means that it\'s gonna be visible only for you.', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(338, 1, 'en', '_json', 'Are you sure you wanna make this playlist public? This means that it\'s gonna be visible on your profile.', 'Are you sure you wanna make this playlist public? This means that it\'s gonna be visible on your profile.', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(339, 1, 'en', '_json', 'Are you sure you wanna delete this playlist?', 'Are you sure you wanna delete this playlist?', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(340, 1, 'en', '_json', 'My followed Playlists', 'My followed Playlists', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(341, 1, 'en', '_json', 'My Playlists', 'My Playlists', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(342, 1, 'en', '_json', 'No Playlists!', 'No Playlists!', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(343, 1, 'en', '_json', 'This page is empty.', 'This page is empty.', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(344, 1, 'en', '_json', 'My Likes', 'My Likes', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(345, 1, 'en', '_json', 'You did not follow any artist yet!', 'You did not follow any artist yet!', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(346, 1, 'en', '_json', 'No artists!', 'No artists!', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(347, 1, 'en', '_json', 'Followed Artists', 'Followed Artists', '2022-03-04 22:44:36', '2022-03-04 22:44:36'),
(348, 1, 'en', '_json', 'No likes yet!', 'No likes yet!', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(349, 1, 'en', '_json', 'Liked Albums', 'Liked Albums', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(350, 1, 'en', '_json', 'Explore and listen to various genres & moods.', 'Explore and listen to various genres & moods.', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(351, 1, 'en', '_json', 'Browse', 'Browse', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(352, 1, 'en', '_json', 'Looks like there is no content yet for this genre.', 'Looks like there is no content yet for this genre.', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(353, 1, 'en', '_json', 'Some server error has occurred. Try again later.', 'Some server error has occurred. Try again later.', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(354, 1, 'en', '_json', 'Something wrong happened!', 'Something wrong happened!', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(355, 1, 'en', '_json', 'Go Back', 'Go Back', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(356, 1, 'en', '_json', 'Genre does not exist!', 'Genre does not exist!', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(357, 1, 'en', '_json', 'Not available!', 'Not available!', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(358, 1, 'en', '_json', 'Here you can explore all', 'Here you can explore all', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(359, 1, 'en', '_json', 'Music', 'Music', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(360, 1, 'en', '_json', 'There is content yet!', 'There is content yet!', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(361, 1, 'en', '_json', 'No Content!', 'No Content!', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(362, 1, 'en', '_json', 'Manage your music', 'Manage your music', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(363, 1, 'en', '_json', 'My Songs', 'My Songs', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(364, 1, 'en', '_json', 'of space used', 'of space used', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(365, 1, 'en', '_json', 'Upload', 'Upload', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(366, 1, 'en', '_json', 'No songs yet!', 'No songs yet!', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(367, 1, 'en', '_json', 'Your history is empty.', 'Your history is empty.', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(368, 1, 'en', '_json', 'Recently Played', 'Recently Played', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(369, 1, 'en', '_json', 'You did not follow any podcasts yet!', 'You did not follow any podcasts yet!', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(370, 1, 'en', '_json', 'No Podcasts!', 'No Podcasts!', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(371, 1, 'en', '_json', 'Followed Podcasts', 'Followed Podcasts', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(372, 1, 'en', '_json', 'updated successfully.', 'updated successfully.', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(373, 1, 'en', '_json', 'Request submitted to admins successfully.', 'Request submitted to admins successfully.', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(374, 1, 'en', '_json', 'Submitting...', 'Submitting...', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(375, 1, 'en', '_json', 'Confirm password does not match.', 'Confirm password does not match.', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(376, 1, 'en', '_json', 'Are you sure you wanna cancel your subscription?', 'Are you sure you wanna cancel your subscription?', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(377, 1, 'en', '_json', 'Submit', 'Submit', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(378, 1, 'en', '_json', 'Requested', 'Requested', '2022-03-04 22:44:37', '2022-03-04 22:44:37'),
(379, 1, 'en', '_json', 'This request can only be submitted ones.', 'This request can only be submitted ones.', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(380, 1, 'en', '_json', 'Fill your information', 'Fill your information', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(381, 1, 'en', '_json', 'Features', 'Features', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(382, 1, 'en', '_json', 'Subscribed to', 'Subscribed to', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(383, 1, 'en', '_json', 'Request Artist Account', 'Request Artist Account', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(384, 1, 'en', '_json', 'Artist Account Request sent', 'Artist Account Request sent', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(385, 1, 'en', '_json', 'Do not show what I am currently playing to friends.', 'Do not show what I am currently playing to friends.', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(386, 1, 'en', '_json', 'Privacy', 'Privacy', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(387, 1, 'en', '_json', 'New Password', 'New Password', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(388, 1, 'en', '_json', 'Update Password', 'Update Password', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(389, 1, 'en', '_json', 'Current password', 'Current password', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(390, 1, 'en', '_json', 'Language', 'Language', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(391, 1, 'en', '_json', 'Account Settings', 'Account Settings', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(392, 1, 'en', '_json', 'Start typing to search for a genre.', 'Start typing to search for a genre.', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(393, 1, 'en', '_json', 'No results found for', 'No results found for', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(394, 1, 'en', '_json', 'Link To Artist', 'Link To Artist', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(395, 1, 'en', '_json', 'Attach this song to an existing artist', 'Attach this song to an existing artist', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(396, 1, 'en', '_json', 'Insert the name of the artist and press the Enter key.', 'Insert the name of the artist and press the Enter key.', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(397, 1, 'en', '_json', 'Hide', 'Hide', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(398, 1, 'en', '_json', 'Please add a valid source file.', 'Please add a valid source file.', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(399, 1, 'en', '_json', 'Please add a valid YouTube video ID or URL.', 'Please add a valid YouTube video ID or URL.', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(400, 1, 'en', '_json', 'Attach', 'Attach', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(401, 1, 'en', '_json', 'Friend Request sent successfully.', 'Friend Request sent successfully.', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(402, 1, 'en', '_json', 'Friend removed successfully.', 'Friend removed successfully.', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(403, 1, 'en', '_json', 'User does not exist.', 'User does not exist.', '2022-03-04 22:44:38', '2022-03-04 22:44:38'),
(404, 1, 'en', '_json', 'Not Available!', 'Not Available!', '2022-03-04 22:44:39', '2022-03-04 22:44:39'),
(405, 1, 'en', '_json', 'Looks like this account is still new!', 'Looks like this account is still new!', '2022-03-04 22:44:39', '2022-03-04 22:44:39'),
(406, 1, 'en', '_json', 'This album is empty.', 'This album is empty.', '2022-03-04 22:44:39', '2022-03-04 22:44:39'),
(407, 1, 'en', '_json', 'Reject', 'Reject', '2022-03-04 22:44:39', '2022-03-04 22:44:39'),
(408, 1, 'en', '_json', 'artist account request has been rejected.', 'artist account request has been rejected.', '2022-03-04 22:44:39', '2022-03-04 22:44:39'),
(409, 1, 'en', '_json', 'has an artist account now.', 'has an artist account now.', '2022-03-04 22:44:39', '2022-03-04 22:44:39'),
(410, 1, 'en', '_json', 'Approve', 'Approve', '2022-03-04 22:44:39', '2022-03-04 22:44:39'),
(411, 1, 'en', '_json', 'Friend request by', 'Friend request by', '2022-03-04 22:44:39', '2022-03-04 22:44:39'),
(412, 1, 'en', '_json', 'was rejected.', 'was rejected.', '2022-03-04 22:44:39', '2022-03-04 22:44:39'),
(413, 1, 'en', '_json', 'Request Rejected', 'Request Rejected', '2022-03-04 22:44:39', '2022-03-04 22:44:39'),
(414, 1, 'en', '_json', 'Request Accepted', 'Request Accepted', '2022-03-04 22:44:39', '2022-03-04 22:44:39'),
(415, 1, 'en', '_json', 'has been added to your friend list', 'has been added to your friend list', '2022-03-04 22:44:39', '2022-03-04 22:44:39'),
(416, 1, 'en', '_json', 'Artist Request', 'Artist Request', '2022-03-04 22:44:39', '2022-03-04 22:44:39'),
(417, 1, 'en', '_json', 'Click to see details', 'Click to see details', '2022-03-04 22:44:39', '2022-03-04 22:44:39'),
(418, 1, 'en', '_json', 'Subject is required', 'Subject is required', '2022-03-04 22:44:39', '2022-03-04 22:44:39'),
(419, 1, 'en', '_json', 'Subject must contain be at least 4 characters', 'Subject must contain be at least 4 characters', '2022-03-04 22:44:39', '2022-03-04 22:44:39'),
(420, 1, 'en', '_json', 'E-mail must be valid', 'E-mail must be valid', '2022-03-04 22:44:39', '2022-03-04 22:44:39'),
(421, 1, 'en', '_json', 'E-mail is required', 'E-mail is required', '2022-03-04 22:44:39', '2022-03-04 22:44:39'),
(422, 1, 'en', '_json', 'anytime', 'anytime', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(423, 1, 'en', '_json', 'anywhere', 'anywhere', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(424, 1, 'en', '_json', 'Email sent successfully.', 'Email sent successfully.', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(425, 1, 'en', '_json', 'Send', 'Send', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(426, 1, 'en', '_json', 'Choose', 'Choose', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(427, 1, 'en', '_json', 'Free', 'Free', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(428, 1, 'en', '_json', 'Recommended', 'Recommended', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(429, 1, 'en', '_json', 'Payment', 'Payment', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(430, 1, 'en', '_json', 'Complete', 'Complete', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(431, 1, 'en', '_json', 'Choose your plan', 'Choose your plan', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(432, 1, 'en', '_json', 'Oops! Some error occurred. Try again later.', 'Oops! Some error occurred. Try again later.', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(433, 1, 'en', '_json', 'Subscribe', 'Subscribe', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(434, 1, 'en', '_json', 'Accepted Payment Methods', 'Accepted Payment Methods', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(435, 1, 'en', '_json', 'Reloading', 'Reloading', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(436, 1, 'en', '_json', 'Congratulation! Subscription was successful.', 'Congratulation! Subscription was successful.', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(437, 1, 'en', '_json', 'Credit Card', 'Credit Card', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(438, 1, 'en', '_json', 'Year', 'Year', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(439, 1, 'en', '_json', 'Month', 'Month', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(440, 1, 'en', '_json', 'Week', 'Week', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(441, 1, 'en', '_json', 'Day', 'Day', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(442, 1, 'en', '_json', 'You already have a subscription. Do you want to cancel the current one and switch to a new subscription?', 'You already have a subscription. Do you want to cancel the current one and switch to a new subscription?', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(443, 1, 'en', '_json', 'Your Library', 'Your Library', '2022-03-04 22:44:40', '2022-03-04 22:44:40');
INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(444, 1, 'en', '_json', 'Podcast genre does not exist.', 'Podcast genre does not exist.', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(445, 1, 'en', '_json', 'This genre has no podcasts yet.', 'This genre has no podcasts yet.', '2022-03-04 22:44:40', '2022-03-04 22:44:40'),
(446, 1, 'en', '_json', 'Tracks', 'Tracks', '2022-03-04 22:44:41', '2022-03-04 22:44:41'),
(447, 1, 'en', '_json', 'This artist profile is empty.', 'This artist profile is empty.', '2022-03-04 22:44:41', '2022-03-04 22:44:41'),
(448, 1, 'en', '_json', 'Following', 'Following', '2022-03-04 22:44:41', '2022-03-04 22:44:41'),
(449, 1, 'en', '_json', 'Page Not Found', 'Page Not Found', '2022-03-04 22:44:41', '2022-03-04 22:44:41'),
(450, 1, 'en', '_json', 'There is no content to be displayed.', 'There is no content to be displayed.', '2022-03-04 22:44:41', '2022-03-04 22:44:41'),
(451, 1, 'en', '_json', 'has been deleted successfully.', 'has been deleted successfully.', '2022-03-04 22:44:41', '2022-03-04 22:44:41'),
(452, 1, 'en', '_json', 'deleted successfully.', 'deleted successfully.', '2022-03-04 22:44:41', '2022-03-04 22:44:41'),
(453, 1, 'en', '_json', 'Something went wrong. Please try again.', 'Something went wrong. Please try again.', '2022-03-04 22:44:41', '2022-03-04 22:44:41'),
(454, 1, 'en', '_json', 'Playlist does not exist or maybe it is not available for public access. who knows!', 'Playlist does not exist or maybe it is not available for public access. who knows!', '2022-03-04 22:44:41', '2022-03-04 22:44:41'),
(455, 1, 'en', '_json', 'This playlist is empty.', 'This playlist is empty.', '2022-03-04 22:44:41', '2022-03-04 22:44:41'),
(456, 1, 'en', '_json', 'No Songs!', 'No Songs!', '2022-03-04 22:44:41', '2022-03-04 22:44:41'),
(457, 1, 'en', '_json', 'Private playlist', 'Private playlist', '2022-03-04 22:44:41', '2022-03-04 22:44:41'),
(458, 1, 'en', '_json', 'does no exist.', 'does no exist.', '2022-03-04 22:44:41', '2022-03-04 22:44:41'),
(459, 1, 'en', '_json', 'No Episodes!', 'No Episodes!', '2022-03-04 22:44:41', '2022-03-04 22:44:41'),
(460, 1, 'en', '_json', 'Looks like this podcast has no episodes yet.', 'Looks like this podcast has no episodes yet.', '2022-03-04 22:44:42', '2022-03-04 22:44:42'),
(461, 1, 'en', '_json', 'From', 'From', '2022-03-04 22:44:42', '2022-03-04 22:44:42'),
(462, 1, 'en', '_json', 'Ft.', 'Ft.', '2022-03-04 22:44:42', '2022-03-04 22:44:42'),
(463, 1, 'en', '_json', 'More from', 'More from', '2022-03-04 22:44:42', '2022-03-04 22:44:42'),
(464, 1, 'en', '_json', 'Song does not exist or maybe it is not available for public access. Who knows!', 'Song does not exist or maybe it is not available for public access. Who knows!', '2022-03-04 22:44:42', '2022-03-04 22:44:42'),
(465, 1, 'en', '_json', 'has been removed from playlist successfully.', 'has been removed from playlist successfully.', '2022-03-04 22:44:42', '2022-03-04 22:44:42'),
(466, 1, 'en', '_json', 'Song Removed', 'Song Removed', '2022-03-04 22:44:42', '2022-03-04 22:44:42'),
(467, 1, 'en', '_json', 'There is content yet.', 'There is content yet.', '2022-03-04 22:44:42', '2022-03-04 22:44:42'),
(468, 1, 'en', '_json', 'Small Window', 'Small Window', '2022-03-04 22:44:42', '2022-03-04 22:44:42'),
(469, 1, 'en', '_json', 'Radio Station', 'Radio Station', '2022-03-04 22:44:42', '2022-03-04 22:44:42'),
(470, 1, 'en', '_json', 'Copied', 'Copied', '2022-03-04 22:44:42', '2022-03-04 22:44:42'),
(471, 1, 'en', '_json', 'Song has been deleted successfully.', 'Song has been deleted successfully.', '2022-03-04 22:44:42', '2022-03-04 22:44:42'),
(472, 1, 'en', '_json', 'No Results!', 'No Results!', '2022-03-04 22:44:42', '2022-03-04 22:44:42'),
(473, 1, 'en', '_json', 'used', 'used', '2022-03-04 22:44:42', '2022-03-04 22:44:42'),
(474, 1, 'en', '_json', 'Space Used', 'Space Used', '2022-03-04 22:44:42', '2022-03-04 22:44:42'),
(475, 1, 'en', '_json', 'Song added to playlist successfully.', 'Song added to playlist successfully.', '2022-03-04 22:44:42', '2022-03-04 22:44:42'),
(476, 1, 'en', '_json', 'Added', 'Added', '2022-03-04 22:44:42', '2022-03-04 22:44:42'),
(477, 1, 'en', '_json', 'Looks like you do not have any playlists yet.', 'Looks like you do not have any playlists yet.', '2022-03-04 22:44:42', '2022-03-04 22:44:42'),
(478, 1, 'en', '_json', 'validation.distinct', 'The :attribute field has a duplicate value.', '2022-03-04 22:44:43', '2022-03-04 22:44:43'),
(479, 1, 'en', '_json', 'validation.email', 'The :attribute must be a valid email address.', '2022-03-04 22:44:43', '2022-03-04 22:44:43'),
(480, 1, 'en', '_json', 'validation.ends_with', 'The :attribute must end with one of the following: :values.', '2022-03-04 22:44:43', '2022-03-04 22:44:43'),
(481, 1, 'en', '_json', 'validation.exists', 'The selected :attribute is invalid.', '2022-03-04 22:44:43', '2022-03-04 22:44:43'),
(482, 1, 'en', '_json', 'validation.file', 'The :attribute must be a file.', '2022-03-04 22:44:43', '2022-03-04 22:44:43'),
(483, 1, 'en', '_json', 'validation.filled', 'The :attribute field must have a value.', '2022-03-04 22:44:43', '2022-03-04 22:44:43'),
(484, 1, 'en', '_json', 'validation.gt.numeric', 'The :attribute must be greater than :value.', '2022-03-04 22:44:43', '2022-03-04 22:44:43'),
(485, 1, 'en', '_json', 'validation.accepted', 'The :attribute must be accepted.', '2022-03-04 22:44:43', '2022-03-04 22:44:43'),
(486, 1, 'en', '_json', 'validation.date', 'The :attribute is not a valid date.', '2022-03-04 22:44:43', '2022-03-04 22:44:43'),
(487, 1, 'en', '_json', 'validation.date_equals', 'The :attribute must be a date equal to :date.', '2022-03-04 22:44:43', '2022-03-04 22:44:43'),
(488, 1, 'en', '_json', 'validation.date_format', 'The :attribute does not match the format :format.', '2022-03-04 22:44:43', '2022-03-04 22:44:43'),
(489, 1, 'en', '_json', 'validation.different', 'The :attribute and :other must be different.', '2022-03-04 22:44:43', '2022-03-04 22:44:43'),
(490, 1, 'en', '_json', 'validation.digits', 'The :attribute must be :digits digits.', '2022-03-04 22:44:43', '2022-03-04 22:44:43'),
(491, 1, 'en', '_json', 'validation.size.array', 'The :attribute must contain :size items.', '2022-03-04 22:44:43', '2022-03-04 22:44:43'),
(492, 1, 'en', '_json', 'validation.starts_with', 'The :attribute must start with one of the following: :values.', '2022-03-04 22:44:43', '2022-03-04 22:44:43'),
(493, 1, 'en', '_json', 'validation.string', 'The :attribute must be a string.', '2022-03-04 22:44:43', '2022-03-04 22:44:43'),
(494, 1, 'en', '_json', 'validation.timezone', 'The :attribute must be a valid zone.', '2022-03-04 22:44:43', '2022-03-04 22:44:43'),
(495, 1, 'en', '_json', 'validation.unique', 'The :attribute has already been taken.', '2022-03-04 22:44:43', '2022-03-04 22:44:43'),
(496, 1, 'en', '_json', 'validation.uploaded', 'The :attribute failed to upload.', '2022-03-04 22:44:43', '2022-03-04 22:44:43'),
(497, 1, 'en', '_json', 'validation.url', 'The :attribute format is invalid.', '2022-03-04 22:44:43', '2022-03-04 22:44:43'),
(498, 1, 'en', '_json', 'validation.uuid', 'The :attribute must be a valid UUID.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(499, 1, 'en', '_json', 'validation.custom.attribute-name.rule-name', 'custom-message', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(500, 1, 'en', '_json', 'validation.max.file', 'The :attribute may not be greater than :max kilobytes.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(501, 1, 'en', '_json', 'validation.max.string', 'The :attribute may not be greater than :max characters.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(502, 1, 'en', '_json', 'validation.max.array', 'The :attribute may not have more than :max items.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(503, 1, 'en', '_json', 'validation.mimes', 'The :attribute must be a file of type: :values.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(504, 1, 'en', '_json', 'validation.mimetypes', 'The :attribute must be a file of type: :values.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(505, 1, 'en', '_json', 'validation.min.numeric', 'The :attribute must be at least :min.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(506, 1, 'en', '_json', 'validation.min.file', 'The :attribute must be at least :min kilobytes.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(507, 1, 'en', '_json', 'validation.min.string', 'The :attribute must be at least :min characters.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(508, 1, 'en', '_json', 'validation.min.array', 'The :attribute must have at least :min items.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(509, 1, 'en', '_json', 'validation.not_in', 'The selected :attribute is invalid.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(510, 1, 'en', '_json', 'validation.not_regex', 'The :attribute format is invalid.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(511, 1, 'en', '_json', 'validation.numeric', 'The :attribute must be a number.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(512, 1, 'en', '_json', 'validation.password', 'The password is incorrect.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(513, 1, 'en', '_json', 'validation.present', 'The :attribute field must be present.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(514, 1, 'en', '_json', 'validation.regex', 'The :attribute format is invalid.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(515, 1, 'en', '_json', 'validation.required', 'The :attribute field is required.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(516, 1, 'en', '_json', 'validation.required_if', 'The :attribute field is required when :other is :value.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(517, 1, 'en', '_json', 'validation.required_unless', 'The :attribute field is required unless :other is in :values.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(518, 1, 'en', '_json', 'validation.required_with', 'The :attribute field is required when :values is present.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(519, 1, 'en', '_json', 'validation.required_with_all', 'The :attribute field is required when :values are present.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(520, 1, 'en', '_json', 'validation.required_without', 'The :attribute field is required when :values is not present.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(521, 1, 'en', '_json', 'validation.required_without_all', 'The :attribute field is required when none of :values are present.', '2022-03-04 22:44:44', '2022-03-04 22:44:44'),
(522, 1, 'en', '_json', 'validation.same', 'The :attribute and :other must match.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(523, 1, 'en', '_json', 'validation.size.numeric', 'The :attribute must be :size.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(524, 1, 'en', '_json', 'validation.size.file', 'The :attribute must be :size kilobytes.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(525, 1, 'en', '_json', 'validation.size.string', 'The :attribute must be :size characters.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(526, 1, 'en', '_json', 'validation.gte.numeric', 'The :attribute must be greater than or equal :value.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(527, 1, 'en', '_json', 'validation.gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(528, 1, 'en', '_json', 'validation.gte.string', 'The :attribute must be greater than or equal :value characters.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(529, 1, 'en', '_json', 'validation.gte.array', 'The :attribute must have :value items or more.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(530, 1, 'en', '_json', 'validation.image', 'The :attribute must be an image.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(531, 1, 'en', '_json', 'validation.in', 'The selected :attribute is invalid.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(532, 1, 'en', '_json', 'validation.active_url', 'The :attribute is not a valid URL.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(533, 1, 'en', '_json', 'validation.after', 'The :attribute must be a date after :date.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(534, 1, 'en', '_json', 'validation.after_or_equal', 'The :attribute must be a date after or equal to :date.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(535, 1, 'en', '_json', 'validation.boolean', 'The :attribute field must be true or false.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(536, 1, 'en', '_json', 'validation.confirmed', 'The :attribute confirmation does not match.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(537, 1, 'en', '_json', 'validation.in_array', 'The :attribute field does not exist in :other.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(538, 1, 'en', '_json', 'validation.integer', 'The :attribute must be an integer.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(539, 1, 'en', '_json', 'validation.ip', 'The :attribute must be a valid IP address.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(540, 1, 'en', '_json', 'validation.ipv4', 'The :attribute must be a valid IPv4 address.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(541, 1, 'en', '_json', 'validation.ipv6', 'The :attribute must be a valid IPv6 address.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(542, 1, 'en', '_json', 'validation.json', 'The :attribute must be a valid JSON string.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(543, 1, 'en', '_json', 'validation.lt.numeric', 'The :attribute must be less than :value.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(544, 1, 'en', '_json', 'validation.lt.file', 'The :attribute must be less than :value kilobytes.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(545, 1, 'en', '_json', 'validation.lt.string', 'The :attribute must be less than :value characters.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(546, 1, 'en', '_json', 'validation.lt.array', 'The :attribute must have less than :value items.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(547, 1, 'en', '_json', 'validation.lte.numeric', 'The :attribute must be less than or equal :value.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(548, 1, 'en', '_json', 'validation.lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(549, 1, 'en', '_json', 'validation.lte.string', 'The :attribute must be less than or equal :value characters.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(550, 1, 'en', '_json', 'validation.lte.array', 'The :attribute must not have more than :value items.', '2022-03-04 22:44:45', '2022-03-04 22:44:45'),
(551, 1, 'en', '_json', 'validation.max.numeric', 'The :attribute may not be greater than :max.', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(552, 1, 'en', '_json', 'validation.digits_between', 'The :attribute must be between :min and :max digits.', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(553, 1, 'en', '_json', 'validation.dimensions', 'The :attribute has invalid image dimensions.', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(554, 1, 'en', '_json', 'validation.alpha', 'The :attribute may only contain letters.', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(555, 1, 'en', '_json', 'validation.alpha_dash', 'The :attribute may only contain letters, numbers, dashes and underscores.', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(556, 1, 'en', '_json', 'validation.alpha_num', 'The :attribute may only contain letters and numbers.', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(557, 1, 'en', '_json', 'validation.array', 'The :attribute must be an array.', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(558, 1, 'en', '_json', 'validation.before', 'The :attribute must be a date before :date.', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(559, 1, 'en', '_json', 'validation.before_or_equal', 'The :attribute must be a date before or equal to :date.', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(560, 1, 'en', '_json', 'validation.between.numeric', 'The :attribute must be between :min and :max.', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(561, 1, 'en', '_json', 'validation.between.file', 'The :attribute must be between :min and :max kilobytes.', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(562, 1, 'en', '_json', 'validation.between.string', 'The :attribute must be between :min and :max characters.', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(563, 1, 'en', '_json', 'validation.between.array', 'The :attribute must have between :min and :max items.', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(564, 1, 'en', '_json', 'validation.gt.file', 'The :attribute must be greater than :value kilobytes.', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(565, 1, 'en', '_json', 'validation.gt.string', 'The :attribute must be greater than :value characters.', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(566, 1, 'en', '_json', 'validation.gt.array', 'The :attribute must have more than :value items.', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(567, 1, 'en', '_json', 'Save', 'Save', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(568, 1, 'en', '_json', 'Register', 'Register', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(569, 1, 'en', '_json', 'Upgrade Account', 'Upgrade Account', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(570, 1, 'en', '_json', 'File corrupted!', 'File corrupted!', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(571, 1, 'en', '_json', 'The source file you are trying to upload is corrupted.', 'The source file you are trying to upload is corrupted.', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(572, 1, 'en', '_json', 'Max file size is', 'Max file size is', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(573, 1, 'en', '_json', 'TB', 'TB', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(574, 1, 'en', '_json', 'GB', 'GB', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(575, 1, 'en', '_json', 'MB', 'MB', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(576, 1, 'en', '_json', 'Radio Stations', 'Radio Stations', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(577, 1, 'en', '_json', 'YouTube Video', 'YouTube Video', '2022-03-04 22:44:46', '2022-03-04 22:44:46'),
(578, 1, 'en', '_json', 'Audio File', 'Audio File', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(579, 1, 'en', '_json', 'Auto Duration', 'Auto Duration', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(580, 1, 'en', '_json', 'Duration in seconds', 'Duration in seconds', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(581, 1, 'en', '_json', 'Duration', 'Duration', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(582, 1, 'en', '_json', 'You can add the video ID, but It must be valid.', 'You can add the video ID, but It must be valid.', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(583, 1, 'en', '_json', 'Attach Audio File', 'Attach Audio File', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(584, 1, 'en', '_json', 'Artist Area', 'Artist Area', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(585, 1, 'en', '_json', 'Admin Area', 'Admin Area', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(586, 1, 'en', '_json', 'Song', 'Song', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(587, 1, 'en', '_json', 'Genres', 'Genres', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(588, 1, 'en', '_json', 'Player', 'Player', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(589, 1, 'en', '_json', 'Library', 'Library', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(590, 1, 'en', '_json', 'Plays Chart', 'Plays Chart', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(591, 1, 'en', '_json', 'Delete Song', 'Delete Song', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(592, 1, 'en', '_json', 'Detach song from this album', 'Detach song from this album', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(593, 1, 'en', '_json', 'Song attached to album.', 'Song attached to album.', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(594, 1, 'en', '_json', 'Release Date', 'Release Date', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(595, 1, 'en', '_json', 'Start typing to search to an artist.', 'Start typing to search to an artist.', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(596, 1, 'en', '_json', 'saved successfully', 'saved successfully', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(597, 1, 'en', '_json', 'Badge', 'Badge', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(598, 1, 'en', '_json', 'Show the upgrade button after subscription. Switch on if there is a better plan than this.', 'Show the upgrade button after subscription. Switch on if there is a better plan than this.', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(599, 1, 'en', '_json', 'Interface', 'Interface', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(600, 1, 'en', '_json', 'Add displayed feature', 'Add displayed feature', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(601, 1, 'en', '_json', 'This does not affect the script', 'This does not affect the script', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(602, 1, 'en', '_json', 'Features that will display on the plan card', 'Features that will display on the plan card', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(603, 1, 'en', '_json', 'Card Features', 'Card Features', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(604, 1, 'en', '_json', 'Artist Permissions', 'Artist Permissions', '2022-03-04 22:44:47', '2022-03-04 22:44:47'),
(605, 1, 'en', '_json', 'Permissions to grant for subscribed users', 'Permissions to grant for subscribed users', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(606, 1, 'en', '_json', 'Display order of the plans(lower first)', 'Display order of the plans(lower first)', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(607, 1, 'en', '_json', 'Position', 'Position', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(608, 1, 'en', '_json', 'The frequency of the subscription billing', 'The frequency of the subscription billing', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(609, 1, 'en', '_json', 'Amount in cents (can not be changed later)', 'Amount in cents (can not be changed later)', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(610, 1, 'en', '_json', 'Currency', 'Currency', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(611, 1, 'en', '_json', 'Enable billing to create non-free plans', 'Enable billing to create non-free plans', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(612, 1, 'en', '_json', 'Some values can not be updated after the plan creation', 'Some values can not be updated after the plan creation', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(613, 1, 'en', '_json', 'Search Translation', 'Search Translation', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(614, 1, 'en', '_json', 'Price', 'Price', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(615, 1, 'en', '_json', 'Inactive', 'Inactive', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(616, 1, 'en', '_json', 'Active', 'Active', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(617, 1, 'en', '_json', 'Upgradable', 'Upgradable', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(618, 1, 'en', '_json', 'week', 'week', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(619, 1, 'en', '_json', 'day', 'day', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(620, 1, 'en', '_json', 'month', 'month', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(621, 1, 'en', '_json', 'year', 'year', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(622, 1, 'en', '_json', 'Password reset successfully.', 'Password reset successfully.', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(623, 1, 'en', '_json', 'Email verification link sent on your Email.', 'Email verification link sent on your Email.', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(624, 1, 'en', '_json', 'Invalid/Expired url provided.', 'Invalid/Expired url provided.', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(625, 1, 'en', '_json', 'Current password does not match', 'Current password does not match', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(626, 1, 'en', '_json', 'Failed to delete subscription from PayPal.', 'Failed to delete subscription from PayPal.', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(627, 1, 'en', '_json', 'Failed to delete subscription from Stripe.', 'Failed to delete subscription from Stripe.', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(628, 1, 'en', '_json', 'Failed, Invalid Token', 'Failed, Invalid Token', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(629, 1, 'en', '_json', 'Email could not be sent to this email address', 'Email could not be sent to this email address', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(630, 1, 'en', '_json', 'You have exceeded your space limit', 'You have exceeded your space limit', '2022-03-04 22:44:48', '2022-03-04 22:44:48'),
(631, 1, 'en', '_json', 'No ads', 'No ads', '2022-03-04 22:44:49', '2022-03-04 22:44:49'),
(632, 1, 'en', '_json', 'Publish playlists', 'Publish playlists', '2022-03-04 22:44:49', '2022-03-04 22:44:49'),
(633, 1, 'en', '_json', 'Publish songs', 'Publish songs', '2022-03-04 22:44:49', '2022-03-04 22:44:49'),
(634, 1, 'en', '_json', 'Listen with friends', 'Listen with friends', '2022-03-04 22:44:49', '2022-03-04 22:44:49'),
(635, 1, 'en', '_json', 'Chat with friends', 'Chat with friends', '2022-03-04 22:44:49', '2022-03-04 22:44:49'),
(636, 1, 'en', '_json', 'Download songs', 'Download songs', '2022-03-04 22:44:49', '2022-03-04 22:44:49'),
(637, 1, 'en', '_json', 'Upload songs', 'Upload songs', '2022-03-04 22:44:49', '2022-03-04 22:44:49'),
(638, 1, 'en', '_json', 'No data available', 'No data available', '2022-03-04 22:44:49', '2022-03-04 22:44:49'),
(639, 1, 'en', '_json', 'Home', 'Home', '2022-03-04 22:44:49', '2022-03-04 22:44:49'),
(640, 1, 'en', '_json', 'You can check your subscription on your account settings', 'You can check your subscription on your account settings', '2022-03-04 22:44:49', '2022-03-04 22:44:49'),
(641, 1, 'en', '_json', 'The name that the users will see when they receive an Email from you.', 'The name that the users will see when they receive an Email from you.', '2022-03-04 22:44:49', '2022-03-04 22:44:49'),
(642, 1, 'en', '_json', 'The address that the users will see when they receive an Email from you.', 'The address that the users will see when they receive an Email from you.', '2022-03-04 22:44:49', '2022-03-04 22:44:49'),
(643, 1, 'en', '_json', 'Require Authentication', 'Require Authentication', '2022-03-04 22:44:49', '2022-03-04 22:44:49'),
(644, 1, 'en', '_json', 'Does not see advertisements.', 'Does not see advertisements.', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(645, 1, 'en', '_json', 'Ability to change playlists privacy to public.', 'Ability to change playlists privacy to public.', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(646, 1, 'en', '_json', 'Ability to change songs privacy to public.', 'Ability to change songs privacy to public.', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(647, 1, 'en', '_json', 'Listen with friends to the same song at the same time.', 'Listen with friends to the same song at the same time.', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(648, 1, 'en', '_json', 'Live Radio', 'Live Radio', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(649, 1, 'en', '_json', 'Episodes', 'Episodes', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(650, 1, 'en', '_json', 'Number of plays', 'Number of plays', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(651, 1, 'en', '_json', 'Localization', 'Localization', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(652, 1, 'en', '_json', 'Platform Name', 'Platform Name', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(653, 1, 'en', '_json', 'Disabling podcasts will remove anything related to podcasts on the application', 'Disabling podcasts will remove anything related to podcasts on the application', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(654, 1, 'en', '_json', 'Community', 'Community', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(655, 1, 'en', '_json', 'Friendship System', 'Friendship System', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(656, 1, 'en', '_json', 'Disable this functionality if you do not want users to be friends with each other', 'Disable this functionality if you do not want users to be friends with each other', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(657, 1, 'en', '_json', 'This will allow live chat and what the users are currently playing', 'This will allow live chat and what the users are currently playing', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(658, 1, 'en', '_json', 'Enable chat between friends', 'Enable chat between friends', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(659, 1, 'en', '_json', 'Allow users to request an artist account by sending their information to the admins', 'Allow users to request an artist account by sending their information to the admins', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(660, 1, 'en', '_json', 'Download Button', 'Download Button', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(661, 1, 'en', '_json', 'Show the download button on the player(if the audio has a file)', 'Show the download button on the player(if the audio has a file)', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(662, 1, 'en', '_json', 'Default Volume', 'Default Volume', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(663, 1, 'en', '_json', 'No Sections!', 'No Sections!', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(664, 1, 'en', '_json', 'Page empty. Add some sections.', 'Page empty. Add some sections.', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(665, 1, 'en', '_json', 'Add Section', 'Add Section', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(666, 1, 'en', '_json', 'Enable to receive Emails from users. Enable to verify users Email addresses.', 'Enable to receive Emails from users. Enable to verify users Email addresses.', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(667, 1, 'en', '_json', 'Show on the live radio section on the right-sidebar', 'Show on the live radio section on the right-sidebar', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(668, 1, 'en', '_json', 'Highlight', 'Highlight', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(669, 1, 'en', '_json', 'Remove user registration on the application', 'Remove user registration on the application', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(670, 1, 'en', '_json', 'Select the landing page of your platform. You can create custom pages.', 'Select the landing page of your platform. You can create custom pages.', '2022-03-04 22:44:50', '2022-03-04 22:44:50'),
(671, 1, 'en', '_json', 'Platform', 'Platform', '2022-03-04 22:44:51', '2022-03-04 22:44:51'),
(672, 1, 'en', '_json', 'Locale', 'Locale', '2022-03-04 22:44:51', '2022-03-04 22:44:51'),
(673, 1, 'en', '_json', 'Enable Realtime', 'Enable Realtime', '2022-03-04 22:44:51', '2022-03-04 22:44:51'),
(674, 1, 'en', '_json', 'About Us', 'About Us', '2022-03-04 22:44:51', '2022-03-04 22:44:51'),
(675, 1, 'en', '_json', 'Disabling podcasts will remove anything related to podcasts on the application.', 'Disabling podcasts will remove anything related to podcasts on the application.', '2022-03-04 22:44:51', '2022-03-04 22:44:51'),
(676, 1, 'en', '_json', 'This will allow live chat and shows what the users are currently playing.', 'This will allow live chat and shows what the users are currently playing.', '2022-03-04 22:44:51', '2022-03-04 22:44:51'),
(677, 1, 'en', '_json', 'Disable this functionality if you do not want users to be friends with each other.', 'Disable this functionality if you do not want users to be friends with each other.', '2022-03-04 22:44:51', '2022-03-04 22:44:51'),
(678, 1, 'en', '_json', 'Describe your platform', 'Describe your platform', '2022-03-04 22:44:51', '2022-03-04 22:44:51'),
(679, 1, 'en', '_json', 'You can add HTML code', 'You can add HTML code', '2022-03-04 22:44:51', '2022-03-04 22:44:51'),
(680, 1, 'en', '_json', 'Enable Chat', 'Enable Chat', '2022-03-04 22:44:51', '2022-03-04 22:44:51'),
(681, 1, 'en', '_json', 'Allow artist account requests', 'Allow artist account requests', '2022-03-04 22:44:51', '2022-03-04 22:44:51'),
(682, 1, 'en', '_json', 'Choose Roles', 'Choose Roles', '2022-03-04 22:44:51', '2022-03-04 22:44:51'),
(683, 1, 'en', '_json', 'Podcaster', 'Podcaster', '2022-03-04 22:44:51', '2022-03-04 22:44:51'),
(684, 1, 'en', '_json', 'Sorry, you can not play YouTube videos.', 'Sorry, you can not play YouTube videos.', '2022-03-04 22:44:51', '2022-03-04 22:44:51'),
(685, 1, 'en', '_json', 'Yearly', 'Yearly', '2022-03-04 22:44:51', '2022-03-04 22:44:51'),
(686, 1, 'en', '_json', 'Weekly', 'Weekly', '2022-03-04 22:44:51', '2022-03-04 22:44:51'),
(687, 1, 'en', '_json', 'Monthly', 'Monthly', '2022-03-04 22:44:51', '2022-03-04 22:44:51'),
(688, 1, 'en', '_json', 'Daily', 'Daily', '2022-03-04 22:44:51', '2022-03-04 22:44:51'),
(689, 1, 'en', '_json', 'Please wait', 'Please wait', '2022-03-04 22:44:51', '2022-03-04 22:44:51'),
(690, 1, 'en', '_json', 'Activate', 'Activate', '2022-03-04 22:44:51', '2022-03-04 22:44:51'),
(691, 1, 'en', '_json', 'Artist', 'Artist', '2022-03-04 22:44:52', '2022-03-04 22:44:52'),
(692, 1, 'en', '_json', 'Custom', 'Custom', '2022-03-04 22:44:52', '2022-03-04 22:44:52'),
(693, 1, 'en', '_json', 'Comedy', 'Comedy', '2022-03-04 22:44:52', '2022-03-04 22:44:52'),
(694, 1, 'en', '_json', 'Arts', 'Arts', '2022-03-04 22:44:52', '2022-03-04 22:44:52'),
(695, 1, 'en', '_json', 'Disable Registration', 'Disable Registration', '2022-03-04 22:44:52', '2022-03-04 22:44:52'),
(696, 1, 'en', '_json', 'Max File Size', 'Max File Size', '2022-03-04 22:44:52', '2022-03-04 22:44:52'),
(697, 1, 'en', '_json', 'Number of labels', 'Number of labels', '2022-03-04 22:44:52', '2022-03-04 22:44:52'),
(698, 1, 'en', '_json', 'Select', 'Select', '2022-03-04 22:44:52', '2022-03-04 22:44:52'),
(699, 1, 'en', '_json', 'Path', 'Path', '2022-03-04 22:44:52', '2022-03-04 22:44:52'),
(700, 1, 'en', '_json', 'Icon', 'Icon', '2022-03-04 22:44:52', '2022-03-04 22:44:52'),
(701, 1, 'en', '_json', 'No streaming source found.', 'No streaming source found.', '2022-03-04 22:44:52', '2022-03-04 22:44:52'),
(702, 1, 'en', '_json', 'Could not be played!', 'Could not be played!', '2022-03-04 22:44:52', '2022-03-04 22:44:52'),
(703, 1, 'en', '_json', 'Enable Ads', 'Enable Ads', '2022-03-04 22:44:52', '2022-03-04 22:44:52'),
(704, 1, 'en', '_json', 'Logo', 'Logo', '2022-03-04 22:44:52', '2022-03-04 22:44:52'),
(705, 1, 'en', '_json', 'Size', 'Size', '2022-03-04 22:44:52', '2022-03-04 22:44:52'),
(706, 1, 'en', '_json', 'Now Playing', 'Now Playing', '2022-03-04 22:44:52', '2022-03-04 22:44:52'),
(707, 1, 'en', '_json', 'Followed artists', 'Followed artists', '2022-03-04 22:44:52', '2022-03-04 22:44:52'),
(708, 1, 'en', '_json', 'Followed playlists', 'Followed playlists', '2022-03-04 22:44:52', '2022-03-04 22:44:52'),
(709, 1, 'en', '_json', 'Contact Us', 'Contact Us', '2022-03-04 22:44:52', '2022-03-04 22:44:52'),
(710, 1, 'en', '_json', 'Sent', 'Sent', '2022-03-04 22:44:52', '2022-03-04 22:44:52'),
(711, 1, 'en', '_json', 'User already has an active subscription.', 'User already has an active subscription.', '2022-03-04 22:44:53', '2022-03-04 22:44:53'),
(712, 1, 'en', '_json', 'Hide Right-sidebar', 'Hide Right-sidebar', '2022-03-04 22:44:53', '2022-03-04 22:44:53'),
(713, 1, 'en', '_json', 'Content type', 'Content type', '2022-03-04 22:44:53', '2022-03-04 22:44:53'),
(714, 1, 'en', '_json', 'Default Language', 'Default Language', '2022-03-04 22:44:53', '2022-03-04 22:44:53'),
(715, 1, 'en', '_json', 'Source Format', 'Source Format', '2022-03-04 22:44:53', '2022-03-04 22:44:53'),
(716, 1, 'en', '_json', 'Icon file', 'Icon file', '2022-03-04 22:44:53', '2022-03-04 22:44:53'),
(717, 1, 'en', '_json', 'Show', 'Show', '2022-03-04 22:44:53', '2022-03-04 22:44:53'),
(718, 1, 'en', '_json', 'Browse Page', 'Browse Page', '2022-03-04 22:44:53', '2022-03-04 22:44:53'),
(719, 1, 'en', '_json', 'Remove the browse page which includes music genres & charts.', 'Remove the browse page which includes music genres & charts.', '2022-03-04 22:44:53', '2022-03-04 22:44:53'),
(720, 1, 'en', '_json', 'All rights reserved.', 'All rights reserved.', '2022-03-04 22:44:53', '2022-03-04 22:44:53'),
(721, 1, 'en', '_json', 'Terms Of Service', 'Terms Of Service', '2022-03-04 22:44:53', '2022-03-04 22:44:53'),
(722, 1, 'en', '_json', 'Privacy Policy', 'Privacy Policy', '2022-03-04 22:44:53', '2022-03-04 22:44:53'),
(723, 1, 'en', '_json', 'Store', 'Store', '2022-03-04 22:44:53', '2022-03-04 22:44:53'),
(724, 1, 'en', '_json', 'Shuffle songs automatically based on the settings you provide.', 'Shuffle songs automatically based on the settings you provide.', '2022-03-04 22:44:53', '2022-03-04 22:44:53'),
(725, 1, 'en', '_json', 'Auto Play', 'Auto Play', '2022-03-04 22:44:53', '2022-03-04 22:44:53'),
(726, 1, 'en', '_json', 'Hide Video', 'Hide Video', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(727, 1, 'en', '_json', 'Hide Download Button', 'Hide Download Button', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(728, 1, 'en', '_json', 'Providers', 'Providers', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(729, 1, 'en', '_json', 'Share Options', 'Share Options', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(730, 1, 'en', '_json', 'for each', 'for each', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(731, 1, 'en', '_json', 'Enable Artist Accounts', 'Enable Artist Accounts', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(732, 1, 'en', '_json', 'How much should an artist earn per 100 play. Enter the amount in cents', 'How much should an artist earn per 100 play. Enter the amount in cents', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(733, 1, 'en', '_json', 'Contact', 'Contact', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(734, 1, 'en', '_json', 'Transaction failed. Please try again or contact us.', 'Transaction failed. Please try again or contact us.', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(735, 1, 'en', '_json', 'Purchase', 'Purchase', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(736, 1, 'en', '_json', 'Premium', 'Premium', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(737, 1, 'en', '_json', 'Total', 'Total', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(738, 1, 'en', '_json', 'Artist Sale Cut', 'Artist Sale Cut', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(739, 1, 'en', '_json', 'Artist Royalty', 'Artist Royalty', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(740, 1, 'en', '_json', 'Earned', 'Earned', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(741, 1, 'en', '_json', 'Account Funds', 'Account Funds', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(742, 1, 'en', '_json', 'License', 'License', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(743, 1, 'en', '_json', 'Royalties', 'Royalties', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(744, 1, 'en', '_json', 'Previous Payouts', 'Previous Payouts', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(745, 1, 'en', '_json', 'Details', 'Details', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(746, 1, 'en', '_json', 'Choose License', 'Choose License', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(747, 1, 'en', '_json', 'Add License', 'Add License', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(748, 1, 'en', '_json', 'Provide as product', 'Provide as product', '2022-03-04 22:44:54', '2022-03-04 22:44:54'),
(749, 1, 'en', '_json', 'Exclusive', 'Exclusive', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(750, 1, 'en', '_json', 'Product', 'Product', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(751, 1, 'en', '_json', 'Explicit', 'Explicit', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(752, 1, 'en', '_json', 'Minimum', 'Minimum', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(753, 1, 'en', '_json', 'Total Earnings', 'Total Earnings', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(754, 1, 'en', '_json', 'Request Payout', 'Request Payout', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(755, 1, 'en', '_json', 'Payout N°', 'Payout N°', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(756, 1, 'en', '_json', 'Funds', 'Funds', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(757, 1, 'en', '_json', 'Account', 'Account', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(758, 1, 'en', '_json', 'Select payout method', 'Select payout method', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(759, 1, 'en', '_json', 'Available', 'Available', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(760, 1, 'en', '_json', 'Fetching data', 'Fetching data', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(761, 1, 'en', '_json', 'Pending', 'Pending', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(762, 1, 'en', '_json', 'Rejected', 'Rejected', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(763, 1, 'en', '_json', 'Payed', 'Payed', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(764, 1, 'en', '_json', 'Phone Number', 'Phone Number', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(765, 1, 'en', '_json', 'Read', 'Read', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(766, 1, 'en', '_json', 'Message from', 'Message from', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(767, 1, 'en', '_json', 'Mark as read', 'Mark as read', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(768, 1, 'en', '_json', 'Important', 'Important', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(769, 1, 'en', '_json', 'Enter payout amount(in cents)', 'Enter payout amount(in cents)', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(770, 1, 'en', '_json', 'Add To Cart', 'Add To Cart', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(771, 1, 'en', '_json', 'Get License', 'Get License', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(772, 1, 'en', '_json', 'Empty Cart', 'Empty Cart', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(773, 1, 'en', '_json', 'Proceed to checkout', 'Proceed to checkout', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(774, 1, 'en', '_json', 'Cart', 'Cart', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(775, 1, 'en', '_json', 'Asset added to card successfully.', 'Asset added to card successfully.', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(776, 1, 'en', '_json', 'No new notifications.', 'No new notifications.', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(777, 1, 'en', '_json', 'External Links', 'External Links', '2022-03-04 22:44:55', '2022-03-04 22:44:55'),
(778, 1, 'en', '_json', 'Most Played Podcasts', 'Most Played Podcasts', '2022-03-04 22:44:56', '2022-03-04 22:44:56'),
(779, 1, 'en', '_json', 'Most Liked Songs', 'Most Liked Songs', '2022-03-04 22:44:56', '2022-03-04 22:44:56'),
(780, 1, 'en', '_json', 'Most Played Songs', 'Most Played Songs', '2022-03-04 22:44:56', '2022-03-04 22:44:56'),
(781, 1, 'en', '_json', 'Most Played Albums', 'Most Played Albums', '2022-03-04 22:44:56', '2022-03-04 22:44:56'),
(782, 1, 'en', '_json', 'Popular Albums', 'Popular Albums', '2022-03-04 22:44:56', '2022-03-04 22:44:56'),
(783, 1, 'en', '_json', 'Some error occurred. Please try again!', 'Some error occurred. Please try again!', '2022-03-04 22:44:56', '2022-03-04 22:44:56'),
(784, 1, 'en', '_json', 'Specific Artists', 'Specific Artists', '2022-03-04 22:44:56', '2022-03-04 22:44:56'),
(785, 1, 'en', '_json', 'Specific Users', 'Specific Users', '2022-03-04 22:44:56', '2022-03-04 22:44:56'),
(786, 1, 'en', '_json', 'All Artists', 'All Artists', '2022-03-04 22:44:56', '2022-03-04 22:44:56'),
(787, 1, 'en', '_json', 'All Users', 'All Users', '2022-03-04 22:44:56', '2022-03-04 22:44:56'),
(788, 1, 'en', '_json', 'Add your message here', 'Add your message here', '2022-03-04 22:44:56', '2022-03-04 22:44:56'),
(789, 1, 'en', '_json', 'Mark As Important Message', 'Mark As Important Message', '2022-03-04 22:44:56', '2022-03-04 22:44:56'),
(790, 1, 'en', '_json', 'Message', 'Message', '2022-03-04 22:44:56', '2022-03-04 22:44:56'),
(791, 1, 'en', '_json', 'Send to', 'Send to', '2022-03-04 22:44:56', '2022-03-04 22:44:56'),
(792, 1, 'en', '_json', 'User Upload', 'User Upload', '2022-03-04 22:44:56', '2022-03-04 22:44:56'),
(793, 1, 'en', '_json', 'Allow users to upload audio files locally.', 'Allow users to upload audio files locally.', '2022-03-04 22:44:56', '2022-03-04 22:44:56'),
(794, 1, 'en', '_json', 'Copy', 'Copy', '2022-03-04 22:44:56', '2022-03-04 22:44:56'),
(795, 1, 'en', '_json', 'Link', 'Link', '2022-03-04 22:44:56', '2022-03-04 22:44:56'),
(796, 1, 'en', '_json', 'More from the same aritsts', 'More from the same aritsts', '2022-03-04 22:44:56', '2022-03-04 22:44:56'),
(797, 1, 'en', '_json', 'Allow guests to contact you', 'Allow guests to contact you', '2022-03-04 22:44:56', '2022-03-04 22:44:56');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `mime_type` varchar(191) DEFAULT NULL,
  `disk` varchar(191) NOT NULL,
  `conversions_disk` varchar(191) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Genre', 1, 'd6c0f6c1-f833-4d7d-906b-0b3707781548', 'cover', 'electronic', 'electronic.png', 'image/png', 'public', 'public', 200713, '[]', '[]', '[]', 1, '2022-03-04 22:45:09', '2022-03-04 22:45:09'),
(2, 'App\\Genre', 1, '2f91f241-b8ef-4a5c-a9b6-0a6db5bfeb9f', 'icon', 'dj', 'dj.svg', 'image/svg+xml', 'public', 'public', 5592, '[]', '[]', '[]', 2, '2022-03-04 22:45:09', '2022-03-04 22:45:09'),
(3, 'App\\Genre', 2, 'a0835108-c169-45d3-a764-7168c14a4a5f', 'cover', 'sound-fx', 'sound-fx.jpg', 'image/jpeg', 'public', 'public', 46824, '[]', '[]', '[]', 3, '2022-03-04 22:45:10', '2022-03-04 22:45:10'),
(4, 'App\\Genre', 2, '1fab7a67-afb0-4114-9c62-ce3aa8fc0fa1', 'icon', 'noise', 'noise.svg', 'image/svg', 'public', 'public', 1271, '[]', '[]', '[]', 4, '2022-03-04 22:45:10', '2022-03-04 22:45:10'),
(5, 'App\\Genre', 3, 'bac7b023-9b5b-4185-a879-9165d4b8e56f', 'cover', 'gaming', 'gaming.png', 'image/png', 'public', 'public', 97891, '[]', '[]', '[]', 5, '2022-03-04 22:45:10', '2022-03-04 22:45:10'),
(6, 'App\\Genre', 3, '3afcbd46-7e92-43f0-a932-cfff8a8f085f', 'icon', 'controller', 'controller.svg', 'image/svg+xml', 'public', 'public', 2811, '[]', '[]', '[]', 6, '2022-03-04 22:45:10', '2022-03-04 22:45:10'),
(7, 'App\\Genre', 4, '2d0e22f7-c7fc-4210-b45a-04ab987c8413', 'cover', 'piano', 'piano.png', 'image/png', 'public', 'public', 154667, '[]', '[]', '[]', 7, '2022-03-04 22:45:10', '2022-03-04 22:45:10'),
(8, 'App\\Genre', 4, 'ee656134-588b-45ea-bfc5-1a8bb2c0fd86', 'icon', 'piano', 'piano.svg', 'image/svg', 'public', 'public', 519, '[]', '[]', '[]', 8, '2022-03-04 22:45:10', '2022-03-04 22:45:10'),
(9, 'App\\Genre', 5, '0b87aa7e-60dd-4f59-a250-014c65c0e894', 'cover', 'chill', 'chill.png', 'image/png', 'public', 'public', 108840, '[]', '[]', '[]', 9, '2022-03-04 22:45:10', '2022-03-04 22:45:10'),
(10, 'App\\Genre', 5, '060edb0e-e0b2-4c0d-85a2-687422daba62', 'icon', 'relax', 'relax.svg', 'image/svg+xml', 'public', 'public', 4531, '[]', '[]', '[]', 10, '2022-03-04 22:45:10', '2022-03-04 22:45:10'),
(11, 'App\\Genre', 6, '7fed21b0-1f6f-4bf8-b344-ef4f44564036', 'cover', 'jazz', 'jazz.png', 'image/png', 'public', 'public', 171856, '[]', '[]', '[]', 11, '2022-03-04 22:45:10', '2022-03-04 22:45:10'),
(12, 'App\\Genre', 6, 'a02b8e43-b45b-4609-adbb-5664b46dea85', 'icon', 'horn', 'horn.svg', 'image/svg+xml', 'public', 'public', 1517, '[]', '[]', '[]', 12, '2022-03-04 22:45:10', '2022-03-04 22:45:10'),
(13, 'App\\Genre', 7, '2385bf83-c800-461c-aaf2-d1deb42e2bcd', 'cover', 'k-pop', 'k-pop.png', 'image/png', 'public', 'public', 134817, '[]', '[]', '[]', 13, '2022-03-04 22:45:10', '2022-03-04 22:45:10'),
(14, 'App\\Genre', 7, '4ac3d036-e99e-4186-b85d-b33ea114a08c', 'icon', 'headphone', 'headphone.svg', 'image/svg+xml', 'public', 'public', 1384, '[]', '[]', '[]', 14, '2022-03-04 22:45:10', '2022-03-04 22:45:10'),
(15, 'App\\Genre', 8, '779f3c15-ad51-4e80-ae98-d39f03a1f824', 'cover', 'classical', 'classical.png', 'image/png', 'public', 'public', 73825, '[]', '[]', '[]', 15, '2022-03-04 22:45:11', '2022-03-04 22:45:11'),
(16, 'App\\Genre', 8, '49ad6552-a4ce-4a81-98ff-8367ce095bfc', 'icon', 'guitar', 'guitar.svg', 'image/svg', 'public', 'public', 3387, '[]', '[]', '[]', 16, '2022-03-04 22:45:11', '2022-03-04 22:45:11'),
(17, 'App\\Genre', 9, 'c318be06-d3b6-4a1d-9ea8-694a5234f086', 'cover', 'hip-hop', 'hip-hop.png', 'image/png', 'public', 'public', 252942, '[]', '[]', '[]', 17, '2022-03-04 22:45:11', '2022-03-04 22:45:11'),
(18, 'App\\Genre', 9, '81615d92-8e26-43f0-8f7e-cdc4ffaac3f7', 'icon', 'radio', 'radio.svg', 'image/svg+xml', 'public', 'public', 2734, '[]', '[]', '[]', 18, '2022-03-04 22:45:11', '2022-03-04 22:45:11'),
(19, 'App\\Genre', 10, 'e26cebee-62ba-495b-823a-23c524995cf2', 'cover', 'indie', 'indie.png', 'image/png', 'public', 'public', 162984, '[]', '[]', '[]', 19, '2022-03-04 22:45:11', '2022-03-04 22:45:11'),
(20, 'App\\Genre', 10, 'f112bfe5-0b6d-4e51-a9aa-fcb442fac43e', 'icon', 'microphone', 'microphone.svg', 'image/svg+xml', 'public', 'public', 1547, '[]', '[]', '[]', 20, '2022-03-04 22:45:11', '2022-03-04 22:45:11'),
(21, 'App\\PodcastGenre', 1, '82518892-fb9a-4b7c-9c98-266c1d2e3866', 'cover', 'podcast-news', 'podcast-news.png', 'image/png', 'public', 'public', 189884, '[]', '[]', '[]', 21, '2022-03-04 22:45:11', '2022-03-04 22:45:11'),
(22, 'App\\PodcastGenre', 2, 'a2cdae28-7926-4c8b-b6f4-641491d000ab', 'cover', 'podcast-art', 'podcast-art.png', 'image/png', 'public', 'public', 114461, '[]', '[]', '[]', 22, '2022-03-04 22:45:11', '2022-03-04 22:45:11'),
(23, 'App\\PodcastGenre', 3, 'a70f2e6b-67ba-4195-855a-ab087680ea54', 'cover', 'podcast-gaming', 'podcast-gaming.png', 'image/png', 'public', 'public', 61067, '[]', '[]', '[]', 23, '2022-03-04 22:45:12', '2022-03-04 22:45:12'),
(24, 'App\\PodcastGenre', 4, '65ad8892-437e-4d9f-bb4a-3be870ace278', 'cover', 'podcast-education', 'podcast-education.png', 'image/png', 'public', 'public', 116851, '[]', '[]', '[]', 24, '2022-03-04 22:45:12', '2022-03-04 22:45:12'),
(25, 'App\\PodcastGenre', 5, '6304f5b9-542f-431c-b232-3c99c762a2d2', 'cover', 'podcast-comedy', 'podcast-comedy.png', 'image/png', 'public', 'public', 92997, '[]', '[]', '[]', 25, '2022-03-04 22:45:12', '2022-03-04 22:45:12'),
(26, 'App\\PodcastGenre', 6, '471c26c2-797b-45b0-a0f8-f349f8d18c85', 'cover', 'podcast-health', 'podcast-health.png', 'image/png', 'public', 'public', 102015, '[]', '[]', '[]', 26, '2022-03-04 22:45:12', '2022-03-04 22:45:12'),
(27, 'App\\PodcastGenre', 7, '28ac450b-d2ac-4260-9233-70033ba85027', 'cover', 'podcast-fiction', 'podcast-fiction.png', 'image/png', 'public', 'public', 158421, '[]', '[]', '[]', 27, '2022-03-04 22:45:12', '2022-03-04 22:45:12'),
(28, 'App\\PodcastGenre', 8, 'a19de280-0c63-49fb-89c7-481825c24bab', 'cover', 'podcast-sports', 'podcast-sports.png', 'image/png', 'public', 'public', 173861, '[]', '[]', '[]', 28, '2022-03-04 22:45:12', '2022-03-04 22:45:12'),
(29, 'App\\PodcastGenre', 9, '499cbd4a-eea4-480c-8ca9-95557af6ab8e', 'cover', 'podcast-technology', 'podcast-technology.png', 'image/png', 'public', 'public', 83264, '[]', '[]', '[]', 29, '2022-03-04 22:45:12', '2022-03-04 22:45:12'),
(30, 'App\\PodcastGenre', 10, '5c8e99fe-6f94-4d6f-b09e-17f83af61735', 'cover', 'podcast-science', 'podcast-science.png', 'image/png', 'public', 'public', 115054, '[]', '[]', '[]', 30, '2022-03-04 22:45:12', '2022-03-04 22:45:12'),
(31, 'App\\User', 1, '018d5488-34bc-46f3-b619-05e5cbffef0e', 'avatar', 'user_avatar', 'user_avatar.png', 'image/png', 'public', 'public', 28790, '[]', '[]', '[]', 31, '2022-03-04 22:45:19', '2022-03-04 22:45:19'),
(41, 'App\\Song', 1687423, '47b534f1-0992-47e7-9150-59c5b6dd18fe', 'cover', 'song_cover', 'song_cover.png', 'image/png', 'public', 'public', 11812, '[]', '[]', '[]', 38, '2022-05-25 09:12:05', '2022-05-25 09:12:05'),
(42, 'App\\Song', 1687423, 'be9124ca-7f94-4058-9c8c-dfd7c0d1a775', 'mp3', 'Z7soZU', 'new.mp3', 'audio/mpeg', 'public', 'public', 1087849, '[]', '{\"bitrate\":192}', '[]', 39, '2022-05-25 09:12:05', '2022-05-25 09:12:05'),
(76, 'App\\Artist', 4797, 'af04a730-3b50-48a0-b808-93d20ab07e10', 'avatar', 'CbAiuWIEg5311CMScN4BuFfIlNXn5VXh', 'CbAiuWIEg5311CMScN4BuFfIlNXn5VXh.jpg', 'image/jpeg', 'public', 'public', 8303, '[]', '[]', '[]', 41, '2022-06-26 21:28:49', '2022-06-26 21:28:49'),
(79, 'App\\Artist', 4798, '608561c7-0abc-4891-80cc-164fdebedd1d', 'avatar', 'CmCIeIgS7GgWrcjhhKlHzGXivzpJNr30', 'CmCIeIgS7GgWrcjhhKlHzGXivzpJNr30.jpg', 'image/jpeg', 'public', 'public', 61275, '[]', '[]', '[]', 42, '2022-07-10 16:53:10', '2022-07-10 16:53:10'),
(80, 'App\\Artist', 4799, '5be00a2a-62d7-4b45-96b9-605bcc168e40', 'avatar', 'artist_avatar', 'artist_avatar.png', 'image/png', 'public', 'public', 27242, '[]', '[]', '[]', 43, '2022-07-10 17:09:54', '2022-07-10 17:09:54'),
(81, 'App\\Album', 68789, 'c71dcbeb-0dda-46ea-b3b5-92ff64fdf0e2', 'cover', 'BONXjV5LXrYUKYBEpCE0pbkl4bnwsp7x', 'BONXjV5LXrYUKYBEpCE0pbkl4bnwsp7x.png', 'image/jpeg', 'public', 'public', 14899, '[]', '[]', '[]', 44, '2022-07-12 14:56:16', '2022-07-12 14:56:16'),
(82, 'App\\Playlist', 17415, '71b1511f-2dfa-41fe-bbe3-3475420d4343', 'cover', 'playlist_cover', 'playlist_cover.png', 'image/png', 'public', 'public', 11959, '[]', '[]', '[]', 45, '2022-07-12 15:28:54', '2022-07-12 15:28:54'),
(83, 'App\\Artist', 4800, '00a46400-3f5e-4e9d-8a82-986fbe8cb8d8', 'avatar', 'UpGgWhnu6qcZt9BHZBWmJjT2TGgad16K', 'UpGgWhnu6qcZt9BHZBWmJjT2TGgad16K.jpg', 'image/jpeg', 'public', 'public', 36941, '[]', '[]', '[]', 46, '2022-07-12 15:33:40', '2022-07-12 15:33:40'),
(84, 'App\\Artist', 4801, '29829aa7-f1b4-40e7-9b0c-036173b93057', 'avatar', 'BJx9DR1qGLzq5kHmcFNiwN2s2RZDuYxP', 'BJx9DR1qGLzq5kHmcFNiwN2s2RZDuYxP.jpg', 'image/jpeg', 'public', 'public', 34173, '[]', '[]', '[]', 47, '2022-07-12 15:34:34', '2022-07-12 15:34:34'),
(85, 'App\\Artist', 4802, '25d496f9-d6ac-4cba-9a53-914eb23f21cc', 'avatar', 'WkMSUsjSNZZC5NQnGQCwUqcKyw0cfwlU', 'WkMSUsjSNZZC5NQnGQCwUqcKyw0cfwlU.jpg', 'image/jpeg', 'public', 'public', 44499, '[]', '[]', '[]', 48, '2022-07-12 15:35:52', '2022-07-12 15:35:52'),
(86, 'App\\Artist', 4803, '809a1e4d-3702-43c4-9c19-465771b92752', 'avatar', 'WSEdasMslBSxyw4uxSoFLwhy9zX2jXe3', 'WSEdasMslBSxyw4uxSoFLwhy9zX2jXe3.jpg', 'image/jpeg', 'public', 'public', 28070, '[]', '[]', '[]', 49, '2022-07-12 15:37:57', '2022-07-12 15:37:57'),
(87, 'App\\Album', 68790, 'c115945d-a63a-4f49-afff-2a281a40f1f8', 'cover', 'MlpCkl9bzDa5NnJoVDg9f57Ft9kc6fzC', 'MlpCkl9bzDa5NnJoVDg9f57Ft9kc6fzC.jpg', 'image/jpeg', 'public', 'public', 3372, '[]', '[]', '[]', 50, '2022-07-12 15:53:26', '2022-07-12 15:53:26'),
(88, 'App\\Album', 68791, 'a2376b05-6dbf-44d0-9b09-799274982c31', 'cover', 'TxXDzVmuuVu2wnR9kV96bu9RuxvqaTfi', 'TxXDzVmuuVu2wnR9kV96bu9RuxvqaTfi.jpg', 'image/jpeg', 'public', 'public', 20254, '[]', '[]', '[]', 51, '2022-07-12 15:56:35', '2022-07-12 15:56:35'),
(92, 'App\\Album', 68792, '49646bdf-1d89-47c2-93f1-1bd72ebbfd3c', 'cover', 'album_cover', 'album_cover.png', 'image/png', 'public', 'public', 14249, '[]', '[]', '[]', 53, '2022-07-21 21:32:28', '2022-07-21 21:32:28'),
(93, 'App\\Artist', 4804, '99d5a521-5e18-42e9-9af3-e982dd304e26', 'avatar', 'artist_avatar', 'artist_avatar.png', 'image/png', 'public', 'public', 27242, '[]', '[]', '[]', 54, '2022-08-03 09:00:26', '2022-08-03 09:00:26'),
(97, 'App\\RadioStation', 1, '018f05d6-9d55-4164-bbf2-7f2909ba39c1', 'cover', 'il0DPmGIEOaXmwAHOUgEewyTHkiIgUWH', 'il0DPmGIEOaXmwAHOUgEewyTHkiIgUWH.jpg', 'image/jpeg', 'public', 'public', 11270, '[]', '[]', '[]', 58, '2022-08-18 20:42:08', '2022-08-18 20:42:08'),
(113, 'App\\Song', 1687497, '223b52db-f861-44cb-84dc-695fa6426003', 'mp3', 'B8sfSj', 'cjTtFDJ9AX.mp3', 'audio/mpeg', 'public', 'public', 2306082, '[]', '{\"bitrate\":192}', '[]', 69, '2022-09-02 14:57:41', '2022-09-02 14:57:41'),
(114, 'App\\Song', 1687497, '3acba973-1b7a-4aa8-8cc9-437a9f8c6c8e', 'cover', 'media-libraryHvbjuN', '3s4WBnggR.jpg', 'image/jpeg', 'public', 'public', 29030, '[]', '{\"generated_conversions\":{\"thumbnail\":true}}', '[]', 70, '2022-09-02 14:57:41', '2022-09-02 14:57:41'),
(115, 'App\\Song', 1687498, 'e0c0b6e8-e5a8-43e1-9253-94fef022df3f', 'mp3', 'qOvN73', '01nbjav1qa.mp3', 'audio/mpeg', 'public', 'public', 2960607, '[]', '{\"bitrate\":192}', '[]', 71, '2022-09-02 15:01:08', '2022-09-02 15:01:08'),
(116, 'App\\Song', 1687498, '8e0ed39a-d726-4878-9d73-34b5b4003769', 'cover', 'media-librarypKJ3rd', 'K9bhaOqs9.jpg', 'image/jpeg', 'public', 'public', 18665, '[]', '{\"generated_conversions\":{\"thumbnail\":true}}', '[]', 72, '2022-09-02 15:01:08', '2022-09-02 15:01:08'),
(117, 'App\\Song', 1687499, 'e9451a09-2def-48ff-9240-a2f0955428e3', 'mp3', '7SrEbz', 'RAuFIgduK7.mp3', 'audio/mpeg', 'public', 'public', 4901609, '[]', '{\"bitrate\":192}', '[]', 73, '2022-09-02 15:04:12', '2022-09-02 15:04:12'),
(118, 'App\\Song', 1687499, '2ef25a2d-5b5c-4236-85fa-4815f14b66dc', 'cover', 'media-libraryecnUZA', 'rLf6QNhf2.jpg', 'image/jpeg', 'public', 'public', 42181, '[]', '{\"generated_conversions\":{\"thumbnail\":true}}', '[]', 74, '2022-09-02 15:04:12', '2022-09-02 15:04:12'),
(121, 'App\\Song', 1687501, '2c82e866-d729-4c48-8fdd-40e463bafd98', 'mp3', 'iPVrNx', 'X5zmPrrUml.mp3', 'audio/mpeg', 'public', 'public', 3986905, '[]', '{\"bitrate\":192}', '[]', 77, '2022-09-02 15:07:59', '2022-09-02 15:07:59'),
(122, 'App\\Song', 1687501, '111f149f-9a0e-430f-9014-29c44957ce17', 'cover', 'media-libraryAmHNS8', 'SSpEy4QVm.jpg', 'image/jpeg', 'public', 'public', 45594, '[]', '{\"generated_conversions\":{\"thumbnail\":true}}', '[]', 78, '2022-09-02 15:07:59', '2022-09-02 15:07:59'),
(125, 'App\\Song', 1687503, '6f291de3-e361-42df-ae0f-cc65eb9331df', 'mp3', '9SJl7B', 'GVGbnyG28V.mp3', 'audio/mpeg', 'public', 'public', 2943052, '[]', '{\"bitrate\":192}', '[]', 81, '2022-09-02 15:10:04', '2022-09-02 15:10:04'),
(131, 'App\\Song', 1687503, '9e631046-fdba-4f90-90a8-c27431221a59', 'cover', 'media-librarydWA4Hy', 'GVTXSXAtM.jpg', 'image/jpeg', 'public', 'public', 33951, '[]', '{\"generated_conversions\":{\"thumbnail\":true}}', '[]', 82, '2022-09-02 15:10:55', '2022-09-02 15:10:55'),
(132, 'App\\User', 39, '22b369f7-5faa-447f-9bc5-d9f8514aa229', 'avatar', 'user_avatar', 'user_avatar.png', 'image/png', 'public', 'public', 28790, '[]', '{\"generated_conversions\":{\"thumbnail\":true}}', '[]', 83, '2022-10-03 17:32:26', '2022-10-03 17:32:27'),
(133, 'App\\User', 40, '707590ff-1a49-4deb-89a2-a68b49117476', 'avatar', 'user_avatar', 'user_avatar.png', 'image/png', 'public', 'public', 28790, '[]', '{\"generated_conversions\":{\"thumbnail\":true}}', '[]', 84, '2022-10-03 17:34:08', '2022-10-03 17:34:09'),
(146, 'App\\Song', 1687511, '0efa781a-f8cc-4a6b-8197-a64a18ef8153', 'mp3', 'YPy3EXbVB3', 'YPy3EXbVB3.mp3', 'audio/mpeg', 'public', 'public', 655063, '[]', '{\"bitrate\":192}', '[]', 85, '2022-10-05 11:06:15', '2022-10-05 11:06:15'),
(147, 'App\\Song', 1687511, '556387bf-c92e-4cdd-a145-8f7db7fec316', 'cover', 'media-librarypEmlcD', 'P20s38Wqj.jpg', 'image/jpeg', 'public', 'public', 53631, '[]', '{\"generated_conversions\":{\"thumbnail\":true}}', '[]', 86, '2022-10-05 11:06:16', '2022-10-05 11:06:19'),
(152, 'App\\Playlist', 17417, '6ef765c9-d606-4cc5-97be-6cfb790e68a6', 'cover', 'playlist_cover', 'playlist_cover.png', 'image/png', 'public', 'public', 11959, '[]', '{\"generated_conversions\":{\"thumbnail\":true}}', '[]', 87, '2022-12-14 02:21:05', '2022-12-14 02:21:05'),
(155, 'App\\Playlist', 17418, '396917ab-fbca-468a-9888-f315b80fee3a', 'cover', 'playlist_cover', 'playlist_cover.png', 'image/png', 'public', 'public', 11959, '[]', '{\"generated_conversions\":{\"thumbnail\":true}}', '[]', 88, '2023-02-13 09:26:20', '2023-02-13 09:26:21'),
(156, 'App\\Playlist', 17419, 'ae3fd3e1-2ab4-4389-ab98-c2c4dcb6f96e', 'cover', 'playlist_cover', 'playlist_cover.png', 'image/png', 'public', 'public', 11959, '[]', '{\"generated_conversions\":{\"thumbnail\":true}}', '[]', 89, '2023-02-13 09:26:56', '2023-02-13 09:26:56'),
(157, 'App\\Song', 1687515, 'e32c37d9-635f-45ca-9e28-73c9bae43d84', 'mp3', 'x0sPGWaHQF', 'x0sPGWaHQF.mp3', 'audio/mpeg', 'public', 'public', 1731350, '[]', '{\"bitrate\":192}', '[]', 90, '2023-02-13 09:37:47', '2023-02-13 09:37:47'),
(158, 'App\\Song', 1687515, '8ae68ce9-8717-448f-acf0-bf4d41faf957', 'cover', 'song_cover', 'song_cover.png', 'image/png', 'public', 'public', 11812, '[]', '{\"generated_conversions\":{\"thumbnail\":true}}', '[]', 91, '2023-02-13 09:37:47', '2023-02-13 09:37:47'),
(159, 'App\\User', 90, '011b3bb8-7d29-4201-a5e1-cf2751233830', 'avatar', 'user_avatar', 'user_avatar.png', 'image/png', 'public', 'public', 28790, '[]', '{\"generated_conversions\":{\"thumbnail\":true}}', '[]', 92, '2023-03-07 22:15:40', '2023-03-07 22:15:40'),
(160, 'App\\User', 91, '2939b69c-608d-4654-a437-19e26a407755', 'avatar', 'user_avatar', 'user_avatar.png', 'image/png', 'public', 'public', 28790, '[]', '{\"generated_conversions\":{\"thumbnail\":true}}', '[]', 93, '2023-03-08 13:39:22', '2023-03-08 13:39:23'),
(161, 'App\\User', 92, '32e4bc4e-07b5-49a3-8d9e-2a570f3a5abf', 'avatar', 'user_avatar', 'user_avatar.png', 'image/png', 'public', 'public', 28790, '[]', '{\"generated_conversions\":{\"thumbnail\":true}}', '[]', 94, '2023-03-08 13:40:28', '2023-03-08 13:40:29'),
(162, 'App\\Artist', 4842, '158a39cb-5e22-4b6a-bb81-b9e9ca9d79cf', 'avatar', 'media-libraryp2WeDM', 'l8n0se4D5.jpg', 'image/jpeg', 'public', 'public', 40950, '[]', '{\"generated_conversions\":{\"thumbnail\":true}}', '[]', 95, '2023-03-08 13:42:10', '2023-03-08 13:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(191) NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `content`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 'Hi', 13, '2023-03-16 20:43:43', '2023-03-16 20:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_04_02_193005_create_translations_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(7, '2016_06_01_000004_create_oauth_clients_table', 1),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(9, '2018_05_13_084701_create_session_table', 1),
(10, '2018_05_13_085121_create_messages_table', 1),
(11, '2018_05_13_085415_create_chats_table', 1),
(12, '2019_05_03_000001_create_customer_columns', 1),
(13, '2019_05_03_000002_create_subscriptions_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2020_05_13_145928_create_playlists_table', 1),
(16, '2020_05_13_184903_create_albums_table', 1),
(17, '2020_05_14_181224_create_genres_table', 1),
(18, '2020_05_17_074954_create_episodes_table', 1),
(19, '2020_05_17_081741_create_podcasts_table', 1),
(20, '2020_05_17_085409_create_podcast_genres_table', 1),
(21, '2020_06_12_125224_create_artists_table', 1),
(22, '2020_06_21_112902_create_song_playlist_table', 1),
(23, '2020_06_23_102926_create_notifications_table', 1),
(24, '2020_06_23_155743_create_roles_table', 1),
(25, '2020_06_23_181713_create_role_user_table', 1),
(26, '2020_07_20_203234_create_friendships_table', 1),
(27, '2020_07_27_105801_create_genre_song_table', 1),
(28, '2020_08_09_202913_create_genre_podcast_table', 1),
(29, '2020_08_18_160041_create_visiting_countries_table', 1),
(30, '2020_08_18_160415_create_visiting_browsers_table', 1),
(31, '2020_09_02_210451_create_settings_table', 1),
(32, '2020_09_21_145056_create_permissions_table', 1),
(33, '2020_09_21_214630_create_user_permission_table', 1),
(34, '2020_09_21_234427_create_role_permission_table', 1),
(35, '2020_11_05_125035_create_songs_table', 1),
(36, '2020_11_05_131453_create_sections_table', 1),
(37, '2020_11_06_143029_create_navigation_items_table', 1),
(38, '2020_12_18_135630_create_pages_table', 1),
(39, '2021_04_17_121458_create_plans_table', 1),
(40, '2021_04_17_151121_create_plan_permission', 1),
(41, '2021_04_21_222735_create_plan_role', 1),
(42, '2021_04_28_230048_create_plays_table', 1),
(43, '2021_05_01_214304_create_languages_table', 1),
(44, '2021_05_06_010614_create_radio_stations_table', 1),
(45, '2021_05_28_210900_create_artist_song_table', 1),
(46, '2021_05_30_103004_create_likes_table', 1),
(47, '2021_05_30_103216_create_follows_table', 1),
(48, '2021_05_30_180354_create_section_item_table', 1),
(49, '2021_06_12_162854_create_carts_table', 1),
(50, '2021_06_12_163523_create_products_table', 1),
(51, '2021_06_12_180903_create_prices_table', 1),
(52, '2021_06_12_190839_create_product_price_table', 1),
(53, '2021_06_16_094857_create_external_links_table', 1),
(54, '2021_06_23_163759_create_album_artist_table', 1),
(55, '2021_07_14_215841_create_sales_table', 1),
(56, '2021_07_14_221415_create_sale_product_table', 1),
(57, '2021_07_17_164004_create_payouts_table', 1),
(58, '2021_07_17_174437_create_payout_methods_table', 1),
(59, '2021_07_17_220412_create_payout_method_artist_table', 1),
(60, '2021_07_20_150223_create_royalties_table', 1),
(61, '2021_12_20_050532_create_media_table', 1),
(62, '2021_12_23_234024_create_campaigns_table', 1),
(63, '2021_12_25_001906_create_playings_table', 1),
(64, '2022_07_21_084703_create_genre_artist_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `navigation_items`
--

CREATE TABLE `navigation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `icon` varchar(191) NOT NULL,
  `navigatesTo` varchar(191) DEFAULT NULL,
  `page_id` bigint(20) DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL,
  `custom` tinyint(1) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL,
  `path` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigation_items`
--

INSERT INTO `navigation_items` (`id`, `name`, `icon`, `navigatesTo`, `page_id`, `visibility`, `custom`, `rank`, `path`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'home', 'Custom page', 1, 1, 1, 0, '/home', '2022-08-18 20:36:20', '2022-08-18 20:36:20'),
(2, 'Browse', 'compass', NULL, NULL, 1, 0, 1, '/browse', '2022-08-18 20:36:20', '2022-08-18 20:36:20'),
(3, 'Podcasts', 'microphone', NULL, NULL, 1, 0, 2, '/podcasts', '2022-08-18 20:36:20', '2022-08-18 20:36:20'),
(4, 'Radio', 'radio-tower', NULL, NULL, 1, 0, 3, '/radio', '2022-08-18 20:36:20', '2022-08-18 20:36:20'),
(5, 'Library', 'music-box-multiple', NULL, NULL, 1, 0, 4, '/library/my-songs', '2022-08-18 20:36:20', '2022-08-18 20:36:20'),
(6, 'Store', 'shopping', NULL, NULL, 1, 0, 5, '/store', '2022-08-18 20:36:20', '2022-08-18 20:36:20'),
(7, 'Subscription', 'star-circle', NULL, NULL, 1, 0, 6, '/subscription', '2022-08-18 20:36:20', '2022-08-18 20:36:20');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('004c6254d7c28be6fe943c19d3ca016b22f1b2c5c4277279a254db2399784acdec94b84806a0eb85', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:21:28', '2022-11-13 22:21:28', '2023-11-13 17:21:28'),
('006c2bffa1d4b2de5ba94db86467f6c8f4f9ec3036af6037756e3f00daf55e7c87cfe5e01db48bd1', 36, 1, 'access_token', '[]', 0, '2022-09-14 19:14:01', '2022-09-14 19:14:01', '2023-09-14 15:14:01'),
('007c7801ae0cfe197fc247b46dc71228fc65bb6c3c23468031b5175440aa0b624c2761cd0ccd951c', 68, 1, 'access_token', '[]', 1, '2022-11-04 15:56:51', '2022-11-04 15:56:51', '2023-11-04 11:56:51'),
('00de9ef8879206a3a560cf85ef6aadc581cf014608bb64c3a60fb086e57eeca6b4ac40e8591d1ab6', 27, 1, 'access_token', '[]', 0, '2022-09-27 09:26:12', '2022-09-27 09:26:12', '2023-09-27 05:26:12'),
('00efa4fe02351cca632912338228779934b536d74cf3e8c1472400bf3882a41ef74c432483b93f4f', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-09 12:38:12', '2023-02-09 12:38:12', '2024-02-09 07:38:12'),
('00f986f46858a6c4807b9e630a8108a31e591f5644c454ea6d8b58028550d9a0f0f2df7a8d81003a', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-20 13:21:03', '2023-01-20 13:21:03', '2024-01-20 08:21:03'),
('01034f579cb767d7bcb5c02f57da463c8978c6253c1243fc9d562513ebc392c7d5c3d74270bb8298', 27, 1, 'access_token', '[]', 1, '2022-09-28 10:32:47', '2022-09-28 10:32:47', '2023-09-28 06:32:47'),
('0144788332eec3a138ef524e36a11abdf3df0873ae1c3fe485b956b19b55b407c2332ddb7bc57fd1', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 16:22:20', '2022-10-03 16:22:20', '2023-10-03 12:22:20'),
('0161d85b6c68ad05a14bdff164ff79ac5126b9d3cac2727c6dda3b875c48d31831ad057429fb08e3', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-07 12:50:52', '2022-12-07 12:50:52', '2023-12-07 07:50:52'),
('0185db9a0ffc2885e06641eb721dcb2c22d0ba2c503d88b125e594c6b0f05f0f7779d495c7ce7a6d', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 17:34:07', '2022-10-03 17:34:07', '2023-10-03 13:34:07'),
('01895dfaa726b87276c49e3d0a30c4799abe49de30128d488f8cc0e56e0efd2938ff7d7b40c880e0', 27, 1, 'access_token', '[]', 0, '2022-09-27 14:37:49', '2022-09-27 14:37:49', '2023-09-27 10:37:49'),
('01bae261ec790731a21c9d25eda9b278d9126335fcf370f39ddc1dc9544dacad4252dcaa79bb5f82', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-01-20 13:44:58', '2023-01-20 13:44:58', '2024-01-20 08:44:58'),
('01c4525145073a8101b3430f0834c75a87c6f26d1e2713c697f2d6d7b87f9af84fbe6a7d191c7f2c', 27, 1, 'access_token', '[]', 0, '2022-09-28 12:06:02', '2022-09-28 12:06:02', '2023-09-28 08:06:02'),
('01cb2e874686647d1c295cd54634973efda26bb30bd76f83173a8d16464d30b896498c6818dc30ef', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:09:04', '2023-03-14 21:09:04', '2024-03-14 17:09:04'),
('01e1196e06629e63cf55fb70e28f4241a4aa0b16cf8474c5440a0b6dcf239fb926d0b108ec18efb4', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:21:23', '2022-12-13 22:21:23', '2023-12-13 17:21:23'),
('0204f9d035a50fd3ac25f9e96e822af27f5a07671c169415e4e4317968ee9c320b301f226f6ca663', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:48:13', '2022-09-28 11:48:13', '2023-09-28 07:48:13'),
('0221a4ea40e37322ea09378d4f51fc264be2534ae79c0f7150345b01aea1a1a3dee8a7a169effc7d', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-18 20:26:03', '2023-01-18 20:26:03', '2024-01-18 15:26:03'),
('022ee3c5d3f913a76601f4e6349dbfbd2df5c5760b20579c9493c4af86c4eae2d2cff01e5bfcf507', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:13:48', '2022-12-13 22:13:48', '2023-12-13 17:13:48'),
('023ef539051f13b775f8f990cc78b0e3bd46439bc3a5f05abb5a3c63f738b67bb18e1a33b8d23911', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-11 14:33:20', '2022-07-11 14:33:20', '2023-07-11 10:33:20'),
('0264ebcd23a5c3ef968b8aaacd2c0a131091e4e884cf47c6f087266f59b60206548be0ee502cc57f', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 10:54:13', '2023-02-24 10:54:13', '2024-02-24 05:54:13'),
('027e7e9f6f0c36e0fac601b4290cc91265f07bf309d49ebb9f07097e5819bcd2317bdb109c6428a3', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:08:28', '2022-10-03 12:08:28', '2023-10-03 08:08:28'),
('02b94af3132d7393255dc359910057082b20391a8cb3e7b90030ea7cc2fa7b853cc62a5f30901c3e', 41, 1, 'access_token', '[]', 0, '2022-10-04 15:38:16', '2022-10-04 15:38:16', '2023-10-04 11:38:16'),
('02bc2741e5280fe4b35a6a9cc88a90a954e0811a6ba8a657fdc5e527a89571c4e6db3e3b11d81605', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-14 13:49:42', '2022-07-14 13:49:42', '2023-07-14 09:49:42'),
('02e2c1b492c0f6c7a14a57805648cb99262d235bac36acea171b4783776a5b2c6274d8785c797eb5', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:22:26', '2022-10-03 11:22:26', '2023-10-03 07:22:26'),
('030a9d9871e6fbd284df1b58e979a4110477555ba8578a45cf282fc3da9990f3e48286ec3ccc76ff', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:50:54', '2022-12-13 22:50:54', '2023-12-13 17:50:54'),
('038356c4e0e0f5766f0d5b37fcb19ecc305a4011d9b1f5689f8c5ca0dc131622207c37fd223fdfeb', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-02 17:38:24', '2022-08-02 17:38:24', '2023-08-02 13:38:24'),
('042a73c8178d8b1d37f99d8b118bff233d1fe555f95a075b288a802fb563cc617c545918deb52f7b', 6, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-12 22:20:20', '2022-12-12 22:20:20', '2023-12-12 17:20:20'),
('04c695b0a7886a483c52eaa413162577758686a66f1214f8e7aa637e328970dbe2f5fb8431056249', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-08-02 09:26:13', '2022-08-02 09:26:13', '2023-08-02 05:26:13'),
('04cccb6d28bbdd200bb65fc54b61987f0751ba2fb352034c8f259dbca73c0bde02bccd8f17f24439', 34, 1, 'access_token', '[]', 0, '2022-09-10 06:43:22', '2022-09-10 06:43:22', '2023-09-10 02:43:22'),
('04ec37e6017c0c1dbe78fb803cd656bdceddff11463cd2914850639aed8ef0a693aa04c251594da5', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-31 08:59:56', '2022-10-31 08:59:56', '2023-10-31 04:59:56'),
('051475735c23c6caaee5d16d412e263714eca439487c66257c18a02f9b6a88ca0aa0e4d01c98340f', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-08-04 08:48:13', '2022-08-04 08:48:13', '2023-08-04 04:48:13'),
('055d119e25de55afb9fe1ea8eb17b70085c863baa3238cc5b8ec19415c6badbf9bb7cdbdcd53cc45', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-01-20 21:33:16', '2023-01-20 21:33:16', '2024-01-20 16:33:16'),
('057bef7c2afb315145748c7491b6329263754bd0020e7fefad077e38eb20af965c51d2654a2f3640', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:09:12', '2022-12-13 23:09:12', '2023-12-13 18:09:12'),
('0581e02058568e8d30765f48bf9e22583f167734ec2bf6335d155e0b37dcd875ff1f7b69f520fa97', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-03 09:04:17', '2022-08-03 09:04:17', '2023-08-03 05:04:17'),
('059d85e1dbc79147616839816c44147b7ef71cee74120278f213e2968822c9e19df43274a24d49de', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 20:41:07', '2023-03-14 20:41:07', '2024-03-14 16:41:07'),
('05d9a49412e50595b80dff77c3eacefe9ef8f984bd101f3151a5bdc85cca4e6cfcecd900d4213fca', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-14 12:19:14', '2023-02-14 12:19:14', '2024-02-14 07:19:14'),
('05f6e8af59f530bad5e22e2d79467104b416fb1ca3e5cffe9529f0c9c177c4ed38c8efdf911936ab', 27, 1, 'access_token', '[]', 0, '2022-09-26 15:25:23', '2022-09-26 15:25:23', '2023-09-26 11:25:23'),
('06127e3248e033a247f44ea7461a355c707b8be12b7fcf1fa222ed90f149993c308c341489be62b5', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-17 23:15:50', '2023-01-17 23:15:50', '2024-01-17 18:15:50'),
('06228a5695ae12439b20d1c1cd0e15bac5db91ec2caacc24e291bf792d77f0e22f1aba66d0897841', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-06 22:11:28', '2022-12-06 22:11:28', '2023-12-06 17:11:28'),
('0624dfd189a0ba480688c39630808c15ec53de34b9b26ccf3ecdfa99cbed65d01c5008f418e94a13', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-18 20:24:00', '2023-01-18 20:24:00', '2024-01-18 15:24:00'),
('06c0f6e012bb194cb680a44fa6c8ae50df5fb1c276ec9e014ed8f73babad1cf6b234408176a04ef7', 27, 1, 'access_token', '[]', 1, '2022-09-28 11:03:19', '2022-09-28 11:03:19', '2023-09-28 07:03:19'),
('06c26777752f4a1a165050002cc56577d87e2fdac7f190cdf4fe2aa1a5c06c1bd25b9ecce301d82e', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:22:29', '2022-10-03 11:22:29', '2023-10-03 07:22:29'),
('06c7362fff2673d459418b6e2965d1b84dd860ea80f0fde2354de42cd119759cf2a0df8380659150', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-08-18 11:56:05', '2022-08-18 11:56:05', '2023-08-18 07:56:05'),
('06fb959730f31274ed5503a90e0fd793ccf84563670cec1102dead225aff220c1d35673332dbdd3a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:01:57', '2022-10-03 12:01:57', '2023-10-03 08:01:57'),
('072ae8c41e9de0699faee163ee45054dafd87a97f12e3e2b3c72c1904a22c3cdc2cac0a5ff9e69bb', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 09:13:24', '2022-09-30 09:13:24', '2023-09-30 05:13:24'),
('078b6a8c75e073c68db9f74710a4103a7dc1f32949290aa31922c67dda50d723eb15728d2d9c3571', 27, 1, 'access_token', '[]', 0, '2022-09-28 17:34:32', '2022-09-28 17:34:32', '2023-09-28 13:34:32'),
('07ea6f0b1e0f625e6ca0a238d5b8b84b42013ccc0f5a8cf127e657d5f691a6459f9a7f72540c7948', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-09 12:26:55', '2023-02-09 12:26:55', '2024-02-09 07:26:55'),
('081af376aa93a5d5de56a0c4775ff8b1e0ccc42dfa6b698797ea4f48073d1afaeb06821354136688', 36, 1, 'access_token', '[]', 0, '2022-09-14 08:57:19', '2022-09-14 08:57:19', '2023-09-14 04:57:19'),
('084be454f80a099a8feca4d170c7ec91441660c62db4f2f80d3eac6381f1b6ba32731a58cb3359bf', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-13 11:02:05', '2022-07-13 11:02:05', '2023-07-13 07:02:05'),
('08ceab3302e42b02d8ac0cba44c1cd788ee5c157a1bde25f76e56f846c0bff620b40d79d04fc2527', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-09 12:51:18', '2023-02-09 12:51:18', '2024-02-09 07:51:18'),
('0903bd486587f21947edfda5a396a0dc316a56b079535e0c0b67f3bf47b0d96ad48f68563d510f2b', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-11 16:36:08', '2022-08-11 16:36:08', '2023-08-11 12:36:08'),
('0928dd98826df35754648c4b16e185c117ad5941bb966b7baa7a735d9d3f113cbe15728e36b65d6c', 27, 1, 'access_token', '[]', 0, '2022-09-27 18:59:13', '2022-09-27 18:59:13', '2023-09-27 14:59:13'),
('0956341c6314313672a9f79d414e7b488e68fcee960ff446f0f8d35be8c7889042ca79ac13c4fa0d', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-15 09:03:43', '2022-11-15 09:03:43', '2023-11-15 04:03:43'),
('095c069154e08d5059ba0279d6705e5591ed67c7039d8c941548559439428cf598ec93028ba01781', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-20 22:51:06', '2023-02-20 22:51:06', '2024-02-20 17:51:06'),
('09b706d2c5d8c5d76d7e51d685e605ee153b3ce211e16e3c317c5c7eee09725338b6a19e4d2ef1ed', 41, 1, 'access_token', '[]', 0, '2022-10-04 15:45:18', '2022-10-04 15:45:18', '2023-10-04 11:45:18'),
('09e72c566addb1ed14af069b3184fb764be842844df1f87b049ed86a440a26c55ecc8124e2f693e6', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-20 10:42:14', '2022-07-20 10:42:14', '2023-07-20 06:42:14'),
('0a0e5f5183cb2bba95f95cc567b2980f9cf1bf4fd02eefd092128dd03903673f3957aedec6267bf1', 27, 1, 'access_token', '[]', 1, '2022-09-27 17:12:22', '2022-09-27 17:12:22', '2023-09-27 13:12:22'),
('0a16bd409ed81fc57c1853560492158519506ecc9199e850f767d1c4d3e533652b50931376f8084c', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-04 16:00:57', '2022-10-04 16:00:57', '2023-10-04 12:00:57'),
('0a242c2f08737f7a5867fa04177494fb98e6f0dc40fcebbdcee5ceb3f8421a675bfad60fe87c6378', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-20 18:34:48', '2022-11-20 18:34:48', '2023-11-20 13:34:48'),
('0a4ee6aa3d71df58cd927d4e9a576f1583f93794ef7b5ba736bbac63de4704b86eba044ef14a410c', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 12:04:28', '2023-02-24 12:04:28', '2024-02-24 07:04:28'),
('0a61603c36af50e241764dfda459ffa772aa72e3b05fdd5b8b6a1f3ac936f5f382e2ad3c1c8d4d1c', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-29 09:57:07', '2022-07-29 09:57:07', '2023-07-29 05:57:07'),
('0ab5c6838486947cee495d815fa889b524d3653ae8affa60157551b449bb6c6f4b01ed7c62a06a85', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:22:18', '2022-10-03 11:22:18', '2023-10-03 07:22:18'),
('0ab6d1ca62d646db2f6e80aa710bce53ea0da314b6566e34f1007e53576140123c3f90244a92b0fa', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-25 21:17:19', '2022-06-25 21:17:19', '2023-06-25 17:17:19'),
('0abdf77a85f68db18b991832ea9f4b31165f3f201fdb446aa521e47d5a050243f337935bdae90ab1', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-13 12:22:10', '2023-01-13 12:22:10', '2024-01-13 07:22:10'),
('0acab931c418917c10d885f3b5ceaa4e400fd0e5d5f35d5c34d2159bc02c3afafb0655082722bb24', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-05 11:31:34', '2022-08-05 11:31:34', '2023-08-05 07:31:34'),
('0ad59ceac6ec2e4397aa150342c27c1aa61fa9a9b746aed8b25ac6b8dba5da0d68add2ed9fb95928', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-11-15 16:41:17', '2022-11-15 16:41:17', '2023-11-15 11:41:17'),
('0af0bc1b48af9809f529b64633e8664ffe0be91413f3c19b6e13eda24047243cad29d1fecd7cad38', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-27 10:43:43', '2022-07-27 10:43:43', '2023-07-27 06:43:43'),
('0af6b274d27fc3cb1bdf826377aab0cc8c64a7d0df158fb58057b84261d44e5a7fa758f42ddc6438', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-16 11:55:34', '2023-03-16 11:55:34', '2024-03-16 07:55:34'),
('0b1ddff4c09c6afc40619895dada09ff068285617f353b3927609aed180e4b1c7d05f24c6f31a273', 53, 1, 'access_token', '[]', 0, '2023-02-22 00:26:41', '2023-02-22 00:26:41', '2024-02-21 19:26:41'),
('0b8aac55c922bbcf8ae20bf1148dea181f1e445273b4ad72e82e1dfc872bfb942c6c9293b46935ff', 27, 1, 'access_token', '[]', 0, '2022-09-27 08:55:57', '2022-09-27 08:55:57', '2023-09-27 04:55:57'),
('0b9ca5aa3331573889324afe7eca6113af8f94948144a35728ee4b47766c9747b2a4406732da6354', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-05-06 21:48:29', '2022-05-06 21:48:29', '2023-05-06 17:48:29'),
('0badb2b8e72a096fa0648591804fd526969a1c7590cc956369bab2bdf5cec5d8c7690f6c13d0b675', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-10 16:43:34', '2022-07-10 16:43:34', '2023-07-10 12:43:34'),
('0bc7aa44af113bdf074e872cbce01835e9e891d192c933b73c0168260c14794d85eaf1c8893a8f6b', 94, 1, 'access_token', '[\"user_scope\"]', 0, '2023-03-16 15:04:53', '2023-03-16 15:04:53', '2024-03-16 11:04:53'),
('0becd0c7e4305aad2271b083968154a7ee77c6dbdfb93032fb8b9f8719c88683aed6fa8f1436fd05', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-09 09:50:32', '2023-02-09 09:50:32', '2024-02-09 04:50:32'),
('0c079e6aaa241ba037865525c2fc4d0c87e415d4d41aaf361c8466cf33e0b23c3257722a07cfc1fb', 27, 1, 'access_token', '[]', 0, '2022-09-27 09:59:37', '2022-09-27 09:59:37', '2023-09-27 05:59:37'),
('0c446c4d44933fb5dea78fa569ba590f851dc15e392e397cd50d725efa256d90233f1043a9dbe5da', 1, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-16 11:57:33', '2023-03-16 11:57:33', '2024-03-16 07:57:33'),
('0cc98d9d749c34cb3af4bd9e1b8ed6628a3f51538a879a1686702264cfa601bfa66b09d6f7f382f6', 27, 1, 'access_token', '[]', 1, '2022-08-09 11:06:41', '2022-08-09 11:06:41', '2023-08-09 07:06:41'),
('0ccfc649e0a0563813493cf7df9a960ed67ddba1a63fe6679c7b21ce11ee72da9152eb8274750b97', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 10:49:44', '2023-02-24 10:49:44', '2024-02-24 05:49:44'),
('0cf9301aa7311763c85fab2cd1c024404ae0522884c1becd62e92b4cf93909fbedfe481545798777', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-03-10 22:27:31', '2023-03-10 22:27:31', '2024-03-10 17:27:31'),
('0d46631aae80f1633747070418e2975602fcf3889eeed38b02ce4f4f7f267eecf49a2fee1e57bec8', 68, 1, 'access_token', '[]', 0, '2022-11-14 17:54:28', '2022-11-14 17:54:28', '2023-11-14 12:54:28'),
('0d5e6faad3568958726798c8374214f7b37c814ba3ee895ea3e7e701b2bf7dde46789f3eb80d3042', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-19 06:50:26', '2022-08-19 06:50:26', '2023-08-19 02:50:26'),
('0d653208338b73c4c2510892ad98c73818ac4e57d625e562a69a853b9dc6758e105d1696c34fce35', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-09-26 13:34:12', '2022-09-26 13:34:12', '2023-09-26 09:34:12'),
('0d87f4f7a038d6982b7498abb5bdd39acc8c4816602c213c89a147f5b8f9636390c6f20ade2a258a', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-07 12:49:16', '2022-12-07 12:49:16', '2023-12-07 07:49:16'),
('0d9b51932119610613af87be45f2fc4285582a85ad8a7aa9cce9f6d9c50c6059823cf0a02e54fff9', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-10-03 11:50:12', '2022-10-03 11:50:12', '2023-10-03 07:50:12'),
('0daa7fef99cc4c32fd939c9b1e78827dc191ac8c5f6aa5ac92b4c96ac671a5fd27bb907283f34969', 1, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-16 14:48:05', '2023-03-16 14:48:05', '2024-03-16 10:48:05'),
('0dc9d04e98780e217f8ddbbed788138414d3d30612e304775628f84ad2235243b166af3cead7a917', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-16 11:05:38', '2023-03-16 11:05:38', '2024-03-16 07:05:38'),
('0dd73f6c66f7a614e85e0c73b51f385fb32f96370c02102133efe78bb4f4c0ac4d58d0a2428bf100', 6, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-17 13:49:21', '2023-02-17 13:49:21', '2024-02-17 08:49:21'),
('0e79e85b6f5003cd5ac56ef938fd2c5939cb13c410a08438d0db555eac27f267e9e717e52ee2e142', 27, 1, 'access_token', '[]', 0, '2022-09-27 14:27:31', '2022-09-27 14:27:31', '2023-09-27 10:27:31'),
('0e7e4b0b1586653bfa28a1a05a39f4f84fd9a747f83bdfed4a430e8a8a9da3e0f999bcd1bc3e9bc0', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:04:16', '2022-10-03 11:04:16', '2023-10-03 07:04:16'),
('0eb8023a13b52461020e878a4ea31bb00e2de9188030bd28553bc388172140f3542261237a766ebd', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-10 22:32:39', '2023-03-10 22:32:39', '2024-03-10 17:32:39'),
('0eec5609cc38a99638ada3f6332e30e4a71d64183cf85246083f41e2b195132435808105c2c4178e', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 20:42:07', '2023-03-14 20:42:07', '2024-03-14 16:42:07'),
('0ef80a5a6112e84efd1f884d9ff6c9b158e3b44e74124e34f63115244e79d38101f555ed71717c26', 27, 1, 'access_token', '[]', 0, '2022-09-26 16:37:08', '2022-09-26 16:37:08', '2023-09-26 12:37:08'),
('0f1d1720c284a5a18501c2229894466737bdb5129274cc72ee869a311defed062ea65324dd615d18', 27, 1, 'access_token', '[]', 0, '2022-09-27 15:09:08', '2022-09-27 15:09:08', '2023-09-27 11:09:08'),
('0f2633151b7ca1843d82ce56c6f23854a49638aae9640a320c63d19cd863ba5f1aa79e47d8b198ad', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-24 15:44:33', '2022-06-24 15:44:33', '2023-06-24 11:44:33'),
('0f511f0dbc30187891c07412fc17efbcfd832c3a14244daebfd70558944995ff6bc680a4fae067e4', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:33:11', '2023-03-14 21:33:11', '2024-03-14 17:33:11'),
('0f865135f6212763a7b23c37cf62611049beef47483678ef98a1b348c2c58ff5adb4d36108d87308', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-29 15:08:42', '2022-07-29 15:08:42', '2023-07-29 11:08:42'),
('0fb7145e8a6064071f0316efabd2d2b18b0d6997edc967e2e8231cf5c39106c4771e07d78e5b6d57', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-07 08:07:48', '2022-09-07 08:07:48', '2023-09-07 04:07:48'),
('0fcab43c5061cabee685ea44c12483d2e6b920ad121bb2e641182bb1d254f757c781835ae5d0d7a9', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-03-10 22:01:38', '2023-03-10 22:01:38', '2024-03-10 17:01:38'),
('0ff227c08af217e82d6d61650005533d331171aaecde97268e20a89176c9c4dbe3c360b53cbf8414', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-08 14:46:59', '2022-08-08 14:46:59', '2023-08-08 10:46:59'),
('1000c1eea22131a00aa39fe719ffb6cb0382aaad94dc836f241d289669e1a259a8f2e15de8f810f6', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:16:02', '2022-11-13 22:16:02', '2023-11-13 17:16:02'),
('100dd16c82cbc41a6bd241cfecaeb87566abc96b21c48686939685d501420e15060b060eb8e3f9e3', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-06 08:38:57', '2022-10-06 08:38:57', '2023-10-06 04:38:57'),
('101aa52a826cf682e0ae29281584202c749f3c8b025158e8621c4c72592306d4dfb6a2a5fefcbc83', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-09 15:20:08', '2022-07-09 15:20:08', '2023-07-09 11:20:08'),
('110fddf6111ff7866d985b12677f2392e089761f7618cbb0ca0b5de0cf409a7e165c759295bdee32', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-08-08 16:44:13', '2022-08-08 16:44:13', '2023-08-08 12:44:13'),
('113d60756658a4603a6e3aace2af1a837c4fd95945ef7034d9008424e82c8a75357da4a456bbe1b9', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-20 13:22:01', '2023-01-20 13:22:01', '2024-01-20 08:22:01'),
('1170944ef306069f3e5bdc23c972d1b706c9bd7e43ecb16640ff8de3378f95d2f34998abe0706e95', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:09:28', '2023-03-14 21:09:28', '2024-03-14 17:09:28'),
('11899125894d5234c2ab2067f26543f9625a5bf8fb77d1a9a16f7dfba0fd4a863b2902413fe4ea6c', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-03 08:57:50', '2022-08-03 08:57:50', '2023-08-03 04:57:50'),
('11c927e90c21a7e517a1380559539318aad218ba6371541c22e79c53ed32fa6c70e03b8e94ef04ba', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 20:53:49', '2023-03-14 20:53:49', '2024-03-14 16:53:49'),
('11cc8c3a8e3ab4c8ac44e8b7c9dc661a3a45454fbb9cc48bbb47c6c4c7b1b042ad33f2dd76c56d20', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-10-03 11:50:18', '2022-10-03 11:50:18', '2023-10-03 07:50:18'),
('11da3e46fc7e33b75762bb3dd50f61eafbfd1d1cc8055e33f785414ddfff8b90944c919c26933f44', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-17 21:58:26', '2023-01-17 21:58:26', '2024-01-17 16:58:26'),
('12389bf0d2ab3b7d0b85edf364e1e5fc06959421f4e051e78519bc28d6ff1ba7b9f0f69b5dd754a3', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:19:10', '2022-09-30 15:19:10', '2023-09-30 11:19:10'),
('1247ddc79a30e8e106af6880ef2d1d2a97e27c7f5ef7d2d7898e9632db5a38cac7dd8b181b371cc1', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-17 18:26:09', '2023-02-17 18:26:09', '2024-02-17 13:26:09'),
('12565ae624b00ab20eb2d748164b466429ac477c2c17bdbf16a8470d20b68c11c71b9418ec5a742a', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-09-03 10:55:29', '2022-09-03 10:55:29', '2023-09-03 06:55:29'),
('128181c1f4f9eec5c8b0ea25bb16805f46b6c70f47a6589d4e398602abc5733a391995a4c96420a6', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-11-15 16:42:19', '2022-11-15 16:42:19', '2023-11-15 11:42:19'),
('12f25ce703e1d7a8448f67db1523bdbd041a89b9b087f0003f0b708f081c1582313c6e7d35545496', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-20 12:53:52', '2023-01-20 12:53:52', '2024-01-20 07:53:52'),
('12f3b8bcfc9fe2a35140e9becfe2dc6c07bb2b1f44af616f1af24a02d2b44b9d15252ba44aed843e', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-06 10:58:14', '2022-10-06 10:58:14', '2023-10-06 06:58:14'),
('1336f544b2d9dc2484c82cff324222d99f760a4d414abbafc012e1985a6eeb8967f3f8332ae26dcc', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-03 10:31:37', '2022-08-03 10:31:37', '2023-08-03 06:31:37'),
('134eac732f3ee068d9de6838ee7713b713bd27eb32a3c337ed93e8cf230e698fe108f98614b85a3b', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-15 14:23:04', '2022-07-15 14:23:04', '2023-07-15 10:23:04'),
('1356c2e7ba528c3abc79412ed2d8093caeaabf4a608e3d3b2d27cd54733a027abc24cd3e1b035e0e', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-07 21:18:59', '2022-12-07 21:18:59', '2023-12-07 16:18:59'),
('13a34ef4c3c502e0d80fddd534c6d14629dc9fef84caed87dda849bdc86df57b7a0b4b3deffd6f0f', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-26 07:02:58', '2022-10-26 07:02:58', '2023-10-26 03:02:58'),
('13b9c8c3a8cfb92ddc243043faf20d418fa156c5c88085c1af396718e66260c2e73ffd75b11eacd4', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:24:47', '2022-09-27 13:24:47', '2023-09-27 09:24:47'),
('13c0b44e58369b56c4fadc574dc5c918e6dab4645b5431aa4ed1db83ee8c82b5d17ff3310bd5120c', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-29 11:48:03', '2022-07-29 11:48:03', '2023-07-29 07:48:03'),
('1453b5dda651524ff66102c673ea4910d9ca32cbe1e52c7b29133c224f74bb26a5d5694749ed6de2', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 1, '2023-02-09 10:56:17', '2023-02-09 10:56:17', '2024-02-09 05:56:17'),
('148098a2ee8f4c1bdf2b9a35a860ed3658819927b40850dc30e5d6d2f053311900d6275fc0a206ef', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-13 17:28:56', '2022-12-13 17:28:56', '2023-12-13 12:28:56'),
('14a2ae313d217f632979f42975b219739c94d0c42ca9c28044e12f8a23180ef5eb46bc68e9ac8529', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-15 15:55:08', '2023-02-15 15:55:08', '2024-02-15 10:55:08'),
('14c5bcf1b364a84be7d876414b977da0a250d12da3cf44748be54f11097cec7742f8b147067844fb', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-31 08:59:54', '2022-10-31 08:59:54', '2023-10-31 04:59:54'),
('14cb9464a9159fc7e4e50b0426bc9c6527d77ebab0b757f0fc3e44f77244b349fbe4b70bb0c2d712', 34, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-16 12:00:07', '2022-12-16 12:00:07', '2023-12-16 07:00:07'),
('15034354626f49f162dc8ca7393cb54e6bd45026d26187a2e72249ca3fd57ff01e3fabc640a558d5', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-15 13:07:26', '2022-07-15 13:07:26', '2023-07-15 09:07:26'),
('154f2c72dc1f0788e03e7f5b8d89d1fe546cc92d131409a2620673bd5b44d9e2afd4112664f7f428', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-11 17:57:25', '2023-01-11 17:57:25', '2024-01-11 12:57:25'),
('15643d966cca1de07a64a4b4cc3cafe48fd366f42e55b40582bd26e0c5b6e4b42ba02588beec4752', 89, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-13 16:31:20', '2023-02-13 16:31:20', '2024-02-13 11:31:20'),
('15cfce849942e89735076b460c28602fc2b1536772ae6005ba77a5981bd958b8bf0e6b77a243b02d', 27, 1, 'access_token', '[]', 0, '2022-09-27 15:10:50', '2022-09-27 15:10:50', '2023-09-27 11:10:50'),
('15e2c1125d773950f4949082e21bdd05bd70c821cdc067827c46365a5c159710904be849192fe8a9', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:20:02', '2022-11-13 22:20:02', '2023-11-13 17:20:02'),
('15ed1afdc0fc24fec30befe5c44c9c2d8d662cb7939a937e2a0aa45caf51afc803fee359e6596836', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-10 21:27:33', '2022-07-10 21:27:33', '2023-07-10 17:27:33'),
('1611a22b2cbef86e355ad2ad204f89f384463f58042ec78ce5ed1e901d98112daa3ab87a56c3af51', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:02:14', '2022-10-03 12:02:14', '2023-10-03 08:02:14'),
('16296a7fce30fda8aa5d847a7c04771b84cbfc31333cb5c0f86a949e70f2e79ca5d10e10ac13c860', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:51:16', '2022-09-28 11:51:16', '2023-09-28 07:51:16'),
('164582ea02a7bec5ee5f81cfcfa69d7a5bf3cb471264b7e4042b062f056423ef19a394c2cc03b6f8', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-03-17 12:57:04', '2023-03-17 12:57:04', '2024-03-17 08:57:04'),
('1648c4a01b41d78ebd519135e68a0e18778a632c93bdae646230adc788ecf8c14ad1869ebd46dfd7', 89, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 11:06:31', '2023-02-24 11:06:31', '2024-02-24 06:06:31'),
('166ea1f4df99d9b94b3bbca492bfeba0f7abfbb5a3e31f08e24cf46f31be2ef2cf7b566e93e1b776', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-16 11:05:36', '2023-03-16 11:05:36', '2024-03-16 07:05:36'),
('168609b6c5c5a1e3344eedd69016d0aebc0f398f92f22bdcfacb4fd57743f80a2129674468060cd9', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:06:21', '2022-10-03 12:06:21', '2023-10-03 08:06:21'),
('16ba97f818edc0ecaa9f88c029f31d8704af38a9a0d0a3e95236da9181b71128835043adb8ccc284', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-08-01 16:00:07', '2022-08-01 16:00:07', '2023-08-01 12:00:07'),
('16ed500aefddcab11893c41eab6848b6f15707c269779b43fae9599cf582405718890dcaf684b61e', 68, 1, 'access_token', '[]', 0, '2022-11-13 21:53:57', '2022-11-13 21:53:57', '2023-11-13 16:53:57'),
('1765146ceeeedf2189f6c92de1a99d5998f28251b50d54da9621e71ad5f5432b7fc67586a25b58af', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-10 22:31:14', '2023-03-10 22:31:14', '2024-03-10 17:31:14'),
('177511e0043b9702ea671cb9f98d33e78946620dbdf97dc8771e8f0a7f913b54d8f0c709a835b654', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-13 22:34:20', '2022-10-13 22:34:20', '2023-10-13 18:34:20'),
('17d0a944d6af5e2537836cb62c1712eb6b7937c3e9f35b3ce536af3898acf1bf4211a71a71be06a6', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-09 11:09:27', '2023-02-09 11:09:27', '2024-02-09 06:09:27'),
('17e93c17baa978662f4993c2869a528a6b65b6120a85b1007cb658b051fe88dc43858f029fa5a128', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-09 12:15:13', '2023-02-09 12:15:13', '2024-02-09 07:15:13'),
('184e87f5d8a3ce3041f5cdaa7e5a8ef9cd1e178e00cf0ff3122c5de191eb2d063580faaef6b8b4c7', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-17 12:37:22', '2023-02-17 12:37:22', '2024-02-17 07:37:22'),
('1862f71db05a8d24c2694019cb3fa9648008500be266ee69a06b0b62a75713f9c27a0412e3842864', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:04:48', '2023-03-14 21:04:48', '2024-03-14 17:04:48'),
('186fec38498ef2b4f56cd0a788f7c8acaf1e69183b7e65761c64d9bc49552989ae38dd089db642e6', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:06:38', '2022-10-03 11:06:38', '2023-10-03 07:06:38'),
('188334a6c34f9f038c1a44fea330a1a67a55f5ed4a9825ffee053cb3e8e41553f5a4e1e525015c3c', 27, 1, 'access_token', '[]', 0, '2022-09-27 16:39:00', '2022-09-27 16:39:00', '2023-09-27 12:39:00'),
('18c3027c8f43c84bfc22fb58f02dadbcc6908eabd8e9503ecffc061bb7580093e854e30e911f5860', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:10:08', '2022-10-03 11:10:08', '2023-10-03 07:10:08'),
('19b153ade8b20059ffcf7ac973e3634b20a48f76ba37e1bc585e4d56f149cf87633a0a2f08c8a874', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-07 21:05:23', '2023-02-07 21:05:23', '2024-02-07 16:05:23'),
('19d9f60e57ba45634b8180a1791a4d96c01a876b3eabbe4e177a2d4cd383a392597607a3859c97e1', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-08 09:09:01', '2022-12-08 09:09:01', '2023-12-08 04:09:01'),
('19f36ef11cb688f84f61d1ae34d92a19942bcb8811f36e2b539412ec273d69cc119728d60a162954', 27, 1, 'access_token', '[]', 1, '2022-09-27 17:12:30', '2022-09-27 17:12:30', '2023-09-27 13:12:30'),
('19f94c9b46752c5298e11f92f3ae9fb5e0204783dcddf5dfa1e38f23c8e716c44c30c8c15380bcd2', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-06 15:04:24', '2022-12-06 15:04:24', '2023-12-06 10:04:24'),
('1a16349252d612d37e741368fcce3d90322d753f67dab8772cc9179dbb525a7d7eef59847e729f92', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-05 07:21:01', '2022-10-05 07:21:01', '2023-10-05 03:21:01'),
('1a22c93ce5c9adede29803802767babec86a246894832720afea6bf30711381f03d98e474588420c', 68, 1, 'access_token', '[]', 0, '2022-11-12 22:42:50', '2022-11-12 22:42:50', '2023-11-12 17:42:50'),
('1a321837ea06b984dafc30d6e8d45c46b4928b96ec14b6100449453c79afb985816722244b54de5b', 89, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-13 23:21:19', '2023-02-13 23:21:19', '2024-02-13 18:21:19'),
('1a47fd1be3044074b1484aba3d42365653581477a3d93aedb8e66762ea6b55fc088ca2711ef28293', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-06 08:39:03', '2022-10-06 08:39:03', '2023-10-06 04:39:03'),
('1acbd0ab176d276d441ebfbe99a905283b1d4f21ee7970d1472339605851afa184b3e3885aac3dec', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-28 16:45:22', '2022-11-28 16:45:22', '2023-11-28 11:45:22'),
('1b60a1e5418710a74d8a31b1b0e5611a7c2564e995d9c36ac4dcb6e67962567342a531058cafbb6d', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-04 22:27:27', '2023-03-04 22:27:27', '2024-03-04 17:27:27'),
('1b8924f7b46dea3c328c71c3870ab958ca3153ce948f4070606c0ba4e95ba081b95a1236ac618ea8', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 17:21:22', '2022-10-03 17:21:22', '2023-10-03 13:21:22'),
('1b9bd48367e0f900cf30d776b6968c326af7b47680911dcec38038e4450276f23d9e9c51f4e8a77e', 68, 1, 'access_token', '[]', 0, '2022-11-04 15:57:10', '2022-11-04 15:57:10', '2023-11-04 11:57:10'),
('1c0255c678b51e3fdf4b0e2d34f9fa5fdfd1d0c846beb72f71e03ea22cac8f4e129209b3cc914dcf', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-09 11:01:11', '2023-02-09 11:01:11', '2024-02-09 06:01:11'),
('1c8a363bf6570d1266a15ef70e697e1a91600cf71d73a20a855edd22816bcf67c11622950d6f2154', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:12:51', '2022-09-28 11:12:51', '2023-09-28 07:12:51'),
('1cb07bfc65be24a82343a1c8e09647f676f8a5958c5a437ee23d25c6ade5d2348748fb32d89326c7', 68, 1, 'access_token', '[]', 0, '2022-11-12 22:42:54', '2022-11-12 22:42:54', '2023-11-12 17:42:54'),
('1cdf774aaad4fba8f24601f5eda6aa395ec0e12fa2d920a10bf93b710abb6e0d414c2d999f48fc8f', 41, 1, 'access_token', '[]', 0, '2022-10-04 15:38:11', '2022-10-04 15:38:11', '2023-10-04 11:38:11'),
('1d16e33fa1591f348276deba999586ef2bcf91fead53ebd27ac9365314dc3d5cce52a4604697145a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-01 06:16:32', '2022-10-01 06:16:32', '2023-10-01 02:16:32'),
('1d5c132b487b79d2b036446db6e3b6dce3bb39852740a8b6fa52d1e70ff8d9be3a52d32f43e8f541', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 20:53:35', '2023-03-14 20:53:35', '2024-03-14 16:53:35'),
('1da61230f5554c3f2d11b35519f8e9031917b37e2e9c749b26a1d3f50cd68c96e4d381e47ff5b4dc', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:06:48', '2022-10-03 11:06:48', '2023-10-03 07:06:48'),
('1df8d004e5d9724a048b2f84433d9f008fdc720847454990fe2df4cbea370b6063d3467ab3d5797f', 27, 1, 'access_token', '[]', 0, '2022-09-27 09:08:28', '2022-09-27 09:08:28', '2023-09-27 05:08:28'),
('1e056dd47b038562a9b9067e3aca6f6e94ee09ce3f5758ade073396e571d6b93a290279ec5a1212d', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-29 12:01:56', '2022-07-29 12:01:56', '2023-07-29 08:01:56'),
('1e5e2deadd0c88e9351fe67d1052d0c0f25fbeb616233b4edc636c9936638ae78f78086fab3922c3', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-06-24 15:06:27', '2022-06-24 15:06:27', '2023-06-24 11:06:27'),
('1f17f461820eebbaf4885d8abdebb44725fb8ae64406f48268fc4004fac676f348532a4c4a5a3ce9', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-10 13:12:38', '2023-01-10 13:12:38', '2024-01-10 08:12:38'),
('1f5b6dcd9c8446be26ed37b27a4cf14b872ca08b9827c7dd7ef4fcaf827a8022840a9df180dfd963', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-01 10:06:22', '2022-08-01 10:06:22', '2023-08-01 06:06:22'),
('1f6cd5a2bb51f2677ab88088c1d49f748fa5a0e3ffe97f3c70498ab260d8affd61c6c62c49bde774', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-29 11:49:09', '2022-07-29 11:49:09', '2023-07-29 07:49:09'),
('1fe6b49576245bc9fa9a81aee3a0f3d48e415082026807e725c329aa452f492449d84834527188b1', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-01 17:30:20', '2022-07-01 17:30:20', '2023-07-01 13:30:20'),
('1ff55f876cc8897e449bfeb34455baae24629f982fa1f9e2d22ef40081f93c692a5327b3d8f4a007', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-03 15:54:27', '2022-08-03 15:54:27', '2023-08-03 11:54:27'),
('1ff75ca9708d683991394aeb9184251a4d288eb103e3f62dd993073269bc65c07ebc9945d97c52f3', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:04:33', '2023-03-14 21:04:33', '2024-03-14 17:04:33'),
('207afd71f2ffb502d7e40f88fbb70e5d1427c291cacc71e74e3115fe6124c0d799a1c34cccb59e59', 27, 1, 'access_token', '[]', 0, '2022-09-27 09:36:55', '2022-09-27 09:36:55', '2023-09-27 05:36:55'),
('20880931f63f8d45b734d03a77ea781576d1e7b4a31f25fb536a40cf0687116b4053d3afcfa97715', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 16:23:10', '2022-10-03 16:23:10', '2023-10-03 12:23:10'),
('209cbc301b15a9f8a76c74410d5dadd5cfbc311a4f3b6dee3eba84955642e7104ccd33fc9b3302ae', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-04 22:28:07', '2023-03-04 22:28:07', '2024-03-04 17:28:07'),
('20d2a6465d3a3dadac83da1b1f2bc7c0a6eb0ad89c202916d12d5d2b0b15fb9e3188640731b1c78f', 27, 1, 'access_token', '[]', 0, '2022-09-27 09:37:01', '2022-09-27 09:37:01', '2023-09-27 05:37:01'),
('2168ec01fbeeca7fb4d54ddad721d32c0f9657c71ec82a911300faa5b6c3ac24af1ec31f13425b67', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-30 20:05:48', '2022-07-30 20:05:48', '2023-07-30 16:05:48'),
('216a50adc4412630b023f3632a0984c46463ad2e839fe369bf19f5f52628127747bbb5df4c425a61', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-09-02 13:49:51', '2022-09-02 13:49:51', '2023-09-02 09:49:51'),
('21f11d8481a418b72ddaebd6f3275c2b7a7a0160ff46f15fa9dd6c165f1c40db52f04ced1dc3f0a1', 34, 1, 'access_token', '[]', 0, '2022-09-10 22:45:03', '2022-09-10 22:45:03', '2023-09-10 18:45:03'),
('22017c2ecf2fc67d73feb1629bbd2403fb880fa0adeed3e2100c2e76d3257e52ed89813e3e3dc3db', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:09:37', '2023-03-14 21:09:37', '2024-03-14 17:09:37'),
('224934f942cd25be6b882e6297a59c47668c6ee03372a690006eee62979ec702e4b0c418d0e3f589', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-09-29 11:59:05', '2022-09-29 11:59:05', '2023-09-29 07:59:05'),
('225c7465c59d4e348fb56f3bc7ee50d3008e06c60cd13507bb8b0e9128948a4d2d33afd550ac6e52', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 10:36:39', '2023-02-24 10:36:39', '2024-02-24 05:36:39'),
('22711e12b0daeabd01401c98ae6890833fceefd13432e421ca275a58487aee30fd0dd14209c785a3', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-11-03 06:22:31', '2022-11-03 06:22:31', '2023-11-03 02:22:31'),
('228a4a42681373b09f1b07120419329a963146068b7071bd81eaf47dbf9eac8c9ee3d3556e0d3b13', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-16 14:19:55', '2023-01-16 14:19:55', '2024-01-16 09:19:55'),
('22b3c37495743acdbecd5ea0fb1c036c28c0dac90f4d7a67d7d778f977731edc05a9fac6f1505330', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-14 08:43:52', '2022-12-14 08:43:52', '2023-12-14 03:43:52'),
('22d396cdacd14621d2d2acd93d260efe88376ebbdb690ffecad5eee8cafb8b14ee9220be77b28ae5', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-04 15:51:25', '2022-10-04 15:51:25', '2023-10-04 11:51:25'),
('22dc48031e561a5bc7a0d7c57b55a830719ac47f8ed87771b23a58de45a8e108acff9c29e20c30c6', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-15 14:57:38', '2022-12-15 14:57:38', '2023-12-15 09:57:38'),
('22e6ea8734e1bc08a39be8f9742db4d9775c85f55784118cfa155f0097934dda35df23cbaf3f1b38', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 16:34:55', '2022-10-03 16:34:55', '2023-10-03 12:34:55'),
('22f68d403d963cb6ab905609179647356165abb8a15990fb3d9732d39302b00c2429f25fc47a8c07', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-05 14:48:06', '2022-08-05 14:48:06', '2023-08-05 10:48:06'),
('236f8a419c869a8a345fa38a78907ce78b1c9424f1c4aa3e80b20b231cd02932b02abe35c5b26ac3', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-03 15:02:43', '2023-02-03 15:02:43', '2024-02-03 10:02:43'),
('239c6d693cb8a13490216c681baa78ee4824a53ee4abc4d490df1d10e5797baa619003c9ad40c9ae', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-05 14:28:17', '2022-08-05 14:28:17', '2023-08-05 10:28:17'),
('239fc7d37583b0c784f07ef8c5ae28b8fccf755e3881f90c0592a53f2545bfbce8d0c7250acb70e8', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-03 10:37:12', '2022-08-03 10:37:12', '2023-08-03 06:37:12'),
('23e82e2775a4cf05ce81a35193e388ecf4567dfc1f8bd0e950c3b553854452175a6fe397df896abd', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:42:41', '2022-10-03 11:42:41', '2023-10-03 07:42:41'),
('23fb0e5d60d1213b9471e2772a1f875cd811037f119cdced3dc1944815ad738932bac235b2b11e95', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-10 22:31:34', '2023-03-10 22:31:34', '2024-03-10 17:31:34'),
('240030cc91e6f32dd38809e860fbe74e789830e5e309513340c7c6f3e5f0ba475eaaafbb14fc34f0', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-09 12:11:00', '2023-02-09 12:11:00', '2024-02-09 07:11:00'),
('24086a56a3dcf1ac21f9c6beb81babf4ba200b242f32c21d3d456639b5ff6ba61535c662b97922d7', 89, 1, 'access_token', '[]', 0, '2023-02-11 17:33:09', '2023-02-11 17:33:09', '2024-02-11 12:33:09'),
('241145f5d4a77e2cca7085a3054b4159f21680d226e55a2a90dee4afdbfa06bdb5af137983036db8', 92, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-10 22:07:00', '2023-03-10 22:07:00', '2024-03-10 17:07:00'),
('241a11c08e20ec130c69485bc3887527b961bff9ab0a1768fb6f710f7c0bec7d313296cbb386cc9c', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:01:39', '2022-09-28 11:01:39', '2023-09-28 07:01:39'),
('241c07b0726fdd06ca1fc91b1c809cf806e6b7a8694cda1dd1958334e6b08d1475e763e89155df38', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 1, '2023-01-10 08:38:15', '2023-01-10 08:38:15', '2024-01-10 03:38:15'),
('242f15aba4a2aa77d932505c90d0abedb28294e72e8c95842ab8c025a62ed09de12c62f99988f619', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-29 13:45:15', '2022-09-29 13:45:15', '2023-09-29 09:45:15'),
('24388ec722667248ed3b6eda942a47f9407f01742a3c67721faed5cfa871ab94187fd2ad7e903bde', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-17 23:40:29', '2023-01-17 23:40:29', '2024-01-17 18:40:29'),
('243ea7370bc42face810f3868244128078291b7c4fa1e2b2d69bb1acc77f1c40da25dca4f6a76146', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-27 16:22:51', '2022-08-27 16:22:51', '2023-08-27 12:22:51'),
('2473c1b80846ca7a27ec6dfae5660c0aa26193cecb815e27b7bad6ca9c22ea181334c40920804ab2', 91, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-08 22:36:56', '2023-03-08 22:36:56', '2024-03-08 17:36:56'),
('24752a78605403497198dd173c74784b90184ade0ba609b2e503a81a410ff1abce7cf6b7560b0909', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-22 11:44:00', '2022-11-22 11:44:00', '2023-11-22 06:44:00'),
('247d5e2618526dda9d555d4f6457cc8040076dea4e80920f3ef900ee2119ea9cb7db9601dd0665db', 27, 1, 'access_token', '[]', 0, '2022-09-26 16:44:00', '2022-09-26 16:44:00', '2023-09-26 12:44:00'),
('24df0deab4322df2d99a3e1d6bd5619c782bc97c20f2f895b82b71e398d95b774c43ea0e935c378d', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-12 06:25:27', '2022-07-12 06:25:27', '2023-07-12 02:25:27'),
('24e2cc710b74fe183f2b0116ede4c543b51929b498522ac990ddb7bd1d011c21cd97bbef44ba4449', 91, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-16 15:33:31', '2023-03-16 15:33:31', '2024-03-16 11:33:31'),
('252f69f3a5ea63ad84cd1e8ba6dc79619efe882f816fbc897c3b42f662193591c21c950ae400a377', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-09 19:50:01', '2023-01-09 19:50:01', '2024-01-09 14:50:01'),
('25420faf8278861a74d8b78eec96b58f1a974cc04eb77c093e6423a4d1c8996bfc7706f756789b91', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-09-05 13:55:18', '2022-09-05 13:55:18', '2023-09-05 09:55:18'),
('255532e7ec4b72d4b3947c0bf4f61a3a6688557d13c035f9fe4b31bffe6b8f3a49fed11cdfa88db6', 91, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-08 22:51:53', '2023-03-08 22:51:53', '2024-03-08 17:51:53'),
('256ec1bd8091a0c7be6b9a7654cf46a3a79ad5bce675475df5528b21071a7a63c6c9f36057b52d3e', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-04 16:00:53', '2022-10-04 16:00:53', '2023-10-04 12:00:53'),
('2574d743cf8b01c0059c9579f567663715e4e164b20c0b88acac11d39a39f4088c6abfac2f20f1d9', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-01 16:00:17', '2022-08-01 16:00:17', '2023-08-01 12:00:17'),
('25769a0358ab2ba4cec8387ae581b50f50db438265f51b04e70257c27b46c03d9604c131f09fd420', 34, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-06 07:27:53', '2022-10-06 07:27:53', '2023-10-06 03:27:53'),
('25b985ec805bf92d027fa25b4bc5e93bc10ac386351577fe9197a9b1512a8a6e68127f48cd4a6731', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-07 12:50:46', '2022-12-07 12:50:46', '2023-12-07 07:50:46'),
('25ef532535383b1ed11439925cbdfabe12a201e2c53543c38683b663972adc7e80b4a3c1799251a1', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:09:49', '2022-12-13 22:09:49', '2023-12-13 17:09:49'),
('25fdae2fff185a6586d042e087859a2f4dcf86c52eb6dabb1433ca38511d18f36cd527cd0a2cf1d6', 27, 1, 'access_token', '[]', 0, '2022-09-27 16:26:49', '2022-09-27 16:26:49', '2023-09-27 12:26:49'),
('261bb01a6e3c2099eaa52f40fda9f9594e2f6d8b1f1c610211d90811f3fd7ef9d98deb1e1c6ab247', 53, 1, 'access_token', '[]', 0, '2023-02-22 00:28:03', '2023-02-22 00:28:03', '2024-02-21 19:28:03'),
('2631ec75ee97eadff51f704f9e5005cfdb2b3fb4fed7db4cb6292144264087ec2f7324a0f792c360', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-01 06:15:41', '2022-10-01 06:15:41', '2023-10-01 02:15:41'),
('2636b4753cbe7eab3c364c90e612f92e6cacf525f6dee281b4696eddee21b87135b4f5b8f9ee69dc', 27, 1, 'access_token', '[]', 1, '2022-09-27 13:46:26', '2022-09-27 13:46:26', '2023-09-27 09:46:26'),
('26398893090d60c81edc954a08904c2b452f696223468c2363e24d658f88703f0d9d1147b8deeca8', 89, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 16:02:55', '2023-02-24 16:02:55', '2024-02-24 11:02:55'),
('26830f1bfce4da83313babf4b2ffe386e2fe92e49dc5379e14de05e22872983be13170b80dee314a', 34, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-27 11:16:12', '2022-12-27 11:16:12', '2023-12-27 06:16:12'),
('26873884ea2da96fab7c20a1080e66b33b7dca6eab16b60ee6e2319218c9f250ad8d99a37a08f6f9', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-01-09 02:58:08', '2023-01-09 02:58:08', '2024-01-08 21:58:08'),
('2735d0f75e0f92c5e051ec552800d5326fd3fb96168b9afac41492a6a3bcab12d3b8161aa459fb9a', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:21:24', '2022-12-13 22:21:24', '2023-12-13 17:21:24'),
('2737fd4c29b12dfb3f747e317b4bdfd133575519e556ab1400ab0e78bb568bcec02c312feafbaa20', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:26:01', '2022-10-03 11:26:01', '2023-10-03 07:26:01'),
('276c9275b44576527863cba0a9d8f2fa2b1a9c6e364094e9b1bfe86e2197d90d37c478dd7df6727c', 6, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-17 13:49:43', '2023-02-17 13:49:43', '2024-02-17 08:49:43'),
('27bc87526c2a273526eea548c64dc6518a6726f9df0548e26ae0fab4a98418f4dcdd97982941ac9a', 27, 1, 'access_token', '[]', 0, '2022-09-27 18:32:13', '2022-09-27 18:32:13', '2023-09-27 14:32:13'),
('27c3e001b496e480b42c31ae1a18e9b7d30521b18f7acd2aef46aa1669620e869f1999c48fc854c1', 27, 1, 'access_token', '[]', 0, '2022-09-28 15:30:33', '2022-09-28 15:30:33', '2023-09-28 11:30:33'),
('27c8485698e5f4817eeceebeda70f0d8cc6bbe1e317d7569341967e691a737d8989613043b84a8ea', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:48:18', '2022-09-28 11:48:18', '2023-09-28 07:48:18'),
('28039dab31472fac5acbf6c7a86ef2e126cc5a72edd05f24139b8b85ce631bdeafe4aab58c346514', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-16 11:05:33', '2023-03-16 11:05:33', '2024-03-16 07:05:33'),
('281085faff3879b4a624ff84fe6aa4b7ca1b87019478c9fdea1a3caf7fef42e87e636d33820528ee', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-05 11:38:12', '2022-08-05 11:38:12', '2023-08-05 07:38:12');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('285011a249de59b882284d31361dd02f9da75c80c8159df0840483cffdc30e10713f08d8d1284e90', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-15 16:41:49', '2022-11-15 16:41:49', '2023-11-15 11:41:49'),
('28597aaf7d0cf5e4dc8486ea552f67da8a0f91224aaea85bc0def1d23d02d026c27de18676a8d4f9', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-20 20:37:17', '2022-11-20 20:37:17', '2023-11-20 15:37:17'),
('28953a549f799c089ce39442852e867f1e62f6c5703d82b09c7b1e78c6bc75a8133514c4ad34da69', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-16 10:47:24', '2023-03-16 10:47:24', '2024-03-16 06:47:24'),
('289fa23d5f9c881f62fb7cd3d3b26a06fa63cff2592c83df62a4e4ededadc87c99d88de051602981', 41, 1, 'access_token', '[]', 0, '2022-10-04 15:37:50', '2022-10-04 15:37:50', '2023-10-04 11:37:50'),
('28a8197dc03a782a07e6121ef6073db637e5a11c53f111264a621b51778febbf63ff3e567b62e5d9', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:03:50', '2023-03-14 21:03:50', '2024-03-14 17:03:50'),
('28b632d2329b3774362701e03fba56dca192bf7c613761f5cddabd7a27ee854b633e16c420d0c5f0', 14, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-12-13 22:59:52', '2022-12-13 22:59:52', '2023-12-13 17:59:52'),
('290501a5e5cc305ef2046e4336dde5827f1b02ba47a47fd6b60ab3e68dff200d2eb346e0b167a803', 6, 1, 'access_token', '[]', 0, '2022-05-15 14:38:21', '2022-05-15 14:38:21', '2023-05-15 10:38:21'),
('292fa95f0bfc8e1c74592f5b02686928683eae3445e9ead9d093a397083a3b2a296dc8c059b8727a', 27, 1, 'access_token', '[]', 0, '2022-09-27 09:24:21', '2022-09-27 09:24:21', '2023-09-27 05:24:21'),
('295bf04021dece0bdc6d50c0b389aaa0fa687d3cba2ec7e1dfe57b403bbf1e4575a170366a29cf68', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-20 17:46:45', '2023-01-20 17:46:45', '2024-01-20 12:46:45'),
('29612ffc9ad68d4e408d2af0a1a370b0dd33021870e8f4bce9bd838a7454e012666da5ec8f13bad2', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:35:46', '2022-12-13 23:35:46', '2023-12-13 18:35:46'),
('29b69f9ec1e6dee779ba622ac64c41b1af75bacfe745c95aae25ca7c5b18fce7adfabc298227cf4e', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 12:04:25', '2023-02-24 12:04:25', '2024-02-24 07:04:25'),
('2a06f8dc9f9ddaa92849075856b2d05523241e1c2d7d650414b321c57f1ff74b03788b4e6a8c3b50', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-11 14:05:33', '2023-02-11 14:05:33', '2024-02-11 09:05:33'),
('2a752e2d6f9c799ddbec9a5a4a5f82b6d65f1af2103c9b6d5a806790e176d37b5019ba1b10ffa68c', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:02:50', '2022-10-03 11:02:50', '2023-10-03 07:02:50'),
('2ae4e9357e1683b7d7ad1a48eab1d1541d575bd47fce0987e7c9f18666f446443e4a07138f97a3e8', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 20:41:33', '2023-03-14 20:41:33', '2024-03-14 16:41:33'),
('2b12a64abf5881c9c31ba559be139ec9baf4175d224f2895c0122ba6917827cd52265b11e6d06d6a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-06 10:58:02', '2022-10-06 10:58:02', '2023-10-06 06:58:02'),
('2b3b3444e5d7e7419fd16384e95176c0d27122aabd036259fb98a5588c618d4aa014c644a46b2bdd', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-07 14:28:31', '2023-02-07 14:28:31', '2024-02-07 09:28:31'),
('2b66a5fd1270b28164d03965c07aeebf5e6e9af78d7fd3faaac2b9c6219d90b8567ad1a5fbc5d542', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-06-24 15:21:16', '2022-06-24 15:21:16', '2023-06-24 11:21:16'),
('2b83edb5b3ea3b04626b7d660d08c522820343f474395e4b4b2e38ce2e73f04690e7a0e4d5733357', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:23:25', '2022-10-03 11:23:25', '2023-10-03 07:23:25'),
('2b9bfb253c82f1c186cfaf13a618cc081d8ac1f096bf6719b0d4303c3ad80bb294d5f3dd315c6a49', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-20 20:43:31', '2022-11-20 20:43:31', '2023-11-20 15:43:31'),
('2bb9bd3f4f9ef182d37bec0dbf9dab82585cb0318a6f6e14ff4fbbb747782acae8b7e6ff568e1bbc', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-28 21:57:07', '2022-07-28 21:57:07', '2023-07-28 17:57:07'),
('2c51f3aae08061a51af49c186c9f804e44784aea911ff404d99447440d9b76e762041d5e4a51a777', 27, 1, 'access_token', '[]', 0, '2022-09-26 15:32:15', '2022-09-26 15:32:15', '2023-09-26 11:32:15'),
('2c8695e0885bf1ab85447f5d13fa09a96239f14f43cc497f32835dc480c0edd2ec0fd5039affbb93', 27, 1, 'access_token', '[]', 0, '2022-09-27 10:31:08', '2022-09-27 10:31:08', '2023-09-27 06:31:08'),
('2d28f3d20e0a28a11fd5ed1071db1ccfdef2324d1ad12d5ff2cf6f49d11da32da0f8a63948f40c65', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-29 15:06:03', '2022-07-29 15:06:03', '2023-07-29 11:06:03'),
('2d325ccc502760ed0dbff04fe885f7fdcceb03621b5804794f444a856e0c55f50dae1c2a5bb4b278', 69, 1, 'access_token', '[]', 0, '2022-12-14 02:15:22', '2022-12-14 02:15:22', '2023-12-13 21:15:22'),
('2d3dabdb571a6ba6a4a54a63ac46ee0b4b70b46dcbb07bfa9d9798b39d98dcf0e11df1f7789d0f70', 36, 1, 'access_token', '[]', 1, '2022-09-14 19:40:42', '2022-09-14 19:40:42', '2023-09-14 15:40:42'),
('2d57cb5509184a23c1524ead94efaba710861055a497bed2656236d5db2070de393a290fb9fff38b', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-03 13:58:52', '2022-08-03 13:58:52', '2023-08-03 09:58:52'),
('2dc322e0f5a1687e8145069283d9b49b0a529a3a800a5317055c92b1d870bee02c4924c7564aad55', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-09 11:01:43', '2023-02-09 11:01:43', '2024-02-09 06:01:43'),
('2e324e926cb763d3a53d887c761d0ef1dadbca409b2fec1ee5eae6932de253f90b41609826ae34b7', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-19 08:07:10', '2023-03-19 08:07:10', '2024-03-19 04:07:10'),
('2e3ea8891bbd32f08922c6ccce36ff90ea7ee49764dcbdb8e14a2ce88c586145e522f2e64ac0ae54', 34, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-06 07:24:39', '2022-10-06 07:24:39', '2023-10-06 03:24:39'),
('2ea9d7815fda16b41a0c46d9ba193cc58adcd502736927f7b441cb90e44e47feae6fc0ef4fed0796', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-01-20 13:45:02', '2023-01-20 13:45:02', '2024-01-20 08:45:02'),
('2ebd6cb03431545e6145a508d78daa0df2e16cc7a21281d03b09980ce37b418ead6bddc471e644d9', 27, 1, 'access_token', '[]', 0, '2022-09-26 15:24:16', '2022-09-26 15:24:16', '2023-09-26 11:24:16'),
('2f0f20741ffc80c68d69413ffc550753e9e268a8e4e8e668aa2f43fe3228d83a73688bbc57ab6635', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-08-18 18:29:08', '2022-08-18 18:29:08', '2023-08-18 14:29:08'),
('2f1e9312ab605712eaa63af8f4e9f1b90769236de51e5955c832f47694fe123ca451fafc8abbe17d', 36, 1, 'access_token', '[]', 1, '2022-09-14 19:21:27', '2022-09-14 19:21:27', '2023-09-14 15:21:27'),
('2f302b9274855243d03c1a535c65e8451285c62b4367a1a330778d5f84983291dbc5c7ae564d47e4', 92, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-08 13:40:47', '2023-03-08 13:40:47', '2024-03-08 08:40:47'),
('2f694cdea67b315c7c7d17c56bdf5ea2046e08c06fad48b8ea5ea67d597d23b29c93973d2bbead3c', 93, 1, 'access_token', '[\"user_scope\"]', 0, '2023-03-16 11:36:05', '2023-03-16 11:36:05', '2024-03-16 07:36:05'),
('2f9887ab0665ec7d7b2620e320850e0a0515fe358ec87c7ebe9ad72ef8c79df8975a3b6ded82ee73', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:08:25', '2023-03-14 21:08:25', '2024-03-14 17:08:25'),
('2fb8a5206ee77ecf45f6a08ef9c89066ce8144dbf8e2e7a4b73f162a70d4589c29c6fadd42287524', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-08 16:35:10', '2022-08-08 16:35:10', '2023-08-08 12:35:10'),
('2fbfd35bb3b7d9a792b8867b130f28430a1d513dc269fc35fce6090d9de975ab6afd1b972832fd60', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-07-23 17:15:26', '2022-07-23 17:15:26', '2023-07-23 13:15:26'),
('2fce210123d75246674a63b5e40c04206854718613f9c3866e8d6cab804100b1af7e50fe089b3152', 41, 1, 'access_token', '[]', 0, '2022-10-04 10:22:21', '2022-10-04 10:22:21', '2023-10-04 06:22:21'),
('2fda37848ae6005031e2f292aeef8f668212dd5136107e454dabfbb8112c865c5d252334f010536b', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-11-28 11:20:32', '2022-11-28 11:20:32', '2023-11-28 06:20:32'),
('2fe90a8c221551521cdef5e05600a88f30785223b16a77d8dc9662c7045dea757f8dcabf6d11f65c', 27, 1, 'access_token', '[]', 0, '2022-09-28 12:17:53', '2022-09-28 12:17:53', '2023-09-28 08:17:53'),
('2fef3048dff5ad1fc8d413c9fffe3b0f9dd66fd356474682f92c9736071ef5ede4eb8c7103322bfb', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-01 17:30:55', '2022-07-01 17:30:55', '2023-07-01 13:30:55'),
('300de1307d4e7c598df395dddad2bef34ca38277f4f50289c0af121d77ace6e114f3aa224e92f075', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:09:31', '2022-11-13 22:09:31', '2023-11-13 17:09:31'),
('305eff4b53b778d4b26ce931723b7e5d7b141100da0e40281026a25ca29ec093bbb827049da120e7', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-20 13:18:43', '2023-03-20 13:18:43', '2024-03-20 09:18:43'),
('307650e85f4060ab3953bde9fc0ea4da29939b5de721f43ce4742396b12f15e49cc4254ff03cbd88', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-11 14:21:07', '2023-02-11 14:21:07', '2024-02-11 09:21:07'),
('3079c91ebe30105a5901d92364e17923545c91644087aa41fd1e955ab73d204ea6efc94dfef536e8', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-03 15:02:46', '2023-02-03 15:02:46', '2024-02-03 10:02:46'),
('30eae2909f6b220f8447e6a7e17c0ede17ea3e0edb78162496c03ea72348073023f69ad309261678', 27, 1, 'access_token', '[]', 0, '2022-09-27 18:34:38', '2022-09-27 18:34:38', '2023-09-27 14:34:38'),
('312f9c601f865a8fc6a194ffd027689775da1cde6b1c745497c1384368f854a8e332087c86d0c5cb', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 16:21:09', '2022-10-03 16:21:09', '2023-10-03 12:21:09'),
('3184746be96f83291182dc49a52f80238f8f9db69998575218053a33c153e05d1c88064d0693053e', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:24:50', '2022-09-27 13:24:50', '2023-09-27 09:24:50'),
('31b5ee21615500fa6c6633c7ddcdef976b57622eceb11232a49b833b84f851fdea035b0c45793365', 36, 1, 'access_token', '[]', 1, '2022-09-14 16:03:15', '2022-09-14 16:03:15', '2023-09-14 12:03:15'),
('31c65345226505935eb351b3dd9014bda626e79cd4a5bcc9afb9c00ae0528cd28b45e77aa9ef9e4a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 09:50:03', '2022-10-03 09:50:03', '2023-10-03 05:50:03'),
('31df00c4a65ed207085b4a60e18a8e7644ecbab1824e1fac9cf7aa50aae2059ea78fb4d036c5300b', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:22:33', '2022-10-03 11:22:33', '2023-10-03 07:22:33'),
('31fac2f997c523002dd80304e04ea66bdf4ed0682c95716673b29cff4859aaf2bb0b8ec726845cf3', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:16:52', '2022-09-30 15:16:52', '2023-09-30 11:16:52'),
('32197b3d47b3555f415e828cda666d94f85696e9f0ac39529aec9bbd51f22426720cec5fcc65f27e', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-08-18 11:51:37', '2022-08-18 11:51:37', '2023-08-18 07:51:37'),
('326a6d4386cf04b5b710602e2bda665518ad67a1cd0b9c6308afa60d91c3183b40372668215c78b3', 27, 1, 'access_token', '[]', 0, '2022-09-28 17:34:41', '2022-09-28 17:34:41', '2023-09-28 13:34:41'),
('32ab468073d8a4e998579e34a80b1fc88005599d74ab35deaa08abc40b60891f86337e97d63bc903', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-09-02 16:56:11', '2022-09-02 16:56:11', '2023-09-02 12:56:11'),
('32bfdeaa18bf234f09f2f2046b469bc8c1dc641b09e11f7a4b315b7fa93629299926ad8a38c61914', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-02 17:30:17', '2022-07-02 17:30:17', '2023-07-02 13:30:17'),
('32cc47a1b0989e002637a1ebe021220297af7dfe1e577635926e0c517a7a5c2fcfcb5c9f8125b021', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 10:33:42', '2023-02-24 10:33:42', '2024-02-24 05:33:42'),
('336ee69fb3fb878ca97ae915a5f54ebd6bcca7fb03318bea7e94aeec19402bc7a7598cae434824eb', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-11 14:21:09', '2023-02-11 14:21:09', '2024-02-11 09:21:09'),
('3382eebe46648a345d4ea3cbbf2767792c49100d5ecec272e5ca087c2732275eef32146f252ad661', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-09 12:26:26', '2023-02-09 12:26:26', '2024-02-09 07:26:26'),
('3471f3b730a87e4c028bd70b1256268d5e0d6c684674ec1da5e5dcf2eb9b65aca53a4442c3fad710', 27, 1, 'access_token', '[]', 0, '2022-09-27 11:01:37', '2022-09-27 11:01:37', '2023-09-27 07:01:37'),
('34c942d844dd9f47e68206b7a0de33a70162dbcdf4cba24a2ee1fc2737c154c2f2729e55ea6494b6', 27, 1, 'access_token', '[]', 0, '2022-09-26 17:01:54', '2022-09-26 17:01:54', '2023-09-26 13:01:54'),
('34fa8caefbb7c928049df9db215032c1589527c41cce74bb37753f356e8745947251d7a2626dc5f4', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-09 11:01:34', '2023-02-09 11:01:34', '2024-02-09 06:01:34'),
('35191c6032a2a26add18ef66b43441ac82221082be1c829bd86285f63a88b1866e9fe0b0b21da164', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-03 16:17:29', '2022-08-03 16:17:29', '2023-08-03 12:17:29'),
('35e86c7a9924c72a3b3dcc8cf20bfe8594b69033fd6c0edd4756b97a1d5053d3cdf50b6160176698', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-06-24 15:18:52', '2022-06-24 15:18:52', '2023-06-24 11:18:52'),
('3602328fe99cbae93edc2d0ba09ef7b9eca0b137ab5c936ff655438bd622a9c1448fc65e365d0bf8', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-21 22:44:16', '2022-07-21 22:44:16', '2023-07-21 18:44:16'),
('36450bd4fa360d355a8216d1033785d4311c0325a16153d1bbdac64aa4c7d864def16ea4051d01e3', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-09 19:50:12', '2023-01-09 19:50:12', '2024-01-09 14:50:12'),
('3660e65efba78cf7a67d826062948f0f88f6f4832f5c1edf163f7aeb564d19e4f3c4af6d33eadcaa', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-28 12:01:45', '2022-11-28 12:01:45', '2023-11-28 07:01:45'),
('36699fc2deba0fccb48bad3fd0b614d0e20e4388b236a8325ce2b791374434534bb278b5b983e4b4', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-16 11:05:40', '2023-03-16 11:05:40', '2024-03-16 07:05:40'),
('3688eea17f93e278490ff1ac7a0ef310cd9cbcd84f941785d06692c540232f9d3e2a55882426f673', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:12:58', '2022-09-28 11:12:58', '2023-09-28 07:12:58'),
('369d03616222a9c48ea0a79bb1207e614e074fdd107731cf11798d9c5b6e5947f3320541976ff621', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:02:49', '2022-11-13 22:02:49', '2023-11-13 17:02:49'),
('36d9478c6e32b64dbedc286c5ef79967c777048cdf7e77bdcc058ace00d1772530c252fb3e58bbdb', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 09:48:35', '2022-10-03 09:48:35', '2023-10-03 05:48:35'),
('36e31fab6bfacb72863e7a1bd9d50a4795185958f0014debfc8cdb955ba8ad0aa286c01eadc3af92', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-21 13:35:53', '2023-02-21 13:35:53', '2024-02-21 08:35:53'),
('36e5e4174a3d7aff8cab2f3750a914b3abcd791187d8b3d1efae96f7a0c05feb1dfb0bca6e5e4099', 27, 1, 'access_token', '[]', 1, '2022-09-26 15:01:48', '2022-09-26 15:01:48', '2023-09-26 11:01:48'),
('3712916e83bf58be65d78a907046e271a717ae392f546b90b7509c58b02997d0c4416191552fe140', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-11 14:05:41', '2023-02-11 14:05:41', '2024-02-11 09:05:41'),
('371d289447e3ea792ef0863d87901e69869e042825c3d1835c3a43d1cffebff43849a1583bd67685', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-15 14:57:41', '2022-12-15 14:57:41', '2023-12-15 09:57:41'),
('3762a75feb70a7544faf1bc0e5514b61416fd9366a9f643ff9d575a5fc777f341f051da19584c6ff', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-07 12:37:28', '2022-12-07 12:37:28', '2023-12-07 07:37:28'),
('376fea68fb54ffea5710c2677413cbcd96aa23c61d4425438d4cc95e0dd76fe6c9afbcdc6f662fcf', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-31 08:57:04', '2022-10-31 08:57:04', '2023-10-31 04:57:04'),
('3796e7b23fff090ef1860cca9235f410ca2026d641dba618d50e59241fc94cd9f53390dcbd31965c', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 17:32:23', '2022-10-03 17:32:23', '2023-10-03 13:32:23'),
('37c37e68f945bec24a80cbf1e0a90d5e8b3e9950fc24107143667eeaba02f456c08219b90c5446c7', 27, 1, 'access_token', '[]', 0, '2022-09-27 10:30:17', '2022-09-27 10:30:17', '2023-09-27 06:30:17'),
('37cd320693a84cdfce7eae8e693c62c4521704eb8c2211a01b955b34732c42433a07721c243d1038', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-17 15:14:36', '2022-12-17 15:14:36', '2023-12-17 10:14:36'),
('382ce7ee67c6c709beca25953555e5f4c5b35b0cbb89345044a549b009c2bedc4e7e1aae77fc5ce2', 36, 1, 'access_token', '[]', 0, '2022-09-14 11:01:45', '2022-09-14 11:01:45', '2023-09-14 07:01:45'),
('3838b7290aae6ddb9d51dc2a93972f623b382fc9b61afdb21d6543561eb4acf8d516e97ba315969d', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-10 13:02:10', '2023-01-10 13:02:10', '2024-01-10 08:02:10'),
('38672ae07fe71eb35273cc24a3f329712846910d511b29e17586826c80cf8eaa92fe93d5d1364cab', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-16 11:48:59', '2023-03-16 11:48:59', '2024-03-16 07:48:59'),
('38a3e1e88034934a49ff7635c28f1aed29505379ca9a3130926e23535cd0b710f4fdff05fb2ec7f2', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-04 15:51:34', '2022-10-04 15:51:34', '2023-10-04 11:51:34'),
('38c099a9e4c4fd07bad2de1afcd359c0f81b79b62691d6eca937592c11e0f9ff0cf416bf275713a8', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:21:26', '2022-12-13 22:21:26', '2023-12-13 17:21:26'),
('38ddea7c64f47a04b4fe2f399f1e91b9e6f0f69d878f6e716460b59dfa2c4b04566a153bb9ce7b8a', 53, 1, 'access_token', '[]', 0, '2023-02-22 00:27:57', '2023-02-22 00:27:57', '2024-02-21 19:27:57'),
('38e54e72a67f3e72430907a987bf276550201a0d0a1697d67bc2706e4021495e767fdcb97e515aae', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-08-18 17:31:13', '2022-08-18 17:31:13', '2023-08-18 13:31:13'),
('394841c5f55d616574a49b5798df077963d3fa253a21d438247fb63b77b2b4af67a1e8484cc9d4ac', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-13 22:34:22', '2022-10-13 22:34:22', '2023-10-13 18:34:22'),
('3949779343a8bdaf40579c0cf3cfc8e09c9930f5347d1ee029a0823b8271b0cedb66302b134984d4', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-15 13:05:51', '2022-07-15 13:05:51', '2023-07-15 09:05:51'),
('39ba90463a7f2ecd1ebabd3d4db571f861e83e5f09f12471dd8a2ad5e88ab17813a4c00f1ab9de78', 27, 1, 'access_token', '[]', 0, '2022-09-28 16:09:29', '2022-09-28 16:09:29', '2023-09-28 12:09:29'),
('39d32000e19739833ad9a1934335c6ef785038554a31de1ddd85b7fe8e5b89316129a32dd6388ff7', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-07 09:25:45', '2022-11-07 09:25:45', '2023-11-07 04:25:45'),
('3a0285d263f52a7da0bf22ef7294f1271f150f37f7c4702a5b655e856f9e21bc53cdbb7facb962e8', 27, 1, 'access_token', '[]', 0, '2022-09-28 10:28:48', '2022-09-28 10:28:48', '2023-09-28 06:28:48'),
('3a128636f3b798de6e0b0784e0a86f39576380467b56e931ae9f7a3f3b0f63fe8620b22b353b01fc', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-11 14:17:21', '2022-08-11 14:17:21', '2023-08-11 10:17:21'),
('3a412652dec971281b4149fd3d463009c31de2504e0c28f42f9900daac74a9d6eb8b7a15c292a499', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-17 21:41:26', '2023-02-17 21:41:26', '2024-02-17 16:41:26'),
('3a758cd2f6df247539e0f42224a2eb4d3ac5a3600c2ee320e88541bfefa3ff48a3a078394197a395', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-01-09 02:58:05', '2023-01-09 02:58:05', '2024-01-08 21:58:05'),
('3a78a31f913da8724e698942c02c25d6253101c746a97c3fef7090a84ad00fdf4efaf14f9311905e', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:21:15', '2022-12-13 22:21:15', '2023-12-13 17:21:15'),
('3ab6b756f39e055a971f5411921d9101e312006e8d7e3726de13725a51eb433840e5fd68f69b36fc', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:22:22', '2022-10-03 11:22:22', '2023-10-03 07:22:22'),
('3accde1eda48d4fedfc590fd8b6eb3a9e8c07c7f99777c2871936d9a7d8d13102649bc1c8e15df7e', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:00:58', '2022-11-13 22:00:58', '2023-11-13 17:00:58'),
('3afb268392f7eb65699497a013e47d5661175fbdc6f476dba411a5b1b8514b170a1f7b4d1d6230fc', 36, 1, 'access_token', '[]', 0, '2022-09-14 08:57:12', '2022-09-14 08:57:12', '2023-09-14 04:57:12'),
('3b2d8056696e297f6091cb9e14ee6f24bcd8eb8e2dc8386d611c7f7af94cfca71639508690a211e5', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-10 22:31:20', '2023-03-10 22:31:20', '2024-03-10 17:31:20'),
('3b441458a411709daae017c4b580fd5df9cdb22d4146ce22fcf227f04b7bdbf297089489b2f796f9', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-27 12:26:49', '2022-06-27 12:26:49', '2023-06-27 08:26:49'),
('3b859a3852afcb96d6fc7f28fa0ac89e777ff95669d22b8319eb4ac5359ffedf5ae518927d56b6f2', 8, 1, 'access_token', '[]', 0, '2022-05-15 16:03:50', '2022-05-15 16:03:50', '2023-05-15 12:03:50'),
('3be3ac1c81376c5b2c0161ba59f209f7f978609c4c913716caea74621e85b0e8f2a07ef6c1bc9579', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:24:29', '2022-10-03 11:24:29', '2023-10-03 07:24:29'),
('3bf5ebbee9be89c7602734f7d9f268d5392d9e4ca8568479f38b76962469cdb19b60318631132f2d', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-17 13:24:02', '2023-03-17 13:24:02', '2024-03-17 09:24:02'),
('3c56750e765ec0bf43bdd4a6392ff058a0a226e0a1652ad2d9a2232b69f881e1d671adc6855ec079', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:45:24', '2022-10-03 11:45:24', '2023-10-03 07:45:24'),
('3c7c0741c51c34d1075ed06047c879160d31ba2e32e4e03cd1f9dd41f10f76522d424bf8c673dbef', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-06-25 18:48:04', '2022-06-25 18:48:04', '2023-06-25 14:48:04'),
('3c852921c95209333848de9f6ca9d213ca2aa8a98ab6fccd1de75509002e36a999f95ff834872a58', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-03-16 11:44:33', '2023-03-16 11:44:33', '2024-03-16 07:44:33'),
('3c93b0bb68d41e713feb5275edaacee75c630378248850ab8b03b11373eed67aadfe93b7597069b6', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-15 15:55:13', '2023-02-15 15:55:13', '2024-02-15 10:55:13'),
('3ce034def754af5dccb2b8849e5948e1e3e92bcd23f99352f42fd134337c22c68247c49eedc87d8d', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-21 00:10:05', '2023-02-21 00:10:05', '2024-02-20 19:10:05'),
('3cf9e13fc52a3e17c8a7e5b83d69d3929646a6fa8bae7b1dfbe2c359fe0e010e8f51a196d9aba525', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-10-03 09:49:56', '2022-10-03 09:49:56', '2023-10-03 05:49:56'),
('3d014185441337cba97c0178d42fa0ed706c1b7ab790e7c3271ebd94f1dd46c15a334ca680b12855', 6, 1, 'access_token', '[]', 0, '2022-05-15 14:38:28', '2022-05-15 14:38:28', '2023-05-15 10:38:28'),
('3d0176689674dd4be2b6450533e4fae4cea0f3872ec24154103bc4005dae542da210e765d27a80a0', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-10 08:38:13', '2023-01-10 08:38:13', '2024-01-10 03:38:13'),
('3d019c6529caffe0982f114d007ca680cb2b988cf29c28d7465542b3a9e3c4c2793b4a5df8a7f9cc', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-04 22:26:02', '2023-03-04 22:26:02', '2024-03-04 17:26:02'),
('3d40ae43a3450662baf7672d01fb866b6a54f3b5d5c580e3966b2de717b783322dd7aafdaee7b42e', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:23:49', '2022-11-13 22:23:49', '2023-11-13 17:23:49'),
('3d5a250abcc5d9329929797714d258736b43ccdf84de1e2f7a608206b41851337cfc904bb0d4d54b', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-03 11:26:18', '2022-08-03 11:26:18', '2023-08-03 07:26:18'),
('3d602b0e668049fc7e065bf8d7e54ecf5c48fb576bdab02381a1f073eafbc64da7b0b1ed1e8f01ae', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:01:59', '2022-11-13 22:01:59', '2023-11-13 17:01:59'),
('3d762aab5229430970a6a539f63590a6128defbbeea3cca10bfcf8defcdc35e3110c7be693901f0c', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-15 11:40:34', '2022-11-15 11:40:34', '2023-11-15 06:40:34'),
('3d82a6cf5aaacbcd6264e29041a907112f074ba5886eb2c9ab207aa28ceb76ae7a3fa07251b4cb7a', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-23 17:15:10', '2022-07-23 17:15:10', '2023-07-23 13:15:10'),
('3def4859fe44ff4ad6b373302cb5167fdef15435586a2b9803684b342c1355d17f3ed3b09a3ff6dc', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-17 21:35:31', '2023-02-17 21:35:31', '2024-02-17 16:35:31'),
('3e038834aee5fa4b7dca1432a1e899027a050b9f779cabb75367e32738c68fb9375d4f62465f4ee2', 27, 1, 'access_token', '[]', 0, '2022-08-11 10:39:05', '2022-08-11 10:39:05', '2023-08-11 06:39:05'),
('3e068290ce205b736fa218240149cdb178276b6202e7d06a36240bd63e9d47e0e5a7ffeb39582579', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-07 14:28:29', '2023-02-07 14:28:29', '2024-02-07 09:28:29'),
('3e2a4c24a589e86946707b53383237a11395c989eda6c1a9220744cb6cd92bdc2546a4e7b4bdac61', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-13 21:54:15', '2022-12-13 21:54:15', '2023-12-13 16:54:15'),
('3e364642572216456dc17ee31d33f473fa8aeeb794b2b386523ff610a8299fbf21c946f704125ca0', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-27 11:36:14', '2022-08-27 11:36:14', '2023-08-27 07:36:14'),
('3e52f26f1d811d3dd4e2130a1ee584dd528aea119d710f000ba42f4cb3d419dade1c410f195890c1', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:09:50', '2023-03-14 21:09:50', '2024-03-14 17:09:50'),
('3e909dd881bf4809a1a336966c48956e896723773508114df4d4764ac3978643db02cbe421a372f1', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-07 15:56:02', '2022-10-07 15:56:02', '2023-10-07 11:56:02'),
('3e998e2e74f97c5ef10baa2948e1295471fb73f012725059ff35e23f6c610804b1c0ab0539950156', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-03 10:38:57', '2022-08-03 10:38:57', '2023-08-03 06:38:57'),
('3ee463698a1b4a4caa35333fbab62fe36dab9f46921ef66b54cb580898383233f53854f750b9fd37', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-03 14:20:50', '2022-08-03 14:20:50', '2023-08-03 10:20:50'),
('3f02e4f77a558d7fddbe8fee71f415668f8526818288de399b8effc157187781487140b90e6a66fe', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-14 11:17:48', '2022-07-14 11:17:48', '2023-07-14 07:17:48'),
('3f3a255f98a5864d4690aaae986b815f9012d2c5b19f36039e947fbb0290212d1a743c8e4432df72', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-03 11:26:26', '2022-08-03 11:26:26', '2023-08-03 07:26:26'),
('3f5feca0a2fe0a110462b8079a038a653f1f5007f15d8be7ca79afe6754cc7172b3f394b7c8f5662', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-16 14:23:54', '2023-01-16 14:23:54', '2024-01-16 09:23:54'),
('3fa46e2c644ad4505b4b12397ecb79d643f242cdc4a3588645eb694718b54d1629276f1bd85ccbb8', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 10:29:07', '2023-02-24 10:29:07', '2024-02-24 05:29:07'),
('3fc63a20852d40da57f85027db37119a264e673ea5db233eb72e25a53ba8b702e37e36462cd89d12', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-10 22:30:05', '2023-03-10 22:30:05', '2024-03-10 17:30:05'),
('3febba3efdaa5d380541cc4c874946ea5b433106bc20fa394e3d4f8eab2cc575edc96a00658cce13', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-15 00:22:11', '2022-11-15 00:22:11', '2023-11-14 19:22:11'),
('405771f887f1ed4eac9acc01abdb0b3befefc6daff07556098139849eb433e2b0a24e9e326c66c99', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:31:27', '2022-09-30 15:31:27', '2023-09-30 11:31:27'),
('405d1b560d74c957332933533da7a3487093a9710a7489be9e48a7ffaafd53b9e81e07f32dd956e0', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-01-18 23:20:19', '2023-01-18 23:20:19', '2024-01-18 18:20:19'),
('40f4f10ee03b8310b7fbb6c579119b3cb01aaf5f463f38b306966c18423b1844ab2ca78d95980866', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-02 20:20:33', '2022-07-02 20:20:33', '2023-07-02 16:20:33'),
('414195ac83f1cfde3e729820d7e31723cb2f051acb8397105251d72e69d44824e08122670be314db', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-05-06 16:41:51', '2022-05-06 16:41:51', '2023-05-06 12:41:51'),
('41a6ec35d0c53e90e80db9af8b143bad0f328e6360bd33e2bce99fd7a1880485203c02d166849dfb', 27, 1, 'access_token', '[]', 0, '2022-09-26 15:25:21', '2022-09-26 15:25:21', '2023-09-26 11:25:21'),
('41acfc07b5186322f42ade68769f919b6dcbc5ebe36055fe6d885ec3fd5a6ff66f8d9124abb9055d', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:05:48', '2022-10-03 12:05:48', '2023-10-03 08:05:48'),
('4201757a3099b6af2c40f8eaf9b8c22cb63e4de075a0a0511791e9367594d618be5ebba7d6a361c5', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:08:15', '2022-10-03 12:08:15', '2023-10-03 08:08:15'),
('4205e3cfb7b65dc845866643ddb04e769acbae53be2accf3539b8a2c09ab61aa9d7fd8a5dc5228dd', 27, 1, 'access_token', '[]', 0, '2022-09-27 14:37:56', '2022-09-27 14:37:56', '2023-09-27 10:37:56'),
('421b63bcdfcde03b791649221ef216b59668c63f7ac4bb0695185c7fcfa1d66d7cb7291a73b72a3e', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-29 21:40:09', '2022-06-29 21:40:09', '2023-06-29 17:40:09'),
('4223ebf19aa189fc7bb955595072f6305782b6b4d71bc729924ce9a9339e73eb71c1df6d6aad1b8e', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-03 15:54:35', '2022-08-03 15:54:35', '2023-08-03 11:54:35'),
('42387dac7638f6f8e81504f6577ca82fa4bbeb2675430524ea4f321bcf8552a70bd69857863571cc', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-08-18 20:35:53', '2022-08-18 20:35:53', '2023-08-18 16:35:53'),
('423a1d47b755df511b1e30d13ea6062e3b7a65ff34d05dfc96c18fea1553c974fc2ac4cca28d7983', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-19 11:54:08', '2022-07-19 11:54:08', '2023-07-19 07:54:08'),
('42acd86126e27e324a1f24fbf60e81856314ebce947938ea35a60ea28df26c69bbdb105bc062a330', 14, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 1, '2023-03-16 11:04:05', '2023-03-16 11:04:05', '2024-03-16 07:04:05'),
('42dea36c04b743d241d3e8de89b43778f25d9b49b73adccaad7a37b180adc155f64d851802224d1c', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-09 12:51:22', '2023-02-09 12:51:22', '2024-02-09 07:51:22'),
('43819cf5aff106ae02ec01ae93c3419ebb80da5ca84de791634b6a68e8792ebf34d0a4ac062f51c2', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-06 12:05:17', '2022-09-06 12:05:17', '2023-09-06 08:05:17'),
('438820c4c86e032e2587bcb67b6772d46cf21cafef101ae782661e01c392714011207369816f9fba', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-03 16:17:26', '2022-08-03 16:17:26', '2023-08-03 12:17:26'),
('43cd7dd87f19535c47a2ff312dc54f89c1c2c97e44eff5d7349cc0ee91fb0d5b5d8008732bb71ede', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-08-02 17:37:09', '2022-08-02 17:37:09', '2023-08-02 13:37:09'),
('43d1291ed0892a4437f4388a790a31d5f458966a20529f10118ef3df4ef239c554310ede3e98f6ef', 1, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-17 12:07:15', '2023-03-17 12:07:15', '2024-03-17 08:07:15'),
('4400473e12198c98dea158a10e1c14388313d962082bca6c4b8df0a51b8d5bbdeca62657a32369fb', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 10:49:23', '2023-02-24 10:49:23', '2024-02-24 05:49:23'),
('444da043d6229a927f293a823bf834e1975e843476cc102da3d159530a723723360bf636cdab1a17', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-24 11:41:57', '2022-07-24 11:41:57', '2023-07-24 07:41:57'),
('4483656e38d2a4c232beaac66bfa749178d15d6f35b195e1a598eea029029f82c05ceb3ee853bc5e', 27, 1, 'access_token', '[]', 0, '2022-09-27 16:26:42', '2022-09-27 16:26:42', '2023-09-27 12:26:42'),
('4493852155928692301392064c82bdcd73ad90e39e7d18f0627c09caf643e4a5631260a57a024256', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-04 08:45:00', '2022-10-04 08:45:00', '2023-10-04 04:45:00'),
('449bb06cad6ca7fc58faebb95413e3beca3ae94af2397185a5daa29df6d261b5a08d1fbf991c06d0', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-07 12:33:13', '2022-12-07 12:33:13', '2023-12-07 07:33:13'),
('44e2626405dc2cb2289eeb0454e489ba7a6634314b9ed4747083dceb626c5932cef8ff255862b35e', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-26 16:50:30', '2022-10-26 16:50:30', '2023-10-26 12:50:30'),
('44e59335d64ebe072902738a32666ecdf90643eb3a5401c61805907e83a34a401710217f33b6a970', 92, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-10 22:07:15', '2023-03-10 22:07:15', '2024-03-10 17:07:15'),
('44f665d94a6ce19c81e6d4d0765871efe6acc904da7e79ba7092addb0043455a837ec7dad2688f92', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-10-03 11:50:25', '2022-10-03 11:50:25', '2023-10-03 07:50:25'),
('457752304a04f96ac4234d65a866581ca03e359080b20b920e4c72ac459cae298c3e21ed090e2364', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:45:39', '2022-10-03 11:45:39', '2023-10-03 07:45:39'),
('459fe6ac2d12b9d67580406b2aa946d46b61919cf19f39b98586493672d40384afdf1b6b3a837e2c', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-15 13:24:36', '2023-03-15 13:24:36', '2024-03-15 09:24:36'),
('45a7837f4574a5b4628efae196899644ab7fead16f03da77a3d4c2622c232f75ddf54d6f6edd8738', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-15 15:39:19', '2023-02-15 15:39:19', '2024-02-15 10:39:19'),
('45fe4b22387ce0ae1f5f174d4af2184f17e5511f012d8e3c2e1977929be4a3ef2c4ac26d4773a252', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-03-16 11:44:48', '2023-03-16 11:44:48', '2024-03-16 07:44:48'),
('460531c4b844911f8e8e2ea373914ccb2af5c596869868aa47a0c525fd17cc59dfe558f236fa96b9', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-09 13:26:32', '2022-08-09 13:26:32', '2023-08-09 09:26:32'),
('4626c51ca717fd2f062dd182dee67e8a09c87d00d94f261412595e6626c510047673bcf49f78fa90', 27, 1, 'access_token', '[]', 0, '2022-09-26 16:27:14', '2022-09-26 16:27:14', '2023-09-26 12:27:14'),
('463cbd13dd1c558bd67e564420039e1bc42f822cd3262220b2210100b431db9be342027dfc917c10', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:59:29', '2022-10-03 11:59:29', '2023-10-03 07:59:29'),
('4641e7fdbf7de490cb0a18a11d9e6921e8416f619d4df11609a51e96ed0768c504e366d1fefbb8b2', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:01:49', '2022-12-13 23:01:49', '2023-12-13 18:01:49'),
('46493e3b28d2129bf2c9973404b4ed4b8e7ee865bc1b205b26a79adeee7fe5311798373928c7b320', 89, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-13 23:21:11', '2023-02-13 23:21:11', '2024-02-13 18:21:11'),
('469f88b42c797be14397248f038d4db2aa9b7ea0ef74a1d9a11d06e60fe25ffa65e424fd7a8cb165', 14, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 1, '2023-03-16 11:24:10', '2023-03-16 11:24:10', '2024-03-16 07:24:10'),
('46c6971a3f0315779e441670ce73569aedd3574b16cd747bef8684287484eb38b01f1b1ed63dd71a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-07 15:55:51', '2022-10-07 15:55:51', '2023-10-07 11:55:51'),
('46eeedbcc3c579b8032bad1f419dc777fd2f3476389f4447fd3d090d0c397a029a26db5e767147a3', 27, 1, 'access_token', '[]', 0, '2022-09-28 10:01:40', '2022-09-28 10:01:40', '2023-09-28 06:01:40'),
('4710f772024890996aad295ecc3eee260892894532e31110e0fec9dab83193be945bb9c9695da94a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 16:21:05', '2022-10-03 16:21:05', '2023-10-03 12:21:05'),
('471759a9e9b432643c5b49ddbd9ba95a18e94280db93685cfbb774889a93bed857d5e7da6c36d4fa', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-05-06 21:46:55', '2022-05-06 21:46:55', '2023-05-06 17:46:55'),
('476f0a501ba031aa7feaf62e8a250c9e8e9689acf49723d728327f1a26878c10767be08cb5b4fe85', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:08:12', '2022-10-03 12:08:12', '2023-10-03 08:08:12'),
('4771a956dd9244cc4e2dd39eab84a67a8f411a23507033ec2874f3da0124d0c9c31503bb3707fa29', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 09:49:47', '2022-10-03 09:49:47', '2023-10-03 05:49:47'),
('478de12eb60231823d5619c03759064357c79e083108dea3c54c3af3f0eb18aecc3d2f88e718f850', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-01-20 13:45:25', '2023-01-20 13:45:25', '2024-01-20 08:45:25'),
('4791c1c0513e6bcaa7d5cf0a766d14e9146a0f9397c2803a30166a7e04faf7a46e3717d34b353885', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:03:39', '2023-03-14 21:03:39', '2024-03-14 17:03:39'),
('479b0bc832bdc66b6133c5b6368f715410109f93781526134535aa6cf18fc3930b8d8fc16374c075', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:33:59', '2022-09-30 15:33:59', '2023-09-30 11:33:59'),
('482f4e8f9bbf48176c312d14cc120626485d765e62f6219cacafc481deffaf319ab65daad8e33df7', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-24 15:41:58', '2022-06-24 15:41:58', '2023-06-24 11:41:58'),
('483dc37f7ae4bc0d107cba0a690da453503c491801ef914c7d42ba4995f6d701e4a1fc27724d71a9', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-15 14:25:21', '2022-07-15 14:25:21', '2023-07-15 10:25:21'),
('48713bac70f5c6bcc035ac81064925d11c981f1a906ec5d50e1928d8f5e0ae4189bd14ba9a4c334d', 36, 1, 'access_token', '[]', 0, '2022-09-14 08:53:13', '2022-09-14 08:53:13', '2023-09-14 04:53:13'),
('487e74f245866502d5ae8a731beb4f81110cc1e570d53e7edc8f91a30d2affab77e94ba139ae830f', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-20 13:22:08', '2023-01-20 13:22:08', '2024-01-20 08:22:08'),
('4893e11aca3f75c49b1afc37d067880e2a286843541384897f166038888c88d83450e1e1fa9caafc', 89, 1, 'access_token', '[]', 0, '2023-02-11 16:31:10', '2023-02-11 16:31:10', '2024-02-11 11:31:10'),
('48a63d7b82e91d3e9ec2a563a215585f5926cb108342297276024fa784999e005a6ad6827b09760b', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-09-03 10:58:41', '2022-09-03 10:58:41', '2023-09-03 06:58:41'),
('48af3696ed6c9d2b697d490b90c6211bf08ee3e60bc7037cf9f6f556a6fca63857ca98c6fec63f3f', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-29 14:56:15', '2023-03-29 14:56:15', '2024-03-29 10:56:15'),
('4936e5610039f5ee41ccd8612848bdf6e7de0fc710b7582e6dcf93ee7f36b541f45be9e68fd6df1c', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-11 14:21:12', '2023-02-11 14:21:12', '2024-02-11 09:21:12'),
('497452d79e66d1d563aa8fe331cd08d242ce547795203073c3437dd94ff3de52e82a594195c9583f', 27, 1, 'access_token', '[]', 0, '2022-09-26 16:43:53', '2022-09-26 16:43:53', '2023-09-26 12:43:53'),
('49af61d98439368827effb7a8055190e8be527441abb89d999d3025231acf1b83f68028cf1ff13e1', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-02 19:13:51', '2022-08-02 19:13:51', '2023-08-02 15:13:51'),
('49ea523455f785738e9a718b967ad39029922f375a0764c6662a93484ce1f11ee41f8d31a2f715ea', 18, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-28 23:54:39', '2022-06-28 23:54:39', '2023-06-28 19:54:39'),
('49fa73302621b3a04c5ea8ea33f3933cde2ef6654d25afc8e61db9745ba6a7deaca64a8d455a8c82', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-11 17:57:06', '2023-01-11 17:57:06', '2024-01-11 12:57:06'),
('4a23c49ec92f7f158e8b86ffe4fc3419c22fadd274938e63b9aedcdfb58f13c694dea55eaea48906', 93, 1, 'access_token', '[\"user_scope\"]', 0, '2023-03-16 11:35:48', '2023-03-16 11:35:48', '2024-03-16 07:35:48'),
('4a5d5bbffa6f3b7335ae994de5d1919ff25ca19b3b39aef5008f6f28a42b713f78406aca5528a428', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-29 10:08:40', '2022-07-29 10:08:40', '2023-07-29 06:08:40'),
('4a63b172080c62102b83afa1638c738d21389b49aa1c738a163e0b4b831ff445635f95f6854e3fd1', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:21:13', '2022-12-13 22:21:13', '2023-12-13 17:21:13'),
('4ac3375a64951db1c3ad3ce4ce2774732dac30ad1feb1eaa21b6f53a74c6a3cad46336ace9068949', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-04 16:00:42', '2022-10-04 16:00:42', '2023-10-04 12:00:42'),
('4ad509a4563b54207e3973a93e09f003e1c59815ede45cccd40a0f65b360061a34674755f4927446', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:04:44', '2023-03-14 21:04:44', '2024-03-14 17:04:44'),
('4ae38b88242da629e0baeb6332f6b5150ae0ddfbd6da6d08449701d64a65f5aa27bf27afbebc7850', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-10-03 11:49:54', '2022-10-03 11:49:54', '2023-10-03 07:49:54'),
('4b20cac4d6e765bc95c3619dd7b693648baeb17058feb91b72d7575f9dc73b4d4ffc20f25ae24eef', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-01-20 21:37:28', '2023-01-20 21:37:28', '2024-01-20 16:37:28'),
('4b22220dda86b40f34a80c7901324d98c2a30ac1ae83f81fd17bc4b551478bc9723e90f5f1e81175', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-13 23:10:29', '2022-07-13 23:10:29', '2023-07-13 19:10:29'),
('4b817c22c5adef101644698a1f7c30b52c8669c076e52d67c094765f9a8405ae3f1e379606ebdd97', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:08:56', '2023-03-14 21:08:56', '2024-03-14 17:08:56'),
('4bdfe749b89e99a339915ea1e16d7f3f13baed8b1ad4accf14a0d5b477cd7cf90ab3c2832bc6ed5e', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-05 14:56:48', '2022-08-05 14:56:48', '2023-08-05 10:56:48'),
('4c072e9fcde4d3f12891aa547a29b37444d4494be0399cd6a0b1a84c92d05339db8c543c84c1b387', 93, 1, 'access_token', '[\"user_scope\"]', 0, '2023-03-16 20:43:17', '2023-03-16 20:43:17', '2024-03-16 16:43:17'),
('4c345993b7420ccc1be893dc2ec8ff9f24342c977f072ca07c7e6848ed0e3a27a12b0f5275fb9e3e', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:31:11', '2022-09-30 15:31:11', '2023-09-30 11:31:11'),
('4c3aae360d69ee7828d9b410a244881f88c7b84250203a869a38735bf69cd78371dd7e3db6dec739', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-07 21:05:48', '2023-02-07 21:05:48', '2024-02-07 16:05:48'),
('4c513529cfd5698b3bd1324411ec5c8774e2277b0129158d156a1bd1166315490ac5fafbd3764bf6', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:33:58', '2022-09-28 11:33:58', '2023-09-28 07:33:58'),
('4ca6f5dd9400d7f08a200a3af3015f3655dee0b5f2fd949b0bed3c33bf05c40d02bc325ddd7bdac8', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:42:17', '2022-10-03 11:42:17', '2023-10-03 07:42:17'),
('4cae48df1492a696ce261000d98665909a783a0845606e60e15bd14bd9178c067a2d76d844fcf479', 93, 1, 'access_token', '[\"user_scope\"]', 0, '2023-03-16 20:33:33', '2023-03-16 20:33:33', '2024-03-16 16:33:33'),
('4cbdff791f5e4c679768e39916798398dd7920caa426fb39f3159a6a2f760975daf250519edbd7ce', 41, 1, 'access_token', '[]', 0, '2022-10-04 09:14:50', '2022-10-04 09:14:50', '2023-10-04 05:14:50'),
('4cc74b2b44479ebd41e22992bccaded9f5dff63d9fcc4722974f4384e796f4fa0af82bd84126d9ce', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-26 07:02:51', '2022-10-26 07:02:51', '2023-10-26 03:02:51'),
('4cdd47298264ed85ddc5a52cd7e6209d0e8d3f44b102ca84264cec7460c694b2d7e93e5f08721ca0', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-22 11:36:57', '2022-11-22 11:36:57', '2023-11-22 06:36:57'),
('4cee8e4d6c384cf4d54979ef6517a575453138a55df53522ef1ea2118c4fd5a7d493ade0046755df', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-16 11:05:31', '2023-03-16 11:05:31', '2024-03-16 07:05:31'),
('4d0f30c81c9566781d12f31d0862e874d7045664cdb10ebe16665cc6a9d1561904c4c41bcdae5066', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-05 13:13:06', '2022-08-05 13:13:06', '2023-08-05 09:13:06'),
('4d22d98391e5265fbedcc316dd4b1ee6bf976f4e226835378a70b988f2081a1a357b766c49d38802', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-25 00:59:52', '2022-07-25 00:59:52', '2023-07-24 20:59:52'),
('4d79dbbc6bd7ef69ad0964ba916b5d4afb32f81882cee4760826bcc217184734b5723b62000bab21', 27, 1, 'access_token', '[]', 0, '2022-09-28 10:56:58', '2022-09-28 10:56:58', '2023-09-28 06:56:58'),
('4d9f36b58de446908e818df281cf104ae2f5e382ac2b165a8117e10b430fa026b78cc2dfd023eb2e', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-25 23:08:40', '2022-07-25 23:08:40', '2023-07-25 19:08:40'),
('4dc76876ad416c8300675899b12a1d7733b594a4104fdf5a17743692329cdc8a3a9fe8da24116ec6', 53, 1, 'access_token', '[]', 0, '2023-02-22 00:26:35', '2023-02-22 00:26:35', '2024-02-21 19:26:35'),
('4dd4f83f7612ae5f6a0230f1dc3a4308c8907a09c9d864da5ff23148e99bc0ba25afe858649b6546', 92, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-10 22:06:33', '2023-03-10 22:06:33', '2024-03-10 17:06:33'),
('4df2c7fb0ede34c5e9ef3185e2245324a144c8bf475780c3037cf32fbe96bed5bc85d73d7b864c8f', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-13 22:49:44', '2022-12-13 22:49:44', '2023-12-13 17:49:44'),
('4e261c495ba4b87d93c622a0d9d72e90ba75d17c11989ef88bc6bc0309f329bdef80c8faa3c01cab', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-15 16:42:10', '2022-11-15 16:42:10', '2023-11-15 11:42:10'),
('4e48bfb979e2234e289f09def1edb9db407c5ba2b6b514db019739031f47a9d6cd411fa8599dbca8', 91, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-08 22:46:33', '2023-03-08 22:46:33', '2024-03-08 17:46:33'),
('4e6e7065d4b080c63e5b92ab041a1d4f228c1689cbe785a4615d4c293ae38e6fa652570292a884bd', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:23:03', '2022-11-13 22:23:03', '2023-11-13 17:23:03'),
('4e7a065bc9d6eee9eb3f3c843d3a02630cb523dea2d99e9f22ed20fe340c0936abda3cfddc6db4a5', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-09 11:01:18', '2023-02-09 11:01:18', '2024-02-09 06:01:18'),
('4e7cd8d6516b243b2741ce19f1e04dca6d00689e8ff21467b590f2c648186ac8ccfce4bee79a88c6', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:25:32', '2022-12-13 23:25:32', '2023-12-13 18:25:32'),
('4e86c3a60053a7e4c36f03a88f9aecaa365a8c9b88d43b06d13666771438116a521b92312c1e641b', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-21 22:44:20', '2022-07-21 22:44:20', '2023-07-21 18:44:20'),
('4e9fe68391c62d1c88d761abf16aaed61641bf077977b59d867896086a224308db1023eae2c00e60', 8, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-16 12:03:18', '2023-03-16 12:03:18', '2024-03-16 08:03:18'),
('4ea6539166b3076967ce36fca49d66a8ce18a16c5abc720e5230eeda166ceab39061833f7129e5d2', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-03 10:31:28', '2022-08-03 10:31:28', '2023-08-03 06:31:28'),
('4eb6f74f13a1b53b9c38fe4f367c0e3db3a7b0f2505ec74c5bfa0b28879ec73a3af6185dadd4fcd8', 27, 1, 'access_token', '[]', 0, '2022-09-27 09:54:26', '2022-09-27 09:54:26', '2023-09-27 05:54:26'),
('4efa23ae71241dec461d9d95992e598b754a68406b386e57cb47912481cace79ddbe89e5b2bfc463', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-06-17 20:35:50', '2022-06-17 20:35:50', '2023-06-17 16:35:50'),
('4f0e5759f96bb9b6f257a00772262e7824b2c5fff1d4e595b91469f22aac19c7d47780f27ca448ab', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-02 17:38:32', '2022-08-02 17:38:32', '2023-08-02 13:38:32'),
('4f438dc8592a4a59238a98bac9c94ac3fbd9483c80819df0a409d8320a7d6194993559955a9d130c', 27, 1, 'access_token', '[]', 0, '2022-09-27 18:32:23', '2022-09-27 18:32:23', '2023-09-27 14:32:23'),
('4f62a72b9b360bc82afbe8b34771ba83af599a6d8b5c603c396a1c63df9c20f9ddfe05263f51b00d', 1, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-16 15:09:37', '2023-03-16 15:09:37', '2024-03-16 11:09:37'),
('4fab68f7cfaccee7011dc6194138ce0502db40c2161d9e3a4b443867be2c4e28dc2437a113fde4bc', 6, 1, 'access_token', '[]', 0, '2022-05-08 22:14:28', '2022-05-08 22:14:28', '2023-05-08 18:14:28'),
('4fc9a47b55cc7d38dc49b64c75a0f5560e52f8514ee5eeaa5716bffb94415794946a2e1528a7e287', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:23:45', '2022-11-13 22:23:45', '2023-11-13 17:23:45'),
('4ff63be13b7a25478fb6277dc6b03a6d4792f5f32cacd7b059456f21425376adab43fa280285b6bc', 27, 1, 'access_token', '[]', 0, '2022-09-26 17:09:35', '2022-09-26 17:09:35', '2023-09-26 13:09:35'),
('50375a946539fb901edd3ed49de8140dfc7a2e2f05802c48e6d66703cc93e9fd78745c42d4df66c0', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-17 12:20:50', '2023-02-17 12:20:50', '2024-02-17 07:20:50'),
('5098c0b18565148de4708d8484dc83791845c71543d2f2ff6d4a5d1e4e34b30d79483feb3cc3c107', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:00:31', '2022-10-03 12:00:31', '2023-10-03 08:00:31'),
('50bd46e9f186f3ee3c39cf1172330c166e1a27ce23fc3c4ef4d620c0f0aa4ffda272bf031341f18c', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:19:47', '2022-11-13 22:19:47', '2023-11-13 17:19:47');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('511306b3934df36cdf544b98842ce8a1b5d9e6e99aa69e33335d8aad217720045f606839df0a36fa', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-25 15:34:23', '2022-08-25 15:34:23', '2023-08-25 11:34:23'),
('513cb22e1fff53acbd12f0af6cc1c5eaddbb9024f3a7543e51b657f8b7a73e3159737fe42a70e5e4', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:36:40', '2022-09-28 11:36:40', '2023-09-28 07:36:40'),
('514d504610dec755ff41d2aec96d948aa21e6a2684b76567c6235ddfdb78b6067c794f4e1d205b6c', 36, 1, 'access_token', '[]', 1, '2022-09-14 19:21:19', '2022-09-14 19:21:19', '2023-09-14 15:21:19'),
('517e9cd2f80d52c6aa3a784fea71089d4c0684eded91fa60501105ab8bad9185ef7d1f0125f47b44', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-11 14:04:48', '2023-02-11 14:04:48', '2024-02-11 09:04:48'),
('518bba217b18707bc14995335f94a2977d22bd1f29c16004cd7f7fbffc9349eec01288c3645f6280', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 17:22:08', '2022-09-30 17:22:08', '2023-09-30 13:22:08'),
('51acdbc86ee810d7faa7ec76acc70c1ba4cb6b46db1ad0120d3937777305679b1f67300676d4655b', 53, 1, 'access_token', '[]', 1, '2023-02-22 00:18:59', '2023-02-22 00:18:59', '2024-02-21 19:18:59'),
('51daf4039a2bd26f70db5bfbc34047ef61b0bb4f40a2e166a6b49ae9c175503dda633e81f71a7b70', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:04:39', '2022-10-03 12:04:39', '2023-10-03 08:04:39'),
('51fa14e565ab5a6cb80d5e88b4a539105e19757019b4c1a672b0667ac53bbee40f92ddb6c5a35ddc', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-16 11:50:09', '2023-03-16 11:50:09', '2024-03-16 07:50:09'),
('5207b94ba8eeab44204a35a58945d24fb41286e58a68d7fd675e1604897df674b8126df6299d3d0d', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-04 17:40:48', '2022-08-04 17:40:48', '2023-08-04 13:40:48'),
('5239bd02c872c0f10f2ea1efcd3ddfbcf00dfa78e25222d09aae7831033dd4f17999042f5c978936', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-06 13:11:27', '2023-02-06 13:11:27', '2024-02-06 08:11:27'),
('523ab5772a3fcdbe24930eb289c60a85505d44cf2f3789460d9680cb8c81699f21196dd3c49f5f97', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-08-02 09:28:30', '2022-08-02 09:28:30', '2023-08-02 05:28:30'),
('529ae377dea8147a10b99983e45ae572fb65ff15e6093e00c9a415a11ca87cb7c1adb0878161a286', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-07 12:23:18', '2023-01-07 12:23:18', '2024-01-07 07:23:18'),
('52a7f1d005f3e730ae656f5d31478c95ab9bb528cf8ed5bd576f0c6386bac4d31c069ef36367ae77', 53, 1, 'access_token', '[]', 0, '2023-02-22 00:21:35', '2023-02-22 00:21:35', '2024-02-21 19:21:35'),
('52cf74e99add131bae3db707dc1c9fac928ec78475e8061615f1761dcff9c3f1f15625c173c33eb5', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-29 11:52:08', '2022-07-29 11:52:08', '2023-07-29 07:52:08'),
('52d86118d0c37c0c1eae6406c5115e8be1027baa7cd8b67de90112dcae5ff54bbc7f0c06a2b904be', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-19 16:58:01', '2022-12-19 16:58:01', '2023-12-19 11:58:01'),
('52fb493c8e63325c723a056086472de643ace9330fdcd406932f381bf8bbaf073baed081f5adad6a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 10:55:42', '2023-02-24 10:55:42', '2024-02-24 05:55:42'),
('530e7c3813ab60cf31312e244deaba5e5891a5b97f7e43ca1c80f066eb486340e64bd6a467a71c02', 14, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-03-09 22:47:16', '2023-03-09 22:47:16', '2024-03-09 17:47:16'),
('531b793a8992419f6a6ec8c64c9b6deb3a9ccfe53b37a3539da025630f31670d4dce4791afc1d691', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-05 01:44:44', '2023-03-05 01:44:44', '2024-03-04 20:44:44'),
('531d95523287bfa2e84d07bbfe8f02ad8705957c6cca0f4de2c54d4655f2cff7881cf33ab1c89194', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-17 21:30:42', '2023-02-17 21:30:42', '2024-02-17 16:30:42'),
('5380589eb9ed5476f48c4c9d9fb01788225738cf81083304e009e1cde1fff44196f51db5be7c9203', 27, 1, 'access_token', '[]', 0, '2022-09-27 15:13:00', '2022-09-27 15:13:00', '2023-09-27 11:13:00'),
('5417705607bec7bde70278bbad638ba85cdcd413db602a57660a4b11ea6dcfc5380b5947f88bed6e', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-01-20 21:37:21', '2023-01-20 21:37:21', '2024-01-20 16:37:21'),
('543b515f0d15bf8332ea95598b353bb69130d14f33a03ceb39a75c34c95d6d022413a4d2d9c4832f', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-15 09:03:55', '2022-11-15 09:03:55', '2023-11-15 04:03:55'),
('5468c04702717a01b8b8774486cd6f394ba2e7ac67421ce2ddfb2951dc9dc8680b888a75a70cdaaa', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-05-04 21:03:27', '2022-05-04 21:03:27', '2023-05-04 17:03:27'),
('54c3ae01ca24f01665f55fd7035dee2df5afedc528f11802d09a3ee2f3123aaab8509e4c84a924b5', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-17 11:48:47', '2023-03-17 11:48:47', '2024-03-17 07:48:47'),
('54ed5fb148bab0d0e12684ca700bddaa08f3c93481a5d687635900a65d0c435b6e0ef40945311391', 27, 1, 'access_token', '[]', 0, '2022-09-27 15:09:14', '2022-09-27 15:09:14', '2023-09-27 11:09:14'),
('554ad1d58002941d71c4dbd498d8dacdbeb91bed8fd34786037159f242c2c0bb7d744bb08e28de9b', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-05-24 20:53:33', '2022-05-24 20:53:33', '2023-05-24 16:53:33'),
('555a70c2058339052ff2dac37686d26222d714bb12ef15c761872980bb51592e92ba458e62aeac19', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-06 09:48:15', '2022-11-06 09:48:15', '2023-11-06 04:48:15'),
('556a546846a48c3b78585ae37c8ac2f38585571a8e59fa41beb2d454287d7e26824c6b3da161426e', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:15:04', '2022-09-28 11:15:04', '2023-09-28 07:15:04'),
('557f67659e0a3af7a672f56303b5d01346068ed141da598ddf64ba7de983a9cb0d0e63d04f49d978', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-06-26 20:42:11', '2022-06-26 20:42:11', '2023-06-26 16:42:11'),
('55a0097d3040ff3221ed81fe8216fbea81711b8d7edf6904a4fc31a3d3cc4d57187861f2b52968d4', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-09-02 16:52:17', '2022-09-02 16:52:17', '2023-09-02 12:52:17'),
('55b4ee76e8d9d39e1035f03fa0687ec3b3a7e541b93be297993f5cb7a5b3cfaa53ce1999144a21b3', 27, 1, 'access_token', '[]', 0, '2022-09-27 15:11:31', '2022-09-27 15:11:31', '2023-09-27 11:11:31'),
('55eceb9695ff4e9fc04112d25b307a22a2351d35dd10f5d8dcb01616e755695482e6b47f2aada467', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-03 10:02:46', '2022-08-03 10:02:46', '2023-08-03 06:02:46'),
('55ee839f7365df7f1fcc89c9cd841c5c95c358e986c863fabd6109f4e6ed60b3abfbdd8218325959', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-06 10:58:06', '2022-10-06 10:58:06', '2023-10-06 06:58:06'),
('55fb71cbdefcbb9280c3ad04cae7c301eae107a7e920963ebc4fb3e6b4f38b5667fb96f31cc9163d', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:34:05', '2022-09-30 15:34:05', '2023-09-30 11:34:05'),
('5614a2f41c81a66770ac8b8314c74f59aa83693812281382cf14f5a2a729bc6c32344592d3b0f4e3', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-02 14:19:44', '2022-08-02 14:19:44', '2023-08-02 10:19:44'),
('56e7e1dbdea0f9c1aa2463a372fc58bb4eb573bbb5c81c9820f5d42b66196d7220047eeb4767a0c0', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-03 10:06:51', '2022-08-03 10:06:51', '2023-08-03 06:06:51'),
('56ee74a34313c3b99001ce7871e176b55df5f74997bb9fba7d9210690a98691a2fb0694b6680a7fd', 27, 1, 'access_token', '[]', 0, '2022-09-27 14:30:05', '2022-09-27 14:30:05', '2023-09-27 10:30:05'),
('570bbb0558fc9ca42923585cd8c7a182160b9d059bac4fef317722881ad14f69487f121ad5fab25d', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:11:31', '2022-12-13 22:11:31', '2023-12-13 17:11:31'),
('57423e67b40f1761591d14fed351d3369500d3b8eb9f55753533c7620e157b0ca01ce0a649d0edf5', 27, 1, 'access_token', '[]', 0, '2022-09-27 11:00:42', '2022-09-27 11:00:42', '2023-09-27 07:00:42'),
('578d0b916650e583f51ff5c5e8bcccb66427e0a7b6996cd6bd24eb9f28cf14383595ed9fde2acf69', 89, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 11:07:18', '2023-02-24 11:07:18', '2024-02-24 06:07:18'),
('57e494a118eec76e475b76d8da7f718c1898ffe95e7d513044bf427621c0b06add11672fa5f3c29d', 27, 1, 'access_token', '[]', 0, '2022-09-27 16:26:36', '2022-09-27 16:26:36', '2023-09-27 12:26:36'),
('57f32e0133dd2f1da449049c6d8dfda770754af9aac364e506d0c17ef2b97b9b6645cb93d853298e', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:24:51', '2022-09-30 15:24:51', '2023-09-30 11:24:51'),
('580e39e2bc11d0f41fffa3113d31836ffcac808157a860ea0ffab497197f59bf1a766988911248b0', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-10-03 11:52:44', '2022-10-03 11:52:44', '2023-10-03 07:52:44'),
('581eda08fa1c334e48f6762b2f47d1ae61888eef33e28b9ab0cf65d4a67de2b89f5b3984943b1cbd', 19, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-17 14:50:04', '2022-12-17 14:50:04', '2023-12-17 09:50:04'),
('582e8adb6e6ea98ccdb76e8e7094e23d8519219a3759f7ed09c1a573e2caa2550e48e3548c3afb3a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-15 16:40:06', '2022-11-15 16:40:06', '2023-11-15 11:40:06'),
('5846b47f27c295c43cabd6bf2a461fa37c6fc23629ca8fc65bcadddb049fd7570889612baf18c248', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-15 14:25:15', '2022-07-15 14:25:15', '2023-07-15 10:25:15'),
('586e497e68470c990806d72cbf3317f766f2e2414b1703576ddc1bfff53e95954f8ac3efe0d5bb51', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-14 20:56:44', '2023-03-14 20:56:44', '2024-03-14 16:56:44'),
('58beff238c815dde710d8f1287f518bbff76af725be780bee9e970960889ccaa9d0e9d2cf45256ff', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 09:46:24', '2022-10-03 09:46:24', '2023-10-03 05:46:24'),
('58dd0c4d0631484e258b56f7fc0f837bae1605fe066410b1f39380244ae3927465098ffb1d63893c', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:23:15', '2022-09-30 15:23:15', '2023-09-30 11:23:15'),
('58f4878af15690a6c9972288440acfbacada150db573bd59205b0a3f7e94d3ff17ec5c0d287a6417', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:27:16', '2022-12-13 22:27:16', '2023-12-13 17:27:16'),
('595c4ff3831192d72d7dd28839ed29c83f1f71bea55ff442f5d2e2beb285046f442759083a1a3abd', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-07-10 17:09:00', '2022-07-10 17:09:00', '2023-07-10 13:09:00'),
('5999d2d3ed5230c23395b6db1b364e2c8239784d8dda503a17f17cc82c4fd9bb49e25fbf3ecac2bc', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-09 12:12:07', '2023-02-09 12:12:07', '2024-02-09 07:12:07'),
('59c5dd9b28c7f7bc29abd4b0e495714d8d00a8975679e0d6e0041ed105333ecfc12000851b78bb05', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-17 15:15:14', '2022-12-17 15:15:14', '2023-12-17 10:15:14'),
('59dc05ed6e84f4f8614d245b66377337c67683daace8c15be5c41c869499dd6e3b8a6b3556d33590', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:00:44', '2022-12-13 23:00:44', '2023-12-13 18:00:44'),
('59ecc36b826e07260395a78afeead4313c1a8fd60e210aa88712cca4b99c3ea7e3298da3e0fb4881', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:04:54', '2023-03-14 21:04:54', '2024-03-14 17:04:54'),
('5a7af47a6d278aedbb22c778909eee0aace0d5356842a72f0530d12ff8fb20167a8b931edd86ec91', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:37:27', '2022-09-27 13:37:27', '2023-09-27 09:37:27'),
('5a9b8e356951dd057a0af6c08086f53de12c6040ab763428fa576e6cf352e16b1ac1e90c988365e4', 36, 1, 'access_token', '[]', 0, '2022-09-14 11:00:50', '2022-09-14 11:00:50', '2023-09-14 07:00:50'),
('5b0b423b8c39ce451bfdeeb73e1621322cd1d0d7e2f3e02f2f935df570618c75312c0855c9087329', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 17:32:27', '2022-10-03 17:32:27', '2023-10-03 13:32:27'),
('5b311313512a06eec02af8f4c9cdda00fcece630ff20e384866aab56a692d9b568d3a085bb682e61', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-26 12:06:50', '2022-10-26 12:06:50', '2023-10-26 08:06:50'),
('5b72a0b5f21f16ec074671fcf8efcc465033001042c25a327b5ca7717cc86496228c449e00377a4c', 36, 1, 'access_token', '[]', 0, '2022-09-14 19:14:00', '2022-09-14 19:14:00', '2023-09-14 15:14:00'),
('5b8e5169fec25670a34aea116c4feebf0ffcf45bc5f8186cfe72feaa3bb1b489166d1cd8f726d138', 27, 1, 'access_token', '[]', 0, '2022-09-28 17:14:59', '2022-09-28 17:14:59', '2023-09-28 13:14:59'),
('5b9c4d0606a54e25bcb03368c7ca72181728a06b0f4175802a61afc2da80f208c65a274b2a54b63c', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-09-26 13:34:15', '2022-09-26 13:34:15', '2023-09-26 09:34:15'),
('5bb2f7930795f34bd13b65a78d002445ad60c1d95f38d42e51b2096f2dd9d4329164734b6b83c9f7', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-01 16:00:14', '2022-08-01 16:00:14', '2023-08-01 12:00:14'),
('5bb6107d5dcd81d65ecfa0566d1fcd16323eaba47eb8c16b7ff6d479446ba38cd545bbeb446a61b2', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-17 12:16:09', '2023-02-17 12:16:09', '2024-02-17 07:16:09'),
('5bb67dc63cf92b489fe46269c40de377b1ae460d64231d8a2a3af01f63b395a91675d995e758ded5', 27, 1, 'access_token', '[]', 0, '2022-09-27 18:57:18', '2022-09-27 18:57:18', '2023-09-27 14:57:18'),
('5c03cc860f043c4fcda7f2e569793bdf6de9c0eb2bb101b2a70024b993d2a70e45e21be0754e9cea', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:18:49', '2023-03-14 21:18:49', '2024-03-14 17:18:49'),
('5c0455a5405090d2031becc94a05ed086ec75c69bf50f88f1e9ea31f7002e89af259e1f33c8dbded', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-09-30 16:49:09', '2022-09-30 16:49:09', '2023-09-30 12:49:09'),
('5c0d983d1153ed9493071322ec57bfa179b178e98c532e3afd081ab602192a8b3d87945c5aaf13cb', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-30 09:34:58', '2022-12-30 09:34:58', '2023-12-30 04:34:58'),
('5c815c70c927f225fed33841c81e864c438bff057c4b37ac01b65c51554201c54a4f6db3e56a56bc', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:12:20', '2022-09-30 15:12:20', '2023-09-30 11:12:20'),
('5d92cd21e47fd5a837c9ce70fd97f60fa2a1cd41521809330fab2a323399c139ffc32b20a85e6b75', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:05:19', '2022-10-03 12:05:19', '2023-10-03 08:05:19'),
('5daab8df192c3696dbebab0f28d14693c6ba4f7083de524e5acec0b701523958c79c6b419420bfef', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-26 20:45:33', '2022-06-26 20:45:33', '2023-06-26 16:45:33'),
('5dd4a25c497ce8c3a08902df0eb0757aeb9265cee4a7fded33321543d286efca3d64baf5ee7b6503', 27, 1, 'access_token', '[]', 0, '2022-09-27 18:21:33', '2022-09-27 18:21:33', '2023-09-27 14:21:33'),
('5de50eab0c8068cbceee40237f0943b6976a01a05971e50e28d9f5d3435d8875b33a9e8feaef0d22', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-25 10:15:07', '2023-02-25 10:15:07', '2024-02-25 05:15:07'),
('5e5569ab186a67794833d9544b92b7de0c886642627ca109de0360819b347170be7e7ef8538f3ba4', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-20 13:14:38', '2023-03-20 13:14:38', '2024-03-20 09:14:38'),
('5e83b9ff71a8165adb823e1875a24b39d1a8a30952a1718e57ba61f959a48a1b9cbaf9ea9f0056d9', 27, 1, 'access_token', '[]', 0, '2022-09-26 15:01:42', '2022-09-26 15:01:42', '2023-09-26 11:01:42'),
('5ed1d02d4e7ff918e77e13f5a67a5519be71a28ce7288c7152616882c1fac34432c7fbad25440466', 27, 1, 'access_token', '[]', 1, '2022-09-28 11:05:22', '2022-09-28 11:05:22', '2023-09-28 07:05:22'),
('5ef88198be734536584fafd3a49d60c87aa6f0954e85f0a94e0f59c4911c1ee9dd8f72a07900649e', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-07 14:33:52', '2023-02-07 14:33:52', '2024-02-07 09:33:52'),
('5f28755099807036270fdb977edb4772312990d545dcc0293a33f0b6098408575c241f56279300af', 27, 1, 'access_token', '[]', 0, '2022-09-26 14:21:06', '2022-09-26 14:21:06', '2023-09-26 10:21:06'),
('5f35d01ebc861c7aa29d176f4b026a6f59ff09b778276705bfd6573197229f7cd9dac03c765f0f7a', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:05:40', '2022-10-03 12:05:40', '2023-10-03 08:05:40'),
('5f387accef304a3fcdba3f87279c8fb17bf50311a5479aa48d850a90c3c03f5a90b3d490a9a27b6c', 27, 1, 'access_token', '[]', 0, '2022-09-27 09:24:28', '2022-09-27 09:24:28', '2023-09-27 05:24:28'),
('5f5293be6a04ba396527e5ff612a82d51a036793957fe226dc8c6f897d97888c0cfaa9fd1bb7b1ab', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-14 12:20:22', '2023-02-14 12:20:22', '2024-02-14 07:20:22'),
('5f9df1776c602a3b21a6d57d62ddd94f146f653c5c14e253b448b60351b96a67ed6c250ad43dd9f4', 27, 1, 'access_token', '[]', 1, '2022-09-27 18:22:08', '2022-09-27 18:22:08', '2023-09-27 14:22:08'),
('5fcc100b539f82f30aa8cc1937bd918c308513a633f7c6db3662387d8fe36b02eb244aadca0289f9', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-07-29 11:36:23', '2022-07-29 11:36:23', '2023-07-29 07:36:23'),
('5ff067368ad946feccd53e91c55483ad90ddd5bc64122874fa68ec2f107a4570a67d502e80a28a09', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:01:12', '2022-11-13 22:01:12', '2023-11-13 17:01:12'),
('6002724a735b5f7078146ccaa7f84854c4a1bd823de7839f9566e750497bad9330e88f4e44b3ad09', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-21 22:44:20', '2022-07-21 22:44:20', '2023-07-21 18:44:20'),
('6024a9d02c8a695f1ccb446ac64a17b56d1abb02abc25b1a2423cd18b2e6095efcf2a819033c9449', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-10 00:41:03', '2023-01-10 00:41:03', '2024-01-09 19:41:03'),
('609df61fee40f5c4e4a0c3d2bb42205b0ae4dddbc78c9b9dcb078052606b5224d6835ca8638cc938', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-12 15:57:25', '2022-07-12 15:57:25', '2023-07-12 11:57:25'),
('60ab710b0ab2ed81b64fcfbf2129d08e68fc09606813a0bc944490bc4892d0ae4b10d73a3958d090', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-09 12:26:47', '2023-02-09 12:26:47', '2024-02-09 07:26:47'),
('60bfc4131048712832d5de13fe667865cb350f809c256a56be34a9eeaff4ae8250c84e5d8f824022', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-15 11:40:28', '2022-11-15 11:40:28', '2023-11-15 06:40:28'),
('60d80937bc20d9c27939d4e2f02174acd9f9a2b3a569c015070ba53e8162d1bbb3b4faed53797a3d', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:54:16', '2022-09-27 13:54:16', '2023-09-27 09:54:16'),
('612207718db0507ff995fd77942eb8eb3002543f3056d345f82945aabddb36e943534ee3f752b909', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 16:35:08', '2022-10-03 16:35:08', '2023-10-03 12:35:08'),
('6122924437a43aad475a4e72f670769685d18b1ba5546e7d1716bbeea0202d9fa608d5c4d93859f1', 27, 1, 'access_token', '[]', 1, '2022-09-27 16:39:03', '2022-09-27 16:39:03', '2023-09-27 12:39:03'),
('612556c0054f37618050a5bf7936b0d98c2c8aa5aed649d63822e670a7336a23de5d11eb9eb14559', 89, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-14 22:40:38', '2023-02-14 22:40:38', '2024-02-14 17:40:38'),
('61255a83cacef110d35b6b4ccd02b2e8f0f852e663f6c447d10d8163a86a336d2101156ace9f4712', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-21 12:43:24', '2023-02-21 12:43:24', '2024-02-21 07:43:24'),
('617b6e26605e37aa9e16d1131dd9f54e4f99b3a22bd6b3b3ccf9fb9ca52b455e5c25297bdcfcc32b', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-09 12:38:33', '2023-02-09 12:38:33', '2024-02-09 07:38:33'),
('617e0ef534654d6d7e1d81c470dc3cd33c63c74c3fcde4445c42269f49435ab5a546eb7aee8cfc85', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:42:07', '2022-09-27 13:42:07', '2023-09-27 09:42:07'),
('61ad0aa2e2179ab9827f16447ad5280f693dbba47ad901a91c2819fbbb1bd11f2f7ed835dcd51a21', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:57:10', '2022-09-27 13:57:10', '2023-09-27 09:57:10'),
('61c39028660961d7a2db1acd9fb93e0aa3761aa47824dfc7d27d1a4c5c464147aff5f009710cb377', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 10:00:50', '2022-09-30 10:00:50', '2023-09-30 06:00:50'),
('61e0b54d4bd8972fbb2ddf97b50b52533618c2658e116f70ae03e785eddabf1111d88455221023fd', 14, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-12-13 21:54:25', '2022-12-13 21:54:25', '2023-12-13 16:54:25'),
('61fcbf8cf85a7bce4e57744f879e2614b4dd6f47fc049d07adb77bc81595c8c51b4cdd57eb2ca6c5', 27, 1, 'access_token', '[]', 0, '2022-09-27 17:12:57', '2022-09-27 17:12:57', '2023-09-27 13:12:57'),
('6201ac58c3480e5a8a72b9b977f7c7645764e5b8c6ec82a9ac3020537587c3f3293fbf5eb4bdf15c', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-29 10:08:31', '2022-07-29 10:08:31', '2023-07-29 06:08:31'),
('6230d2964a89ceb68278972d5760ef2955b78f51ebf96941d0afbcbcb831b775dec2080a22fbf62e', 34, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-06 07:24:43', '2022-10-06 07:24:43', '2023-10-06 03:24:43'),
('6255c51b77bb5e52721c278e9a05a0e64894cc72a0e3611c03d7a1bde2e13c686813218859218cb0', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-17 21:41:31', '2023-02-17 21:41:31', '2024-02-17 16:41:31'),
('627c07df5a7cf78be30074909e829b0a41e46d0efc99035e51ccbe62606f6299bb679df4fde28a47', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-04-12 08:23:27', '2023-04-12 08:23:27', '2024-04-12 04:23:27'),
('627cbf2b6eafe8f081fe609fcda69364c97ac2cd5042deaf8d4ff162b6d09dad651ccf0553cc9270', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-09 12:45:56', '2023-02-09 12:45:56', '2024-02-09 07:45:56'),
('628658d1988dbee013a5d06f5345da5117e2ff9447f0abdcae26baf33b884ed21cac20f7f8115667', 27, 1, 'access_token', '[]', 0, '2022-08-11 12:43:10', '2022-08-11 12:43:10', '2023-08-11 08:43:10'),
('62aef2651d92e1967ba9c24380f3111ed54c3b1574d7b5e65f422e853cb4218437af1b644f85ffb3', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-15 00:21:42', '2022-11-15 00:21:42', '2023-11-14 19:21:42'),
('62ba853a18cdffabdee6f97baea13f620ec9651dac5d92093723b7523d441e58724211213301b3b1', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-04 15:59:23', '2022-10-04 15:59:23', '2023-10-04 11:59:23'),
('62e0e4f2fbf56216db8d7cd7166e053508b5ddca6e2649371c8d58a6db0d454ba5ed80fb0fadf60b', 27, 1, 'access_token', '[]', 1, '2022-09-28 15:30:51', '2022-09-28 15:30:51', '2023-09-28 11:30:51'),
('63079ae2eaace70288a3fad0385bcbdcc2b41dce07381264a4e370f905db71dcd97c6b73f0819bc3', 86, 1, 'access_token', '[]', 0, '2023-02-17 18:23:16', '2023-02-17 18:23:16', '2024-02-17 13:23:16'),
('634eef9c111e0a6ea1e19f3192cbaa9bc712dd1cc37e554d32437bf5de6cd867ea97fa1db871456c', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-17 22:44:50', '2023-01-17 22:44:50', '2024-01-17 17:44:50'),
('63511f1503b46b95f1fbe664b0c44cd6179b0843ec937fe30616ff3dc739502e2777f1040be35b22', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-10 17:01:12', '2022-08-10 17:01:12', '2023-08-10 13:01:12'),
('63658280cc9425ed3bc23010b4965e7eeb9ca9b76488989298f7f62a514c70129f49cbf3c4bcfcad', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-07 21:16:22', '2023-02-07 21:16:22', '2024-02-07 16:16:22'),
('63bb65ef15272f8deb47b87e32b8457a612e17424a007bca0d92838e730b2813ef26941daf6c909c', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:06:53', '2022-10-03 11:06:53', '2023-10-03 07:06:53'),
('63d5a83365e7a3741407132cb6b19b0559d423e616637d3d4fbf47c01bd8871f5f2efdc2534d4b47', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-17 23:42:42', '2023-01-17 23:42:42', '2024-01-17 18:42:42'),
('644c2d68e658212a21b885a9f445048bc35f263a2b4285816e8606c9b66e5969648a7e10e4fbef41', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-27 20:42:00', '2022-06-27 20:42:00', '2023-06-27 16:42:00'),
('6459a186d5bfbd12b77aef88ed06c79b1d9cb404990ff43f9c3adea0f6ec34999ee346b0ead9b125', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-20 17:41:09', '2022-08-20 17:41:09', '2023-08-20 13:41:09'),
('6494f650e0ff86ed9244f65feb18466402799d42f374e602faa4649c457df3d00bfe227353e3f49e', 36, 1, 'access_token', '[]', 1, '2022-09-14 19:32:04', '2022-09-14 19:32:04', '2023-09-14 15:32:04'),
('64981f7ef35963336acae3bc5ae40c5d120387a787a2a3a3d78a596c396637ab89cb8e2d594c0a63', 6, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-12 22:19:57', '2022-12-12 22:19:57', '2023-12-12 17:19:57'),
('64b4a7b93f77854520a2984af42b43feb8f849da560510558c43aecf4601fe9162b2012d877c3540', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-17 21:40:21', '2023-02-17 21:40:21', '2024-02-17 16:40:21'),
('64d007ea9e6ba019b6318d6aab7754e756feda28c681e9182509e0a68359e60e08c794bbdb677167', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-12-13 22:27:18', '2022-12-13 22:27:18', '2023-12-13 17:27:18'),
('6526327b7685c9f98e673e965283421fe4668be7e2efbf34f230a707e3d97a7819dec4116af4b2f6', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-01-18 23:20:26', '2023-01-18 23:20:26', '2024-01-18 18:20:26'),
('6526e8cd71917ee9a9607dd1691566dea7626b605820bce5710cd242a4dc39ffd1f32876fa757025', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-25 18:40:27', '2022-06-25 18:40:27', '2023-06-25 14:40:27'),
('652aa58aa7ae397ee798892a64e302d5ede8f2144a1028b54b9216eac89db965756821c2fd102422', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:06:13', '2023-03-14 21:06:13', '2024-03-14 17:06:13'),
('658e121ea464632a8a2b1e3a6a2d7e455972b0df1837db8e813e8cda143f019cfaefcd70b8bde94c', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-03-17 13:03:05', '2023-03-17 13:03:05', '2024-03-17 09:03:05'),
('65e836d7702f400b030f7e125c440f61191b0edd733fafc0b77bb9b558a63dab0e27063e547b6a2e', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-01 17:35:06', '2022-07-01 17:35:06', '2023-07-01 13:35:06'),
('661763e7403232fd8b862bd8f9ca0d217587c51dcae5d94f82039dafb901970ecb0da8bc5f9d64cc', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-13 17:28:43', '2022-12-13 17:28:43', '2023-12-13 12:28:43'),
('6627ac2be37cfa708053ba5e84036deb04b0fd4363c37ed0d212d7014e9221025def6421f8318132', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 13:32:58', '2022-09-30 13:32:58', '2023-09-30 09:32:58'),
('6659a41bf1dc9d4289eec2e1ddba63169f8bddb21bc7b81978f3f0ba37dc8a02c40d396992bf33a0', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-17 12:37:16', '2023-02-17 12:37:16', '2024-02-17 07:37:16'),
('665f394e9eeeb963cb2fe9f30279718bfcc8e1d774ec10b21dafbdaf1b0cfc2658be4ef0e0852ce1', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-12-13 22:32:57', '2022-12-13 22:32:57', '2023-12-13 17:32:57'),
('666b0b1842803a3e6b62a258caccd0831902cf2bd87cad8a20452f5018b2c7b9b050398126644229', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-08 14:46:57', '2022-08-08 14:46:57', '2023-08-08 10:46:57'),
('6673531d36a81f710af7147865c1aaf17bbce277de9b0b61469d12626d579d26e7babec750adb1b0', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-14 11:40:27', '2022-07-14 11:40:27', '2023-07-14 07:40:27'),
('668d1bebcb8f6fb3e0b80a7462bc3cfee63609d6310a99aeef8a3f74268bfd2336e0fa598195f970', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:09:46', '2022-12-13 22:09:46', '2023-12-13 17:09:46'),
('66a42e01a2fde7d2e8613307ac2e09646928072ba14e407805163643cada3ac7378b11d8e695459f', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-29 13:21:39', '2022-07-29 13:21:39', '2023-07-29 09:21:39'),
('66a755ff9bb181cfb6419c82b4ac5be08664e5b3c76fc27387075ad494739583f90a2a22f1615bfb', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-17 11:48:39', '2023-03-17 11:48:39', '2024-03-17 07:48:39'),
('66a977b6a3bb85fa4b74df51965b24b097f57842137596c6c56eaad316a5d1f1a0b024e320b7db2b', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:00:37', '2022-10-03 12:00:37', '2023-10-03 08:00:37'),
('66cbc078abd87879e81b283e6d61da06b12a8918597bae36eff7fefd94b9edc2ac7c336ad6d1af93', 34, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-06 07:23:54', '2022-10-06 07:23:54', '2023-10-06 03:23:54'),
('66e4f9c37003096bd7ff533817b86660ed9c058354d683d64daee6b5b2a257770bc53877a5c69d83', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-17 12:36:56', '2023-02-17 12:36:56', '2024-02-17 07:36:56'),
('672790d043572246c0aec29894e47b5146102c5761cb8b78204ac959c7faf4dc455d413d4f05dc10', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-26 20:42:09', '2022-06-26 20:42:09', '2023-06-26 16:42:09'),
('67609497f0486ca11a082c53a779d2ab2123eb718f4bf22f06f19e9cccb179d3a5754a82e812d00b', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:21:17', '2022-12-13 22:21:17', '2023-12-13 17:21:17'),
('67694f07b69cfbd546c428b8cc84830175e352a1ef535deecea2c380ae9c5f3ac9a963d2f3543014', 34, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-16 11:56:37', '2022-12-16 11:56:37', '2023-12-16 06:56:37'),
('677ffbc2fa4864204a6cb74b3d98d6627bc16ede3da153c879bfb49a328f43ba037a6d67a6061c21', 93, 1, 'access_token', '[\"user_scope\"]', 0, '2023-03-16 20:43:13', '2023-03-16 20:43:13', '2024-03-16 16:43:13'),
('67822eb2637a02d601d9a3a8db973193b5da1716720ad39624ffef8418f37c29809f4464a337ce50', 27, 1, 'access_token', '[]', 0, '2022-09-27 18:17:16', '2022-09-27 18:17:16', '2023-09-27 14:17:16'),
('67880890718c798f4d4511faea2b2c2c75bd2bf35dd04f3b62d1d82dae8fe4fdbbf2abb1a4cd1c5e', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 16:21:41', '2022-10-03 16:21:41', '2023-10-03 12:21:41'),
('67889cc751bf14ae37dfe9f128a2d41beae2885e571c82a0a1e81358fde492de8e4b48eea250acc3', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-31 08:58:04', '2022-10-31 08:58:04', '2023-10-31 04:58:04'),
('67a5e976d7394b8096ac7f4fcb1e3a4370f24968919e8e7aa090dfc82e20c615aebd382e500bac0c', 27, 1, 'access_token', '[]', 0, '2022-09-26 16:00:06', '2022-09-26 16:00:06', '2023-09-26 12:00:06'),
('67b77f332841346a7eda3dd3b7c12c5cbaa42ea04510d4ad2e6fa3c33956c6ab76422224bd424216', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:07:09', '2023-03-14 21:07:09', '2024-03-14 17:07:09'),
('67c0e96fee7af8338039c71356fafcfd04af24779bb28b08564ebfe871c645bbd16e9f8f6dc33ae0', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:45:27', '2022-10-03 11:45:27', '2023-10-03 07:45:27'),
('67e595edde290f8f95a597da54b37b0971a10022edc24bdc2fdb0f3cea0df1e70337740e3f7f0356', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-09 15:51:21', '2022-07-09 15:51:21', '2023-07-09 11:51:21'),
('67f01acac68802b5afb007fe50b7da398f96fe74681aa881c0fb55ca370ce5e4d8ddf2ce5c7ac51a', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-15 21:53:07', '2022-07-15 21:53:07', '2023-07-15 17:53:07'),
('684e759f55a7325040a91faa4b5dffb4eb330cefb12d9a33436add3a8686ae135758b8d9be3f4f45', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-15 22:19:58', '2022-10-15 22:19:58', '2023-10-15 18:19:58'),
('688fdcfd88117bbc8a3f03962ecac5a18d73304751ae2f90cbf04c39eaaab215e279f17899d1f555', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-24 10:31:49', '2023-02-24 10:31:49', '2024-02-24 05:31:49'),
('68c6cb7a1552c7da66feda5aea5c111de645b14b2a53f3d34052a949eaeea3d94d8420437e08c0d8', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-20 13:44:45', '2023-01-20 13:44:45', '2024-01-20 08:44:45'),
('68df09f0695024a14d04cfbb9f7108baabd7db4096057fea6db479044d2e460351438419ec455f81', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-19 10:56:02', '2023-03-19 10:56:02', '2024-03-19 06:56:02'),
('68eec7fb84bdad55ce67544dd56ddabecaeb159d49ae80161adbe5e9193241e7ec93f22f011cde31', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-07 12:36:03', '2022-12-07 12:36:03', '2023-12-07 07:36:03'),
('691388083a34e520ee459e4492ebb1100b945a533de47f22a42ac95616d33d00edd69d2804a17824', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-01 17:39:16', '2022-08-01 17:39:16', '2023-08-01 13:39:16'),
('692660594096ea7a74c11d3a31cce8e09dc9e6bf0e442dd79726e5a0e468210a22168ed817f98458', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-07-10 21:25:02', '2022-07-10 21:25:02', '2023-07-10 17:25:02'),
('695274d94898f09a6ea15ab8ff4d162b22afe6ee81f35bf3b54490512c9083cb2d7aea2835168689', 27, 1, 'access_token', '[]', 0, '2022-09-27 18:57:00', '2022-09-27 18:57:00', '2023-09-27 14:57:00'),
('696bb7d9d705c64a64e7cd0149896e6eec9d923015de2b23a2fda1d1eeb20c4511fd18d800870977', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-10-03 11:51:27', '2022-10-03 11:51:27', '2023-10-03 07:51:27'),
('6a216399532ee7f83ac50eea0b8f511a778cc226ca9c8a03a9dc61e0ff0355d47502bae643b670b7', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:29:16', '2022-12-13 23:29:16', '2023-12-13 18:29:16'),
('6a67fd862eb2b5db007c73782a58db1053fb94ecb4de71e36a2cd5b384cb4335cf7b1c6ed98ed71b', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 20:53:28', '2023-03-14 20:53:28', '2024-03-14 16:53:28'),
('6ab82431d9ad0331e5ea42c9bc4be2742470218222bec44e83718e2049026d8e9aa328930a829b46', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:49:57', '2022-10-03 11:49:57', '2023-10-03 07:49:57'),
('6b28650a2b61ed1cdc8822a050ed480c6c42908e4dcd026ca77dd165f5e562235e5e6954fd4d477d', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-15 00:21:47', '2022-11-15 00:21:47', '2023-11-14 19:21:47'),
('6b619723dac7298458786b5650374b784d69614125adbff26061840450e6242283fd606e043661d4', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-09 12:38:24', '2023-02-09 12:38:24', '2024-02-09 07:38:24'),
('6babe95900309bd8421329bfb76278a112c7f5d6fbbcfb6357a555b4d18e20137a44e3f3b8061ec0', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-12 22:22:02', '2022-12-12 22:22:02', '2023-12-12 17:22:02'),
('6c07801b54e2841d1abaae6e6377895d94bb007bb5c2721895282ce09986c97b376d46e18c2bb2ea', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:03:45', '2023-03-14 21:03:45', '2024-03-14 17:03:45'),
('6c1f712f5eaddc14d68cf675d7812d6314f80c0ec8998508e572499cb8e6abd7521e005277030af6', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-07 16:04:43', '2022-10-07 16:04:43', '2023-10-07 12:04:43'),
('6c314b89bbcabbf4998ec3a05aac4dd0e8ca7d3ebf3608cd96c59acf03ba4f5272e2ac929ae705ec', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-06 22:04:20', '2022-12-06 22:04:20', '2023-12-06 17:04:20'),
('6c3455d6a842ad40113624186e8e5e59e6d2f11cdc192b39c248e3a6ab14f5c7266ea24d8fadceb9', 92, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-10 22:06:14', '2023-03-10 22:06:14', '2024-03-10 17:06:14'),
('6c62fcef40a3736ce1a727dd4a9ce2f2e7717ff7d4dd6fcd4d75516bb329add7a624af96c4e7534d', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-29 11:54:22', '2022-07-29 11:54:22', '2023-07-29 07:54:22'),
('6ca14669ebacc02797ffb3aed3e9d79dab704d22efa85ccf7ab675ea57f11c30cae2935abe6e10d1', 92, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-10 22:06:46', '2023-03-10 22:06:46', '2024-03-10 17:06:46'),
('6ca20bb098d2d855e823f23d23806ebc7798fb37261fe1d2a705eb101dbe8752613080b1ceb77c20', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-18 20:58:23', '2023-01-18 20:58:23', '2024-01-18 15:58:23'),
('6ca49d57560162d2745d6956dd90f1c53d98eef6397584a33d94d5cc2cbea23208668ed4d6407049', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 17:23:01', '2022-09-30 17:23:01', '2023-09-30 13:23:01'),
('6cb1fba34cc219dde7cef7b04be30eb63337eb0ed03fe9cf1c150a94fb8b08214d0bc2a6caa5e376', 27, 1, 'access_token', '[]', 0, '2022-09-26 16:05:01', '2022-09-26 16:05:01', '2023-09-26 12:05:01'),
('6d79906844965f26ad8e768e0d0e1682c925784893012cbad93b0bacf41e348837a1d36845901aa8', 53, 1, 'access_token', '[]', 0, '2023-02-22 00:21:02', '2023-02-22 00:21:02', '2024-02-21 19:21:02'),
('6d993c06c3f3e9e39ca60cf58ff8ec331f9a49dfad27edc009645daa21af35e53307027ecf2e1b0a', 27, 1, 'access_token', '[]', 0, '2022-09-27 09:25:56', '2022-09-27 09:25:56', '2023-09-27 05:25:56'),
('6da7ab3ac5cbe52678b22d219d1c8c270b17bd6f7f7564175d2bdaa19faccde7304014c6609b8486', 36, 1, 'access_token', '[]', 1, '2022-09-14 08:53:16', '2022-09-14 08:53:16', '2023-09-14 04:53:16'),
('6de23d89f567d02b6b33379ab962f284e67105e2f8346b610126320b4d64d20d3c597b7a97f68da7', 92, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 1, '2023-03-08 15:13:45', '2023-03-08 15:13:45', '2024-03-08 10:13:45'),
('6e90058283e5211a47d22582d6afc7eb28182e005254e2ac503873e50b7f7d013f4fdf0286ba632c', 53, 1, 'access_token', '[]', 0, '2023-02-22 00:28:57', '2023-02-22 00:28:57', '2024-02-21 19:28:57'),
('6eba4738821329f64da05e7ce78c6ff649d2bca6403189f4815e1a7515008cfded8103574a50316e', 27, 1, 'access_token', '[]', 0, '2022-09-26 15:01:45', '2022-09-26 15:01:45', '2023-09-26 11:01:45'),
('6ebfabf23453dfc2fe96440b0f50b473215c160e616eaba8405faceb4d5e25a79a401ffaacf91d83', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-09-30 16:40:46', '2022-09-30 16:40:46', '2023-09-30 12:40:46'),
('6ecaf6eaf797a6fe43634656ce0e1ba799451d2e5465bd400cb6021180cf2dd8729d5ac0a096fdcb', 34, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-06 07:25:25', '2022-10-06 07:25:25', '2023-10-06 03:25:25'),
('6ed206488fb086450963c5129f299ad94f77ad48ac7f51f6059d31514e266d38183203d6ad7c3886', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:11:39', '2022-11-13 22:11:39', '2023-11-13 17:11:39'),
('6f4aa95af65c2c7c030779d8d9932bbe036abfb625e34e4b901cdbda6c313ef2ea58e415efda6f5e', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:26:14', '2022-09-30 15:26:14', '2023-09-30 11:26:14'),
('6f63b558bbd487b13bd373a6dc217aea376cf8c8fa9ff69629221530f07ea5825f3d78d61bb7dfef', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:45:14', '2022-12-13 22:45:14', '2023-12-13 17:45:14'),
('6fb592fe4fde99020f59f3b19bac77f7a700098cb5cc94a6b59ff47c944e8d2da106b4c1a333fe2f', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:24:23', '2022-10-03 11:24:23', '2023-10-03 07:24:23'),
('6fbe6322e5bb61b574bdd82ee4568a916f879e2ab7eec1863c29a102b3eb79a22afa079e07e44e94', 27, 1, 'access_token', '[]', 0, '2022-09-28 09:58:03', '2022-09-28 09:58:03', '2023-09-28 05:58:03'),
('6fdcd4182a12164daee37aa56189ae3d9d4610c19f0d41bb66fbc7e8a9b7ea6af6e2b2e278a18d7d', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-10-03 10:46:06', '2022-10-03 10:46:06', '2023-10-03 06:46:06'),
('6fde64cd0908217b689894bf25f844fabd3fe08dbc391f837047d02039e30e328348e2ff67dfb91a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-06 08:39:14', '2022-10-06 08:39:14', '2023-10-06 04:39:14'),
('6fe0f6bcdc4a4df110009f55ae86b82359bdfde8f56289d3dff7a8139cdaea10cae363cf8923a3c9', 34, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-06 07:27:46', '2022-10-06 07:27:46', '2023-10-06 03:27:46'),
('70109ccb7dbeeaf15ecb8f1a59ae46248eb93b3dbc8a026d896bbbdb9bc887f85cc17edb17dba583', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 16:21:38', '2022-10-03 16:21:38', '2023-10-03 12:21:38'),
('70402102ecacbad027326d571940394f044380a5c08d0f8653eed91010c9e4ba91e19f0747178177', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-09-30 16:43:45', '2022-09-30 16:43:45', '2023-09-30 12:43:45'),
('705dfd6e2f2b314d859dedfb27ee3ea94db11965a4ca3ada6f7e107b82294b165340595635ab3181', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-17 12:10:11', '2023-02-17 12:10:11', '2024-02-17 07:10:11'),
('706768d6854e8da2c280d6f62e98485e273d66b864a61ee938f2cda082b6679e158a76a58fd29047', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-07-12 15:29:40', '2022-07-12 15:29:40', '2023-07-12 11:29:40'),
('706f5bec35f6a067e121a3b761c59c36cfc7d6d2cbe3e933128d1e5eac2115c90bdaa9460930c70e', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-25 21:17:22', '2022-06-25 21:17:22', '2023-06-25 17:17:22'),
('709511f1a7bb2f8c88937e2f101becfc49613118b0b2e7f61320855aabb2693f68df5cabaab5f35f', 41, 1, 'access_token', '[]', 0, '2022-10-04 15:46:14', '2022-10-04 15:46:14', '2023-10-04 11:46:14'),
('70ae04614a4f2f0b7e0f72caebc6d636d012a794494c3ed7b7572b7e8a3a2bfa19c152d5687e837a', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-10-03 11:52:42', '2022-10-03 11:52:42', '2023-10-03 07:52:42'),
('70b3a6b0b23c3d55aa273eba1b9b6257d754d6f78062a17f76612bbd53d6153cfa463eb334c97e02', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-10-03 11:56:12', '2022-10-03 11:56:12', '2023-10-03 07:56:12'),
('70bfe28d039674f8e8d7254f0c0bf968e46d188c231867e6e917d5c91cd61c1e903bed0aec639921', 89, 1, 'access_token', '[]', 0, '2023-02-10 23:50:00', '2023-02-10 23:50:00', '2024-02-10 18:50:00'),
('70ca6cc57b8af467342f962b1ba7382b5a83cfdc3f4dcb0addf183ab63d1b7702c42e6d45c626d0b', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-29 11:55:05', '2022-07-29 11:55:05', '2023-07-29 07:55:05'),
('70f59908fb2c56e1a69c8c5dfc7e0172ef9c7edf82e9592ddc9166f6ec2cfb24d86039601d1e7c30', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:03:34', '2023-03-14 21:03:34', '2024-03-14 17:03:34'),
('7103ec22436593c14d9acbbe925f1d854dd13768616b5a1bc6d15397798ab8d5cad8827182e44417', 27, 1, 'access_token', '[]', 0, '2022-09-28 12:47:24', '2022-09-28 12:47:24', '2023-09-28 08:47:24'),
('710aed22a15f60c99d53946d385b1b8162d9cb9c50a2eb334d6992c3da372c8c33b511e54072e6d8', 27, 1, 'access_token', '[]', 0, '2022-09-26 15:33:59', '2022-09-26 15:33:59', '2023-09-26 11:33:59'),
('711f2af06ff4201b9bf674b763fd08c38eb5e75c3cbf439210d8212d6620b990c2066672430dbf72', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-07 22:15:54', '2023-03-07 22:15:54', '2024-03-07 17:15:54'),
('71276402ee7c050f4a822fa6da1985c05c3d6a087755021036daa5715024b58b2a682f9df5c8e86f', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:13:17', '2022-09-30 15:13:17', '2023-09-30 11:13:17'),
('7168245e87e3cfe2ac8f30c2bdd7b3419e9969fbae7bba5d17b14efe7998d353be9cc5e59111b1b1', 34, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-16 11:56:39', '2022-12-16 11:56:39', '2023-12-16 06:56:39'),
('71df1d9f292148023ac0ab32f11db5f02ffc80f2e7e4178cc3d1e1a1e80485e98bd660f377e7a8a3', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:41:16', '2022-12-13 22:41:16', '2023-12-13 17:41:16'),
('71fe596950b39ef0a2ffa5b8c7bb254405b077d3e42b0344ea7b0f70a1d41f2aea256238f845dae1', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-26 16:04:25', '2022-08-26 16:04:25', '2023-08-26 12:04:25'),
('725c8cec7f9c92378753c5133c2da50b9cbd70253b98832dcc25b96eaa8126b25af2f93374d246bd', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-10 22:30:13', '2023-03-10 22:30:13', '2024-03-10 17:30:13'),
('729c57e7deedaaf49dd267314bdac9cec4e70fe04d4a6e1d840ab56b1047aa547c3346b6ea923e8b', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:17:26', '2022-09-28 11:17:26', '2023-09-28 07:17:26'),
('72f1d93cf92d1b8aa1aca82f5bff9b61a74a6c762f1839b5d6bf1e95b40645f59cea997dcd3217e8', 34, 1, 'access_token', '[]', 0, '2022-09-10 06:43:16', '2022-09-10 06:43:16', '2023-09-10 02:43:16'),
('72fefb9d06ffdab76cbc1bac5ddcc6a4101d9d419afac8a06323ace2a63aabad5860e86a78fc176c', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:50:01', '2022-10-03 11:50:01', '2023-10-03 07:50:01'),
('731b19f1107e3ea39b98e22b04c9390a97465611e7bfd47b6b091436adbdcbd61cb6489580698ff0', 27, 1, 'access_token', '[]', 0, '2022-09-27 09:54:31', '2022-09-27 09:54:31', '2023-09-27 05:54:31'),
('735ddb7465129517bd076438027fc297c9c85583975e7170e6148e72c6de262e62fc6b24654dc244', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-04-08 00:48:56', '2023-04-08 00:48:56', '2024-04-07 20:48:56'),
('738ec43ee3284376c6bf01ce411aa82dd59613cfa0fa2da3affd00fd06178346c8b74e582b2ca209', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:13:47', '2022-12-13 22:13:47', '2023-12-13 17:13:47'),
('73b7554ed87f92588e9ece6f0709fdc83a113776cdcd95286989d1c769bd807f001ae4dccd854aba', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-13 17:28:40', '2022-12-13 17:28:40', '2023-12-13 12:28:40'),
('7401f51bc5f3884538bac253b193b3d2c22ed68049f995323c56d08b59ea46164893cc99aff44c41', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-01 18:15:25', '2022-12-01 18:15:25', '2023-12-01 13:15:25'),
('740c6a4a805ad1ea0c637083524a229e245915aa22b5e82212e18a7156a357900aebe203dd315b1d', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:46:19', '2022-09-27 13:46:19', '2023-09-27 09:46:19'),
('7426310ea803e539aa99bde37b55067dfc267cec85e34a0d8e02fba2bcfb4aeee919bbba1d7a9dc9', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-18 20:20:40', '2023-01-18 20:20:40', '2024-01-18 15:20:40'),
('74405a0888c1bfab3e0187090c1781640b2e851d087ce5f49e6f884e95401e794fac63a0e091fcac', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:25:21', '2022-09-27 13:25:21', '2023-09-27 09:25:21'),
('7479786de1dae401ba49cb4cf0eaa4a1082915a2c5dd1548f4e72fd5f4e6d4595cdfc1e7654219dd', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-07-10 21:25:20', '2022-07-10 21:25:20', '2023-07-10 17:25:20'),
('74870d1cdd3700a3420f7ccec45ecd88654bab6f16ec17afa5a6ce61905fb1b981a50182ea36cf3f', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-17 23:15:48', '2023-01-17 23:15:48', '2024-01-17 18:15:48'),
('74969700b9fbc01cccba02caf7ac04ed8464912ccaba420cbf18fa3bf13efdd997f136511280d43c', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-20 13:18:39', '2023-03-20 13:18:39', '2024-03-20 09:18:39'),
('74d8b55f739262a7407fcb2f7e744d14c44d2927d71101abfe9f0644016d6e1a29708a0659cd68cd', 92, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-10 22:07:13', '2023-03-10 22:07:13', '2024-03-10 17:07:13'),
('74e421c26b20344814ee293a04afc328b94827f7818398aa3eaa155d773b03125cddbea83f52ffba', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-14 19:04:00', '2022-10-14 19:04:00', '2023-10-14 15:04:00'),
('74eb142e0cf64148b8ae302c95afaf5708f676d0fe186b4258a703f5cedc8dfac154034516055edf', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-01 17:36:20', '2022-08-01 17:36:20', '2023-08-01 13:36:20'),
('7510bd85605cef1f5eea5e8922e0611f81ee59d25f035d2604f0c24ee839bb130ffe761be8791741', 27, 1, 'access_token', '[]', 0, '2022-09-26 16:05:08', '2022-09-26 16:05:08', '2023-09-26 12:05:08'),
('754238d2e17d18e96649bb0d45b1d5d94e0d9d00715fd90f8aff07413c4a5fc31ea47e036ce2c545', 91, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-09 22:39:56', '2023-03-09 22:39:56', '2024-03-09 17:39:56'),
('755e9360bb9e6963c62ffcb2657d7036446e8a885c62b6b6df30f8f87f24268e3ebf49d2830d2a35', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 08:38:31', '2022-09-30 08:38:31', '2023-09-30 04:38:31'),
('7566dd46611d3e688d781fbcf08ee2b5cc35c8859186cffaf238f8303d7b0e8a1eff56ef7d731455', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-08-03 14:37:06', '2022-08-03 14:37:06', '2023-08-03 10:37:06'),
('756b89580e932474b9ce0c41a1e2f02451196dfdd991c3ce1532078a36838e32de150df29756f19b', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 20:41:56', '2023-03-14 20:41:56', '2024-03-14 16:41:56'),
('75757232bd91f077d97ada6a81159c03b04185e40ab43fe743f9e3db8779fec2142a7b52139f51ba', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:05:30', '2022-12-13 23:05:30', '2023-12-13 18:05:30'),
('7578b7ab5f44af530f3ee77b623bd6ba66d24fdfb8ad221ef930c699318c2ac55a8c3c7fecb61d46', 27, 1, 'access_token', '[]', 0, '2022-09-28 12:05:55', '2022-09-28 12:05:55', '2023-09-28 08:05:55'),
('757f9dc4bda6105a41f48eaf6168bc725922630c1af4ee1dbf51241456c2cca9cb270dee4a15e1e0', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-29 11:01:21', '2022-07-29 11:01:21', '2023-07-29 07:01:21'),
('75d31dfb4bf86dc80553f6e6a0ff928a4c08c0736f916134797839672f81006b65829eacf0f81588', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-29 09:26:12', '2022-07-29 09:26:12', '2023-07-29 05:26:12');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('75ea1e3ee0fbb118a11579d53c5d3406bf71bfb6d15ccce352deb3530b5b8cd6f8a7ac3d2c09a48b', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-19 22:53:52', '2022-12-19 22:53:52', '2023-12-19 17:53:52'),
('76465e83c5dcb56ebd409e1174b8e7df98b4cb71e0f823708fa246c878ac6dcfce4cc3c30a691438', 27, 1, 'access_token', '[]', 0, '2022-09-26 14:36:24', '2022-09-26 14:36:24', '2023-09-26 10:36:24'),
('767239a54cf8373a50128f7257915395300ca443a35b8d67033b79a436f1ce0eb88b13380be4c86a', 92, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-10 22:06:59', '2023-03-10 22:06:59', '2024-03-10 17:06:59'),
('76af6b057bbbcd75238271508322ad3afb69f73e8896a9e16553421565b92705970101d14f16d49f', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-02 19:13:49', '2022-08-02 19:13:49', '2023-08-02 15:13:49'),
('76d64f532cae2bcc11295549224a38bd68ec71dfe23d163dae865214feeefa9f5bc252a0407791ff', 36, 1, 'access_token', '[]', 0, '2022-09-14 19:14:01', '2022-09-14 19:14:01', '2023-09-14 15:14:01'),
('76e5a787885688e746171f19e97d6a75ac568a95fbdcba0197d42e75ce0d39bd45971d2d72c11c7b', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-17 12:56:21', '2023-03-17 12:56:21', '2024-03-17 08:56:21'),
('76eaf22843914a8d4b4c89846eb2a16923b69604b9f537113c3f5a407639ad7d1df9a101a1ebea76', 89, 1, 'access_token', '[]', 0, '2023-02-11 10:28:02', '2023-02-11 10:28:02', '2024-02-11 05:28:02'),
('76fc61de9c649fecf9a200f4d9a97da51097175dfc8b4619304d6e1a164decdcc5d20c5055121ea2', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-26 11:16:42', '2022-10-26 11:16:42', '2023-10-26 07:16:42'),
('7708445f96d0186da8b58d7e704c13448f851f1120de43a631b2868a57ea35f73fcd03b8ec965b4c', 92, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-10 22:06:45', '2023-03-10 22:06:45', '2024-03-10 17:06:45'),
('773a1a0ebd07387bb985d2906ffa9365e7782beee18a31e9d520ce51c636046981cc2ab363c9add7', 1, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-16 14:47:41', '2023-03-16 14:47:41', '2024-03-16 10:47:41'),
('7747f43fc3e7bbff204aaba63a3d2a5b4ca49c526a234f5a64c09f0a73eb97d59dc024d16a7f5e9b', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:07:22', '2022-11-13 22:07:22', '2023-11-13 17:07:22'),
('777a12c3f006b3c8d9368534abfe6f17d43574ccd2c8a73f1396af9c91f33749316553cdd5e454d8', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-15 15:39:21', '2023-02-15 15:39:21', '2024-02-15 10:39:21'),
('77c8cfbca01ad40caa78cd302271981c804fe743052563368745aa9719bec715dc28c9f40f9956be', 27, 1, 'access_token', '[]', 0, '2022-09-27 18:36:45', '2022-09-27 18:36:45', '2023-09-27 14:36:45'),
('7825154a93c7287456384c2cf18bce15911f1d78671c36c6bba93a047e9e7fe7570b8a6f66149466', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-21 00:33:18', '2023-02-21 00:33:18', '2024-02-20 19:33:18'),
('783c78f58c5cae9f2b7719cedc3db99fe65cf2ebc62503539b4791732a69227295617a985038ce83', 36, 1, 'access_token', '[]', 1, '2022-09-14 19:30:33', '2022-09-14 19:30:33', '2023-09-14 15:30:33'),
('784470b71c9f9f18763885c732c128db51dd2c0eebc2679fd1e30fa4667c3e916c92491268843042', 27, 1, 'access_token', '[]', 1, '2022-08-11 12:43:37', '2022-08-11 12:43:37', '2023-08-11 08:43:37'),
('784abe2e511750bd8cb67057559f1c4e49711053e02878b17cce2835a43a487899dd82c13a173231', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-15 13:24:30', '2023-03-15 13:24:30', '2024-03-15 09:24:30'),
('78a5d460863792b4629879ef7c312978001c57a952c6306cd4cbac8f47dfdbb2f2b90a8a1bb28730', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-17 22:44:12', '2023-01-17 22:44:12', '2024-01-17 17:44:12'),
('78ae15c965673b03b81350ac930a78aa8fd27e078afb0c0fac63054db6da905be47262ac38375d32', 27, 1, 'access_token', '[]', 0, '2022-09-27 14:44:22', '2022-09-27 14:44:22', '2023-09-27 10:44:22'),
('78c8d51e993d3c002cb6ceda310d42876c81cc1fa8d64753ebb8781e8512428da7cabae6e1a60be4', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-01 17:36:17', '2022-08-01 17:36:17', '2023-08-01 13:36:17'),
('78d9bb4fbc3eb5cd75fea6bb57a5fb2375a42eb944fa3315d675e98b3a0b70e84cadeb810346190a', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-13 23:20:28', '2022-12-13 23:20:28', '2023-12-13 18:20:28'),
('7926e9864680b0330ce4351fd9dbac2f381faff190da3f4608593f6aa67e133d2aa06dd654dd7209', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-09-30 20:41:31', '2022-09-30 20:41:31', '2023-09-30 16:41:31'),
('7960e0d0a9c8a601b0115cf8eb719a83bc1477304c85c3e1f77499a2936b926b19cd573e1a7598ab', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:40:31', '2022-09-27 13:40:31', '2023-09-27 09:40:31'),
('797591150ff715ac63b089b809c78a2d809fd5471702c6683ab19937a72642f673541d1483bb24fa', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-21 22:43:25', '2022-07-21 22:43:25', '2023-07-21 18:43:25'),
('797a29db66a38f2d52343382415ea903157a89897aae69fc59dead526d230a0ea9e964666dd9bea0', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-29 17:10:53', '2022-09-29 17:10:53', '2023-09-29 13:10:53'),
('79c1c34a92a18b4bf48914451bb5f5c74b197a6c2d17df48b759ea2f33b3f8aed48cd59d46a1fdfd', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:55:48', '2022-12-13 22:55:48', '2023-12-13 17:55:48'),
('7a30d798651720c859637713cda25498148fd40b0ce28f7a7c3b48103a2871af4825daf3cba58f24', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:34:16', '2022-12-13 23:34:16', '2023-12-13 18:34:16'),
('7a529af691d88743e7d7e1f555c9520a6fc566a2a7fc2f03187555827d89a028b2f8f6bed0ed9c63', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-14 08:18:19', '2022-07-14 08:18:19', '2023-07-14 04:18:19'),
('7aa5c077c86e011489b1005acc1a6858b791cbe66ad117fd0b3ad0b2035261a70e9a9e9675745fad', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-06-17 20:24:34', '2022-06-17 20:24:34', '2023-06-17 16:24:34'),
('7b5f57cc0971384c1ecfe16cd5bc128222ee276f3890f3e73a419d654dbf900ee78fc0f5b64e20e3', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-11 21:05:32', '2022-08-11 21:05:32', '2023-08-11 17:05:32'),
('7b803a4a2ae8ba0d4b5522222faad0d3e1a8d36dc67315f66479f312352530867b043df2d668faa3', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:10:06', '2022-12-13 23:10:06', '2023-12-13 18:10:06'),
('7bb1054eb8d4aa7b04d36dad881aeb4e2eb2476dff40aec647384760a0de90dfb61b69229b757d63', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-17 12:37:17', '2023-02-17 12:37:17', '2024-02-17 07:37:17'),
('7bc674284552419f103edab80eeff5c4313e023ebca0efd9cfc7027432648ce55b8485a359c8f327', 92, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-10 22:06:35', '2023-03-10 22:06:35', '2024-03-10 17:06:35'),
('7bee37470e3e1ca1a3163774e37d4d3dc8ff8154e7750b35631ba8e9702529e090edf32e990767db', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-27 11:07:25', '2022-07-27 11:07:25', '2023-07-27 07:07:25'),
('7c93c5b224ac08668458ac6fc58327f554d365aaa88cdface2849667ec8e3522c4b94477290939cc', 27, 1, 'access_token', '[]', 0, '2022-09-28 10:26:54', '2022-09-28 10:26:54', '2023-09-28 06:26:54'),
('7cc8c0c7909f64f5d180a4d7e59e1523c53c985857d0680e88c173e203e4feebe499714bba3ddb95', 36, 1, 'access_token', '[]', 0, '2022-09-14 19:14:00', '2022-09-14 19:14:00', '2023-09-14 15:14:00'),
('7daf966c1d71ee416f87bb65628608d4068c53abe5c1cc56c6242b42701787f8c149c527f0877f9a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-17 12:56:19', '2023-03-17 12:56:19', '2024-03-17 08:56:19'),
('7dcfacc4237e06c796cccd4b28f0cc3c0380146ea3402271e99d07de701d95d212ee12358f3fea99', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 17:31:59', '2022-10-03 17:31:59', '2023-10-03 13:31:59'),
('7ddfc2a7ef9ae6ffeabff36960039c15daf6b9f713518305f36b0402fe304e0dc2b27cd42b2e7598', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 20:41:20', '2023-03-14 20:41:20', '2024-03-14 16:41:20'),
('7de7a424a6331d67c592a77d4d8cfb0889f8eb389a82186d159f7a13b4b4b96808ddb49499941dad', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-04 22:22:18', '2023-03-04 22:22:18', '2024-03-04 17:22:18'),
('7df385b35df1708433c8437270ba47fa87a9d2ed7b939fe953b2de3a5646274678a4a168b176720d', 55, 1, 'access_token', '[]', 0, '2022-10-30 01:02:11', '2022-10-30 01:02:11', '2023-10-29 21:02:11'),
('7dfff315098b6ff3ed875ce3226302ee410d355b57dc4c9bc6588f3ed7ccac08139c3160e82cf937', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:13:36', '2022-12-13 22:13:36', '2023-12-13 17:13:36'),
('7e0db7b021f05119d47e33044d621de97b920f43cafe609cce2b79c16a0b0d8088ec06ce72fdfcd0', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-09 12:46:05', '2023-02-09 12:46:05', '2024-02-09 07:46:05'),
('7e36f2f900bc45ef228425c638560b387428ef4478b5e8fed877b349b7d044236b61f3bf130cc143', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:01:38', '2022-10-03 12:01:38', '2023-10-03 08:01:38'),
('7e9544a70376575c7abd10e153ce3e8478fffecc29c58bd8ced28aaac2d4abd76cb507912847c521', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-09 12:45:19', '2023-02-09 12:45:19', '2024-02-09 07:45:19'),
('7e9a5f25de104d80dc05a63ddfca834eb07af283e397a90c4d15da68bcdb64443ad107571c503498', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-28 11:32:24', '2022-11-28 11:32:24', '2023-11-28 06:32:24'),
('7ec02d565aef6e758b780cf7826ee1de53daaa04a4850ecff47ab0a5fa19a68c61c4a3e97d51b48f', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-21 22:44:20', '2022-07-21 22:44:20', '2023-07-21 18:44:20'),
('7ec6747c32875ce3aa34624cbddb84e8890fb4f7e415d58547b3a20ec54fadbc2b905de4b21d5689', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-12 21:38:27', '2022-09-12 21:38:27', '2023-09-12 17:38:27'),
('7ed9fe34bb600f3ce985190ae8c1e20daf6f70ba0ed7a8ae38ebfbca333a5dd464759c40eae48bcd', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:58:16', '2022-12-13 22:58:16', '2023-12-13 17:58:16'),
('7f5c77fc8ccb621330fe640684de936b801a19188817f7c23932deb25b89e920f4f4a86f528ceefe', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:05:26', '2022-10-03 12:05:26', '2023-10-03 08:05:26'),
('7f62dcf9a1c644ef8f20cb95b29d8fda42972d43679fa1c6af403e321c865b09944ff4aad3c3b1a1', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 16:24:44', '2022-10-03 16:24:44', '2023-10-03 12:24:44'),
('7f70cf70a92ec9fe8ecf6e40d02ce37556f5187c08f4a550117d8022b62ef7e88fb9952e1a1efd4d', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:29:12', '2022-12-13 23:29:12', '2023-12-13 18:29:12'),
('7f7b5b4f0fd5c15511ffcb80cbd10090ee6d859f989b747369f0576594375fb4556fc4b9b004bbd4', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:22:04', '2022-10-03 11:22:04', '2023-10-03 07:22:04'),
('7f95119fc3e01a6c3f1bf4f2f5ba9ac0015d7edc18f821d2e4d06344ead65437a1212e681060e258', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-30 10:39:08', '2022-12-30 10:39:08', '2023-12-30 05:39:08'),
('7fef48c8d2209d49ddda22522412ac18603d556f6887eda040d027e7af4c71713158056021aac8cc', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-19 22:04:12', '2022-12-19 22:04:12', '2023-12-19 17:04:12'),
('8016eb5e4de5feaeefdb658e977de311a10245604c7b12d9f355fda838c0af7c95f5dc1904fb688d', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-10-03 11:51:41', '2022-10-03 11:51:41', '2023-10-03 07:51:41'),
('804ebba5edc2395e461df412dad8d4c57324408768152813fcd02d5cbb91da860cb9065b020225db', 27, 1, 'access_token', '[]', 0, '2022-09-28 17:15:52', '2022-09-28 17:15:52', '2023-09-28 13:15:52'),
('806e53aabd48e5695ea8bc9c573b618d7c18947b3bd28f15d4398bfa93c4c9368efea864311c2d49', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-10-03 11:08:18', '2022-10-03 11:08:18', '2023-10-03 07:08:18'),
('8088d9802d4974a232606b198e536f9262092b5f2fb0cd2bc18657f859eefb96bf5148f5a72b6a6d', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-07 21:05:26', '2023-02-07 21:05:26', '2024-02-07 16:05:26'),
('8099f7db280c7bba8f8222b205c437f12a7098ecbd0b6cf7a71cfa80072c216ba61440336fce69b4', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:00:41', '2022-12-13 23:00:41', '2023-12-13 18:00:41'),
('80c2c2a9bf51daf03541c1513af2f2da704e10b83d84427791ca93e3451eed00f7aeef17c5c6408d', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-06 13:11:23', '2023-02-06 13:11:23', '2024-02-06 08:11:23'),
('812e9b010716b77be938bacf9d9529c3ef25392b8bf7d387206438ccb930d921ea7f464a67eae0e9', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:41:13', '2022-12-13 22:41:13', '2023-12-13 17:41:13'),
('8143782228c8ba6e2f471dec1c9c849d11ad52167e56ea9194900ab38aec181ec4f952da28360bf7', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:08:20', '2023-03-14 21:08:20', '2024-03-14 17:08:20'),
('8168da83930d79e9c2a6896a4a6a9df621d3b2d442da728e00045abee053661a475761e21a2266de', 27, 1, 'access_token', '[]', 0, '2022-09-27 11:26:40', '2022-09-27 11:26:40', '2023-09-27 07:26:40'),
('81784c3216e7b5f73f2aabd07663c1531c5327236dc6b233d2349d436d702d6f3cf1249abd41f7ba', 27, 1, 'access_token', '[]', 0, '2022-09-27 14:43:09', '2022-09-27 14:43:09', '2023-09-27 10:43:09'),
('817e62027ed5652ce0baff329275e3b40084e41453e29aeaa0516fe4ee1c0719909c5415d98a3a81', 36, 1, 'access_token', '[]', 0, '2022-09-14 15:25:00', '2022-09-14 15:25:00', '2023-09-14 11:25:00'),
('818b531acb9e4b861afc038c305e7c036186e5cbec506b6caa67f059a54363370909303f584ec66e', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:01:46', '2022-09-28 11:01:46', '2023-09-28 07:01:46'),
('8199844fd611e17a668eef22b0cf613b03e562bbfc91159b7cb848901efef99f15744bedc067d370', 41, 1, 'access_token', '[]', 0, '2022-10-04 10:23:58', '2022-10-04 10:23:58', '2023-10-04 06:23:58'),
('81a4dc997a15ddc5d43b91803844753ce25b03e77a4a33c97400b8507a18438398ca41f701eda733', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-05 13:43:21', '2022-08-05 13:43:21', '2023-08-05 09:43:21'),
('81b6bfc2d27d46aebb7b52cf685696f10cf48f5baf9b8126607c4f54b4e211bc007fc8c1ca7e316a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-01-20 21:33:12', '2023-01-20 21:33:12', '2024-01-20 16:33:12'),
('81c86d824074b93623563d7c3ff176def59e619ce1e352e628490fbc8034b3dde0ab49c123e43f2b', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-28 16:44:10', '2022-11-28 16:44:10', '2023-11-28 11:44:10'),
('81f8154751de32f749b968b2208945f8db96523b6968df7273e056f2451e4b04ca0b573cd4e5f158', 34, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-27 11:01:44', '2022-12-27 11:01:44', '2023-12-27 06:01:44'),
('81fbc3ecab6839f53135f5cfdc3d37461e7bf6f0e66a529a364ccbb10d54e202673bd65dabe66ff6', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-09 12:45:11', '2023-02-09 12:45:11', '2024-02-09 07:45:11'),
('8241d468d74203c7239c8a979ba3f2ac72dbb44e0d50d18514813f15afa77763e0dc7fa40e4f4025', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-01 08:54:57', '2022-08-01 08:54:57', '2023-08-01 04:54:57'),
('8245c8fc390af4543a0ab43020c74d6ae506f4c430e27176d717e287abda0c8fbc647a92beddecdd', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-04-15 16:58:12', '2022-04-15 16:58:12', '2023-04-15 12:58:12'),
('82807726916cd6eb51c7c9b33539293e8a8deab121b8ad526e8c84ff6a17d47567893a645a91ab0f', 34, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-06 07:24:02', '2022-10-06 07:24:02', '2023-10-06 03:24:02'),
('82a608bfe299ddc0695aed9de7cc271590cf3d5d64c7399b01af45e15fe957804781da40686c5f24', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-03 09:53:19', '2022-08-03 09:53:19', '2023-08-03 05:53:19'),
('82b657618609fa2db9e87e840e2356eea54d8064d1edfe1bc696cd74a95d7d0b72a9fd9f8eb28369', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:03:55', '2023-03-14 21:03:55', '2024-03-14 17:03:55'),
('82f3cb3db6c681330045f5fe49e374a72414e1e748653159b4c0f3b5a436a46340d9847a98cb5076', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:20:51', '2022-12-13 23:20:51', '2023-12-13 18:20:51'),
('830d4c4afc9d6b87bc2a4d5fa9b9f8217e746278d126ea00ee78e8a3d0c0169418d253ae8417c635', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-21 14:00:31', '2023-02-21 14:00:31', '2024-02-21 09:00:31'),
('8352dd756f878cbc24ce6711394444376af889ddca569628112334313fcaaf01b87b6c3d0cb2c715', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:25:25', '2022-09-27 13:25:25', '2023-09-27 09:25:25'),
('836128280e6f326c610bec5e9951f5477ea83a5870272c202a97bb8b063caaa1e3d1ca2c9993316c', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:01:46', '2022-12-13 23:01:46', '2023-12-13 18:01:46'),
('836a7d17b633ba22292e08cb016cf2e6019f4e37f4ba2a670b9e85adeaf7535d5f12bc200b108063', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-08 14:19:06', '2022-08-08 14:19:06', '2023-08-08 10:19:06'),
('838a6d3e4b533172a55db4c1d2a9eb11b1fe0c6e956bf901f66c420d85288c6dd00eff6518e918f3', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-19 23:01:22', '2022-12-19 23:01:22', '2023-12-19 18:01:22'),
('83d4dcde30fe3b29dd705d2f2b2ed8dbb3d82ae575258bbe4cffc200a9e9d87b49a6865d4435dce0', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 20:41:14', '2023-03-14 20:41:14', '2024-03-14 16:41:14'),
('83d79067735f4082990dd30ffd2542651e580d2e3aeabaecc7ca666034cf6ac9a3de707ca986a385', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-20 17:51:27', '2023-01-20 17:51:27', '2024-01-20 12:51:27'),
('84094d8d32a164a0b4606b5d7c7ae659a82429979ea27b679e9ded680420e2cf1d4ad03338835183', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-10 13:10:49', '2023-01-10 13:10:49', '2024-01-10 08:10:49'),
('84aa34543f334dde982183de6af12f8af73cc2891a7e4b7196e6723301a6e76b638bfef470847514', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-08-03 11:14:18', '2022-08-03 11:14:18', '2023-08-03 07:14:18'),
('84f3246d81e0d1d7e42894f7e16cbd33e3c81d9faf9213f122c19449d07c29e16166fd754197a95c', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-28 12:01:33', '2022-11-28 12:01:33', '2023-11-28 07:01:33'),
('850b2ab6a2071005de3a2d87a32676483f23a9068293377883f561094e58b6e5cb8023f6820c72ef', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-14 19:04:06', '2022-10-14 19:04:06', '2023-10-14 15:04:06'),
('852e5b99786b35c14ee0d8d942d593774f267a58dcaad95a3c9ef491e1b2687e87ee72b294ca7d3e', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:15:11', '2022-09-28 11:15:11', '2023-09-28 07:15:11'),
('8539981dca456a494faf3413759d1d4c13f56017819f33e8fee6cb999db52332a462bab11d309ec3', 89, 1, 'access_token', '[]', 0, '2023-02-10 23:49:07', '2023-02-10 23:49:07', '2024-02-10 18:49:07'),
('8540f5c045843506befeef5675ccce77317dedd08624e73f9875d1491b184287733e79fedb3f4bc6', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-05 19:26:45', '2022-08-05 19:26:45', '2023-08-05 15:26:45'),
('85857a4a6e6285ade1f29398df0ce2ab18fb07faba08e0ea949c19ec2e54a10a23ced429069855c0', 36, 1, 'access_token', '[]', 0, '2022-09-14 17:55:29', '2022-09-14 17:55:29', '2023-09-14 13:55:29'),
('859efe261657b78727fcbdc0a510f6c6e80dd406dccfdd802a4d98d41d173c050e42199ba7af9d19', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:35:42', '2022-12-13 23:35:42', '2023-12-13 18:35:42'),
('85ae30932764b44351b6bc8554ccafc16a3d30a2a569664f5fc0253ca7034764b83c3e4cc3b343ee', 6, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-12 22:19:41', '2022-12-12 22:19:41', '2023-12-12 17:19:41'),
('85b7caa855b1f614d7925d0cd764e1123eb640158d7aa3a7771d80b91495b3c88df6b359e414191c', 27, 1, 'access_token', '[]', 0, '2022-09-28 16:26:04', '2022-09-28 16:26:04', '2023-09-28 12:26:04'),
('85cd0fdf3f7924f2f308ee4e1d47c7987f2f8c5b870028377987eb3559b534e53da1db0a372a8e76', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:21:51', '2022-11-13 22:21:51', '2023-11-13 17:21:51'),
('85e8c5dbb0d584ae89e77edc8b8f104a60cc9ed6fcc357b604786bd40ad30976e9378ae2d6df485e', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-29 14:56:25', '2023-03-29 14:56:25', '2024-03-29 10:56:25'),
('867dea00af1fce6fb43018a07b239a76df6931174947038d5706b19ff300dd1d9ad1d0bf9244fa65', 27, 1, 'access_token', '[]', 0, '2022-09-26 15:33:15', '2022-09-26 15:33:15', '2023-09-26 11:33:15'),
('867f2b0e9539d8e985fe12c5a150f002a5781b19d05799a602e36e56dac472d105a4a17eae7388b4', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-20 17:52:03', '2023-01-20 17:52:03', '2024-01-20 12:52:03'),
('86bbecab35271ecd473ba5af637bfc91e204845646881f47371ce30e551470e5b155c9efb7791492', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:08:24', '2022-10-03 12:08:24', '2023-10-03 08:08:24'),
('86c2a7024ed4eefe2ae6a6b07bea59113e3598d652c76b7ccae7fb7d5cad70016daf20cacf3195c8', 53, 1, 'access_token', '[]', 0, '2023-02-22 00:27:53', '2023-02-22 00:27:53', '2024-02-21 19:27:53'),
('86d539b7a11c9d5c1b4ef357768844c4635177b14a2565e87f5b58178acc2502e3f1066b3fb60876', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-08-02 14:18:44', '2022-08-02 14:18:44', '2023-08-02 10:18:44'),
('8706e7e0ff7156a7aef8c914f20573c83dd03e7a77bac3b8e643bca69ae3f3928b7f07a0fa80906c', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-21 20:56:16', '2022-07-21 20:56:16', '2023-07-21 16:56:16'),
('8713d0c56d72a4b276b3747b804e7332f9e0f92c004a0c50cedd830a1d8bd82ff26eb2ecfd2c290e', 27, 1, 'access_token', '[]', 0, '2022-09-27 14:00:46', '2022-09-27 14:00:46', '2023-09-27 10:00:46'),
('8730e8f481392d620bed5916d0c72c9bb329f3fa4971611ae987d83e36dfcecbc75b89a72da79f8d', 41, 1, 'access_token', '[]', 0, '2022-10-04 09:15:00', '2022-10-04 09:15:00', '2023-10-04 05:15:00'),
('87552fd67c4826a381bbfaf99e73b683d5c51c4e54d9daefe435fd58725cdcb502a03fd519c71dc1', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 16:24:13', '2022-10-03 16:24:13', '2023-10-03 12:24:13'),
('875c0342600f4229170947a1d5fce64f145a9d73eace5f30cb6b20c21f18bf4c7640178088e1b0e5', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-04 08:46:57', '2022-10-04 08:46:57', '2023-10-04 04:46:57'),
('8762621ffa7a82cb28bc65284184f72bdf6ffc36f0e9678ce19ea2ae7e0f3241276672f6c2e77d0c', 68, 1, 'access_token', '[]', 0, '2022-11-13 21:54:04', '2022-11-13 21:54:04', '2023-11-13 16:54:04'),
('87a44bbf554c10a76b84b4244dc90e97810206d0a49d2b620c1a9078258ceb6a7d15a16f09cd7b5f', 27, 1, 'access_token', '[]', 0, '2022-09-27 11:24:41', '2022-09-27 11:24:41', '2023-09-27 07:24:41'),
('87c414ffc179ec6ae7b26f33ae6b22cd5e1a8e690a54b6129d250a4cd44232ff5972ed3b0399b417', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-02 17:30:13', '2022-07-02 17:30:13', '2023-07-02 13:30:13'),
('87fb9cbb4785fcad0b40aa0f593c5070ab60b9bf04b34122b073431cdfbe3704e12341c3416f5155', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:26:04', '2022-09-30 15:26:04', '2023-09-30 11:26:04'),
('8848df2a282dfa6d4fd4ee89dc1f93fb2ebb51c6c2c72d2eb669527dfa40cdfda4a2043edf4ff353', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-11-15 16:39:27', '2022-11-15 16:39:27', '2023-11-15 11:39:27'),
('885a7f525e229ce06315fef1231946ead2031e2593d9930493c660a496f0b9cb771c1a907dffcab9', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-15 09:03:46', '2022-11-15 09:03:46', '2023-11-15 04:03:46'),
('886864a6b5d847fee223e55c91b67cf52822624dce4bc3462e447e202732d58e24c17539aa9f96ea', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-11 14:17:49', '2022-08-11 14:17:49', '2023-08-11 10:17:49'),
('886b3f149869233ed225563b374d48e87f84c1bdbd84da478c2996602dd0eac7d1d7fc5671c94793', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-08-18 18:28:19', '2022-08-18 18:28:19', '2023-08-18 14:28:19'),
('88ca89b55a3885e76ce3448324ab9a88283938519776e46979c90efc0ec6fb4f2afd7ad56c1ff835', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-01 16:02:28', '2022-08-01 16:02:28', '2023-08-01 12:02:28'),
('890f29ceba0861d337def055bfe5cfd460a199ca47b5ae7163a07e84e5e8c4db018abd3bf4d7ab06', 34, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-27 11:01:56', '2022-12-27 11:01:56', '2023-12-27 06:01:56'),
('894411f9bf8ca203b05d01c886c426f0dba0b528935370523079ad021dd22609fafd16576ad6905c', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-19 08:07:11', '2023-03-19 08:07:11', '2024-03-19 04:07:11'),
('89b99b1fb9385e94a59a9c30fbf6168c5fff6082449fd2693353637711360e8d8b684ad62e8928aa', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 20:43:34', '2023-03-14 20:43:34', '2024-03-14 16:43:34'),
('89d01994deee3994d8b540481e989c7c801577221377a6cc366c4dc1093283b3bea4ebc6426ebf68', 53, 1, 'access_token', '[]', 0, '2023-02-22 00:21:26', '2023-02-22 00:21:26', '2024-02-21 19:21:26'),
('8a008047606694aabcf50da7a56cb7875eab3e57f9c4374b6244f7af1e3724c9862043cb20bbf71b', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-10 22:29:59', '2023-03-10 22:29:59', '2024-03-10 17:29:59'),
('8a1afe35e2b75b3d6d0c5d8eef9751e65b7f69715df3f2f73470ce536d1076bdcf8c532c98959aae', 27, 1, 'access_token', '[]', 0, '2022-09-27 11:11:35', '2022-09-27 11:11:35', '2023-09-27 07:11:35'),
('8a2450eb711cd3bd46c2aad63d39f68c71360c9b155fe4c24d9de2666cd1ca8b7b3653c13b764991', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-10 13:13:31', '2023-01-10 13:13:31', '2024-01-10 08:13:31'),
('8a3807a10ebbf45cc56088509cf652f9d586c1c4f723999a87b435748e8fe93187257d49ca93ddb1', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-09-02 17:09:51', '2022-09-02 17:09:51', '2023-09-02 13:09:51'),
('8b07895582e7cd3898959cf9a583f3f228031a2fba11941ab3596dc84989620a4421cd115ac01f8d', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-17 23:54:53', '2023-01-17 23:54:53', '2024-01-17 18:54:53'),
('8b07bb5636a3f0095cc28fefdf9a43530de9eff227da702d8821a2f18ca01d86aa1c40dd185de237', 36, 1, 'access_token', '[]', 0, '2022-09-14 19:38:19', '2022-09-14 19:38:19', '2023-09-14 15:38:19'),
('8b20b18596dc95a0fff97c7647809a8c2b986cc17d778da084ef74d2bd7327724b7079596278413d', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-07-29 11:51:37', '2022-07-29 11:51:37', '2023-07-29 07:51:37'),
('8b6df7e4ec58dfb4448bd87c718f2bacfb312e8680d617e3280c1b7a0463ac8d41a5b2f08fa3d1e6', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-20 10:32:59', '2022-07-20 10:32:59', '2023-07-20 06:32:59'),
('8b79a9095deafe1c388f9d6649a50f70274bc3079ae3476d70b29ec480760345907742f4cec0c6aa', 94, 1, 'access_token', '[\"user_scope\"]', 0, '2023-03-16 15:04:35', '2023-03-16 15:04:35', '2024-03-16 11:04:35'),
('8b92c17a8e694d9a87f678a01b620cf3b04b62f914c135fdafb56802add8209b9994b7dfc5823608', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 10:27:09', '2023-02-24 10:27:09', '2024-02-24 05:27:09'),
('8b9ac47b3983dff73b34608f0091da8742c7df146b5d4dfd77e941b83a1d935733cddcc2d58eb940', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-24 10:27:12', '2023-02-24 10:27:12', '2024-02-24 05:27:12'),
('8c7c96bf4b9362a977ec6fec1ad1cc0cb3befdf2692bbe232481b05ca1f9b45cfa35bf7fd1032d42', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 10:55:38', '2023-02-24 10:55:38', '2024-02-24 05:55:38'),
('8ccf277e438c70b5f9337ecf4a9c5d9fa3eace131fdfb250088b0428f5e3b665e1ef6c7d887f4b7d', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-07 12:37:35', '2022-12-07 12:37:35', '2023-12-07 07:37:35'),
('8cd7984ff64b5e10abed357a63e9b4c52c76db7a09d045c524de88b4d7df6993100e2396f2225a17', 14, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-16 11:38:11', '2023-03-16 11:38:11', '2024-03-16 07:38:11'),
('8d60fdb9e2031187dfa072a5f4fb0fdff0560b37f90758101d97aadc9cb995fd264e75810703274f', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-09-02 16:49:22', '2022-09-02 16:49:22', '2023-09-02 12:49:22'),
('8d9a99d256cd90fa6a77f6aa084baa334411d992319891dba272d136a61902acf542eaf95ca0c085', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-17 12:09:15', '2023-02-17 12:09:15', '2024-02-17 07:09:15'),
('8dc151c14d7d7b57556e86a9b352278d951c98707951cd84f21bfa1805577bf5dc07ef54c434eb56', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-09-26 15:08:06', '2022-09-26 15:08:06', '2023-09-26 11:08:06'),
('8dd06cacd243bb96c1b9edb170114fae6910ed481f6447f393ea224ac7d299afc803bcb118d21b80', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 20:46:00', '2022-09-30 20:46:00', '2023-09-30 16:46:00'),
('8dd134450ddb693f9a3cab3e726b34a7f31aaf28e996f42f017de18a0c23d251cc6db00256eeaf14', 91, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-16 15:33:25', '2023-03-16 15:33:25', '2024-03-16 11:33:25'),
('8ddc8e5bd6b0a1cefe5af90a29e3a8615e1a001d40c23ea6fc2b6d948f7e91d01767006be12962d1', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-05-27 17:07:08', '2022-05-27 17:07:08', '2023-05-27 13:07:08'),
('8de0ac9a7c99d678afc62302248e98ceeea4947d285b4d4d530fc11daf993e2b956d92be5ad1f861', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-04 16:00:35', '2022-10-04 16:00:35', '2023-10-04 12:00:35'),
('8dfa945ea3472e373bcd264b1e51a388600bbd2aeef280068c019de5771ff356bd01780d8a18c0b7', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-08-18 18:30:24', '2022-08-18 18:30:24', '2023-08-18 14:30:24'),
('8e99b35402c4f99a387d05f06a893d63985e181f71bba32b514ee365b7c1ce6ad977fa29e73c6473', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-15 10:03:27', '2022-12-15 10:03:27', '2023-12-15 05:03:27'),
('8efee9075d82c89c958fb59f71704ef9448c94a6df73a79a9d6a6931803577be5ca575ae10b3c46b', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-04-08 00:48:54', '2023-04-08 00:48:54', '2024-04-07 20:48:54'),
('8f0055b5c1656b6ea741ad3023203898cdc0d893be8b61fb32f7714dce01f608b9f071e44bb59053', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-25 10:15:05', '2023-02-25 10:15:05', '2024-02-25 05:15:05'),
('8f3281761eb05b5f239f9d8a01ce33ed81175c3fee3a33439217451a32be6e1a9c293bdc60691bf0', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-05 14:23:34', '2022-07-05 14:23:34', '2023-07-05 10:23:34'),
('8f4cc9149b5349f0bf118b502cf61eeb2c590f65800245b164f93e0c066d722d26a2a4a186746822', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:07:15', '2023-03-14 21:07:15', '2024-03-14 17:07:15'),
('8f7da746c5f8f6c49483400ab7e9c2cff7197b23e9022ee39ebe1123e4ed04e0303752fe369f412a', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:21:20', '2022-12-13 22:21:20', '2023-12-13 17:21:20'),
('8f9050afb51afae054013f71b9ad4d85c19f33810a3c642ca3835f6a4d7b6873c3df66b191e8001c', 89, 1, 'access_token', '[]', 0, '2023-02-11 10:28:07', '2023-02-11 10:28:07', '2024-02-11 05:28:07'),
('8fa83a5b33f028ed34b9fe4356ea665648782d74aa2a1e88301a9444f2f9196b57774605cc10610a', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-13 23:00:15', '2022-12-13 23:00:15', '2023-12-13 18:00:15'),
('8fafd0e602a2b69f1a8b9c959f790fe988418efedf922c5f62e47e8ef51a6f363407dc3cc848958f', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-05 07:22:45', '2022-10-05 07:22:45', '2023-10-05 03:22:45'),
('8fc00798826bc92fb752af7d318c84af4de4df651fe26085c51cacef051521345b744c461f27290c', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-26 12:06:44', '2022-10-26 12:06:44', '2023-10-26 08:06:44'),
('8fc1cbb96dd6c187cf0996c4b2c9956991894faadf000b48dedbeadf21b088f0887f8a560f9cc4b5', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-05 13:16:55', '2022-08-05 13:16:55', '2023-08-05 09:16:55'),
('8fd57048f08cdf18fcc1b91df5eaff5b6f13c14f3968abbfe99fff39344658dcda58974e8b1eaab0', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:50:32', '2022-12-13 22:50:32', '2023-12-13 17:50:32'),
('907a20a04d0ca99406f7ddf17dd809f0eb18895742ff0e043a5960a83bbc5647144520ac0ad800cb', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:20:43', '2022-11-13 22:20:43', '2023-11-13 17:20:43'),
('90b5887d1717180183ee4de0d8da95759c22df79be230036839d2e7955ead88f9f2655034e000bd2', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-11 14:05:31', '2023-02-11 14:05:31', '2024-02-11 09:05:31'),
('90b6c21b09714089138cc455b66ee923dbbdc41355d711eb23c9acc29f1c60f8a49ceb06a57814ca', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-09 12:38:03', '2023-02-09 12:38:03', '2024-02-09 07:38:03'),
('90c1e92afa12a612cd504dc93b4c1a8bd5c6540c19f7c2d39a5079f87151f78bcfc0db97c544d0a7', 91, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-16 15:33:48', '2023-03-16 15:33:48', '2024-03-16 11:33:48'),
('90eaf4c605c4a5f8ed07ab82497127161887f1fec7e105109843990e40f53ff0b84417649d61cabe', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-01 08:54:54', '2022-08-01 08:54:54', '2023-08-01 04:54:54'),
('912f9dbb8275fc3e8e06277d31094d7e949c48780537b1796ca6695cb4a7800c5becd374c730cced', 68, 1, 'access_token', '[]', 1, '2022-11-12 22:40:18', '2022-11-12 22:40:18', '2023-11-12 17:40:18'),
('913d85b97133f8c6741cb6d4e0c156555db890af421c86e2c3c82bb29739fa05581610ebf4123042', 27, 1, 'access_token', '[]', 1, '2022-09-28 11:39:21', '2022-09-28 11:39:21', '2023-09-28 07:39:21'),
('91774150ce34461ef6962c228671d81fc13a95d815677a2964158592a1ff7c3f280254fef2731a66', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-11 14:04:22', '2023-02-11 14:04:22', '2024-02-11 09:04:22'),
('9181cd08adb6cb41ce37979f7de3807324075d2c51d4de175a68413e4854327005038ef141f50074', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 10:49:25', '2023-02-24 10:49:25', '2024-02-24 05:49:25'),
('91954714db9a515a60c0dc2dd48bd3c5f32d433e11f3d6c2a2a35489ea855579172069d669d37439', 92, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-10 22:06:03', '2023-03-10 22:06:03', '2024-03-10 17:06:03'),
('919e6504d464b4ddc8ba39effddefc025d9dcfdb8f5de698c2a25306e9ee13240f185bd23ae7f785', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:05:42', '2022-10-03 12:05:42', '2023-10-03 08:05:42'),
('91a63b8e45de23f8aab8159d010de17665a8f47e5432b0e906d95f92774cba023bd603edeadba92c', 68, 1, 'access_token', '[]', 0, '2022-11-12 22:39:44', '2022-11-12 22:39:44', '2023-11-12 17:39:44'),
('91a75ffc046a50e359f8387c137bff69a33e41a4278b5c64e114d3a04cdf513c49758968710c9a47', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:15:36', '2022-11-13 22:15:36', '2023-11-13 17:15:36'),
('91de18eacc8b575231d7785ebc1a34d45f49fae73b55647d43a3d1d322d2fb8af6054734f2de0a39', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-15 16:38:40', '2022-11-15 16:38:40', '2023-11-15 11:38:40'),
('92005541137c51666276b0378184e3fde9aa8f0534f93653f60a75ab6b3b8dd39863518a3436abf4', 27, 1, 'access_token', '[]', 0, '2022-09-28 12:16:39', '2022-09-28 12:16:39', '2023-09-28 08:16:39'),
('920410d2adeb7d070b360c0d93f18ba8c02b30b852bf0ae22ffd9fbdb9e9a7a7f50b218b64c2a8d6', 27, 1, 'access_token', '[]', 1, '2022-09-28 11:46:59', '2022-09-28 11:46:59', '2023-09-28 07:46:59'),
('9239cb3a449e8e9fd53e0470e0e5638743e0d50248af96f0e1b977efcf866b6b4f6d159b1d167fb9', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-21 00:10:08', '2023-02-21 00:10:08', '2024-02-20 19:10:08'),
('924fde01a6776b7903efda573332e3c1b51a85619947b2f5f86f996eb110ced5b3491f4bc559b802', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-15 13:06:15', '2022-07-15 13:06:15', '2023-07-15 09:06:15'),
('92a4a1d52643612a213f34213f5e6564f0e2986094c3829d2a8e708efeaa44b004682f8f0e38256f', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 09:49:49', '2022-10-03 09:49:49', '2023-10-03 05:49:49'),
('93164cb867e936b9a5b5a9c2550cdeaba7021c253985660ad8047ce3ec4770f4070aa7ae4eaaa3e0', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-03 08:14:30', '2022-08-03 08:14:30', '2023-08-03 04:14:30'),
('93526f763758c78510c26c92bb5692777add3a7ba43a212252f1336f0f1a9277a0461d282410edc5', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-16 11:47:52', '2023-03-16 11:47:52', '2024-03-16 07:47:52'),
('935c7d233f97113b64d69e2641b0b7118c4237d5a8b6d29d1cdebf1e5531c6feb0ca80c6a89731bc', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-14 11:58:30', '2022-11-14 11:58:30', '2023-11-14 06:58:30'),
('9365cde3b5a2ba7c871b65091c2ef2810937386c128bea1f944ce9c37a7fb0ca56dac39f48f32c04', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-17 12:17:01', '2023-02-17 12:17:01', '2024-02-17 07:17:01'),
('9382743e9a8886150b80d9bbf1884d0a1e3ed5a4d5790971f0d0fb90d1109274e4e7161482fb14e3', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-06 08:39:17', '2022-10-06 08:39:17', '2023-10-06 04:39:17'),
('93c0dd3fc7df50534e5386c4e223d18f04bb2daae4491f04abebb4a0443fc7d3edcc33b3addef955', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-29 11:07:18', '2022-07-29 11:07:18', '2023-07-29 07:07:18'),
('93d4d0dbbf9d5d6d4ebd37f0e9674d2dda587df7500885f3a1fc92c10d892c8f2d96a11913eb98bb', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:09:43', '2022-12-13 23:09:43', '2023-12-13 18:09:43'),
('93e1a1ee9ce4b511cefce46f284158e90830d9586d5f8980ff7924edc853c656e042b5dac420fa4d', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-07 14:13:06', '2023-02-07 14:13:06', '2024-02-07 09:13:06'),
('93f7d88b46f2fb4e51582698c194d0cd02b2d5088216aeba707f143eaaffbf774d09cdd1fda79859', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 20:43:50', '2023-03-14 20:43:50', '2024-03-14 16:43:50'),
('94104dceffafad789378901cb8a399f66232b266a0a4de7a20a9a4afecf48424a363c50e72664b96', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-13 15:38:57', '2023-03-13 15:38:57', '2024-03-13 11:38:57'),
('9420c6fe96adaee3a985b423e529d7aa14c9a30e42df9f5a703e15c9180029fd6dabde76e1501230', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-29 11:38:07', '2022-07-29 11:38:07', '2023-07-29 07:38:07'),
('942e804edd41f02542e05eae5097f8ca5756f442358be4173bcc45bbd10916694ba7c9474e0dfe4e', 14, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-16 11:03:47', '2023-03-16 11:03:47', '2024-03-16 07:03:47'),
('943a8b118b1d1918b8ffe386cbaceffbf15e3a07fa4c12b746f4d4cfc34da43f85ff2426b7a42838', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-03 06:22:12', '2022-11-03 06:22:12', '2023-11-03 02:22:12'),
('9440e3a9322a0caaf8da229b5a45788175d906563a8c5e8245a7bc8dc7210c87e3d2282a2b0b71c3', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-30 20:05:45', '2022-07-30 20:05:45', '2023-07-30 16:05:45'),
('945473562c54ed36a2df1276eb77a5af259c2af079551846aa2b70ea28a931ccde4dbf41707b1bb5', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-08-03 14:19:32', '2022-08-03 14:19:32', '2023-08-03 10:19:32'),
('946feb2cc2c0dcb8cffd4cb2f5e5b77a5a15a0f6957339a43f178c8a8f820b065c7c57a9943607d0', 36, 1, 'access_token', '[]', 0, '2022-09-14 11:01:45', '2022-09-14 11:01:45', '2023-09-14 07:01:45'),
('94ca51f3a78a1b4f1f9d5207da8edd422da27fa580b7304f452bd04ce747cf90d868004c294983e7', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-08-02 09:25:15', '2022-08-02 09:25:15', '2023-08-02 05:25:15'),
('94e9005b3df1e86d0bdf3cd73666338a0afc81fa9df4cb80c481b9fefd37d368e75b03bdc751ecba', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-14 08:18:16', '2022-07-14 08:18:16', '2023-07-14 04:18:16'),
('94ed7c9b743d6ab11c0f4ebfa2b2137b9b5cfb2b1f6ab4e4c3d3b6e88ee8d8738db1ee3759953382', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-29 12:01:49', '2022-07-29 12:01:49', '2023-07-29 08:01:49'),
('9525cd27a1c3f3be443671c438274d9927f56b937525df09dc230d7502f20dbe1f1fbdc42d8c873b', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-05-24 20:58:38', '2022-05-24 20:58:38', '2023-05-24 16:58:38'),
('952e186915fb87b8f50fcbafa3b6c4beded500372eb2c7b5a89ab2c8a29ff4670390c33c6dcd2e6a', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-11 14:23:16', '2022-07-11 14:23:16', '2023-07-11 10:23:16'),
('953d866d1dd4fff3308484314e8dec01bc3c16372cbd83a723e02b5f6ac400c43886a14062dee152', 27, 1, 'access_token', '[]', 0, '2022-09-26 17:01:46', '2022-09-26 17:01:46', '2023-09-26 13:01:46'),
('95aa8451c57613ee9befbc0038b05fd42222cfac8cee346083b8db423bb3ef326fcce4ca275b9f48', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-25 21:16:11', '2022-06-25 21:16:11', '2023-06-25 17:16:11'),
('95f3feab6cc2d34a4e9827178244c555edecbe5f27bb92d25c1c25becdaec6044e1dad05e1a6cde8', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-15 21:53:12', '2022-07-15 21:53:12', '2023-07-15 17:53:12'),
('961f7225968d1ad6ec44b9d4b55701c7beca8f6caaff646d5734dc0cdb5165ce25112166c295c468', 91, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-16 15:33:44', '2023-03-16 15:33:44', '2024-03-16 11:33:44'),
('963e5965e4f0ee56132d215c1c909b5597d46155ac8c7b7fc53e7fd42990dce28ea32283a4a39983', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 09:38:43', '2022-09-30 09:38:43', '2023-09-30 05:38:43'),
('964a7353a6b736198c45a18d8898d021ee692d22a8bd6f4bb102b06d0b5b74c8ceb2edb2e83ae44e', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:19:16', '2023-03-14 21:19:16', '2024-03-14 17:19:16'),
('966fdbd476874b9b8c48e6defd7aa39eaa1f1dd9eb3918d2a319a60a41d43fac01cd5955a8d308ef', 27, 1, 'access_token', '[]', 1, '2022-09-28 11:17:33', '2022-09-28 11:17:33', '2023-09-28 07:17:33'),
('96a07237eb5e2a4dcb008b45769883fbd22eaffc01130d98b07230a419d6fba639376357756c6455', 27, 1, 'access_token', '[]', 1, '2022-09-28 10:33:25', '2022-09-28 10:33:25', '2023-09-28 06:33:25'),
('9711ee66f4abaf793b6d84cee9bf2f5efd00601a31d7437bba8d87f5c0c30554ee33f90eae062936', 27, 1, 'access_token', '[]', 0, '2022-09-28 12:47:01', '2022-09-28 12:47:01', '2023-09-28 08:47:01'),
('9755b12d397b9755bfebafe842485881ff630428111a422b6f205b85e1d5f12e2ca09e43a3b3cb43', 27, 1, 'access_token', '[]', 0, '2022-09-27 14:34:53', '2022-09-27 14:34:53', '2023-09-27 10:34:53'),
('97cd8614338c51d112389b1a4cddc2d72a9e2418fd177e447f10893ba6a57c3e18cb313b48698613', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:36:32', '2022-09-27 13:36:32', '2023-09-27 09:36:32'),
('982160c704848b44bc8f083f40f58e48db69f85c83fdaa43710da88a704fccf8176cc154df1c69d4', 27, 1, 'access_token', '[]', 0, '2022-09-27 09:59:31', '2022-09-27 09:59:31', '2023-09-27 05:59:31'),
('9859fa72c2e8b2f9c4676bbdfd3854d643a530d03d2eb1c03ef61e0c67274ae3e3ba9a077dafe035', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-26 20:18:22', '2022-08-26 20:18:22', '2023-08-26 16:18:22'),
('98655eb0149c7efe68a24e998c538180c2755e853210874aa80a6896a78a979cbee5416eb5dfed8f', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-11 17:56:05', '2023-01-11 17:56:05', '2024-01-11 12:56:05'),
('98825d57183f89be2950f2ea345358c207429388ded8fe19b18453902adace35f2bcf478898c938e', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-01 08:54:41', '2022-08-01 08:54:41', '2023-08-01 04:54:41'),
('98d01614e3368442f641f4dc5e47f0c4c1696b89e14e16444b6b60b076a6bea2920ae42e35ca2fa8', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-28 11:20:29', '2022-11-28 11:20:29', '2023-11-28 06:20:29'),
('990358d4650356948916fb618d512cc160c51a2862fa3e11e16f931f02d2230545bb0c6cba25914f', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-08-18 20:18:25', '2022-08-18 20:18:25', '2023-08-18 16:18:25'),
('9904710de40c062a6819fd8ecc6ddabd22dfad1f966b46a32b748f13c77daf24f680d7393fcf457c', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:04:39', '2023-03-14 21:04:39', '2024-03-14 17:04:39'),
('993e73ea0a4d4ba73be0aa23b14e0574ee12ebcc24a57ee12bb948ccccf33b04481dc25678a0c483', 1, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-16 11:59:45', '2023-03-16 11:59:45', '2024-03-16 07:59:45'),
('9940c2f2a06c273e61cada23e46a7d3f5e072633c9288a79f2f686e98c1a4766c5091726272492cb', 27, 1, 'access_token', '[]', 0, '2022-09-27 18:33:04', '2022-09-27 18:33:04', '2023-09-27 14:33:04'),
('99560f12f9d596f2f5f241da3868aa28ce9ca90f4d5ab6ff9c8d94a6b3c20b499c8ffc1fbc3815b4', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:05:32', '2022-10-03 12:05:32', '2023-10-03 08:05:32'),
('9963566b4e64d2471cca3d7bf516f5151e00a4fb55ecc291e414ab9b211846a10d85263d4d9b6863', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:02:54', '2022-10-03 11:02:54', '2023-10-03 07:02:54'),
('996769cbe4bcbb697a3ade973cdd3a3b0cc657a2043cd61a520a6f02ddfefdea7453b9de311c53d6', 41, 1, 'access_token', '[]', 0, '2022-10-04 09:15:03', '2022-10-04 09:15:03', '2023-10-04 05:15:03'),
('99955f9db040d076818eede0284e5dd8423583f16d93cadfaafca168092ddbeffd54c1dc6b556112', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-07 16:04:49', '2022-10-07 16:04:49', '2023-10-07 12:04:49'),
('99dee8d426b40069394b8a4306a5dfea352422ffb67237a6ab2477dbee086679493143967d9ff99c', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-25 13:28:34', '2022-06-25 13:28:34', '2023-06-25 09:28:34'),
('9a0ce3ba538c97bd95f6a07d111499dc9dbfff971a91ed85a12a927e0b2cfc729b4aa205aa6dda01', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-07 15:13:08', '2022-10-07 15:13:08', '2023-10-07 11:13:08'),
('9a7ae58050c25beae9a7af511cc5889c30828f200b0e19545874e2f79224590a0f39e259d146a182', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:57:04', '2022-09-27 13:57:04', '2023-09-27 09:57:04'),
('9a84c7ee29b867366fab7d5339a89407ab709f2851d9b46420b3cd33e401a1bf5b4a4c5ec986a7d6', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:32:54', '2022-12-13 22:32:54', '2023-12-13 17:32:54'),
('9ae5690be6a4ca85b14270804bd0c5668e0e3f23acc545a199c5794759ff86787f73bd435f9c52bc', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-14 17:36:13', '2022-07-14 17:36:13', '2023-07-14 13:36:13'),
('9b07e5fa8a552b84870223ffd0fda6ee534fd5aae15f087a9c0be3b4e1ad2b05e2a7289323c621a1', 27, 1, 'access_token', '[]', 0, '2022-09-26 16:44:26', '2022-09-26 16:44:26', '2023-09-26 12:44:26'),
('9b13ebe61a9be53f5c933f3ec6280f41c04bb9d09307ce8f2ea804e86c08294175ded3fb9b1b8c14', 27, 1, 'access_token', '[]', 0, '2022-09-28 10:44:26', '2022-09-28 10:44:26', '2023-09-28 06:44:26'),
('9b5283b41552e52fdacb917b0104da17f0f6ae71145d13d3439d6a524ad42fcceb2a98649218cc15', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 16:24:32', '2022-10-03 16:24:32', '2023-10-03 12:24:32'),
('9b6d6fa444c7b79371e48d59319bcbf5fe139c81339d9e27cedfaf6f073ee0f4b22c25d8e407a970', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:02:20', '2022-09-28 11:02:20', '2023-09-28 07:02:20'),
('9c1d969f98d963caee4e2692ab5755dac5e42a45bd945a31a317c7280c920e18959eb234eede8b27', 27, 1, 'access_token', '[]', 0, '2022-09-27 16:26:46', '2022-09-27 16:26:46', '2023-09-27 12:26:46'),
('9c407f4cd3aa8a94b74ec285bb7ce6c221b4ab466df28c03d23a2e529cfa45e10ef1aedbfdc5910f', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:24:57', '2022-09-30 15:24:57', '2023-09-30 11:24:57'),
('9c93154b1caf075f54de24bbb17b87156e3026878dcdff73b37bbed2b401db6a308c19117b5c5b9d', 27, 1, 'access_token', '[]', 0, '2022-09-27 14:29:58', '2022-09-27 14:29:58', '2023-09-27 10:29:58'),
('9c94319c467b8a1a75964df4eac86213a35c5d09b147d0fb4cb032abe571f57d49a42acf3292f8a2', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-03 10:37:50', '2022-08-03 10:37:50', '2023-08-03 06:37:50'),
('9cc464ed53c334ed8b565d3c170e2703f0ab11e1c65413347fd7cca84783d574320acbc7bb95b4c5', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-21 23:59:18', '2023-02-21 23:59:18', '2024-02-21 18:59:18'),
('9ce1e2b4fd435d4a286981f34c7f1592fd430f3b4ce660c22792710b0fba3de1b338e2ffb6a5b80d', 27, 1, 'access_token', '[]', 1, '2022-09-27 13:36:39', '2022-09-27 13:36:39', '2023-09-27 09:36:39');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('9d1343365769dabeedb7b2a2301c303c5939f0201f194cbe29fc8f16b72a5ea8ceb9953a81a30285', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 17:33:41', '2022-10-03 17:33:41', '2023-10-03 13:33:41'),
('9dbc5dae80dae4d72d030e1af740655741796e0e2c9c40f28805d24219b5e45cbfa76faa61850c84', 68, 1, 'access_token', '[]', 0, '2022-11-13 21:53:56', '2022-11-13 21:53:56', '2023-11-13 16:53:56'),
('9e3edf137c82adb0dc15c4bd3e95362fda40427465a31d6dd044d38aa841f0f279989d43b87612de', 14, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-03-09 22:50:08', '2023-03-09 22:50:08', '2024-03-09 17:50:08'),
('9e99d88de514f9200642700843b189917394e8c089fd03960661a45cc06d44f4729869ec63ff6db2', 27, 1, 'access_token', '[]', 0, '2022-09-27 14:00:35', '2022-09-27 14:00:35', '2023-09-27 10:00:35'),
('9ef72c7bb47a64f5d0b6c7459bf32f9476153cf0c55d0b198855094c5911c18d2908a7fc3404a54b', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:42:30', '2022-10-03 11:42:30', '2023-10-03 07:42:30'),
('9eff12ecc85f74414a4ebb24d7614fbe75f5defecb8331e9c18ba3de521f0c97734478df6b7da207', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-11 17:57:21', '2023-01-11 17:57:21', '2024-01-11 12:57:21'),
('9f40893458175fee3668151f9eedb8441ae875a74fc720836eb1633760de9419333619250aeeeff2', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-10 22:31:29', '2023-03-10 22:31:29', '2024-03-10 17:31:29'),
('9f4194939091b038a0e2c8ec4629eaf370cb66667a6a565f216ece4a5d964515bf411ca0046e00b6', 68, 1, 'access_token', '[]', 0, '2022-11-13 21:58:50', '2022-11-13 21:58:50', '2023-11-13 16:58:50'),
('9f684e2c642cdb626f0f9265ebad30733b28723fae05d6bc23a76b0fde94c61fa26c12730b66f793', 27, 1, 'access_token', '[]', 0, '2022-09-27 16:40:11', '2022-09-27 16:40:11', '2023-09-27 12:40:11'),
('9f784a9e9ec03ba1592407cb814ae604c879f6585691e0f97f32abe82a81c3e46876a6b855205178', 68, 1, 'access_token', '[]', 0, '2022-11-06 09:44:30', '2022-11-06 09:44:30', '2023-11-06 04:44:30'),
('9fd398dc224e34aea497661b9c2b99cf28f96515c75c5a10ec942fb88c70fa76f23a0af3a2c84576', 19, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-30 09:35:30', '2022-12-30 09:35:30', '2023-12-30 04:35:30'),
('a00c51f523717cee593a92f64274470fba141b64d5e130d59a9bb8426d68daefe34a0d1acb4ebee8', 27, 1, 'access_token', '[]', 0, '2022-09-28 14:50:08', '2022-09-28 14:50:08', '2023-09-28 10:50:08'),
('a03674779eaf8978186fac30c97a81f14c8f980bfd6cc471323ec8d3032c3f0a0ae43d054627cdb7', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-03-10 22:28:55', '2023-03-10 22:28:55', '2024-03-10 17:28:55'),
('a03fa36f4c5df9d9a102094450956dac717906dcc50deb10ba02d950bd66be5cddf820129bef2e2a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-31 08:56:13', '2022-10-31 08:56:13', '2023-10-31 04:56:13'),
('a04fe79824bef4eaf3d6b2c15a134e40b2ef60dff4ed3557ca89c2989f400a9f91c2812bb073e7ab', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-09 11:06:23', '2023-02-09 11:06:23', '2024-02-09 06:06:23'),
('a0700a28dd152d39602675d07259eb81904ac20a623823d96d2ad765c1448d84f7534cf939208fb0', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-05 14:27:37', '2022-08-05 14:27:37', '2023-08-05 10:27:37'),
('a0848d91f8ed11ec8833c6992cf2490452dbc121d3b607f466a158c2b5b25c2ef15e6ac22e4fc577', 34, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-16 12:00:11', '2022-12-16 12:00:11', '2023-12-16 07:00:11'),
('a0c9f86a82be9f9a7c53a4c30c07276837ae16409d72e4820244b707254027bf362bfc2a998a1d80', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-15 21:39:38', '2022-07-15 21:39:38', '2023-07-15 17:39:38'),
('a0fbc31671068bb18531662545998bce8fd4fc38f00fa2b53a4034cf5d219d885638820a02f9a1f3', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:36:33', '2022-09-28 11:36:33', '2023-09-28 07:36:33'),
('a10c42e6c184865dd5f3b16f0e64b8136b46ce1e2aa564462af17fbef68d9a73e61fb7e5b0658e93', 27, 1, 'access_token', '[]', 0, '2022-09-28 10:01:19', '2022-09-28 10:01:19', '2023-09-28 06:01:19'),
('a14f39b8fdb9550c046a7c998c06f79f7ddac25d33c8aa4c1eb7e412273e3c1b7591142fef9e4a7f', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-21 22:44:20', '2022-07-21 22:44:20', '2023-07-21 18:44:20'),
('a19c31128ae802ac99431474f4da1c7238d1c09e425a1ad6f022a5b7b496470e69197408c68fd98d', 27, 1, 'access_token', '[]', 0, '2022-09-27 18:17:24', '2022-09-27 18:17:24', '2023-09-27 14:17:24'),
('a1caaa028b1b49c098bbd35102540e3e0dc5a45687dd9427479fae8d04bd422ad96b74e59591710a', 70, 1, 'access_token', '[]', 1, '2023-02-22 00:06:17', '2023-02-22 00:06:17', '2024-02-21 19:06:17'),
('a1ddbb2fefd6233caf1dcaf9b8d3ece4ab1e8a1ffcd97ffd26fc9721d447ace9a545d2f2a1093342', 27, 1, 'access_token', '[]', 1, '2022-09-27 16:17:37', '2022-09-27 16:17:37', '2023-09-27 12:17:37'),
('a1e5d2f078adaa54227604aa549e003556390577293fdba21f6a4dbe21f925e4b8a4d5e7d96abe7c', 69, 1, 'access_token', '[]', 1, '2022-12-14 02:15:31', '2022-12-14 02:15:31', '2023-12-13 21:15:31'),
('a1f4e2763c6b2218a8dde64880dcf94d7239988a67da2ff438339e300ed1958a7e56de600d34199c', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-22 12:03:44', '2022-11-22 12:03:44', '2023-11-22 07:03:44'),
('a22a54cdcad5e605d8166df3f90dc6cd9248d158596f1d81d802fa26b5422a89b65cd1cd4cd5b27f', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-18 07:49:34', '2023-03-18 07:49:34', '2024-03-18 03:49:34'),
('a28b20b3e49643d8d71b96adf6c270d34455763b70921d92ce76b18f4e379d66bb33a3ddef702023', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-09-02 17:13:25', '2022-09-02 17:13:25', '2023-09-02 13:13:25'),
('a28d967aca949c2d4ea72a3ac5c796dabc545172eb10f18d22fa3ea411fcebb1ec5ccc72c26e9b63', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 10:36:22', '2023-02-24 10:36:22', '2024-02-24 05:36:22'),
('a30dc6a05dee11e21ec16efb71983c4466fe9bcd14204edabb101f2ef781bcd2db4ada694bef3695', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-05 10:57:58', '2022-08-05 10:57:58', '2023-08-05 06:57:58'),
('a31cc48762d242e3b3650b80671f4cf2c5715f90109f90526297f146c3bf921c4b6978ec3b4ce47e', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-07-19 11:54:15', '2022-07-19 11:54:15', '2023-07-19 07:54:15'),
('a352833ce44d64a88be580571f9d2c8c9c456dd3011b85b7ff6ab0f770ef0331fc087e9cb5bb5520', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-05-04 13:48:18', '2022-05-04 13:48:18', '2023-05-04 09:48:18'),
('a35a43993daa0d4b1869d24900e69b15418cf62c458a37d648589837a48e72bea93e9fee8755b0f0', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-08-03 10:42:04', '2022-08-03 10:42:04', '2023-08-03 06:42:04'),
('a364569f83b175f873987efb43d95b83c79f2c2219c19b1ad30696f9ade7bb30481a67e89ac22cbf', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-17 18:52:09', '2022-07-17 18:52:09', '2023-07-17 14:52:09'),
('a37ec1380e05d63b0e20be93f98a1a83bad1fc741e684f45327238bea4d75d4d77faf8b0b2665ec8', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-09-02 17:12:48', '2022-09-02 17:12:48', '2023-09-02 13:12:48'),
('a3f86d0a9060d1916b638c4e6e5f13872436ee02d76a30930995f71422ce375889797fb38a248676', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-17 12:20:56', '2023-02-17 12:20:56', '2024-02-17 07:20:56'),
('a3f92989fd3a1c38f3031cfb122cbf9435edc3ab91e379a207c08218eabe880abfc299604813565d', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-26 20:39:35', '2022-08-26 20:39:35', '2023-08-26 16:39:35'),
('a3ff71e5eaf7f3ef31da7fd51c390c4f3d5723052d861d0daef37809b996c8dcfb19d93326a93ea2', 27, 1, 'access_token', '[]', 0, '2022-09-27 14:34:59', '2022-09-27 14:34:59', '2023-09-27 10:34:59'),
('a4006473adb20e8384d1de86a50f1aa59805fe9f517ddcbc0a68adb10a3915fb6908b0bf1e989c65', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 10:29:05', '2023-02-24 10:29:05', '2024-02-24 05:29:05'),
('a412778d696fb511ae812cc61eded2b03447a9a0bc72922635ab26f0f5c1273663175ad9550421e2', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:21:21', '2022-12-13 22:21:21', '2023-12-13 17:21:21'),
('a41bf9ae1a8de51c822c25f96c2389b08257669a16d4730bcdcab6e4a3894c2e88fd55d16791261c', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 20:41:46', '2023-03-14 20:41:46', '2024-03-14 16:41:46'),
('a42350f12b50d4db4d5d5e73e94e5fcc6aa5e7028f2b190e5c6fee11a8491ce086d0c3cd178babb8', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-17 15:24:06', '2022-12-17 15:24:06', '2023-12-17 10:24:06'),
('a479c5441d9c0c89a9084a6416d23855202784e77b0d7f41e386c1087963921d808e589f4d21e192', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-04 15:59:20', '2022-10-04 15:59:20', '2023-10-04 11:59:20'),
('a483eb17da078f242ddd87d3c50ee3483e6192b436e3db92e0077a0bbfbf89fae80a2d857e7dbe8e', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-16 11:49:32', '2023-03-16 11:49:32', '2024-03-16 07:49:32'),
('a4bd6137573730674af4240a5815e36c7f3a75cc76cc85b7111310417030d0c67d442c01c4380187', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-17 22:37:05', '2022-12-17 22:37:05', '2023-12-17 17:37:05'),
('a4ea0e68481ed62aaac1370d21a766e4728cf99b6e93d8ee71714b0877a0122cfc90efbb85b4412b', 27, 1, 'access_token', '[]', 1, '2022-09-27 16:40:18', '2022-09-27 16:40:18', '2023-09-27 12:40:18'),
('a4ee170da2785e545b8732cfa0c430297980fe2b5edf386fe17b72a9a190deb162be7f04e704752a', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-09-26 13:33:07', '2022-09-26 13:33:07', '2023-09-26 09:33:07'),
('a4f01a2246d16aaf00eb8bef2a411a1d18f2f05ec006425faecf69845122dfb2f14bfef73eefa55a', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-01 17:48:13', '2022-08-01 17:48:13', '2023-08-01 13:48:13'),
('a54c9841eabb9542cb7b0270300c15a7fbd7a6af42a6788f3a737770032052dacd41e6ab6564a21d', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-09 15:19:55', '2022-07-09 15:19:55', '2023-07-09 11:19:55'),
('a5d42a1be30f3934d6b8aec2bad05947fff54fbd52bb3d4eb2d0880f7edef9c5230012c1007d185d', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-03-16 11:43:57', '2023-03-16 11:43:57', '2024-03-16 07:43:57'),
('a6373236db6227f9d771c064f9325173d0957a14f1937be6819d79a62fe4b5e917acba8648881110', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:25:28', '2022-09-27 13:25:28', '2023-09-27 09:25:28'),
('a6420c79fa8cc3d623cf9f9273c99a74ea236f331ac28c91571dfb8efee75661825d872dc2e337fb', 1, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-16 11:58:19', '2023-03-16 11:58:19', '2024-03-16 07:58:19'),
('a660dc4cbda1b58b094695f4bad91e90496893e7684e82071e6548296c60584d37ec1cddc0caba99', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-10 22:33:23', '2023-03-10 22:33:23', '2024-03-10 17:33:23'),
('a69ac1ed059daa47035c1855475a726d855e4c305ef1fb6047622ce2deb98f64858bca5f1b9a5a74', 19, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-19 13:00:31', '2022-12-19 13:00:31', '2023-12-19 08:00:31'),
('a6ee53e34f25ec2c63e7ec5ef28a5cca69b85cf52e9a218b4823901a603fddb7870f29d536aef36e', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-08 16:35:38', '2022-08-08 16:35:38', '2023-08-08 12:35:38'),
('a73cd2d21c46d244bba31b5ce312dfc7ba9ca5d2219b212ce6e9434e04d05ee520c2db4cb1ca467f', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-10-03 11:50:16', '2022-10-03 11:50:16', '2023-10-03 07:50:16'),
('a758146d11ee9cae14c7197a30702a9c28660fa42d0afce79f09290d64993c4ec961647c53cdb6c1', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:20:48', '2022-11-13 22:20:48', '2023-11-13 17:20:48'),
('a7756ffc5c18d23629bdeb81de22db3a8fbe6246c480b57016f09096d22274e19a8c73754cbaed77', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-24 15:44:28', '2022-06-24 15:44:28', '2023-06-24 11:44:28'),
('a80c94875fcabbc177021a55d10f826a2e48ee4e50dae3abe87095b363d6714ab148f8f3364295e3', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-15 21:39:41', '2022-07-15 21:39:41', '2023-07-15 17:39:41'),
('a82fe1f2c567af75be45666709bfd2bdd5521837d74895cbd6d3a32dc5ddcb405c136cc1fcf7a6ea', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-16 10:47:29', '2023-03-16 10:47:29', '2024-03-16 06:47:29'),
('a8497d50a79d7dc053faebb7e471bc5fd7baad0256e940679e59ab9412e7fba9ff5d21a840f90af8', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-30 17:28:56', '2022-06-30 17:28:56', '2023-06-30 13:28:56'),
('a84a4fc75b89f2791f17075927e7220d48533886b3441dcc2e77d030bd9628e61716505f3cd4d93c', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:13:50', '2022-12-13 22:13:50', '2023-12-13 17:13:50'),
('a866abc70194f8b8c6fb0e70d5a94f7c26647d7abe7de7dbeae8f4a4253866311c8d5b90ce014499', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-20 17:52:00', '2023-01-20 17:52:00', '2024-01-20 12:52:00'),
('a8906abaaf03ff7858978ac66ba0711532cc9303061e1914c09248d06b8eee8b1e3a22c68f3a3b49', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 17:21:24', '2022-10-03 17:21:24', '2023-10-03 13:21:24'),
('a89bcab77ac7606db66b1acce7835c84a1d37bfeb69d7e2c62a08739c7ecfd42999a2885225483be', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-09 10:49:21', '2023-02-09 10:49:21', '2024-02-09 05:49:21'),
('a8a551d00e1227bd7dc13b596aac4954ec71135fe46d8d854f8618a97c56831c9be656513d6c6ce1', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-06 22:31:20', '2022-12-06 22:31:20', '2023-12-06 17:31:20'),
('a8c84dc4eab45d3aa52806510412d9ce9ce1595fa245dacc4e289e2c95d46ef737a6bb942cce175e', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:13:40', '2022-12-13 22:13:40', '2023-12-13 17:13:40'),
('a8d33b9014d4073a2814a0f7253df2684f8fc51515d99180416e8236b83b43b913695000b8b5c08c', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-11-22 12:03:46', '2022-11-22 12:03:46', '2023-11-22 07:03:46'),
('a908e9a8f4a81ca55b54c9a32569fd08ae3de21b0011023f489bbfdf8928d7baa4767b6c4493122c', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-29 15:34:20', '2022-07-29 15:34:20', '2023-07-29 11:34:20'),
('a90f993bd942e2ef15986478ae3ed893bd58dfd3cf2bd0113fdec184a6e349f9243420f717690f31', 27, 1, 'access_token', '[]', 0, '2022-09-27 14:40:16', '2022-09-27 14:40:16', '2023-09-27 10:40:16'),
('a91a28b35af95ed83f9fd91a158a5a9cddfb3023019ea52f8ce6101d663c0a0b8e5b0fce6d26a349', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-21 23:59:15', '2023-02-21 23:59:15', '2024-02-21 18:59:15'),
('a921134e90c3bf313c7a4b30a69d2977a30c4b634726ab38d2010e80446176d68b088b4c68c978a0', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-15 15:36:47', '2023-02-15 15:36:47', '2024-02-15 10:36:47'),
('a973354bfefbeb6bc89922718fa695971f26ce599b4c8f592ac07ed102da4d5380288d605a4f0688', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 12:04:28', '2023-02-24 12:04:28', '2024-02-24 07:04:28'),
('a9faf5cd4d58636725fd736678f391b036709cdbc00a7f9a86dda71a0c07867886110ba0ec549c65', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-07 21:05:39', '2023-02-07 21:05:39', '2024-02-07 16:05:39'),
('aa05fff6221f5f584817fcb9e2bc51727cde1f6c5f296702aa652807a370b9e7cdb07e097fb4d811', 27, 1, 'access_token', '[]', 0, '2022-09-28 12:47:15', '2022-09-28 12:47:15', '2023-09-28 08:47:15'),
('aa1bbcdc73e3e7d03c4512bc6700359d3696354662ff63385b68af60150f95cf5c951ac7016f36ad', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-10 22:31:24', '2023-03-10 22:31:24', '2024-03-10 17:31:24'),
('aa2d5a350d4cbaad7006a9a4a3b26456060a7c4070dc064acbdff4bcc364e08d16fe30ed0cd0f38a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 08:38:37', '2022-09-30 08:38:37', '2023-09-30 04:38:37'),
('aa5f05c732fa2bae50282efe9397b196c6e186c18bf6e04f2a7ae2c942bd93905e77a70c9e9049b2', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-11 00:47:21', '2022-10-11 00:47:21', '2023-10-10 20:47:21'),
('aa943685fb5e4067cd91fa2f8b51b3b50d2cc8f0d1465f3a8f55dc697c26b5e4b3ce2449389db833', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:59:36', '2022-09-27 13:59:36', '2023-09-27 09:59:36'),
('aae5b5539b6d148a9e837eaf41f8b8f9227b6f57c1de5cbf23bdea501083a2a02ea4390b6e5cc3e3', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-07 12:45:22', '2022-12-07 12:45:22', '2023-12-07 07:45:22'),
('ab0e7dcbb0cb9b6a0a3cd0eb8b3c931f77bb1587cb005a687547f8d6dbbade25d6d28705db68d089', 53, 1, 'access_token', '[]', 0, '2023-02-22 00:28:53', '2023-02-22 00:28:53', '2024-02-21 19:28:53'),
('ab42bb9e07e694dec7535467ee99d1eb15c57eeff1f6f296f1ebe239a4b3511032f39e7a33056c0f', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:33:03', '2022-09-30 15:33:03', '2023-09-30 11:33:03'),
('ab61458c16a147fae1cbe57a6ee95523326c0feafb2eb0d4f656de6eaef50bd336bccec71e27dee8', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-03 09:57:14', '2022-08-03 09:57:14', '2023-08-03 05:57:14'),
('ababbb15c3b7ce8baccddaea61ff8a21dbef47fd82a79bd229b117377c53ebc5594b87e245dbce5c', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:06:20', '2023-03-14 21:06:20', '2024-03-14 17:06:20'),
('abc4b03a9e5c396477baad57087c0ec5cb1e6a2d1fa2f9ae2be3cc74f5c33c5d81dc083b9e53e37c', 27, 1, 'access_token', '[]', 0, '2022-09-28 10:45:33', '2022-09-28 10:45:33', '2023-09-28 06:45:33'),
('abdd6a7aa6d3d41feae738d2f2e4cecd93d0694839eb5e8d847c32255e5c996a31eb44835f88145c', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-07 22:16:07', '2023-03-07 22:16:07', '2024-03-07 17:16:07'),
('abe7edf5957d0eac54f48ac22ff5c2a6a525536e38604ae8098bad0ce0b5d9b2588f418680fac03f', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:50:52', '2022-09-27 13:50:52', '2023-09-27 09:50:52'),
('ac0f9f733b9e35b03d5f0f7d999fb55b7a50a4b5a13a8db27b13f8f84dbbfb5b4d9dfe123fab895d', 27, 1, 'access_token', '[]', 1, '2022-09-26 16:37:27', '2022-09-26 16:37:27', '2023-09-26 12:37:27'),
('ac1890381aada398a404c747d183bb963418ffd0352c411f732f89b2be4dce909894ecde53fc1cf4', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-09 19:49:59', '2023-01-09 19:49:59', '2024-01-09 14:49:59'),
('ac403174303707427e6ded661badb3972b60e9acab8a7d3e4352f43420a89c9eb64abc5c760e0e2b', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 12:04:19', '2023-02-24 12:04:19', '2024-02-24 07:04:19'),
('ac44e882bf7761e8ada92f6577361fe4237c48c0be9fe69ffd4c027d62205277f1c42f3d3188b94a', 1, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-16 14:48:11', '2023-03-16 14:48:11', '2024-03-16 10:48:11'),
('ac70a98306ef6150eb7ced2cd5561437651e737be33efe58aa07ee49b2632469fd9fc44ed3c820b1', 1, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-17 12:07:12', '2023-03-17 12:07:12', '2024-03-17 08:07:12'),
('acd13e3644f83dfb675a85ada9571c73fb0b7deed05eee0534142cc035f7ce2f540ed8c73fe43fb9', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-08-18 17:32:59', '2022-08-18 17:32:59', '2023-08-18 13:32:59'),
('acd3c5ea3c11fe15582ee9d372719d7948750b36520300d1587f5ec6ee1d41191c8ccf882f04e351', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-15 15:15:42', '2022-12-15 15:15:42', '2023-12-15 10:15:42'),
('ad8d41da7c9d535efd0acde27c0ddc786332717fcfd8c30118ee5c898cc3df9c7b762b2f26fdf679', 27, 1, 'access_token', '[]', 0, '2022-09-27 18:59:29', '2022-09-27 18:59:29', '2023-09-27 14:59:29'),
('ad9c808a6e36bdbc4da74f5ab9385df2dadfeeeecab3689555306c8d4b196cb0a829a5d665a1affa', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-10 21:24:36', '2022-07-10 21:24:36', '2023-07-10 17:24:36'),
('adbf94b812cd377d9b1c36e221ccbfd7ecb83cc07aa27cde1ce93453447b70d771723ad14d58d13c', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-08-01 10:29:26', '2022-08-01 10:29:26', '2023-08-01 06:29:26'),
('adc73c0a36d7af026a05f22ac16f05051050a3e2355ceb7e09da954091d5f273846bf19b0893b0e3', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 09:13:32', '2022-09-30 09:13:32', '2023-09-30 05:13:32'),
('adfd03e5dd5272579239170481b13599acdce9160821c12dff35ff0c647993bf73150e85ef368b0c', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-16 11:47:26', '2023-03-16 11:47:26', '2024-03-16 07:47:26'),
('ae142e48ac085dd3ee32fd4c6151dcd81f9049a28fa5748821c035aa5ecc66e4f682cd0c077de053', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:35:08', '2022-09-30 15:35:08', '2023-09-30 11:35:08'),
('ae85e99e66063114d28887effa8c726ed1616d7ab4ae745eeeda4ffe0299c9b004f728dd00f6d2ff', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-02 20:20:04', '2022-07-02 20:20:04', '2023-07-02 16:20:04'),
('ae9adb80fa27ef676556dd49d76bfbe1fb68fd8156aa0f07df107255a10fb7518666aa5287419435', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-29 09:59:18', '2022-07-29 09:59:18', '2023-07-29 05:59:18'),
('aeaaa2ef6a752162fc637b72aa48d3e61641a15fd63b69dab815ea96a2c0dc3f3ec373e1d2a21d9d', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-27 21:40:26', '2022-07-27 21:40:26', '2023-07-27 17:40:26'),
('af5613d189662deff96189a8e832ce6ed2b81f6907f27305cffb4f12dc0528842304a4bec1dbef00', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-28 12:01:41', '2022-11-28 12:01:41', '2023-11-28 07:01:41'),
('af5997dcce7c0940c67897a3ac82688f3d1ff53196d4e075b352f059c1a97bd9c704afd6a5688aee', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 20:53:43', '2023-03-14 20:53:43', '2024-03-14 16:53:43'),
('af9d2460695eaab32ee1004ec8415d9d323b2bdff70b781f8e8fb576c7f02bbd79498d53be8251c8', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-17 23:19:47', '2023-01-17 23:19:47', '2024-01-17 18:19:47'),
('afa35ae3a1e852c9839f610025cc22b68b47d3063d83c8fe04dfa24bb41d8a251fc9962c9a6ddba5', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:26:14', '2022-12-13 23:26:14', '2023-12-13 18:26:14'),
('afab9340433eca6299e68c5667036419930b633dcc0e299869c30e56a4d0fce09aedc4484c2669c8', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-15 16:03:20', '2022-12-15 16:03:20', '2023-12-15 11:03:20'),
('afc5d96609d0690267efd2ce8efa18c854d2823b5bb4939b6bef87704ce9a62bdc54b0969ece6d09', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-01 17:36:23', '2022-08-01 17:36:23', '2023-08-01 13:36:23'),
('b019f89630ce581d00ac8dee2b6b2b4176455180d02f60d6653fe56b7ee86a59fa80d6077d015b79', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:06:33', '2022-09-28 11:06:33', '2023-09-28 07:06:33'),
('b01ad91fc00d8c09426712ff78844f451623c02ad57f74efee980338c8e1de19b779b6bc90a27ff0', 68, 1, 'access_token', '[]', 0, '2022-11-14 17:54:34', '2022-11-14 17:54:34', '2023-11-14 12:54:34'),
('b0312b40b7deda6463366e4343af2c213371d6293ef78eccc024408ce45e1fdfd943728bd589aa2e', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:33:08', '2022-12-13 23:33:08', '2023-12-13 18:33:08'),
('b049531ba63686efb9fb27a973eca77f67ff9610eb5aa8f468918fc277c6873e1d96a9f757e205f7', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:59:42', '2022-09-28 11:59:42', '2023-09-28 07:59:42'),
('b04f93a457cf4c2a712c01840085fc698bfb068cad2bf87afa7aa29d796478391a8943fa9d862c72', 36, 1, 'access_token', '[]', 1, '2022-09-14 11:00:58', '2022-09-14 11:00:58', '2023-09-14 07:00:58'),
('b05d82fffe501f116f7a2a282491a51ac4bb576142b94b79a23f852fd7e256902e7cf4d8e1e29c9d', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-29 11:36:44', '2022-07-29 11:36:44', '2023-07-29 07:36:44'),
('b07317796469e8a47d80937d390c201f9070ae4168f5f4a48ec114f2c5b64fbd5283eabdb7777e49', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:25:58', '2022-09-30 15:25:58', '2023-09-30 11:25:58'),
('b0c21867b9d6cf3405b5e7773296810f61d0c4be5527b3541756024d31f2157e181d0d29062322aa', 92, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-10 22:06:29', '2023-03-10 22:06:29', '2024-03-10 17:06:29'),
('b136c43f629827d3028071deb655bc9deb0a5a4447d9799ed56863236fbb22a7edc33915c4deca4e', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-10 21:24:00', '2022-07-10 21:24:00', '2023-07-10 17:24:00'),
('b16aa9b9b95cfcbcb600150a2a80ae578b0e10f7a0258fa77276d6546f966e51dc194bf74fa99ca0', 41, 1, 'access_token', '[]', 0, '2022-10-04 15:37:56', '2022-10-04 15:37:56', '2023-10-04 11:37:56'),
('b1982cd7a732b431a59cb783cdc060d37df3d24dadc0ff5de1c18b08df45bd7cd47ed7ed7f4c4a1a', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 10:49:46', '2023-02-24 10:49:46', '2024-02-24 05:49:46'),
('b1baebb0db9785708cf8671f700a4498edfb698eb392b7fcd4ebe44034fb8e0b4529fc90f484d576', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-10 22:32:59', '2023-03-10 22:32:59', '2024-03-10 17:32:59'),
('b1d051ec2c082a78e719988f30a1bf378ec803c1aa96b8023914f5bc54ed2e9cc3daaac19de6f499', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:42:14', '2022-09-27 13:42:14', '2023-09-27 09:42:14'),
('b1d92c46ff77b304d8ee7ff74c8700ece79f7386255bea7bafe88281371146bb1a46ec992f04e31b', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-20 22:51:03', '2023-02-20 22:51:03', '2024-02-20 17:51:03'),
('b1ee5d23dbbe4e335e95e09896d091647c18918c5dd6caca6c0fe2c7b90c7b8069d47cb63d4a54f2', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:18:42', '2023-03-14 21:18:42', '2024-03-14 17:18:42'),
('b1ffaafc602f903e9d830f5089305079bfa91f2892de1c9acd87c2eb3d4c219f7d383e61dc4730f1', 14, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-16 11:23:59', '2023-03-16 11:23:59', '2024-03-16 07:23:59'),
('b259545ef2f861c18047a07c7e407f68e9f7df610f09103f033309230dbdc44a996021cb7632ec83', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-04 12:43:40', '2023-01-04 12:43:40', '2024-01-04 07:43:40'),
('b28badbde8afb835c61c0e49252f9f5e7e76e21459b7c099594e232f86e936159b143a25c937365e', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 10:36:26', '2023-02-24 10:36:26', '2024-02-24 05:36:26'),
('b29b19260c0e41ed669684b2ff00bc3dac1bb01323e132807fc416958b10ccf5abb540c00f077045', 8, 1, 'access_token', '[]', 0, '2022-05-15 16:03:57', '2022-05-15 16:03:57', '2023-05-15 12:03:57'),
('b2b793fe8a05a862adb9cd77fd7fbf242883ff55b5da253891b4fec743ea36f09a9ebd47b0b73e11', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-07 12:34:54', '2022-12-07 12:34:54', '2023-12-07 07:34:54'),
('b2d72abe7e6d574d28355e56029bfd0fca53218f831d0af96d0769538bc832661a6bf8f925a0fd17', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-07 12:50:54', '2022-12-07 12:50:54', '2023-12-07 07:50:54'),
('b2e500359a4515d279d424dd7f53725c6726887ef79b14bdc491c8a7e2ef3829a70e849c4a3655ca', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-06-24 15:41:42', '2022-06-24 15:41:42', '2023-06-24 11:41:42'),
('b2e6174261f6ad1a802bc396ea3f5f315c770f0b804440b80a8c62bef80f6ad8ff1d50d7def05be2', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-06 12:36:25', '2022-12-06 12:36:25', '2023-12-06 07:36:25'),
('b346d1398892910da678e961b5679d8d30a8d7902563a10e01117ab542cc0552452a2bad0476912c', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-19 13:20:15', '2022-12-19 13:20:15', '2023-12-19 08:20:15'),
('b3a3ee00c04ae629111583a914d1d89a18a2c1082da02408c8345eeffecddfda82acdebb3fbee403', 27, 1, 'access_token', '[]', 0, '2022-09-26 16:27:21', '2022-09-26 16:27:21', '2023-09-26 12:27:21'),
('b3be459f42cd8316b05dcab088aacaa997884ed2d6f98c97c6962781fc0bb1e5cbb87dbc54b0cbc9', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 09:46:22', '2022-10-03 09:46:22', '2023-10-03 05:46:22'),
('b40b031366d4a76ce72a59899d671b7cbd48c012335e7acc3790e71b04b74c3c392e628362dde49f', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:45:33', '2022-10-03 11:45:33', '2023-10-03 07:45:33'),
('b416266e4ea69af648ff8ee2934f2daab6d5517882cdc946c4841eba6555655dada4ce2836a01407', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-12 23:31:58', '2022-07-12 23:31:58', '2023-07-12 19:31:58'),
('b45ce548d6659e594dd96f786d958dcb6c0ca0c31474978d72638fba0019750dba2949195d30e06b', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-06-25 13:32:11', '2022-06-25 13:32:11', '2023-06-25 09:32:11'),
('b47cac893888afb1f3540fc852b0f7a6515b28572a182fa4ed82b334a81c5aabc4fb824cbe9656b1', 53, 1, 'access_token', '[]', 0, '2023-02-22 00:28:48', '2023-02-22 00:28:48', '2024-02-21 19:28:48'),
('b47f64a7bc0103b092a95d1431c086608c5992af385b0c5c17a00bbc1d4dbb499195481251dee5e4', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:35:41', '2022-12-13 22:35:41', '2023-12-13 17:35:41'),
('b52a0c83cab920088c54312fdc52fc93221e2f55374427ebc787e8624b2c3af05e23505cfd855ae3', 70, 1, 'access_token', '[]', 1, '2023-02-21 23:44:12', '2023-02-21 23:44:12', '2024-02-21 18:44:12'),
('b56a8f6854ea66fa967ca6a70ce99328ea05fb066e0ce7767cc5ba4cec267e776338b2449321fba9', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-06 10:43:13', '2023-01-06 10:43:13', '2024-01-06 05:43:13'),
('b5789aa3d366da911b9fd9dfd407c74fa79d2a8ad0dbad2cd72b3136f9d2c4e44306da1606894764', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-09 21:34:06', '2023-01-09 21:34:06', '2024-01-09 16:34:06'),
('b594d9f39ed6b9e4cc823fcf7a6ffdd0747ae1a955b2065c2a96ea430da93fde39bc079cfcd56083', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:15:49', '2022-11-13 22:15:49', '2023-11-13 17:15:49'),
('b5d4851a5f287a53daf7d0e496724443d0bec096b518bb704cca356d75ec8204aba9dfa5aef04716', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-05 14:38:51', '2022-08-05 14:38:51', '2023-08-05 10:38:51'),
('b5d4eeaa555a1fc0d40cdc2fd8ae4cc34b2dba839140d07b7a23ae07eabdf4d0a54489663f26ec2b', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:45:20', '2022-12-13 22:45:20', '2023-12-13 17:45:20'),
('b65a075fe6dcad542b70c5fae576adb2f13597b629f820fd18837dd01069155705b091a98483c800', 27, 1, 'access_token', '[]', 1, '2022-09-28 16:12:25', '2022-09-28 16:12:25', '2023-09-28 12:12:25'),
('b6632573acd55720d4fa0f41df6d2b0a63879acfd1147cc495d98a48f866408eb0d1629d8ccf11d3', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-05 07:21:08', '2022-10-05 07:21:08', '2023-10-05 03:21:08'),
('b6690ea6ae0aa2a2480bd993c39e25ef4356810ec97a321b60e354fcbd606ad4849342347ed83e2f', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-13 17:28:52', '2022-12-13 17:28:52', '2023-12-13 12:28:52'),
('b682a6b4551a7c61436b1b29d5bdac8615db5452c8a4dc879666a572f64de3073cadc1f712cba962', 6, 1, 'access_token', '[]', 1, '2022-05-08 22:14:04', '2022-05-08 22:14:04', '2023-05-08 18:14:04'),
('b68ad81b7c074df6666e3cbb3006ab9caad7e93021730acd1881601b5963e520d67e5228f724e1ce', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-02 09:29:01', '2022-08-02 09:29:01', '2023-08-02 05:29:01'),
('b6984d984bda56b13102f0e1b85b0a88f4145ec16377fd4f5834bb83575a0d006f16f1c5f6b6a4af', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-29 17:11:49', '2022-09-29 17:11:49', '2023-09-29 13:11:49'),
('b69e474ef081d810e73df2d4b9e0a4ab37ee72f74a6d89cae5e3430aa1ecfd7f74abc874c2cc9696', 68, 1, 'access_token', '[]', 0, '2022-11-04 15:57:14', '2022-11-04 15:57:14', '2023-11-04 11:57:14'),
('b6ac0e92deb376e2c92afaccd08f81d33eaf3bb6eb7195b6ff24183b3a0d7f370d5c7b172fe8c60b', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 13:33:05', '2022-09-30 13:33:05', '2023-09-30 09:33:05'),
('b6cbb1e7c84e1f8b1df84c4f55c613f9160235d34c14ab5bbe9ec3f2da093e2515532230c9ec0791', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:10:00', '2022-10-03 11:10:00', '2023-10-03 07:10:00'),
('b6f9a2196d9f1cc90bcf78b18dad32e169f15c01558eb7fa1efe89b5096eb4bb8d7cab873bde6ccb', 53, 1, 'access_token', '[]', 0, '2023-02-22 00:26:45', '2023-02-22 00:26:45', '2024-02-21 19:26:45'),
('b707995478f0bde703f325b344c63559de9f450c94d53d8a8a6681bf1576bae385c79f4c5de89853', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:31:18', '2022-09-30 15:31:18', '2023-09-30 11:31:18'),
('b73cb598d7efba7286f97091de2dd25c66c4c9af6e3227f5aa1d53b8e5781751d807a7525545d752', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-22 11:37:33', '2022-11-22 11:37:33', '2023-11-22 06:37:33'),
('b74b7bee020ef0425629ffd875e38fe2ee5cf3027cb7325a87fe135f2a499dab3214b086f05dca16', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:05:29', '2022-09-28 11:05:29', '2023-09-28 07:05:29'),
('b77580c9284671332941494ce9f1b4e99dd2d5367a651dfdeaa53d9cf18efaeba87098bec9525caa', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-08-03 10:40:05', '2022-08-03 10:40:05', '2023-08-03 06:40:05'),
('b7962234c04b2f033f707a1ec35d6e17f71e906f6a3ab2cfea3e5c0bc4edf80999b1e4b3505873f0', 27, 1, 'access_token', '[]', 0, '2022-09-28 12:08:32', '2022-09-28 12:08:32', '2023-09-28 08:08:32'),
('b7a63f11eeeb6138b4e16dfed393f3728c4d212d97b49d339b2b690d56c7c14c16f2fb27048d0481', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-26 16:50:28', '2022-10-26 16:50:28', '2023-10-26 12:50:28'),
('b7b3b94db707fbecf590e946bc427aae5c8adafc2b66eff6f951fe545da86a171581286920f53f98', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-10 00:41:02', '2023-01-10 00:41:02', '2024-01-09 19:41:02'),
('b82130e40aba3acff8787de94b82d051a164065bfa7afc316d065ddbdb2c6201ea2faa4bdfdaef9c', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 14:01:18', '2022-09-30 14:01:18', '2023-09-30 10:01:18'),
('b839c2a8cbebb46b102e4871afbebd2953fa67e0c34124a94afc25e7f4f44ea941ef7d183cec7b83', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 20:48:18', '2022-09-30 20:48:18', '2023-09-30 16:48:18'),
('b8853ab105282e08691265b8130b5004ffd56d1c8ca93b44db29bea0562d982c63d6335d6c388066', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 1, '2023-02-09 10:54:42', '2023-02-09 10:54:42', '2024-02-09 05:54:42'),
('b8992e239e143eeeaab5ec895c99cbaa24c172c31ea8f6f5647d739f1055d21a69a310bd804150ee', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-13 22:59:48', '2022-12-13 22:59:48', '2023-12-13 17:59:48'),
('b8ca308a99f408a0be530a870e60209e8c059cce1f254265a0d43b338cfab03e13c9cbe83b980083', 27, 1, 'access_token', '[]', 0, '2022-08-09 11:06:18', '2022-08-09 11:06:18', '2023-08-09 07:06:18'),
('b9006328276079d20504628f9557885157935b4688b53313eae3b27981b38d28b1661708e861c185', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-03 10:31:52', '2022-09-03 10:31:52', '2023-09-03 06:31:52'),
('b901e34434a1910eb6d49fd4d189a12b01ce8393bd0a53b6a85dd3b1cbc1c01efbc3feac2fefafd7', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-07 12:36:00', '2022-12-07 12:36:00', '2023-12-07 07:36:00'),
('b92500ae5c86c61ee0af5266bb5a191a9502c40169b9cd247a40abec3994bb0b831026cdc941a23c', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-17 12:15:19', '2023-02-17 12:15:19', '2024-02-17 07:15:19'),
('b94016f82d63f12be398f39eaa40300f1b2a855d8c988b8673afeb7f12edeab1b275559b98a87a4a', 27, 1, 'access_token', '[]', 0, '2022-09-27 16:39:46', '2022-09-27 16:39:46', '2023-09-27 12:39:46'),
('b9442cad4f779772ee0f89ddcf55e70b8700cc3c6a29a07c5cd3581ad18350217fedbc4c0f6b0175', 27, 1, 'access_token', '[]', 0, '2022-09-26 16:29:43', '2022-09-26 16:29:43', '2023-09-26 12:29:43'),
('b94a448beef79e44168c7dcec79a00ae94dc2a81eda6358a9001332ed64ecd8da213263f98b94693', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-17 22:36:42', '2022-12-17 22:36:42', '2023-12-17 17:36:42'),
('b9a0834a429c246192060915078cb7dedc65380cb034797b75e8560510e430b1db1f5bc5e4823256', 27, 1, 'access_token', '[]', 0, '2022-09-27 08:55:51', '2022-09-27 08:55:51', '2023-09-27 04:55:51'),
('b9bba309f72d65531322189e6dbadfb15d14778dfaf431375a666c0e6f90cda8b5234b181e0498b8', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:09:42', '2023-03-14 21:09:42', '2024-03-14 17:09:42'),
('b9bc9fe995185ba264074d28673acd2a1cc98cd748d92a8205d75cb1b2b7c913d5444ccec7cec3cb', 14, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 1, '2023-03-16 11:38:18', '2023-03-16 11:38:18', '2024-03-16 07:38:18'),
('ba285c32dbff964a24adfb154b66aff4939f798b5108764f8454805f8e0d7d3dac31146a312ea23b', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-10-03 11:51:37', '2022-10-03 11:51:37', '2023-10-03 07:51:37'),
('ba4cddacbd9ad311398c444c63d9098226d3e4da55f30a0acb5cef264ccefd32ed40de3f5867ac98', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-10 17:08:46', '2022-07-10 17:08:46', '2023-07-10 13:08:46'),
('ba90a05a560af668deae640e865016cb317fbf1e6eaa281c328b91e786cc09447a63ac2310fecc89', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-09 22:47:08', '2023-03-09 22:47:08', '2024-03-09 17:47:08'),
('baaa7d2cef4372f7ad43f0b3eb5dab74bbfda97994e733cb712677d380c0f505a114653a978ce3b2', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:00:58', '2022-11-13 22:00:58', '2023-11-13 17:00:58'),
('bab67d2abd7a6de7eb05608e0afd1811db8208e86438f452a14e39d1cc85b3bf1d7be3be84e1b14b', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-25 23:08:38', '2022-07-25 23:08:38', '2023-07-25 19:08:38'),
('bac8e44dae728a1225eead002b202c7f325b7e7057e7603295c0bcc9e0a96a491b109b2d9ab736e6', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:06:39', '2022-09-28 11:06:39', '2023-09-28 07:06:39'),
('bb38e142e491f1eadef40e7b90baa64edbff96eca311361d4453801f46b0eec3e285e32089926b2c', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-05 14:27:27', '2022-08-05 14:27:27', '2023-08-05 10:27:27'),
('bb601c15b675860502d3459888e8f37b1742e0a514a70149fbd8b8abb6be069e4a539d0b00e92f4a', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-11 11:57:52', '2022-08-11 11:57:52', '2023-08-11 07:57:52'),
('bba3bb1fb8ba33eab7f917410f7c276ccee493d5d06dbcf1c684c0298c72bbdaf159e6567348b0a6', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:40:11', '2022-09-27 13:40:11', '2023-09-27 09:40:11'),
('bbab7d38469f8a9d0ec633917ba649996ec85e32361c833bb8fc40b87ff666ff246ff86f438d9a8e', 36, 1, 'access_token', '[]', 0, '2022-09-14 19:21:15', '2022-09-14 19:21:15', '2023-09-14 15:21:15'),
('bbbede087873e6db5af1cdb396644a97c075e161c50587121a315af15df9b4a70ba906365981112a', 27, 1, 'access_token', '[]', 0, '2022-09-27 15:49:07', '2022-09-27 15:49:07', '2023-09-27 11:49:07'),
('bbf241127fb3188dde0b13ae735adcaa418de24ac7c4b8e723a396a4a2898f791fee16895ae9ca09', 6, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-17 13:49:16', '2023-02-17 13:49:16', '2024-02-17 08:49:16'),
('bc1474faaa0269aa24009f538a4f764a2d53a929cb210a3b2f74f7e6594997b47f3c98d6ffa497f3', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-04 22:15:11', '2023-03-04 22:15:11', '2024-03-04 17:15:11'),
('bc3ed629eb64a55f21122869405260b9ba4819631d5698729394eee66c905ffe5dd2195aba7b7849', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:12:46', '2023-03-14 21:12:46', '2024-03-14 17:12:46'),
('bc499770b31e893e3282c46851ddce3fcd119e1336f5f13d5612b977ce86978ba68be3e2315ed208', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:19:07', '2023-03-14 21:19:07', '2024-03-14 17:19:07'),
('bc72b68781a5df9277df4a41d91f4223216bc642f2ee3370f6d4160561aaeefa24cc35629a739eb4', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-21 12:43:28', '2023-02-21 12:43:28', '2024-02-21 07:43:28'),
('bc9b9c83aab72312d1526105ec46d6789662e29451898d0ee093ca8779264c56298a75f36c21a5b6', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:19:08', '2022-09-30 15:19:08', '2023-09-30 11:19:08'),
('bca21b97dab372ea75193ced2dfee08c72d2b3f042c1afddd5301f8fdbffda5f3124da7ab6114a7f', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:06:30', '2022-10-03 12:06:30', '2023-10-03 08:06:30'),
('bcd73f5a72f4567af827bfd6fc75d9aaf0952b3c8894e9dc54f576cd635605914a8934a628244034', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-10 16:43:29', '2022-07-10 16:43:29', '2023-07-10 12:43:29'),
('bd6d9dfccc5fb353d6b4e86d6b5d6fb23ff651696fc0ed83c0014bb831265ef79e4abaf442ef9d32', 27, 1, 'access_token', '[]', 1, '2022-09-28 12:18:00', '2022-09-28 12:18:00', '2023-09-28 08:18:00'),
('bd7c8ff047550308a3ab97f0bc182e5986d1f833943cc797a1218f8407f8e2d117383e652708e8d7', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:31:34', '2022-09-30 15:31:34', '2023-09-30 11:31:34'),
('bd8aba794887d7419a959222a2b90915334c6d29e3deead0c5a8565a4dbb5819fcd91755a5a45307', 69, 1, 'access_token', '[]', 0, '2022-12-14 00:32:27', '2022-12-14 00:32:27', '2023-12-13 19:32:27'),
('bdd1fa08836aaecf4cb8c81388cd3e0a8e7841d548f50046297b1463daed177602904e68839bd8d4', 36, 1, 'access_token', '[]', 1, '2022-09-14 19:30:46', '2022-09-14 19:30:46', '2023-09-14 15:30:46'),
('be035e6b97280ff79a12b91d83c5235c5d9868f87b0c3ffe11c3bbb4844aa3d76165f72f6117dc78', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 17:34:11', '2022-10-03 17:34:11', '2023-10-03 13:34:11'),
('be32a9c60931eaa7d47202ce69f99b5720a8f1a841689da0ab7da6bd11daabe397118b34748b4a03', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 20:38:06', '2023-03-14 20:38:06', '2024-03-14 16:38:06'),
('be3a36946348cc715db5eba623e2fb897f72527bb7b35044affacff9810b3bcf93c1e1e4fb55f360', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-19 23:01:24', '2022-12-19 23:01:24', '2023-12-19 18:01:24'),
('be58c85e1029f8413de877e5e0bb8d9608c381ff4cc2197ef43d0d55be732bf017a6a376b621292b', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-06-25 13:28:41', '2022-06-25 13:28:41', '2023-06-25 09:28:41'),
('be76eb0ed7171d8823f310061eea2f7dba13c92e09f538bea5e7f1c07a95028f1ea7ac2b823b0810', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-01-20 13:45:33', '2023-01-20 13:45:33', '2024-01-20 08:45:33'),
('be87f2d7aab6df109518515575c625d574a288578e97fdc65d98ce93c2f216fbfdb908543fd13082', 36, 1, 'access_token', '[]', 0, '2022-09-14 19:22:18', '2022-09-14 19:22:18', '2023-09-14 15:22:18'),
('bec0b6a89e775b531a7adfd485310e06596e4b1e1b948d9b51822fcb99480acc86f756d93598dc07', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:23:39', '2022-10-03 11:23:39', '2023-10-03 07:23:39'),
('bf26f2adb6bb2055a3f01256c0e2990740269e6e48223a6dcfcdb52433152bb8d9005b2651908db4', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-09 12:07:24', '2022-12-09 12:07:24', '2023-12-09 07:07:24'),
('bf2a6f7c06c4760a46a79d1a2880907ca04b33d9bddbdf7a6c0b94544fe360140af0ec764b474564', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-07 12:37:31', '2022-12-07 12:37:31', '2023-12-07 07:37:31'),
('bf4f333d7552dbc85c697fdeb00cb451f4a76bf2e5e6b0787335b2a98818e5713c64f306e3f51319', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-28 11:32:35', '2022-11-28 11:32:35', '2023-11-28 06:32:35'),
('bf586cb4557189336f70257d5d1cb0ce8105ed917587d171e8523b00bb5ed922be04a08d083c1d95', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-21 22:45:48', '2022-07-21 22:45:48', '2023-07-21 18:45:48'),
('bf7ed5693bf324e96b3c0a208d67ae03935cf231691332b320fb492c068b30235e8e4bd83e315b43', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-09 11:59:32', '2022-12-09 11:59:32', '2023-12-09 06:59:32'),
('bf9f3705cd2b4ba5f57e8673810a438873f2307cf5ea6e2d7d1ed3223103727349259e4a4d76908a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-07 15:55:56', '2022-10-07 15:55:56', '2023-10-07 11:55:56'),
('bfacf978f0f45054e78aecb296ad3570b5ef4e5fe4cdbc08c92daf1636979f35dc8234cc3a339ba3', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-04 22:22:21', '2023-03-04 22:22:21', '2024-03-04 17:22:21'),
('bfb9290578e3848e84906827f20e478acbbacbfc4c4a1cbb566e6117e22458e106882a1d9c0309e1', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-15 15:39:18', '2023-02-15 15:39:18', '2024-02-15 10:39:18'),
('c0092bd7389b0136f3d18eb23d5ccbb68ad82b70c65577bf079b32ed20153d75aa040d7832d33ab0', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-05 13:55:16', '2022-09-05 13:55:16', '2023-09-05 09:55:16'),
('c03b6ea6134c7de17fe290b9c4d752f70afb1c860753eb7d5c2237dc637d9e6fe62ab57f957f8cba', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-10-03 11:51:44', '2022-10-03 11:51:44', '2023-10-03 07:51:44'),
('c0813d0fb44b8c7b7e265d7c244c5387ee1ef704887fe320a9e3e064a036df5f993e57a879f31f8a', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:18:57', '2023-03-14 21:18:57', '2024-03-14 17:18:57'),
('c099c8aeb82979c758432e9d0f76887a7f9a3a0e809d9f462d57a1cbbfa877161e8840e87829bf84', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 12:04:28', '2023-02-24 12:04:28', '2024-02-24 07:04:28'),
('c0a5df28aed8aa903c4e671c61c014275a393cd16e5f84ec70d5df75afa1779877eeb0eb1aa6a789', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 16:23:01', '2022-10-03 16:23:01', '2023-10-03 12:23:01'),
('c0d4c84a62b8cb8fa3a7bf2be3ad3c0ad94a7f1d6b4f4c6def610e9ea71ddcea79449bc5841a9a88', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-06 12:36:23', '2022-12-06 12:36:23', '2023-12-06 07:36:23'),
('c0fed4d09e06dc9642b189ffd2620dddfa921dbc6b004c1257038b6a54ba30c8b9ddc033a6e42481', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-09-26 15:03:13', '2022-09-26 15:03:13', '2023-09-26 11:03:13'),
('c10fe5fc74f9cecb5ca8997879976b5f3b71640777b438c6366c2630a1f6e4b7cedbf61c8547ec26', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-04 22:27:30', '2023-03-04 22:27:30', '2024-03-04 17:27:30'),
('c17a78452cfe641bb193b7a1aae0c5e56e31fe572137c3389fb382a61567310a17a9312f61a581a7', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-10-03 11:08:15', '2022-10-03 11:08:15', '2023-10-03 07:08:15'),
('c1893060cc7b4f1b4c73d6d17e754c493a638799d3b5f23d8f77638cce5e79d6ed8ff1cccb00cd40', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-10 22:30:08', '2023-03-10 22:30:08', '2024-03-10 17:30:08'),
('c1bcbf85f7793939c88b102887f42344fff5c7544a40a98f3bc282a145e6a8f893a5cee8037274a5', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:12:26', '2022-09-30 15:12:26', '2023-09-30 11:12:26'),
('c1c373d805bf2cf0c0b70abfcfa87995041a75d5e96d0200f42934a426240d761308cf6fc600b9bd', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-07 12:58:11', '2022-12-07 12:58:11', '2023-12-07 07:58:11'),
('c1c7532b77b615c8c6db7946b360c7d29ea2b10c1dc652443d42a35f57a5a80f4aca59ac36dd39a2', 55, 1, 'access_token', '[]', 0, '2022-10-30 01:02:29', '2022-10-30 01:02:29', '2023-10-29 21:02:29'),
('c213623b3df19e635e2e6e7a1cea0b98c5b7d45d70e74c1e1c859c4af01ca61175d2d24b5745bbcf', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-06 17:25:04', '2023-01-06 17:25:04', '2024-01-06 12:25:04'),
('c22a3e312770e4ceaf0457d939490d4d1cb51c8a51bac17586b301e34508c7a49efc0bc700ff0157', 53, 1, 'access_token', '[]', 0, '2023-02-22 00:28:44', '2023-02-22 00:28:44', '2024-02-21 19:28:44'),
('c249456af083c0739ca35701b89f6363248971344411ac455455f40f17fd855c3908c68bea110dc5', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:01:03', '2022-12-13 23:01:03', '2023-12-13 18:01:03'),
('c2877195a48a942367cc2b92df64aaafaafdfee0ba6f2dbcd6ac5c61562ea4e45ffc1a5f53e23dd0', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-21 22:44:20', '2022-07-21 22:44:20', '2023-07-21 18:44:20'),
('c2999172dfc6af83a2e909f03b81e5f5958fb267ab03d6a99252da453e6d837c0ec8f1dc04a23af1', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-07 08:07:50', '2022-09-07 08:07:50', '2023-09-07 04:07:50'),
('c29f761add948db702dce0f1f30914dbbaac79a9bb4f9b6b913a8b2d2b0d54eb4827f73735c0d668', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 17:34:04', '2022-10-03 17:34:04', '2023-10-03 13:34:04'),
('c2af56bf8409d2a9821040ae5296411026c74d6ae4f24b088a313e65fc35f5e3abe850febb3d41f6', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 20:53:56', '2023-03-14 20:53:56', '2024-03-14 16:53:56'),
('c2e0404d964f69a4002404b5c338e45587018d4b2cdd536ee607d16ddd2d58ac7796e27ac3e5fdad', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-07-14 13:51:38', '2022-07-14 13:51:38', '2023-07-14 09:51:38');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('c2e9668c3bb0dcfa322aaa6881dc17838e1bd011d00bb11a9decb137d72ec4451d89159a815b320d', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-26 12:06:35', '2022-10-26 12:06:35', '2023-10-26 08:06:35'),
('c30a204562afe1f1125e102bb0cc0e80b0a8a120c60b4f572c4fd8562c5bcad6a70b657b2591138e', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-07 21:11:37', '2023-02-07 21:11:37', '2024-02-07 16:11:37'),
('c31b4e12eae91f827939f9e281c1f98c2d7d1eda4be3ee6593b10b2d497c7302beb5d47ee2452609', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-06 22:04:22', '2022-12-06 22:04:22', '2023-12-06 17:04:22'),
('c3246fe438be67b1a90c734140f83ad8f0e1dc3a5dc7f46e67c8041465e451d972bfc9585a892a56', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-04 08:45:06', '2022-10-04 08:45:06', '2023-10-04 04:45:06'),
('c33ce377bae3828caa82dea1b32574a355265bc315958b372e81060581957988939695d79af3c301', 41, 1, 'access_token', '[]', 0, '2022-10-04 10:23:55', '2022-10-04 10:23:55', '2023-10-04 06:23:55'),
('c37d2df73c94e082f3f07d834bf558e00336c1f7bf754cfd2385456b933158afa2b84f8de891dd48', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-28 12:01:30', '2022-11-28 12:01:30', '2023-11-28 07:01:30'),
('c42fd74e88abffa1c4d7dd8af40581e7a3e80a9e0bc0bab2ecded5f9b77c01f720b2b909359ca8c7', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-11 11:58:22', '2022-08-11 11:58:22', '2023-08-11 07:58:22'),
('c4482a8a9cd94338dd0488ab89cbc9f8407210b23e29bdacf26d9a8fe5a7d774e64415c5d84113e0', 89, 1, 'access_token', '[]', 0, '2023-02-13 09:21:56', '2023-02-13 09:21:56', '2024-02-13 04:21:56'),
('c45466f416188faba6b729c451e2103d89b8b41da6c74a6f654fabfb0f3f38a3d4dff30352950c0b', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:06:03', '2023-03-14 21:06:03', '2024-03-14 17:06:03'),
('c455d4f2c58108e9d977a5836a5ca0939b16472d0cb9c95c7ac4ae832bdb6abc53071874aab3ee0a', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-09-29 12:01:05', '2022-09-29 12:01:05', '2023-09-29 08:01:05'),
('c46be68cfdecb4aeaa9d609a798ec37910d8bc23e992d807f98dcbeac59ebd832f0809c0607a9214', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-08-19 13:03:51', '2022-08-19 13:03:51', '2023-08-19 09:03:51'),
('c46daddc6a4a362217b08b9a8f60eba06fdbdc527ba65f69518fd83a76639db857d6325249f2fa05', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-28 16:06:55', '2022-11-28 16:06:55', '2023-11-28 11:06:55'),
('c475e73f91fd20a115ee7e2786425d91c02ee479ab4aca3f6c5ca7d983b30d98b8b8e606409a7923', 89, 1, 'access_token', '[]', 0, '2023-02-11 17:33:13', '2023-02-11 17:33:13', '2024-02-11 12:33:13'),
('c489d400eb6b72f0076d2ae0234dfc2dfa095caf4be898e945a08e496593bb17155f25fcd482565e', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-11 15:28:11', '2023-01-11 15:28:11', '2024-01-11 10:28:11'),
('c4977b6ec0292af5d95cf3fa497568a9ff8678e0bf45c3746dfb0bb759f28e44e3984890662e007c', 27, 1, 'access_token', '[]', 0, '2022-09-27 14:25:19', '2022-09-27 14:25:19', '2023-09-27 10:25:19'),
('c4cb1667316a0a113248dddde3981e7ab7a159508ce14bea41112cdd68cb86e5babb297486bb6fab', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-27 20:37:59', '2022-07-27 20:37:59', '2023-07-27 16:37:59'),
('c4d6765ac2861c4e68bd012a0edd4a7452c320d6733983127b02808ec00eccdeba76568738a6d789', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-07 21:05:43', '2023-02-07 21:05:43', '2024-02-07 16:05:43'),
('c4e08e8ac83a339a42154a5ad8f9c69f2b845b413830ac525567cc1c5b5b0404e8eddb4b527f5b4d', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-04 08:46:51', '2022-10-04 08:46:51', '2023-10-04 04:46:51'),
('c5044c8a94775f0f0d9a8af985929409ea3c477df486dc1d11115a1ef67671d2ca495b24a4b04b87', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-26 11:17:04', '2022-10-26 11:17:04', '2023-10-26 07:17:04'),
('c5046db1ff32f7369d437728e10f0ecf9a1d361fa1902f26a4005a3e9f07144b8c32eedd22e99f75', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 20:42:21', '2023-03-14 20:42:21', '2024-03-14 16:42:21'),
('c506354c73886c4db55cb968a3d3ed7183a4a6a4ae5e6417f3022bb477b76715a9b4c18b5e3a7148', 27, 1, 'access_token', '[]', 1, '2022-09-28 10:32:15', '2022-09-28 10:32:15', '2023-09-28 06:32:15'),
('c515182ebb6c78511d41ba84a8bd1c51d3d6674c897065267e84baacc67632399b072586a61da60c', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-12 15:29:28', '2022-07-12 15:29:28', '2023-07-12 11:29:28'),
('c53d8d47fbbbf20ae457bad5152c80df8b4a978d4289e4bc9e29efce2ad3e467b0d4739c773a256b', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-14 12:18:51', '2023-02-14 12:18:51', '2024-02-14 07:18:51'),
('c5676ff7058a5298ab26a36f965c50abb90a22e242ced95f5dc02b1ecb923f6aa3c4dc67aeffe919', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:06:35', '2022-10-03 12:06:35', '2023-10-03 08:06:35'),
('c593270b794961fffbd86accaca6055dde52c388111b53347372e2660d1a8dbcf8d5ead26e9ab18d', 68, 1, 'access_token', '[]', 0, '2022-11-04 15:56:33', '2022-11-04 15:56:33', '2023-11-04 11:56:33'),
('c5deb16182b215f562da77eda513980e42e177c5ae5503e10b2b89f0cf3394f90d08669a19dc485e', 93, 1, 'access_token', '[\"user_scope\"]', 0, '2023-03-16 20:33:36', '2023-03-16 20:33:36', '2024-03-16 16:33:36'),
('c624d8a080f63fb91b548702a4f6d8356d0bb1e07ef4fda6342b49c1138ec68513c679730d59ca39', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-09 03:28:29', '2023-01-09 03:28:29', '2024-01-08 22:28:29'),
('c6450af3448274048cd10b4b5a947c74c74d0013c2ff086b9db2d92ba16b1ccf795b2319e9f44b20', 27, 1, 'access_token', '[]', 0, '2022-09-27 09:08:34', '2022-09-27 09:08:34', '2023-09-27 05:08:34'),
('c69786c13b51a330163d4f37702cf6bfc83092a1cfb2a98c378f6ac748126e0c31b5306c29cd7a07', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-17 22:37:00', '2022-12-17 22:37:00', '2023-12-17 17:37:00'),
('c6f028195ce9f2778961067b466491c295c07f33312e53f076b6c4eed20c600f2e5f236d30c5c75a', 53, 1, 'access_token', '[]', 0, '2023-02-22 00:27:48', '2023-02-22 00:27:48', '2024-02-21 19:27:48'),
('c7494b703fc9d36a680a415267a0f36d7594f20a0bf6bc6eb8919147892dabb3b530a0fb735cc6ef', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-03 10:38:34', '2022-08-03 10:38:34', '2023-08-03 06:38:34'),
('c75cb25944b963ba06c7ae86704da68ea3692669453e441bda94ba1d93710b2bed8a38da15855c7e', 53, 1, 'access_token', '[]', 0, '2023-02-22 00:26:50', '2023-02-22 00:26:50', '2024-02-21 19:26:50'),
('c767f4e1b565c74e384ac6d26f7865cfcd2728ad61bdec9e3e26f33688d5b98e6840284a138953f6', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-03 10:38:17', '2022-08-03 10:38:17', '2023-08-03 06:38:17'),
('c768b0639861683eb259eb1396a0ea795079548e1610b8f336937d85aa6bcfb39c9dc6a1f88b0963', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:42:36', '2022-10-03 11:42:36', '2023-10-03 07:42:36'),
('c77d7b9a77262951eb350de7668362e07e791579b6ff3c5ad749acba52ebabe7b52b14142c0584eb', 36, 1, 'access_token', '[]', 1, '2022-09-14 19:38:21', '2022-09-14 19:38:21', '2023-09-14 15:38:21'),
('c79f2206feb5290350281bb40827f4919c539761adb084430615ebc53e506df25cf18a303f45b0a6', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-16 14:23:08', '2023-01-16 14:23:08', '2024-01-16 09:23:08'),
('c8152ff4c23c88866e5c8b7c3162d3016e01695b8f33a668e382b3282e89811143b340641561efd9', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 16:17:37', '2022-10-03 16:17:37', '2023-10-03 12:17:37'),
('c8540cc9800f0033213d3a4374a5fe727c2483af971aaa6b291460c2726130e2831dd9c5fb229169', 19, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-17 14:50:07', '2022-12-17 14:50:07', '2023-12-17 09:50:07'),
('c880b870f25fb84fc47cb7624f43159dd976c0520f761a9c3c9dd064992f099f08431e43a60e249a', 14, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-11 14:04:53', '2023-02-11 14:04:53', '2024-02-11 09:04:53'),
('c8bbde1f1c17afa75efbdcde49ebfdb746a3c119a36ce56419da87b47db0e4125589c5bdcfced7b6', 27, 1, 'access_token', '[]', 0, '2022-09-28 14:51:02', '2022-09-28 14:51:02', '2023-09-28 10:51:02'),
('c8c81b61d02145b580d1c35e0577a874a65516e72109177a1b2536cf3575672678c061804dda0557', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-09-29 11:58:21', '2022-09-29 11:58:21', '2023-09-29 07:58:21'),
('c8dadbebc607112520c409dbd61f5db67bf511a953fc2f9aca2848a7b3895065b169eaaad056bcc1', 55, 1, 'access_token', '[]', 0, '2022-10-30 01:16:03', '2022-10-30 01:16:03', '2023-10-29 21:16:03'),
('c9178efbc709c631cd1907eaca1bf73925a3b0e08c7d647c45210a59cd8560b041509c8d2686b05a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-17 13:23:59', '2023-03-17 13:23:59', '2024-03-17 09:23:59'),
('c927d7f0e8cb93c805b73d60d4acbe4c026dc493af1a177cfc8ffca50fbb105034d764db64a78dba', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-20 13:44:54', '2023-01-20 13:44:54', '2024-01-20 08:44:54'),
('c93304ccf85e52688e33bd2f93d9281c2c2f7c90d43ca69d99a04bdce0286b8658ee4ddc3e474f3d', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-20 20:37:15', '2022-11-20 20:37:15', '2023-11-20 15:37:15'),
('c938dff0ee96abf2f7300602f48297acc96badfc83e6cecf49cc5cb17b9b6f234aeea1ed4cca8948', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-10 21:24:58', '2022-07-10 21:24:58', '2023-07-10 17:24:58'),
('c952f743e9ac8a0f0d6cd3eafd65ff1726da52c79eff6eb97d02203ed641b1dce3c593cbcd3aade9', 27, 1, 'access_token', '[]', 0, '2022-09-27 18:32:14', '2022-09-27 18:32:14', '2023-09-27 14:32:14'),
('c954769be4a15ebd7c9ab18891d7187035f86eee6bac3a55f60df5d0802ec94a18ecbdccf383ba94', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 10:47:09', '2023-02-24 10:47:09', '2024-02-24 05:47:09'),
('c9684b752cf16c62b0375f567aa0ca00e0ba0427c9c77cc928ffc846005f617011336ecd40483e36', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-18 20:58:26', '2023-01-18 20:58:26', '2024-01-18 15:58:26'),
('c9aac392c6a3f38c2ba3f5f67b8dd4b2e2c4df50c14ecde3c2aa99e20f5614747e5e63db88e239ff', 27, 1, 'access_token', '[]', 1, '2022-09-28 10:01:27', '2022-09-28 10:01:27', '2023-09-28 06:01:27'),
('c9bba89da4f719629d3d9924bccb61fb0a4b62f59251f72d5552b3a99ca9a49317900d3abe1bff64', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 16:24:40', '2022-10-03 16:24:40', '2023-10-03 12:24:40'),
('c9e11a7d0963745f2a82a855b52d86fdc519864b8321624df29ef4725e878c80e5b9296ebde95ca8', 27, 1, 'access_token', '[]', 0, '2022-09-27 10:31:15', '2022-09-27 10:31:15', '2023-09-27 06:31:15'),
('c9ea06afbf81e1242676cd0e6ce015adf84fec29f3f5703c273e051b22b711464ddf5169560da15d', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 12:04:28', '2023-02-24 12:04:28', '2024-02-24 07:04:28'),
('ca283b67369c39ab9f6a0ad6493c503f529c1b981eb453a736b5a5852ac2f8ae780425ae4966f376', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-11-28 16:06:58', '2022-11-28 16:06:58', '2023-11-28 11:06:58'),
('ca286a5987e991ab03470e7d33d1bda62b4cc656c9610457fba4aa3ccf4c9ce40f409f47aea89d77', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-10 22:32:26', '2023-03-10 22:32:26', '2024-03-10 17:32:26'),
('caa6e0ecb901e15ec16b3bc5025a3fbf6b0d55e152a47a093537d65993a25f7d7cb35a5397781c81', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:24:53', '2022-09-27 13:24:53', '2023-09-27 09:24:53'),
('cacb2594b75f94eed6c6774a5b115b48fdffe50d4ec398d8353fedb9176ad2daa25b2bb052eb7c82', 19, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-30 09:35:28', '2022-12-30 09:35:28', '2023-12-30 04:35:28'),
('caf3f18bddd5e346a1ff1715d549d2ff4f5850c2627272fa6b0af58de146521067de992f319e2c32', 27, 1, 'access_token', '[]', 1, '2022-09-28 11:47:16', '2022-09-28 11:47:16', '2023-09-28 07:47:16'),
('cb5054e1fc46dcd6e03ce1cab37f64d0b6ce8d277fb1ffd009d8db7d093b56331eb3f289670c1f92', 27, 1, 'access_token', '[]', 0, '2022-09-28 12:08:39', '2022-09-28 12:08:39', '2023-09-28 08:08:39'),
('cb6df3173ca2a98edd744607c2119675878b13252e85137fc3fbedde8af2353ee079bb885293f9d7', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-25 09:47:07', '2022-07-25 09:47:07', '2023-07-25 05:47:07'),
('cc5aab12ea880f39e53ddb83cf1644defe6a2467bbe686fafcc69ffe022f57955896d956daf119b8', 36, 1, 'access_token', '[]', 1, '2022-09-14 17:55:32', '2022-09-14 17:55:32', '2023-09-14 13:55:32'),
('cc6a079779552684fbde90190cfdd9c729cc44772674e0255065d5615a66d25ecc9bd6e9084b7f51', 68, 1, 'access_token', '[]', 0, '2022-11-06 09:44:33', '2022-11-06 09:44:33', '2023-11-06 04:44:33'),
('cc9a6cd77a29cbfb630608db1c1dc04dd18e89ab1c6b9ec231c73f96248ff95df0e5b9f042500929', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-10 22:33:40', '2023-03-10 22:33:40', '2024-03-10 17:33:40'),
('cc9bebce3d454c4d99df5701f25c21a31b11d58d3a0e2df6f068a4a4cf36af17e928a663d5b7e97a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:59:21', '2022-10-03 11:59:21', '2023-10-03 07:59:21'),
('cca44be19ecb3eb9beced97c7bac1c0b1acda65ec2bcb89719981ea2abb4fa0a92890488888c0b8b', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-06-25 13:30:59', '2022-06-25 13:30:59', '2023-06-25 09:30:59'),
('ccadbf87d7fd3e8f516dacd67460a78b658f9ec56f71f28703cf52f5830dff91cdb4ce8b008b989a', 89, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 16:03:02', '2023-02-24 16:03:02', '2024-02-24 11:03:02'),
('ccd2c563382975372f962b6bb3f56a06958e7a2cb909edded2305583b7aae6cb2765e4ce4d8d9ab0', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-09-02 16:56:24', '2022-09-02 16:56:24', '2023-09-02 12:56:24'),
('ccd84dee45498cba2fc60706461decbe112a3ec0c778d5aaf1229bd9eaaf0e309c5273e236e4a902', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-29 11:51:51', '2022-07-29 11:51:51', '2023-07-29 07:51:51'),
('cce9c8073a6e16cb2f6467596ce7d8e5e6e35ab2609ed2b7edbbe051e3caa58ad1e8ae1768465db8', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:23:22', '2022-09-30 15:23:22', '2023-09-30 11:23:22'),
('cd12eabcc7df7dedef17020ed1ca8726b17a8e1c330b33f925d93647a5592d5c6218fdfd973a863a', 36, 1, 'access_token', '[]', 0, '2022-09-14 17:55:30', '2022-09-14 17:55:30', '2023-09-14 13:55:30'),
('cd5092111dac60a5a13b84b0091b89e168c6d771a0cfd7a5387f3f87132a5d69fdd4ea5d7dade00c', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-14 14:08:00', '2023-02-14 14:08:00', '2024-02-14 09:08:00'),
('cd5e49184b3db60b9ecfd8bde78594ed11f6b1a0cfccd6c1f0f44bd174943e9ba26908d4ae1dd9d2', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-14 08:43:50', '2022-12-14 08:43:50', '2023-12-14 03:43:50'),
('cd7047570a5accec9d165c79e6c6041791d1f226eadf2444c42a328ebd737ca4330429705fa461f4', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:05:34', '2022-12-13 23:05:34', '2023-12-13 18:05:34'),
('cd75647618e41961e2fa52120aae57a30dd6a78314399bd18868a725e59d35f9ab52666d9c8e6dea', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-10-03 11:51:40', '2022-10-03 11:51:40', '2023-10-03 07:51:40'),
('cd81617390a581afe068dc9b11fe22c1ef9f6f6b9831ce3d16b88b507300352e2d8c7813eaa49c96', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:50:21', '2022-10-03 11:50:21', '2023-10-03 07:50:21'),
('cd829860c5aaf58f5bb76672cf228b2c77a33a60decc965be15d90986c6fab2037f4952c9edef3ec', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-24 10:32:53', '2023-02-24 10:32:53', '2024-02-24 05:32:53'),
('cdc674c15cb44d914b5a198543aec4afbb9753b9803fe21482a970b0c47cdbaed6416671d4f2fbb3', 68, 1, 'access_token', '[]', 0, '2022-11-13 21:59:38', '2022-11-13 21:59:38', '2023-11-13 16:59:38'),
('ce02eea828fa1852f826cd760f7f40a25fa7aaa6d2e28759d3f4ea42b6824aaf0ce28218c6a0f04a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-09 12:49:04', '2023-02-09 12:49:04', '2024-02-09 07:49:04'),
('ce2c230b42a285f01844ec3bd473198bcfd1797b3dbc9c839e9acc4fed51f4f470f40ab38c351bee', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:54:09', '2022-09-27 13:54:09', '2023-09-27 09:54:09'),
('ce6f4e3af8bcbfb0fb9efca64d04faf810a4b68edd67ee2b6d48dccda384ce1090f12de6958c9571', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-17 12:15:42', '2023-02-17 12:15:42', '2024-02-17 07:15:42'),
('ceb46f714846ed41a66f7e0ce4ec6f79a0ee433ab84cc410e353c163a12ac45ed4218fba1edd6c9a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-28 11:32:26', '2022-11-28 11:32:26', '2023-11-28 06:32:26'),
('cf0ec1b617892378736a1d9358624be32ab045b9e82e6c95174e8fdfec2c653ca760f55f96876cd6', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-14 17:23:47', '2022-07-14 17:23:47', '2023-07-14 13:23:47'),
('cf171b1fc671525797394bee2786251c20ec1d04ca4e6ee3b2caf38b89dfb4bc345aad00aebd5e2b', 27, 1, 'access_token', '[]', 0, '2022-09-27 11:26:46', '2022-09-27 11:26:46', '2023-09-27 07:26:46'),
('cf2dc77c19a611da9f5bdc7c40184d37b1697693192a4f33fb3f7088e68e33b97f1f33e59fb97ab4', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-15 17:08:16', '2022-07-15 17:08:16', '2023-07-15 13:08:16'),
('cf8f2c4d9a30c1c5479e85f1baf2c88474708895d4b42784ad417b7ac8a3f53b97ca8066b69d9504', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-08 16:35:23', '2022-08-08 16:35:23', '2023-08-08 12:35:23'),
('d0242b1a69fba2e447ff792bcfcc79aca090678c450d44b68e2150fb47be498dd222ddcb32031ebd', 89, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 21:01:58', '2023-02-24 21:01:58', '2024-02-24 16:01:58'),
('d03235c238e95033a5472f6012ded2d923386c1ca33c7af4c19b7ca8b91d9e35e7fd7e3da4eafc0e', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 16:17:29', '2022-10-03 16:17:29', '2023-10-03 12:17:29'),
('d032a88c96e3d96095d68f2730c60b8ade5839654d884e16044e8c890f0c6a6d2604037e7cf68d7c', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-11 14:19:07', '2023-01-11 14:19:07', '2024-01-11 09:19:07'),
('d0ac9434b413b83ba7af2d45d449b2b59c3443190cc063f06c803f22c31272b3254e0ba27745477a', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-06 15:04:54', '2022-12-06 15:04:54', '2023-12-06 10:04:54'),
('d0c01acabc8f3bc4888bfc91504fe5358a87dc8ac68ffbd955b424886174ef8bc455735512addac5', 6, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-17 13:49:45', '2023-02-17 13:49:45', '2024-02-17 08:49:45'),
('d0f1453971007cee91724dbb81f3d66786759f1262f416afa51695153d0f8bf960a231f04dc64b03', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-10 10:37:56', '2023-01-10 10:37:56', '2024-01-10 05:37:56'),
('d1055db054b58243cfa96fd6718a589f8d5338e6b43210d593bd875b13bfa539b32cf036aaae5295', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-08-03 14:58:56', '2022-08-03 14:58:56', '2023-08-03 10:58:56'),
('d11bb4b3edc1c553a581362878b277742f31dbf5345006a480207b0cec80fc37e99123eab61533e6', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:25:10', '2022-10-03 11:25:10', '2023-10-03 07:25:10'),
('d142ffe7e8b9563e7086772ef77f24149d678034faedfce96283feffc7b35340bd28799cbb30a330', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:42:25', '2022-10-03 11:42:25', '2023-10-03 07:42:25'),
('d145242b29017416741119cb833590a76bff5b39b102fead47b2de0d74d570167b0ea98a3f953142', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-17 12:09:55', '2023-02-17 12:09:55', '2024-02-17 07:09:55'),
('d14d3877a5996eb6fbc87ca61dd51a4fac5395679225a467fa51ffe387ec173e7f0f25da15c4ad4f', 27, 1, 'access_token', '[]', 0, '2022-09-28 12:04:47', '2022-09-28 12:04:47', '2023-09-28 08:04:47'),
('d1822f6129fd2ae688e13175049106f49e4bb4574300485c2b8e8b4781bc66a24df643ffc040487d', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-06-24 15:40:16', '2022-06-24 15:40:16', '2023-06-24 11:40:16'),
('d19f3f273b0f0928fad769500d533d3230ffd4eeb562a56511473f1265da335e49a79b6d4fd72361', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-11 16:21:35', '2023-01-11 16:21:35', '2024-01-11 11:21:35'),
('d1d0c3661e662c48fd211f84b59eae951a47f260d0828705519d423c5c3b5599042306d7a43db349', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:03:30', '2023-03-14 21:03:30', '2024-03-14 17:03:30'),
('d1e492a12790c7a94f616a9cd72206283c441a9ff34209f6031115adca2b45a3e864a8dd5d9c4259', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-10 13:13:29', '2023-01-10 13:13:29', '2024-01-10 08:13:29'),
('d1f5bad9705c0e2774fab2a4277793f09a44a670f3ddc61fc01a6963bda09fca6657f6dfdd20613d', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-21 22:43:37', '2022-07-21 22:43:37', '2023-07-21 18:43:37'),
('d22ed2cbf098e30d1829e3b68c2f15bb923688a19eef0385561eb28739de1fd9eb778ab13f4c523c', 34, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-10-06 07:25:31', '2022-10-06 07:25:31', '2023-10-06 03:25:31'),
('d3016df4ec894a44b04d6fd86fe0ce8aaf5b27814393da372c0f48beacf28db100630d3e00ff8daa', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-25 20:25:34', '2022-06-25 20:25:34', '2023-06-25 16:25:34'),
('d313774dc350803c519e0deef78271336a3180f71c52fdeb04c0799a228fb33ab8bdb3decd1ee11e', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 17:33:55', '2022-10-03 17:33:55', '2023-10-03 13:33:55'),
('d314a15b9b2d5a972d9f9c43ac0e532ef8742c5164400f1ae32fc70fb3b341ec3a399404d7737488', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-28 16:45:19', '2022-11-28 16:45:19', '2023-11-28 11:45:19'),
('d34dd5444ca727b557e918c52a24439340c3fd2febdb24c4e2bfd3b1038e11d503895b4214fd9683', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-04-12 08:23:30', '2023-04-12 08:23:30', '2024-04-12 04:23:30'),
('d3684d813db8b227a2e55f536ce2b963a95a8cfd89bfc4f28fc5b79262956a1b7cace054fd8140ea', 89, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 16:00:57', '2023-02-24 16:00:57', '2024-02-24 11:00:57'),
('d38605fb0b13510b02c47c8f6edebd2e0af94ec4920ff1841eab7d1284d54a8d233bd190626ac917', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-18 07:49:31', '2023-03-18 07:49:31', '2024-03-18 03:49:31'),
('d38ace7df789b6e5d937f2c9d0ba539b7feaf837e4c2b01376b751fa6e344d6c5dafd54dc80747cc', 55, 1, 'access_token', '[]', 0, '2022-10-30 01:15:51', '2022-10-30 01:15:51', '2023-10-29 21:15:51'),
('d3af1dd5a6972cb064a1e64b9f9bdf98d9672065a42e33597a3d072549f76749a84b353767215225', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-12 06:25:29', '2022-07-12 06:25:29', '2023-07-12 02:25:29'),
('d3d7d4664d28d07f1ef0e1c48ca0bf88b8c0f15d9fde8cf8888df4c537de57251355029041d321ec', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-16 14:23:04', '2023-01-16 14:23:04', '2024-01-16 09:23:04'),
('d3ddba136ee58740559d85b29aa29fcb6c35bad2cd2f779f6b3f6e06e114e31814cf45ad940749bd', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-04 22:19:22', '2023-03-04 22:19:22', '2024-03-04 17:19:22'),
('d4150845116496f02f391422bbed75dd798fd94dbc3e64f4001310182e84d94f7b9bef7f22e8682f', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-07-10 21:24:10', '2022-07-10 21:24:10', '2023-07-10 17:24:10'),
('d415a9f6c0da487df1fa1b713e85a9a5f785e2217962106fe5af98871c5519793ce603a7fbbdbfc4', 68, 1, 'access_token', '[]', 0, '2022-11-13 21:54:09', '2022-11-13 21:54:09', '2023-11-13 16:54:09'),
('d4197562acae7412b910eab34b290bb6f27d143454a16eedac7895f247c8d9f288f83931ccf05a9a', 6, 1, 'access_token', '[]', 1, '2022-05-08 22:14:17', '2022-05-08 22:14:17', '2023-05-08 18:14:17'),
('d43d3b63b852210ac41646abb7fe6a6b87be5efdcb1b062faa1b0ee7d2cb3eeb7bd4c8e9d652e32f', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-14 20:56:02', '2023-03-14 20:56:02', '2024-03-14 16:56:02'),
('d4967c8d91c1d0435a0fa642388cd65d544cb07691a3c238c493d743f01234d3e9e7228fc8d4b788', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-15 22:19:56', '2022-10-15 22:19:56', '2023-10-15 18:19:56'),
('d4be60bfac8ea0cfba41332c4ae7cc743cbb2831fbc9e729b7de1e4d27dba3d6be0ca482bc6db671', 27, 1, 'access_token', '[]', 0, '2022-09-28 09:57:55', '2022-09-28 09:57:55', '2023-09-28 05:57:55'),
('d4c3fc8e90b0ba9cce9ad0ef1ef07f088d34196c4846c18e6dd42ea7af0c4a0c8f23e90562bfe75a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:26:08', '2022-10-03 11:26:08', '2023-10-03 07:26:08'),
('d4ea1444f054c11bc80c289117af3a13d37c9b24ee01167e7e9d3f0882fefa663569731095a6fb3f', 34, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-06 07:27:51', '2022-10-06 07:27:51', '2023-10-06 03:27:51'),
('d50309b7859a3d493f08c86f49a9d674950060c578d72ac2adc487cbe4612bda5cf46079c0918a99', 27, 1, 'access_token', '[]', 0, '2022-09-27 11:11:42', '2022-09-27 11:11:42', '2023-09-27 07:11:42'),
('d51a282099dd825cf82353872c30e0d0aeacf96646dfb493c82086b31eea7fae0b386098e11b2eb6', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-01 17:50:50', '2022-08-01 17:50:50', '2023-08-01 13:50:50'),
('d54f4c22a359e6acca7babcae3f09ffa6395b5b92548da7f0bbe275b9ba76b357ee546b0c22f17cc', 70, 1, 'access_token', '[]', 0, '2023-02-22 00:12:28', '2023-02-22 00:12:28', '2024-02-21 19:12:28'),
('d561faaae3dcbfc41d3b35c04039cd31ee35f701ad02b171d668df8ab3cceb6f505e96599af5d27c', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-10 17:01:10', '2022-08-10 17:01:10', '2023-08-10 13:01:10'),
('d577f3e76b40c6374255284bb1cb143eb98e045616c1c98816342f55d53730d584f6b54d450244d0', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-09 11:10:28', '2023-02-09 11:10:28', '2024-02-09 06:10:28'),
('d5951e433694e6c1239bad33d71ce47b9be644abc391de70aac41314a284e544372ab9488ba69b96', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-09-05 21:09:13', '2022-09-05 21:09:13', '2023-09-05 17:09:13'),
('d5dc7e29d71643f7125be550bef3ea66c5c2015601c89c001c977ae1819fff2d81bfd206e1a7b67b', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:13:21', '2022-09-30 15:13:21', '2023-09-30 11:13:21'),
('d5dd43e452284132caf5acf91ba5f60910a8163a2b896252e44160a885489b271dc1041c31021a8b', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:19:05', '2022-09-30 15:19:05', '2023-09-30 11:19:05'),
('d5ec84421f757ddeea7559f51466118eafed15e2e2ca63a9317b4edfca84050d6fb7d446003c668e', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 16:34:48', '2022-10-03 16:34:48', '2023-10-03 12:34:48'),
('d649d26864683f1a0f35c4db598451da4a6120ac78c16b328ef08f3bce24ea0971e34a9aae4a4069', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-25 21:16:44', '2022-06-25 21:16:44', '2023-06-25 17:16:44'),
('d674249e381540e4a67826b445f531e5d1e8239a99087b19fce676804b218d13a5799c151ab3233c', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-27 12:23:59', '2022-06-27 12:23:59', '2023-06-27 08:23:59'),
('d6d2dfbb953a49b17062f93606304fab0a3c0c7c39f2eb0a7a761a97a73401f531303b5e41f11ea7', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 16:22:13', '2022-10-03 16:22:13', '2023-10-03 12:22:13'),
('d7473596599262a3603098754a1e9d6bbf76a6fd6b25dbdc0bd5abefa8af0f1dde2f6ecc33211a38', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-29 12:03:32', '2022-09-29 12:03:32', '2023-09-29 08:03:32'),
('d752f93f112592570f25f4ba70606d48ac0d68e4e9dfc7505ea45e46b5523bd73179b474c33df262', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-07 12:33:36', '2022-12-07 12:33:36', '2023-12-07 07:33:36'),
('d755add26d2467c60d96f54512a2ed99bb2ddfaded0f697f334a3f542856632229c07a5617e10e21', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:55:52', '2022-12-13 22:55:52', '2023-12-13 17:55:52'),
('d79109aabc3b6c3b0817e30cc04e8df7bb606a68eba631bb03231a7f2491fa7f7e1963abf22796c3', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-07 21:01:03', '2023-02-07 21:01:03', '2024-02-07 16:01:03'),
('d79f6d4fc0ef2c1feac0f72c89d4775c6a52d30872da304aea76193f68c509378eb379a3de4c4c08', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-17 12:36:51', '2023-02-17 12:36:51', '2024-02-17 07:36:51'),
('d7abdb12c271e8e1d7e3babef0d50d00fddbeeac3e231c0732a80819ec5eb005ca9c13947c694999', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-05 13:38:03', '2022-08-05 13:38:03', '2023-08-05 09:38:03'),
('d7c1364045ac838b67cbbce3c3e777ff6b2bb60d575e17745a8563a30a66eb5414978c5ff2a424e5', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-09 09:50:30', '2023-02-09 09:50:30', '2024-02-09 04:50:30'),
('d7db55e6d67237ef857a94b59e784f09ac1c17aa454352e9e70fda36c30d69f3e2a076f57baf08fd', 89, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-14 16:12:36', '2023-02-14 16:12:36', '2024-02-14 11:12:36'),
('d81f0f57511b8f630fabd39e66e7a671198c93e35985aefb8ced762554918c2065437ad6f843ee0c', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-09 10:58:34', '2023-02-09 10:58:34', '2024-02-09 05:58:34'),
('d82b63d01278baa7e0f78c9807d67201e2239f900b7e49455c324419e7c239a7204b1dca54d50d21', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-01 08:54:37', '2022-08-01 08:54:37', '2023-08-01 04:54:37'),
('d835f6648cf0a7ca2c7265a6521e8c5caf9be58a54b136261f5331e3d3b00ee5de7f1be311251330', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-17 21:38:09', '2023-02-17 21:38:09', '2024-02-17 16:38:09'),
('d84f4b5bd8ebaf0fd041b799cf2f7d502bee292db4c7d727b2c4b8f25e0913eadcc1c9d5e5b7a456', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-06-23 20:32:33', '2022-06-23 20:32:33', '2023-06-23 16:32:33'),
('d882f343658d7423df4ccbd9085dc739655d94383f7e3ab580aba863a13ca3b7110a1abe35b62519', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:37:47', '2022-12-13 22:37:47', '2023-12-13 17:37:47'),
('d91b75dd727aee40d412ab456a9e0aca9e1e4ec217fb2fa74d9479c1e5136e7370ba699f6af663c7', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-03-17 13:09:01', '2023-03-17 13:09:01', '2024-03-17 09:09:01'),
('d9765d9f0f555821493a63986f4536183cce706ba9c70f5e0ce6d351958fae6ab8ec3dbe0e260dc1', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:27:15', '2022-12-13 22:27:15', '2023-12-13 17:27:15'),
('d9784beb5f675fa30b48f4770a3693a938f27716df813e9d7ec09933e6016dfa11d987856ec44fed', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-15 15:35:20', '2023-02-15 15:35:20', '2024-02-15 10:35:20'),
('d9bad427b71765b386ec36c5271101c6836908870124d0363bb5876b1100748c8aad2541bbb488eb', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-06 15:04:49', '2022-12-06 15:04:49', '2023-12-06 10:04:49'),
('d9ce6cf8b946253b1d99c5b528e384302ed38f944a8838638c5024c33566f68d4b7aacb0e13b474b', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-14 17:23:38', '2022-07-14 17:23:38', '2023-07-14 13:23:38'),
('d9f0bc5b0e1f918237d02b0f4dc37fb0b7fee2ac9fd3c48b206546b3c28fc4353c42767a889cfaf3', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-09-29 11:50:38', '2022-09-29 11:50:38', '2023-09-29 07:50:38'),
('da74bce9cb238fd03ca8145faefbbda9e2b5473291277a8de8bb1c260498962e1a03141e5e8800d2', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-28 16:45:02', '2022-11-28 16:45:02', '2023-11-28 11:45:02'),
('da8b2ef785ff1762222d3270b3c753edfc712bd42263525dfc286cd8d3969dff3624977eb600443a', 27, 1, 'access_token', '[]', 0, '2022-09-26 15:25:20', '2022-09-26 15:25:20', '2023-09-26 11:25:20'),
('daed8aefc6bb03a75ebcdd7a85d3ee6f3cd75f44c28e67d7b83b4deb3cec811fd22f4c801d918353', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:06:09', '2023-03-14 21:06:09', '2024-03-14 17:06:09'),
('db2922a717330e217c17a2357621c7610406b746578c4ad4c241549f08b1d8049edcd7abb4d95fe8', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 10:54:16', '2023-02-24 10:54:16', '2024-02-24 05:54:16'),
('db71be1e961f15e5c1376f486af81696e3e068e544798e9d0f6d0b43dd69eaabfb826bbed59e8897', 41, 1, 'access_token', '[]', 1, '2022-10-04 15:46:04', '2022-10-04 15:46:04', '2023-10-04 11:46:04'),
('db8f86cb7f5640eda1af48c6773f1061bf99589e24c4a8fb23de08d5c0de2ec5c761843245aa5e06', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-04 17:40:51', '2022-08-04 17:40:51', '2023-08-04 13:40:51'),
('dbab0464e8a743499b9418c2c67ad9bb58b90e93a44a92a2b241a5b8f14f77f126f5b9205f7040cd', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-17 22:44:46', '2023-01-17 22:44:46', '2024-01-17 17:44:46'),
('dbce168c7dc8ca90fdc9012f0c178f0217151f44b8783e80a406eb1d6b1553c1fb6a20acfecc5dfe', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 17:32:05', '2022-10-03 17:32:05', '2023-10-03 13:32:05'),
('dbf970742ab4bae9fb91e51cedd7211c0fa0f0ce5da46ea8a759f2fe5373141ba5b6462df16985d8', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-15 15:29:48', '2023-02-15 15:29:48', '2024-02-15 10:29:48'),
('dbfe46c17dff8e52aaa8954788af583b9bd2b5a445cde7e5aa068cb4343b33dd037ffc6b9b5ed160', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-28 12:01:50', '2022-11-28 12:01:50', '2023-11-28 07:01:50'),
('dc08ac99f67f1ccca604304cdc8e7168a6808b360838820e2465a4d6a980c992c47a2fad545186f0', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-12 06:25:24', '2022-07-12 06:25:24', '2023-07-12 02:25:24'),
('dc23715b80673c5d634185043cfc0c9da5e61b4163cc4bf489cf711497a282de6edfe36434d2f308', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:06:12', '2022-10-03 12:06:12', '2023-10-03 08:06:12'),
('dc3edea0dc06f16c46b8bb2b972298af25adab7067145270fb7e14ba459437931928d9773fda6d2f', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-08-05 14:32:50', '2022-08-05 14:32:50', '2023-08-05 10:32:50'),
('dc3f8958d15056ad11eb7eeafa8c35aff6a0f244279c001d2720ac4704fa32b5d774bd77c4f064e0', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-09-26 13:57:10', '2022-09-26 13:57:10', '2023-09-26 09:57:10'),
('dc5bfe536d3931e90b90ee6e4a5bea4a3e46971f5b2601138b8018dff3b9a462baa891639ae1933a', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-01 18:17:06', '2022-12-01 18:17:06', '2023-12-01 13:17:06'),
('dc6780d6a4618218f6ab163267cacafd2a72ef0873fe33529bd46d27c582ec04b3dd8d875a13425d', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 20:39:59', '2022-09-30 20:39:59', '2023-09-30 16:39:59'),
('dc794bb36be4cb22d918595cff3eb0942c798dfdb8bfb1f52ddae9b72d3af258145a032179b4ed07', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-25 21:07:39', '2022-06-25 21:07:39', '2023-06-25 17:07:39'),
('dca74ab730dbce0d8725ca0f6acac2240e75a9c1e3382284e8b9a9c23fb5bbfb963a97cfc199c481', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-03 16:17:32', '2022-08-03 16:17:32', '2023-08-03 12:17:32'),
('dcc8e215111dab35d868f5f21df579ed1f4d9c15ba4bf74422457524cf1dcea4dcdf6a0f71127d54', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-15 16:40:01', '2022-11-15 16:40:01', '2023-11-15 11:40:01'),
('dcdd35394c573b52fb52f9a39d33342dacea346bdac3bf16af74aea73d81cb48d20e646b3a6b0b15', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:16:48', '2022-09-30 15:16:48', '2023-09-30 11:16:48'),
('dd3fdbf77e4faade655e0bc4cdb33dabd44554582482d9f21421810f4c34b0b5da256b95e7218270', 27, 1, 'access_token', '[]', 1, '2022-09-28 12:04:54', '2022-09-28 12:04:54', '2023-09-28 08:04:54'),
('dd52f41cb63a6dc7189e59760a38c3ce09ad59a1a947a33349d0f0829547b8e0e8d17098d7523601', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:21:19', '2022-12-13 22:21:19', '2023-12-13 17:21:19'),
('dd6bc48c34459df36229287419249137432ec20b5ae81da6fcff0e465a6329696d3ef427170dcddf', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-03 08:39:16', '2022-08-03 08:39:16', '2023-08-03 04:39:16'),
('dd9fd0566bf2a05440776a725e1586f3be8ee09bee823a09af81c15b87ac7ef0598ab1d8280f6964', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-02 14:19:34', '2022-08-02 14:19:34', '2023-08-02 10:19:34'),
('ddbcd4bef629074704f85fd48f0975af4b7996d265172f4aa50b4fda6c4ed78f05348189e07ae2ab', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-05 07:22:38', '2022-10-05 07:22:38', '2023-10-05 03:22:38'),
('dde8c0943048ec28ec189382e001d28c3e957aae62bc95d282cf49eada23d90d6d3d8d61945fec98', 41, 1, 'access_token', '[]', 0, '2022-10-04 09:14:42', '2022-10-04 09:14:42', '2023-10-04 05:14:42'),
('de5b3079b0f2590573209d9239d66e3347590ce00e046b4e19fa2fba693a1dc90418e36a0ac40538', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 10:00:42', '2022-09-30 10:00:42', '2023-09-30 06:00:42'),
('de6579b29df0ffd42ff0fbbdd6b8e93acd3ed3e02a18ef0f5a49dae2ad55acd5806e4949e2a8a41c', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-11-14 11:58:45', '2022-11-14 11:58:45', '2023-11-14 06:58:45'),
('de7efe7440f12d1b2ae42370a604f50029d13b1688e4745bd39a453039e498337dc56f0c4d5bc712', 86, 1, 'access_token', '[]', 0, '2023-02-17 17:13:58', '2023-02-17 17:13:58', '2024-02-17 12:13:58'),
('debccb91ad01f9e6b12eb49f54f245475645f268b0fbbf8523be0c6e837201b9c920cda3b7e300c1', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-07 22:16:15', '2023-03-07 22:16:15', '2024-03-07 17:16:15'),
('defaa95b57238d96d90575a909c77eb58fb31fa2cf678809e9f72563e5e39f6bd75c4a7da5daabd5', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-14 20:56:50', '2023-03-14 20:56:50', '2024-03-14 16:56:50'),
('df15a07e8dbe857eeef7e4a9d9f3a3f7e4eb89f99e27b669f3316754ab0f6673f7537d75af1468d4', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:13:45', '2022-12-13 22:13:45', '2023-12-13 17:13:45'),
('df266715dbdac65f850f83456dd0b697db1ea3d7f064e47da6de6a10095258d6a2fc884291d60016', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-24 15:40:09', '2022-06-24 15:40:09', '2023-06-24 11:40:09'),
('df46a4e541e56378dae2fb04f3a855b6897de900ad4df048404a64be5f0dcf5b92797c46e530349e', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:59:14', '2022-10-03 11:59:14', '2023-10-03 07:59:14'),
('df9a1b9b301477072c64a9831e3e8dd9414032ad531c559aa9decd36f1e638a90bd1cafb6f6dcac0', 14, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-16 11:38:39', '2023-03-16 11:38:39', '2024-03-16 07:38:39'),
('df9f16eaeea136089deab4f5c808c7d06255dcf60d91fd137edc6c8946b6ccf33def3f8bb1981f50', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-05 12:23:14', '2022-08-05 12:23:14', '2023-08-05 08:23:14'),
('e040222278d1c5cc3011ef00c2598262ad4f8a70a0e7f4fc69c39b5836f8661d8a9bd8ec220caf04', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-27 11:39:28', '2022-08-27 11:39:28', '2023-08-27 07:39:28'),
('e0478d85b160123ace84cea93102cce9c6e7c7d3b09f7afde189492b88202ab5b53c418794bb58e5', 27, 1, 'access_token', '[]', 0, '2022-09-28 12:05:19', '2022-09-28 12:05:19', '2023-09-28 08:05:19'),
('e0648cd771aa98f47c819b22e7514dba1de9236b6f09d181b4c01db9233a781ac2ee9cc8048a021b', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:15:50', '2022-11-13 22:15:50', '2023-11-13 17:15:50'),
('e09691d909696bc4387d9634600333b889d4d6e53b6288093251c623698c438a54a032ad8141c6b9', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-25 22:46:45', '2022-07-25 22:46:45', '2023-07-25 18:46:45'),
('e0a0763d735741b293b596986c4ba532d25abfba2ea555250183dfdbe685908f6d0af620a5ce5233', 36, 1, 'access_token', '[]', 0, '2022-09-14 17:50:12', '2022-09-14 17:50:12', '2023-09-14 13:50:12'),
('e0ec056421a71c3f34e19f8edcf1e7e0fb947c19b99abde4e75718445e2c619fb0743ec6e019f838', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:15:57', '2022-11-13 22:15:57', '2023-11-13 17:15:57'),
('e10a53c65bc5ddf60cd9bc155ccd4cc7146d287250cf9e317695eba1f2dbcabbe1f82e237cfe9c78', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-01 17:50:53', '2022-08-01 17:50:53', '2023-08-01 13:50:53'),
('e10c9f21faffffd2d4a2fac8df876e4e2a719effa5d3d1956767e4f449de78f284b08cebccf2bf79', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:04:35', '2022-10-03 11:04:35', '2023-10-03 07:04:35'),
('e11a1cafe8bf3c567fba38274a848905c6c94868e65be22cd616c1757d2c0365ea873d6910bb406a', 18, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-28 23:54:41', '2022-06-28 23:54:41', '2023-06-28 19:54:41'),
('e135a599c936e06e527a845abf43a109fcbde31bf2675f7186a2d74fa5d1a29f7e176c095de9ba03', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-20 18:34:51', '2022-11-20 18:34:51', '2023-11-20 13:34:51'),
('e1f80501cefdd7eec3427153f56932e948c788670ab53568440f4fe6f59760ac579921416b42d884', 27, 1, 'access_token', '[]', 0, '2022-09-27 18:21:34', '2022-09-27 18:21:34', '2023-09-27 14:21:34'),
('e23ff8fb3f0e9c954f2afbfeb5a33a551e9922f253de901a1a03581d5484b751cb71ac232860ff10', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-29 14:54:35', '2023-03-29 14:54:35', '2024-03-29 10:54:35'),
('e262dbc68c12d37d773ea329d8f4bf41adf4a1f98c974bb895d6013c86c7532dc6c261bc47964ec4', 91, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-16 15:33:46', '2023-03-16 15:33:46', '2024-03-16 11:33:46'),
('e28821e644aed0b4bf0fab1de1168919bfe047b97fd1e52e22e2e714398f1089a594a2e21fe45d17', 27, 1, 'access_token', '[]', 0, '2022-09-27 18:33:03', '2022-09-27 18:33:03', '2023-09-27 14:33:03'),
('e2bf707841ee40b85facaf5598ad42c51c01ea5c5823147f5ff2a62e2b5cde5dd49f031e122d3c32', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-15 15:39:19', '2023-02-15 15:39:19', '2024-02-15 10:39:19'),
('e32b38814ee7de0100b489770b24daf364dfaf5d69896850af1cddac12128a43c94ee32215d4db5f', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:51:13', '2022-09-28 11:51:13', '2023-09-28 07:51:13'),
('e336c99e6f8f53acb2b33c3c94f97ade4a00a4e27af7039ec5f7e116a57ff056558c9e073f9e3734', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:07:03', '2023-03-14 21:07:03', '2024-03-14 17:07:03'),
('e37ff5872582d057d8dda3219003df762f2043f8061c0592b10509fc0bc8c9da771477b6ec43dfe7', 27, 1, 'access_token', '[]', 0, '2022-09-27 16:13:51', '2022-09-27 16:13:51', '2023-09-27 12:13:51'),
('e3b93bc2fa50239c43878c020de5be13d3297863cd12eac5d5051839da65d9d2be8a8fb5a795ed71', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-03-08 15:13:02', '2023-03-08 15:13:02', '2024-03-08 10:13:02'),
('e3fecd3cf3896549e9d24029279c7533183329a413ac64b43982b5470547a40777d0d5fbc1f0fbb5', 27, 1, 'access_token', '[]', 1, '2022-09-28 11:02:27', '2022-09-28 11:02:27', '2023-09-28 07:02:27'),
('e408d5846555572ba163a66966653038825c39556005a7e5334e1c0a3ac2db7f20d71e201602c469', 36, 1, 'access_token', '[]', 0, '2022-09-14 11:00:55', '2022-09-14 11:00:55', '2023-09-14 07:00:55'),
('e40da290d9038712a9dd021c5b9e6ecbbf3f9299f353780b770b1151259a43dd4c56d37c5ee1ed4f', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-05-06 16:36:23', '2022-05-06 16:36:23', '2023-05-06 12:36:23'),
('e42daa1cc56f7c4d661dc69ef7488674687a461ef4e60b423156b3d8928ccc3c5709729fea39c1cf', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-13 22:49:03', '2022-12-13 22:49:03', '2023-12-13 17:49:03'),
('e46169ac0535db0b457f35798605e757435f0a8a90dad97265718843729388e0de9c8b9a682ca9a3', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-18 07:52:21', '2023-03-18 07:52:21', '2024-03-18 03:52:21'),
('e523b5b0f44753f7b5a3aec4c1df8c5b7860bedb47a6abacaadeb69caecd9c2d1b23388a9b49bdcb', 27, 1, 'access_token', '[]', 0, '2022-09-27 14:31:27', '2022-09-27 14:31:27', '2023-09-27 10:31:27'),
('e5396072b163f851b22c4eadb7a3acec5232aad57ae19bc961e505a563f2c49d089921dce1c3d779', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-10-03 11:51:32', '2022-10-03 11:51:32', '2023-10-03 07:51:32'),
('e5479b8999f4f3ca0394f33f7cea1bf8c1121454104640b09eb49f02e96e5c64bcea0b5d1723c371', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-07-29 11:07:30', '2022-07-29 11:07:30', '2023-07-29 07:07:30'),
('e577b599c9738f829ff10da196a145a44bb4c4a8a8a8a515211c15dcde8a5c337c2acbd272865884', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-09-02 16:54:48', '2022-09-02 16:54:48', '2023-09-02 12:54:48'),
('e5978ce86601609de0009accf8a1a2e88ee7e3de77d56fdb97b533766c424f583dc7bd45dba8b8de', 6, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-17 18:21:27', '2023-02-17 18:21:27', '2024-02-17 13:21:27'),
('e5ae4d05d4836e442356227dfb96ce2b88533bfdd78528a80ab0c8678dee1de411757f8db56c3802', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-16 14:20:01', '2023-01-16 14:20:01', '2024-01-16 09:20:01'),
('e5bc518b4bed215e9d329da1736b691ef425381b815dc676a170e099a37b32a93491df82edd714be', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-06-25 21:16:16', '2022-06-25 21:16:16', '2023-06-25 17:16:16'),
('e625cbebef240ac814bcbd0aa744d3359a9163df569fe12259de1a3f855e7fc6f0e7fd24d56aa4a6', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-04 22:21:04', '2023-03-04 22:21:04', '2024-03-04 17:21:04'),
('e63f95c0f85178c0541021dc0a3b6cf308a502167dab0fee7c98e7dec1fe634040e1a2c4df7ece95', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:54:56', '2022-09-28 11:54:56', '2023-09-28 07:54:56'),
('e689f8403ed00587c694cc8a94d7223a00275f990d833922ed803d1d609f8d37ed9e2830a45b298b', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-03 14:42:43', '2023-02-03 14:42:43', '2024-02-03 09:42:43'),
('e6be26e3384a8f40b83f365e967091c75b018e284dc4cd09dfc1ba317bd701cfb4802a025df0c16f', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-05 14:27:43', '2022-08-05 14:27:43', '2023-08-05 10:27:43'),
('e6ce0683448f67db408eceab79fb01380ec4eeeb67af00317767dd0c6108190ed638d488972f1825', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-18 20:24:25', '2023-01-18 20:24:25', '2024-01-18 15:24:25'),
('e6f756cfc9f3d96d476b33ed80c64ad881fb6d11cf12f899416eb4748c4949ebfc325fe2804b0d88', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-03 14:42:47', '2023-02-03 14:42:47', '2024-02-03 09:42:47'),
('e739cf6d16c5839128efed1ea1193570ad63066b1106aa38d53075db4ffb7d6949d63376b60eba3a', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-03 14:20:57', '2022-08-03 14:20:57', '2023-08-03 10:20:57'),
('e762a21ff8a5d859b1cd86210d74cdd6f38dc70f4455a3659eb9ed87f84b4d47c61265b0ec7d5016', 68, 1, 'access_token', '[]', 0, '2022-11-13 21:43:43', '2022-11-13 21:43:43', '2023-11-13 16:43:43'),
('e7647e38863c54107f320f95c679c11a96d123feab2d9c336a0e830cd5c5f3aafc53884a3c828b52', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-09 12:26:17', '2023-02-09 12:26:17', '2024-02-09 07:26:17'),
('e78561c94ae117209aa3bf83a10bb388d0637a1380b47a60be015c0ce79e1c566b6d669e3d85ba7b', 27, 1, 'access_token', '[]', 0, '2022-09-27 11:24:47', '2022-09-27 11:24:47', '2023-09-27 07:24:47'),
('e7cc6c1f5a12f55857cffa20b82877260dc1bf30ffdc22b2c0ead8368ef603f233f18566618235aa', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-18 20:19:45', '2023-01-18 20:19:45', '2024-01-18 15:19:45'),
('e7d6f7fd5b269666e060b23f2987d8495367b3d26e1f2d73ac9b2b232f6865cc00fedea477941854', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 12:05:45', '2022-10-03 12:05:45', '2023-10-03 08:05:45'),
('e7d837c760f99aa575c0cef804c0f68a25c1c45de7d3bdc84475f4637c31e262afe5bdb9e666a397', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:09:10', '2023-03-14 21:09:10', '2024-03-14 17:09:10'),
('e7f14928855c7937a20d32f6093c07e0ba5350618a73e88028589a187faf9864aa9a9b132f5c46b6', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-08-04 08:51:14', '2022-08-04 08:51:14', '2023-08-04 04:51:14'),
('e807b529aba2b0ea6c08b2c4138d56f52b54b6a128c5b2ea9539aac4b94b1b5be855d7f93ad10072', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-09-26 13:37:07', '2022-09-26 13:37:07', '2023-09-26 09:37:07'),
('e8165fc0351d5e07c5653de3e53082d6e59a6047db062a417790f424bcd2e973c1c097d866bf79b8', 36, 1, 'access_token', '[]', 0, '2022-09-14 16:03:26', '2022-09-14 16:03:26', '2023-09-14 12:03:26'),
('e81c68e4782fddb70471ba7a1c181421539cf23ef72d28c28955331168228c06fca2ec761dc94643', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-08 11:51:48', '2022-12-08 11:51:48', '2023-12-08 06:51:48');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('e8269c71b6b3d2512d5e5cd3905efb437bad1cf89c3b555f00808680e3a87ef86d632c7b2bf3d4ea', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-20 17:41:12', '2022-08-20 17:41:12', '2023-08-20 13:41:12'),
('e848b58925da4301a4ae0917f1061a16312f8ad89357f8843a2f1303c10410b44b2c1a95187cb5c8', 68, 1, 'access_token', '[]', 0, '2022-11-13 21:43:38', '2022-11-13 21:43:38', '2023-11-13 16:43:38'),
('e91d69a88eb5445d4a43369c49c20a4a94a99b7ebe8d5eca7bad5244a87094b4d3924c74945e82db', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:32:44', '2022-12-13 22:32:44', '2023-12-13 17:32:44'),
('ea403bcc422a808b5a6bf3ae1d9e26eea82b8d78d8ef94b3477f7375da6c4f0c94906ecf874aff9a', 36, 1, 'access_token', '[]', 0, '2022-09-14 08:57:12', '2022-09-14 08:57:12', '2023-09-14 04:57:12'),
('ea412acecac7704b390c756af511feedccd4683fd5f72fa60bd970d4646cc10e9875c9682ac7e423', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-10-03 11:08:20', '2022-10-03 11:08:20', '2023-10-03 07:08:20'),
('ea48adbe382cb43df318d4a825da679561d8b1092f9a8c588712fd72bbb6da7924602b6454918ad6', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:47:31', '2022-09-28 11:47:31', '2023-09-28 07:47:31'),
('ea58aa64021bb9ef1168c3b4c6c5d23bdd89108858020c3fbd1c5310092152bc3e8adaa3c625d9c6', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-17 09:54:50', '2022-08-17 09:54:50', '2023-08-17 05:54:50'),
('ea8add31135abfa389dd4c936697acfa6dfd6c31386dc61d80b9427466beb860eff2edb855986fa1', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-16 11:41:45', '2023-03-16 11:41:45', '2024-03-16 07:41:45'),
('eaa4fe701a654c9548e682fbf32f66c6acf0c39eb3c47baa009db99936ac3145f1aa28e822bb7de4', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-03 19:01:12', '2022-08-03 19:01:12', '2023-08-03 15:01:12'),
('eb0434795d0acc87c93ac0b55bdf912c2eccd33d8e1111bff741c28c59fc8e48efd0ea5f199b30cf', 89, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-14 22:40:31', '2023-02-14 22:40:31', '2024-02-14 17:40:31'),
('eb2cb294cefe44f26915d3bca38b94329979cc5ae9b60d0498df4cec92ce5a2081913ae3c16d7cf6', 27, 1, 'access_token', '[]', 0, '2022-09-26 16:29:50', '2022-09-26 16:29:50', '2023-09-26 12:29:50'),
('eb50c23dc8e0e62d8468e4ac8f39143998e5de72287c4bb23540d9f94eea3dc29fcf9a9b55c86875', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-15 16:41:07', '2022-11-15 16:41:07', '2023-11-15 11:41:07'),
('ebb6ffb6235e728fcf3a003c7e282262cde249a97929824f3aa2896cd0ba31bd266205bba58529a6', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:57:33', '2022-10-03 11:57:33', '2023-10-03 07:57:33'),
('ebfa79fab784b3e8cf3bc01efcd94716eba27d63cf781c292e69ffc7eece3dcbe83b2a9f2e98e377', 27, 1, 'access_token', '[]', 0, '2022-09-26 17:09:43', '2022-09-26 17:09:43', '2023-09-26 13:09:43'),
('ec3528b78042dca90ba1cbeab9c210467fab4a12e1fdf4b112a07760ac0654660b23321794de75de', 27, 1, 'access_token', '[]', 0, '2022-09-26 15:25:21', '2022-09-26 15:25:21', '2023-09-26 11:25:21'),
('ec58f31ab12414bd969f6b4a265c7663e8918c2a77639f3c25840602eacfd28d24a8490e25d068a5', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-20 22:51:09', '2023-02-20 22:51:09', '2024-02-20 17:51:09'),
('ec9c3fef8b03cbe0167481724f8e6f7ee91460cabb044df2be3604465f065d7f4193f167f4f2df17', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-08-01 15:52:51', '2022-08-01 15:52:51', '2023-08-01 11:52:51'),
('ed680d609c9059da767b1977ccd16122f264f48441ddbc13aa957d80cdb5bd83b3de16eb76b4585d', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:34:13', '2022-12-13 23:34:13', '2023-12-13 18:34:13'),
('ed8ceba4fd813befbc9a0cf31deaeede1503bfc70b51e656132b40fb275a2247524db91c0b3f79f8', 27, 1, 'access_token', '[]', 1, '2022-09-28 10:32:56', '2022-09-28 10:32:56', '2023-09-28 06:32:56'),
('edf7866453306bd103fe83687e6b2d60c2dca2a0cf19155cfb82f4edead96b58d29fd165d546324f', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-22 15:31:48', '2022-09-22 15:31:48', '2023-09-22 11:31:48'),
('ee376c1ee62ab4032077a8e4ea70fa76747480179e649bb2aa1fb11b888124553e4e15f311c2aeb9', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-14 08:18:22', '2022-07-14 08:18:22', '2023-07-14 04:18:22'),
('ee703cb79534e3d9d9567e8d186856c3673ce886a324ab0cf0fbc34a2a23f66ca42d820a27b80b66', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-02-21 13:35:56', '2023-02-21 13:35:56', '2024-02-21 08:35:56'),
('ee8a1981d831a9f33f5c6a4ae8ac23462afb4c18fa0b9fc816aaf506f783138bbf35c00fb852703c', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-07 14:33:47', '2023-02-07 14:33:47', '2024-02-07 09:33:47'),
('ee98003bb423764c29f230cce2afdc579a5dc60700ca2e425c846b060c795d0ce68d202cf17b4b85', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-08-03 14:38:00', '2022-08-03 14:38:00', '2023-08-03 10:38:00'),
('eef2edffd3e3fd12c31fe9fa9dd9bc39424e77f5e85b818bd7ff9c16d6f5a44bf133b700a61748b4', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-24 10:31:24', '2023-02-24 10:31:24', '2024-02-24 05:31:24'),
('eef98325157be6cb340423ee41f6c0d16e1c5c28c0afa52993578943347940be577d84c7cd7d99d2', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-12-17 22:36:36', '2022-12-17 22:36:36', '2023-12-17 17:36:36'),
('ef101ae3966432ec5e25acbc5a2c0602c830603374fcbb5b6a13d12ac43df8ee9afa652c4a64dd3b', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:11:24', '2022-10-03 11:11:24', '2023-10-03 07:11:24'),
('ef1b93de1a36d0af68458267cdb861bec05471991a1795045c2027e21543ffcfcf230cd5372337d8', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-20 20:43:22', '2022-11-20 20:43:22', '2023-11-20 15:43:22'),
('ef37ccd012b7626f223019401b5b1c46b89340a3a3d8b0e59c2a1196b4cc5a2a4b29baf234000949', 36, 1, 'access_token', '[]', 1, '2022-09-14 19:21:38', '2022-09-14 19:21:38', '2023-09-14 15:21:38'),
('ef52ab5e2321a80a5e837b35b4b76d9293510631d54086ecc63343a57cad7026555a079d843ebcbb', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 09:47:07', '2022-10-03 09:47:07', '2023-10-03 05:47:07'),
('ef57ea6ccf9a62ba114b1f26c5e40a1267841e54773d1271b0eaa175bee0b7cc103b9db3fef2c3cf', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-20 17:47:07', '2023-01-20 17:47:07', '2024-01-20 12:47:07'),
('ef777a1f8f9981db0d1dd49c4c6afba65303cff3050cb35306a1ea19469a614ae61852ab2c56e7ba', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-03 13:58:49', '2022-08-03 13:58:49', '2023-08-03 09:58:49'),
('ef7ad788d2ee29ce75be1f58466fa5c985feede21e1474da47e2671c87c4197cf5c71376c981355c', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-12 14:47:56', '2022-07-12 14:47:56', '2023-07-12 10:47:56'),
('ef8ed7c4bd197ac8fcadc4b81849d434e939cc8e42eaf42ad54a4c9f8354abb0d4d465b2d0f2f993', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-02 09:28:54', '2022-08-02 09:28:54', '2023-08-02 05:28:54'),
('ef903a3a310fb46fea2f8c0fb3918c4305bd66fd704417e22825d02d229bdbe4278f6787a3b1a6d5', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-07 15:13:02', '2022-10-07 15:13:02', '2023-10-07 11:13:02'),
('f0070175ab7d7d69aac442c4e0cec69bbd7b2ebe454aa943f3895e0f7cfbb802c3e160166ca124b0', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-29 14:56:12', '2023-03-29 14:56:12', '2024-03-29 10:56:12'),
('f00f370adb38600b6a18f259d2c8e74f34d4aceacc7efd4178b750c52b82d801e2114aecaf10e221', 92, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-10 22:06:41', '2023-03-10 22:06:41', '2024-03-10 17:06:41'),
('f020ad23255536c82883982b7f42abaea76168f67fa8b184e2ff09faeddd2327941b437d3b9ef637', 27, 1, 'access_token', '[]', 0, '2022-09-27 09:34:49', '2022-09-27 09:34:49', '2023-09-27 05:34:49'),
('f029727c7bc4f8c07c23ff1aa74fcc19c47f943c9458c4fd4d9911173ab0c77f1f4894c0c817ef8a', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-21 22:44:37', '2022-07-21 22:44:37', '2023-07-21 18:44:37'),
('f059e2fbc561fa9d1b4ece181fa2981068e0d4017253ed9a5f6823d0c49866ef095886d41d012b25', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 09:47:14', '2022-10-03 09:47:14', '2023-10-03 05:47:14'),
('f06c9aa93bfc320daeb201ce125ae064c1998840b3aea144b35c46500bc58356f9469ee059bbe84a', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-06 10:43:15', '2023-01-06 10:43:15', '2024-01-06 05:43:15'),
('f097012dd3b51673ce2af93ab47624aff06751ce45bb2e588548b4863c7fd09aa2fe50ec99c3b8f6', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-10-03 11:06:19', '2022-10-03 11:06:19', '2023-10-03 07:06:19'),
('f09ebfcac90b9b8851cab51531c39087661d7983c3825de0bf4bb57ce120989f59087f5654adcc19', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-22 15:44:02', '2022-09-22 15:44:02', '2023-09-22 11:44:02'),
('f0b3edd1f69a89a51b4883315d36fc4f4376bb75724c53ef41224998ab7784cdf4ab175df3d32a35', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-15 16:39:01', '2022-11-15 16:39:01', '2023-11-15 11:39:01'),
('f0d0d7e48cb217f6fda9a63d4c86b76c67a9db4175037b88bb1ade66db8b1d81bf98def5f4e8e778', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-06-24 15:18:29', '2022-06-24 15:18:29', '2023-06-24 11:18:29'),
('f0d8e54847ef92cfbc9080153787d923acbd4254a6d82c95b92c83cb49de8162219d3bdb99040c49', 6, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-17 21:12:09', '2023-02-17 21:12:09', '2024-02-17 16:12:09'),
('f0f52a19949e91027614e7e9502c1aa8080ce7fe24cd4d3537e7e665f570467b0924afa490a3367d', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-03-04 22:47:36', '2022-03-04 22:47:36', '2023-03-04 17:47:36'),
('f104170da23103c0000416263ae4aeec4bba93b5061d2d209f6678c9c698d552a2f759c67fbf3b4f', 27, 1, 'access_token', '[]', 0, '2022-09-28 12:12:08', '2022-09-28 12:12:08', '2023-09-28 08:12:08'),
('f139cc161cfdab0d16a06ba6ff9e6b79bc358d7708074faa6a3b23d5ee6ae181f69a3a0b6736c881', 27, 1, 'access_token', '[]', 0, '2022-09-28 10:57:01', '2022-09-28 10:57:01', '2023-09-28 06:57:01'),
('f14ef28f585857331dd1a7cc13cb9d1d213b41b149155b627a375e37458e1e0cf9679a7d09029eaf', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-30 16:48:17', '2022-06-30 16:48:17', '2023-06-30 12:48:17'),
('f16eb105b602fe0dd969f989a75acf3e57634ae85c71f1186bc43835706a415cbe0898f4019cf3aa', 89, 1, 'access_token', '[]', 0, '2023-02-13 09:21:45', '2023-02-13 09:21:45', '2024-02-13 04:21:45'),
('f183696a5d4711dcd40c95b275efe481d5736db9e716184286afa2a8f588f53d8fd7406fb0fa310d', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:45:17', '2022-12-13 22:45:17', '2023-12-13 17:45:17'),
('f189ace54608a70b6e4d49c4ed3fd76e5ae17c0ea95d06e20eaa076396aba7a333a1fc30fce7b67e', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 1, '2023-02-09 10:49:23', '2023-02-09 10:49:23', '2024-02-09 05:49:23'),
('f1bc92bb11105257dac8317f354ad9373443c3a7c98beccfbfeca6774fc87691ac5faf31d89c42dc', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-09-26 13:23:07', '2022-09-26 13:23:07', '2023-09-26 09:23:07'),
('f1e45b6d4a39ae18c13d5ff783c7a02b99e7d9b9204b485d3063f65e845a43d9811dcad3f04d48c3', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:55:04', '2022-09-28 11:55:04', '2023-09-28 07:55:04'),
('f1f650be2e89d56023f00ef745f39d4b9620aadbb1e56a66949cb882aa5f6d8b368836834591ed26', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-03 09:57:02', '2022-08-03 09:57:02', '2023-08-03 05:57:02'),
('f212c524a03f5f777d987e767472b8cbc75b38663f293b75b05af528b2136dec9680a763af611eda', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-15 14:57:22', '2022-12-15 14:57:22', '2023-12-15 09:57:22'),
('f2184e79da578e5a57114c40335437970a308a9067d7d2f2ff385e07ff74928bb9a9b7e42fc470a1', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-15 18:34:14', '2022-12-15 18:34:14', '2023-12-15 13:34:14'),
('f252a5372190825eb064463f8305a3c14e2b765d9656c297f523cdc314c37d82472a06fa4f17405f', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:38:53', '2022-09-27 13:38:53', '2023-09-27 09:38:53'),
('f25b393bfa6995952aae681fd6f7930820a420b3fb02e45cb61aa4b2a957a3ec8ccbf3e51a4ce298', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-05 11:38:06', '2022-08-05 11:38:06', '2023-08-05 07:38:06'),
('f2601b82aa55bd96197c95613d3b544cef746d820e2e9f4f11e7a3c6a3e714c2c6c4447d17037cc5', 27, 1, 'access_token', '[]', 0, '2022-09-27 09:34:56', '2022-09-27 09:34:56', '2023-09-27 05:34:56'),
('f28d68bb0aa8711c3c0936f9af2015ca9989edca0f01a5596ac02a8d5d38a2d9a233b211d5593a64', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-09 11:14:45', '2023-02-09 11:14:45', '2024-02-09 06:14:45'),
('f2c007fcbc0df8cdf52d119eceeba46f0ba56e46292a00be070c2adbf40fc664a9c005bc96eeb110', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:10:09', '2022-12-13 23:10:09', '2023-12-13 18:10:09'),
('f2d685ae1938aed538885a0beba76ddc9675eed989c4edf753655e74e3811c6454b9c4d12b92364c', 53, 1, 'access_token', '[]', 0, '2023-02-22 00:21:14', '2023-02-22 00:21:14', '2024-02-21 19:21:14'),
('f2feb44aa2a559d543cdf3c3af9857872bc3bc8ae23471d044a9736fdb6f7d3f57e948ac44e3cb5a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:26:21', '2022-09-30 15:26:21', '2023-09-30 11:26:21'),
('f31805af974f2979467557a047819783cc77dce12e14dffeae3956197c476dff4999bd18a7287a7e', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-09 11:08:17', '2023-02-09 11:08:17', '2024-02-09 06:08:17'),
('f3199832fd3b5838a11815f467616976442acc956c5f9b381f2a423ad6b013b1803c287328ba5876', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-16 11:43:21', '2023-03-16 11:43:21', '2024-03-16 07:43:21'),
('f35ac27885e2038e74a8b85c0be445596b3b939ad1b5a5afeec68d18d67138822e7ce99581b46bf8', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-04 15:53:07', '2022-10-04 15:53:07', '2023-10-04 11:53:07'),
('f36e33b3fa7cdc47bcd477fd56f201cc72aae256a00e5d9ac773cd75ea9ccdb4bb30e3e2c40c610b', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 16:18:49', '2022-10-03 16:18:49', '2023-10-03 12:18:49'),
('f3a921c48f91288dee52bd10b8dd6b22e77eb740c4fecf980f39c4a8e35db4f0b91fc85ee6e50bab', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:11:03', '2023-03-14 21:11:03', '2024-03-14 17:11:03'),
('f3eabbbddc487cc5cede659d39373b81684e1158dc69ced9ed30e504b2619661840a8881744694b2', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-15 16:41:40', '2022-11-15 16:41:40', '2023-11-15 11:41:40'),
('f3f1acf41f1f607e945537d21619fc7108d51bfb398a6f9c1b8e7c42206b3b5eb38773550a2eb358', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-07 09:24:44', '2022-11-07 09:24:44', '2023-11-07 04:24:44'),
('f40fb1a3de16b9fab6a54169bf5adcb062f2fe8dd2c0eced89620fb151ef5c521a79f0b8644a4499', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-24 10:47:14', '2023-02-24 10:47:14', '2024-02-24 05:47:14'),
('f41295e8be4181cfdeb96ddeb5d5626164219d3066d50290174eb9f51a5277b3ec68e8f6c7e09df7', 27, 1, 'access_token', '[]', 1, '2022-09-27 18:32:10', '2022-09-27 18:32:10', '2023-09-27 14:32:10'),
('f447d844a1b344534e08f85569d65f2a4d06a9da5dabf78d2332ec12365a7310292e8190580f99f1', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-10 22:33:05', '2023-03-10 22:33:05', '2024-03-10 17:33:05'),
('f451458831f5433eec69799fc1de25018cc84d9f1e93ad46865df01819f5d10d0fefb08c24c7aa28', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-24 11:41:50', '2022-07-24 11:41:50', '2023-07-24 07:41:50'),
('f458e9d28026b5d7fe39beed0e7e45061e4a995275a8912b2ed176ac2f5a4ccf4182a3b17cc89bdb', 27, 1, 'access_token', '[]', 0, '2022-09-28 11:39:14', '2022-09-28 11:39:14', '2023-09-28 07:39:14'),
('f4b184474e1941f91a41876cf9cb2a4dc4bc1aea5d5fa0b5937a5f8841f55f1871840a194ce0d04d', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-13 15:38:52', '2023-03-13 15:38:52', '2024-03-13 11:38:52'),
('f4c54e5482e735268f349506be0662752b0cfd11f5de018fcfa72239802a3acb8139238db9227c65', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-04 12:44:12', '2023-01-04 12:44:12', '2024-01-04 07:44:12'),
('f4c5b9bca71214d6ffc625120042ba31fc488903cbdad09f3224cb55efdb63621de458d13afa9d6f', 27, 1, 'access_token', '[]', 0, '2022-09-28 12:12:03', '2022-09-28 12:12:03', '2023-09-28 08:12:03'),
('f54d0c296c4f79130171b3ec1e894259501c49f7847ee6828eaf5ffb92ad4904132697b53fc20a99', 68, 1, 'access_token', '[]', 0, '2022-11-13 22:22:12', '2022-11-13 22:22:12', '2023-11-13 17:22:12'),
('f579f040eb70dd19f330d8bacae29069201c5e478cdd95900ed7120d3fbdd021249a4b9eb5903e17', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 20:38:12', '2023-03-14 20:38:12', '2024-03-14 16:38:12'),
('f62c422ea9337889dd35c4a33d3822c3f94a1ec4733549115d8ad19ee9a58dffe38abfd28e74c345', 27, 1, 'access_token', '[]', 0, '2022-09-28 16:12:17', '2022-09-28 16:12:17', '2023-09-28 12:12:17'),
('f62e3ca4d76a7c5867c037590d2191273f91b350ccd3904b9fc861387e4b6f6926ffa5612a538bb0', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:09:21', '2023-03-14 21:09:21', '2024-03-14 17:09:21'),
('f640d70e92dfa90a11307efb705f874c9354afdc5e2efec8f7aeee8319c56d58f10735ad838e7f4b', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-10-03 11:07:05', '2022-10-03 11:07:05', '2023-10-03 07:07:05'),
('f673940cb4a5949449b00b3427c39fe60a26c1ca3bcca3e64466289417b35b402821d8821ddda721', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-21 22:42:51', '2022-07-21 22:42:51', '2023-07-21 18:42:51'),
('f6dc02edadd3de79d8cbd9cece25e8b8fa2444f2f5877131645df0c81a874c520075c74878e62bef', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-05 12:09:28', '2022-07-05 12:09:28', '2023-07-05 08:09:28'),
('f7918e0f41b1a1dc24af97dda2e6e0c853cbe79084c7da772bdec6c038ed3d7ce63f9ef3652a8e2f', 27, 1, 'access_token', '[]', 1, '2022-09-29 10:15:21', '2022-09-29 10:15:21', '2023-09-29 06:15:21'),
('f7f2d503dc2439742aba5bc14a248d215029b835d519ee36cf175844280d85583d26bd9c44c0ab48', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2023-01-04 12:44:16', '2023-01-04 12:44:16', '2024-01-04 07:44:16'),
('f7fa5fb0f93c9d31574e1e5459e4c5b6da78f5fc66d7193387a1c9658e0ffba32aeaf8dbde6b7936', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-02-09 12:07:59', '2023-02-09 12:07:59', '2024-02-09 07:07:59'),
('f7fb88559798c7081ca7bd4e93c2a640b506d63065156689841525be82957a509f5d66d45f858a11', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-31 08:56:09', '2022-10-31 08:56:09', '2023-10-31 04:56:09'),
('f82509c0161df8bc8e76923990fc99624a3da4856b8a2c24128f70ab8938939461ec030d45fdafae', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:32:48', '2022-12-13 22:32:48', '2023-12-13 17:32:48'),
('f8c3e4d158e1f9f3275570f07dc694d1a9cefb6604088033c24827b79c1910ef2c16b12c2f57c092', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:06:34', '2022-10-03 11:06:34', '2023-10-03 07:06:34'),
('f8c5da69052133549306722f53798a63a171634cb3160923d04b507d2f645975e9493c962c56a424', 27, 1, 'access_token', '[]', 0, '2022-09-27 16:26:39', '2022-09-27 16:26:39', '2023-09-27 12:26:39'),
('f8e3178c14a015e8aca75b175b2535eb4ee6f781f4414a6f2eb45e30a701b784a2d3d176fb70bcef', 89, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-13 16:31:39', '2023-02-13 16:31:39', '2024-02-13 11:31:39'),
('f9275d7181282b74e1d786d1f46351a266dd1d476e87511edbd4441ea426a5993ca9910fbbce7832', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:33:10', '2022-09-30 15:33:10', '2023-09-30 11:33:10'),
('f9299f4013a5bb5d7b232df100b8ceebb305074389acad8afd1d18b2a18a9c6cc372a86f649869c7', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-07-25 20:10:14', '2022-07-25 20:10:14', '2023-07-25 16:10:14'),
('f92db109bfc2177520462cf81a14ceb511ca47026a6f5daaaa31f3508c3a5f7b422f45d9d59b6f3f', 27, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-11-06 09:48:17', '2022-11-06 09:48:17', '2023-11-06 04:48:17'),
('f94590971f05dbc0d277f8d79c4cb6cd96b45c1e797477e2446f2b3d79b9b7edf4efc75b22c3b6ce', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-06 19:12:21', '2022-08-06 19:12:21', '2023-08-06 15:12:21'),
('f980824ab26df9b2bfb1101e153add60638b0b52f1535112af66d60946a4903b36b6eff6f24a0abf', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 23:33:12', '2022-12-13 23:33:12', '2023-12-13 18:33:12'),
('f9b4d0c5a3f24cb112b803a6a9df8b75f836ac0603072c8f6a0a92f180878be952ee4b30633b5e76', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 14:01:11', '2022-09-30 14:01:11', '2023-09-30 10:01:11'),
('fa0ed154fec36eaf4b761e6e3ec470de251474d83135ba0f509a0bc1004017a6efe3507b62975144', 27, 1, 'access_token', '[]', 1, '2022-09-26 16:37:15', '2022-09-26 16:37:15', '2023-09-26 12:37:15'),
('fa230db5ffb92d7a0d9b3534859c1548b8f1bf3b777fddc4561e5fa6a99a6b06f93a4548fd95f569', 14, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-11 14:03:57', '2023-02-11 14:03:57', '2024-02-11 09:03:57'),
('fa4c3f0f2ce0f1b8ff85574433edd679ee37fd4e1310a355dbfa97451824b266bdc8ab6ddfc57d03', 27, 1, 'access_token', '[]', 1, '2022-09-26 16:00:08', '2022-09-26 16:00:08', '2023-09-26 12:00:08'),
('fa72d33ab90ddcae37448626530a717c22dbcfaeec08d66dcae5dc5245fd53f1d6ba4df350b6e559', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 21:57:15', '2022-12-13 21:57:15', '2023-12-13 16:57:15'),
('fab3d9e115126e86aa21faf35b8ff4d41c8a114ef30fcb129a9fd83822a1981b605ef69b4541668d', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-01 16:02:20', '2022-08-01 16:02:20', '2023-08-01 12:02:20'),
('facc4df116b8a6495d3616072a281880f48a3dccf41f508941331eb28362a52356b009b61422c49e', 68, 1, 'access_token', '[]', 0, '2022-11-13 21:59:44', '2022-11-13 21:59:44', '2023-11-13 16:59:44'),
('faf1a3905d1603ccbe83c2f2dbdd9170e3ef7d80879dfb13ea6f8f4d505666ff2f8c472ab3e37e73', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-09-26 13:38:20', '2022-09-26 13:38:20', '2023-09-26 09:38:20'),
('faf4814d6f84582009c4eb95eaf5f26984422742026744cbb7c30769742adfeee75e0c2f283d25b1', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 10:32:49', '2022-10-03 10:32:49', '2023-10-03 06:32:49'),
('fafb871dbbb3b9a6d6c9080ee157ae588b87b52e2bfddc5e830a5e0c517296af09bbe6f8841a8f2a', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-07 09:24:47', '2022-11-07 09:24:47', '2023-11-07 04:24:47'),
('fb055aeb769804e35bd54333b434475691f95c54f6012e1735553724d1ddcea9a858be409f8bcb1a', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 11:45:45', '2022-10-03 11:45:45', '2023-10-03 07:45:45'),
('fb2f06e44c433e04a7446e4f26362e308b80ebe81b02d5d3ae5a5318e9c35d57e73bc2af80fa8e5e', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:59:31', '2022-09-27 13:59:31', '2023-09-27 09:59:31'),
('fb53bde0980c9477a71045c1f3dc0072051eb18d3f903848c654c6091f25799db2d2dd4c007eadf0', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-14 11:18:04', '2022-07-14 11:18:04', '2023-07-14 07:18:04'),
('fb67bcebc6add5d88b04ad12402fd0e64de842a9297a84d2e573b652c9ba3d167fb68c416bfda536', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-13 22:44:54', '2022-12-13 22:44:54', '2023-12-13 17:44:54'),
('fb9a8baf5929d9aef4473e1a18322c7dd3a027ed378de8d4fc9952484212fe4798e2bbf2e2e71201', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-16 15:05:01', '2023-01-16 15:05:01', '2024-01-16 10:05:01'),
('fbc68ce8f2830a3d1613152e4a49d9a3d922f36c5fa00db6e8b27ff3ea2ed4bd9ed82788c623165a', 2, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-08-01 17:39:14', '2022-08-01 17:39:14', '2023-08-01 13:39:14'),
('fbce8d0a759fbf3a7637df2943e7c2c0c6468ffe7ed05d91175f38a3b7f6cf3735cee060696c233b', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-01-17 23:37:46', '2023-01-17 23:37:46', '2024-01-17 18:37:46'),
('fbd200ef27a26889de95266c481adfac3402beb95477fd042997d69b71f60e5206f844c68f07d669', 19, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-17 14:49:25', '2022-12-17 14:49:25', '2023-12-17 09:49:25'),
('fc0531690777bd7fe10dfc42f7b2f6be53cbbb26a302a9c90b234eb60ede7ffcb058df6bd1ee2449', 20, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 1, '2022-12-15 10:03:29', '2022-12-15 10:03:29', '2023-12-15 05:03:29'),
('fc0753b3052c69df3b903552ebc6bbd445878f03525af95c189ec6c8312ba58b869c6e5a950c92b9', 27, 1, 'access_token', '[]', 0, '2022-09-27 16:27:05', '2022-09-27 16:27:05', '2023-09-27 12:27:05'),
('fc9a9ae542cf81e75260a129860530fe1c6158c6d78229a9ed1125277a058596c9695b416fe38366', 27, 1, 'access_token', '[]', 0, '2022-09-26 14:36:52', '2022-09-26 14:36:52', '2023-09-26 10:36:52'),
('fca1e118915b622eeac9af5721a477864fc1630fcd5d64721a111afabf31fd60b9ead8e4dea39c66', 92, 1, 'access_token', '[\"user_scope\",\"manage_own_content\"]', 0, '2023-03-10 22:06:57', '2023-03-10 22:06:57', '2024-03-10 17:06:57'),
('fce760d11de12b696a3907bc4ce291f1a8b2e25ec6a4e9933c9411fc0a6ce14b848a5ce84c6906df', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-16 11:52:12', '2023-03-16 11:52:12', '2024-03-16 07:52:12'),
('fcf52aa65d070b0878eb2e8d160aa4f3dc6789753fca3f1601ff25e347319a21d0d2fb9cafe6ec36', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-17 12:10:07', '2023-02-17 12:10:07', '2024-02-17 07:10:07'),
('fcf5bb67f10a114a164e8a16ccfe79aa215d08209d6d5bd95fa30aa6cc259bdbd090432e36f4e0e3', 27, 1, 'access_token', '[]', 0, '2022-09-28 12:18:17', '2022-09-28 12:18:17', '2023-09-28 08:18:17'),
('fd0dadb948bbdcc0f98e5ac94e2f9067ca355ffa7f36ee0245b130d9d240f40894bb17711a1f1a3c', 27, 1, 'access_token', '[]', 0, '2022-09-27 13:38:46', '2022-09-27 13:38:46', '2023-09-27 09:38:46'),
('fd0e828866f6791596a4e3aa83468e9ae0cd3d99d79283de48cf3c2e541bad30606e9a31041fc098', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-07-15 13:08:10', '2022-07-15 13:08:10', '2023-07-15 09:08:10'),
('fd27afcc2f63cd720de2585fd6a061e51a38ce898b199eb4e3036830b0071b0910f9157fdde97a6e', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-19 10:55:59', '2023-03-19 10:55:59', '2024-03-19 06:55:59'),
('fd4f099c97e88c08af5b1957f78348050f4a628aabc19cc5d600fd86a9938cfac188cacf6a04d49f', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-07-01 17:35:53', '2022-07-01 17:35:53', '2023-07-01 13:35:53'),
('fd5f4a21a26c653a21d90833cb1f7074267763d51d369261dd694b26088a1121533df2300556ecf2', 2, 1, 'access_token', '[\"manage_own_content\"]', 1, '2022-08-03 09:03:20', '2022-08-03 09:03:20', '2023-08-03 05:03:20'),
('fe1db2afe785ce44011f3da601b64903ff5ffd10df506930d4e0e45b7d5009a45eda99c91a2595bd', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-01 18:19:07', '2022-12-01 18:19:07', '2023-12-01 13:19:07'),
('fe3f466c17fd1cb5d1ff59540fc0869511008c28b0dc2f993e1562f7511629bff56345f83aea3c63', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 1, '2022-12-17 15:15:18', '2022-12-17 15:15:18', '2023-12-17 10:15:18'),
('fe53289dc5bf53535b23be0c523c789792c0c274deb49d85b5ba16b5b8d5c5386b829fb37ac2d509', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-09-30 15:35:23', '2022-09-30 15:35:23', '2023-09-30 11:35:23'),
('fe5368174ba7989c4dd0bcecd8f95cd39fb176d693b78e205c149e1ff18b8cf4195e4bdb6584d828', 89, 1, 'access_token', '[]', 0, '2023-02-11 16:31:17', '2023-02-11 16:31:17', '2024-02-11 11:31:17'),
('fe59028a51eaa91ce16e6803751ce86f3baa32c7b3b10bc556ad0b896464ae645b4d98c59a4cdcd3', 14, 1, 'access_token', '[\"manage_own_content\"]', 1, '2023-03-09 22:39:11', '2023-03-09 22:39:11', '2024-03-09 17:39:11'),
('fe733601d6ce5dee7646f57f99bd680cd5a6d84a20ee01542668618533b0592439085a152d22a1d5', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-26 12:06:28', '2022-10-26 12:06:28', '2023-10-26 08:06:28'),
('fed45654c4815268cdd5a310f5fbe392d62391821c064ac21f50a532d1e7335278c03da69bfe07a0', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-12-07 12:37:33', '2022-12-07 12:37:33', '2023-12-07 07:37:33'),
('feea3989fe82de49c6979228143da3ca6e6cb6390b15194994d28b74ff54afbb36dc4bbefe874de6', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-06-30 16:48:21', '2022-06-30 16:48:21', '2023-06-30 12:48:21'),
('fefce4e73e77e8cdc0c278b16a6b183fb9b92a82264866cef85ce9347a3923979d6d8130050e7f86', 1, 1, 'access_token', '[\"manage_own_content\",\"manage_everything\"]', 0, '2023-03-16 14:45:58', '2023-03-16 14:45:58', '2024-03-16 10:45:58'),
('ff0e100430f640d867ab1a3bc07d4c8513eb931bb0883c8e45d79b6b49c3a2ce744890baa99404a4', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-11-03 06:22:28', '2022-11-03 06:22:28', '2023-11-03 02:22:28'),
('ff2d34436b7cbe010ef01e15c26d17bd224c7bce6a3bb12db3a9650babbe2c597454d87cc4e9833d', 89, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-02-13 16:31:43', '2023-02-13 16:31:43', '2024-02-13 11:31:43'),
('ff661fc26e103bc16184d2e80608c969e817da997017ec3c6b165d48c64d54e42ef661d3becdd6ea', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2022-10-03 16:22:57', '2022-10-03 16:22:57', '2023-10-03 12:22:57'),
('ffc777b2aef3280a9d4261ce870f05117ed328485fac50471d0252ceb378857d5a5cdcddc663046e', 1, 1, 'access_token', '[\"user_scope\",\"manage_own_content\",\"manage_everything\"]', 0, '2022-09-02 17:09:05', '2022-09-02 17:09:05', '2023-09-02 13:09:05'),
('fff639486a08a4151a3435142ab775da7904b0aeb1d17e18634f4175ed69aa8f8efe8da00e7ed351', 27, 1, 'access_token', '[\"manage_own_content\"]', 0, '2023-03-14 21:33:13', '2023-03-14 21:33:13', '2024-03-14 17:33:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Music Personal Access Client', 'zwla1rgyD5apEnpC1qON8oJNjQNyRXTVNa77m6En', NULL, 'http://localhost', 1, 0, 0, '2022-03-04 22:44:19', '2022-03-04 22:44:19'),
(2, NULL, 'Music Password Grant Client', 'PsAdTpTQNChZkULABZNVI9mEWAeqdTLJ0LlIx4qf', 'users', 'http://localhost', 0, 1, 0, '2022-03-04 22:44:19', '2022-03-04 22:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-03-04 22:44:19', '2022-03-04 22:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `icon` varchar(191) NOT NULL,
  `blank` tinyint(1) DEFAULT 0,
  `isEditable` tinyint(1) NOT NULL DEFAULT 1,
  `showLinkOnTheRightSidebar` tinyint(1) DEFAULT NULL,
  `title` varchar(191) NOT NULL,
  `content` text DEFAULT NULL,
  `path` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `icon`, `blank`, `isEditable`, `showLinkOnTheRightSidebar`, `title`, `content`, `path`, `description`, `created_at`, `updated_at`) VALUES
(1, 'charts', '', 0, 1, NULL, 'Charts', NULL, '/browse/charts', '', '2022-03-04 22:45:14', '2022-03-04 22:45:14'),
(2, 'Home', 'home', 0, 1, 0, 'Radio Music Online | Radio Station Online | AWACRADIO', NULL, '/home', 'AWACRADIO is the online radio station platform where users can enjoy unlimited radio music. Explore your favorite genre and enjoy listening it.', '2022-03-04 22:45:14', '2023-01-06 17:29:03'),
(3, 'About Us', 'music-circle', 1, 1, 0, 'Listen Music Online Free Without Downloading | Music Sites Free', '<h1>About Us Sample</h1>\r\n            <br/>\r\n            <p>You should add your own \"About us\" description here or disable this page.</p>\r\n            <div class=\"boxed\"><div id=\"lipsum\">\r\n            <p>\r\n            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut auctor dolor. Pellentesque fringilla lacus sit amet massa euismod pulvinar. Praesent ac erat nibh. Maecenas at imperdiet est, at fringilla ante. Phasellus fermentum nisi vitae faucibus laoreet. Nulla sit amet posuere metus. Donec quis neque a augue tempus vulputate at non urna. Aenean porta metus sit amet tellus mattis sodales. Suspendisse ac nulla massa. Curabitur auctor porta laoreet. Nullam vel quam lorem. Aenean ornare a purus eget dictum.\r\n            </p>\r\n            <p>\r\n            Morbi egestas convallis sem quis sollicitudin. Fusce vitae purus tortor. Vestibulum finibus orci purus, quis sodales nunc pulvinar sed. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In luctus felis a ex sagittis congue. Nunc vel bibendum ligula. Nulla a vehicula urna. Cras suscipit pretium ipsum, eu feugiat risus tincidunt at. Pellentesque imperdiet sem id risus facilisis, nec aliquet libero aliquet. Mauris ultrices interdum ante quis auctor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque vitae malesuada ante. Nam euismod felis commodo nulla lobortis, eu fermentum magna varius. Sed ut mauris lobortis, dapibus ipsum quis, iaculis libero. Mauris blandit, turpis vel convallis faucibus, erat massa luctus massa, at viverra magna odio non tellus.\r\n            </p>\r\n            <p>\r\n            Aliquam nibh elit, ornare vitae elementum id, vulputate a neque. Duis porta placerat tincidunt. Ut convallis lectus ligula, ut imperdiet mauris sagittis sit amet. Fusce sit amet faucibus enim. Cras rutrum nisi eget porta lobortis. Ut quam elit, finibus sit amet neque ac, dapibus fringilla urna. Duis ultrices dapibus sem, nec suscipit metus vehicula at. Pellentesque facilisis purus nec pretium tincidunt. Nam aliquet nibh quis nisl dignissim fermentum. Curabitur eget ipsum ultricies, sollicitudin ex sit amet, rhoncus nisl. Nunc tincidunt purus pretium, suscipit nulla sit amet, congue nibh. Aenean tempus aliquet ante, imperdiet luctus nunc sagittis vel. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut eros auctor, placerat nisl vitae, fringilla diam. Duis tempor diam ut felis sagittis porttitor. Suspendisse consectetur ipsum ipsum, vulputate suscipit odio volutpat a.\r\n            </p>\r\n            <p>\r\n            Donec a sapien purus. Vivamus a diam eros. Sed pellentesque facilisis lacinia. Donec molestie, ante ac sodales eleifend, purus nisi hendrerit sem, nec pellentesque purus odio eget purus. Pellentesque pharetra libero et enim faucibus, non ultricies elit facilisis. Proin commodo lacinia odio in lobortis. Phasellus cursus quam ut libero aliquam tincidunt. Suspendisse eu lacus blandit, tempor nisl vel, mollis mi. Curabitur lacus ipsum, ullamcorper blandit vehicula at, aliquet vitae ligula. Mauris accumsan nunc a nisi scelerisque, vitae efficitur erat egestas. Sed gravida ac ex a egestas.\r\n            </p>\r\n            <p>\r\n            In tellus velit, scelerisque mollis malesuada quis, lobortis ut purus. Suspendisse potenti. Vestibulum at venenatis nulla. Mauris in elit a sapien venenatis imperdiet eget vel augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae diam vitae augue bibendum bibendum et quis ligula. Duis facilisis aliquet justo vel pellentesque. Mauris ut fermentum nisi. Donec tincidunt felis ut enim ultrices accumsan.\r\n            </p></div>', '/about-us', 'AWACRADIO is one of the best music sites for free to listen music online without downloading. Explore playlists, radio stations, channels and more.', '2022-03-04 22:45:14', '2023-01-06 17:30:55'),
(4, 'Privacy Policy', 'music-circle', 1, 1, 0, 'Privacy Policy Radio Station | Radio Platforms Policy | AWACRADIO', '<h1>Privacy policy</h1><p>A personalized Internet radio service is run by AWAC Radio, and related platform features are accessible online at AWACRADIO.com, on smartphones and tablets, in cars, and through other consumer electronics devices (the \"AWAC Radio Service\" or \"Service\"). \"AWAC Radio\" refers to AWAC Radio, LLC and its affiliates as used in this policy. All Service activities that AWAC Radio has permitted are subject to this policy. AWAC Radio may be referred to as \"we,\" \"us,\" or \"our.\" \"Listener,\" \"you,\" or \"your\" may be used to refer to you. The aim of this policy is to provide you with information about the personal data we gather, how we use and share that data, and the options available to you for managing that data\'s use and sharing.</p><p>You fully consent to the collection, use, and disclosure of your personal information in accordance with this policy by using our Service, and you agree to the terms of this policy.</p><p></p><p><strong>Information that is collected:</strong></p><p><strong>Registration Data:</strong></p><p>Your email address, birth year, gender, zip code, and other details are among those we need when you register. We also ask you for a password for your account.</p><p></p><p><strong>Payment Information:</strong></p><p>You will also be required to give (at the very least) your name and payment information if you decide to subscribe to fee-based features of the Service, buy a membership to the Service as a gift, or buy add-on items or services.</p><p></p><p><strong>Information you choose to provide:</strong></p><p>During our contacts with you and the AWAC Radio Service, you have the option to send us emails, respond to advertisements, and sign up for emails or newsletters, among other means of communication. Every time you provide us information, AWAC Radio or third parties working on our behalf receive data from you.</p><p></p><p><strong>Listening activity:</strong></p><p>We keep track of your listening behavior when you use the Service, which may include the number and titles of the songs you\'ve listened to, the songs you like (thumbs up) or dislike (thumbs down), the stations and playlists you create or listen to, the songs you skip, and how long you listen.</p><p></p><p><strong>Community Posting:</strong></p><p>In community networking features offered on or accessed through the Service, such as AWAC Radio Community, your public profile, artist and album forums, our blog, and our social networking pages, you have the option to post remarks, photographs, and information. You should be aware that, as will be covered in more detail below, any information you provide during the course of these community activities may be viewed, collected, or used by other users of these portions of the Service. In any of the social networking tools offered on or through the Service, you are solely responsible for the information you decide to make public.</p><p></p><p><strong>Technical Information</strong></p><p>Like many other internet-based services, AWAC Radio may employ servers and log files to gather specific technical data. Log files are automatically created by web and application servers as part of their setup and configuration. An IP address, browser type, ISP, date/time stamps, Media Access Control (MAC) address, file requested, and other usage data and statistics could all be found in a log file.</p><p></p><p>&nbsp;<strong>Contact Information</strong></p><p>You may opt to supply us with your contact information, such as your name, mailing address, and phone number, if you choose to engage in research projects or sign up for particular services and/or prizes made available through the Service (\"Contact Information\"). For the purposes of this policy, the email address you included in your registration data is not regarded as contact information.</p><p></p><p>&nbsp;<strong>Device Information</strong></p><p>We may gather data on the computers, mobile phones, tablets, cars, and other electronic devices you use to access and utilize the Service. For instance, your Internet Protocol (IP) address, browser type, and other relevant software or hardware details are received and stored on our servers regarding your computer and browser. We may gather and store information such as device type, operating system version and type, unique identifiers (such as mobile advertising ID, VIN, and MAC address), carrier, and other pertinent details for that device if you access the Service from a mobile phone, tablet, car, or other electronic device.</p><p></p><p><strong>Location Information</strong></p><p>Your zip code or postal code is one of the information you give us when you sign up for the AWAC Radio Service. We might also gather location data from the gadgets you use to access the AWAC Radio Service. Device-based location data may be collected via GPS and adjacent wireless signals like cell towers, Wi-Fi networks, and Bluetooth beacons, depending on the device and operating system. Unless you have given the AWAC Radio app permission to use location services on your device, we will not gather your device-based location information. This access can always be turned off in your system settings. In some circumstances, it may also be possible to estimate your location within a geographic block using the IP address that is currently assigned to your device.</p><p></p><p><strong>Voice Data</strong></p><p>When you use a speech function on our app, we will record your voice if you allow the AWAC Radio app on your smartphone access to your microphone. If \"Listen for \'Hey AWAC Radio\'\" is enabled in your app\'s settings, you can use the wake word to activate AWAC Radio or make a search by touching the microphone icon in the search bar. Select audio advertising that is funded by advertisements allow listeners to engage with them by speaking, in which case a screen-based indicator and an audible tone will play when the microphone opens and closes.&nbsp;</p><p></p><p>&nbsp;<strong>Connected Devices</strong></p><p>In order for you to access AWAC Radio services when you stream content through a linked device from a third party, the connected device provider may obtain personal information from AWAC Radio concerning your membership and listening habits. The connected gadget may also immediately give the third-party supplier with personal data. The acts of third-party connected device providers, including how they may utilize information obtained through the device or transmitted to them in order to sell and provide advertisements, are not covered by this privacy statement. Please refer to your third-party connected device provider\'s terms of use and privacy policy for further details on connected device data collection and use.</p><p></p><p><strong>Third Party Personal Information:</strong></p><p>You must supply personal information about another individual in order to use some elements of our service. You certify that you have the required rights and permissions to disclose such information by providing us with another person\'s personal information. We may save and use the information you voluntarily supply so that we can deliver such features. For instance, if you decide to buy a friend a subscription to the Service, we might need your friend\'s name and email address in order to send the gift. Only the precise purpose for which it was supplied or for security needs, such as preventing fraud, will we use this information.</p><p></p><p><strong>&nbsp;Information We Receive or Collect from Third Parties</strong></p><p>We may obtain information about you from third parties, combine it with information we may already have about you that we have obtained from you, and keep it on our systems. Among these third parties are:</p><p></p><p>Service suppliers who offer or make available content, features, and advertising on or through the service.</p><p>Information on their clients is gathered and maintained by advertising businesses like advertisers and ad agencies. For the purpose of presenting advertisements and/or marketing offers to their consumers on the AWAC Radio Service, these third parties may provide AWAC Radio with specific information about those customers.</p><p>Companies and data providers in the marketing industry that produce, manage, and distribute expert marketing segments or lists, or who produce, maintain, and distribute other marketing-related or related data.</p><p>Government or quasi-government organizations or institutions that offer or make demographic and census data available to the general public.</p><p>When we permit third-party social media websites, applications, or services to engage with the Service to offer you personalized experiences, you may utilize those websites, applications, or services. Unless you use the settings offered on such websites, applications, or services to opt-out of such sharing, in some situations, those websites, applications, or services may automatically provide us with information about you to permit customizing.</p><p>By enabling connectivity with another website, application, or service where friends or other listeners store such information, people who store or post information about you on the community features of the AWAC Radio Service, or by you. If you use our Service or any other websites, applications, or services with which the AWAC Radio Service interacts, your friends may save information about you in locations like their address books, friend lists, or photo albums.</p><p>&nbsp;</p><p><strong>Information Collection Technologies</strong></p><p>&nbsp;<strong>Our use of cookies</strong></p><p>Cookies are a type of technology that AWAC Radio employs. An alphanumeric identifier is contained in a file that our server publishes to your hard drive called a cookie. To manage and track your usage of the Service, we use the identifier contained in cookies. By using cookies, we can authenticate your login information, manage multiple instances of the Service in a single browser, record the number of times users return to our website or the websites of our advertisers or partners, gather and report on aggregate statistical data, and optimize the Service. Additionally, we might gather information on the website or page that directed you to the service as well as the time and date of your visit.</p><p>\"First-party cookies\" are the ones we store on your computer\'s hard disc. Both session cookies and persistent cookies are used by us. When your browser is closed, a session cookie expires. A persistent cookie hangs around on your hard drive for a while. By following the instructions in the \"help\" section of your browser, you might be able to get rid of persistent cookies. You are still allowed to use our Service even if you reject first-party cookies, but you will have fewer options for logging in and using certain parts of our website.</p><p></p><p><strong>Advertisers\' and other third parties\' use of cookies</strong></p><p>A special cookie may be set or recognized on your hard drive by advertisers and other third-party advertising companies who deliver advertisements to you on the Service. Third-party cookies are these specific non-AWAC Radio cookies. Advertising companies might use third-party cookies to gather data about you, such as how frequently you\'ve seen their ads or whether you\'ve interacted with any of them. They might additionally employ third-party cookies to provide interest-based advertising to you. The majority of popular web browsers provide users the choice of accepting or rejecting third-party cookies. This privacy statement does not cover the use of third-party cookies. Advertisers and other third parties may store cookies on your computer without our knowledge or under our control.</p><p></p><p><strong>Beacons and tracking pixels:</strong></p><p>Beacons, sometimes known as tracking pixels, are a technology used by AWAC Radio, third-party advertising companies, and tracking-utility partners (each, a \"Beacon\"). A Beacon, which is about the size of the period at the end of a sentence, is a one-pixel-by-one-pixel clear image that is embedded in HTML content. When HTML content with a beacon is rendered, the beacon sends data to a server such as a count in numbers, a unique ID, or an IP address. Beacons are a tool that AWAC Radio and its partners utilize to better manage the material on our service. For instance, we might include a Beacon in HTML-based emails to let us know which emails the recipients have opened, or on a website to track how many different people have visited it.</p><p>&nbsp;</p><p><strong>HTML5 and Flash Local Storage</strong></p><p>&nbsp;In some cases, HTML5 and/or Flash Local Storage (collectively, \"Local Storage\") may be used by AWAC Radio and its advertising and technology partners to improve your listening and advertising experiences on the Service. When your browser window accidentally reloads, for instance, we employ local storage to maintain track of the song that is now playing so that we may resume playing it from where it left off after the reload. For the best video viewing experience, our advertising and technology partners may use Local Storage to identify your bandwidth rates. Each browser has a unique implementation of HTML5 Local Storage and offers capabilities for controlling local storage-based content. To control the data kept in HTML5 Local Storage, check the privacy options in your browser.</p><p></p><p><strong>How We Use Information We Receive or Collect</strong></p><p>&nbsp;<strong>Push Notifications</strong></p><p>In order to keep you informed about events and promotions, we could occasionally send you push notifications. You can disable these communications at the device level in your app settings if you no longer want to receive them. We will need to gather specific information about your device, such as the operating system and user identity information, to make sure you receive the right notifications.</p><p></p><p><strong>Email Address</strong></p><p>Without your consent, we never share or sell your email address with other businesses for their own marketing campaigns. However, we may use your email address or other Registration Data to send you notices about the Service or other promotional offers you have chosen to receive as well as to serve you with advertisements that are more pertinent to your interests. We may also use this information to send you technical support messages. To improve the relevancy of the advertisements we show to our listeners, we might potentially collaborate with data partners and advertising networks. To achieve this, we might make use of data that represents an encrypted or hashed value derived from data we have received, including your email address, in relation to these partners and platforms.</p><p></p><p><strong>Contact Information</strong></p><p>&nbsp;Without your consent, we never sell or otherwise distribute your contact information to businesses for their own marketing initiatives. However, we do contact you and send you news, offers, and other material using your contact information. We may use your contact information, if you submitted it as part of your usage of AWAC Radio Artist Marketing Platform, to keep you informed about new features and capabilities added to the Artist Marketing Platform, as well as the progress of your content submission.</p><p></p><p><strong>How We Share Information We Receive or Collect with Others</strong></p><p><strong>How Your Information Is Shared</strong></p><p>When you choose to grant AWAC Radio permission by checking a box (for instance, by selecting \"yes\" when prompted to \"share my email with this advertiser\")</p><p>When you engage in social networking and community services on the AWAC Radio Service, such as the AWAC Radio Community, forums, listener reviews and ratings, and other types of communication and interaction that you choose to share on public profiles or in other public venues.</p><p>If we hire or collaborate with third parties to perform specialized services on our behalf, such as credit card processors, customer service representatives, ad servers or other service providers of advertising, platform technology suppliers, bulk email processors that send emails on our behalf, or parties that help us manage sweepstakes and fulfill prizes. Your personal information will only be used by these parties to the extent required to deliver the services to AWAC Radio. Your personal information may not be used by others for their own, unrelated purposes.</p><p>Sharing details about the musicians, songs, stations, playlists, and other content you have added to or listened to through the Service, or that is connected to your account, if you have chosen to make that information public. However, if someone already knows your email address and enters it into our search system, they will be able to see a list of all the stations created under that email address. If your AWAC Radio profile is set to private, your stations may appear in a search but your profile won\'t be connected to that station.</p><p>We may share certain information about you with those third parties for account authentication and administration as well as to make the Service available on their platforms if you choose to take advantage of certain features or services offered jointly by AWAC Radio and third parties. For instance, if you choose to use Google Now or AWAC Radio for Business, which are offered by third-party partners such as Google or Mood Media (respectively), you agree that we may give those partners certain information about you in order to make those products, services, features, or functionality available to you. Another illustration is that when you post information on integrated social networking sites like Facebook, you authorize the AWAC Radio service to speak to the other service in order to make the social features accessible to you. Your personal information may also be subject to these service providers\' data collecting, use, and sharing practices, which are not governed by this policy. You acknowledge and agree that your usage of those third-party service providers is completely your responsibility, and it is your duty to check their terms of service, privacy policies, and the procedures they employ for modifying the privacy or sharing settings on such services.</p><p>If you have authorized us to share information about you with a third party. For instance, if you join a panel for an analytics business\'s survey, you might have given permission for that company to obtain information about you from us as part of your agreement with that company.</p><p>To assess how the Service is being used. For instance, we track how frequently and for how long you use the Service using third-party service providers like Nielsen and Scorecard Research. These services may be used by advertising companies to gauge the success of their marketing initiatives. We give them data, such as a device identifier, when we utilize these providers.</p><p>&nbsp;</p><p><strong>Legal and Security Purposes</strong></p><p>We may disclose your information to:&nbsp;</p><ol><li><p>Protect or defend AWAC Radio legal rights or property, or the legal rights of third parties, employees, agents, or contractors (including the enforcement of our agreements).</p></li><li><p>Ensure the safety and security of AWAC Radio users or the public, including by taking urgent action when necessary.&nbsp;</p></li><li><p>Combat fraud or manage risk.</p></li><li><p>Comply with the law, legal process, or legal and governmental requests.</p></li></ol><p><br><strong>Sharing of Device Information</strong></p><p>With manufacturers, distributors, advertising agencies, and other third parties, AWAC Radio may share data we collect from the devices you use to access the Service. We share this data for a number of reasons, including mobile listening capping, advertising frequency capping, tracking advertising conversion events, estimating the number of unique users, security and fraud detection, troubleshooting issues with the AWAC Radio Service, and showing you more relevant ads.</p><p></p><p><strong>Sharing of De identified, Aggregated, or Anonymized Information</strong></p><p>De identified, aggregated, or anonymized information we receive or collect—such as demographic data, location data, information about the computer or device from which you access the Service, or data about your interactions with the Service—may be shared by AWAC Radio with third parties, advertisers, and/or business partners. We may share your information in order to study how the Service is used, enhance the Service and your listening experience, better serve advertisements, or pursue other goals that are comparable.</p><p></p><p><strong>Information You Disclose in a Public Profile or in Public Forums</strong></p><p>The AWAC Radio Service provides profile sites that are open to the public, the AWAC Radio Community, community forums (like pages for artists, songs, or advertisers), blogs, and social media pages. You should be aware that anybody with access to these locations may read, gather, and utilize any information you disclose or post there. Any information you include in your user profile, such as your bio, the people you follow, and the people you permit to follow you, may be read, gathered, and used by people who access them if your profile is public. Contact our User Support team to ask that such information be taken off our open forums. We might occasionally be unable to delete your information, in which case we will notify you and explain why.</p><p></p><p><strong>Data Sharing</strong></p><p>&nbsp;We shall request guarantees from the receivers of your personal information (prior to the transfer) that they will protect the information in a way compatible with this policy if it is transferred or shared as specified in this policy. We need those who receive such information to enter into a legal agreement with us that includes nondisclosure and confidentiality terms and offers the same level of dedication to and protections for information as those outlined in this policy.</p><p></p><p><strong>Advertising &amp; Measurement Settings</strong></p><p><strong>Opting Out of Behavioral Advertising on the Web</strong></p><p>AWAC Radio and third-party advertising companies use data in the ways described in this policy in an effort to show you adverts that may be of interest to you. To find out how the internet advertising sector utilizes the data it gathers to deliver you with pertinent advertisements and to decide whether you wish to do so from third-party advertisers,</p><p></p><p><strong>Opting Out of Behavioral Advertising on Mobile and Tablet Devices</strong></p><p>By turning on \"Limit Ad Tracking\" on your iOS device, you may be able to restrict the amount of targeted in-app adverts that are relevant to your interests that you see if you use an iOS-based device.</p><p>You can visit Google\'s Ads Settings page from your Android-based device\'s browser and make your selections there if you are using an Android-based device and do not want to see personalized in-application advertisements.</p><p></p><p><strong>Opting Out of Third Party Service Measurement and Analytics</strong></p><p>&nbsp;We utilize third-party partners, as stated in this policy, to help us gauge and analyze service usage. You can choose not to participate in these measuring services online by adhering to the procedures on the websites listed below, one for each individual company: Scorecard Research and Nielsen. Please follow the guidelines above stated in the section for Opting Out of Behavioral Advertising on Mobile and Tablet Devices to opt out of participation on mobile and tablet devices.</p><p></p><p><strong>Managing Your Information</strong></p><p><strong>Modification of Your Registration Data</strong></p><p>We give you the choice of using the Settings part of our Service or getting in touch with User Support to access and edit your Registration Data.&nbsp;</p><p></p><p><strong>Retention of Your Registration Data and other Information</strong></p><p>For as long as your account is active or as long as it\'s necessary to give you services, we\'ll keep and use your Registration Data and the other details we gather about you. For the purposes for which it was collected (as described in this policy or as disclosed to AWAC Radio listeners outside of this policy), we will keep and use this information. These purposes include providing you with the Service, adhering to legal requirements, resolving disputes, and enforcing our agreements retention of Your Registration Data and other Information</p><p></p><p><strong>Your Email Preferences</strong></p><p>You have the option to choose whether or not to get emails that are personalized to your interests when you sign up for the Service. In your account settings, you have the choice to modify this selection. You can also follow the unsubscribe instructions provided in the marketing, promotional, or other communications that are similar to those you receive.</p><p>When it\'s necessary, we\'ll email you a confirmation of your purchase along with any other service-related notifications. For instance, we might email you if our Service is being temporarily shut down for maintenance. These communications, which are not promotional in nature, often cannot be opted out of. You can choose to deactivate your account if you do not want to receive them.</p><p></p><p><strong>Cancellation or Deactivation of Accounts</strong></p><p>&nbsp;You should get help from our User Support team if you want to ask for the cancellation or deactivation of your account. The removal of any content or information you may have posted or otherwise made accessible to the public on the Service while you were a registered user is not guaranteed by the cancellation or deactivation of your account. In order to seek the deactivation of a profile that you think is fraudulent or otherwise unauthorized, you should also get in touch with our User Support team.</p><p></p><p><strong>AWAC Radio Profile Visibility</strong></p><p>Your listening history will be made public after you sign up for the AWAC Radio Service. Your listening activity is automatically published to your profile by the Service when the visibility of your AWAC Radio profile is set to public. For instance, if you add a new station or thumb up a song, such actions will be visible to everyone who visits your AWAC Radio profile. You have the option to alter how much of your AWAC Radio profile is visible. For complete guidelines on how to modify your AWAC Radio profile\'s visibility settings.</p><p></p><p><strong>Cached Profiles on Search Engines</strong></p><p>Internet search engines like Google and Bing cache publicly accessible web pages for a period of time outside of AWAC Radio control, and they might make your deactivated or formerly public profile accessible to users of their services on their platforms until they refresh their webpage cache. This is true even if we deactivate your account or make your profile private at your request. To learn how to delete web pages from a search engine\'s webpage cache, please contact the relevant search engine.</p><p><br><strong>Security and Content from Other Websites</strong></p><p><strong>Protection of Data from Loss</strong></p><p>We have put in place security measures to guard against the loss, misuse, and alteration of the information we obtain from you or collect ourselves. For instance, we use secure socket layer technology to encrypt the transmission of sensitive information whenever you enter it on our order forms (such as a credit card number) (SSL). No security measure is flawless or impregnable, despite our best efforts.</p><p></p><p><strong>Data Integrity</strong></p><p>&nbsp;We utilize the data we gather in ways that are pertinent to and consistent with the goals for which it was gathered or submitted to us, as stated in this policy. We shall take measures to protect all information that is gathered, used, and/or stored against erasure, corruption, or use that is not in accordance with our rules or the intended use.</p><p></p><p><strong>Links to Other Websites</strong></p><p>Our service, as well as some of the adverts we run, contain connections to other websites, whose privacy policies may not be the same as AWAC Radio. The privacy policies and practices of each of those websites will control how your information is used if you provide them with personal information. Every website you visit should have a privacy statement that you should carefully read.</p><p></p><p><strong>Use of Framing Techniques</strong></p><p>While maintaining the appearance and feel of our website, some of our third-party partners may use framing techniques to serve information to and from web pages accessible through our Service. Please be aware that whenever a third-party partner uses framing tactics, you are giving this third-party partner your personal information and not AWAC Radio.</p><p></p><p><strong>Our Policies Concerning Children</strong></p><p>Anyone under the age of 13 is not permitted to register, and AWAC Radio does not intentionally collect personal information from them. We shall take steps to erase such information from our servers if we really learn that we have collected information from children under the age of 13 through legitimate means. If you think we might be in possession of personal data relating to a child under 13</p><p></p><p><strong>Your Privacy Rights Under State Laws</strong></p><p>This policy describes the gathering, use, sourcing, and sharing of your personal information. Additional conditions are listed below as necessary by your state\'s consumer privacy law</p>', '/privacy-policy', 'Read our privacy policy. A privacy policy is a document that discloses what types of information you collect from your users and why.', '2022-03-04 22:45:14', '2023-01-06 17:32:02');
INSERT INTO `pages` (`id`, `name`, `icon`, `blank`, `isEditable`, `showLinkOnTheRightSidebar`, `title`, `content`, `path`, `description`, `created_at`, `updated_at`) VALUES
(5, 'Terms of Service', 'music-circle', 1, 1, 0, 'Terms of Service Radio Station | Radio Platforms Terms | AWACRADIO', '<h1>Terms of Service </h1><p>The agreement of the terms and service are all binding legal agreements between you and AWAC Radio. Please read all the terms and conditions of this agreement and read the following terms carefully before using our service.</p><p>All the data, text, designs, images, graphics, including all the agreements contained therein are proprietary, confidential and are licensed to you under this agreement and are not in any way sold to you. By access or use of any of the services you agree to follow all the terms and conditions of this agreement.</p><p></p><ol><li><p><strong>Ability to use the service:</strong></p><p>For a person to use this service that person must be a resident of an authorized jurisdiction and be a minimum of 18 years of age. In any case the user being a minor the user can still use the service with parental consent subject to that fact that the minor has to be at least 13 years of age. This service is not intended to be used by anyone under the age of the minimum.</p><p>You hereby affirm that:</p><p>That you are at least the minimum age requirement&nbsp;</p><p>That you have the consent of your parents in case you are under the age of 18 but over the age of 13.</p><p>That you have all the applicable rights and authority to grant AWAC Radio the rights granted herein</p><p>That you have understood, read and agreed to the terms and service of this agreement.</p><p>That if you are not above the age of 18 and do not have your parents consent you may not use this service.</p><p></p></li></ol><ol start=\"2\"><li><p><strong>Privacy Policy:</strong></p><p>AWAC Radio privacy policy explains that the data the service collects, uses, stores and processes while the user is using the service. By using the service you have understood and agreed to all the terms of the privacy policy and that you affirm that we use the data in accordance with our terms of the privacy policy.</p><p></p></li><li><p><strong>Compliance with Policies:</strong></p><p>That while the user uses the service, he shall agree to the terms of all the posted policies. As with the passage of time the policies and terms may be reviewed and updated from time to time. If you do not comply with our terms of service and condition we have the right to terminate or suspend your access to our service.</p><p></p></li><li><p><strong>Additional terms of Service:</strong></p><p>Some of the services that we may offer may require additional terms and conditions. Those additional terms and conditions will be made available to you along with those services. If such services are used automatically the terms and conditions will apply and will be effective in the agreement.</p><p></p></li><li><p><strong>Changes in terms:</strong></p><p>The agreement may be modified from time to time. If any material changes are made in the agreement you will be notified. You agree that such changes will be effective from 30 days after you have been notified, except for changes that relate to new features or for any legal reason will be effective immediately. The continued use of our service by you will mean that you agree and accept the changes in terms that have taken place.</p><p>If you do not agree to the changes then you must not continue to use the service.+</p><p></p></li><li><p><strong>Your License to use the service:</strong></p><p>That subject to the terms and conditions and to the payment of fees if any required . AWAC Radio hereby grants you a limited, revocable, non-exclusive, non-transferable, non-sub licensable license to access the service.</p><p>AWAC Radio may at any time terminate the license of any user in any aspect at any time for any or no reason.&nbsp;</p><p><strong>Restrictions: </strong>Except otherwise specifically permitted in this agreement the user shall not.</p><p>Modify, create, intercept, download any derivative work from the service.</p><p>Access the service through an application or through any third party not authorized by the service.</p><p>To exploit the services to any third party by any means.</p><p>To remove and alter any trademark, logo, copyright or other proprietary notices, legends, symbols or any labels on the service.</p><p>To provide any user name or password used to access the service by any third party.</p><p>To circumvent any technological measures employed by the service.</p><p>To engage any third party in any activity that would result in breach of this agreement.</p><p><strong>Any use of this service that has not been permitted will result in breach of this agreement.</strong></p><p></p></li><li><p><strong>Communication Preferences and Consent:</strong></p><p>Communications may be sent to the user on the email address that is associated with the account. The communications may include but will not only be limited to tips, station recommendations and other account related messages.</p><p>When you create a station you may receive communications related to artists that are associated with that station.</p><p>Your mobile or tablet or any device applications may sometimes receive push notifications. If you want to change whether you want to receive push notifications from our applications you can change it from your settings. A user when accepting the agreement consents to receive push notifications.</p><p></p></li><li><p><strong>Explicit Content:</strong></p><p>Our service provides a number of forms or entertainment which may be inappropriate for anyone under the age of 18. Such entertainment content may contain speech, visual images, lyrics or any other source of entertainment that may have strong language or may have depiction of violence, sex and substance abuse.</p><p></p></li><li><p><strong>Listening Activity and Behavior:</strong></p><p>When the user is using our service we keep track of their activity, which includes the number and titles of the songs, albums or the artists that you like.</p><p>To the stations you listen to, to the songs you skip and for how long and frequently you listen to a station.&nbsp;</p><p>By doing this we get an idea of what you or any of the other users are interested in listening to and what type of content the listeners like and dislike. The main reason for this service is to enhance your experience on this platform. We work on our music algorithms in order to help provide you with the music and content suited to your taste. Whereas this data is extremely essential for the function of this service.</p><p>By using this service you hereby consent to the use of your listening activity and behavior for the purpose set forth.</p><p></p></li><li><p><strong>&nbsp;Advertising Content:</strong></p><p>This service may provide ads or links to any third party websites, products, or services. We will not be responsible for the non availability of any of the products, AWAC Radio or any of its affiliates will be held responsible for any kind of errors or omissions in the third party ads. Nor the platform will be held liable for any losses or damages that have been faced by any of the users, incase of their use or participation with the third party ads.</p><p></p></li><li><p><strong>&nbsp;Payment, Fees, and other Charges:</strong></p><p>If any user decides to access the paid content of the service, which means becoming a subscriber. The user shall agree to pay all the charges that are associated with the paid content. All fees and charges are due to be paid in advance and are non-refundable which are exclusive from&nbsp; any federal and state tax. The payment will be charged through the payment method the user had provided when they opted to use the service.</p><p>You shall agree to use a valid payment method during the use of this service.</p><p></p></li><li><p><strong>&nbsp;&nbsp;Intellectual Property:</strong></p><p>You acknowledge that, as between you and AWAC Radio , AWAC Radio owns all copyrights, trademarks, trade secrets, patents, and other property rights in and to the Services, the software, application programming interfaces (APIs), and any material contained within.&nbsp;</p><p>Additionally, the Services can include logos, images, and service marks belonging to third parties. The laws of the United States and other nations where the Services are offered safeguard the Services, which are owned by AWAC Radio and/or provided under license. You acknowledge that you will not permit the Services to be copied, used, or distributed without your permission. AWAC Radio does not grant you any express or implied rights under any copyrights, trademarks, trade secrets, patents, or other property rights owned or licensed by AWAC Radio.</p><p></p></li><li><p><strong>&nbsp;Indemnification;</strong></p><p>That you agree to defend, indemnify us from and against all kinds of third party claims and all kinds of liabilities , losses , costs and damage that will result in</p><p>Your breach of this contract.</p><p>Your misuse of the services.</p><p>You alleged or actual infringement of rights of any third party.</p><p></p></li></ol><ol start=\"14\"><li><p><strong>Term and Termination:</strong></p><p>Subject to the terms of this section, this Agreement will remain in effect for as long as you use the Services. You may cancel your account and terminate this Agreement at any time and for any reason by following the instructions outlined in this&nbsp;Listener Support Help Article. We may terminate this Agreement and your access to the Services at any time and for any reason by providing notice to the email address you provided us.&nbsp;Your access to and use of the Services, along with any other rights and licenses granted to you hereunder, will immediately end upon any termination of this Agreement, and you must stop using any and all materials and other similar content owned exclusively by AWAC Radio that you may have in your possession or under your control. You accept that in the event that this Agreement is terminated, we shall not be liable to you for any expenses, losses, damages, or liabilities.</p><p></p></li><li><p><strong>&nbsp;Notices:</strong></p><p>In this service notices may be sent to you. Notices may also be sent to you about products and the services that we provide to the email address that you have provided. When agreeing to the terms you hereby consent to receiving notices.</p><p>The user is responsible for keeping the account information, which includes the email address up to date. The platform will take no responsibility from any consequence which is the result of your outdated, incomplete, or incorrect information posted in the service.</p><p></p></li><li><p><strong>&nbsp;Assignment:</strong></p><p>This agreement may be assigned by AWAC Radio to any agreement or even delegate any of your rights or obligations or any part of it to a third party or any successor of interest without you providing the legal consent.</p><p>This agreement shall be binding and will also insure the benefit of the parties.</p><p></p></li><li><p><strong>&nbsp;Third party beneficiaries:</strong></p><p>Nothing in this Agreement, express or implied, is intended to or will be deemed to confer upon any other person or entity any right, benefit, or remedy of any nature whatsoever under or by reason of this Agreement, with the exception of platform providers through which you download or use applications approved by AWAC Radio.</p><p></p></li><li><p><strong>&nbsp;Disputes and Governing Law:</strong></p><p><strong>Governing Law:</strong></p><p>The laws of the state, excluding its rules on choice of law, shall govern and be applied to this Agreement and any claims relating to or arising therefrom or breach thereof, whether based in contract, tort, or otherwise.</p><p></p></li><li><p><strong>Applicability of Section:</strong></p><p>All disputes that might result from, be related to, or arise out of this Agreement or the Services will be governed by the terms of this section 25, with the following exceptions: Any dispute may, at the option of the claiming party, be resolved in small claims court in Santa Clara County, California, provided that all claims by all parties in the dispute fall under the jurisdiction of the small claims court. If AWAC Radio reasonably believes that you have acted or failed to act in any way that may harm us or any third party, we may seek injunctive or other appropriate relief in any court of competent jurisdiction.</p><p>Furthermore, nothing in this section will ever restrict AWAC Radio ability to look into complaints or reported violations of this Agreement or to take any other steps we deem necessary and appropriate to defend ourselves against claims made against us, including disclosing any suspected illegal activity to law enforcement, regulatory bodies, or other third parties like music rights holders.</p><p></p></li><li><p><strong>Informal Resolution:</strong></p><p>If you have a dispute with us or a related third party arising from, associated with, or connected with this Agreement or the Services, you consent to contact us directly, provide a succinct written description of the dispute, your contact information (including your username, if your dispute relates to an account), and wait thirty (30) days for us to resolve the dispute to your reasonable satisfaction. You may pursue the disagreement in accordance with the arbitration agreement below if good faith conversations under this informal process between you and AWAC Radio do not result in a resolution of the conflict.</p><p></p></li><li><p><strong>Arbitration Clause:</strong></p><p>Any claims which are made by AWAC Radio, claims by the user which have not been resolved by the informal resolution procedure that has been described in Section 25(c). Any dispute arising out of or that is in any way related to or is connected with this agreement must be resolved in an arbitration individually which is binding and has to be administered by the American Arbitration Association in accordance with the rules and regulations of the Commercial Arbitration Rules and Supplementary Procedures for Disputes related to the Consumer. Any judgment on the award that has been given by arbitrators to the parties may be challenged in a court of competent jurisdiction.</p><p>The following will apply to your disputes.</p><p>Federal, State, Local Court except the Arbitrator, not having any authority to resolve any dispute that is related to interpretation, formation and applicability of this agreement. Any claim that any part of it or the agreement as a whole is void will is included in this clause.</p><p>It is not in the power of any arbitrator to conduct any form of collective arbitration nor join or consolidate for or by the individuals.</p><p>With this agreement you hereby revoke all rights that you may to a court excluding small claims court as provided. You hereby revoke any rights you have to challenge our policies in any court, lawsuit or any other proceeding which in any way may be connected with this agreement.</p><p>The arbitration proceedings that may arise due to this agreement shall at all times be confidential between the parties and shall not be used in any manner other than the party using it for exercising their rights, However either party may disclose the existence of such case or its result.</p><p>If required by law.</p><p>To their accountant, lawyer.</p><p>To an arbitrator.</p><p></p></li><li><p><strong>Limitation Clause:</strong></p><p>Any dispute arising out of this agreement regardless of the statutes, law or any cause of action that may arise must at all time be filed in 12 days time. If not then such a case will be considered time barred and it will be as if the party has waived of their right to sue.</p><p></p></li><li><p><strong>Severability:</strong></p><p>In a case where it is found that any&nbsp; clause of this agreement is against the law of the land or governmental agency, such clauses or provisions shall be changed, modified for the reason to be compatible with the law whereas the remaining clauses will remain functional to full extent.</p><p>In case where any clause of the agreement becomes invalid it will in no way affect the validity of the other clauses.</p><p></p></li><li><p><strong>This Agreement:</strong></p><p>This is an exclusive agreement between you and AWAC Radio. Which will supersede any and all prior oral or written communications made between the parties.</p></li></ol>', '/terms-of-service', 'Read our terms of service on AWACRADIO. Terms of service define as the rules, specifications, and requirements for the use of a service.', '2022-03-04 22:45:14', '2023-01-06 17:32:28'),
(6, 'Radio', 'radio-tower', 0, 1, 0, 'Online Radio Stations Free | Listen To Radio Online | AWACRADIO', NULL, '/radio', 'Enjoy listening to online radio stations on AWACRADIO. Search or browse all your favorite genre just in one place.', '2022-03-04 22:45:17', '2023-01-06 17:34:09'),
(7, 'Store', 'shopping', 0, 1, 0, 'AWACRADIO Store | Listen Live Music | New Album Release', NULL, '/store', 'Visit AWACRADIO store to listen live music and explore new album release by top artists. Explore radio station store on AWACRADIO.', '2022-03-04 22:45:18', '2023-01-06 17:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('dexaves281@deitada.com', '$2y$10$OxHpaMO5hZ4qyz.gWLnfker0kxU4Wob0.IKYrLSIdJYiIchupZJH2', '2022-10-03 17:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `payouts`
--

CREATE TABLE `payouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` int(11) NOT NULL,
  `status` varchar(191) NOT NULL,
  `details` text DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payout_methods`
--

CREATE TABLE `payout_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `minimum` int(11) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payout_methods`
--

INSERT INTO `payout_methods` (`id`, `name`, `minimum`, `description`) VALUES
(1, 'PayPal', 5000, 'Enter your PayPal address to receive your payout. Minimum payout amount is $50.'),
(2, 'Perfect Money', 5000, 'Enter your Perfect Money address to receive your payout. Minimum payout amount is 50$.'),
(3, 'Bitcoin', 5000, 'Enter your BTC wallet to receive your payout. Minimum payout amount is equivalent to 50$.'),
(4, 'Bank Transfer', 10000, 'Enter your Bank Transfer details to receive your payout. Minimum payout amount is 100$.');

-- --------------------------------------------------------

--
-- Table structure for table `payout_method_artist`
--

CREATE TABLE `payout_method_artist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` int(11) NOT NULL,
  `payout_method_id` int(11) NOT NULL,
  `payout_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `description`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'Upload songs', '', 3, '2022-03-04 22:45:03', '2022-03-04 22:45:03'),
(2, 'Download songs', 'download songs & podcast episodes.', 3, '2022-03-04 22:45:03', '2022-03-04 22:45:03'),
(3, 'Chat with friends', '', 3, '2022-03-04 22:45:03', '2022-03-04 22:45:03'),
(4, 'Listen with friends', 'Listen with friends to the same song at the same time.', 3, '2022-03-04 22:45:04', '2022-03-04 22:45:04'),
(5, 'Publish songs', 'Ability to change songs privacy to public.', 3, '2022-03-04 22:45:04', '2022-03-04 22:45:04'),
(6, 'Publish playlists', 'Ability to change playlists privacy to public.', 3, '2022-03-04 22:45:04', '2022-03-04 22:45:04'),
(7, 'No ads', 'Does not see advertisements.', 3, '2022-03-04 22:45:04', '2022-03-04 22:45:04'),
(8, 'CED songs(artist)', 'Create, edit and delete songs.', 2, '2022-03-04 22:45:04', '2022-03-04 22:45:04'),
(9, 'CED albums(artist)', 'Create, edit and delete albums.', 2, '2022-03-04 22:45:04', '2022-03-04 22:45:04'),
(10, 'CED podcasts(artist)', 'Create, edit and delete podcasts.', 2, '2022-03-04 22:45:04', '2022-03-04 22:45:04'),
(11, 'CED translations', '', 1, '2022-03-04 22:45:04', '2022-03-04 22:45:04'),
(12, 'contact', '', 1, '2022-03-04 22:45:04', '2022-03-04 22:45:04'),
(13, 'View sales', '', 1, '2022-03-04 22:45:04', '2022-03-04 22:45:04'),
(14, 'View payouts', '', 1, '2022-03-04 22:45:04', '2022-03-04 22:45:04'),
(15, 'Edit appearance', 'Ability to change how the player interface appearance @admin/appearance.', 1, '2022-03-04 22:45:04', '2022-03-04 22:45:04'),
(16, 'Edit settings', 'Change the settings of the application @admin/settings.', 1, '2022-03-04 22:45:04', '2022-03-04 22:45:04'),
(17, 'Edit advertisements', 'Change the advertisements settings.', 1, '2022-03-04 22:45:04', '2022-03-04 22:45:04'),
(18, 'CED pages', '', 1, '2022-03-04 22:45:04', '2022-03-04 22:45:04'),
(19, 'CED radio_stations', '', 1, '2022-03-04 22:45:04', '2022-03-04 22:45:04'),
(20, 'CED plans', '', 1, '2022-03-04 22:45:04', '2022-03-04 22:45:04'),
(21, 'CED subscriptions', '', 1, '2022-03-04 22:45:05', '2022-03-04 22:45:05'),
(22, 'Create users', '', 1, '2022-03-04 22:45:05', '2022-03-04 22:45:05'),
(23, 'Edit users', '', 1, '2022-03-04 22:45:05', '2022-03-04 22:45:05'),
(24, 'Read users', 'Can see the users data.', 1, '2022-03-04 22:45:05', '2022-03-04 22:45:05'),
(25, 'Delete users', '', 1, '2022-03-04 22:45:05', '2022-03-04 22:45:05'),
(26, 'Create artists', '', 1, '2022-03-04 22:45:05', '2022-03-04 22:45:05'),
(27, 'Edit artists', '', 1, '2022-03-04 22:45:05', '2022-03-04 22:45:05'),
(28, 'Read artists', 'Can see the artists data.', 1, '2022-03-04 22:45:05', '2022-03-04 22:45:05'),
(29, 'Delete artists', '', 1, '2022-03-04 22:45:05', '2022-03-04 22:45:05'),
(30, 'CED songs', 'Create, edit and delete songs.', 1, '2022-03-04 22:45:05', '2022-03-04 22:45:05'),
(31, 'CED playlists', 'Create, edit and delete playlists.', 1, '2022-03-04 22:45:05', '2022-03-04 22:45:05'),
(32, 'CED song_genres', 'Create, edit and delete song genres.', 1, '2022-03-04 22:45:05', '2022-03-04 22:45:05'),
(33, 'CED podcast_genres', 'Create, edit and delete podcast genres.', 1, '2022-03-04 22:45:05', '2022-03-04 22:45:05'),
(34, 'CED radio stations', 'Create, edit and delete radio stations.', 1, '2022-03-04 22:45:05', '2022-03-04 22:45:05'),
(35, 'CED albums', 'Create, edit and delete albums.', 1, '2022-03-04 22:45:06', '2022-03-04 22:45:06'),
(36, 'CED podcasts', 'Create, edit and delete podcasts.', 1, '2022-03-04 22:45:06', '2022-03-04 22:45:06'),
(37, 'Read roles', 'Can see the roles and their permissions.', 1, '2022-03-04 22:45:06', '2022-03-04 22:45:06'),
(38, 'Edit roles', 'Edit or Delete role permissions.', 1, '2022-03-04 22:45:06', '2022-03-04 22:45:06'),
(39, 'Edit user roles', 'Edit or Delete roles for a user.', 1, '2022-03-04 22:45:06', '2022-03-04 22:45:06'),
(40, 'Edit user permissions', 'Edit or Delete permissions for a user.', 1, '2022-03-04 22:45:06', '2022-03-04 22:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `upgradable` tinyint(1) NOT NULL DEFAULT 1,
  `badge` varchar(191) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL,
  `free` tinyint(1) NOT NULL DEFAULT 1,
  `currency` varchar(191) NOT NULL,
  `currency_symbol` varchar(191) DEFAULT NULL,
  `interval` varchar(191) NOT NULL,
  `stripe_id` varchar(191) DEFAULT NULL,
  `paypal_id` varchar(191) DEFAULT NULL,
  `interval_count` int(11) NOT NULL,
  `recommended` tinyint(1) NOT NULL,
  `displayed_features` text NOT NULL,
  `storage_space` bigint(20) NOT NULL DEFAULT 100,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `active`, `upgradable`, `badge`, `amount`, `position`, `free`, `currency`, `currency_symbol`, `interval`, `stripe_id`, `paypal_id`, `interval_count`, `recommended`, `displayed_features`, `storage_space`, `created_at`, `updated_at`) VALUES
(1, 'Basic', 1, 1, NULL, 0, 1, 1, 'USD', NULL, 'month', NULL, NULL, 1, 0, '[\"Up to 100MB of storage\",\"Create Playlists & Share\",\"Unlimited Downloads\"]', 100, '2022-03-04 22:45:17', '2023-03-14 21:03:12'),
(2, 'Pro', 1, 1, NULL, 2000, 2, 0, 'USD', '$', 'month', NULL, 'P-0M574446JL1901327MQIKROA', 1, 0, '[]', 197, '2023-03-14 21:02:48', '2023-03-14 21:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `plan_permission`
--

CREATE TABLE `plan_permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_permission`
--

INSERT INTO `plan_permission` (`id`, `plan_id`, `permission_id`) VALUES
(7, 2, 1),
(8, 2, 4),
(9, 2, 5),
(10, 2, 2),
(11, 2, 3),
(12, 2, 6),
(13, 1, 1),
(14, 1, 4),
(15, 1, 5),
(16, 1, 3),
(17, 1, 8),
(18, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `plan_role`
--

CREATE TABLE `plan_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `plan_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan_role`
--

INSERT INTO `plan_role` (`id`, `role_id`, `plan_id`) VALUES
(2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `playings`
--

CREATE TABLE `playings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `song_id` int(11) DEFAULT NULL,
  `playlist` text DEFAULT NULL,
  `radio` text DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `playlist_index` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playings`
--

INSERT INTO `playings` (`id`, `user_id`, `song_id`, `playlist`, `radio`, `genre_id`, `playlist_index`) VALUES
(1, 1, NULL, '', '{\"src\":null,\"title\":\"\",\"album\":\"\",\"artist\":\"\",\"progress\":0,\"duration\":\"-:--\",\"currentTime\":\"0:00\",\"streamEndpoint\":\"https://stream.anywhereanycity.com:8000/radio.mp3\",\"videoCurrentTime\":0,\"isPlaying\":false,\"source_format\":null,\"file_name\":null,\"source\":\"https://stream.anywhereanycity.com:8000/radio.mp3\",\"index\":0,\"type\":\"radio-station\",\"id\":1,\"name\":\"anywhereanycity\",\"cover\":\"https://awacradio.anywhereanycity.com//storage/97/il0DPmGIEOaXmwAHOUgEewyTHkiIgUWH.jpg\",\"thumbnail\":\"https://awacradio.anywhereanycity.com//storage/97/conversions/il0DPmGIEOaXmwAHOUgEewyTHkiIgUWH-thumbnail.jpg\",\"highlight\":true,\"proxy\":true,\"serverType\":\"icecast\",\"statsSource\":\"endpoint\",\"serverURL\":null,\"serverID\":null,\"serverMount\":null,\"serverUsername\":null,\"serverPassword\":null,\"stats\":\"\",\"statsEndpoint\":null,\"interval\":9994,\"created_at\":\"2022-06-15T16:52:17.000000Z\",\"updated_at\":\"2022-09-02T13:06:38.000000Z\"}', 0, 0),
(2, 2, NULL, '', '{\"src\":null,\"title\":\"\",\"album\":\"\",\"artist\":\"\",\"progress\":0,\"duration\":\"-:--\",\"currentTime\":\"0:00\",\"streamEndpoint\":\"https://stream.anywhereanycity.com:8000/radio.mp3\",\"videoCurrentTime\":0,\"isPlaying\":false,\"source_format\":null,\"file_name\":null,\"source\":\"https://stream.anywhereanycity.com:8000/radio.mp3\",\"index\":0,\"type\":\"radio-station\",\"id\":4,\"name\":\"anywhereradio\",\"cover\":\"http://music.anywhereanycity.com//storage/99/Eq1ijyCk6L7DOaayZg2HiC5ldH4FdNc6.jpg\",\"thumbnail\":\"http://music.anywhereanycity.com//storage/99/conversions/Eq1ijyCk6L7DOaayZg2HiC5ldH4FdNc6-thumbnail.jpg\",\"highlight\":true,\"proxy\":true,\"serverType\":\"icecast\",\"statsSource\":\"endpoint\",\"serverURL\":null,\"serverID\":null,\"serverMount\":null,\"serverUsername\":null,\"serverPassword\":null,\"stats\":\"\",\"statsEndpoint\":null,\"interval\":5000,\"created_at\":\"2022-08-18T14:48:08.000000Z\",\"updated_at\":\"2022-08-18T14:48:08.000000Z\"}', 0, 0),
(3, 27, NULL, '', '{\"src\":null,\"title\":\"\",\"album\":\"\",\"artist\":\"\",\"progress\":0,\"duration\":\"-:--\",\"currentTime\":\"0:00\",\"streamEndpoint\":\"https://stream.anywhereanycity.com:8000/radio.mp3\",\"videoCurrentTime\":0,\"isPlaying\":false,\"source_format\":null,\"file_name\":null,\"source\":\"https://stream.anywhereanycity.com:8000/radio.mp3\",\"index\":0,\"type\":\"radio-station\",\"id\":1,\"name\":\"anywhereanycity\",\"cover\":\"https://awacradio.anywhereanycity.com//storage/97/il0DPmGIEOaXmwAHOUgEewyTHkiIgUWH.jpg\",\"thumbnail\":\"https://awacradio.anywhereanycity.com//storage/97/conversions/il0DPmGIEOaXmwAHOUgEewyTHkiIgUWH-thumbnail.jpg\",\"highlight\":true,\"proxy\":true,\"serverType\":\"icecast\",\"statsSource\":\"endpoint\",\"serverURL\":null,\"serverID\":null,\"serverMount\":null,\"serverUsername\":null,\"serverPassword\":null,\"stats\":\"\",\"statsEndpoint\":null,\"interval\":9994,\"created_at\":\"2022-06-15T16:52:17.000000Z\",\"updated_at\":\"2022-09-02T13:06:38.000000Z\"}', 0, 0),
(4, 36, NULL, '', '{\"src\":null,\"title\":\"\",\"album\":\"\",\"artist\":\"\",\"progress\":0,\"duration\":\"-:--\",\"currentTime\":\"0:00\",\"streamEndpoint\":\"https://stream.anywhereanycity.com:8000/radio.mp3\",\"videoCurrentTime\":0,\"isPlaying\":false,\"source_format\":null,\"file_name\":null,\"source\":\"https://stream.anywhereanycity.com:8000/radio.mp3\",\"index\":0,\"type\":\"radio-station\",\"id\":4,\"name\":\"anywhereradio\",\"cover\":\"http://music.anywhereanycity.com//storage/99/Eq1ijyCk6L7DOaayZg2HiC5ldH4FdNc6.jpg\",\"thumbnail\":\"http://music.anywhereanycity.com//storage/99/conversions/Eq1ijyCk6L7DOaayZg2HiC5ldH4FdNc6-thumbnail.jpg\",\"highlight\":true,\"proxy\":true,\"serverType\":\"icecast\",\"statsSource\":\"endpoint\",\"serverURL\":null,\"serverID\":null,\"serverMount\":null,\"serverUsername\":null,\"serverPassword\":null,\"stats\":\"\",\"statsEndpoint\":null,\"interval\":5000,\"created_at\":\"2022-08-18T14:48:08.000000Z\",\"updated_at\":\"2022-08-18T14:48:08.000000Z\"}', 0, 0),
(5, 41, NULL, '[1687504]', '', 0, 0),
(6, 55, NULL, '', '{\"src\":null,\"title\":\"\",\"album\":\"\",\"artist\":\"\",\"progress\":0,\"duration\":\"-:--\",\"currentTime\":\"0:00\",\"streamEndpoint\":\"https://stream.anywhereanycity.com:8000/radio.mp3\",\"videoCurrentTime\":0,\"isPlaying\":false,\"source_format\":null,\"file_name\":null,\"source\":\"https://stream.anywhereanycity.com:8000/radio.mp3\",\"index\":0,\"type\":\"radio-station\",\"id\":3,\"name\":\"station942\",\"cover\":\"http://music.anywhereanycity.com//storage/98/6RBYnYw2s04OqebpDcSDK0woiUk6RYtm.jpg\",\"thumbnail\":\"http://music.anywhereanycity.com//storage/98/conversions/6RBYnYw2s04OqebpDcSDK0woiUk6RYtm-thumbnail.jpg\",\"highlight\":true,\"proxy\":true,\"serverType\":\"icecast\",\"statsSource\":\"endpoint\",\"serverURL\":null,\"serverID\":null,\"serverMount\":null,\"serverUsername\":null,\"serverPassword\":null,\"stats\":\"\",\"statsEndpoint\":null,\"interval\":5000,\"created_at\":\"2022-08-18T14:42:47.000000Z\",\"updated_at\":\"2022-08-18T14:42:47.000000Z\"}', 0, 0),
(7, 20, NULL, '', '{\"src\":null,\"title\":\"\",\"album\":\"\",\"artist\":\"\",\"progress\":0,\"duration\":\"-:--\",\"currentTime\":\"0:00\",\"streamEndpoint\":\"https://stream.anywhereanycity.com:8000/radio.mp3\",\"videoCurrentTime\":0,\"isPlaying\":false,\"source_format\":null,\"file_name\":null,\"source\":\"https://stream.anywhereanycity.com:8000/radio.mp3\",\"index\":0,\"type\":\"radio-station\",\"id\":1,\"name\":\"anywhereanycity\",\"cover\":\"https://awacradio.anywhereanycity.com//storage/97/il0DPmGIEOaXmwAHOUgEewyTHkiIgUWH.jpg\",\"thumbnail\":\"https://awacradio.anywhereanycity.com//storage/97/conversions/il0DPmGIEOaXmwAHOUgEewyTHkiIgUWH-thumbnail.jpg\",\"highlight\":true,\"proxy\":true,\"serverType\":\"icecast\",\"statsSource\":\"endpoint\",\"serverURL\":null,\"serverID\":null,\"serverMount\":null,\"serverUsername\":null,\"serverPassword\":null,\"stats\":\"\",\"statsEndpoint\":null,\"interval\":9994,\"created_at\":\"2022-06-15T16:52:17.000000Z\",\"updated_at\":\"2022-09-02T13:06:38.000000Z\"}', 0, 0),
(8, 19, NULL, '[1687514]', '', 0, 0),
(9, 89, NULL, '', '{\"src\":null,\"title\":\"\",\"album\":\"\",\"artist\":\"\",\"progress\":0,\"duration\":\"-:--\",\"currentTime\":\"0:00\",\"streamEndpoint\":\"https://stream.anywhereanycity.com:8000/radio.mp3\",\"videoCurrentTime\":0,\"isPlaying\":false,\"source_format\":null,\"file_name\":null,\"source\":\"https://stream.anywhereanycity.com:8000/radio.mp3\",\"index\":0,\"type\":\"radio-station\",\"id\":1,\"name\":\"anywhereanycity\",\"cover\":\"https://awacradio.anywhereanycity.com//storage/97/il0DPmGIEOaXmwAHOUgEewyTHkiIgUWH.jpg\",\"thumbnail\":\"https://awacradio.anywhereanycity.com//storage/97/conversions/il0DPmGIEOaXmwAHOUgEewyTHkiIgUWH-thumbnail.jpg\",\"highlight\":true,\"proxy\":true,\"serverType\":\"icecast\",\"statsSource\":\"endpoint\",\"serverURL\":null,\"serverID\":null,\"serverMount\":null,\"serverUsername\":null,\"serverPassword\":null,\"stats\":\"\",\"statsEndpoint\":null,\"interval\":9994,\"created_at\":\"2022-06-15T16:52:17.000000Z\",\"updated_at\":\"2022-09-02T13:06:38.000000Z\"}', 0, 0),
(10, 92, NULL, '[1687511]', '', 0, 0),
(11, 94, NULL, '', '{\"src\":null,\"title\":\"\",\"album\":\"\",\"artist\":\"\",\"progress\":0,\"duration\":\"-:--\",\"currentTime\":\"0:00\",\"streamEndpoint\":\"https://stream.anywhereanycity.com:8000/radio.mp3\",\"videoCurrentTime\":0,\"isPlaying\":false,\"source_format\":null,\"file_name\":null,\"source\":\"https://stream.anywhereanycity.com:8000/radio.mp3\",\"index\":0,\"type\":\"radio-station\",\"id\":1,\"name\":\"anywhereanycity\",\"cover\":\"https://awacradio.anywhereanycity.com//storage/97/il0DPmGIEOaXmwAHOUgEewyTHkiIgUWH.jpg\",\"thumbnail\":\"https://awacradio.anywhereanycity.com//storage/97/conversions/il0DPmGIEOaXmwAHOUgEewyTHkiIgUWH-thumbnail.jpg\",\"highlight\":true,\"proxy\":true,\"serverType\":\"icecast\",\"statsSource\":\"endpoint\",\"serverURL\":null,\"serverID\":null,\"serverMount\":null,\"serverUsername\":null,\"serverPassword\":null,\"stats\":\"\",\"statsEndpoint\":null,\"interval\":9994,\"created_at\":\"2022-06-15T16:52:17.000000Z\",\"updated_at\":\"2022-09-02T13:06:38.000000Z\"}', 0, 0),
(12, 14, NULL, '', '{\"src\":null,\"title\":\"\",\"album\":\"\",\"artist\":\"\",\"progress\":0,\"duration\":\"-:--\",\"currentTime\":\"0:00\",\"streamEndpoint\":\"https://stream.anywhereanycity.com:8000/radio.mp3\",\"videoCurrentTime\":0,\"isPlaying\":false,\"source_format\":null,\"file_name\":null,\"source\":\"https://stream.anywhereanycity.com:8000/radio.mp3\",\"index\":0,\"type\":\"radio-station\",\"id\":1,\"name\":\"anywhereanycity\",\"cover\":\"https://awacradio.anywhereanycity.com//storage/97/il0DPmGIEOaXmwAHOUgEewyTHkiIgUWH.jpg\",\"thumbnail\":\"https://awacradio.anywhereanycity.com//storage/97/conversions/il0DPmGIEOaXmwAHOUgEewyTHkiIgUWH-thumbnail.jpg\",\"highlight\":true,\"proxy\":true,\"serverType\":\"icecast\",\"statsSource\":\"endpoint\",\"serverURL\":null,\"serverID\":null,\"serverMount\":null,\"serverUsername\":null,\"serverPassword\":null,\"stats\":\"\",\"statsEndpoint\":null,\"interval\":9994,\"created_at\":\"2022-06-15T16:52:17.000000Z\",\"updated_at\":\"2022-09-02T13:06:38.000000Z\"}', 0, 0),
(13, 93, NULL, '[1687511]', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `cover` text NOT NULL,
  `created_by` varchar(191) NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `title`, `user_id`, `cover`, `created_by`, `public`, `created_at`, `updated_at`) VALUES
(17415, 'Atul playlist', '1', '', 'admin', 1, '2022-07-12 15:28:54', '2022-07-12 15:28:54'),
(17417, 'New Songs', '69', '', 'user', 1, '2022-12-14 02:21:05', '2022-12-14 02:21:05'),
(17418, 'My Playlist', '89', '', 'user', 1, '2023-02-13 09:26:20', '2023-02-13 09:26:20'),
(17419, 'Special Song', '89', '', 'user', 1, '2023-02-13 09:26:56', '2023-02-13 09:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_song`
--

CREATE TABLE `playlist_song` (
  `id` int(10) UNSIGNED NOT NULL,
  `song_id` varchar(191) NOT NULL,
  `song_origin` varchar(191) NOT NULL,
  `playlist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playlist_song`
--

INSERT INTO `playlist_song` (`id`, `song_id`, `song_origin`, `playlist_id`) VALUES
(1, '1687443', 'local', 17415),
(2, '1687444', 'local', 17415),
(3, '1687445', 'local', 17415);

-- --------------------------------------------------------

--
-- Table structure for table `plays`
--

CREATE TABLE `plays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content_type` varchar(191) NOT NULL,
  `content_id` varchar(191) NOT NULL,
  `content_source` varchar(191) NOT NULL,
  `end_play_expectation` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plays`
--

INSERT INTO `plays` (`id`, `content_type`, `content_id`, `content_source`, `end_play_expectation`, `user_id`, `artist_id`, `created_at`, `updated_at`) VALUES
(4, 'radio-sation', '1687417', 'local', '2022-05-24 22:22:10', 1, NULL, '2022-05-24 21:22:10', '2022-05-24 21:22:10'),
(6, 'radio-sation', '1687418', 'local', '2022-05-24 22:23:15', 1, NULL, '2022-05-24 21:23:15', '2022-05-24 21:23:15'),
(9, 'radio-sation', '1687417', 'local', '2022-05-25 12:35:33', 1, NULL, '2022-05-25 11:35:33', '2022-05-25 11:35:33'),
(18, 'song', '1687423', 'local', '2022-05-25 22:14:46', 1, NULL, '2022-05-25 21:14:46', '2022-05-25 21:14:46'),
(19, 'song', '1687423', 'local', '2022-05-25 22:16:46', 1, NULL, '2022-05-25 21:16:46', '2022-05-25 21:16:46'),
(20, 'song', '1687423', 'local', '2022-05-25 22:16:50', 1, NULL, '2022-05-25 21:16:50', '2022-05-25 21:16:50'),
(22, 'song', '1687423', 'local', '2022-05-25 22:19:26', 1, NULL, '2022-05-25 21:19:26', '2022-05-25 21:19:26'),
(23, 'song', '1687423', 'local', '2022-05-25 22:22:02', 1, NULL, '2022-05-25 21:22:02', '2022-05-25 21:22:02'),
(24, 'song', '1687423', 'local', '2022-05-25 22:23:12', 1, NULL, '2022-05-25 21:23:12', '2022-05-25 21:23:12'),
(25, 'song', '1687423', 'local', '2022-05-25 22:23:14', 1, NULL, '2022-05-25 21:23:14', '2022-05-25 21:23:14'),
(26, 'song', '1687423', 'local', '2022-05-25 22:25:36', 1, NULL, '2022-05-25 21:25:36', '2022-05-25 21:25:36'),
(27, 'song', '1687423', 'local', '2022-05-25 22:25:43', 1, NULL, '2022-05-25 21:25:43', '2022-05-25 21:25:43'),
(28, 'radio-sation', '1687418', 'local', '2022-05-25 22:25:47', 1, NULL, '2022-05-25 21:25:47', '2022-05-25 21:25:47'),
(43, 'radio-sation', '1', 'local', '2022-06-15 21:54:29', 1, NULL, '2022-06-15 20:54:29', '2022-06-15 20:54:29'),
(44, 'radio-sation', '1', 'local', '2022-06-15 21:55:08', 1, NULL, '2022-06-15 20:55:08', '2022-06-15 20:55:08'),
(45, 'radio-sation', '1', 'local', '2022-06-15 21:55:22', 1, NULL, '2022-06-15 20:55:22', '2022-06-15 20:55:22'),
(46, 'radio-sation', '1', 'local', '2022-06-15 21:55:23', 1, NULL, '2022-06-15 20:55:23', '2022-06-15 20:55:23'),
(47, 'radio-sation', '1', 'local', '2022-06-15 21:55:27', 1, NULL, '2022-06-15 20:55:27', '2022-06-15 20:55:27'),
(48, 'radio-sation', '1', 'local', '2022-06-15 21:55:29', 1, NULL, '2022-06-15 20:55:29', '2022-06-15 20:55:29'),
(49, 'radio-sation', '1', 'local', '2022-06-15 21:57:51', 1, NULL, '2022-06-15 20:57:51', '2022-06-15 20:57:51'),
(50, 'radio-sation', '1', 'local', '2022-06-15 22:00:59', 1, NULL, '2022-06-15 21:00:59', '2022-06-15 21:00:59'),
(51, 'radio-sation', '1', '', '2022-06-16 12:36:05', NULL, NULL, '2022-06-16 16:36:05', '2022-06-16 16:36:05'),
(52, 'radio-sation', '1', '', '2022-06-20 17:15:09', NULL, NULL, '2022-06-20 21:15:09', '2022-06-20 21:15:09'),
(53, 'radio-sation', '1', '', '2022-06-21 05:29:47', NULL, NULL, '2022-06-21 09:29:47', '2022-06-21 09:29:47'),
(54, 'radio-sation', '1', '', '2022-06-22 13:12:48', NULL, NULL, '2022-06-22 17:12:48', '2022-06-22 17:12:48'),
(55, 'radio-sation', '1', 'local', '2022-06-26 22:05:00', 1, NULL, '2022-06-26 21:05:00', '2022-06-26 21:05:00'),
(56, 'radio-sation', '1', 'local', '2022-07-07 22:51:53', 2, NULL, '2022-07-07 21:51:53', '2022-07-07 21:51:53'),
(57, 'radio-sation', '1', 'local', '2022-07-07 22:54:55', 2, NULL, '2022-07-07 21:54:55', '2022-07-07 21:54:55'),
(63, 'album', '68789', 'local', '2022-07-12 16:45:40', 1, NULL, '2022-07-12 15:45:40', '2022-07-12 15:45:40'),
(77, 'album', '68789', 'local', '2022-07-12 16:48:59', 1, NULL, '2022-07-12 15:48:59', '2022-07-12 15:48:59'),
(108, 'album', '68789', 'local', '2022-07-14 02:10:44', 2, NULL, '2022-07-14 01:10:44', '2022-07-14 01:10:44'),
(124, 'album', '68790', 'local', '2022-07-14 02:11:13', 2, NULL, '2022-07-14 01:11:13', '2022-07-14 01:11:13'),
(131, 'album', '68790', 'local', '2022-07-14 03:29:44', 2, NULL, '2022-07-14 02:29:44', '2022-07-14 02:29:44'),
(133, 'album', '68789', 'local', '2022-07-14 12:34:24', 2, NULL, '2022-07-14 11:34:24', '2022-07-14 11:34:24'),
(165, 'radio-sation', '1', 'local', '2022-07-29 12:11:49', 2, NULL, '2022-07-29 11:11:49', '2022-07-29 11:11:49'),
(166, 'radio-sation', '1', 'local', '2022-07-29 12:13:15', 2, NULL, '2022-07-29 11:13:15', '2022-07-29 11:13:15'),
(167, 'radio-sation', '1', 'local', '2022-07-29 12:16:54', 1, NULL, '2022-07-29 11:16:54', '2022-07-29 11:16:54'),
(178, 'radio-sation', '1687446', 'local', '2022-08-02 16:13:14', 2, NULL, '2022-08-02 15:13:14', '2022-08-02 15:13:14'),
(182, 'radio-sation', '1687446', 'local', '2022-08-02 16:16:25', 2, NULL, '2022-08-02 15:16:25', '2022-08-02 15:16:25'),
(189, 'radio-sation', '1', 'local', '2022-08-03 09:55:08', 2, NULL, '2022-08-03 08:55:08', '2022-08-03 08:55:08'),
(190, 'radio-sation', '1', 'local', '2022-08-03 09:58:35', 2, NULL, '2022-08-03 08:58:35', '2022-08-03 08:58:35'),
(191, 'radio-sation', '1', 'local', '2022-08-03 09:59:44', 2, NULL, '2022-08-03 08:59:44', '2022-08-03 08:59:44'),
(192, 'radio-sation', '1', 'local', '2022-08-03 10:00:09', 2, NULL, '2022-08-03 09:00:09', '2022-08-03 09:00:09'),
(193, 'radio-sation', '1', 'local', '2022-08-03 10:03:09', 2, NULL, '2022-08-03 09:03:09', '2022-08-03 09:03:09'),
(194, 'radio-sation', '1', 'local', '2022-08-03 10:03:43', 2, NULL, '2022-08-03 09:03:43', '2022-08-03 09:03:43'),
(195, 'radio-sation', '1', 'local', '2022-08-03 10:09:16', 2, NULL, '2022-08-03 09:09:16', '2022-08-03 09:09:16'),
(196, 'radio-sation', '1', 'local', '2022-08-03 10:13:24', 2, NULL, '2022-08-03 09:13:24', '2022-08-03 09:13:24'),
(197, 'radio-sation', '1', 'local', '2022-08-03 10:14:03', 2, NULL, '2022-08-03 09:14:03', '2022-08-03 09:14:03'),
(198, 'radio-sation', '1', 'local', '2022-08-03 10:14:43', 2, NULL, '2022-08-03 09:14:43', '2022-08-03 09:14:43'),
(199, 'radio-sation', '1', 'local', '2022-08-03 10:16:08', 2, NULL, '2022-08-03 09:16:08', '2022-08-03 09:16:08'),
(200, 'radio-sation', '1', 'local', '2022-08-03 10:17:57', 2, NULL, '2022-08-03 09:17:57', '2022-08-03 09:17:57'),
(201, 'radio-sation', '1', '', '2022-08-03 05:53:02', NULL, NULL, '2022-08-03 09:53:02', '2022-08-03 09:53:02'),
(202, 'radio-sation', '1', 'local', '2022-08-03 11:03:03', 2, NULL, '2022-08-03 10:03:03', '2022-08-03 10:03:03'),
(203, 'radio-sation', '1', 'local', '2022-08-03 11:09:53', 2, NULL, '2022-08-03 10:09:53', '2022-08-03 10:09:53'),
(204, 'radio-sation', '1', 'local', '2022-08-03 11:13:38', 2, NULL, '2022-08-03 10:13:38', '2022-08-03 10:13:38'),
(205, 'radio-sation', '1', 'local', '2022-08-03 11:44:48', 1, NULL, '2022-08-03 10:44:48', '2022-08-03 10:44:48'),
(206, 'radio-sation', '1', 'local', '2022-08-03 12:01:55', 2, NULL, '2022-08-03 11:01:55', '2022-08-03 11:01:55'),
(207, 'radio-sation', '1', 'local', '2022-08-03 12:02:32', 2, NULL, '2022-08-03 11:02:32', '2022-08-03 11:02:32'),
(208, 'radio-sation', '1', 'local', '2022-08-03 12:27:19', 2, NULL, '2022-08-03 11:27:19', '2022-08-03 11:27:19'),
(209, 'radio-sation', '1', 'local', '2022-08-03 12:33:27', 2, NULL, '2022-08-03 11:33:27', '2022-08-03 11:33:27'),
(210, 'radio-sation', '1', 'local', '2022-08-03 12:38:00', 2, NULL, '2022-08-03 11:38:00', '2022-08-03 11:38:00'),
(211, 'radio-sation', '1', 'local', '2022-08-03 13:27:38', 2, NULL, '2022-08-03 12:27:38', '2022-08-03 12:27:38'),
(212, 'radio-sation', '1', 'local', '2022-08-03 15:01:25', 2, NULL, '2022-08-03 14:01:25', '2022-08-03 14:01:25'),
(213, 'album', '68790', 'local', '2022-08-03 15:01:42', 1, NULL, '2022-08-03 14:01:42', '2022-08-03 14:01:42'),
(216, 'radio-sation', '1', '', '2022-08-03 11:25:03', NULL, NULL, '2022-08-03 15:25:03', '2022-08-03 15:25:03'),
(217, 'radio-sation', '1', 'local', '2022-08-03 16:33:01', 2, NULL, '2022-08-03 15:33:01', '2022-08-03 15:33:01'),
(218, 'radio-sation', '1', 'local', '2022-08-03 16:35:36', 2, NULL, '2022-08-03 15:35:36', '2022-08-03 15:35:36'),
(219, 'radio-sation', '1', 'local', '2022-08-03 16:40:55', 2, NULL, '2022-08-03 15:40:55', '2022-08-03 15:40:55'),
(220, 'radio-sation', '1', 'local', '2022-08-03 16:51:20', 2, NULL, '2022-08-03 15:51:20', '2022-08-03 15:51:20'),
(221, 'radio-sation', '1', 'local', '2022-08-03 16:51:36', 2, NULL, '2022-08-03 15:51:36', '2022-08-03 15:51:36'),
(222, 'radio-sation', '1', 'local', '2022-08-03 16:51:45', 2, NULL, '2022-08-03 15:51:45', '2022-08-03 15:51:45'),
(223, 'radio-sation', '1', 'local', '2022-08-03 16:56:24', 2, NULL, '2022-08-03 15:56:24', '2022-08-03 15:56:24'),
(224, 'radio-sation', '1', 'local', '2022-08-03 16:56:44', 2, NULL, '2022-08-03 15:56:44', '2022-08-03 15:56:44'),
(225, 'radio-sation', '1', 'local', '2022-08-03 16:57:03', 2, NULL, '2022-08-03 15:57:03', '2022-08-03 15:57:03'),
(226, 'radio-sation', '1', 'local', '2022-08-03 17:15:06', 2, NULL, '2022-08-03 16:15:06', '2022-08-03 16:15:06'),
(227, 'radio-sation', '1', 'local', '2022-08-03 17:32:16', 2, NULL, '2022-08-03 16:32:16', '2022-08-03 16:32:16'),
(228, 'radio-sation', '1', 'local', '2022-08-03 17:34:38', 2, NULL, '2022-08-03 16:34:38', '2022-08-03 16:34:38'),
(229, 'radio-sation', '1', 'local', '2022-08-03 17:35:49', 2, NULL, '2022-08-03 16:35:49', '2022-08-03 16:35:49'),
(230, 'radio-sation', '1', 'local', '2022-08-03 17:48:29', 2, NULL, '2022-08-03 16:48:29', '2022-08-03 16:48:29'),
(231, 'radio-sation', '1', 'local', '2022-08-03 17:48:59', 2, NULL, '2022-08-03 16:48:59', '2022-08-03 16:48:59'),
(232, 'radio-sation', '1', 'local', '2022-08-03 17:56:36', 2, NULL, '2022-08-03 16:56:36', '2022-08-03 16:56:36'),
(233, 'radio-sation', '1', 'local', '2022-08-03 18:14:16', 2, NULL, '2022-08-03 17:14:16', '2022-08-03 17:14:16'),
(234, 'radio-sation', '1', 'local', '2022-08-03 18:14:18', 2, NULL, '2022-08-03 17:14:18', '2022-08-03 17:14:18'),
(235, 'radio-sation', '1', 'local', '2022-08-03 18:27:54', 2, NULL, '2022-08-03 17:27:54', '2022-08-03 17:27:54'),
(236, 'radio-sation', '1', 'local', '2022-08-03 18:29:15', 2, NULL, '2022-08-03 17:29:15', '2022-08-03 17:29:15'),
(237, 'radio-sation', '1', 'local', '2022-08-03 18:32:40', 2, NULL, '2022-08-03 17:32:40', '2022-08-03 17:32:40'),
(238, 'radio-sation', '1', 'local', '2022-08-03 18:33:04', 2, NULL, '2022-08-03 17:33:04', '2022-08-03 17:33:04'),
(239, 'radio-sation', '1', 'local', '2022-08-03 18:38:19', 2, NULL, '2022-08-03 17:38:19', '2022-08-03 17:38:19'),
(240, 'radio-sation', '1', 'local', '2022-08-03 18:43:59', 2, NULL, '2022-08-03 17:43:59', '2022-08-03 17:43:59'),
(241, 'radio-sation', '1', 'local', '2022-08-03 18:45:09', 2, NULL, '2022-08-03 17:45:09', '2022-08-03 17:45:09'),
(242, 'radio-sation', '1', 'local', '2022-08-03 18:45:22', 2, NULL, '2022-08-03 17:45:22', '2022-08-03 17:45:22'),
(243, 'radio-sation', '1', 'local', '2022-08-03 18:50:14', 2, NULL, '2022-08-03 17:50:14', '2022-08-03 17:50:14'),
(244, 'radio-sation', '1687446', 'local', '2022-08-03 20:08:35', 2, NULL, '2022-08-03 19:08:35', '2022-08-03 19:08:35'),
(245, 'radio-sation', '1687446', 'local', '2022-08-03 20:09:14', 2, NULL, '2022-08-03 19:09:14', '2022-08-03 19:09:14'),
(246, 'radio-sation', '1', 'local', '2022-08-03 20:09:19', 2, NULL, '2022-08-03 19:09:19', '2022-08-03 19:09:19'),
(248, 'radio-sation', '1687446', 'local', '2022-08-03 20:09:51', 2, NULL, '2022-08-03 19:09:51', '2022-08-03 19:09:51'),
(249, 'album', '68789', 'local', '2022-08-03 20:10:05', 2, NULL, '2022-08-03 19:10:05', '2022-08-03 19:10:05'),
(282, 'radio-sation', '1', '', '2022-08-04 04:57:31', NULL, NULL, '2022-08-04 08:57:31', '2022-08-04 08:57:31'),
(283, 'radio-sation', '1687446', 'local', '2022-08-05 13:41:47', 2, NULL, '2022-08-05 12:41:47', '2022-08-05 12:41:47'),
(287, 'radio-sation', '1', '', '2022-08-05 08:44:12', NULL, NULL, '2022-08-05 12:44:12', '2022-08-05 12:44:12'),
(288, 'radio-sation', '1687446', 'local', '2022-08-05 14:45:24', 2, NULL, '2022-08-05 13:45:24', '2022-08-05 13:45:24'),
(289, 'radio-sation', '1', '', '2022-08-05 09:52:28', NULL, NULL, '2022-08-05 13:52:28', '2022-08-05 13:52:28'),
(290, 'radio-sation', '1', 'local', '2022-08-05 15:55:54', 2, NULL, '2022-08-05 14:55:54', '2022-08-05 14:55:54'),
(291, 'radio-sation', '1687446', '', '2022-08-05 11:43:20', NULL, NULL, '2022-08-05 15:43:20', '2022-08-05 15:43:20'),
(292, 'radio-sation', '1687446', 'local', '2022-08-06 20:12:42', 2, NULL, '2022-08-06 19:12:42', '2022-08-06 19:12:42'),
(293, 'radio-sation', '1687446', 'local', '2022-08-08 15:49:21', 2, NULL, '2022-08-08 14:49:21', '2022-08-08 14:49:21'),
(299, 'radio-sation', '1', 'local', '2022-08-09 14:27:50', 27, NULL, '2022-08-09 13:27:50', '2022-08-09 13:27:50'),
(300, 'radio-sation', '1687446', 'local', '2022-08-09 18:00:45', 2, NULL, '2022-08-09 17:00:45', '2022-08-09 17:00:45'),
(302, 'radio-sation', '1', 'local', '2022-08-11 13:51:52', 27, NULL, '2022-08-11 12:51:52', '2022-08-11 12:51:52'),
(303, 'radio-sation', '1', 'local', '2022-08-11 21:03:50', 2, NULL, '2022-08-11 20:03:50', '2022-08-11 20:03:50'),
(304, 'radio-sation', '1687446', 'local', '2022-08-17 11:45:52', 2, NULL, '2022-08-17 10:45:52', '2022-08-17 10:45:52'),
(307, 'radio-sation', '1687446', 'local', '2022-08-18 08:25:54', 2, NULL, '2022-08-18 07:25:54', '2022-08-18 07:25:54'),
(308, 'radio-sation', '1687446', 'local', '2022-08-18 08:26:30', 2, NULL, '2022-08-18 07:26:30', '2022-08-18 07:26:30'),
(309, 'radio-sation', '1', 'local', '2022-08-18 08:32:40', 2, NULL, '2022-08-18 07:32:40', '2022-08-18 07:32:40'),
(310, 'radio-sation', '1', 'local', '2022-08-18 08:33:20', 2, NULL, '2022-08-18 07:33:20', '2022-08-18 07:33:20'),
(311, 'radio-sation', '1687446', 'local', '2022-08-18 16:12:54', 27, NULL, '2022-08-18 15:12:54', '2022-08-18 15:12:54'),
(312, 'radio-sation', '1687446', 'local', '2022-08-18 16:12:55', 27, NULL, '2022-08-18 15:12:55', '2022-08-18 15:12:55'),
(313, 'radio-sation', '1687446', 'local', '2022-08-18 16:15:39', 2, NULL, '2022-08-18 15:15:39', '2022-08-18 15:15:39'),
(314, 'radio-sation', '1687446', 'local', '2022-08-18 16:16:51', 2, NULL, '2022-08-18 15:16:51', '2022-08-18 15:16:51'),
(316, 'radio-sation', '1', 'local', '2022-08-18 16:17:25', 2, NULL, '2022-08-18 15:17:25', '2022-08-18 15:17:25'),
(317, 'radio-sation', '1', 'local', '2022-08-18 16:25:20', 27, NULL, '2022-08-18 15:25:20', '2022-08-18 15:25:20'),
(318, 'radio-sation', '1687446', 'local', '2022-08-18 16:53:32', 27, NULL, '2022-08-18 15:53:32', '2022-08-18 15:53:32'),
(322, 'radio-sation', '1687446', 'local', '2022-08-18 17:20:13', 27, NULL, '2022-08-18 16:20:13', '2022-08-18 16:20:13'),
(326, 'radio-sation', '1687446', 'local', '2022-08-18 17:32:40', 27, NULL, '2022-08-18 16:32:40', '2022-08-18 16:32:40'),
(335, 'radio-sation', '1687446', 'local', '2022-08-18 17:41:36', 27, NULL, '2022-08-18 16:41:36', '2022-08-18 16:41:36'),
(341, 'album', '68791', 'local', '2022-08-18 17:42:51', 27, NULL, '2022-08-18 16:42:51', '2022-08-18 16:42:51'),
(342, 'album', '68792', 'local', '2022-08-18 17:42:52', 27, NULL, '2022-08-18 16:42:52', '2022-08-18 16:42:52'),
(343, 'radio-sation', '1687446', 'local', '2022-08-18 17:42:52', 27, NULL, '2022-08-18 16:42:52', '2022-08-18 16:42:52'),
(350, 'radio-sation', '1687446', 'local', '2022-08-18 17:49:47', 27, NULL, '2022-08-18 16:49:47', '2022-08-18 16:49:47'),
(356, 'radio-sation', '2', 'local', '2022-08-18 18:43:08', 1, NULL, '2022-08-18 17:43:08', '2022-08-18 17:43:08'),
(357, 'radio-sation', '2', 'local', '2022-08-18 19:23:19', 27, NULL, '2022-08-18 18:23:19', '2022-08-18 18:23:19'),
(358, 'radio-sation', '2', 'local', '2022-08-18 19:27:04', 27, NULL, '2022-08-18 18:27:04', '2022-08-18 18:27:04'),
(359, 'radio-sation', '1', 'local', '2022-08-18 19:40:51', 1, NULL, '2022-08-18 18:40:51', '2022-08-18 18:40:51'),
(360, 'radio-sation', '1', 'local', '2022-08-18 19:40:51', 1, NULL, '2022-08-18 18:40:51', '2022-08-18 18:40:51'),
(361, 'radio-sation', '1', 'local', '2022-08-18 19:48:52', 1, NULL, '2022-08-18 18:48:52', '2022-08-18 18:48:52'),
(362, 'radio-sation', '3', 'local', '2022-08-18 19:48:52', 1, NULL, '2022-08-18 18:48:52', '2022-08-18 18:48:52'),
(363, 'radio-sation', '1', 'local', '2022-08-18 21:03:41', 1, NULL, '2022-08-18 20:03:41', '2022-08-18 20:03:41'),
(365, 'radio-sation', '1687446', 'local', '2022-08-18 21:19:30', 1, NULL, '2022-08-18 20:19:30', '2022-08-18 20:19:30'),
(367, 'radio-sation', '2', 'local', '2022-08-18 21:38:24', 1, NULL, '2022-08-18 20:38:24', '2022-08-18 20:38:24'),
(369, 'radio-sation', '1687446', 'local', '2022-08-19 13:56:39', 1, NULL, '2022-08-19 12:56:39', '2022-08-19 12:56:39'),
(372, 'album', '68789', 'local', '2022-08-19 13:58:49', 1, NULL, '2022-08-19 12:58:49', '2022-08-19 12:58:49'),
(402, 'radio-sation', '1687446', 'local', '2022-08-19 14:05:26', 1, NULL, '2022-08-19 13:05:26', '2022-08-19 13:05:26'),
(403, 'radio-sation', '1687446', 'local', '2022-08-19 14:15:02', 1, NULL, '2022-08-19 13:15:02', '2022-08-19 13:15:02'),
(404, 'radio-sation', '1687446', 'local', '2022-08-19 14:31:07', 1, NULL, '2022-08-19 13:31:07', '2022-08-19 13:31:07'),
(405, 'radio-sation', '1687446', 'local', '2022-08-19 14:32:12', 1, NULL, '2022-08-19 13:32:12', '2022-08-19 13:32:12'),
(406, 'radio-sation', '1687447', 'local', '2022-08-19 14:51:50', 1, NULL, '2022-08-19 13:51:50', '2022-08-19 13:51:50'),
(407, 'radio-sation', '1687447', 'local', '2022-08-19 14:52:48', 1, NULL, '2022-08-19 13:52:48', '2022-08-19 13:52:48'),
(408, 'radio-sation', '1687447', 'local', '2022-08-19 15:01:46', 1, NULL, '2022-08-19 14:01:46', '2022-08-19 14:01:46'),
(409, 'radio-sation', '1687447', 'local', '2022-08-19 15:02:43', 1, NULL, '2022-08-19 14:02:43', '2022-08-19 14:02:43'),
(410, 'radio-sation', '1687447', 'local', '2022-08-19 15:03:12', 1, NULL, '2022-08-19 14:03:12', '2022-08-19 14:03:12'),
(411, 'radio-sation', '1687447', 'local', '2022-08-19 15:03:59', 1, NULL, '2022-08-19 14:03:59', '2022-08-19 14:03:59'),
(412, 'radio-sation', '1687447', 'local', '2022-08-19 15:04:48', 1, NULL, '2022-08-19 14:04:48', '2022-08-19 14:04:48'),
(413, 'radio-sation', '1687447', 'local', '2022-08-19 15:06:11', 1, NULL, '2022-08-19 14:06:11', '2022-08-19 14:06:11'),
(414, 'radio-sation', '1687466', 'local', '2022-08-19 15:54:19', 1, NULL, '2022-08-19 14:54:19', '2022-08-19 14:54:19'),
(415, 'radio-sation', '1687467', 'local', '2022-08-19 15:56:46', 1, NULL, '2022-08-19 14:56:46', '2022-08-19 14:56:46'),
(416, 'radio-sation', '1687467', 'local', '2022-08-19 15:57:15', 1, NULL, '2022-08-19 14:57:15', '2022-08-19 14:57:15'),
(417, 'radio-sation', '1687467', 'local', '2022-08-19 15:58:14', 1, NULL, '2022-08-19 14:58:14', '2022-08-19 14:58:14'),
(418, 'radio-sation', '1687490', 'local', '2022-08-19 16:58:29', 1, NULL, '2022-08-19 15:58:29', '2022-08-19 15:58:29'),
(419, 'radio-sation', '1687490', 'local', '2022-08-19 16:58:52', 1, NULL, '2022-08-19 15:58:52', '2022-08-19 15:58:52'),
(420, 'radio-sation', '1687490', 'local', '2022-08-19 16:59:47', 1, NULL, '2022-08-19 15:59:47', '2022-08-19 15:59:47'),
(422, 'radio-sation', '1687492', 'local', '2022-08-19 17:09:09', 1, NULL, '2022-08-19 16:09:09', '2022-08-19 16:09:09'),
(423, 'radio-sation', '2', 'local', '2022-08-19 17:09:21', 1, NULL, '2022-08-19 16:09:21', '2022-08-19 16:09:21'),
(424, 'radio-sation', '3', 'local', '2022-08-19 17:09:34', 1, NULL, '2022-08-19 16:09:34', '2022-08-19 16:09:34'),
(425, 'radio-sation', '1', 'local', '2022-08-19 17:09:37', 1, NULL, '2022-08-19 16:09:37', '2022-08-19 16:09:37'),
(428, 'radio-sation', '1687447', 'local', '2022-08-24 17:13:46', 1, NULL, '2022-08-24 16:13:46', '2022-08-24 16:13:46'),
(435, 'album', '68789', 'local', '2022-08-26 21:23:39', 2, NULL, '2022-08-26 20:23:39', '2022-08-26 20:23:39'),
(510, 'radio-sation', '2', 'local', '2022-08-26 21:43:12', 2, NULL, '2022-08-26 20:43:12', '2022-08-26 20:43:12'),
(511, 'radio-sation', '2', 'local', '2022-08-26 21:43:17', 2, NULL, '2022-08-26 20:43:17', '2022-08-26 20:43:17'),
(513, 'radio-sation', '1687446', '', '2022-08-29 12:29:07', NULL, NULL, '2022-08-29 16:29:07', '2022-08-29 16:29:07'),
(514, 'radio-sation', '1687446', '', '2022-08-29 12:29:37', NULL, NULL, '2022-08-29 16:29:37', '2022-08-29 16:29:37'),
(517, 'radio-sation', '1', 'local', '2022-08-29 17:31:11', 2, NULL, '2022-08-29 16:31:11', '2022-08-29 16:31:11'),
(518, 'radio-sation', '1', '', '2022-08-29 12:31:15', NULL, NULL, '2022-08-29 16:31:15', '2022-08-29 16:31:15'),
(519, 'radio-sation', '2', 'local', '2022-08-29 17:31:27', 2, NULL, '2022-08-29 16:31:27', '2022-08-29 16:31:27'),
(520, 'radio-sation', '3', 'local', '2022-08-29 17:31:32', 2, NULL, '2022-08-29 16:31:32', '2022-08-29 16:31:32'),
(521, 'radio-sation', '4', 'local', '2022-08-29 17:33:02', 2, NULL, '2022-08-29 16:33:02', '2022-08-29 16:33:02'),
(522, 'radio-sation', '3', 'local', '2022-08-29 17:33:16', 2, NULL, '2022-08-29 16:33:16', '2022-08-29 16:33:16'),
(523, 'radio-sation', '2', '', '2022-08-29 12:34:20', NULL, NULL, '2022-08-29 16:34:20', '2022-08-29 16:34:20'),
(526, 'radio-sation', '1687446', '', '2022-08-29 14:02:26', NULL, NULL, '2022-08-29 18:02:26', '2022-08-29 18:02:26'),
(529, 'radio-sation', '1687446', '', '2022-08-29 14:02:37', NULL, NULL, '2022-08-29 18:02:37', '2022-08-29 18:02:37'),
(530, 'album', '68791', '', '2022-08-29 14:02:37', NULL, NULL, '2022-08-29 18:02:37', '2022-08-29 18:02:37'),
(531, 'album', '68792', '', '2022-08-29 14:02:38', NULL, NULL, '2022-08-29 18:02:38', '2022-08-29 18:02:38'),
(533, 'album', '68789', '', '2022-08-29 14:02:39', NULL, NULL, '2022-08-29 18:02:39', '2022-08-29 18:02:39'),
(1511, 'radio-sation', '1687446', '', '2022-08-30 17:43:59', NULL, NULL, '2022-08-30 21:43:59', '2022-08-30 21:43:59'),
(1513, 'radio-sation', '3', '', '2022-08-30 17:44:28', NULL, NULL, '2022-08-30 21:44:28', '2022-08-30 21:44:28'),
(1514, 'radio-sation', '2', '', '2022-08-31 06:31:32', NULL, NULL, '2022-08-31 10:31:32', '2022-08-31 10:31:32'),
(1515, 'radio-sation', '1', '', '2022-08-31 06:31:32', NULL, NULL, '2022-08-31 10:31:32', '2022-08-31 10:31:32'),
(1516, 'radio-sation', '1687446', '', '2022-09-01 17:43:12', NULL, NULL, '2022-09-01 21:43:12', '2022-09-01 21:43:12'),
(1518, 'radio-sation', '1687447', 'local', '2022-09-02 14:47:12', 2, NULL, '2022-09-02 13:47:12', '2022-09-02 13:47:12'),
(1519, 'radio-sation', '1687446', 'local', '2022-09-02 14:48:12', 2, NULL, '2022-09-02 13:48:12', '2022-09-02 13:48:12'),
(1520, 'radio-sation', '1687446', 'local', '2022-09-02 14:48:12', 2, NULL, '2022-09-02 13:48:12', '2022-09-02 13:48:12'),
(1521, 'radio-sation', '1687447', 'local', '2022-09-02 14:56:19', 2, NULL, '2022-09-02 13:56:19', '2022-09-02 13:56:19'),
(1522, 'radio-sation', '1687446', 'local', '2022-09-02 14:56:27', 2, NULL, '2022-09-02 13:56:27', '2022-09-02 13:56:27'),
(1526, 'radio-sation', '1687447', 'local', '2022-09-02 15:03:36', 2, NULL, '2022-09-02 14:03:36', '2022-09-02 14:03:36'),
(1527, 'album', '68790', 'local', '2022-09-02 15:04:00', 2, NULL, '2022-09-02 14:04:00', '2022-09-02 14:04:00'),
(1530, 'radio-sation', '1687447', 'local', '2022-09-02 15:19:19', 2, NULL, '2022-09-02 14:19:19', '2022-09-02 14:19:19'),
(1532, 'song', '1687503', 'local', '2022-09-02 15:14:00', 2, NULL, '2022-09-02 15:12:08', '2022-09-02 15:12:08'),
(1533, 'song', '1687497', 'local', '2022-09-02 15:17:02', 2, NULL, '2022-09-02 15:15:36', '2022-09-02 15:15:36'),
(1534, 'radio-sation', '1', 'local', '2022-09-02 16:15:37', 2, NULL, '2022-09-02 15:15:37', '2022-09-02 15:15:37'),
(1535, 'radio-sation', '3', 'local', '2022-09-02 16:16:18', 2, NULL, '2022-09-02 15:16:18', '2022-09-02 15:16:18'),
(1536, 'radio-sation', '1', 'local', '2022-09-02 18:02:04', 2, NULL, '2022-09-02 17:02:04', '2022-09-02 17:02:04'),
(1537, 'radio-sation', '1', 'local', '2022-09-02 18:05:30', 2, NULL, '2022-09-02 17:05:30', '2022-09-02 17:05:30'),
(1538, 'radio-sation', '1', 'local', '2022-09-02 18:05:36', 2, NULL, '2022-09-02 17:05:36', '2022-09-02 17:05:36'),
(1539, 'radio-sation', '1', 'local', '2022-09-02 18:05:40', 2, NULL, '2022-09-02 17:05:40', '2022-09-02 17:05:40'),
(1540, 'radio-sation', '1', 'local', '2022-09-02 18:05:43', 2, NULL, '2022-09-02 17:05:43', '2022-09-02 17:05:43'),
(1541, 'radio-sation', '2', 'local', '2022-09-02 18:06:08', 2, NULL, '2022-09-02 17:06:08', '2022-09-02 17:06:08'),
(1542, 'radio-sation', '1', 'local', '2022-09-02 18:07:20', 2, NULL, '2022-09-02 17:07:20', '2022-09-02 17:07:20'),
(1543, 'radio-sation', '1', '', '2022-09-02 13:07:22', NULL, NULL, '2022-09-02 17:07:22', '2022-09-02 17:07:22'),
(1544, 'radio-sation', '3', '', '2022-09-02 13:07:42', NULL, NULL, '2022-09-02 17:07:42', '2022-09-02 17:07:42'),
(1545, 'radio-sation', '4', '', '2022-09-02 13:07:51', NULL, NULL, '2022-09-02 17:07:51', '2022-09-02 17:07:51'),
(1546, 'radio-sation', '2', '', '2022-09-02 13:08:10', NULL, NULL, '2022-09-02 17:08:10', '2022-09-02 17:08:10'),
(1547, 'radio-sation', '1', 'local', '2022-09-03 11:32:07', 1, NULL, '2022-09-03 10:32:07', '2022-09-03 10:32:07'),
(1548, 'radio-sation', '2', 'local', '2022-09-03 11:32:39', 1, NULL, '2022-09-03 10:32:39', '2022-09-03 10:32:39'),
(1549, 'radio-sation', '2', 'local', '2022-09-05 14:58:44', 2, NULL, '2022-09-05 13:58:44', '2022-09-05 13:58:44'),
(1550, 'radio-sation', '1', 'local', '2022-09-05 14:59:51', 2, NULL, '2022-09-05 13:59:51', '2022-09-05 13:59:51'),
(1551, 'song', '1687501', 'local', '2022-09-08 04:13:48', 2, NULL, '2022-09-08 03:13:48', '2022-09-08 03:13:48'),
(1552, 'song', '1687501', 'local', '2022-09-10 07:47:15', 2, NULL, '2022-09-10 06:47:15', '2022-09-10 06:47:15'),
(1553, 'album', '68789', 'local', '2022-09-10 07:48:38', 34, NULL, '2022-09-10 06:48:38', '2022-09-10 06:48:38'),
(1554, 'album', '68791', 'local', '2022-09-10 07:48:43', 34, NULL, '2022-09-10 06:48:43', '2022-09-10 06:48:43'),
(1555, 'album', '68789', 'local', '2022-09-10 07:48:47', 2, NULL, '2022-09-10 06:48:47', '2022-09-10 06:48:47'),
(1556, 'album', '68791', 'local', '2022-09-10 07:48:56', 2, NULL, '2022-09-10 06:48:56', '2022-09-10 06:48:56'),
(1557, 'radio-sation', '1', 'local', '2022-09-10 07:49:11', 2, NULL, '2022-09-10 06:49:11', '2022-09-10 06:49:11'),
(1558, 'song', '1687501', 'local', '2022-09-14 08:21:37', 2, NULL, '2022-09-14 07:21:37', '2022-09-14 07:21:37'),
(1559, 'album', '68789', 'local', '2022-09-14 08:21:45', 2, NULL, '2022-09-14 07:21:45', '2022-09-14 07:21:45'),
(1560, 'album', '68791', 'local', '2022-09-14 08:21:49', 2, NULL, '2022-09-14 07:21:49', '2022-09-14 07:21:49'),
(1561, 'radio-sation', '1', 'local', '2022-09-14 08:22:02', 2, NULL, '2022-09-14 07:22:02', '2022-09-14 07:22:02'),
(1562, 'radio-sation', '2', 'local', '2022-09-14 08:22:05', 2, NULL, '2022-09-14 07:22:05', '2022-09-14 07:22:05'),
(1563, 'radio-sation', '3', 'local', '2022-09-14 08:22:07', 2, NULL, '2022-09-14 07:22:07', '2022-09-14 07:22:07'),
(1564, 'radio-sation', '4', 'local', '2022-09-14 08:22:10', 2, NULL, '2022-09-14 07:22:10', '2022-09-14 07:22:10'),
(1565, 'radio-sation', '1', '', '2022-09-14 04:20:45', NULL, NULL, '2022-09-14 08:20:45', '2022-09-14 08:20:45'),
(1566, 'song', '1687503', 'local', '2022-09-14 08:59:16', 36, NULL, '2022-09-14 08:57:24', '2022-09-14 08:57:24'),
(1567, 'song', '1687499', 'local', '2022-09-14 09:57:53', 36, NULL, '2022-09-14 08:57:53', '2022-09-14 08:57:53'),
(1568, 'album', '68792', 'local', '2022-09-14 09:58:05', 36, NULL, '2022-09-14 08:58:05', '2022-09-14 08:58:05'),
(1569, 'album', '68790', 'local', '2022-09-14 09:58:12', 36, NULL, '2022-09-14 08:58:12', '2022-09-14 08:58:12'),
(1570, 'song', '1687498', 'local', '2022-09-14 09:59:17', 36, NULL, '2022-09-14 08:59:17', '2022-09-14 08:59:17'),
(1571, 'album', '68792', 'local', '2022-09-14 10:01:10', 36, NULL, '2022-09-14 09:01:10', '2022-09-14 09:01:10'),
(1572, 'album', '68792', 'local', '2022-09-14 10:01:25', 36, NULL, '2022-09-14 09:01:25', '2022-09-14 09:01:25'),
(1573, 'album', '68792', 'local', '2022-09-14 10:01:49', 36, NULL, '2022-09-14 09:01:49', '2022-09-14 09:01:49'),
(1574, 'radio-sation', '1', 'local', '2022-09-14 11:56:36', 36, NULL, '2022-09-14 10:56:36', '2022-09-14 10:56:36'),
(1575, 'radio-sation', '3', 'local', '2022-09-14 11:56:39', 36, NULL, '2022-09-14 10:56:39', '2022-09-14 10:56:39'),
(1576, 'radio-sation', '4', 'local', '2022-09-14 11:56:41', 36, NULL, '2022-09-14 10:56:41', '2022-09-14 10:56:41'),
(1577, 'song', '1687501', 'local', '2022-09-14 12:12:04', 36, NULL, '2022-09-14 11:12:04', '2022-09-14 11:12:04'),
(1579, 'song', '1687499', 'local', '2022-09-14 11:23:10', 36, NULL, '2022-09-14 11:19:56', '2022-09-14 11:19:56'),
(1581, 'song', '1687499', 'local', '2022-09-14 12:45:10', 36, NULL, '2022-09-14 11:45:10', '2022-09-14 11:45:10'),
(1582, 'song', '1687498', 'local', '2022-09-14 12:45:14', 36, NULL, '2022-09-14 11:45:14', '2022-09-14 11:45:14'),
(1583, 'radio-sation', '2', 'local', '2022-09-14 12:45:29', 36, NULL, '2022-09-14 11:45:29', '2022-09-14 11:45:29'),
(1584, 'radio-sation', '3', 'local', '2022-09-14 12:45:31', 36, NULL, '2022-09-14 11:45:31', '2022-09-14 11:45:31'),
(1585, 'radio-sation', '4', 'local', '2022-09-14 12:45:32', 36, NULL, '2022-09-14 11:45:32', '2022-09-14 11:45:32'),
(1586, 'radio-sation', '2', 'local', '2022-09-14 12:45:36', 36, NULL, '2022-09-14 11:45:36', '2022-09-14 11:45:36'),
(1587, 'radio-sation', '1', 'local', '2022-09-14 12:45:36', 36, NULL, '2022-09-14 11:45:36', '2022-09-14 11:45:36'),
(1588, 'radio-sation', '2', 'local', '2022-09-14 12:47:20', 36, NULL, '2022-09-14 11:47:20', '2022-09-14 11:47:20'),
(1589, 'radio-sation', '2', 'local', '2022-09-14 12:47:21', 36, NULL, '2022-09-14 11:47:21', '2022-09-14 11:47:21'),
(1590, 'radio-sation', '1', 'local', '2022-09-14 12:47:24', 36, NULL, '2022-09-14 11:47:24', '2022-09-14 11:47:24'),
(1591, 'radio-sation', '3', 'local', '2022-09-14 12:47:28', 36, NULL, '2022-09-14 11:47:28', '2022-09-14 11:47:28'),
(1592, 'radio-sation', '2', 'local', '2022-09-14 12:49:51', 36, NULL, '2022-09-14 11:49:51', '2022-09-14 11:49:51'),
(1593, 'song', '1687501', '', '2022-09-14 11:20:19', NULL, NULL, '2022-09-14 15:20:19', '2022-09-14 15:20:19'),
(1594, 'song', '1687499', '', '2022-09-14 11:21:54', NULL, NULL, '2022-09-14 15:21:54', '2022-09-14 15:21:54'),
(1595, 'song', '1687497', 'local', '2022-09-14 16:44:56', 36, NULL, '2022-09-14 15:44:56', '2022-09-14 15:44:56'),
(1596, 'radio-sation', '2', 'local', '2022-09-14 16:44:59', 36, NULL, '2022-09-14 15:44:59', '2022-09-14 15:44:59'),
(1597, 'radio-sation', '1', 'local', '2022-09-14 16:45:00', 36, NULL, '2022-09-14 15:45:00', '2022-09-14 15:45:00'),
(1598, 'radio-sation', '3', 'local', '2022-09-14 16:45:01', 36, NULL, '2022-09-14 15:45:01', '2022-09-14 15:45:01'),
(1599, 'radio-sation', '4', 'local', '2022-09-14 16:45:02', 36, NULL, '2022-09-14 15:45:02', '2022-09-14 15:45:02'),
(1600, 'radio-sation', '4', 'local', '2022-09-14 16:45:03', 36, NULL, '2022-09-14 15:45:03', '2022-09-14 15:45:03'),
(1601, 'song', '1687499', 'local', '2022-09-14 17:00:46', 36, NULL, '2022-09-14 16:00:46', '2022-09-14 16:00:46'),
(1602, 'song', '1687497', 'local', '2022-09-14 17:07:04', 36, NULL, '2022-09-14 16:07:04', '2022-09-14 16:07:04'),
(1603, 'radio-sation', '1', '', '2022-09-14 13:50:34', NULL, NULL, '2022-09-14 17:50:34', '2022-09-14 17:50:34'),
(1604, 'song', '1687501', 'local', '2022-09-14 19:21:00', 36, NULL, '2022-09-14 18:21:00', '2022-09-14 18:21:00'),
(1605, 'song', '1687501', 'local', '2022-09-14 19:22:28', 36, NULL, '2022-09-14 18:22:28', '2022-09-14 18:22:28'),
(1606, 'album', '68789', 'local', '2022-09-14 20:09:23', 36, NULL, '2022-09-14 19:09:23', '2022-09-14 19:09:23'),
(1607, 'radio-sation', '1', 'local', '2022-09-14 20:09:29', 36, NULL, '2022-09-14 19:09:29', '2022-09-14 19:09:29'),
(1608, 'radio-sation', '2', 'local', '2022-09-14 20:09:32', 36, NULL, '2022-09-14 19:09:32', '2022-09-14 19:09:32'),
(1609, 'radio-sation', '4', 'local', '2022-09-14 20:13:34', 36, NULL, '2022-09-14 19:13:34', '2022-09-14 19:13:34'),
(1610, 'song', '1687501', '', '2022-09-26 10:33:46', NULL, NULL, '2022-09-26 14:33:46', '2022-09-26 14:33:46'),
(1611, 'album', '68791', '', '2022-09-26 10:34:02', NULL, NULL, '2022-09-26 14:34:02', '2022-09-26 14:34:02'),
(1612, 'album', '68790', '', '2022-09-26 10:34:14', NULL, NULL, '2022-09-26 14:34:14', '2022-09-26 14:34:14'),
(1613, 'song', '1687497', '', '2022-09-26 10:37:16', NULL, NULL, '2022-09-26 14:37:16', '2022-09-26 14:37:16'),
(1614, 'song', '1687497', '', '2022-09-27 07:45:56', NULL, NULL, '2022-09-27 11:45:56', '2022-09-27 11:45:56'),
(1615, 'radio-sation', '1', '', '2022-09-27 07:46:09', NULL, NULL, '2022-09-27 11:46:09', '2022-09-27 11:46:09'),
(1616, 'radio-sation', '1', 'local', '2022-09-30 16:14:45', 27, NULL, '2022-09-30 15:14:45', '2022-09-30 15:14:45'),
(1617, 'song', '1687501', 'local', '2022-10-03 11:10:21', 27, NULL, '2022-10-03 10:10:21', '2022-10-03 10:10:21'),
(1618, 'album', '68792', 'local', '2022-10-03 11:10:25', 27, NULL, '2022-10-03 10:10:25', '2022-10-03 10:10:25'),
(1619, 'album', '68790', 'local', '2022-10-03 11:10:30', 27, NULL, '2022-10-03 10:10:30', '2022-10-03 10:10:30'),
(1620, 'album', '68791', 'local', '2022-10-03 11:10:33', 27, NULL, '2022-10-03 10:10:33', '2022-10-03 10:10:33'),
(1621, 'radio-sation', '1', 'local', '2022-10-03 11:10:37', 27, NULL, '2022-10-03 10:10:37', '2022-10-03 10:10:37'),
(1622, 'radio-sation', '3', 'local', '2022-10-03 11:10:40', 27, NULL, '2022-10-03 10:10:40', '2022-10-03 10:10:40'),
(1623, 'radio-sation', '1', 'local', '2022-10-03 14:07:29', 27, NULL, '2022-10-03 13:07:29', '2022-10-03 13:07:29'),
(1624, 'radio-sation', '1', '', '2022-10-03 10:55:49', NULL, NULL, '2022-10-03 14:55:49', '2022-10-03 14:55:49'),
(1625, 'radio-sation', '1', '', '2022-10-03 10:58:32', NULL, NULL, '2022-10-03 14:58:32', '2022-10-03 14:58:32'),
(1626, 'radio-sation', '1', '', '2022-10-03 10:58:33', NULL, NULL, '2022-10-03 14:58:33', '2022-10-03 14:58:33'),
(1627, 'song', '1687501', '', '2022-10-03 13:28:14', NULL, NULL, '2022-10-03 17:28:14', '2022-10-03 17:28:14'),
(1628, 'radio-sation', '1', '', '2022-10-03 13:30:04', NULL, NULL, '2022-10-03 17:30:04', '2022-10-03 17:30:04'),
(1629, 'radio-sation', '3', '', '2022-10-03 13:30:12', NULL, NULL, '2022-10-03 17:30:12', '2022-10-03 17:30:12'),
(1630, 'radio-sation', '1', '', '2022-10-03 13:34:53', NULL, NULL, '2022-10-03 17:34:53', '2022-10-03 17:34:53'),
(1631, 'radio-sation', '1', '', '2022-10-03 13:35:51', NULL, NULL, '2022-10-03 17:35:51', '2022-10-03 17:35:51'),
(1632, 'radio-sation', '3', '', '2022-10-03 13:35:51', NULL, NULL, '2022-10-03 17:35:51', '2022-10-03 17:35:51'),
(1634, 'song', '1687497', 'local', '2022-10-04 10:31:12', 27, NULL, '2022-10-04 09:31:12', '2022-10-04 09:31:12'),
(1636, 'song', '1687511', '', '2022-10-10 15:29:53', NULL, NULL, '2022-10-10 19:29:53', '2022-10-10 19:29:53'),
(1637, 'song', '1687511', '', '2022-10-10 15:30:49', NULL, NULL, '2022-10-10 19:30:49', '2022-10-10 19:30:49'),
(1638, 'song', '1687511', '', '2022-10-10 15:33:20', NULL, NULL, '2022-10-10 19:33:20', '2022-10-10 19:33:20'),
(1639, 'radio-sation', '3', '', '2022-10-10 15:34:19', NULL, NULL, '2022-10-10 19:34:19', '2022-10-10 19:34:19'),
(1640, 'radio-sation', '3', '', '2022-10-10 20:06:52', NULL, NULL, '2022-10-11 00:06:52', '2022-10-11 00:06:52'),
(1641, 'radio-sation', '1', 'local', '2022-10-30 02:16:26', 55, NULL, '2022-10-30 01:16:26', '2022-10-30 01:16:26'),
(1642, 'radio-sation', '3', 'local', '2022-10-30 02:16:34', 55, NULL, '2022-10-30 01:16:34', '2022-10-30 01:16:34'),
(1643, 'radio-sation', '1', '', '2022-10-30 11:13:09', NULL, NULL, '2022-10-30 15:13:09', '2022-10-30 15:13:09'),
(1644, 'radio-sation', '3', '', '2022-10-30 11:13:35', NULL, NULL, '2022-10-30 15:13:35', '2022-10-30 15:13:35'),
(1645, 'radio-sation', '1', 'local', '2022-11-06 10:48:32', 27, NULL, '2022-11-06 09:48:32', '2022-11-06 09:48:32'),
(1646, 'radio-sation', '1', 'local', '2022-11-06 10:48:36', 27, NULL, '2022-11-06 09:48:36', '2022-11-06 09:48:36'),
(1647, 'radio-sation', '3', 'local', '2022-11-06 10:48:37', 27, NULL, '2022-11-06 09:48:37', '2022-11-06 09:48:37'),
(1648, 'song', '1687511', 'local', '2022-11-06 10:48:40', 27, 4830, '2022-11-06 09:48:40', '2022-11-06 09:48:40'),
(1649, 'radio-sation', '1', '', '2022-11-07 04:20:06', NULL, NULL, '2022-11-07 09:20:06', '2022-11-07 09:20:06'),
(1650, 'radio-sation', '1', '', '2022-11-07 04:24:32', NULL, NULL, '2022-11-07 09:24:32', '2022-11-07 09:24:32'),
(1651, 'song', '1687511', '', '2022-11-07 04:25:05', NULL, NULL, '2022-11-07 09:25:05', '2022-11-07 09:25:05'),
(1652, 'radio-sation', '3', '', '2022-11-07 04:29:33', NULL, NULL, '2022-11-07 09:29:33', '2022-11-07 09:29:33'),
(1654, 'song', '1687511', 'local', '2022-11-07 11:13:01', 27, 4830, '2022-11-07 11:12:44', '2022-11-07 11:12:44'),
(1655, 'radio-sation', '3', 'local', '2022-11-07 12:12:51', 27, NULL, '2022-11-07 11:12:51', '2022-11-07 11:12:51'),
(1656, 'radio-sation', '3', 'local', '2022-11-07 12:15:22', 27, NULL, '2022-11-07 11:15:22', '2022-11-07 11:15:22'),
(1657, 'song', '1687511', 'local', '2022-11-07 12:30:28', 27, 4830, '2022-11-07 11:30:28', '2022-11-07 11:30:28'),
(1658, 'song', '1687501', '', '2022-11-18 18:53:40', NULL, NULL, '2022-11-18 23:53:40', '2022-11-18 23:53:40'),
(1659, 'radio-sation', '1', 'local', '2022-11-20 21:47:16', 27, NULL, '2022-11-20 20:47:16', '2022-11-20 20:47:16'),
(1660, 'radio-sation', '3', 'local', '2022-11-20 21:47:19', 27, NULL, '2022-11-20 20:47:19', '2022-11-20 20:47:19'),
(1661, 'radio-sation', '1', 'local', '2022-11-20 21:47:22', 27, NULL, '2022-11-20 20:47:22', '2022-11-20 20:47:22'),
(1662, 'radio-sation', '1', 'local', '2022-12-08 12:54:39', 27, NULL, '2022-12-08 11:54:39', '2022-12-08 11:54:39'),
(1663, 'song', '1687503', '', '2022-12-16 05:15:06', NULL, NULL, '2022-12-16 10:15:06', '2022-12-16 10:15:06'),
(1664, 'radio-sation', '1', 'local', '2022-12-16 13:04:24', 20, NULL, '2022-12-16 12:04:24', '2022-12-16 12:04:24'),
(1666, 'radio-sation', '1', '', '2022-12-23 19:13:21', NULL, NULL, '2022-12-24 00:13:21', '2022-12-24 00:13:21'),
(1667, 'radio-sation', '1', 'local', '2022-12-24 01:24:11', 1, NULL, '2022-12-24 00:24:11', '2022-12-24 00:24:11'),
(1668, 'song', '1687503', '', '2023-01-02 18:02:43', NULL, NULL, '2023-01-02 23:02:43', '2023-01-02 23:02:43'),
(1669, 'album', '68789', '', '2023-01-06 07:35:00', NULL, NULL, '2023-01-06 12:35:00', '2023-01-06 12:35:00'),
(1670, 'album', '68791', '', '2023-01-06 07:35:04', NULL, NULL, '2023-01-06 12:35:04', '2023-01-06 12:35:04'),
(1671, 'radio-sation', '1', '', '2023-01-06 07:35:10', NULL, NULL, '2023-01-06 12:35:10', '2023-01-06 12:35:10'),
(1672, 'radio-sation', '1', '', '2023-01-06 09:30:38', NULL, NULL, '2023-01-06 14:30:38', '2023-01-06 14:30:38'),
(1673, 'radio-sation', '1', '', '2023-01-09 09:23:36', NULL, NULL, '2023-01-09 14:23:36', '2023-01-09 14:23:36'),
(1674, 'radio-sation', '1', '', '2023-01-12 10:33:18', NULL, NULL, '2023-01-12 15:33:18', '2023-01-12 15:33:18'),
(1675, 'song', '1687503', 'local', '2023-02-06 14:35:33', 27, NULL, '2023-02-06 14:33:41', '2023-02-06 14:33:41'),
(1676, 'song', '1687501', '', '2023-02-07 09:52:19', NULL, NULL, '2023-02-07 14:52:19', '2023-02-07 14:52:19'),
(1677, 'song', '1687501', '', '2023-02-07 10:26:12', NULL, NULL, '2023-02-07 15:26:12', '2023-02-07 15:26:12'),
(1678, 'song', '1687501', '', '2023-02-07 11:26:54', NULL, NULL, '2023-02-07 16:26:54', '2023-02-07 16:26:54'),
(1679, 'radio-sation', '1', '', '2023-02-07 11:27:27', NULL, NULL, '2023-02-07 16:27:27', '2023-02-07 16:27:27'),
(1680, 'radio-sation', '1', 'local', '2023-02-09 10:47:29', 27, NULL, '2023-02-09 09:47:29', '2023-02-09 09:47:29'),
(1681, 'radio-sation', '1', 'local', '2023-02-09 10:47:32', 27, NULL, '2023-02-09 09:47:32', '2023-02-09 09:47:32'),
(1682, 'song', '1687503', 'local', '2023-02-09 09:49:32', 27, NULL, '2023-02-09 09:47:40', '2023-02-09 09:47:40'),
(1683, 'radio-sation', '1', '', '2023-02-09 06:12:35', NULL, NULL, '2023-02-09 11:12:35', '2023-02-09 11:12:35'),
(1684, 'radio-sation', '1', 'local', '2023-02-13 10:23:31', 89, NULL, '2023-02-13 09:23:31', '2023-02-13 09:23:31'),
(1685, 'song', '1687515', 'local', '2023-02-13 10:38:03', 89, NULL, '2023-02-13 09:38:03', '2023-02-13 09:38:03'),
(1686, 'song', '1687515', 'local', '2023-02-13 10:54:44', 89, NULL, '2023-02-13 09:54:44', '2023-02-13 09:54:44'),
(1687, 'song', '1687511', 'local', '2023-02-13 10:54:49', 89, 4830, '2023-02-13 09:54:49', '2023-02-13 09:54:49'),
(1688, 'radio-sation', '1', 'local', '2023-02-13 10:59:24', 89, NULL, '2023-02-13 09:59:24', '2023-02-13 09:59:24'),
(1689, 'song', '1687515', 'local', '2023-02-13 11:02:47', 89, NULL, '2023-02-13 10:02:47', '2023-02-13 10:02:47'),
(1690, 'radio-sation', '1', 'local', '2023-02-13 11:05:36', 89, NULL, '2023-02-13 10:05:36', '2023-02-13 10:05:36'),
(1691, 'song', '1687515', 'local', '2023-02-13 19:25:30', 89, NULL, '2023-02-13 18:25:30', '2023-02-13 18:25:30'),
(1692, 'radio-sation', '1', 'local', '2023-02-14 23:50:29', 89, NULL, '2023-02-14 22:50:29', '2023-02-14 22:50:29'),
(1693, 'radio-sation', '1', '', '2023-02-15 08:05:36', NULL, NULL, '2023-02-15 13:05:36', '2023-02-15 13:05:36'),
(1694, 'radio-sation', '1', '', '2023-02-15 08:05:42', NULL, NULL, '2023-02-15 13:05:42', '2023-02-15 13:05:42'),
(1695, 'radio-sation', '1', '', '2023-02-15 08:06:26', NULL, NULL, '2023-02-15 13:06:26', '2023-02-15 13:06:26'),
(1696, 'radio-sation', '1', '', '2023-02-15 08:06:31', NULL, NULL, '2023-02-15 13:06:31', '2023-02-15 13:06:31'),
(1697, 'radio-sation', '1', '', '2023-02-15 08:06:38', NULL, NULL, '2023-02-15 13:06:38', '2023-02-15 13:06:38'),
(1698, 'radio-sation', '1', '', '2023-02-15 08:16:27', NULL, NULL, '2023-02-15 13:16:27', '2023-02-15 13:16:27'),
(1699, 'radio-sation', '1', '', '2023-02-15 08:51:24', NULL, NULL, '2023-02-15 13:51:24', '2023-02-15 13:51:24'),
(1700, 'radio-sation', '1', '', '2023-02-15 10:10:17', NULL, NULL, '2023-02-15 15:10:17', '2023-02-15 15:10:17'),
(1701, 'radio-sation', '1', '', '2023-02-15 10:11:18', NULL, NULL, '2023-02-15 15:11:18', '2023-02-15 15:11:18'),
(1702, 'radio-sation', '1', '', '2023-02-15 10:19:56', NULL, NULL, '2023-02-15 15:19:56', '2023-02-15 15:19:56'),
(1703, 'radio-sation', '1', '', '2023-02-15 10:29:51', NULL, NULL, '2023-02-15 15:29:51', '2023-02-15 15:29:51'),
(1704, 'radio-sation', '1', '', '2023-02-15 10:30:09', NULL, NULL, '2023-02-15 15:30:09', '2023-02-15 15:30:09'),
(1705, 'radio-sation', '1', '', '2023-02-15 10:35:45', NULL, NULL, '2023-02-15 15:35:45', '2023-02-15 15:35:45'),
(1706, 'song', '1687503', '', '2023-02-15 10:39:24', NULL, NULL, '2023-02-15 15:39:24', '2023-02-15 15:39:24'),
(1707, 'radio-sation', '1', '', '2023-02-20 19:41:26', NULL, NULL, '2023-02-21 00:41:26', '2023-02-21 00:41:26'),
(1708, 'song', '1687501', '', '2023-02-24 05:34:23', NULL, NULL, '2023-02-24 10:34:23', '2023-02-24 10:34:23'),
(1709, 'radio-sation', '1', '', '2023-03-03 07:45:00', NULL, NULL, '2023-03-03 12:45:00', '2023-03-03 12:45:00'),
(1710, 'song', '1687511', '', '2023-03-04 19:36:54', NULL, NULL, '2023-03-05 00:36:54', '2023-03-05 00:36:54'),
(1711, 'song', '1687511', '', '2023-03-06 11:23:19', NULL, NULL, '2023-03-06 16:23:19', '2023-03-06 16:23:19'),
(1712, 'song', '1687511', '', '2023-03-06 11:23:28', NULL, NULL, '2023-03-06 16:23:28', '2023-03-06 16:23:28'),
(1713, 'song', '1687511', '', '2023-03-06 11:23:28', NULL, NULL, '2023-03-06 16:23:28', '2023-03-06 16:23:28'),
(1714, 'song', '1687511', 'local', '2023-03-08 14:47:11', 92, 4830, '2023-03-08 13:47:11', '2023-03-08 13:47:11'),
(1715, 'song', '1687515', '', '2023-03-08 09:22:16', NULL, NULL, '2023-03-08 14:22:16', '2023-03-08 14:22:16'),
(1716, 'song', '1687515', '', '2023-03-08 09:22:16', NULL, NULL, '2023-03-08 14:22:16', '2023-03-08 14:22:16'),
(1717, 'song', '1687515', '', '2023-03-08 09:22:26', NULL, NULL, '2023-03-08 14:22:26', '2023-03-08 14:22:26'),
(1718, 'song', '1687511', '', '2023-03-08 09:22:44', NULL, NULL, '2023-03-08 14:22:44', '2023-03-08 14:22:44'),
(1719, 'radio-sation', '1', 'local', '2023-03-16 16:57:02', 94, NULL, '2023-03-16 15:57:02', '2023-03-16 15:57:02'),
(1720, 'radio-sation', '1', 'local', '2023-03-16 16:57:11', 94, NULL, '2023-03-16 15:57:11', '2023-03-16 15:57:11'),
(1721, 'radio-sation', '1', 'local', '2023-03-16 16:57:14', 94, NULL, '2023-03-16 15:57:14', '2023-03-16 15:57:14'),
(1722, 'radio-sation', '1', 'local', '2023-03-16 16:57:18', 94, NULL, '2023-03-16 15:57:18', '2023-03-16 15:57:18'),
(1723, 'radio-sation', '1', 'local', '2023-03-16 16:58:03', 14, NULL, '2023-03-16 15:58:03', '2023-03-16 15:58:03'),
(1724, 'song', '1687511', 'local', '2023-03-16 22:01:13', 93, 4830, '2023-03-16 21:01:13', '2023-03-16 21:01:13'),
(1725, 'song', '1687503', 'local', '2023-03-17 13:01:55', 27, NULL, '2023-03-17 13:00:03', '2023-03-17 13:00:03'),
(1726, 'radio-sation', '1', 'local', '2023-03-19 09:07:13', 27, NULL, '2023-03-19 08:07:13', '2023-03-19 08:07:13'),
(1727, 'radio-sation', '1', 'local', '2023-03-19 09:07:26', 27, NULL, '2023-03-19 08:07:26', '2023-03-19 08:07:26'),
(1728, 'song', '1687499', '', '2023-04-03 06:23:18', NULL, NULL, '2023-04-03 10:23:18', '2023-04-03 10:23:18'),
(1729, 'song', '1687499', '', '2023-04-03 06:24:26', NULL, NULL, '2023-04-03 10:24:26', '2023-04-03 10:24:26'),
(1730, 'radio-sation', '1', 'local', '2023-04-08 01:50:48', 27, NULL, '2023-04-08 00:50:48', '2023-04-08 00:50:48'),
(1731, 'radio-sation', '1', 'local', '2023-04-08 01:50:56', 27, NULL, '2023-04-08 00:50:56', '2023-04-08 00:50:56'),
(1732, 'song', '1687511', '', '2023-04-12 09:56:41', NULL, NULL, '2023-04-12 13:56:41', '2023-04-12 13:56:41'),
(1733, 'song', '1687503', '', '2023-04-12 09:56:41', NULL, NULL, '2023-04-12 13:56:41', '2023-04-12 13:56:41'),
(1734, 'song', '1687511', '', '2023-04-13 11:59:37', NULL, NULL, '2023-04-13 15:59:37', '2023-04-13 15:59:37');

-- --------------------------------------------------------

--
-- Table structure for table `podcasts`
--

CREATE TABLE `podcasts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `artist_id` varchar(191) DEFAULT NULL,
  `genre_id` int(10) UNSIGNED DEFAULT NULL,
  `cover` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `spotify_link` varchar(191) DEFAULT NULL,
  `soundcloud_link` varchar(191) DEFAULT NULL,
  `youtube_link` varchar(191) DEFAULT NULL,
  `itunes_link` varchar(191) DEFAULT NULL,
  `deezer_link` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `podcast_genres`
--

CREATE TABLE `podcast_genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `listen_notes_genre_id` varchar(191) DEFAULT NULL,
  `cover` text NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `podcast_genres`
--

INSERT INTO `podcast_genres` (`id`, `name`, `listen_notes_genre_id`, `cover`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'News', '99', '', 'news', '2022-03-04 22:45:11', '2022-03-04 22:45:11'),
(2, 'Arts', '100', '', 'arts', '2022-03-04 22:45:11', '2022-03-04 22:45:11'),
(3, 'Gaming', NULL, '', 'gaming', '2022-03-04 22:45:11', '2022-03-04 22:45:11'),
(4, 'Education', '111', '{\"path\":\"\\/storage\\/defaults\\/images\\/podcast_genres\\/podcast-education.png\",\"disk\":\"public\",\"url\":null}', 'education', '2022-03-04 22:45:12', '2022-03-04 22:45:12'),
(5, 'Comedy', '133', '{\"path\":\"\\/storage\\/defaults\\/images\\/podcast_genres\\/podcast-comedy.png\",\"disk\":\"public\",\"url\":null}', 'comedy', '2022-03-04 22:45:12', '2022-03-04 22:45:12'),
(6, 'Health', '88', '{\"path\":\"\\/storage\\/defaults\\/images\\/podcast_genres\\/podcast-health.png\",\"disk\":\"public\",\"url\":null}', 'health', '2022-03-04 22:45:12', '2022-03-04 22:45:12'),
(7, 'Fiction', '168', '{\"path\":\"\\/storage\\/defaults\\/images\\/podcast_genres\\/podcast-fiction.png\",\"disk\":\"public\",\"url\":null}', 'fiction', '2022-03-04 22:45:12', '2022-03-04 22:45:12'),
(8, 'Sports', '77', '{\"path\":\"\\/storage\\/defaults\\/images\\/podcast_genres\\/podcast-sports.png\",\"disk\":\"public\",\"url\":null}', 'sports', '2022-03-04 22:45:12', '2022-03-04 22:45:12'),
(9, 'Technology', '127', '{\"path\":\"\\/storage\\/defaults\\/images\\/podcast_genres\\/podcast-technology.png\",\"disk\":\"public\",\"url\":null}', 'technology', '2022-03-04 22:45:12', '2022-03-04 22:45:12'),
(10, 'Science', '93', '{\"path\":\"\\/storage\\/defaults\\/images\\/podcast_genres\\/podcast-science.png\",\"disk\":\"public\",\"url\":null}', 'science', '2022-03-04 22:45:12', '2022-03-04 22:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `currency` varchar(191) NOT NULL,
  `currency_symbol` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `productable_id` int(11) NOT NULL,
  `productable_type` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_price`
--

CREATE TABLE `product_price` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `price_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `radio_stations`
--

CREATE TABLE `radio_stations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `cover` text NOT NULL,
  `streamEndpoint` varchar(191) NOT NULL,
  `highlight` tinyint(1) NOT NULL DEFAULT 0,
  `proxy` tinyint(1) NOT NULL DEFAULT 0,
  `serverType` varchar(191) NOT NULL,
  `statsSource` varchar(191) NOT NULL,
  `serverURL` varchar(191) DEFAULT NULL,
  `serverID` varchar(191) DEFAULT NULL,
  `serverMount` varchar(191) DEFAULT NULL,
  `serverUsername` varchar(191) DEFAULT NULL,
  `serverPassword` varchar(191) DEFAULT NULL,
  `statsEndpoint` varchar(191) DEFAULT NULL,
  `interval` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `radio_stations`
--

INSERT INTO `radio_stations` (`id`, `name`, `cover`, `streamEndpoint`, `highlight`, `proxy`, `serverType`, `statsSource`, `serverURL`, `serverID`, `serverMount`, `serverUsername`, `serverPassword`, `statsEndpoint`, `interval`, `created_at`, `updated_at`) VALUES
(1, 'anywhereanycity', '', 'https://stream.anywhereanycity.com:8000/radio.mp3', 1, 1, 'icecast', 'endpoint', NULL, NULL, NULL, NULL, NULL, NULL, 9994, '2022-06-15 20:52:17', '2022-09-02 17:06:38');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `category` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `category`, `created_at`, `updated_at`) VALUES
(1, 'admin', '', '2022-03-04 22:45:06', '2022-03-04 22:45:06'),
(2, 'artist', '', '2022-03-04 22:45:06', '2022-03-04 22:45:06'),
(3, 'user', '', '2022-03-04 22:45:06', '2022-03-04 22:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`id`, `permission_id`, `role_id`) VALUES
(1, 11, 1),
(2, 12, 1),
(3, 13, 1),
(4, 14, 1),
(5, 15, 1),
(6, 16, 1),
(7, 17, 1),
(8, 18, 1),
(9, 19, 1),
(10, 20, 1),
(11, 21, 1),
(12, 22, 1),
(13, 23, 1),
(14, 24, 1),
(15, 25, 1),
(16, 26, 1),
(17, 27, 1),
(18, 28, 1),
(19, 29, 1),
(20, 30, 1),
(21, 31, 1),
(22, 32, 1),
(23, 33, 1),
(24, 34, 1),
(25, 35, 1),
(26, 36, 1),
(27, 37, 1),
(28, 38, 1),
(29, 39, 1),
(30, 40, 1),
(31, 8, 2),
(32, 9, 2),
(33, 10, 2),
(34, 1, 3),
(35, 2, 3),
(36, 3, 3),
(37, 4, 3),
(38, 5, 3),
(39, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 1, NULL, NULL),
(3, 2, 2, NULL, NULL),
(5, 13, 2, NULL, NULL),
(6, 22, 2, NULL, NULL),
(7, 14, 3, NULL, NULL),
(8, 1, 2, NULL, NULL),
(9, 2, 2, NULL, NULL),
(10, 18, 2, NULL, NULL),
(11, 3, 2, NULL, NULL),
(12, 19, 2, NULL, NULL),
(13, 20, 2, NULL, NULL),
(14, 37, 2, NULL, NULL),
(15, 17, 2, NULL, NULL),
(16, 34, 2, NULL, NULL),
(17, 16, 2, NULL, NULL),
(18, 33, 2, NULL, NULL),
(19, 25, 2, NULL, NULL),
(20, 8, 1, NULL, NULL),
(21, 9, 2, NULL, NULL),
(22, 36, 2, NULL, NULL),
(23, 11, 2, NULL, NULL),
(24, 35, 2, NULL, NULL),
(25, 24, 2, NULL, NULL),
(26, 30, 2, NULL, NULL),
(27, 4, 2, NULL, NULL),
(28, 29, 2, NULL, NULL),
(29, 5, 2, NULL, NULL),
(30, 27, 2, NULL, NULL),
(31, 7, 2, NULL, NULL),
(32, 10, 2, NULL, NULL),
(33, 28, 2, NULL, NULL),
(34, 12, 2, NULL, NULL),
(35, 6, 2, NULL, NULL),
(36, 26, 2, NULL, NULL),
(37, 38, 2, NULL, NULL),
(38, 21, 2, NULL, NULL),
(39, 32, 2, NULL, NULL),
(40, 31, 2, NULL, NULL),
(41, 23, 2, NULL, NULL),
(42, 39, 3, NULL, NULL),
(43, 40, 3, NULL, NULL),
(44, 90, 3, NULL, NULL),
(45, 91, 3, NULL, NULL),
(46, 92, 3, NULL, NULL),
(47, 93, 3, '2023-03-16 11:30:02', '2023-03-16 11:30:02'),
(48, 94, 3, '2023-03-16 15:04:02', '2023-03-16 15:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `royalties`
--

CREATE TABLE `royalties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `royalties`
--

INSERT INTO `royalties` (`id`, `artist_id`, `price`) VALUES
(1, 4799, 50),
(2, 4799, 50),
(3, 4799, 50),
(4, 4799, 50),
(5, 4799, 50),
(6, 4799, 50),
(7, 4799, 50),
(8, 4799, 50),
(9, 4799, 50),
(10, 4799, 50),
(11, 4799, 50),
(12, 4799, 50),
(13, 4799, 50),
(14, 4799, 50),
(15, 4799, 50),
(16, 4799, 50),
(17, 4799, 50),
(18, 4799, 50),
(19, 4799, 50),
(20, 4799, 50),
(21, 4799, 50),
(22, 4799, 50),
(23, 4799, 50),
(24, 4799, 50),
(25, 4799, 50),
(26, 4799, 50),
(27, 4799, 50),
(28, 4799, 50),
(29, 4799, 50),
(30, 4799, 50),
(31, 4799, 50),
(32, 4799, 50),
(33, 4799, 50),
(34, 4799, 50),
(35, 4799, 50),
(36, 4799, 50),
(37, 4799, 50),
(38, 4799, 50),
(39, 4799, 50),
(40, 4799, 50),
(41, 4799, 50),
(42, 4799, 50),
(43, 4799, 50),
(44, 4799, 50),
(45, 4799, 50),
(46, 4799, 50),
(47, 4799, 50),
(48, 4799, 50),
(49, 4799, 50),
(50, 4799, 50),
(51, 4799, 50),
(52, 4799, 50),
(53, 4799, 50),
(54, 4799, 50),
(55, 4799, 50),
(56, 4799, 50),
(57, 4799, 50),
(58, 4799, 50),
(59, 4799, 50),
(60, 4799, 50),
(61, 4799, 50),
(62, 4799, 50),
(63, 4799, 50),
(64, 4799, 50),
(65, 4799, 50),
(66, 4799, 50),
(67, 4799, 50),
(68, 4799, 50),
(69, 4799, 50),
(70, 4799, 50),
(71, 4799, 50),
(72, 4799, 50),
(73, 4799, 50),
(74, 4799, 50),
(75, 4799, 50),
(76, 4799, 50),
(77, 4799, 50),
(78, 4799, 50),
(79, 4799, 50),
(80, 4799, 50),
(81, 4799, 50),
(82, 4799, 50),
(83, 4799, 50),
(84, 4799, 50),
(85, 4799, 50),
(86, 4799, 50),
(87, 4799, 50),
(88, 4799, 50),
(89, 4799, 50),
(90, 4799, 50),
(91, 4799, 50),
(92, 4799, 50),
(93, 4799, 50),
(94, 4799, 50),
(95, 4799, 50),
(96, 4799, 50),
(97, 4799, 50),
(98, 4799, 50),
(99, 4799, 50),
(100, 4799, 50),
(101, 4799, 50),
(102, 4799, 50),
(103, 4799, 50),
(104, 4799, 50),
(105, 4799, 50),
(106, 4799, 50),
(107, 4799, 50),
(108, 4799, 50),
(109, 4799, 50),
(110, 4799, 50),
(111, 4799, 50),
(112, 4799, 50),
(113, 4799, 50),
(114, 4799, 50),
(115, 4799, 50),
(116, 4799, 50),
(117, 4799, 50),
(118, 4799, 50),
(119, 4799, 50),
(120, 4799, 50),
(121, 4799, 50),
(122, 4799, 50),
(123, 4799, 50),
(124, 4799, 50),
(125, 4799, 50),
(126, 4799, 50),
(127, 4799, 50),
(128, 4799, 50),
(129, 4799, 50),
(130, 4799, 50),
(131, 4799, 50),
(132, 4799, 50),
(133, 4799, 50),
(134, 4799, 50),
(135, 4799, 50),
(136, 4799, 50),
(137, 4799, 50),
(138, 4799, 50),
(139, 4799, 50),
(140, 4799, 50),
(141, 4799, 50),
(142, 4799, 50),
(143, 4799, 50),
(144, 4799, 50),
(145, 4799, 50),
(146, 4799, 50),
(147, 4799, 50),
(148, 4799, 50),
(149, 4799, 50),
(150, 4799, 50),
(151, 4799, 50),
(152, 4799, 50),
(153, 4799, 50),
(154, 4799, 50),
(155, 4799, 50),
(156, 4799, 50),
(157, 4799, 50),
(158, 4799, 50),
(159, 4799, 50),
(160, 4799, 50),
(161, 4799, 50),
(162, 4799, 50),
(163, 4799, 50),
(164, 4799, 50),
(165, 4799, 50),
(166, 4799, 50),
(167, 4799, 50),
(168, 4799, 50),
(169, 4799, 50),
(170, 4799, 50),
(171, 4799, 50),
(172, 4799, 50),
(173, 4799, 50),
(174, 4799, 50),
(175, 4799, 50),
(176, 4799, 50),
(177, 4799, 50),
(178, 4799, 50),
(179, 4799, 50),
(180, 4799, 50),
(181, 4799, 50),
(182, 4799, 50),
(183, 4799, 50),
(184, 4799, 50),
(185, 4799, 50),
(186, 4799, 50),
(187, 4799, 50),
(188, 4799, 50),
(189, 4799, 50),
(190, 4799, 50),
(191, 4799, 50),
(192, 4799, 50),
(193, 4799, 50),
(194, 4799, 50),
(195, 4799, 50),
(196, 4799, 50),
(197, 4799, 50),
(198, 4799, 50),
(199, 4799, 50),
(200, 4799, 50),
(201, 4799, 50),
(202, 4799, 50),
(203, 4799, 50),
(204, 4799, 50),
(205, 4799, 50),
(206, 4799, 50),
(207, 4799, 50),
(208, 4799, 50),
(209, 4799, 50),
(210, 4799, 50),
(211, 4799, 50),
(212, 4799, 50),
(213, 4799, 50),
(214, 4799, 50),
(215, 4799, 50),
(216, 4799, 50),
(217, 4799, 50),
(218, 4799, 50),
(219, 4799, 50),
(220, 4799, 50),
(221, 4799, 50),
(222, 4799, 50),
(223, 4799, 50),
(224, 4799, 50),
(225, 4799, 50),
(226, 4799, 50),
(227, 4799, 50),
(228, 4799, 50),
(229, 4799, 50),
(230, 4799, 50),
(231, 4799, 50),
(232, 4799, 50),
(233, 4799, 50),
(234, 4799, 50),
(235, 4799, 50),
(236, 4799, 50),
(237, 4799, 50),
(238, 4799, 50),
(239, 4799, 50),
(240, 4799, 50),
(241, 4799, 50),
(242, 4799, 50),
(243, 4799, 50),
(244, 4799, 50),
(245, 4799, 50),
(246, 4799, 50),
(247, 4799, 50),
(248, 4799, 50),
(249, 4799, 50),
(250, 4799, 50),
(251, 4799, 50),
(252, 4799, 50),
(253, 4799, 50),
(254, 4799, 50),
(255, 4799, 50),
(256, 4799, 50),
(257, 4799, 50),
(258, 4799, 50),
(259, 4799, 50),
(260, 4799, 50),
(261, 4799, 50),
(262, 4799, 50),
(263, 4799, 50),
(264, 4799, 50),
(265, 4799, 50),
(266, 4799, 50),
(267, 4799, 50),
(268, 4799, 50),
(269, 4799, 50),
(270, 4799, 50),
(271, 4799, 50),
(272, 4799, 50),
(273, 4799, 50),
(274, 4799, 50),
(275, 4799, 50),
(276, 4799, 50),
(277, 4799, 50),
(278, 4799, 50),
(279, 4799, 50),
(280, 4799, 50),
(281, 4799, 50),
(282, 4799, 50),
(283, 4799, 50),
(284, 4799, 50),
(285, 4799, 50),
(286, 4799, 50),
(287, 4799, 50),
(288, 4799, 50),
(289, 4799, 50),
(290, 4799, 50),
(291, 4799, 50),
(292, 4799, 50),
(293, 4799, 50),
(294, 4799, 50),
(295, 4799, 50),
(296, 4799, 50),
(297, 4799, 50),
(298, 4799, 50),
(299, 4799, 50),
(300, 4799, 50),
(301, 4799, 50),
(302, 4799, 50),
(303, 4799, 50),
(304, 4799, 50),
(305, 4799, 50),
(306, 4799, 50),
(307, 4799, 50),
(308, 4799, 50),
(309, 4799, 50),
(310, 4799, 50),
(311, 4799, 50),
(312, 4799, 50),
(313, 4799, 50),
(314, 4799, 50),
(315, 4799, 50),
(316, 4799, 50),
(317, 4799, 50),
(318, 4799, 50),
(319, 4799, 50),
(320, 4799, 50),
(321, 4799, 50),
(322, 4799, 50),
(323, 4799, 50),
(324, 4799, 50),
(325, 4799, 50),
(326, 4799, 50),
(327, 4799, 50),
(328, 4799, 50),
(329, 4799, 50),
(330, 4799, 50),
(331, 4799, 50),
(332, 4799, 50),
(333, 4799, 50),
(334, 4799, 50),
(335, 4799, 50),
(336, 4799, 50),
(337, 4799, 50),
(338, 4799, 50),
(339, 4799, 50),
(340, 4799, 50),
(341, 4799, 50),
(342, 4799, 50),
(343, 4799, 50),
(344, 4799, 50),
(345, 4799, 50),
(346, 4799, 50),
(347, 4799, 50),
(348, 4799, 50),
(349, 4799, 50),
(350, 4799, 50),
(351, 4799, 50),
(352, 4799, 50),
(353, 4799, 50),
(354, 4799, 50),
(355, 4799, 50),
(356, 4799, 50),
(357, 4799, 50),
(358, 4799, 50),
(359, 4799, 50),
(360, 4799, 50),
(361, 4799, 50),
(362, 4799, 50),
(363, 4799, 50),
(364, 4799, 50),
(365, 4799, 50),
(366, 4799, 50),
(367, 4799, 50),
(368, 4799, 50),
(369, 4799, 50),
(370, 4799, 50),
(371, 4799, 50),
(372, 4799, 50),
(373, 4799, 50),
(374, 4799, 50),
(375, 4799, 50),
(376, 4799, 50),
(377, 4799, 50),
(378, 4799, 50),
(379, 4799, 50),
(380, 4799, 50),
(381, 4799, 50),
(382, 4799, 50),
(383, 4799, 50),
(384, 4799, 50),
(385, 4799, 50),
(386, 4799, 50),
(387, 4799, 50),
(388, 4799, 50),
(389, 4799, 50),
(390, 4799, 50),
(391, 4799, 50),
(392, 4799, 50),
(393, 4799, 50),
(394, 4799, 50),
(395, 4799, 50),
(396, 4799, 50),
(397, 4799, 50),
(398, 4799, 50),
(399, 4799, 50),
(400, 4799, 50),
(401, 4799, 50),
(402, 4799, 50),
(403, 4799, 50),
(404, 4799, 50),
(405, 4799, 50),
(406, 4799, 50),
(407, 4799, 50),
(408, 4799, 50),
(409, 4799, 50),
(410, 4799, 50),
(411, 4799, 50),
(412, 4799, 50),
(413, 4799, 50),
(414, 4799, 50),
(415, 4799, 50),
(416, 4799, 50),
(417, 4799, 50),
(418, 4799, 50),
(419, 4799, 50),
(420, 4799, 50),
(421, 4799, 50),
(422, 4799, 50),
(423, 4799, 50),
(424, 4799, 50),
(425, 4799, 50),
(426, 4799, 50),
(427, 4799, 50),
(428, 4799, 50),
(429, 4799, 50),
(430, 4799, 50),
(431, 4799, 50),
(432, 4799, 50),
(433, 4799, 50),
(434, 4799, 50),
(435, 4799, 50),
(436, 4799, 50),
(437, 4799, 50),
(438, 4799, 50),
(439, 4799, 50),
(440, 4799, 50),
(441, 4799, 50),
(442, 4799, 50),
(443, 4799, 50),
(444, 4799, 50),
(445, 4799, 50),
(446, 4799, 50),
(447, 4799, 50),
(448, 4799, 50),
(449, 4799, 50),
(450, 4799, 50),
(451, 4799, 50),
(452, 4799, 50),
(453, 4799, 50),
(454, 4799, 50),
(455, 4799, 50),
(456, 4799, 50),
(457, 4799, 50),
(458, 4799, 50),
(459, 4799, 50),
(460, 4799, 50),
(461, 4799, 50),
(462, 4799, 50),
(463, 4799, 50),
(464, 4799, 50),
(465, 4799, 50),
(466, 4799, 50),
(467, 4799, 50),
(468, 4799, 50),
(469, 4799, 50),
(470, 4799, 50),
(471, 4799, 50),
(472, 4799, 50),
(473, 4799, 50),
(474, 4799, 50),
(475, 4799, 50),
(476, 4799, 50),
(477, 4799, 50),
(478, 4799, 50),
(479, 4799, 50),
(480, 4799, 50),
(481, 4799, 50),
(482, 4799, 50),
(483, 4799, 50),
(484, 4799, 50),
(485, 4799, 50),
(486, 4799, 50),
(487, 4799, 50),
(488, 4799, 50),
(489, 4799, 50),
(490, 4799, 50),
(491, 4799, 50),
(492, 4799, 50),
(493, 4799, 50),
(494, 4799, 50),
(495, 4799, 50),
(496, 4799, 50),
(497, 4799, 50),
(498, 4799, 50),
(499, 4799, 50),
(500, 4799, 50),
(501, 4799, 50),
(502, 4799, 50),
(503, 4799, 50),
(504, 4799, 50),
(505, 4799, 50),
(506, 4799, 50),
(507, 4799, 50),
(508, 4799, 50),
(509, 4799, 50),
(510, 4799, 50),
(511, 4799, 50),
(512, 4799, 50),
(513, 4799, 50),
(514, 4799, 50),
(515, 4799, 50),
(516, 4799, 50),
(517, 4799, 50),
(518, 4799, 50),
(519, 4799, 50),
(520, 4799, 50),
(521, 4799, 50),
(522, 4799, 50),
(523, 4799, 50),
(524, 4799, 50),
(525, 4799, 50),
(526, 4799, 50),
(527, 4799, 50),
(528, 4799, 50),
(529, 4799, 50),
(530, 4799, 50),
(531, 4799, 50),
(532, 4799, 50),
(533, 4799, 50),
(534, 4799, 50),
(535, 4799, 50),
(536, 4799, 50),
(537, 4799, 50),
(538, 4799, 50),
(539, 4799, 50),
(540, 4799, 50),
(541, 4799, 50),
(542, 4799, 50),
(543, 4799, 50),
(544, 4799, 50),
(545, 4799, 50),
(546, 4799, 50),
(547, 4799, 50),
(548, 4799, 50),
(549, 4799, 50),
(550, 4799, 50),
(551, 4799, 50),
(552, 4799, 50),
(553, 4799, 50),
(554, 4799, 50),
(555, 4799, 50),
(556, 4799, 50),
(557, 4799, 50),
(558, 4799, 50),
(559, 4799, 50),
(560, 4799, 50),
(561, 4799, 50),
(562, 4799, 50),
(563, 4799, 50),
(564, 4799, 50),
(565, 4799, 50),
(566, 4799, 50),
(567, 4799, 50),
(568, 4799, 50),
(569, 4799, 50),
(570, 4799, 50),
(571, 4799, 50),
(572, 4799, 50),
(573, 4799, 50),
(574, 4799, 50),
(575, 4799, 50),
(576, 4799, 50),
(577, 4799, 50),
(578, 4799, 50),
(579, 4799, 50),
(580, 4799, 50),
(581, 4799, 50),
(582, 4799, 50),
(583, 4799, 50),
(584, 4799, 50),
(585, 4799, 50),
(586, 4799, 50),
(587, 4799, 50),
(588, 4799, 50),
(589, 4799, 50),
(590, 4799, 50),
(591, 4799, 50),
(592, 4799, 50),
(593, 4799, 50),
(594, 4799, 50),
(595, 4799, 50),
(596, 4799, 50),
(597, 4799, 50),
(598, 4799, 50),
(599, 4799, 50),
(600, 4799, 50),
(601, 4799, 50),
(602, 4799, 50),
(603, 4799, 50),
(604, 4799, 50),
(605, 4799, 50),
(606, 4799, 50),
(607, 4799, 50),
(608, 4799, 50),
(609, 4799, 50),
(610, 4799, 50),
(611, 4799, 50),
(612, 4799, 50),
(613, 4799, 50),
(614, 4799, 50),
(615, 4799, 50),
(616, 4799, 50),
(617, 4799, 50),
(618, 4799, 50),
(619, 4799, 50),
(620, 4799, 50),
(621, 4799, 50),
(622, 4799, 50),
(623, 4799, 50),
(624, 4799, 50),
(625, 4799, 50),
(626, 4799, 50),
(627, 4799, 50),
(628, 4799, 50),
(629, 4799, 50),
(630, 4799, 50),
(631, 4799, 50),
(632, 4799, 50),
(633, 4799, 50),
(634, 4799, 50),
(635, 4799, 50),
(636, 4799, 50),
(637, 4799, 50),
(638, 4799, 50),
(639, 4799, 50),
(640, 4799, 50),
(641, 4799, 50),
(642, 4799, 50),
(643, 4799, 50),
(644, 4799, 50),
(645, 4799, 50),
(646, 4799, 50),
(647, 4799, 50),
(648, 4799, 50),
(649, 4799, 50),
(650, 4799, 50),
(651, 4799, 50),
(652, 4799, 50),
(653, 4799, 50),
(654, 4799, 50),
(655, 4799, 50),
(656, 4799, 50),
(657, 4799, 50),
(658, 4799, 50),
(659, 4799, 50),
(660, 4799, 50),
(661, 4799, 50),
(662, 4799, 50),
(663, 4799, 50),
(664, 4799, 50),
(665, 4799, 50),
(666, 4799, 50),
(667, 4799, 50),
(668, 4799, 50),
(669, 4799, 50),
(670, 4799, 50),
(671, 4799, 50),
(672, 4799, 50),
(673, 4799, 50),
(674, 4799, 50),
(675, 4799, 50),
(676, 4799, 50),
(677, 4799, 50),
(678, 4799, 50),
(679, 4799, 50),
(680, 4799, 50),
(681, 4799, 50),
(682, 4799, 50),
(683, 4799, 50),
(684, 4799, 50),
(685, 4799, 50),
(686, 4799, 50),
(687, 4799, 50),
(688, 4799, 50),
(689, 4799, 50),
(690, 4799, 50),
(691, 4799, 50),
(692, 4799, 50),
(693, 4799, 50),
(694, 4799, 50),
(695, 4799, 50),
(696, 4799, 50),
(697, 4799, 50),
(698, 4799, 50),
(699, 4799, 50),
(700, 4799, 50),
(701, 4799, 50),
(702, 4799, 50),
(703, 4799, 50),
(704, 4799, 50),
(705, 4799, 50),
(706, 4799, 50),
(707, 4799, 50),
(708, 4799, 50),
(709, 4799, 50),
(710, 4799, 50),
(711, 4799, 50),
(712, 4799, 50),
(713, 4799, 50),
(714, 4799, 50),
(715, 4799, 50),
(716, 4799, 50),
(717, 4799, 50),
(718, 4799, 50),
(719, 4799, 50),
(720, 4799, 50),
(721, 4799, 50),
(722, 4799, 50),
(723, 4799, 50),
(724, 4799, 50),
(725, 4799, 50),
(726, 4799, 50),
(727, 4799, 50),
(728, 4799, 50),
(729, 4799, 50),
(730, 4799, 50),
(731, 4799, 50),
(732, 4799, 50),
(733, 4799, 50),
(734, 4799, 50),
(735, 4799, 50),
(736, 4799, 50),
(737, 4799, 50),
(738, 4799, 50),
(739, 4799, 50),
(740, 4799, 50),
(741, 4799, 50),
(742, 4799, 50),
(743, 4799, 50),
(744, 4799, 50),
(745, 4799, 50),
(746, 4799, 50),
(747, 4799, 50),
(748, 4799, 50),
(749, 4799, 50),
(750, 4799, 50),
(751, 4799, 50),
(752, 4799, 50),
(753, 4799, 50),
(754, 4799, 50),
(755, 4799, 50),
(756, 4799, 50),
(757, 4799, 50),
(758, 4799, 50),
(759, 4799, 50),
(760, 4799, 50),
(761, 4799, 50),
(762, 4799, 50),
(763, 4799, 50),
(764, 4799, 50),
(765, 4799, 50),
(766, 4799, 50),
(767, 4799, 50),
(768, 4799, 50),
(769, 4799, 50),
(770, 4799, 50),
(771, 4799, 50),
(772, 4799, 50),
(773, 4799, 50),
(774, 4799, 50),
(775, 4799, 50),
(776, 4799, 50),
(777, 4799, 50),
(778, 4799, 50),
(779, 4799, 50),
(780, 4799, 50),
(781, 4799, 50),
(782, 4799, 50),
(783, 4799, 50),
(784, 4799, 50),
(785, 4799, 50),
(786, 4799, 50),
(787, 4799, 50),
(788, 4799, 50),
(789, 4799, 50),
(790, 4799, 50),
(791, 4799, 50),
(792, 4799, 50),
(793, 4799, 50),
(794, 4799, 50),
(795, 4799, 50),
(796, 4799, 50),
(797, 4799, 50),
(798, 4799, 50),
(799, 4799, 50),
(800, 4799, 50),
(801, 4799, 50),
(802, 4799, 50),
(803, 4799, 50),
(804, 4799, 50),
(805, 4799, 50),
(806, 4799, 50),
(807, 4799, 50),
(808, 4799, 50),
(809, 4799, 50),
(810, 4799, 50),
(811, 4799, 50),
(812, 4799, 50),
(813, 4799, 50),
(814, 4799, 50),
(815, 4799, 50),
(816, 4799, 50),
(817, 4799, 50),
(818, 4799, 50),
(819, 4799, 50),
(820, 4799, 50),
(821, 4799, 50),
(822, 4799, 50),
(823, 4799, 50),
(824, 4799, 50),
(825, 4799, 50),
(826, 4799, 50),
(827, 4799, 50),
(828, 4799, 50),
(829, 4799, 50),
(830, 4799, 50),
(831, 4799, 50),
(832, 4799, 50),
(833, 4799, 50),
(834, 4799, 50),
(835, 4799, 50),
(836, 4799, 50),
(837, 4799, 50),
(838, 4799, 50),
(839, 4799, 50),
(840, 4799, 50),
(841, 4799, 50),
(842, 4799, 50),
(843, 4799, 50),
(844, 4799, 50),
(845, 4799, 50),
(846, 4799, 50),
(847, 4799, 50),
(848, 4799, 50),
(849, 4799, 50),
(850, 4799, 50),
(851, 4799, 50),
(852, 4799, 50),
(853, 4799, 50),
(854, 4799, 50),
(855, 4799, 50),
(856, 4799, 50),
(857, 4799, 50),
(858, 4799, 50),
(859, 4799, 50),
(860, 4799, 50),
(861, 4799, 50),
(862, 4799, 50),
(863, 4799, 50),
(864, 4799, 50),
(865, 4799, 50),
(866, 4799, 50),
(867, 4799, 50),
(868, 4799, 50),
(869, 4799, 50),
(870, 4799, 50),
(871, 4799, 50),
(872, 4799, 50),
(873, 4799, 50),
(874, 4799, 50),
(875, 4799, 50),
(876, 4799, 50),
(877, 4799, 50),
(878, 4799, 50),
(879, 4799, 50),
(880, 4799, 50),
(881, 4799, 50),
(882, 4799, 50),
(883, 4799, 50),
(884, 4799, 50),
(885, 4799, 50),
(886, 4799, 50),
(887, 4799, 50),
(888, 4799, 50),
(889, 4799, 50),
(890, 4799, 50),
(891, 4799, 50),
(892, 4799, 50),
(893, 4799, 50),
(894, 4799, 50),
(895, 4799, 50),
(896, 4799, 50),
(897, 4799, 50),
(898, 4799, 50),
(899, 4799, 50),
(900, 4799, 50),
(901, 4799, 50),
(902, 4799, 50),
(903, 4799, 50),
(904, 4799, 50),
(905, 4799, 50),
(906, 4799, 50),
(907, 4799, 50),
(908, 4799, 50),
(909, 4799, 50),
(910, 4799, 50),
(911, 4799, 50),
(912, 4799, 50),
(913, 4799, 50),
(914, 4799, 50),
(915, 4799, 50),
(916, 4799, 50),
(917, 4799, 50),
(918, 4799, 50),
(919, 4799, 50),
(920, 4799, 50),
(921, 4799, 50),
(922, 4799, 50),
(923, 4799, 50),
(924, 4799, 50),
(925, 4799, 50),
(926, 4799, 50),
(927, 4799, 50),
(928, 4799, 50),
(929, 4799, 50),
(930, 4799, 50),
(931, 4799, 50),
(932, 4799, 50),
(933, 4799, 50),
(934, 4799, 50),
(935, 4799, 50),
(936, 4799, 50),
(937, 4799, 50),
(938, 4799, 50),
(939, 4799, 50),
(940, 4799, 50),
(941, 4799, 50),
(942, 4799, 50),
(943, 4799, 50),
(944, 4799, 50),
(945, 4799, 50),
(946, 4799, 50),
(947, 4799, 50),
(948, 4799, 50),
(949, 4799, 50),
(950, 4799, 50),
(951, 4799, 50),
(952, 4799, 50),
(953, 4799, 50),
(954, 4799, 50),
(955, 4799, 50),
(956, 4799, 50),
(957, 4799, 50),
(958, 4799, 50),
(959, 4799, 50),
(960, 4799, 50),
(961, 4799, 50),
(962, 4799, 50),
(963, 4799, 50),
(964, 4799, 50),
(965, 4799, 50),
(966, 4799, 50),
(967, 4799, 50),
(968, 4799, 50),
(969, 4799, 50),
(970, 4799, 50),
(971, 4799, 50),
(972, 4799, 50),
(973, 4799, 50),
(974, 4799, 50),
(975, 4799, 50),
(976, 4799, 50),
(977, 4799, 50),
(978, 4799, 50),
(979, 4799, 50),
(980, 4799, 50),
(981, 4799, 50),
(982, 4799, 50),
(983, 4799, 50),
(984, 4799, 50),
(985, 4799, 50),
(986, 4799, 50),
(987, 4799, 50),
(988, 4830, 50),
(989, 4830, 50),
(990, 4830, 50),
(991, 4830, 50),
(992, 4830, 50),
(993, 4830, 50),
(994, 4830, 50),
(995, 4830, 50),
(996, 4830, 50),
(997, 4830, 50),
(998, 4830, 50);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `gateway` varchar(191) NOT NULL,
  `total_price` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_product`
--

CREATE TABLE `sale_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `artist_cut` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `endpoint` varchar(191) DEFAULT NULL,
  `source` varchar(191) NOT NULL DEFAULT '*',
  `layout` varchar(191) NOT NULL DEFAULT 'section',
  `rank` int(11) NOT NULL DEFAULT 0,
  `nb_labels` int(11) NOT NULL DEFAULT 10,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`, `page_id`, `endpoint`, `source`, `layout`, `rank`, `nb_labels`, `created_at`, `updated_at`) VALUES
(1, 'New releases', 1, 'new-releases', '*', 'section', 0, 10, '2022-03-04 22:45:16', '2022-03-04 22:45:16'),
(2, 'Most Played Songs', 1, 'popular-songs', '*', 'section', 1, 10, '2022-03-04 22:45:16', '2022-03-04 22:45:16'),
(3, 'Most Liked Songs', 1, 'most-liked-songs', '*', 'section', 2, 10, '2022-03-04 22:45:16', '2022-03-04 22:45:16'),
(4, 'Most Played Albums', 1, 'popular-albums', '*', 'section', 3, 10, '2022-03-04 22:45:16', '2022-03-04 22:45:16'),
(5, 'Most Played Podcasts', 1, 'popular-podcasts', '*', 'section', 4, 10, '2022-03-04 22:45:16', '2022-03-04 22:45:16'),
(6, 'Latest Podcasts', 1, 'latest-podcasts', '*', 'section', 5, 10, '2022-03-04 22:45:16', '2022-03-04 22:45:16'),
(7, 'New releases', 2, 'new-releases', '*', 'section', 0, 10, '2022-03-04 22:45:16', '2022-03-04 22:45:16'),
(8, 'Latest Album', 2, 'new-releases', 'local', 'cards', 1, 11, '2022-07-11 14:36:23', '2022-12-19 17:18:46'),
(9, 'Most Played Songs', 2, 'popular-songs', 'local', 'cards', 2, 4, '2022-07-11 14:38:40', '2022-12-19 17:18:46'),
(10, 'Channels', 6, NULL, 'local', 'section', 0, 4, '2022-08-18 18:39:11', '2022-08-18 18:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `section_item`
--

CREATE TABLE `section_item` (
  `item_id` varchar(191) NOT NULL,
  `item_type` varchar(191) NOT NULL,
  `section_id` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `section_item`
--

INSERT INTO `section_item` (`item_id`, `item_type`, `section_id`) VALUES
('1687440', 'song', '8'),
('1687439', 'song', '8'),
('1687438', 'song', '8'),
('1687437', 'song', '8'),
('1687436', 'song', '8'),
('1687435', 'song', '8'),
('1687418', 'song', '8'),
('1687417', 'song', '8'),
('1687416', 'song', '8'),
('1687415', 'song', '8'),
('1687419', 'song', '8'),
('1687415', 'song', '9'),
('1687419', 'song', '9'),
('1687435', 'song', '9'),
('1687438', 'song', '9'),
('2', 'radio-station', '10'),
('1', 'radio-station', '10'),
('3', 'radio-station', '10'),
('4', 'radio-station', '10');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user1_id` int(10) UNSIGNED NOT NULL,
  `user2_id` int(10) UNSIGNED NOT NULL,
  `block` tinyint(1) NOT NULL DEFAULT 0,
  `blocked_by` int(10) UNSIGNED DEFAULT NULL,
  `payload` varchar(255) NOT NULL,
  `last_activity` varchar(255) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user1_id`, `user2_id`, `block`, `blocked_by`, `payload`, `last_activity`, `user_id`, `user_agent`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 0, NULL, 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicFAzUXEyajRUdjVxUzBVYXVtNlpnZTltRHJsUnV4eXNMeEozcTZlUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', '1664270712', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '122.176.57.163', NULL, NULL),
(10, 14, 91, 0, NULL, '', '', '', '', '', '2023-03-15 13:32:12', '2023-03-15 13:32:12'),
(11, 14, 2, 0, NULL, '', '', '', '', '', '2023-03-15 13:32:22', '2023-03-15 13:32:22'),
(13, 93, 93, 0, NULL, '', '', '', '', '', '2023-03-16 20:43:28', '2023-03-16 20:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `public`) VALUES
(1, 'software_version', '3.5', 1),
(2, 'appName', 'AWACRADIO', 1),
(3, 'locale', 'en', 1),
(4, 'appUrl', 'http://awacradio.anywhereanycity.com/', 1),
(5, 'appLogo', 'https://awacradio.anywhereanycity.com/storage/1874460303awac-radio-blue.png', 1),
(6, 'appFavicon', 'https://awacradio.anywhereanycity.com/storage/554878781logo-favicon.png', 1),
(7, 'allowThemeChange', '1', 1),
(8, 'enableUserUpload', '1', 1),
(9, 'enableLandingPage', '0', 1),
(10, 'enableBrowse', '1', 1),
(11, 'enableAds', '1', 1),
(12, 'allowArtistAccountRequests', '1', 1),
(13, 'requireAuth', '0', 1),
(14, 'crossfade', '0', 1),
(15, 'disableRegistration', '0', 1),
(16, 'allowVideos', '1', 1),
(17, 'hideRightSidebar', '0', 1),
(18, 'playerVolume', '50', 1),
(19, 'aboutUs', '', 1),
(20, 'requireEmailConfirmation', '0', 1),
(21, 'enableGoogleLogin', '0', 1),
(22, 'hideDownloadButton', '0', 1),
(23, 'google_oauth_client_id', '', 1),
(24, 'enableFacebookLogin', '0', 1),
(25, 'allowUserDownloads', '1', 1),
(26, 'account_agreement', '', 1),
(27, 'allowUserUploads', '1', 1),
(28, 'enableFriendshipSystem', '1', 1),
(29, 'enableRealtime', '1', 1),
(30, 'pusherAppId', '1541206', 1),
(31, 'pusherKey', 'eed37a56a350bb02321b', 1),
(32, 'pusherCluster', 'us2', 1),
(33, 'pusherSecret', '04ca389bc0264f5d0d03', 1),
(34, 'enableChat', '1', 1),
(35, 'enableMail', '0', 1),
(36, 'mailEncryption', 'tls', 0),
(37, 'enableCharts', '1', 1),
(38, 'defaultTheme', 'Light', 1),
(39, 'square_ad', '{\"code\":null,\"position\":\"trs\"}', 1),
(40, 'rect_ad', '{\"code\":null,\"position\":\"tcp\"}', 1),
(41, 'paypalSandboxMode', '0', 0),
(42, 'themes', '{\"primary\":\"#4245a8\",\"secondary\":\"#8C366C\",\"dark\":{\"background\":\"#010d1f\",\"text\":\"#ebebeb\",\"panel\":\"#182131\"},\"light\":{\"background\":\"#ffffff\",\"text\":\"#09021d\",\"panel\":\"#f7f7f7\"}}', 1),
(43, 'landingPage', '{\"sections\":[{\"title\":\"Explore & listen\",\"description\":\"You can discover a variety of music & podcast genres, the artists you like, the music you vibe with, and more.\",\"background\":\"\\/storage\\/defaults\\/images\\/landing\\/explore_and_listen.png\"},{\"title\":\"Listen with friends\",\"description\":\"You can invite your friends to muzzie, chat with them and hear the same song at the same time. Cool isn\'t it?\",\"background\":\"\\/storage\\/defaults\\/images\\/landing\\/listen_with_friends.png\"},{\"title\":\"Create your library\",\"description\":\"You can upload your own beloved songs, create your best playlists, follow your favored artists, and more.\",\"background\":\"\\/storage\\/defaults\\/images\\/landing\\/create_your_library.png\"}],\"callToAction\":\"Play now\",\"showContactUs\":1,\"headerTitle\":\"Welcome to Music\",\"headerDescription\":\"Listen to music anytime & anywhere\",\"headerBackground\":\"\\/images\\/landing-background.jpg\",\"headerBackgroundLayerColor\":\"#9B79135E\",\"customLandingPageHeader\":1,\"footerTitle\":\"Are you an Artist and you want to share your content ?\",\"footerDescription\":\"Sign up on Muzzie now and request an Artist account, get up to 500 MB of free space and more!\",\"footerBackground\":\"\\/images\\/landing-background.jpg\"}', 1),
(44, 'subscriptionButtonColor', '#FF8F00', 1),
(45, 'subscriptionButtonText', 'upgrade', 1),
(46, 'subscriptionButtonOutlined', '1', 1),
(47, 'subscriptionButtonIcon', 'star', 1),
(48, 'enableBilling', '1', 1),
(49, 'stripeGateway', '0', 1),
(50, 'paypalGateway', '1', 1),
(51, 'storageDisk', '{\"disk\":\"public\",\"name\":\"Local Storage\"}', 1),
(52, 'playerLanding', '/home', 1),
(53, 'availableUserDiskSpace', '50', 1),
(54, 'availableArtistDiskSpace', '500', 1),
(55, 'maxFileSize', '20', 1),
(56, 'maxImageSize', '5', 1),
(57, 'show_external_link_spotify', '1', 1),
(58, 'analytics_play_event', '1', 1),
(59, 'analytics_like_event', '1', 1),
(60, 'analytics_download_event', '1', 1),
(61, 'analytics_adClick_event', '1', 1),
(62, 'analytics_fileUpload_event', '1', 1),
(63, 'analytics_chat_event', '1', 1),
(64, 'analytics_login_event', '1', 1),
(65, 'analytics_purchase_event', '1', 1),
(66, 'analytics_logout_event', '1', 1),
(67, 'analytics_subscription_event', '1', 1),
(68, 'provider_spotify', '0', 1),
(69, 'spotify_search', '1', 1),
(70, 'provider_listenNotes', '0', 1),
(71, 'listenNotes_search', '1', 1),
(72, 'shuffleOrder', '[{\"id\":1,\"value\":\"album\",\"text\":\"Same Album\"},{\"id\":1,\"value\":\"artists\",\"text\":\"Same Artists\"},{\"id\":1,\"value\":\"genres\",\"text\":\"Same Genres\"}]', 1),
(73, 'enable_share_facebook', '1', 1),
(74, 'enable_share_twitter', '1', 1),
(75, 'enable_share_whatsapp', '1', 1),
(76, 'enable_share_telegram', '1', 1),
(77, 'enableLangSwitcher', '0', 1),
(78, 'enableThemeSwitcher', '1', 1),
(79, 'siteTitle', '%site_name — Play Music Anywhere, Anycity & Anytime', 1),
(80, 'siteDescription', '%site_name — Play Music Anywhere, Anycity & Anytime', 1),
(81, 'homePageTitle', 'Explore & listen | %site_name', 1),
(82, 'homePageDescription', 'Explore & start listening to pure music on %site_name', 1),
(83, 'browsePageTitle', 'Browse & discover music | %site_name', 1),
(84, 'browsePageDescription', 'Discover & enjoy listening to pure music on %site_name', 1),
(85, 'podcastsPageTitle', 'Podcasts | %site_name', 1),
(86, 'podcastsPageDescription', 'Discover & enjoy listening to podcasts on %site_name', 1),
(87, 'artistPageDescription', 'Enjoy hearing %artist_name on %site_name for free', 1),
(88, 'artistPageTitle', '%artist_name | Play on %site_name', 1),
(89, 'songPageTitle', '%song_title — %artist_name | Play On %site_name', 1),
(90, 'songPageDescription', 'Play & enjoy to %song_title — Song by %artist_name on %site_name', 1),
(91, 'albumPageTitle', '%artist_name — %album_title | Play on %site_name', 1),
(92, 'albumPageDescription', 'Play & enjoy to %album_title — Album by %artist_name on %site_name', 1),
(93, 'podcastPageTitle', '%artist_name — %podcast_title | Play on %site_name', 1),
(94, 'podcastPageDescription', 'Play %podcast_title podcast — Podcast by %artist_name on %site_name', 1),
(95, 'radioStationPageTitle', '%radioStation_name | Play on %site_name', 1),
(96, 'radioStationPageDescription', 'Play %radioStation_name radio on %site_name', 1),
(97, 'playlistPageTitle', '%playlist_title | Play on %site_name', 1),
(98, 'playlistPageDescription', 'Play & enjoy to %playlist_title — Playlist by %user_name on %site_name', 1),
(99, 'genrePageTitle', 'Top %genre_name music | Play on %site_name', 1),
(100, 'genrePageDescription', 'Play & enjoy to %genre_name music on %site_name', 1),
(101, 'podcastGenrePageTitle', 'Top %podcast-genre_name podcasts | Play on %site_name', 1),
(102, 'podcastGenrePageDescription', 'Play & enjoy to %podcast-genre_name podcasts on %site_name', 1),
(103, 'userProfilePageTitle', '%user_name\'s profile | %site_name', 1),
(104, 'userProfilePageDescription', 'Check %user_name profile on %site_name', 1),
(105, 'image_dimensions', '500', 0),
(106, 'thumb_dimensions', '80', 0),
(107, 'youtubePlugin', '0', 1),
(108, 'FTP_ROOT', '', 0),
(109, 'FTP_USERNAME', '', 0),
(110, 'FTP_PORT', '21', 0),
(111, 'FTP_SSL', '1', 0),
(112, 'FTP_PASSIVE', '1', 0),
(113, 'FTP_TIMEOUT', '30', 0),
(114, 'enablePodcasts', '1', 1),
(115, 'enable_artist_account', '1', 1),
(116, 'saas', '1', 1),
(117, 'default_currency', '{\"value\":\"USD\",\"text\":\"United States Dollar(USD)\",\"symbol\":\"$\"}', 1),
(118, 'enable_subscription', '1', 1),
(119, 'enable_selling', '1', 1),
(120, 'royalties', '1', 1),
(121, 'artist_royalty', '50', 1),
(122, 'artist_sale_cut', '90', 1),
(123, 'facebook_link', 'https://www.facebook.com/Awacradio-104807565649710', 1),
(124, 'youtube_link', 'https://www.youtube.com/channel/UCTj3fDsg-1av2NPrQMWmiBg', 1),
(125, 'twitter_link', 'https://twitter.com/awacradio', 1),
(126, 'instagram_link', 'https://www.instagram.com/awacradio/', 1),
(127, 'disableVideo', '0', 1),
(128, 'autoPlay', '0', 1),
(129, 'enable_ffmpeg', '1', 1),
(130, 'enable_youtubedl', '0', 1),
(131, 'enable_hls', '1', 1),
(132, 'optimize_images', '1', 1),
(133, 'hls_save_original_file', '1', 1),
(134, 'enable_hls_encryption', '1', 1),
(135, 'ffprobe_path', '/usr/bin/ffprobe', 1),
(136, 'ffmpeg_path', '/usr/bin/ffmpeg', 1),
(137, 'hls_chunk_duration', '15', 1),
(138, 'paypalClientID', 'AUVTQxMAL-ua5_BwMGuIlnSFXobJhplil_eX1zzLAuNMlrthKQWBpPXhEgQaqPI8T6uoS_wW3GSzMXCH', 1),
(139, 'paypalSecret', 'EBG9EFby1QV98s93P71pkYWx9t9PK_cS15z0KMVzlwl3HYvPrVIuMiftIvKoBvF_UGOZq-tBs4-VL31m', 0),
(140, 'allowGuestsToContact', '1', 1),
(141, 'ga4', '1', 1),
(142, 'ga4MID', 'UA-39012866-1', 1),
(143, 'soundcloud_link', '#', 1),
(144, 'tiktok_link', 'https://www.tiktok.com/@awacradio', 1),
(145, 'snapchat_link', 'https://t.snapchat.com/I0XtsIXI', 1);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `cover` text NOT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT 0,
  `source` text NOT NULL,
  `source_format` varchar(191) NOT NULL,
  `duration` varchar(191) DEFAULT NULL,
  `uploaded_by` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `file_size` bigint(20) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `hls` tinyint(1) NOT NULL DEFAULT 0,
  `isProduct` tinyint(1) NOT NULL DEFAULT 0,
  `isExclusive` tinyint(1) NOT NULL DEFAULT 0,
  `isExplicit` tinyint(1) NOT NULL DEFAULT 0,
  `rank_on_album` tinyint(1) DEFAULT NULL,
  `album_id` int(10) UNSIGNED DEFAULT NULL,
  `playSample` tinyint(1) DEFAULT 0,
  `sampleSeconds` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `spotify_link` varchar(191) DEFAULT NULL,
  `soundcloud_link` varchar(191) DEFAULT NULL,
  `youtube_link` varchar(191) DEFAULT NULL,
  `itunes_link` varchar(191) DEFAULT NULL,
  `deezer_link` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `description`, `cover`, `download_count`, `source`, `source_format`, `duration`, `uploaded_by`, `user_id`, `artist_id`, `file_size`, `file_name`, `public`, `hls`, `isProduct`, `isExclusive`, `isExplicit`, `rank_on_album`, `album_id`, `playSample`, `sampleSeconds`, `created_at`, `updated_at`, `spotify_link`, `soundcloud_link`, `youtube_link`, `itunes_link`, `deezer_link`) VALUES
(1687497, 'Oblivion', NULL, '', 0, '', 'file', NULL, 'admin', 1, 0, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-09-02 14:57:41', '2022-09-02 14:57:41', NULL, NULL, NULL, NULL, NULL),
(1687498, 'Window to the World', NULL, '', 0, '', 'file', NULL, 'admin', 1, 0, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-09-02 15:01:08', '2022-09-02 15:01:08', NULL, NULL, NULL, NULL, NULL),
(1687499, 'The Thirteenth Day', NULL, '', 0, '', 'file', NULL, 'admin', 1, 0, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-09-02 15:04:12', '2022-09-02 15:04:12', NULL, NULL, NULL, NULL, NULL),
(1687501, 'Wild Wild Town', NULL, '', 0, '', 'file', NULL, 'admin', 1, 0, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-09-02 15:07:59', '2022-09-02 15:07:59', NULL, NULL, NULL, NULL, NULL),
(1687503, 'Into The Night', NULL, '', 0, '', 'file', '122', 'admin', 1, 0, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-09-02 15:10:04', '2022-09-02 15:10:36', NULL, NULL, NULL, NULL, NULL),
(1687511, 'sample', NULL, '', 0, '', 'file', NULL, 'artist', 27, 4830, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, 1, NULL, '2022-10-05 11:06:06', '2022-10-05 11:50:35', NULL, NULL, NULL, NULL, NULL),
(1687515, 'English Song', NULL, '', 0, '', 'file', NULL, 'user', 89, 0, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2023-02-13 09:37:43', '2023-02-13 09:37:43', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT 'default',
  `gateway_id` varchar(191) DEFAULT NULL,
  `gateway` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'active',
  `renews_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `plan_id`, `name`, `gateway_id`, `gateway`, `status`, `renews_at`, `created_at`, `updated_at`) VALUES
(1, 39, 1, 'default', NULL, 'local', 'canceled', NULL, '2022-10-03 17:32:26', '2022-12-19 13:28:19'),
(2, 40, 1, 'default', NULL, 'local', 'canceled', NULL, '2022-10-03 17:34:08', '2022-12-19 13:28:15'),
(3, 69, 1, 'default', NULL, 'local', 'active', NULL, '2022-12-14 02:18:22', '2022-12-14 02:18:22'),
(4, 89, 1, 'default', NULL, 'local', 'active', NULL, '2023-02-13 09:22:35', '2023-02-13 09:22:35'),
(5, 90, 1, 'default', NULL, 'local', 'active', NULL, '2023-03-07 22:15:39', '2023-03-07 22:15:39'),
(6, 91, 1, 'default', NULL, 'local', 'active', NULL, '2023-03-08 13:39:21', '2023-03-08 13:39:21'),
(7, 92, 1, 'default', NULL, 'local', 'active', NULL, '2023-03-08 13:40:28', '2023-03-08 13:40:28'),
(8, 14, 1, 'default', NULL, 'local', 'active', NULL, '2023-03-14 21:00:07', '2023-03-14 21:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `avatar` text DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `lang` varchar(191) NOT NULL DEFAULT 'en',
  `payment_method` varchar(191) DEFAULT NULL,
  `facebook_id` int(11) DEFAULT NULL,
  `available_disk_space` double(8,2) NOT NULL DEFAULT 0.00,
  `is_playing` text DEFAULT NULL,
  `requested_artist_account` tinyint(1) NOT NULL DEFAULT 0,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `blocked` tinyint(1) NOT NULL DEFAULT 0,
  `hide_activity` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(191) DEFAULT NULL,
  `card_brand` varchar(191) DEFAULT NULL,
  `card_last_four` varchar(4) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `password`, `lang`, `payment_method`, `facebook_id`, `available_disk_space`, `is_playing`, `requested_artist_account`, `is_admin`, `blocked`, `hide_activity`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`) VALUES
(1, 'Admin', '', 'anywhereanycity@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 1, 0, 0, NULL, NULL, '2022-03-04 22:45:19', '2022-03-04 22:45:19', NULL, NULL, NULL, NULL),
(2, 'Atul', '', 'atuldogra23@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, '2022-03-04 22:45:19', '2022-03-04 22:45:19', NULL, NULL, NULL, NULL),
(3, 'combetohct@yahoo.com', NULL, 'combetohct@yahoo.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'wzEqeWDYykS', NULL, 'nesulatemarhumzade@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'cJQhBxObvHYLe', NULL, 'Oviktorijaumaryam2354@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'vikas', NULL, 'vikaskumar14786@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, '2022-03-04 22:45:19', NULL, NULL, NULL, NULL, NULL),
(7, 'GXUwcEfvRhj', NULL, 'truongvietlongg044@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'kanuram14786', NULL, 'kanuram14786@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'loawGqKsnLUMFB', NULL, 'kmicahelrdu@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'ZzXboEaFswS', NULL, 'tuantrantrang018@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Jerrytoots', NULL, 'kvartira38.com@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'EgOasnJZFfStwVz', NULL, 'Ukatjaimichelleex4625@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'aVMsTEzlBgw', NULL, 'Agaljaahelenud8901@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'alvin14786@gmail.com', NULL, 'alvin14786@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Alexander', NULL, 'help@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'eDYPRoQxflEabhs', NULL, 'dovee1ayq45@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'B O', NULL, 'bobbypatterson1809@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'dhasr22', NULL, 'dhalexandersr@anywhereanycity.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'dkalexander', NULL, 'dkalexander@anywhereanycity.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'DnkQFCpZYir', NULL, 'yjohndanielz842y0594ykui@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'yzObMHkf', NULL, 'alonzav082u0u060@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'SAcyOKRbMY', NULL, 'zvancepzoa95a1@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'WGDzdJIOxKHj', NULL, 'mbradi8aq745m08@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'jFZrKBlAPLHy', NULL, 'jessyee5157e25yn5@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'fOXmPvHGpSug', NULL, 'vittoriaj4ir7f4o31@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'johndoe', NULL, 'speciesgroup@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, '2023-03-17 13:01:38', NULL, NULL, NULL, NULL),
(28, 'ciFRSQMdulAVUO', NULL, 'udomniqueu48m72048@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'qLdNebBjSFsYMXay', NULL, 'nicholed75o4pw7a7@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'zRvfGimabSlDNO', NULL, 'mcayceet734mgu02@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'kgfHlwbDA', NULL, 'ztynellq502y920zu@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'PWFRMDUKuZlLna', NULL, 'znygel30j4r24z0rd@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'hBaRIDEvjecnXSbd', NULL, 'igraysonpa4i02eili31@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Ebony Satterfield', NULL, 'ebonixmuzik@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'LoyYkCza', NULL, 'letrice058n2509k8jav@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Test', NULL, 'kuzangates@gmail.com', 'cc03e747a6afbbcbf8be7668acfebee5', 'en', NULL, NULL, 100.00, NULL, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'hKjyrTHBZbEe', NULL, 'dorie9y5t186p87@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'dLVvZjhw', NULL, 'xriko94y2x2f4@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'aman', NULL, 'dexaves281@deitada.com', '$2y$10$HMlP7W21MwvIWwg.4R5AVumSzlCOYE8Jm/gMcC5gOV7hOsfkw/X5q', 'en', NULL, NULL, 50.00, NULL, 0, 0, 0, 0, NULL, NULL, '2022-10-03 17:32:26', '2022-10-03 17:32:26', NULL, NULL, NULL, NULL),
(40, 'aman1', NULL, 'aman.technocomet@gmail.com', '$2y$10$a0wbrbA/UISei9uy.huZhemDnJLl76biEikrapi3Eec6XEkDriAq2', 'en', NULL, NULL, 50.00, NULL, 0, 0, 0, 0, NULL, NULL, '2022-10-03 17:34:08', '2022-10-03 17:34:08', NULL, NULL, NULL, NULL),
(41, 'Anita', NULL, 'anitaaaa@yopmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'testing', NULL, 'testing@test.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'yaseen', NULL, 'yaseensaleem48@yopmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'yase', NULL, 'yaseensaleem@yopmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'lala', NULL, 'yaseensaleem321@yopmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'yasin', NULL, 'yaseensaleem123@yopmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'gg', NULL, 'yaseensaleem1@yopmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'tt', NULL, 'yaseensaleem1122@yopmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'll', NULL, 'll@test.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'ii', NULL, 'ii@test.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'ok', NULL, 'okokok@test.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'testing123@yopmail.com', NULL, 'testing123@yopmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Shoaib Rehan', NULL, 'ranashoaibrehan@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'tok', NULL, 'tok@yopmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'ok', NULL, 'ali.naseer425@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'lkuLBcwQNT', NULL, 'vitaliybel7xr0@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'mok', NULL, 'mok@yopmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'qwerty', NULL, 'qwerty@yopmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'qq', NULL, 'qq@yopmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'iVdywczj', NULL, 'vasiliyxibe@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'YaPpmUMNlLxjWI', NULL, 'dimaeproz@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'yas', NULL, 'yas123@yopmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'oko', NULL, 'check@yopmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'jonas', NULL, 'jonasang20@yahoo.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'nickjoe363', NULL, 'nickjoe363@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'charlieesslingercny92', NULL, 'charlieesslingercny92@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'QYAuUPZJCEIm', NULL, 'j9dpenny@hotmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'test', NULL, 'tt9802002@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'Shoaib', NULL, 'shoaib.qualityclix@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'Shoaib', NULL, 'rehan.qualityclix@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'wTKRdxGkylFJPM', NULL, 'zen54finn@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'Maira', NULL, 'maira.ammad259@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'Maira', NULL, 'maira.tariq259@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'BXsQMfWoeaCJb', NULL, 'feqpibuwob@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'KuxEQSYXygebZo', NULL, 'kaflevipiv@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'NldJwfjkOXKebn', NULL, 'helzozebis@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'pIOeDTyR', NULL, 'nusqasevus@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'test', NULL, 'test123@test.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'fkvtOsKU', NULL, 'jolwapeyim@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'fenet', NULL, 'fenet27268@octovie.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'xeraf70966', NULL, 'xeraf70966@prolug.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'pakerid385', NULL, 'pakerid385@cnxcoin.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'mir', NULL, 'mirsisir@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'Test', NULL, 'businessjtpl@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'KfqpPtFaOIuCb', NULL, 'genbujadak@outlook.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'atul', NULL, 'alvin147286@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'alvin143286@gmail.com', NULL, 'alvin143286@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'Amimul', NULL, 'unitech4ubd@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'Amimul Ahsan', NULL, 'bappycpi732@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, '2023-02-24 11:07:21', NULL, NULL, NULL, NULL),
(90, 'ashu', NULL, 'ashu@gmail.com', '$2y$10$j5pSrlF3kXQs8D2ds/27NeXil5Cyn8/rv3P4MkB2fKYXUGAogeBd.', 'en', NULL, NULL, 50.00, NULL, 0, 0, 0, 0, NULL, NULL, '2023-03-07 22:15:39', '2023-03-07 22:15:39', NULL, NULL, NULL, NULL),
(91, 'atul D', NULL, 'atul@gmail.com', '$2y$10$gZZIhH82UgZEctHe5.S4Mer.qCW48NNHuDKS1TBJd91Mlbaq50HsG', 'en', NULL, NULL, 50.00, NULL, 0, 0, 0, 0, NULL, NULL, '2023-03-08 13:39:20', '2023-03-08 13:39:20', NULL, NULL, NULL, NULL),
(92, 'Tanish D', NULL, 'tanish@gmail.com', '$2y$10$wl/vE5VEd12l5c.Jgwrsu.mRkRmwX3bizAgQoSSAfcJ60N1weDesG', 'en', NULL, NULL, 50.00, '{\"id\":1687511,\"title\":\"sample\",\"parent_title\":null,\"artists\":\"johndoe\",\"type\":\"song\"}', 0, 0, 0, 0, NULL, NULL, '2023-03-08 13:40:28', '2023-03-08 13:47:11', NULL, NULL, NULL, NULL),
(93, 'kanuram14787@gmail.com', NULL, 'kanuram14787@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, '2023-03-16 21:04:24', NULL, NULL, NULL, NULL),
(94, 'pooja', NULL, 'pooja@gmail.com', '$2y$10$wy6itTrstrnQ.7sS7kocSODn3QePGLvi0n0EhOIHfE3/4G2vNDldS', 'en', NULL, NULL, 100.00, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_permission`
--

CREATE TABLE `user_permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_permission`
--

INSERT INTO `user_permission` (`id`, `permission_id`, `user_id`, `created_at`, `updated_at`) VALUES
(8, 11, 1, NULL, NULL),
(9, 12, 1, NULL, NULL),
(10, 13, 1, NULL, NULL),
(11, 14, 1, NULL, NULL),
(12, 15, 1, NULL, NULL),
(13, 16, 1, NULL, NULL),
(14, 17, 1, NULL, NULL),
(15, 18, 1, NULL, NULL),
(16, 19, 1, NULL, NULL),
(17, 20, 1, NULL, NULL),
(18, 21, 1, NULL, NULL),
(19, 22, 1, NULL, NULL),
(20, 23, 1, NULL, NULL),
(21, 24, 1, NULL, NULL),
(22, 25, 1, NULL, NULL),
(23, 26, 1, NULL, NULL),
(24, 27, 1, NULL, NULL),
(25, 28, 1, NULL, NULL),
(26, 29, 1, NULL, NULL),
(27, 30, 1, NULL, NULL),
(28, 31, 1, NULL, NULL),
(29, 32, 1, NULL, NULL),
(30, 33, 1, NULL, NULL),
(31, 34, 1, NULL, NULL),
(32, 35, 1, NULL, NULL),
(33, 36, 1, NULL, NULL),
(34, 37, 1, NULL, NULL),
(35, 38, 1, NULL, NULL),
(36, 39, 1, NULL, NULL),
(37, 40, 1, NULL, NULL),
(38, 8, 2, NULL, NULL),
(39, 9, 2, NULL, NULL),
(40, 10, 2, NULL, NULL),
(41, 1, 39, NULL, NULL),
(42, 2, 39, NULL, NULL),
(43, 3, 39, NULL, NULL),
(44, 4, 39, NULL, NULL),
(45, 5, 39, NULL, NULL),
(46, 6, 39, NULL, NULL),
(48, 1, 40, NULL, NULL),
(49, 2, 40, NULL, NULL),
(50, 3, 40, NULL, NULL),
(51, 4, 40, NULL, NULL),
(52, 5, 40, NULL, NULL),
(53, 6, 40, NULL, NULL),
(55, 1, 90, NULL, NULL),
(56, 2, 90, NULL, NULL),
(57, 3, 90, NULL, NULL),
(58, 4, 90, NULL, NULL),
(59, 5, 90, NULL, NULL),
(60, 6, 90, NULL, NULL),
(62, 1, 91, NULL, NULL),
(63, 2, 91, NULL, NULL),
(64, 3, 91, NULL, NULL),
(65, 4, 91, NULL, NULL),
(66, 5, 91, NULL, NULL),
(67, 6, 91, NULL, NULL),
(69, 1, 92, NULL, NULL),
(70, 2, 92, NULL, NULL),
(71, 3, 92, NULL, NULL),
(72, 4, 92, NULL, NULL),
(73, 5, 92, NULL, NULL),
(74, 6, 92, NULL, NULL),
(76, 8, 1, NULL, NULL),
(77, 9, 1, NULL, NULL),
(78, 10, 1, NULL, NULL),
(79, 8, 3, NULL, NULL),
(80, 9, 3, NULL, NULL),
(81, 10, 3, NULL, NULL),
(82, 8, 4, NULL, NULL),
(83, 9, 4, NULL, NULL),
(84, 10, 4, NULL, NULL),
(85, 8, 5, NULL, NULL),
(86, 9, 5, NULL, NULL),
(87, 10, 5, NULL, NULL),
(88, 8, 6, NULL, NULL),
(89, 9, 6, NULL, NULL),
(90, 10, 6, NULL, NULL),
(91, 8, 7, NULL, NULL),
(92, 9, 7, NULL, NULL),
(93, 10, 7, NULL, NULL),
(94, 11, 8, NULL, NULL),
(95, 12, 8, NULL, NULL),
(96, 13, 8, NULL, NULL),
(97, 14, 8, NULL, NULL),
(98, 15, 8, NULL, NULL),
(99, 16, 8, NULL, NULL),
(100, 17, 8, NULL, NULL),
(101, 18, 8, NULL, NULL),
(102, 19, 8, NULL, NULL),
(103, 20, 8, NULL, NULL),
(104, 21, 8, NULL, NULL),
(105, 22, 8, NULL, NULL),
(106, 23, 8, NULL, NULL),
(107, 24, 8, NULL, NULL),
(108, 25, 8, NULL, NULL),
(109, 26, 8, NULL, NULL),
(110, 27, 8, NULL, NULL),
(111, 28, 8, NULL, NULL),
(112, 29, 8, NULL, NULL),
(113, 30, 8, NULL, NULL),
(114, 31, 8, NULL, NULL),
(115, 32, 8, NULL, NULL),
(116, 33, 8, NULL, NULL),
(117, 34, 8, NULL, NULL),
(118, 35, 8, NULL, NULL),
(119, 36, 8, NULL, NULL),
(120, 37, 8, NULL, NULL),
(121, 38, 8, NULL, NULL),
(122, 39, 8, NULL, NULL),
(123, 40, 8, NULL, NULL),
(124, 8, 9, NULL, NULL),
(125, 9, 9, NULL, NULL),
(126, 10, 9, NULL, NULL),
(127, 8, 10, NULL, NULL),
(128, 9, 10, NULL, NULL),
(129, 10, 10, NULL, NULL),
(130, 8, 11, NULL, NULL),
(131, 9, 11, NULL, NULL),
(132, 10, 11, NULL, NULL),
(133, 8, 12, NULL, NULL),
(134, 9, 12, NULL, NULL),
(135, 10, 12, NULL, NULL),
(136, 8, 13, NULL, NULL),
(137, 9, 13, NULL, NULL),
(138, 10, 13, NULL, NULL),
(139, 1, 14, NULL, NULL),
(140, 2, 14, NULL, NULL),
(141, 3, 14, NULL, NULL),
(142, 4, 14, NULL, NULL),
(143, 5, 14, NULL, NULL),
(144, 6, 14, NULL, NULL),
(145, 8, 16, NULL, NULL),
(146, 9, 16, NULL, NULL),
(147, 10, 16, NULL, NULL),
(148, 8, 17, NULL, NULL),
(149, 9, 17, NULL, NULL),
(150, 10, 17, NULL, NULL),
(151, 8, 18, NULL, NULL),
(152, 9, 18, NULL, NULL),
(153, 10, 18, NULL, NULL),
(154, 8, 19, NULL, NULL),
(155, 9, 19, NULL, NULL),
(156, 10, 19, NULL, NULL),
(157, 8, 20, NULL, NULL),
(158, 9, 20, NULL, NULL),
(159, 10, 20, NULL, NULL),
(160, 8, 21, NULL, NULL),
(161, 9, 21, NULL, NULL),
(162, 10, 21, NULL, NULL),
(163, 8, 22, NULL, NULL),
(164, 9, 22, NULL, NULL),
(165, 10, 22, NULL, NULL),
(166, 8, 23, NULL, NULL),
(167, 9, 23, NULL, NULL),
(168, 10, 23, NULL, NULL),
(169, 8, 24, NULL, NULL),
(170, 9, 24, NULL, NULL),
(171, 10, 24, NULL, NULL),
(172, 8, 25, NULL, NULL),
(173, 9, 25, NULL, NULL),
(174, 10, 25, NULL, NULL),
(175, 8, 26, NULL, NULL),
(176, 9, 26, NULL, NULL),
(177, 10, 26, NULL, NULL),
(178, 8, 27, NULL, NULL),
(179, 9, 27, NULL, NULL),
(180, 10, 27, NULL, NULL),
(181, 8, 28, NULL, NULL),
(182, 9, 28, NULL, NULL),
(183, 10, 28, NULL, NULL),
(184, 8, 29, NULL, NULL),
(185, 9, 29, NULL, NULL),
(186, 10, 29, NULL, NULL),
(187, 8, 30, NULL, NULL),
(188, 9, 30, NULL, NULL),
(189, 10, 30, NULL, NULL),
(190, 8, 31, NULL, NULL),
(191, 9, 31, NULL, NULL),
(192, 10, 31, NULL, NULL),
(193, 8, 32, NULL, NULL),
(194, 9, 32, NULL, NULL),
(195, 10, 32, NULL, NULL),
(196, 8, 33, NULL, NULL),
(197, 9, 33, NULL, NULL),
(198, 10, 33, NULL, NULL),
(199, 8, 34, NULL, NULL),
(200, 9, 34, NULL, NULL),
(201, 10, 34, NULL, NULL),
(202, 8, 35, NULL, NULL),
(203, 9, 35, NULL, NULL),
(204, 10, 35, NULL, NULL),
(205, 8, 36, NULL, NULL),
(206, 9, 36, NULL, NULL),
(207, 10, 36, NULL, NULL),
(208, 8, 37, NULL, NULL),
(209, 9, 37, NULL, NULL),
(210, 10, 37, NULL, NULL),
(211, 8, 38, NULL, NULL),
(212, 9, 38, NULL, NULL),
(213, 10, 38, NULL, NULL),
(214, 1, 93, NULL, NULL),
(215, 2, 93, NULL, NULL),
(216, 3, 93, NULL, NULL),
(217, 4, 93, NULL, NULL),
(218, 5, 93, NULL, NULL),
(219, 6, 93, NULL, NULL),
(220, 1, 94, NULL, NULL),
(221, 2, 94, NULL, NULL),
(222, 3, 94, NULL, NULL),
(223, 4, 94, NULL, NULL),
(224, 5, 94, NULL, NULL),
(225, 6, 94, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Author'),
(3, 'Editor');

-- --------------------------------------------------------

--
-- Table structure for table `visiting_browsers`
--

CREATE TABLE `visiting_browsers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `visitors` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visiting_countries`
--

CREATE TABLE `visiting_countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `visitors` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album_artist`
--
ALTER TABLE `album_artist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artist_song`
--
ALTER TABLE `artist_song`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friendships`
--
ALTER TABLE `friendships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `friendships_friend_id_index` (`friend_id`),
  ADD KEY `friendships_user_id_index` (`user_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre_artist`
--
ALTER TABLE `genre_artist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre_podcast`
--
ALTER TABLE `genre_podcast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre_song`
--
ALTER TABLE `genre_song`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_locale_unique` (`locale`);

--
-- Indexes for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation_items`
--
ALTER TABLE `navigation_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payouts`
--
ALTER TABLE `payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_methods`
--
ALTER TABLE `payout_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_method_artist`
--
ALTER TABLE `payout_method_artist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_permission`
--
ALTER TABLE `plan_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_role`
--
ALTER TABLE `plan_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playings`
--
ALTER TABLE `playings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist_song`
--
ALTER TABLE `playlist_song`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plays`
--
ALTER TABLE `plays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `podcasts`
--
ALTER TABLE `podcasts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `podcast_genres`
--
ALTER TABLE `podcast_genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_price`
--
ALTER TABLE `product_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radio_stations`
--
ALTER TABLE `radio_stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `royalties`
--
ALTER TABLE `royalties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_product`
--
ALTER TABLE `sale_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sessions_user1_id_user2_id_unique` (`user1_id`,`user2_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_plan_id_index` (`user_id`,`plan_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `user_permission`
--
ALTER TABLE `user_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `visiting_browsers`
--
ALTER TABLE `visiting_browsers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visiting_countries`
--
ALTER TABLE `visiting_countries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68793;

--
-- AUTO_INCREMENT for table `album_artist`
--
ALTER TABLE `album_artist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4843;

--
-- AUTO_INCREMENT for table `artist_song`
--
ALTER TABLE `artist_song`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `friendships`
--
ALTER TABLE `friendships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `genre_artist`
--
ALTER TABLE `genre_artist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `genre_podcast`
--
ALTER TABLE `genre_podcast`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genre_song`
--
ALTER TABLE `genre_song`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=798;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `navigation_items`
--
ALTER TABLE `navigation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payouts`
--
ALTER TABLE `payouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payout_methods`
--
ALTER TABLE `payout_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payout_method_artist`
--
ALTER TABLE `payout_method_artist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plan_permission`
--
ALTER TABLE `plan_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `plan_role`
--
ALTER TABLE `plan_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `playings`
--
ALTER TABLE `playings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17420;

--
-- AUTO_INCREMENT for table `playlist_song`
--
ALTER TABLE `playlist_song`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plays`
--
ALTER TABLE `plays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1735;

--
-- AUTO_INCREMENT for table `podcasts`
--
ALTER TABLE `podcasts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54564;

--
-- AUTO_INCREMENT for table `podcast_genres`
--
ALTER TABLE `podcast_genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_price`
--
ALTER TABLE `product_price`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `radio_stations`
--
ALTER TABLE `radio_stations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `royalties`
--
ALTER TABLE `royalties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=999;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_product`
--
ALTER TABLE `sale_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1687516;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `user_permission`
--
ALTER TABLE `user_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visiting_browsers`
--
ALTER TABLE `visiting_browsers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visiting_countries`
--
ALTER TABLE `visiting_countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `friendships`
--
ALTER TABLE `friendships`
  ADD CONSTRAINT `friendships_friend_id_foreign` FOREIGN KEY (`friend_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `friendships_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
