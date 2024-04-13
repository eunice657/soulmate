-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 05, 2024 at 02:54 AM
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
-- Database: `soulmate`
--

-- --------------------------------------------------------

--
-- Table structure for table `career`
--

CREATE TABLE `career` (
  `uid` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `job_desc` text NOT NULL,
  `college` text DEFAULT NULL,
  `entre` enum('yes','no') DEFAULT NULL,
  `owns_biz` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `career`
--

INSERT INTO `career` (`uid`, `status`, `job_desc`, `college`, `entre`, `owns_biz`) VALUES
(3, 'working', 'Designer', 'Nike Inc', 'no', ''),
(4, 'student', 'Microbiology', 'Caltech', 'yes', 'zivame.com'),
(5, 'working', 'Historian', 'Discovery Inc', 'yes', 'Truffler.co'),
(6, 'student', 'Psychiatry', 'Chowgule College', 'no', ''),
(8, 'student', 'CSE', 'GEC', 'yes', 'Shopify.in'),
(9, 'student', 'Computer Science', 'IIT-B', 'no', ''),
(10, 'working', 'Hair Stylist', 'L\'oreal Paris', 'no', ' '),
(11, 'working', 'Gamer', 'Ubisoft', 'no', ' '),
(12, 'working', 'actor', 'disney studios', 'yes', ' learnacting.com'),
(13, 'working', 'dancer', 'Pro Dance Academy', 'yes', 'prodancer.com'),
(14, 'student', 'biotech engg', 'IIIT-B', 'no', ' '),
(15, 'working', 'Lead Animator', 'Microsoft India', 'no', ' '),
(16, 'working', 'Ex-CEO', 'Microsoft Inc', 'yes', 'Microsoft Inc'),
(17, 'working', 'Software Developer', 'TCS', 'no', ''),
(18, 'student', 'CSE', 'IIT-B', 'yes', 'I run my family biyaatch'),
(19, 'student', 'you', 'your heart', 'no', ''),
(20, 'working', 'Business', 'Wayne Towers', 'yes', 'Gotham CLub'),
(21, 'working', 'Spiderman', 'MCU', 'yes', 'Pizza Boii'),
(23, 'working', 'Heart Surgeon', 'Apollo Hospital', 'no', ''),
(28, 'Working', 'Engineer', 'SpaceX', 'yes', 'Tesla Inc'),
(29, 'working', 'Engineer', 'Amazon', 'yes', 'AWS'),
(30, 'student', 'Computer Science', 'GIMPA', 'yes', 'DYRECT'),
(31, 'student', 'hhh', '', 'yes', 'gimpa'),
(32, 'student', 'mhghj', 'hkvkjh', 'yes', 'hfhghvkhv'),
(34, 'student', 'computer', 'gimpa', 'yes', 'web dev'),
(35, 'student', 'yemi229', 'yemyemi229i229', 'no', ''),
(36, 'working', 'kjkkk', 'kkkkk', 'no', '');

-- --------------------------------------------------------

--
-- Table structure for table `hobbies`
--

CREATE TABLE `hobbies` (
  `uid` int(11) NOT NULL,
  `streaming_movies_and_shows` enum('1','0') NOT NULL,
  `anime` enum('1','0') NOT NULL,
  `stand_up_comedy` enum('1','0') NOT NULL,
  `reading` enum('1','0') NOT NULL,
  `writing` enum('1','0') NOT NULL,
  `meditation` enum('1','0') NOT NULL,
  `music` enum('1','0') NOT NULL,
  `eating` enum('1','0') NOT NULL,
  `dancing` enum('1','0') NOT NULL,
  `singing` enum('1','0') NOT NULL,
  `baking` enum('1','0') NOT NULL,
  `cooking` enum('1','0') NOT NULL,
  `gardening` enum('1','0') NOT NULL,
  `arts_and_crafts` enum('1','0') NOT NULL,
  `painting` enum('1','0') NOT NULL,
  `sketching` enum('1','0') NOT NULL,
  `fishing` enum('1','0') NOT NULL,
  `running` enum('1','0') NOT NULL,
  `walking` enum('1','0') NOT NULL,
  `swimming` enum('1','0') NOT NULL,
  `working_out` enum('1','0') NOT NULL,
  `yoga` enum('1','0') NOT NULL,
  `bicycling` enum('1','0') NOT NULL,
  `driving` enum('1','0') NOT NULL,
  `riding` enum('1','0') NOT NULL,
  `sports` enum('1','0') NOT NULL,
  `video_games` enum('1','0') NOT NULL,
  `travelling` enum('1','0') NOT NULL,
  `hiking` enum('1','0') NOT NULL,
  `collecting` enum('1','0') NOT NULL,
  `volunteer_work` enum('1','0') NOT NULL,
  `working` enum('1','0') NOT NULL,
  `audiobooks_and_podcasts` enum('1','0') NOT NULL,
  `youtube` enum('1','0') NOT NULL,
  `social_media` enum('1','0') NOT NULL,
  `housework` enum('1','0') NOT NULL,
  `shopping` enum('1','0') NOT NULL,
  `coding` enum('1','0') NOT NULL,
  `hacking` enum('1','0') NOT NULL,
  `photoshop` enum('1','0') NOT NULL,
  `video_editing` enum('1','0') NOT NULL,
  `filmmaking` enum('1','0') NOT NULL,
  `science` enum('1','0') NOT NULL,
  `astronomy` enum('1','0') NOT NULL,
  `astrology` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hobbies`
--

INSERT INTO `hobbies` (`uid`, `streaming_movies_and_shows`, `anime`, `stand_up_comedy`, `reading`, `writing`, `meditation`, `music`, `eating`, `dancing`, `singing`, `baking`, `cooking`, `gardening`, `arts_and_crafts`, `painting`, `sketching`, `fishing`, `running`, `walking`, `swimming`, `working_out`, `yoga`, `bicycling`, `driving`, `riding`, `sports`, `video_games`, `travelling`, `hiking`, `collecting`, `volunteer_work`, `working`, `audiobooks_and_podcasts`, `youtube`, `social_media`, `housework`, `shopping`, `coding`, `hacking`, `photoshop`, `video_editing`, `filmmaking`, `science`, `astronomy`, `astrology`) VALUES
(3, '1', '0', '1', '0', '1', '1', '0', '1', '1', '1', '0', '0', '1', '0', '1', '0', '0', '1', '0', '1', '0', '0', '1', '0', '1', '0', '0', '0', '1', '1', '1', '0', '1', '1', '0', '1', '0', '1', '0', '1', '1', '0', '0', '0', '1'),
(4, '0', '0', '0', '0', '0', '0', '1', '1', '0', '1', '1', '0', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '1', '1', '0', '0', '1', '0', '1', '0', '1', '0', '1', '1', '1', '1', '0', '0', '0', '1', '0', '1', '0', '0', '1'),
(5, '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0'),
(6, '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '1', '0', '1', '0', '0', '1', '0', '0', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '0', '1'),
(8, '1', '0', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1', '1', '0', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(9, '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '1', '0', '1', '1', '0', '0', '0', '1', '0', '0', '0', '0', '1', '0', '1', '1', '1', '0', '1', '1', '1', '0', '1', '1', '1', '1', '0', '1', '1', '1'),
(16, '1', '0', '0', '1', '0', '1', '0', '0', '0', '0', '1', '1', '0', '1', '1', '0', '1', '0', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '1', '1', '1', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0'),
(17, '1', '0', '1', '1', '0', '1', '1', '0', '1', '1', '0', '1', '1', '0', '1', '1', '0', '1', '1', '0', '1', '1', '0', '1', '1', '0', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '1', '1', '1', '1', '1', '1'),
(18, '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '1', '1', '0', '0', '0', '1', '0', '1', '0', '0', '0', '0'),
(19, '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '1', '0', '1', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0'),
(20, '0', '1', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '0', '0', '1', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '1', '0', '0', '1', '0'),
(21, '1', '1', '1', '0', '0', '1', '1', '1', '1', '0', '0', '1', '1', '1', '1', '0', '0', '1', '0', '0', '1', '1', '1', '0', '1', '0', '0', '1', '0', '0', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '1', '0', '0', '0', '1'),
(23, '1', '0', '0', '0', '1', '1', '1', '1', '0', '1', '0', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '1', '0', '1', '0', '1', '1', '0', '1', '0', '1', '0', '0', '0', '0'),
(28, '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1'),
(29, '1', '1', '0', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1', '0', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1', '1', '0', '1', '1', '0', '0', '0', '1', '0', '0', '0', '0'),
(30, '0', '0', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0'),
(31, '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0'),
(32, '1', '0', '0', '1', '0', '0', '1', '0', '0', '1', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(34, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(35, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(36, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `match`
--

CREATE TABLE `match` (
  `mid` int(11) NOT NULL,
  `uid1` int(11) NOT NULL,
  `uid2` int(11) NOT NULL,
  `status` enum('pending','match','blocked') NOT NULL,
  `first_liked_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `match`
--

INSERT INTO `match` (`mid`, `uid1`, `uid2`, `status`, `first_liked_by`, `created_at`) VALUES
(59, 28, 3, 'match', 28, '2022-06-24 21:29:31'),
(60, 28, 4, 'blocked', 28, '2022-06-24 21:29:34'),
(61, 29, 3, 'match', 29, '2022-06-27 11:25:10'),
(62, 29, 4, 'blocked', 29, '2022-06-27 11:25:12'),
(63, 29, 6, 'blocked', 29, '2022-06-27 11:25:13'),
(64, 29, 9, 'pending', 29, '2022-06-27 11:25:14'),
(65, 29, 10, 'blocked', 29, '2022-06-27 11:34:13'),
(66, 30, 3, 'pending', 30, '2024-03-29 20:58:14'),
(67, 30, 4, 'blocked', 30, '2024-03-29 20:58:19'),
(68, 30, 6, 'blocked', 30, '2024-03-29 20:58:21'),
(69, 30, 9, 'pending', 30, '2024-03-29 20:58:22'),
(70, 30, 10, 'blocked', 30, '2024-03-29 20:58:24'),
(71, 30, 11, 'pending', 30, '2024-03-29 20:58:25'),
(72, 30, 12, 'pending', 30, '2024-03-29 20:58:26'),
(73, 30, 13, 'pending', 30, '2024-03-29 20:58:27'),
(74, 30, 14, 'pending', 30, '2024-03-29 20:58:28'),
(75, 30, 15, 'blocked', 30, '2024-03-29 20:58:30'),
(76, 30, 19, 'pending', 30, '2024-03-29 20:58:31'),
(77, 31, 5, 'blocked', 31, '2024-03-29 21:19:23'),
(78, 31, 8, 'blocked', 31, '2024-03-29 21:19:24'),
(79, 31, 16, 'blocked', 31, '2024-03-29 21:19:25'),
(80, 31, 17, 'blocked', 31, '2024-03-29 21:19:26'),
(81, 31, 18, 'blocked', 31, '2024-03-29 21:19:29'),
(82, 31, 20, 'blocked', 31, '2024-03-29 21:19:30'),
(83, 31, 21, 'blocked', 31, '2024-03-29 21:19:31'),
(84, 31, 23, 'blocked', 31, '2024-03-29 21:19:32'),
(85, 31, 28, 'blocked', 31, '2024-03-29 21:19:33'),
(86, 31, 29, 'blocked', 31, '2024-03-29 21:19:34'),
(87, 31, 30, 'match', 31, '2024-03-29 21:19:38'),
(88, 32, 3, 'blocked', 32, '2024-03-31 16:56:03'),
(89, 32, 4, 'blocked', 32, '2024-03-31 16:56:05'),
(90, 32, 6, 'blocked', 32, '2024-03-31 16:56:07'),
(91, 32, 9, 'pending', 32, '2024-03-31 16:56:08'),
(92, 32, 10, 'pending', 32, '2024-03-31 16:56:09'),
(93, 32, 11, 'pending', 32, '2024-03-31 16:56:10'),
(94, 32, 12, 'pending', 32, '2024-03-31 16:56:11'),
(95, 32, 13, 'pending', 32, '2024-03-31 16:56:11'),
(96, 32, 14, 'pending', 32, '2024-03-31 16:56:12'),
(97, 32, 15, 'pending', 32, '2024-03-31 16:56:12'),
(98, 32, 19, 'pending', 32, '2024-03-31 16:56:13'),
(99, 32, 31, 'match', 32, '2024-03-31 16:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(32, 879670352, 886245528, 'Hey Jane!'),
(33, 886245528, 879670352, 'Oh hello Elon :)'),
(34, 164859673, 580392693, 'heya'),
(35, 580392693, 164859673, 'how are you doing today ?'),
(36, 580392693, 164859673, 'okay'),
(37, 580392693, 164859673, 'yes please'),
(38, 580392693, 164859673, 'heya'),
(39, 164859673, 580392693, 'please im busy'),
(40, 164859673, 580392693, 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `nid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` enum('match','default','chat') NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `seen_by_user` enum('yes','no') DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`nid`, `uid`, `type`, `content`, `created_at`, `seen_by_user`) VALUES
(2, 5, 'default', 'Welcome to SoulMate!', '2021-12-11 07:52:52', 'yes'),
(3, 5, 'default', 'Browse through recommendations to find your perfect match!', '2021-12-11 07:52:52', 'yes'),
(5, 3, 'default', 'Welcome to SoulMate!', '2021-12-12 11:39:09', 'yes'),
(6, 3, 'default', 'Browse through recommendations to find your perfect match!', '2021-12-12 11:39:09', 'yes'),
(7, 4, 'default', 'Welcome to SoulMate!', '2021-12-12 11:51:28', 'yes'),
(8, 4, 'default', 'Browse through recommendations to find your perfect match!', '2021-12-12 11:51:28', 'yes'),
(9, 6, 'default', 'Welcome to SoulMate!', '2021-12-12 11:57:45', 'yes'),
(10, 6, 'default', 'Browse through recommendations to find your perfect match!', '2021-12-12 11:57:45', 'yes'),
(11, 9, 'default', 'Welcome to SoulMate!', '2021-12-12 12:03:18', 'yes'),
(12, 9, 'default', 'Browse through recommendations to find your perfect match!', '2021-12-12 12:03:18', 'yes'),
(39, 16, 'default', 'Welcome to SoulMate!', '2021-12-16 11:23:01', 'yes'),
(40, 16, 'default', 'Browse through recommendations to find your perfect match!', '2021-12-16 11:23:01', 'yes'),
(49, 17, 'default', 'Welcome to SoulMate!', '2021-12-16 21:25:16', 'yes'),
(50, 17, 'default', 'Browse through recommendations to find your perfect match!', '2021-12-16 21:25:16', 'yes'),
(51, 18, 'default', 'Welcome to SoulMate!', '2021-12-17 05:48:44', 'yes'),
(52, 18, 'default', 'Browse through recommendations to find your perfect match!', '2021-12-17 05:48:44', 'yes'),
(55, 19, 'default', 'Welcome to SoulMate!', '2021-12-17 06:32:19', 'yes'),
(56, 19, 'default', 'Browse through recommendations to find your perfect match!', '2021-12-17 06:32:19', 'yes'),
(59, 20, 'default', 'Welcome to SoulMate!', '2021-12-17 08:01:03', 'yes'),
(60, 20, 'default', 'Browse through recommendations to find your perfect match!', '2021-12-17 08:01:03', 'yes'),
(63, 21, 'default', 'Welcome to SoulMate!', '2021-12-18 20:21:09', 'yes'),
(64, 21, 'default', 'Browse through recommendations to find your perfect match!', '2021-12-18 20:21:09', 'yes'),
(65, 23, 'default', 'Welcome to SoulMate!', '2022-01-06 18:09:24', 'yes'),
(66, 23, 'default', 'Browse through recommendations to find your perfect match!', '2022-01-06 18:09:24', 'yes'),
(67, 28, 'default', 'Welcome to SoulMate!', '2022-06-24 21:27:26', 'yes'),
(68, 28, 'default', 'Browse through recommendations to find your perfect match!', '2022-06-24 21:28:02', 'yes'),
(71, 28, 'match', 'You have matched with Jane!', '2022-06-24 21:44:17', 'no'),
(72, 3, 'match', 'You have matched with Elon!', '2022-06-24 21:44:17', 'yes'),
(73, 29, 'default', 'Welcome to SoulMate!', '2022-06-27 11:22:51', 'yes'),
(74, 29, 'default', 'Browse through recommendations to find your perfect match!', '2022-06-27 11:22:51', 'yes'),
(75, 29, 'match', 'You have matched with Jane!', '2022-06-27 11:27:03', 'no'),
(76, 3, 'match', 'You have matched with Jeff!', '2022-06-27 11:27:03', 'no'),
(77, 30, 'default', 'Welcome to SoulMate!', '2024-03-29 20:52:43', 'yes'),
(78, 30, 'default', 'Browse through recommendations to find your perfect match!', '2024-03-29 20:52:43', 'yes'),
(79, 31, 'default', 'Welcome to SoulMate!', '2024-03-29 21:19:16', 'yes'),
(80, 31, 'default', 'Browse through recommendations to find your perfect match!', '2024-03-29 21:19:16', 'yes'),
(81, 31, 'match', 'You have matched with Otukpere!', '2024-03-29 21:22:48', 'yes'),
(82, 30, 'match', 'You have matched with Daniel!', '2024-03-29 21:22:48', 'yes'),
(83, 32, 'default', 'Welcome to SoulMate!', '2024-03-31 16:55:09', 'yes'),
(84, 32, 'default', 'Browse through recommendations to find your perfect match!', '2024-03-31 16:55:09', 'yes'),
(85, 32, 'match', 'You have matched with Daniel!', '2024-03-31 16:59:37', 'no'),
(86, 31, 'match', 'You have matched with John!', '2024-03-31 16:59:37', 'yes'),
(87, 34, 'default', 'Welcome to SoulMate!', '2024-04-04 16:57:24', 'yes'),
(88, 34, 'default', 'Browse through recommendations to find your perfect match!', '2024-04-04 16:57:24', 'yes'),
(89, 35, 'default', 'Welcome to SoulMate!', '2024-04-04 23:37:41', 'no'),
(90, 35, 'default', 'Browse through recommendations to find your perfect match!', '2024-04-04 23:37:41', 'no'),
(91, 36, 'default', 'Welcome to SoulMate!', '2024-04-05 00:37:25', 'no'),
(92, 36, 'default', 'Browse through recommendations to find your perfect match!', '2024-04-05 00:37:25', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `otp` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `uid` int(11) NOT NULL,
  `ig` varchar(30) DEFAULT NULL,
  `sc` varchar(30) DEFAULT NULL,
  `twit` varchar(30) DEFAULT NULL,
  `fb` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`uid`, `ig`, `sc`, `twit`, `fb`) VALUES
(3, 'jane12', 'janexoxo', '', ''),
(4, 'prianke12', 'priya', '', 'Priyanka Tripathi'),
(5, 'kashyap010', '', '', ''),
(6, 'pratima121', '', 'pratusmorty', ''),
(8, '_.joel._.fernandes._', 'momojojo1690', '_JoelFernandes_', 'Joel Fernandes'),
(9, 'shizushizu121_23', 'shizukayy', 'shizukayy', 'Shizuka D\'sa'),
(16, 'billyboy', '', '', ''),
(17, 'TonyRodrigo', '', 'Tony Rodrigoes', ''),
(18, 'shivashiv', '', '', ''),
(19, 'shashi', '', '', ''),
(20, 'hgfhg', '', 'hff', ''),
(21, '', '', '', ''),
(23, 'gigolo121', '', 'Gigolo2122', ''),
(29, 'jeff.bezos', '', 'jeff@bezos', ''),
(30, 'otukpere', 'otukpere', 'otukpere', 'otukpere'),
(31, '', '', '', ''),
(32, 'otukpere', '', '', ''),
(34, 'jam', 'jam', 'jam', 'jam'),
(35, 'yemi229', 'yemi229', 'yemi229', 'yemi229'),
(36, 'jjj', 'jjj', 'jjj', 'jjj');

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE `userprofile` (
  `uid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `height` text DEFAULT NULL,
  `weight` text DEFAULT NULL,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL,
  `profile_photo` varchar(100) NOT NULL,
  `bio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userprofile`
--

INSERT INTO `userprofile` (`uid`, `name`, `age`, `gender`, `height`, `weight`, `latitude`, `longitude`, `profile_photo`, `bio`) VALUES
(3, 'Jane Dias', 21, 'F', '172', '50', '15.2756659', '73.9780985', './public/user-profiles/user-10-8.jpg', 'Wanderer, Reader, Conquistador '),
(4, 'Priyanka Tripathi', 25, 'F', '168', '60', '15.2742894', '73.9731740', './public/user-profiles/user-4-3.jpg', 'My profile is enough to make an impression :3'),
(5, 'Kashyap Shirodkar', 18, 'M', '11', '12', '15.2768872', '73.9692472', './public/user-profiles/user-5-photo-1529665253569-6d01c0eaf7b6.jpg', 'I shall ask God how good you are'),
(6, 'Pratima Joshi', 18, 'F', '', '', '15.2680897', '73.9716397', './public/user-profiles/user-13-8.jpg', 'I go where life takes me\r\nNever regret anything in life\r\nLove travelling and singing'),
(8, 'joel ferns', 21, 'M', '170', '69', '15.2669305', '73.9535295', './public/user-profiles/user-8-1.jpg', 'COMP\r\nC - Charismatic\r\nO - (my blood group hehe xd)\r\nM - Member of Illuminati \r\nP - Pakistan mein gaya tha bhag ke wapas aya'),
(9, 'Shizuka D\'souza', 28, 'F', '140', '70', '15.2753347', '73.9531861', './public/user-profiles/user-9-4.jpg', 'Geek, Geek and Beautiful'),
(10, 'Miley Joseph', 21, 'F', ' ', ' ', '15.2619209', '73.9685498', './public/user-profiles/user-10-5.jpg', 'I love working out a lot!'),
(11, 'Shloka Naik', 25, 'F', '160', '52', '15.2465603', '74.0019809', './public/user-profiles/user-11-6.jpg', 'India\'s best procrastinator'),
(12, 'Trixie Pixie', 20, 'F', '160', '52', '15.2565800', '74.0139972', './public/user-profiles/user-12-7.jpg', 'Best known for eating vadapavs endlessly'),
(13, 'Meenal Shanku', 26, 'F', '160', '52', '15.2340142', '73.9760171', './public/user-profiles/user-13-3.jpg', 'Stoic, OSHO....\r\nAlso, world sucks :)'),
(14, 'Angelina Ferns', 19, 'F', '160', '52', '15.2648540', '73.9778174', './public/user-profiles/user-14-9.jpg', 'No I don\'t date Nathan Ferns'),
(15, 'Nandita Chowdhary', 18, 'F', '160', '52', '15.2609519', '73.9742877', './public/user-profiles/user-15-10.jpg', 'Bengal is best state of India. \r\nDon\'t prove me wrong. \r\nIdc actually.'),
(16, 'Bill Gates', 40, 'M', '', '', '18.6161', '73.7286', './public/user-profiles/user-16-pexels-italo-melo-2379004.jpg', 'I run Microsoft Inc\r\nPlayboy pimp for life\r\nI hate Belinda Gates so I divorced her'),
(17, 'Tony Martinez', 25, 'M', '', '', '15.265501', '73.9806075', './public/user-profiles/user-17-pexels-pixabay-220453.jpg', 'I am Tony\r\nI suck at Origami\r\nAaj blue hai pani-pani\r\nKabhi hume sunao tumhari kahani'),
(18, 'Shivam Dessai', 20, 'M', '', '', '18.5204303', '73.8567437', './public/user-profiles/user-18-shivam.jpg', 'Fitness Freak\r\nKTM Bro\r\nJo mai bolta hoon wo mai definitely karta hoon'),
(19, 'Shashikala Kholapurkar', 22, 'F', '', '', '18.5204303', '73.8567437', './public/user-profiles/user-19-female-photo_2021-12-17_11-11-49.jpg', 'I believe in breaking stereotypes'),
(20, 'Bruce  Wayne', 21, 'M', '', '', '20.0063', '77.006', './public/user-profiles/user-20-chris-bale.jpg', 'I am Bruce Wayne\r\n(secretly Batman)'),
(21, 'Toby Maguire', 31, 'M', '', '', '15.2655249', '73.9806296', './public/user-profiles/user-21-spiderman-3-2007_4bc992ca-b799-11ea-bb4b-1e210f9e7edf.jpg', 'I was cast as the 1st Spiderman in MCU'),
(23, 'Gigolo Georgiovani', 30, 'M', '', '', '15.2655525', '73.9804974', './public/user-profiles/user-23-giovani.jpg', 'My life is as interesting as my name...\r\nHmu for intriguing conversations!'),
(28, 'Elon Musk', 50, 'M', ' ', ' ', '15.2756669', '73.8567437', './public/user-profiles/user-28-elon-musk.jpg', 'Smartest Man in the Universe'),
(29, 'Jeff Bezos', 54, 'M', '', '', '15.2756661', '73.9780988', './public/user-profiles/user-29-jeff-bezos.jpeg', 'I run Amazon.Inc'),
(30, 'Otukpere Emiko', 24, 'M', '190', '89', '5.6229888', '-0.180224', './public/user-profiles/user-16-pexels-italo-melo-2379004.jpg', 'i love to laugh and make mehappy .. i love burna boy too'),
(31, 'Daniel Smith', 19, 'F', '150', '56', '5.6229888', '-0.180224', './public/user-profiles/user-10-5.jpg', 'I believe in breaking stereotypes'),
(32, 'John Snow', 24, 'M', '170', '70', '5.6413134', '-0.2223222', './public/user-profiles/user-32-WhatsApp Image 2024-03-28 at 3.50.41 PM.jpeg', 'jhkhvkfvkh. jhfj'),
(34, 'dave adebayo', 23, 'M', '50', '60', '5.6411115', '-0.2259084', './public/user-profiles/user-34-WhatsApp Image 2024-03-31 at 10.10.34 PM.jpeg', 'i dont know anything '),
(35, 'yemi james', 35, 'M', '5.6', '74', '5.6393728', '-0.1998848', './public/user-profiles/user-35-user-13-9.jpg', 'best php programmer'),
(36, 'jjj jjj', 90, 'M', '90', '890', '5.6393728', '-0.1998848', './public/user-profiles/user-36-user-10-5.jpg', 'kljkjb');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `uid` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL,
  `profile_created` text NOT NULL,
  `unique_id` int(255) NOT NULL,
  `active` varchar(255) NOT NULL DEFAULT 'Offline now'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`uid`, `email`, `password`, `code`, `status`, `profile_created`, `unique_id`, `active`) VALUES
(3, 'xevapif888@gyn5.com', '$2y$10$BS2LFEG7WRB3SvuCNgHEVOcy85AoDCBofRYXnmcGxOqGC4uewOJB2', 0, 'verified', 'yes', 886245528, 'Offline now'),
(4, 'kolos11755@gyn5.com', '$2y$10$hiikyEQB5/aJhxXQhJg8Jetya9BIi4H9Kry.VP9gVxpwYypfcRGVS', 0, 'verified', 'yes', 673429601, 'Offline now'),
(5, 'kashyapshirodkar@gmail.com', '$2y$10$4L04l6oEwpA7QqjtUEPb8O/s6KfJtlemJTQdPAVuaif4YfHBXhIRm', 0, 'verified', 'yes', 123212321, 'Offline now'),
(6, 'dogoniy930@erpipo.com', '$2y$10$awyWU3mNM5iyFejc48VRd.r/pEvx9B85E3YwuCSt7zfYUbriCq1ye', 0, 'verified', 'yes', 122712321, 'Active now'),
(8, 'joel18052001@gmail.com', '$2y$10$70J5wfDUv/MCsG14CDEdiuQhIf44J6lWqyKIB/L7lxRPB1.8t.KSq', 0, 'verified', 'yes', 123412321, 'Offline now'),
(9, 'lakas17536@leanrights.com', '$2y$10$0GLSUnTVneyrEY5zajlhtesdiC2AVptgINNr/U43rF7z2xNwrAKSi', 0, 'verified', 'yes', 123212323, 'Offline now'),
(10, 'tibom19829@mykcloud.com', '$2y$10$B4C8owrYcSnGz2Wl5GhGKO6cBVD8NVR7Fz7J9wCst2lMLzdclT.yG', 0, 'verified', 'yes', 127212321, 'Offline now'),
(11, 'shloka@gmail.com', '$2y$10$BS2LFEG7WRB3SvuCNgHEVOcy85AoDCBofRYXnmcGxOqGC4uewOJB2', 0, 'verified', 'yes', 153212321, 'Offline now'),
(12, 'trixi@gmail.com', '$2y$10$BS2LFEG7WRB3SvuCNgHEVOcy85AoDCBofRYXnmcGxOqGC4uewOJB2', 0, 'verified', 'yes', 323212321, 'Offline now'),
(13, 'meenal@gmail.com', '$2y$10$BS2LFEG7WRB3SvuCNgHEVOcy85AoDCBofRYXnmcGxOqGC4uewOJB2', 0, 'verified', 'yes', 122212331, 'Offline now'),
(14, 'angelina@gmail.com', '$2y$10$BS2LFEG7WRB3SvuCNgHEVOcy85AoDCBofRYXnmcGxOqGC4uewOJB2', 0, 'verified', 'yes', 323218321, 'Offline now'),
(15, 'nandita@gmail.com', '$2y$10$BS2LFEG7WRB3SvuCNgHEVOcy85AoDCBofRYXnmcGxOqGC4uewOJB2', 0, 'verified', 'yes', 133312321, 'Offline now'),
(16, 'male@male.com', '$2y$10$6xa2bN9JUBCeDSXWksTyBe1TXQlWNS1B.oPp4EjwaYs3zwTpbddgW', 0, 'verified', 'yes', 883212321, 'Offline now'),
(17, 'tony@gmail.com', '$2y$10$1DyRKVntUZIkt0N9xv5OXuqOI8kkowso6SF42T11UWu7hrPuwEyKC', 0, 'verified', 'yes', 1283346408, 'Offline now'),
(18, 'shivam@gmail.com', '$2y$10$D.QgHAMOv1QWcPA2xA.3Ke7siL.BDIeyNIOpTSGmssbyv0xgPzG0.', 0, 'verified', 'yes', 1214490390, 'Offline now'),
(19, 'nouf.shaikh2@gmail.com', '$2y$10$pUEKzjbLyXL3qQysrbsFIexYkCryq77BhclRjy3YriVc3edrRvVJG', 0, 'verified', 'yes', 1406596692, 'Offline now'),
(20, 'bruce@gmail.com', '$2y$10$ZXFNs01VqGtLAsc6PhOgQuMk.JxcVT93cpkB1GY5GXxeIY09V5I/y', 0, 'verified', 'yes', 1030259186, 'Offline now'),
(21, 'test@test.com', '$2y$10$8Z5Fo9Qp7YqOXZpIv8Wdk.kxG5u5YVEoEKSjfEz8Fy7mR5BsJZXVK', 0, 'verified', 'yes', 1301443651, 'Active now'),
(23, 'gigolo@gmail.com', '$2y$10$uQm7bdjIv.ZaoHwKo6sReettReMVelcNJ7Ss.2D4jyff0gmIaBHuK', 0, 'verified', 'yes', 608688142, 'Offline now'),
(24, '123@gmail.com', '$2y$10$hRqawvsr/igcjWi1QMvKn.nlGHkCCr0s0jR3Bl8/vCZdEWcYl7fka', 0, 'notverified', 'no', 836049828, 'Active now'),
(25, 'kisabi3008@aikusy.com', '$2y$10$AoeW9x5musnDTGptLqR76OaKnSsiCETH3bSx1wzHFPCByQtDry73q', 0, 'notverified', 'no', 669283848, 'Active now'),
(28, 'yourEmail@gmail.com', '$2y$10$4K8KtpJE/5FE9VWpXIo3auBZgUhuuP.f7zkPxilrkY8sCTlGC0KzW', 0, 'verified', 'yes', 879670352, 'Offline now'),
(29, 'email@gmail.com', '$2y$10$5w7VTRtNeXNV5P20GxC0PeXFeX5o1w2dM1ZWoCuaUUKRp8W8d.MgS', 0, 'verified', 'yes', 339814117, 'Offline now'),
(30, 'otukpere@gmail.com', '$2y$10$KGCd68URV8LSCKk/TKgJDeso/UGmd1iZC7um8ViN761JP9YOTUjBy', 0, 'verified', 'yes', 580392693, 'Offline now'),
(31, 'a@gmail.com', '$2y$10$JgYrk2yYYGxNX7WjyEqWuuG2p5wiXoAyeIN9MWuTaGHcg9zI8Tjlu', 0, 'verified', 'yes', 164859673, 'Offline now'),
(32, 'b@gmail.com', '$2y$10$VsrI6ihwiOT3Nib8Jp2HkeqFSWc4Ml5o/guGCP0n7sZCQ0Z23mRo2', 0, 'verified', 'yes', 1709491391, 'Offline now'),
(33, 'c@gmail.com', '$2y$10$n0OT.WLeZw59yQ..zKJtCO5YBLbuzlyfjJoMOamVxzdvm3NSPx9aS', 0, 'verified', 'no', 893082154, 'Active now'),
(34, 'd@gmail.com', '$2y$10$FZwBNsHj5WWyH2iwUkfYme8bW6t60NmnymEG/obW5ut6YCvluQB8q', 0, 'verified', 'yes', 415048556, 'Offline now'),
(35, 'e@gmail.com', '$2y$10$9p4fCaXSZ5vIqU37LtVi8O2OzBaVb5SLF1vrkPVUey2EsQORdJjNa', 0, 'verified', 'yes', 365102630, 'Offline now'),
(36, 'f@gmail.com', '$2y$10$yaVrwbTV/eFhL.WnUQjsy.bzhAQN8/PmHsU1EhnhbBdbzfGHQrQEW', 0, 'verified', 'yes', 468886883, 'Active now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `career`
--
ALTER TABLE `career`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `hobbies`
--
ALTER TABLE `hobbies`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `match`
--
ALTER TABLE `match`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `uid1` (`uid1`),
  ADD KEY `uid2` (`uid2`),
  ADD KEY `first_liked_by` (`first_liked_by`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `incoming_msg_id` (`incoming_msg_id`),
  ADD KEY `outgoing_msg_id` (`outgoing_msg_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`nid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `unique_id` (`unique_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `match`
--
ALTER TABLE `match`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `career`
--
ALTER TABLE `career`
  ADD CONSTRAINT `career_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `usertable` (`uid`);

--
-- Constraints for table `hobbies`
--
ALTER TABLE `hobbies`
  ADD CONSTRAINT `hobbies_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `usertable` (`uid`);

--
-- Constraints for table `match`
--
ALTER TABLE `match`
  ADD CONSTRAINT `match_ibfk_1` FOREIGN KEY (`uid1`) REFERENCES `usertable` (`uid`),
  ADD CONSTRAINT `match_ibfk_2` FOREIGN KEY (`uid2`) REFERENCES `usertable` (`uid`),
  ADD CONSTRAINT `match_ibfk_3` FOREIGN KEY (`first_liked_by`) REFERENCES `usertable` (`uid`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`incoming_msg_id`) REFERENCES `usertable` (`unique_id`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`outgoing_msg_id`) REFERENCES `usertable` (`unique_id`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `usertable` (`uid`);

--
-- Constraints for table `social`
--
ALTER TABLE `social`
  ADD CONSTRAINT `social_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `usertable` (`uid`);

--
-- Constraints for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD CONSTRAINT `userprofile_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `usertable` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
