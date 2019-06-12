-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2017 at 04:50 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cf_toolkit_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `user1_contests`
--

CREATE TABLE `user1_contests` (
  `contestId` int(10) UNSIGNED NOT NULL,
  `contestName` varchar(50) NOT NULL,
  `rank` int(11) NOT NULL,
  `oldRating` int(11) NOT NULL,
  `newRating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user1_contests`
--

INSERT INTO `user1_contests` (`contestId`, `contestName`, `rank`, `oldRating`, `newRating`) VALUES
(488, 'Codeforces Round #278 (Div. 2)', 1675, 1500, 1394),
(581, 'Codeforces Round #322 (Div. 2)', 2248, 1394, 1300),
(604, 'Codeforces Round #334 (Div. 2)', 2689, 1300, 1190),
(606, 'Codeforces Round #335 (Div. 2)', 2296, 1190, 1096),
(608, 'Codeforces Round #336 (Div. 2)', 2715, 1096, 1000),
(611, 'Good Bye 2015', 3809, 1000, 1054),
(614, 'Codeforces Round #339 (Div. 2)', 1929, 1069, 1007),
(615, 'Codeforces Round #338 (Div. 2)', 2788, 1054, 1069),
(617, 'Codeforces Round #340 (Div. 2)', 3076, 1007, 996),
(621, 'Codeforces Round #341 (Div. 2)', 3328, 996, 989),
(625, 'Codeforces Round #342 (Div. 2)', 2104, 989, 906),
(672, 'Codeforces Round #352 (Div. 2)', 2949, 906, 880),
(675, 'Codeforces Round #353 (Div. 2)', 2077, 880, 1021),
(677, 'Codeforces Round #355 (Div. 2)', 3742, 1021, 958),
(680, 'Codeforces Round #356 (Div. 2)', 3411, 958, 944),
(681, 'Codeforces Round #357 (Div. 2)', 3031, 944, 965),
(682, 'Codeforces Round #358 (Div. 2)', 2697, 965, 880),
(686, 'Codeforces Round #359 (Div. 2)', 3468, 880, 886),
(688, 'Codeforces Round #360 (Div. 2)', 3291, 886, 907),
(697, 'Codeforces Round #362 (Div. 2)', 2350, 907, 1009),
(699, 'Codeforces Round #363 (Div. 2)', 3368, 1009, 920),
(701, 'Codeforces Round #364 (Div. 2)', 3850, 920, 894),
(706, 'Codeforces Round #367 (Div. 2)', 2258, 894, 1050),
(707, 'Codeforces Round #368 (Div. 2)', 3920, 1050, 1065),
(709, 'AIM Tech Round 3 (Div. 2)', 2668, 1065, 1071),
(711, 'Codeforces Round #369 (Div. 2)', 3529, 1071, 1081),
(714, 'Codeforces Round #371 (Div. 2)', 3118, 1081, 992),
(716, 'Codeforces Round #372 (Div. 2)', 3471, 992, 1049),
(719, 'Codeforces Round #373 (Div. 2)', 3450, 1049, 1096),
(721, 'Codeforces Round #374 (Div. 2)', 3778, 1096, 1094),
(722, 'Intel Code Challenge Elimination Round (Div. 1 + D', 2986, 1094, 1126),
(725, 'Canada Cup 2016', 2983, 1076, 992),
(731, 'Codeforces Round #376 (Div. 2)', 2996, 1126, 1067),
(732, 'Codeforces Round #377 (Div. 2)', 3179, 1067, 1076),
(733, 'Codeforces Round #378 (Div. 2)', 2039, 992, 1122),
(734, 'Codeforces Round #379 (Div. 2)', 3880, 1122, 1063),
(742, 'Codeforces Round #383 (Div. 2)', 2346, 1063, 1147),
(745, 'Codeforces Round #385 (Div. 2)', 3653, 1147, 1099),
(746, 'Codeforces Round #386 (Div. 2)', 3354, 1099, 1029),
(747, 'Codeforces Round #387 (Div. 2)', 1588, 1029, 999),
(750, 'Good Bye 2016', 5376, 987, 1011),
(752, 'Codeforces Round #389 (Div. 2, Rated, Based on Tec', 2193, 999, 987),
(758, 'Codeforces Round #392 (Div. 2)', 2548, 1011, 1110),
(764, 'Codeforces Round #395 (Div. 2)', 3962, 1110, 1064),
(765, 'Codeforces Round #397 by Kaspersky Lab and Barcelo', 2997, 1064, 979),
(785, 'Codeforces Round #404 (Div. 2)', 4110, 979, 966),
(791, 'Codeforces Round #405 (rated, Div. 2, based on VK ', 2338, 966, 1034),
(793, 'Tinkoff Challenge - Elimination Round', 2227, 1099, 1106),
(796, 'Codeforces Round #408 (Div. 2)', 2594, 1034, 1071),
(798, 'Codeforces Round #410 (Div. 2)', 2885, 1071, 1099),
(805, 'Codeforces Round #411 (Div. 2)', 3349, 1106, 1057),
(807, 'Codeforces Round #412 (rated, Div. 2, base on VK C', 2331, 1057, 1046),
(810, 'Codeforces Round #415 (Div. 2)', 2098, 1046, 1044),
(811, 'Codeforces Round #416 (Div. 2)', 2628, 1044, 1063),
(814, 'Codeforces Round #418 (Div. 2)', 2980, 1063, 1058),
(816, 'Codeforces Round #419 (Div. 2)', 2711, 1058, 1083),
(822, 'Codeforces Round #422 (Div. 2)', 2949, 1083, 1064),
(828, 'Codeforces Round #423 (Div. 2, rated, based on VK ', 2221, 1064, 1130),
(831, 'Codeforces Round #424 (Div. 2, rated, based on VK ', 3301, 1130, 1079),
(839, 'Codeforces Round #428 (Div. 2)', 4247, 1079, 1063),
(842, 'Codeforces Round #430 (Div. 2)', 2223, 1079, 1185),
(844, 'AIM Tech Round 4 (Div. 2)', 2458, 1063, 1079),
(859, 'MemSQL Start[c]UP 3.0 - Round 1', 2591, 1185, 1085),
(862, 'Codeforces Round #435 (Div. 2)', 3235, 1085, 990),
(864, 'Codeforces Round #436 (Div. 2)', 2836, 990, 984),
(867, 'Codeforces Round #437 (Div. 2, based on MemSQL Sta', 2201, 984, 965),
(869, 'Codeforces Round #439 (Div. 2)', 1911, 965, 1100),
(877, 'Codeforces Round #442 (Div. 2)', 2200, 1100, 1181),
(879, 'Codeforces Round #443 (Div. 2)', 3461, 1181, 1151),
(892, 'Codeforces Round #446 (Div. 2)', 2916, 1151, 1151),
(895, 'Codeforces Round #448 (Div. 2)', 1802, 1151, 1071),
(897, 'Codeforces Round #449 (Div. 2)', 3229, 1071, 1066);

-- --------------------------------------------------------

--
-- Table structure for table `user2_contests`
--

CREATE TABLE `user2_contests` (
  `contestId` int(10) UNSIGNED NOT NULL,
  `contestName` varchar(50) NOT NULL,
  `rank` int(11) NOT NULL,
  `oldRating` int(11) NOT NULL,
  `newRating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user2_contests`
--

INSERT INTO `user2_contests` (`contestId`, `contestName`, `rank`, `oldRating`, `newRating`) VALUES
(488, 'Codeforces Round #278 (Div. 2)', 1675, 1500, 1394),
(581, 'Codeforces Round #322 (Div. 2)', 2248, 1394, 1300),
(604, 'Codeforces Round #334 (Div. 2)', 2689, 1300, 1190),
(606, 'Codeforces Round #335 (Div. 2)', 2296, 1190, 1096),
(608, 'Codeforces Round #336 (Div. 2)', 2715, 1096, 1000),
(611, 'Good Bye 2015', 3809, 1000, 1054),
(614, 'Codeforces Round #339 (Div. 2)', 1929, 1069, 1007),
(615, 'Codeforces Round #338 (Div. 2)', 2788, 1054, 1069),
(617, 'Codeforces Round #340 (Div. 2)', 3076, 1007, 996),
(621, 'Codeforces Round #341 (Div. 2)', 3328, 996, 989),
(625, 'Codeforces Round #342 (Div. 2)', 2104, 989, 906),
(672, 'Codeforces Round #352 (Div. 2)', 2949, 906, 880),
(675, 'Codeforces Round #353 (Div. 2)', 2077, 880, 1021),
(677, 'Codeforces Round #355 (Div. 2)', 3742, 1021, 958),
(680, 'Codeforces Round #356 (Div. 2)', 3411, 958, 944),
(681, 'Codeforces Round #357 (Div. 2)', 3031, 944, 965),
(682, 'Codeforces Round #358 (Div. 2)', 2697, 965, 880),
(686, 'Codeforces Round #359 (Div. 2)', 3468, 880, 886),
(688, 'Codeforces Round #360 (Div. 2)', 3291, 886, 907),
(697, 'Codeforces Round #362 (Div. 2)', 2350, 907, 1009),
(699, 'Codeforces Round #363 (Div. 2)', 3368, 1009, 920),
(701, 'Codeforces Round #364 (Div. 2)', 3850, 920, 894),
(706, 'Codeforces Round #367 (Div. 2)', 2258, 894, 1050),
(707, 'Codeforces Round #368 (Div. 2)', 3920, 1050, 1065),
(709, 'AIM Tech Round 3 (Div. 2)', 2668, 1065, 1071),
(711, 'Codeforces Round #369 (Div. 2)', 3529, 1071, 1081),
(714, 'Codeforces Round #371 (Div. 2)', 3118, 1081, 992),
(716, 'Codeforces Round #372 (Div. 2)', 3471, 992, 1049),
(719, 'Codeforces Round #373 (Div. 2)', 3450, 1049, 1096),
(721, 'Codeforces Round #374 (Div. 2)', 3778, 1096, 1094),
(722, 'Intel Code Challenge Elimination Round (Div. 1 + D', 2986, 1094, 1126),
(725, 'Canada Cup 2016', 2983, 1076, 992),
(731, 'Codeforces Round #376 (Div. 2)', 2996, 1126, 1067),
(732, 'Codeforces Round #377 (Div. 2)', 3179, 1067, 1076),
(733, 'Codeforces Round #378 (Div. 2)', 2039, 992, 1122),
(734, 'Codeforces Round #379 (Div. 2)', 3880, 1122, 1063),
(742, 'Codeforces Round #383 (Div. 2)', 2346, 1063, 1147),
(745, 'Codeforces Round #385 (Div. 2)', 3653, 1147, 1099),
(746, 'Codeforces Round #386 (Div. 2)', 3354, 1099, 1029),
(747, 'Codeforces Round #387 (Div. 2)', 1588, 1029, 999),
(750, 'Good Bye 2016', 5376, 987, 1011),
(752, 'Codeforces Round #389 (Div. 2, Rated, Based on Tec', 2193, 999, 987),
(758, 'Codeforces Round #392 (Div. 2)', 2548, 1011, 1110),
(764, 'Codeforces Round #395 (Div. 2)', 3962, 1110, 1064),
(765, 'Codeforces Round #397 by Kaspersky Lab and Barcelo', 2997, 1064, 979),
(785, 'Codeforces Round #404 (Div. 2)', 4110, 979, 966),
(791, 'Codeforces Round #405 (rated, Div. 2, based on VK ', 2338, 966, 1034),
(793, 'Tinkoff Challenge - Elimination Round', 2227, 1099, 1106),
(796, 'Codeforces Round #408 (Div. 2)', 2594, 1034, 1071),
(798, 'Codeforces Round #410 (Div. 2)', 2885, 1071, 1099),
(805, 'Codeforces Round #411 (Div. 2)', 3349, 1106, 1057),
(807, 'Codeforces Round #412 (rated, Div. 2, base on VK C', 2331, 1057, 1046),
(810, 'Codeforces Round #415 (Div. 2)', 2098, 1046, 1044),
(811, 'Codeforces Round #416 (Div. 2)', 2628, 1044, 1063),
(814, 'Codeforces Round #418 (Div. 2)', 2980, 1063, 1058),
(816, 'Codeforces Round #419 (Div. 2)', 2711, 1058, 1083),
(822, 'Codeforces Round #422 (Div. 2)', 2949, 1083, 1064),
(828, 'Codeforces Round #423 (Div. 2, rated, based on VK ', 2221, 1064, 1130),
(831, 'Codeforces Round #424 (Div. 2, rated, based on VK ', 3301, 1130, 1079),
(839, 'Codeforces Round #428 (Div. 2)', 4247, 1079, 1063),
(842, 'Codeforces Round #430 (Div. 2)', 2223, 1079, 1185),
(844, 'AIM Tech Round 4 (Div. 2)', 2458, 1063, 1079),
(859, 'MemSQL Start[c]UP 3.0 - Round 1', 2591, 1185, 1085),
(862, 'Codeforces Round #435 (Div. 2)', 3235, 1085, 990),
(864, 'Codeforces Round #436 (Div. 2)', 2836, 990, 984),
(867, 'Codeforces Round #437 (Div. 2, based on MemSQL Sta', 2201, 984, 965),
(869, 'Codeforces Round #439 (Div. 2)', 1911, 965, 1100),
(877, 'Codeforces Round #442 (Div. 2)', 2200, 1100, 1181),
(879, 'Codeforces Round #443 (Div. 2)', 3461, 1181, 1151),
(892, 'Codeforces Round #446 (Div. 2)', 2916, 1151, 1151),
(895, 'Codeforces Round #448 (Div. 2)', 1802, 1151, 1071),
(897, 'Codeforces Round #449 (Div. 2)', 3229, 1071, 1066);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user1_contests`
--
ALTER TABLE `user1_contests`
  ADD PRIMARY KEY (`contestId`);

--
-- Indexes for table `user2_contests`
--
ALTER TABLE `user2_contests`
  ADD PRIMARY KEY (`contestId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
