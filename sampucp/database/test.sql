-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Agu 2021 pada 17.50
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(21) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(61) NOT NULL DEFAULT 'None',
  `confirm_email` int(11) NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aktif` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp` int(11) NOT NULL,
  `refer` int(11) NOT NULL,
  `sex` int(11) NOT NULL,
  `skin` int(11) NOT NULL,
  `money` int(11) NOT NULL DEFAULT 250,
  `bank` int(11) NOT NULL,
  `admin` int(11) NOT NULL,
  `driving_lic` int(11) NOT NULL,
  `weapon_lic` int(11) NOT NULL,
  `suspect` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `phone_balance` int(11) NOT NULL,
  `phone_color` int(11) NOT NULL DEFAULT 9,
  `law_abiding` int(11) NOT NULL,
  `improvements` int(11) NOT NULL,
  `power` int(11) NOT NULL,
  `drugs` int(11) NOT NULL,
  `ammo` int(11) NOT NULL,
  `metall` int(11) NOT NULL,
  `wife` int(11) NOT NULL,
  `team` int(11) NOT NULL,
  `subdivison` int(11) NOT NULL,
  `wage` int(11) NOT NULL,
  `job` int(11) NOT NULL,
  `house_type` int(11) NOT NULL DEFAULT -1,
  `house_room` int(11) NOT NULL DEFAULT -1,
  `house` int(11) NOT NULL DEFAULT -1,
  `business` int(11) NOT NULL DEFAULT -1,
  `fuel_st` int(11) NOT NULL DEFAULT -1,
  `reg_time` int(11) NOT NULL,
  `reg_ip` varchar(16) NOT NULL,
  `last_ip` varchar(16) NOT NULL,
  `last_login` int(11) NOT NULL,
  `game_for_hour` int(11) NOT NULL,
  `game_for_day` int(11) NOT NULL,
  `game_for_day_prev` int(11) NOT NULL,
  `setting_phone` varchar(13) NOT NULL DEFAULT 'None',
  `setting_pin_code` varchar(5) NOT NULL DEFAULT 'None',
  `request_phone` int(11) NOT NULL,
  `request_pin` int(11) NOT NULL,
  `setting1` int(11) NOT NULL DEFAULT 2,
  `setting2` int(11) NOT NULL DEFAULT 1,
  `setting4` int(11) NOT NULL DEFAULT 1,
  `setting5` int(11) NOT NULL DEFAULT 0,
  `setting6` int(11) NOT NULL DEFAULT 0,
  `warn` int(11) NOT NULL,
  `warn_time` int(11) NOT NULL,
  `mute` int(11) NOT NULL,
  `skill_colt` int(11) NOT NULL,
  `skill_sdpistol` int(11) NOT NULL,
  `skill_deagle` int(11) NOT NULL,
  `skill_shotgun` int(11) NOT NULL,
  `skill_mp5` int(11) NOT NULL,
  `skill_ak47` int(11) NOT NULL,
  `skill_m4` int(11) NOT NULL,
  `skill_sniper_rifle` int(11) NOT NULL,
  `skill_sawnoff` int(11) NOT NULL,
  `skill_combat_sg` int(11) NOT NULL,
  `skill_micro_uzi` int(11) NOT NULL,
  `donate` int(11) NOT NULL,
  `donate_total` int(11) NOT NULL,
  `org_skin` int(11) NOT NULL,
  `setting_spawn` int(11) NOT NULL,
  `hospital` int(11) NOT NULL,
  `health` float NOT NULL DEFAULT 100,
  `car_slots` int(11) NOT NULL DEFAULT 2,
  `jail` int(11) NOT NULL,
  `premium` int(11) NOT NULL,
  `premium_date` int(11) NOT NULL,
  `premium_time` int(11) NOT NULL,
  `load_skill` int(11) NOT NULL,
  `lumberg_skill` int(11) NOT NULL,
  `load_exp` int(11) NOT NULL,
  `lumberg_exp` int(11) NOT NULL,
  `deposit` int(11) NOT NULL,
  `family` int(11) NOT NULL,
  `family_rank` int(11) NOT NULL,
  `fish_mas` int(11) NOT NULL,
  `score` int(11) NOT NULL DEFAULT 1,
  `eat` int(11) NOT NULL DEFAULT 100,
  `water` int(11) NOT NULL DEFAULT 100,
  `bug_paydays` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 1,
  `truck_road` int(11) NOT NULL,
  `truck_wage` int(11) NOT NULL,
  `truck_mileage` float NOT NULL,
  `gifts` int(11) NOT NULL,
  `admin_warn` int(3) NOT NULL DEFAULT 0,
  `bonusget` int(11) NOT NULL DEFAULT 0,
  `loginday` int(11) NOT NULL DEFAULT 0,
  `driving_a` int(11) NOT NULL,
  `driving_b` int(11) NOT NULL,
  `driving_c` int(11) NOT NULL,
  `driving_d` int(11) NOT NULL,
  `lic_biz` int(11) NOT NULL,
  `lic_fly` int(11) NOT NULL,
  `lic_water` int(11) NOT NULL,
  `lic_weapon` int(11) NOT NULL,
  `online` int(11) NOT NULL DEFAULT 0,
  `fight_1` int(11) NOT NULL DEFAULT 0,
  `fight_2` int(11) NOT NULL DEFAULT 0,
  `fight_3` int(11) NOT NULL DEFAULT 0,
  `fight_4` int(11) NOT NULL DEFAULT 0,
  `fight_5` int(11) NOT NULL DEFAULT 0,
  `PDX` int(11) NOT NULL DEFAULT 0,
  `unj` int(11) NOT NULL DEFAULT 0,
  `pass` int(11) DEFAULT 0,
  `photo` int(11) NOT NULL DEFAULT 0,
  `med` int(11) NOT NULL DEFAULT 0,
  `toll` int(11) NOT NULL DEFAULT 0,
  `last_x` float NOT NULL,
  `last_y` float NOT NULL,
  `last_z` float NOT NULL,
  `last_fa` float NOT NULL,
  `lockpicks` int(11) NOT NULL,
  `pilot_skill` int(11) NOT NULL,
  `time_for_steal` int(11) NOT NULL,
  `quest` int(11) NOT NULL,
  `quest_data` int(11) NOT NULL,
  `quest_progress` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `action_log`
--

CREATE TABLE `action_log` (
  `id` int(11) NOT NULL,
  `acc_id` int(11) NOT NULL,
  `uip` varchar(16) NOT NULL DEFAULT '255.255.255.255',
  `type` int(11) NOT NULL,
  `description` varchar(128) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` varchar(21) NOT NULL DEFAULT 'None',
  `balance` int(11) NOT NULL,
  `pin` varchar(9) NOT NULL DEFAULT '0000',
  `reg_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank_accounts_log`
--

CREATE TABLE `bank_accounts_log` (
  `id` int(11) NOT NULL,
  `acc_id` int(11) NOT NULL,
  `uip` varchar(16) NOT NULL DEFAULT '255.255.255.255',
  `time` int(11) NOT NULL,
  `description` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ban_list`
--

CREATE TABLE `ban_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `ban_time` int(11) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `description` varchar(32) NOT NULL,
  `admin` varchar(24) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `board`
--

CREATE TABLE `board` (
  `id` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `x_angle` float NOT NULL,
  `y_angle` float NOT NULL,
  `z_angle` float NOT NULL,
  `view_x` float NOT NULL,
  `view_y` float NOT NULL,
  `view_z` float NOT NULL,
  `owner` int(11) NOT NULL DEFAULT -1,
  `model` int(11) NOT NULL,
  `text` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Struktur dari tabel `business`
--

CREATE TABLE `business` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `name` varchar(24) NOT NULL,
  `city` int(11) NOT NULL DEFAULT -1,
  `zone` int(11) NOT NULL DEFAULT -1,
  `improvements` int(11) NOT NULL,
  `products` int(11) NOT NULL,
  `prod_price` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `rent_time` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `interior` int(11) NOT NULL,
  `enter_price` int(11) NOT NULL,
  `enter_music` int(11) NOT NULL,
  `lock` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `exit_x` float NOT NULL,
  `exit_y` float NOT NULL,
  `exit_z` float NOT NULL,
  `exit_angle` float NOT NULL,
  `eviction` int(11) NOT NULL,
  `price_1` int(11) DEFAULT NULL,
  `price_2` int(11) DEFAULT NULL,
  `price_3` int(11) DEFAULT NULL,
  `price_4` int(11) DEFAULT NULL,
  `price_5` int(11) DEFAULT NULL,
  `price_6` int(11) DEFAULT NULL,
  `price_7` int(11) DEFAULT NULL,
  `price_8` int(11) DEFAULT NULL,
  `price_9` int(11) DEFAULT NULL,
  `price_10` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `business`
--

INSERT INTO `business` (`id`, `owner_id`, `name`, `city`, `zone`, `improvements`, `products`, `prod_price`, `balance`, `rent_time`, `price`, `rent_price`, `type`, `interior`, `enter_price`, `enter_music`, `lock`, `x`, `y`, `z`, `exit_x`, `exit_y`, `exit_z`, `exit_angle`, `eviction`, `price_1`, `price_2`, `price_3`, `price_4`, `price_5`, `price_6`, `price_7`, `price_8`, `price_9`, `price_10`) VALUES
(1, 0, 'Mujamels', 7, 0, 0, 6, 0, 3800, 12, 5000000, 3000, 1, 0, 1000, 0, 0, 1352.33, -1759.25, 13.5078, 1352.6, -1756.52, 13.5078, 0.841629, 0, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200),
(2, -1, '', 8, 0, 0, 100000, 0, 1000, 0, 1500000, 3000, 11, 10, 500, 0, 0, 928.916, -1352.93, 13.3438, 2079.86, 2044.93, 11.0579, 24.9614, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, -1, 'lanesex', 1, 0, 0, 302, 0, 2760, 1, 5000000, 3000, 1, 0, 1000, 3, 0, 1000.43, -919.918, 42.3281, 2056.03, 2046, 11.0579, 357.276, 1, 500, 250, 150, 680, 5000, 150, 5000, NULL, NULL, NULL),
(4, 0, '', 15, 0, 0, 0, 0, 0, 0, 5000000, 3000, 1, 0, 100, 4, 0, 1928.58, -1776.29, 13.5469, 2031.02, 2045.5, 11.0579, 149.68, 0, 150, 50, 150, 250, 150, 300, 180, 100, 160, 120),
(5, -1, '', 13, 0, 0, 292, 0, 143000, 1, 5000000, 3000, 1, 0, 100, 1, 0, 1119.1, -1370.03, 13.9844, 2053, 2096.83, 11.0579, 11.6328, 1, 100, 200, 300, 500, 300, 300, 400, NULL, NULL, NULL),
(6, -1, '', 10, 0, 6, 962, 0, 482250, 1, 5000000, 3000, 1, 0, 0, 0, 0, 1284.47, -1585.44, 13.5469, 2065.14, 2097.49, 11.0579, 0.781846, 1, 50, 100, 5, 5, 1500, 5000, 50, NULL, NULL, NULL),
(7, -1, '', 8, 0, 0, 99973, 0, 7895, 1, 5000000, 3000, 1, 0, 555, 0, 0, 1025.57, -1770.8, 13.5469, 2077.09, 2097.31, 11.0579, 176.823, 0, 500, 150, 250, 800, 400, 250, 777, NULL, NULL, NULL),
(8, 0, '', 7, 0, 0, 20, 0, 0, 1, 1500000, 3000, 11, 10, 25, 0, 0, 1038.18, -1340.73, 13.7424, 2086.27, 2066.8, 11.0579, 114.09, 0, 200, 300, 300, 250, 150, 100, 400, 500, 310, 143),
(9, 0, 'ffffffffffffffffffffffff', 8, 0, 0, 0, 0, 102, 0, 1500000, 3000, 11, 10, 5000, 0, 0, 1199.3, -918.139, 43.123, 2086.66, 2055.08, 11.0579, 103.648, 1, 10000, 10000, 10000, 10000, NULL, 5, NULL, NULL, NULL, NULL),
(10, -1, '', 7, 0, 0, 100000, 0, 0, 1511222326, 1500000, 3000, 11, 10, 5000, 0, 0, 522.406, 1018.11, 12.0103, 524.933, 1017.27, 12.0387, 248.284, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, -1, '', 7, 0, 0, 99989, 0, 1050, 1, 5000000, 3000, 1, 0, 150, 0, 0, 2424.22, -1742.79, 13.5457, 2420.99, -1739.86, 13.5469, 42.1554, 0, 250, 169, 200, 200, 300, 200, 150, 200, 150, 200),
(12, -1, '', 7, 0, 1, 100000, 0, 0, 1, 1500000, 3000, 11, 10, 555, 3, 0, 172.4, 1177.59, 14.7578, 170.829, 1175.52, 14.7645, 144.997, 0, 120, 130, 300, 230, 100, NULL, NULL, NULL, NULL, NULL),
(13, -1, '', 7, 0, 0, 12, 0, 1776, 0, 1500000, 3000, 11, 10, 444, 4, 0, 2062.8, -1897.21, 13.5538, 2062.85, -1902.25, 13.5469, 185.578, 1, 100, 100, 100, 100, 100, NULL, NULL, NULL, NULL, NULL),
(14, 0, '', 14, 0, 0, 20, 0, 0, 1, 1500000, 3000, 11, 10, 200, 0, 0, 2398.57, -1899.2, 13.5469, 2398.64, -1897.14, 13.5469, 359.855, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, -1, '', 14, 0, 0, 100000, 0, 6550, 1555052625, 1500000, 3000, 11, 10, 150, 0, 0, 2419.7, -1509.74, 24, 2422.37, -1509.72, 23.9922, 271.494, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, -1, '', 14, 0, 0, 16, 0, 400, 0, 1500000, 3000, 11, 10, 200, 1, 0, 2101.14, -1359.51, 23.9844, 2101.13, -1362.05, 23.9844, 180.418, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, -1, '', 2, 0, 0, 20, 0, 0, 1, 1500000, 3000, 11, 10, 250, 0, 0, 810.485, -1616.18, 13.5469, 813.103, -1616.18, 13.5469, 270.659, 1, 350, 450, 200, 200, NULL, NULL, NULL, NULL, NULL, NULL),
(18, -1, '', 7, 0, 6, 20, 0, 0, 1, 1500000, 3000, 11, 10, 500, 0, 1, 202.749, -201.94, 1.57812, 202.633, -205.175, 1.57812, 181.044, 0, 300, 450, 250, 250, 100, 150, 200, 111, 666, 1000),
(19, -1, '', 1, 0, 0, 100000, 0, 100, 0, 1500000, 3000, 11, 10, 100, 0, 0, 171.896, -200.812, 1.57031, 174.062, -203.079, 1.57033, 226.165, 0, 100, 450, 250, 250, NULL, NULL, NULL, NULL, NULL, NULL),
(20, -1, '', 7, 0, 0, 99943, 0, 35000, 1, 6000000, 5000, 3, 2, 5000, 5, 0, 776.433, -1036.18, 24.2758, 776.906, -1039.23, 24.256, 190.158, 1, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000),
(21, -1, '', 7, 0, 0, 100000, 0, 325, 1507420726, 6000000, 5000, 4, 3, 5, 0, 0, 171.929, 738.313, 12.7494, 174.928, 737.195, 12.079, 247.031, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, -1, '', 10, 0, 6, 2986, 0, 86150, 1, 8000000, 5000, 5, 4, 1500, 2, 0, 671.027, -519.298, 16.3359, 673.172, -521.469, 16.3281, 226.583, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, -1, '', 7, 0, 0, 100000, 0, 7200, 1506729526, 8000000, 5000, 5, 4, 5000, 4, 0, 253.788, 1055.04, 12.2556, 257.209, 1054.67, 12.1697, 262.488, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, -1, '', 7, 0, 0, 99333, 0, 931100, 1, 8000000, 5000, 5, 4, 1500, 1, 0, 461.707, -1500.82, 31.0451, 459.495, -1501.06, 31.0397, 99.0268, 1, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 0, '', 1, 0, 6, 0, 0, 0, 0, 8000000, 5000, 5, 4, 0, 2, 0, 2244.34, -1665.54, 15.4766, 2244.69, -1663.49, 15.4766, 345.475, 0, 8000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000),
(26, -1, '', 14, 0, 0, 100000, 0, 0, 0, 8000000, 5000, 5, 4, 3500, 5, 0, -2157.97, 115.267, 26.1453, -2155.03, 116.676, 26.3275, 291.534, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, -1, '1', 2, 0, 0, 99805, 0, 208000, 1, 8000000, 5000, 5, 4, 100, 1, 0, 1456.49, -1137.59, 23.9483, 1458.31, -1139.83, 24.0665, 222.092, 0, 1000, 2000, 5000, 9000, 10000, 10000, 10000, 10000, 10000, 10000),
(28, 0, '123', 7, 0, 6, 0, 0, 4004, 0, 12000000, 5000, 6, 5, 1, 3, 0, 952.539, -909.11, 45.7656, 952.546, -910.936, 45.7656, 181.479, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 0, 'f', 14, 0, 0, 0, 0, 0, 1, 12000000, 5000, 6, 5, 500, 0, 0, 325.684, -1514.6, 36.0325, 328.804, -1516.89, 35.8672, 230.072, 0, 1000, 1000, 1000, 1000, 1000, NULL, NULL, NULL, NULL, NULL),
(30, -1, '', 14, 0, 6, 2877, 0, 260000, 1, 15000000, 5800, 7, 6, 1000, 0, 0, 2131.84, -1151.32, 24.0603, 2132.07, -1148.34, 24.3908, 358.827, 0, 10000, 300, 600, 700, NULL, 1000, 1000, 1000, 1000, 1000),
(31, 0, 'KONTOL?BIZ SKEM', 5, 0, 0, 0, 0, 0, 21, 15000000, 10150, 7, 6, 1000, 0, 0, 2200.85, 1394.81, 11.0625, 2200.75, 1393.05, 10.8203, 178.973, 0, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000),
(32, -1, '', 10, 0, 3, 100000, 0, 705760, 1, 15000000, 6150, 7, 6, 5000, 0, 0, 556.185, -1293.93, 17.2482, 556.469, -1292.12, 17.2482, 0.458422, 0, 5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000),
(33, 0, '', 15, 0, 0, 17, 0, 664000, 16, 15000000, 8200, 7, 6, 5000, 4, 0, -1965.86, 293.829, 35.4688, -1967.6, 293.884, 35.1719, 90.298, 0, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000),
(34, 0, 'Nene Recing', 8, 0, 0, 300, 0, 90200, 16, 15000000, 12000, 8, 7, 1, 2, 0, 1022.48, -1121.42, 23.8701, 1022.48, -1122.83, 23.8708, 179.141, 0, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 0, '', 7, 0, 0, 0, 0, 0, 1, 7000000, 4620, 9, 8, 250, 2, 0, 1419.17, -1623.81, 13.5469, 1420.24, -1625.12, 13.5469, 19.4756, 0, 2500, 1000, 1000, 100, 100, 100, 100, 100, 100, 100),
(36, -1, '', 130, 0, 0, 99980, 0, 25160, 1, 4000000, 0, 2, 1, 5000, 0, 0, 1836.88, -1683.19, 13.3293, 1833.77, -1683.01, 13.4596, 91.6896, 0, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000),
(37, -1, '', 15, 0, 4, 0, 0, 0, 1, 3300000, 25000, 13, 12, 5000, 2, 0, 670.792, -1575.96, 14.2514, 670.962, -1578.28, 14.2808, 176.584, 0, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000),
(38, -1, '', 15, 0, 3, 0, 0, 0, 1, 6000000, 20000, 3, 2, 5000, 0, 0, 1485.35, -1009.92, 26.8438, 1485.08, -1012.75, 26.8438, 190.153, 0, 5000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000),
(39, 0, '', 15, 0, 6, 0, 0, 1000550, 1, 12000000, 5000, 14, 13, 50, 0, 0, 1498.46, -1581.77, 13.5498, 1498.3, -1585.1, 13.5469, 177.579, 0, 50, 50, 50, 50, 50, 50, 50, 50, 59, 50),
(40, 0, '', 15, 0, 0, 0, 0, 0, 1, 1000000, 10000, 11, 10, 1000, 0, 0, 1642.37, -2237.53, 13.4986, 1641.67, -2239.19, 13.4975, 36.0931, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 0, '', 15, 0, 0, 0, 0, 30, 17, 10000000, 1000, 12, 11, 0, 0, 0, 1368.98, -1279.69, 13.5469, 1367.25, -1279.78, 13.5469, 90.2421, 0, 10, 20, 10, 10, 5, 30, NULL, NULL, NULL, NULL),
(42, 0, '', 15, 0, 0, 0, 0, 0, 0, 1, 1, 5, 4, 0, 0, 0, 822.502, 2784.79, 76.7396, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 0, '', 15, 0, 0, 0, 0, 0, 0, 1, 1, 3, 2, 0, 0, 0, 822.278, 2786.79, 76.7627, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 0, '', 15, 0, 0, 0, 0, 0, 0, 1, 1, 2, 1, 0, 0, 0, 822.617, 2788.37, 76.608, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 0, '', 15, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 822.39, 2789.69, 76.5785, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 0, '', 15, 0, 0, 0, 0, 0, 0, 1, 1, 6, 5, 0, 0, 0, 822.972, 2790.71, 76.4077, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 0, '', 15, 0, 0, 0, 0, 0, 0, 1, 1, 7, 6, 0, 0, 0, 822.937, 2791.66, 76.3606, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 0, '', 15, 0, 0, 0, 0, 0, 0, 1, 1, 8, 7, 0, 0, 0, 823.163, 2792.93, 76.2454, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 0, '', 15, 0, 0, 0, 0, 0, 0, 1, 1, 9, 8, 0, 0, 0, 823.391, 2794.5, 76.1128, 823.509, 2795.72, 76.0214, 258.185, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 0, '', 15, 0, 0, 0, 0, 0, 0, 1, 1, 10, 9, 0, 0, 0, 823.846, 2795.59, 75.963, 824.218, 2796.33, 75.8384, 142.191, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 0, '', 15, 0, 0, 0, 0, 0, 0, 1, 1, 11, 10, 0, 0, 0, 823.269, 2796.68, 76.0063, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 0, '', 15, 0, 0, 0, 0, 0, 1, 1, 1, 12, 11, 0, 0, 0, 823.361, 2797.94, 75.9116, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 0, '', 15, 0, 0, 0, 0, 0, 0, 1, 1, 13, 12, 0, 0, 0, 823.121, 2799.14, 75.887, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 0, '', 15, 0, 0, 0, 0, 50000, 0, 20000000, 20, 13, 12, 0, 0, 0, 2229.98, -1721.34, 13.5622, 2228.36, -1722.64, 13.5548, 286.871, 0, 10000, 10000, 10000, 10000, 10000, 10000, NULL, NULL, NULL, NULL),
(55, 0, '', 15, 0, 0, 0, 0, 0, 0, 1, 1, 3, 2, 0, 0, 0, 66.3574, 2759.91, 78.9073, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 0, '', 15, 0, 0, 0, 0, 0, 0, 1, 1, 4, 3, 0, 0, 0, 65.3358, 2759.95, 79.0494, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 0, '', 15, 0, 0, 0, 0, 0, 0, 1, 1, 2, 1, 0, 0, 0, 63.515, 2759.54, 79.1708, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 0, '', 15, 0, 0, 0, 0, 0, 0, 1000000, 10000, 2, 1, 0, 0, 0, 732.709, -1476.21, 5.46875, 732.547, -1477.7, 5.46875, 183.408, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 0, '', 1, 0, 0, 0, 0, 0, 1, 10000, 1000, 15, 14, 0, 0, 0, 607.963, -242.995, -0.542596, 606.666, -243.53, -0.547187, 178.116, 0, 10000, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 0, '', 15, 0, 0, 0, 0, 0, 0, 2000000, 20, 6, 5, 0, 0, 0, 1310, -1366.8, 13.5063, 1309.95, -1367.97, 13.5427, 181.273, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 0, '', 15, 0, 0, 0, 0, 100, 0, 200000, 100, 1, 0, 0, 0, 0, 1663.19, 1474.83, 10.7812, 1665.71, 1474.75, 10.7757, 264.08, 0, 100, 100, 100, 100, 100, NULL, NULL, NULL, NULL, NULL),
(62, 0, '', 15, 0, 0, 0, 0, 0, 0, 200000, 100, 2, 1, 0, 0, 0, 1668.28, 1492.02, 10.7791, 1670.06, 1490.66, 10.7736, 232.601, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 0, '', 15, 0, 0, 0, 0, 0, 0, 200000, 100, 3, 2, 0, 0, 0, 1662.89, 1419.77, 10.798, 1664.93, 1419.65, 10.79, 282.277, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 0, '', 15, 0, 0, 0, 0, 0, 0, 200000, 100, 4, 3, 0, 0, 0, 1675.08, 1389.82, 10.7555, 1676.49, 1391.49, 10.7261, 320.817, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 0, '', 13, 0, 0, 0, 0, 0, 0, 200000, 100, 8, 7, 0, 0, 0, 2089.9, 1451.21, 10.8203, 2088.03, 1449.91, 10.8203, 140.62, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 0, '', 15, 0, 0, 0, 0, 0, 0, 100000, 100, 5, 4, 0, 0, 0, 2194.94, 1991.09, 12.2969, 2192.7, 1990.41, 12.2969, 93.7227, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 0, '', 15, 0, 0, 0, 0, 0, 0, 200000, 100, 8, 7, 0, 0, 0, 2162.38, 2169.6, 10.8203, 2160.67, 2167.75, 10.8125, 133.122, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 0, '', 15, 0, 0, 0, 0, 10000, 1, 200000, 100, 14, 13, 0, 0, 0, 2127.51, 2379.94, 10.8203, 2127.4, 2377.86, 10.8203, 188.344, 0, 10000, 10000, 10000, 10000, 10000, 10000, NULL, NULL, NULL, NULL),
(69, 0, '', 15, 0, 0, 0, 0, 0, 0, 100000, 100, 5, 4, 0, 0, 0, 2101.9, 2257.32, 11.0234, 2104.18, 2257.68, 11.0234, 264.496, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 0, '', 15, 0, 0, 0, 0, 0, 0, 100000, 100, 6, 5, 0, 0, 0, 2085.49, 2153.84, 10.8203, 2085.97, 2156.71, 10.8203, 340.058, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 0, '', 15, 0, 0, 0, 0, 0, 0, 100000, 100, 6, 5, 0, 0, 0, 2064.45, 2170.94, 10.8203, 2066.8, 2171.61, 10.8203, 274.257, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 0, '', 15, 0, 0, 0, 0, 0, 0, 100000, 100, 6, 5, 0, 0, 0, 2082.74, 2189.53, 10.8203, 2082.4, 2186.96, 10.8203, 175.243, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 0, '', 15, 0, 0, 0, 0, 0, 0, 100000, 100, 5, 4, 0, 0, 0, 2085.12, 2074.02, 11.0547, 2087.29, 2075.18, 10.9355, 114.08, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 0, '', 15, 0, 0, 0, 0, 0, 1, 1500000, 5000, 1, 0, 0, 0, 0, 2079.84, 2046.17, 11.0579, 2079.75, 2044.66, 11.0579, 336.764, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 0, '', 15, 0, 0, 0, 0, 0, 0, 1500000, 5000, 2, 1, 0, 0, 0, 2055.85, 2046.17, 11.0579, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 0, '', 15, 0, 0, 0, 0, 0, 0, 1500000, 5000, 3, 2, 0, 0, 0, 2031.08, 2046.17, 11.0579, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 0, '', 15, 0, 0, 0, 0, 0, 0, 1500000, 5000, 4, 3, 0, 0, 0, 2053.23, 2096.55, 11.0579, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 0, '', 15, 0, 0, 0, 0, 0, 0, 150000, 5000, 5, 4, 0, 0, 0, 2065.14, 2096.55, 11.0579, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 0, '', 15, 0, 0, 0, 0, 0, 0, 1500000, 5000, 6, 5, 0, 0, 0, 2076.94, 2096.55, 11.0579, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 0, '', 15, 0, 0, 0, 0, 0, 1, 150000, 5000, 7, 6, 0, 0, 0, 2085.69, 2090.33, 11.0579, 2087.55, 2090.77, 11.0579, 279.533, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 0, '', 15, 0, 0, 0, 0, 0, 1, 150000, 5000, 8, 7, 0, 0, 0, 2085.67, 2067.03, 11.0579, 2087.78, 2067.3, 11.0579, 286.298, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 0, 'ECP-CELL', 15, 0, 0, 6, 0, 5650, 19, 150000, 5000, 9, 8, 0, 0, 0, 2085.67, 2055.03, 11.0579, 2087.9, 2054.82, 11.0579, 275.294, 0, 1000, 500, 250, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 0, 'gembel punya ini ', 15, 0, 0, 0, 0, 3000, 20, 10000, 100, 12, 11, 0, 0, 0, 2336.09, -1165.62, 1054.32, 2334.3, -1165.04, 1054.32, 285.088, 0, 1, 1, 1, 3000, 3000, 3000, NULL, NULL, NULL, NULL),
(84, 0, '', 15, 0, 0, 0, 0, 0, 0, 12000000, 25000, 9, 8, 0, 0, 0, 1847.77, -1871.76, 13.5781, 1847.24, -1870.75, 13.5781, 241.877, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 0, '', 12, 0, 0, 0, 0, 0, 0, 3000000, 5000, 12, 11, 0, 0, 0, 1680.04, 1762.7, 10.8291, 1680.04, 1762.7, 10.8291, 5.89272, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 0, '', 15, 0, 0, 0, 0, 0, 1, 300000, 100, 9, 8, 1000, 0, 0, 2474.21, 1024.25, 10.8203, 2474.53, 1022.37, 10.8203, 231.352, 0, 10000, 10000, 10000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 0, '', 15, 0, 0, 0, 0, 0, 1, 300000, 100, 12, 11, 0, 0, 0, 2411.83, 1019.75, 14.2725, 2411.62, 1021.06, 14.2725, 340.384, 0, 10000, 10000, 10000, 10000, 10000, NULL, NULL, NULL, NULL, NULL),
(88, 0, '', 15, 0, 0, 0, 0, 0, 0, 300000, 5000, 12, 11, 0, 0, 0, 2228.84, 655.188, 11.4609, 2227.38, 652.697, 11.4609, 342.78, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 0, '', 15, 0, 0, 0, 0, 0, 0, 1000000, 3000, 11, 10, 0, 0, 0, 2638.79, 1849.86, 11.0234, 2637.92, 1849.5, 11.0234, 98.4762, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 0, '', 15, 0, 0, 0, 0, 2000, 18, 3000000, 1000, 12, 11, 0, 0, 0, 2597.63, 1900.91, 11.0312, 2597.63, 1898.3, 11.0312, 191.984, 0, 2000, 1, 2000, 2000, 2000, 2000, NULL, NULL, NULL, NULL),
(91, 0, 'KHUSUS GEMBEL PETARUNX', 15, 0, 0, 0, 0, 625, 17, 300000, 5000, 12, 11, 500, 0, 0, 1662.72, 1426.79, 10.7992, 1665.83, 1426.68, 10.7834, 208.5, 0, 200, 200, 100, 50, 50, 50, NULL, NULL, NULL, NULL),
(92, 0, '', 15, 0, 0, 0, 0, 0, 0, 300000, 5000, 15, 14, 0, 0, 0, 2239.25, 960.532, 10.813, 2239.94, 962.939, 10.813, 185.713, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 0, '', 15, 0, 0, 0, 0, 0, 0, 300000, 5000, 12, 11, 500, 0, 0, 2249.13, 960.532, 10.813, 2248.56, 962.464, 10.813, 3.11477, 0, 1000, 1000, 1000, 1000, 1000, 1000, NULL, NULL, NULL, NULL),
(94, 0, '', 15, 0, 0, 0, 0, 416700, 0, 300000, 5000, 12, 11, 5000, 0, 0, 2159.54, 943.193, 10.8203, 2157.2, 943.111, 10.8203, 103.607, 0, 2000, 2500, 3000, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 0, '', 15, 0, 0, 1, 0, 265, 20, 300000, 5000, 12, 11, 500, 0, 0, 960.297, 1782.54, 8.85156, 963.52, 1782.93, 8.85156, 281.798, 0, 500, 500, 250, 250, 250, 250, NULL, NULL, NULL, NULL),
(96, 0, 'Gembel Kematian', 15, 0, 0, 0, 0, 0, 20, 300000, 5000, 12, 11, 0, 0, 0, 2481.05, 1524.98, 11.7737, 2482.74, 1527.54, 11.2729, 333.369, 0, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL),
(97, 0, '', 15, 0, 0, 0, 0, 0, 1, 100000, 100, 15, 14, 0, 0, 0, 1377.81, -1752.92, 14.1406, 1380.92, -1752.33, 13.5469, 284.683, 0, 100, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 0, 'bandara los venturas', 15, 0, 0, 485, 0, 134300, 22, 100000, 100, 14, 13, 0, 0, 0, 1674, 1501.65, 10.7742, 1675.52, 1500.77, 10.7709, 252.404, 0, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100),
(99, 0, '', 12, 0, 0, 0, 0, 0, 1, 100000, 100, 12, 11, 0, 0, 0, 1657.04, 1777.48, 10.8203, 1654.75, 1777.3, 10.8203, 96.7341, 0, 2000, 200, 2000, 300, 3000, 4000, 4000, 4000, 4000, 4000),
(100, 0, '', 15, 0, 0, 0, 0, 10000, 1, 300000, 5000, 12, 11, 0, 0, 0, -832.252, 1482.83, 18.3706, -832.607, 1485.84, 18.0707, 17.429, 0, 10000, 10000, 10000, 10000, 10000, 10000, NULL, NULL, NULL, NULL),
(101, 0, '', 15, 0, 0, 0, 0, 0, 0, 500000, 2000, 12, 11, 0, 0, 0, 2401.13, -1981.46, 13.5469, 2401.42, -1978.72, 13.5469, 357.858, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `business_gps`
--

CREATE TABLE `business_gps` (
  `id` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `pos` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `business_profit`
--

CREATE TABLE `business_profit` (
  `id` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `uip` varchar(16) NOT NULL,
  `time` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `view` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `change_names`
--

CREATE TABLE `change_names` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `name` varchar(21) NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(16) NOT NULL DEFAULT '255.255.255.255'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `charity`
--

CREATE TABLE `charity` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `coffers_log`
--

CREATE TABLE `coffers_log` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` varchar(128) CHARACTER SET utf8 NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Struktur dari tabel `donatefitur`
--

CREATE TABLE `donatefitur` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `fitures` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `noted` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `donate_log`
--

CREATE TABLE `donate_log` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `uip` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '255.255.255.255',
  `time` int(11) NOT NULL,
  `donate` int(11) NOT NULL,
  `description` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT 'None'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `donations`
--

CREATE TABLE `donations` (
  `id` int(11) NOT NULL,
  `acc_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `time` varchar(16) NOT NULL,
  `date` varchar(16) NOT NULL,
  `activated` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `family`
--

CREATE TABLE `family` (
  `id` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `u_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `color` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `rank1` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Пусто',
  `rank2` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Пусто',
  `rank3` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Пусто',
  `rank4` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Пусто',
  `rank5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Пусто',
  `rank6` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Пусто',
  `rank7` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Пусто',
  `rank8` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Пусто',
  `rank9` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Пусто',
  `rank10` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Пусто',
  `money` int(11) NOT NULL,
  `drugs` int(11) NOT NULL,
  `tree` int(11) NOT NULL,
  `metal` int(11) NOT NULL,
  `ammo` int(11) NOT NULL,
  `house_id` int(11) NOT NULL DEFAULT -1,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fuel_stations`
--

CREATE TABLE `fuel_stations` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT 'None',
  `city` int(11) NOT NULL DEFAULT -1,
  `zone` int(11) NOT NULL DEFAULT -1,
  `improvements` int(11) NOT NULL,
  `fuels` int(11) NOT NULL,
  `fuel_price` int(11) NOT NULL,
  `buy_fuel_price` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `rent_time` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `lock` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `eviction` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `fuel_stations`
--

INSERT INTO `fuel_stations` (`id`, `owner_id`, `name`, `city`, `zone`, `improvements`, `fuels`, `fuel_price`, `buy_fuel_price`, `balance`, `rent_time`, `price`, `rent_price`, `lock`, `x`, `y`, `z`, `eviction`) VALUES
(1, 0, 'АЗС', 1, 0, 0, 1000, 3, 0, 0, 0, 650300, 5200, 0, 655.531, -564.843, 16.3359, 0),
(2, 0, 'АЗС', 15, 0, 0, 1000, 3, 0, 0, 0, 1000700, 4500, 0, 1003.33, -939.578, 42.1797, 0),
(3, 0, 'АЗС', 2, 0, 0, 1000, 3, 0, 150, 0, 867000, 3900, 0, 1939.41, -1773.02, 13.3828, 0),
(4, 0, 'АЗС', 9, 0, 0, 1000, 3, 0, 0, 1, 750600, 3900, 0, -90.9875, -1169.54, 2.4167, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fuel_stations_profit`
--

CREATE TABLE `fuel_stations_profit` (
  `id` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `uip` varchar(16) NOT NULL,
  `time` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `view` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `fuel_stations_profit`
--

INSERT INTO `fuel_stations_profit` (`id`, `fid`, `uid`, `uip`, `time`, `money`, `view`) VALUES
(1, 2, 7, '36.68.237.117', 1606965869, 390, 0),
(2, 2, 7, '36.68.237.117', 1606973603, 300, 0),
(3, 1, 24, '116.206.40.88', 1606993709, 150, 0),
(4, 2, 24, '116.206.40.88', 1607000049, 390, 0),
(5, 1, 3, '140.213.13.14', 1607006477, 300, 0),
(6, 3, 12, '110.137.81.229', 1607065992, 240, 1),
(7, 2, 7, '36.76.201.239', 1607085899, 360, 0),
(8, 1, 11, '114.142.168.27', 1607133890, 360, 0),
(9, 2, 39, '140.213.11.26', 1607164614, 240, 0),
(10, 2, 7, '125.165.252.222', 1607177116, 330, 0),
(11, 2, 7, '125.165.252.222', 1607229457, 330, 0),
(12, 2, 7, '125.165.252.222', 1607245872, 300, 0),
(13, 1, 23, '180.248.168.232', 1607320698, 120, 0),
(14, 3, 1, '36.68.216.90', 1607347620, 180, 0),
(15, 2, 7, '120.188.38.117', 1607404439, 360, 0),
(16, 2, 53, '103.132.53.68', 1607406387, 210, 0),
(17, 1, 69, '116.206.40.118', 1607477835, 210, 0),
(18, 4, 92, '36.71.239.102', 1607502911, 300, 0),
(19, 2, 66, '202.80.217.55', 1607506163, 45, 0),
(20, 3, 92, '36.71.239.102', 1607506209, 210, 0),
(21, 2, 7, '114.5.209.172', 1607507016, 330, 0),
(22, 2, 66, '202.80.217.55', 1607507430, 210, 0),
(23, 3, 92, '36.71.239.102', 1607573088, 30, 0),
(24, 1, 90, '36.68.223.104', 1607573950, 330, 0),
(25, 2, 83, '36.90.61.144', 1607586215, 180, 0),
(26, 2, 83, '36.90.61.144', 1607664120, 150, 0),
(27, 4, 53, '103.132.53.68', 1607675072, 210, 0),
(28, 2, 112, '36.71.236.100', 1607834140, 360, 0),
(29, 2, 112, '36.71.236.100', 1607850476, 150, 0),
(30, 1, 124, '114.122.69.132', 1607881117, 275, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gang_repositories`
--

CREATE TABLE `gang_repositories` (
  `id` int(11) NOT NULL,
  `metall` int(11) NOT NULL,
  `ammo` int(11) NOT NULL,
  `drugs` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `lock` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gang_zones`
--

CREATE TABLE `gang_zones` (
  `id` int(11) NOT NULL,
  `min_x` float NOT NULL,
  `min_y` float NOT NULL,
  `max_x` float NOT NULL,
  `max_y` float NOT NULL,
  `fraction` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `gang_zones`
--

INSERT INTO `gang_zones` (`id`, `min_x`, `min_y`, `max_x`, `max_y`, `fraction`) VALUES
(1, 1658, -2165, 1828, -2065, 4),
(2, 1861, -1285, 2071, -1145, 3),
(3, 1861, -1145, 2071, -1025, 3),
(4, 2647, -1910, 2887, -1670, 2),
(5, 2071, -1185, 2271, -1025, 3),
(6, 2071, -1330, 2171, -1185, 3),
(7, 2171, -1331, 2271, -1185, 3),
(8, 2271, -1125, 2511, -1025, 2),
(9, 1991, -1630, 2131, -1530, 3),
(10, 2271, -1275, 2391, -1125, 2),
(11, 2391, -1245, 2531, -1125, 2),
(12, 1861, -1430, 1991, -1285, 3),
(13, 1991, -1802, 2131, -1630, 3),
(14, 2511, -1125, 2741, -1025, 2),
(15, 2787, -1670, 2887, -1470, 2),
(16, 2687, -1570, 2787, -1470, 2),
(17, 2271, -1802, 2391, -1724, 1),
(18, 2751, -1370, 2887, -1245, 2),
(19, 2631, -1245, 2759, -1125, 2),
(20, 2271, -1724, 2391, -1574, 1),
(21, 2741, -1125, 2887, -1025, 2),
(22, 2391, -1724, 2544, -1574, 1),
(23, 2544, -1724, 2647, -1570, 2),
(24, 2647, -1670, 2787, -1570, 2),
(25, 2687, -1470, 2887, -1370, 2),
(26, 2544, -1909, 2647, -1724, 2),
(27, 2131, -1723, 2271, -1630, 1),
(28, 2544, -1470, 2687, -1370, 2),
(29, 2544, -1370, 2751, -1245, 2),
(30, 2391, -1419, 2544, -1245, 1),
(31, 2391, -1574, 2544, -1419, 1),
(32, 1991, -1430, 2071, -1285, 3),
(33, 2271, -1419, 2391, -1275, 1),
(34, 2391, -1819, 2544, -1724, 1),
(35, 1861, -1622, 1991, -1430, 3),
(36, 2071, -1430, 2271, -1330, 3),
(37, 2271, -1574, 2391, -1419, 1),
(38, 1861, -1802, 1991, -1622, 3),
(39, 1991, -1530, 2131, -1430, 3),
(40, 2752, -2107, 2887, -1910, 1),
(41, 2647, -2108, 2752, -1910, 1),
(42, 2391, -2029, 2647, -1909, 1),
(43, 2391, -2108, 2647, -2029, 1),
(44, 2061, -1902, 2179, -1802, 1),
(45, 1861, -1951, 1961, -1802, 4),
(46, 1961, -1902, 2061, -1802, 4),
(47, 2531, -1245, 2631, -1125, 2),
(48, 1961, -2008, 2228, -1902, 4),
(49, 2391, -1909, 2544, -1819, 1),
(50, 2131, -1802, 2271, -1723, 1),
(51, 2544, -1570, 2687, -1470, 2),
(52, 2131, -1630, 2271, -1530, 1),
(53, 2191, -2108, 2391, -2008, 4),
(54, 2179, -1903, 2391, -1802, 1),
(55, 2228, -2008, 2391, -1902, 4),
(56, 1828, -2165, 1961, -2058, 4),
(57, 2759, -1245, 2887, -1125, 2),
(58, 1861, -2058, 1961, -1951, 4),
(59, 1961, -2108, 2191, -2008, 4),
(60, 2131, -1530, 2271, -1430, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hotels`
--

CREATE TABLE `hotels` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `rent_time` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `houses`
--

CREATE TABLE `houses` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `city` int(11) NOT NULL DEFAULT -1,
  `zone` int(11) NOT NULL DEFAULT -1,
  `improvements` int(11) NOT NULL,
  `rent_time` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `lock` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `exit_x` float NOT NULL,
  `exit_y` float NOT NULL,
  `exit_z` float NOT NULL,
  `exit_angle` float NOT NULL,
  `car_x` float NOT NULL,
  `car_y` float NOT NULL,
  `car_z` float NOT NULL,
  `car_angle` float NOT NULL,
  `store_x` float NOT NULL,
  `store_y` float NOT NULL,
  `store_z` float NOT NULL,
  `eviction` int(11) NOT NULL,
  `store_metall` int(11) NOT NULL,
  `store_drugs` int(11) NOT NULL,
  `store_weapon` int(11) NOT NULL,
  `store_ammo` int(11) NOT NULL,
  `store_skin` int(11) NOT NULL,
  `family_id` int(11) NOT NULL,
  `mebel_1` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `houses`
--

INSERT INTO `houses` (`id`, `owner_id`, `name`, `city`, `zone`, `improvements`, `rent_time`, `price`, `rent_price`, `type`, `lock`, `x`, `y`, `z`, `exit_x`, `exit_y`, `exit_z`, `exit_angle`, `car_x`, `car_y`, `car_z`, `car_angle`, `store_x`, `store_y`, `store_z`, `eviction`, `store_metall`, `store_drugs`, `store_weapon`, `store_ammo`, `store_skin`, `family_id`, `mebel_1`) VALUES
(1, 0, '', 212, 0, 5, 0, 2232259, 500, 2, 0, 1300.46, 193.283, 20.5233, 1301.43, 191.33, 20.4609, 209.286, 1305.48, 193.141, 20.4609, 121.009, 2325.31, -1162.19, 1050.51, 1, 0, 0, 0, 0, 0, 0, 0),
(2, 0, '', 212, 0, 5, 0, 5651140, 500, 3, 0, 1303.61, 186.099, 20.5389, 1302.3, 187.61, 20.467, 33.3828, 1310.86, 189.092, 20.2151, 359.546, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, '', 212, 0, 0, 0, 357439, 500, 0, 0, 1295.42, 174.552, 20.9106, 1344.63, 2610.18, 11.2989, 9.35347, 1293.49, 179.409, 20.2723, 359.546, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(4, 0, '', 212, 0, 0, 0, 349869, 500, 0, 0, 1283.3, 158.406, 20.7934, 1284.54, 158.792, 20.7934, 298.058, 1284.01, 167.206, 20.25, 359.546, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(5, 0, '', 212, 0, 1, 0, 377027, 500, 0, 0, 1307.67, 153.195, 20.391, 1309.3, 152.662, 20.3587, 241.179, 1315.42, 149.863, 19.9889, 215.398, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, '', 244, 0, 5, 1, 875546, 2000, 1, 1, 2438.77, -54.963, 28.1535, 2438.63, -54.1449, 28.1535, 350.981, 2444.5, -47.5696, 26.9621, 359.221, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(7, 0, '', 212, 0, 0, 0, 335531, 500, 0, 0, 1293.58, 157.239, 20.4609, 1292.04, 156.392, 20.467, 107.304, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(8, 0, '', 212, 0, 0, 0, 346572, 500, 0, 0, 1299.17, 140.44, 20.5389, 1299.22, 142.722, 20.4171, 355.202, 1295.05, 143.314, 20.4663, 295.668, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(9, 0, '', 42, 0, 0, 1557359899, 883071, 2000, 1, 0, 818.283, -509.318, 18.0129, 818.195, -511.507, 18.0129, 181.505, 827.611, -495.635, 17.0552, 282.316, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, '', 42, 0, 0, 1557100697, 858717, 2000, 1, 0, 768.243, -503.481, 18.0129, 768.389, -506.358, 18.0156, 180.222, 763.445, -509.022, 17.205, 179.764, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(11, 0, '', 42, 0, 1, 13, 2196546, 2000, 2, 0, 795.249, -506.148, 18.0129, 795.11, -508.374, 18.0129, 181.499, 786.69, -511.714, 16.7429, 180.101, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(12, 0, '', 42, 0, 0, 1, 914373, 2000, 1, 1, 743.265, -509.32, 18.0129, 743.285, -511.369, 18.0129, 182.439, 753.021, -511.556, 16.8003, 181.644, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(13, 0, '', 42, 0, 0, 0, 865717, 2000, 1, 0, 745.124, -556.654, 18.0129, 744.883, -554.909, 18.0129, 2.15404, 751.107, -553.247, 16.9185, 205.538, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(14, 0, '', 42, 0, 0, 0, 855464, 2000, 1, 0, 766.611, -556.781, 18.0129, 766.538, -555.75, 18.0129, 8.44692, 772.339, -551.822, 16.9938, 7.7052, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 0, '', 42, 0, 0, 0, 850170, 2000, 1, 0, 745.672, -591.211, 18.0129, 744.016, -591.102, 18.0129, 94.5723, 752.68, -582.361, 17.0495, 92.9405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 0, '', 24, 0, 0, 1, 326267, 500, 0, 0, 226.444, -302.813, 1.92618, 226.51, -304.138, 1.92618, 303.691, 226.48, -312.233, 1.4241, 349.827, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(17, 0, '', 24, 0, 0, 0, 391622, 500, 0, 0, 235.145, -309.454, 1.7108, 235.162, -308.401, 1.58358, 353.961, 228.029, -310.936, 1.35734, 317.698, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(18, 0, '', 24, 0, 0, 1, 379307, 500, 0, 0, 260.578, -303.005, 1.91837, 259.39, -302.011, 1.91837, 221.373, 264.327, -296.428, 1.33647, 73.2159, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(19, 0, '', 24, 0, 3, 1, 321669, 500, 0, 1, 241.998, -298.597, 1.68737, 241.991, -297.96, 1.57812, 21.8533, 246.349, -295.965, 1.3052, 314.452, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(20, 0, '', 24, 0, 5, 1, 370425, 500, 0, 1, 253.249, -289.948, 1.70299, 251.98, -289.81, 1.58358, 86.6296, 245.135, -291.136, 1.33652, 17.788, 248.209, 301.595, 999.148, 1, 0, 0, 0, 0, 0, 0, 0),
(21, 0, '', 24, 0, 0, 1554977632, 387119, 500, 0, 0, 261.962, -269.992, 1.64049, 261.213, -270.738, 1.57812, 138.784, 264.327, -273.845, 1.33626, 248.373, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(22, 0, '', 24, 0, 0, 1554968495, 324323, 500, 0, 1, 241.629, -282.458, 1.63268, 240.967, -282.256, 1.58358, 49.0331, 246.151, -280.375, 1.30792, 316.799, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(23, 0, '', 24, 0, 3, 0, 360255, 500, 0, 0, 264.514, -288.453, 1.72643, 263.345, -288.365, 1.57812, 94.9202, 258.849, -289.899, 1.33593, 18.0774, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(24, 0, '', 24, 0, 0, 1555718310, 328306, 500, 0, 0, 238.883, -286.34, 1.63268, 238.634, -285.822, 1.58358, 51.1976, 233.93, -282.176, 1.22844, 356.636, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(25, 0, '', 24, 0, 0, 1, 360767, 500, 0, 0, 264.514, -283.779, 1.72643, 264.072, -283.583, 1.57812, 90.9449, 263.919, -279.706, 1.3051, 174.27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 0, '', 24, 0, 0, 1, 318916, 500, 0, 0, 255.939, -278.568, 1.65612, 256.775, -278.08, 1.57812, 297.798, 259.401, -280.596, 1.3052, 85.9961, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(27, 0, '', 24, 0, 0, 1557187110, 312283, 500, 0, 0, 253.507, -274.499, 1.65612, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(28, 0, '', 23, 0, 5, 1, 854460, 2000, 1, 1, 252.888, -121.308, 3.53539, 251.091, -121.396, 3.53906, 306.955, 247.723, -125.774, 2.13035, 150.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 0, '', 23, 0, 0, 1555023562, 891790, 2000, 1, 0, 252.841, -92.3421, 3.53539, 251.865, -92.2161, 3.53539, 78.9788, 247.17, -87.7414, 1.84732, 93.9123, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(30, 0, '', 23, 0, 0, 0, 865568, 2000, 1, 0, 295.155, -54.5433, 2.77721, 295.045, -55.6945, 2.77721, 154.22, 287.52, -53.5969, 1.33792, 179.777, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(31, 0, '', 23, 0, 0, 1554940534, 922473, 2000, 1, 0, 267.611, -54.6629, 2.77721, 267.599, -55.2228, 2.77721, 166.923, 276.986, -55.0872, 1.14902, 0.13766, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(32, 0, '', 23, 0, 2, 1554984593, 885660, 2000, 1, 1, 312.723, -92.3612, 3.53539, 314.181, -92.4285, 3.53539, 293.047, 319.079, -86.4301, 1.93676, 272.082, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(33, 0, '', 111, 0, 0, 1, 830882, 2000, 1, 0, 2524.71, -1658.81, 15.824, 2523.66, -1658.47, 15.4935, 113.913, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(34, 0, '', 87, 0, 0, 0, 867431, 2000, 1, 0, 1804.25, -2124.9, 13.9424, 1804.12, -2123.84, 13.9424, 182.959, 1792.87, -2128.26, 13.3051, 47.9072, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(35, 0, '', 87, 0, 0, 1, 914510, 2000, 1, 0, 1802.04, -2098.94, 14.021, 1801.96, -2099.91, 14.021, 27.6053, 1807.41, -2107.77, 13.2204, 268.792, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 0, '', 87, 0, 0, 1556281746, 840255, 2000, 1, 0, 1781.4, -2101.27, 14.0566, 1781.4, -2102.05, 14.0566, 188.034, 1772.93, -2098.01, 13.3051, 182.131, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(37, 39, '', 87, 0, 0, 1, 927747, 2000, 1, 0, 1782.18, -2126.51, 14.0679, 1782.31, -2125.23, 13.8979, 8.67337, 1772.58, -2129.93, 13.3052, 357.379, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(38, 0, '', 87, 0, 0, 0, 887971, 2000, 1, 0, 1762.43, -2101.98, 13.857, 1762.43, -2102.97, 13.857, 354.778, 1756.62, -2107.7, 13.2195, 271.58, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(39, 0, '', 87, 0, 0, 1556256723, 926613, 2000, 1, 0, 1761.26, -2125.45, 14.0566, 1761.27, -2124.35, 14.0566, 202.627, 1744.95, -2128.9, 13.3033, 357.368, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(40, 0, '', 87, 0, 0, 0, 839152, 2000, 1, 0, 1734.74, -2130.36, 14.021, 1734.71, -2129.07, 13.851, 190.387, 1724.91, -2132.82, 13.331, 358.469, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(41, 0, '', 87, 0, 3, 1556252013, 885922, 2000, 1, 1, 1734.12, -2097.98, 14.0366, 1733.96, -2098.95, 14.0366, 9.61877, 1747.86, -2092.85, 13.3068, 178.938, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(42, 0, '', 212, 0, 0, 0, 304664, 500, 0, 0, 1312.12, 169.936, 20.4609, 1313.57, 171.061, 20.4609, 243.087, 1319.21, 167.313, 20.188, 355.512, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(43, 0, '', 87, 0, 3, 1, 2235952, 2000, 2, 0, 1715.21, -2125.45, 14.0566, 1714.97, -2124.28, 13.875, 190.093, 1705.1, -2128.26, 13.305, 357.418, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 0, '', 212, 0, 0, 1556362205, 386471, 500, 0, 1, 1315.99, 179.966, 20.4609, 1317.55, 179.703, 20.4534, 251.425, 1321.82, 178.052, 20.1254, 313.489, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(45, 0, '', 87, 0, 5, 1, 882154, 2000, 1, 0, 1711.62, -2101.24, 14.021, 1711.66, -2102.22, 14.021, 161.895, 1724.89, -2097.58, 13.305, 179.75, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(46, 0, '', 212, 0, 0, 0, 318366, 500, 0, 0, 1408.94, 346.108, 18.912, 1410.24, 344.871, 18.8613, 236.774, 1414.79, 345.612, 18.5739, 69.0872, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(47, 0, '', 212, 0, 5, 1, 332416, 500, 0, 0, 1413.64, 362.986, 19.1831, 1414.48, 361.014, 19.1382, 167.941, 1417.56, 363.31, 18.8, 347.182, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(48, 0, '', 212, 0, 0, 0, 306985, 500, 0, 0, 1428.29, 356.074, 18.875, 1427.79, 354.176, 18.8438, 169.028, 1435.09, 356.609, 18.5708, 239.534, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(49, 0, '', 87, 0, 0, 1, 923006, 2000, 1, 0, 1695.46, -2125.84, 13.8101, 1695.45, -2124.88, 13.8101, 183.473, 1696.24, -2117.76, 13.2194, 270.385, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 0, '', 335, 0, 0, 1, 838568, 2000, 1, 0, 1684.82, -2098.16, 13.8343, 1684.8, -2099.92, 13.8343, 204.888, 1699.11, -2084.57, 13.3026, 177.381, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(51, 0, '', 212, 0, 0, 0, 337675, 500, 0, 0, 1435.3, 334.601, 18.8417, 1437.02, 333.883, 18.8417, 250.456, 1431.97, 332.336, 18.5698, 357.075, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(52, 0, '', 86, 0, 5, 1, 893821, 2000, 1, 1, 1854.04, -1914.26, 15.2568, 1854.03, -1915.75, 15.2568, 334.391, 1856.36, -1927.19, 13.2234, 268.881, 2455.92, -1700.59, 1013.51, 1, 0, 0, 0, 0, 0, 0, 0),
(53, 0, '', 362, 0, 0, 0, 367422, 500, 0, 0, 1461.3, 342.065, 18.9531, 1462, 340.59, 18.8438, 208.782, 1465.44, 347.042, 18.5687, 140.32, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(54, 0, '', 86, 0, 3, 1, 923403, 2000, 1, 0, 1872.21, -1911.79, 15.2568, 1872.06, -1913.39, 15.2568, 4.55698, 1871.46, -1927.68, 13.2212, 268.402, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(55, 0, '', 86, 0, 0, 1555939676, 905551, 2000, 1, 0, 1891.92, -1914.4, 15.2568, 1891.85, -1915.89, 15.2568, 8.53764, 1893.45, -1927.29, 13.2215, 270.882, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(56, 0, '', 213, 0, 0, 1557014316, 324084, 500, 0, 0, 1469.4, 351.44, 18.9212, 1468.01, 350.252, 18.8684, 115.37, 1467.97, 355.292, 18.7522, 273.082, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(57, 0, '', 86, 0, 0, 0, 927546, 2000, 1, 0, 1913.52, -1911.99, 15.2568, 1913.48, -1913.86, 15.2568, 3.92815, 1920.1, -1927.55, 13.2206, 269.526, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(58, 0, '', 213, 0, 0, 0, 318155, 500, 0, 0, 1487.95, 360.79, 19.4128, 1486.14, 359.608, 19.3927, 120.609, 1488.78, 365.137, 19.2378, 174.625, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(59, 0, '', 213, 0, 0, 0, 318524, 500, 0, 0, 1475.59, 373.539, 19.6562, 1476.05, 375.261, 19.6331, 357.284, 1468.37, 372.018, 19.1414, 231.552, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(60, 0, '', 86, 0, 0, 0, 891080, 2000, 1, 0, 1938.54, -1911.33, 15.2568, 1937.44, -1911.36, 15.2568, 304.906, 1942.39, -1927.31, 13.2203, 271.643, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 0, '', 86, 0, 3, 1555906153, 842762, 2000, 1, 1, 1928.58, -1915.9, 15.2568, 1928.67, -1917.32, 15.2568, 158.225, 1930.7, -1927.72, 13.2212, 271.643, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(62, 0, '', 213, 0, 1, 1556635440, 338155, 500, 0, 1, 1465.91, 364.807, 19.272, 1466.54, 366.479, 19.3062, 334.961, 1468.91, 365.081, 19.0503, 354.108, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(63, 0, '', 213, 0, 1, 1, 335206, 500, 0, 0, 1451.64, 375.381, 19.4005, 1451.04, 373.603, 19.0966, 182.284, 1445.46, 372.414, 18.7738, 66.5339, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(64, 0, '', 244, 0, 0, 1556615060, 910569, 2000, 1, 0, 2285.96, 161.769, 28.4416, 2285.98, 160.124, 28.4453, 358.144, 2291.64, 154.427, 26.6852, 179.891, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(65, 0, '', 212, 0, 0, 1, 361563, 500, 0, 1, 1447.84, 362.386, 18.9195, 1448.3, 364.058, 18.9458, 307.431, 1445.2, 367.216, 18.699, 237.905, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(66, 0, '', 212, 0, 0, 1556680232, 302196, 500, 0, 0, 1419.83, 389.898, 19.2872, 1420.47, 391.233, 19.2805, 318.088, 1421.83, 385.645, 18.8072, 37.5792, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(67, 0, '', 212, 0, 0, 0, 326295, 500, 0, 0, 1402.63, 333.622, 18.9062, 1401.22, 332.989, 18.8438, 116.316, 1398.64, 343.942, 18.6512, 31.7166, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(68, 0, '', 212, 0, 0, 1556607706, 324886, 500, 0, 1, 1415.49, 324.275, 18.8438, 1414.21, 322.472, 18.8438, 160.183, 1408.14, 329.198, 18.4687, 247.233, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(69, 0, '', 244, 0, 0, 1557098135, 894559, 2000, 1, 0, 2257.93, 167.683, 28.1536, 2258.06, 166.046, 28.1536, 200.654, 2251.9, 164.162, 27.035, 330.857, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(70, 0, '', 244, 0, 0, 1556608114, 911088, 2000, 1, 1, 2236.45, 167.965, 28.1535, 2236.31, 166.123, 28.1535, 183.749, 2230.95, 171.921, 27.1047, 178.799, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(71, 0, '', 244, 0, 0, 1556637660, 841763, 2000, 1, 1, 2203.85, 62.2614, 28.4416, 2205.08, 61.998, 28.4416, 296.442, 2210.62, 56.2203, 26.7793, 269.662, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(72, 0, '', 244, 0, 0, 1556716247, 845553, 2000, 1, 1, 2204.73, 106.177, 28.4416, 2207.31, 106.305, 27.7117, 271.252, 2210.17, 112.062, 26.7151, 269.728, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(73, 0, '', 244, 0, 0, 1557187116, 872475, 2000, 1, 1, 2270.37, -7.50578, 28.1535, 2270.08, -8.91506, 28.1535, 204.265, 2279.23, 5.2018, 27.227, 180.312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(74, 0, '', 244, 0, 5, 1, 2240123, 2000, 2, 0, 2200.26, -37.3731, 28.1535, 2202.13, -37.3455, 28.1535, 270.906, 2195.67, -46.0367, 27.0231, 55.6033, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(75, 0, '', 244, 0, 5, 1556553970, 895717, 2000, 1, 1, 2197.96, -60.7585, 28.1535, 2199.21, -60.8592, 28.1535, 278.891, 2201.66, -66.4613, 27.027, 269.234, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(76, 0, '', 244, 0, 3, 1556612032, 831162, 2000, 1, 0, 2203.51, -89.3103, 28.1535, 2205.08, -89.2701, 28.1535, 264.751, 2189.89, -80.6413, 27.0937, 270.218, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(77, 0, '', 244, 0, 5, 1, 838657, 2000, 1, 0, 2245.52, -121.98, 28.1535, 2245.53, -120.249, 28.1535, 340.795, 2254.26, -125.25, 26.9712, 192.067, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(78, 0, '', 244, 0, 5, 1558051116, 869801, 2000, 1, 1, 2272.42, -119.125, 28.1535, 2272.76, -117.911, 28.1535, 1.81564, 2263.23, -132.173, 27.2271, 34.781, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79, 0, '', 244, 0, 5, 1556715438, 903033, 2000, 1, 0, 2293.92, -124.959, 28.1535, 2293.81, -123.602, 28.1535, 4.93141, 2299.48, -116.563, 26.8838, 358.431, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(80, 0, '', 244, 0, 0, 0, 875764, 2000, 1, 0, 2322.29, -124.662, 28.1536, 2322.07, -122.798, 28.1536, 9.31388, 2328.09, -121.561, 27.0652, 1.47532, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(81, 0, '', 244, 0, 0, 1556703924, 839722, 2000, 1, 1, 2367.3, -49.1273, 28.1535, 2367.37, -47.9404, 28.1535, 358.317, 2358.58, -60.2755, 27.2237, 358.35, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(82, 0, '', 244, 0, 5, 1557148582, 841318, 2000, 1, 1, 2363.6, 116.096, 28.4416, 2360.79, 116.052, 27.7657, 96.158, 2358.74, 122.193, 26.8903, 263.637, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(83, 0, '', 244, 0, 5, 1559519916, 2242759, 2000, 2, 1, 2392.47, -54.9622, 28.1536, 2392.18, -53.9106, 28.1536, 18.7367, 2398.21, -46.1992, 26.8553, 357.852, 2337.51, -1141.69, 1054.3, 0, 0, 0, 0, 0, 0, 0, 0),
(84, 0, '', 244, 0, 0, 1557100716, 857426, 2000, 1, 0, 2415.25, -52.2763, 28.1535, 2415.28, -51.621, 28.1535, 10.6813, 2424.37, -55.5774, 27.1207, 1.11969, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(85, 0, '', 244, 0, 5, 1556604443, 833174, 2000, 1, 0, 2448.54, -11.0348, 27.6835, 2448.27, -12.1002, 27.6835, 159.937, 2433.11, -3.87215, 26.2186, 180.453, 2455.92, -1700.54, 1013.51, 1, 0, 0, 0, 0, 0, 0, 0),
(86, 0, '', 244, 0, 0, 1556610989, 863592, 2000, 1, 0, 2324.66, 191.109, 28.4416, 2327.16, 191.148, 27.7358, 279.981, 2329.23, 197.09, 26.8663, 270.559, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(87, 0, '', 244, 0, 5, 1558310316, 888439, 2000, 1, 0, 2484.55, -28.3999, 28.4416, 2484.54, -24.9915, 27.715, 8.86694, 2478.7, -23.0444, 26.8708, 150.671, 2455.92, -1700.5, 1013.51, 0, 0, 0, 0, 0, 0, 0, 0),
(88, 0, '', 244, 0, 0, 1, 921420, 2000, 1, 0, 2363.59, 187.324, 28.4416, 2360.59, 187.065, 27.7225, 94.6579, 2358.32, 181.592, 26.819, 90.6929, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(89, 0, '', 244, 0, 0, 1556573387, 911782, 2000, 1, 0, 2363.5, 166.144, 28.4416, 2360.42, 166.195, 27.6912, 87.7733, 2358.51, 172.387, 26.8517, 91.6868, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(90, 0, '', 244, 0, 0, 1556602692, 864654, 2000, 1, 0, 2324.23, 162.214, 28.4416, 2327.38, 162.266, 27.698, 269.19, 2329.2, 156.135, 26.8744, 269.929, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(91, 0, '', 244, 0, 5, 1558655916, 857921, 2000, 1, 0, 2363.63, 142.084, 28.4416, 2360.7, 141.951, 27.7525, 93.8679, 2366.63, 146.609, 27.4687, 89.095, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(92, 0, '', 244, 0, 1, 1556613299, 865644, 2000, 1, 0, 2324.41, 116.214, 28.4416, 2327.36, 116.211, 27.7009, 271.824, 2329.02, 122.344, 26.9006, 271.16, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(93, 0, '', 244, 0, 0, 1, 924460, 2000, 1, 0, 2398.34, 110.996, 28.4416, 2398.3, 108.087, 27.6674, 188.891, 2404.49, 106.914, 26.9536, 251.722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(94, 0, '', 244, 0, 0, 1556661974, 895367, 2000, 1, 0, 2374.46, 71.1877, 28.4416, 2377.55, 71.1029, 27.6623, 276.639, 2378.68, 77.398, 26.9562, 82.8133, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(95, 0, '', 244, 0, 5, 1557187116, 873454, 2000, 1, 0, 2374.07, 42.2588, 28.4416, 2377.29, 42.2216, 27.7181, 279.04, 2378.8, 36.0335, 26.9385, 268.618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(96, 0, '', 244, 0, 0, 1557878316, 851170, 2000, 1, 0, 2374.2, 21.9849, 28.4416, 2377.56, 21.9225, 27.6643, 270.596, 2378.8, 25.9027, 26.9386, 269.958, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(97, 0, '', 244, 0, 0, 1556623438, 905491, 2000, 1, 0, 2416.54, 17.9027, 27.6835, 2414.37, 17.944, 26.9157, 90.7876, 2410.77, 11.573, 26.1093, 89.1719, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(98, 0, '', 244, 0, 0, 1556635834, 843944, 2000, 1, 0, 2410.69, -5.55044, 27.6835, 2410.5, -3.26228, 26.8911, 1.49763, 2413.64, 2.15912, 26.1094, 88.5936, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(99, 0, '', 244, 0, 0, 1, 873246, 2000, 1, 0, 2374.37, -8.5967, 28.4416, 2377.56, -8.61303, 27.6748, 276.153, 2371.2, -13.3906, 27.4496, 268.319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(100, 0, '', 244, 0, 0, 1556582180, 904398, 2000, 1, 0, 2249.25, 111.209, 28.4416, 2249.28, 108.251, 27.7035, 173.896, 2253.22, 107.301, 27.0118, 182.25, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(101, 0, '', 244, 0, 5, 1558223916, 872255, 2000, 1, 0, 2269.46, 111.293, 28.4416, 2269.53, 108.287, 27.709, 186.48, 2263.17, 106.168, 26.8369, 180.066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(102, 0, '', 244, 0, 5, 1556601825, 918082, 2000, 1, 1, 2245.49, -2.04081, 28.1536, 2245.51, -3.94294, 28.1536, 179.732, 2239.4, -5.53383, 27.0475, 182.584, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(103, 0, '', 244, 0, 1, 1556692628, 843646, 2000, 1, 1, 2513.39, -27.9683, 28.4416, 2513.36, -25.1861, 27.7632, 5.45593, 2519.25, -23.3287, 26.9189, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(104, 0, '', 244, 0, 1, 1556651837, 833985, 2000, 1, 0, 2447.25, 19.1786, 27.6835, 2447.17, 16.6225, 26.8866, 183.497, 2443.95, 11.0303, 26.1093, 269.087, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(105, 0, '', 244, 0, 5, 1, 908987, 2000, 1, 0, 2488.43, 11.523, 28.4416, 2488.41, 8.5068, 27.7485, 195.411, 2493.78, 6.47782, 26.8814, 182.332, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(106, 0, '', 244, 0, 3, 1557187116, 912981, 2000, 1, 1, 2509.38, 11.2766, 28.4416, 2509.47, 8.58421, 27.7709, 180.941, 2503.15, 6.1862, 26.8377, 191.499, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(107, 0, '', 244, 0, 0, 1556573457, 907945, 2000, 1, 0, 2550.66, -5.31552, 27.6756, 2550.54, -2.77687, 26.7639, 19.3775, 2553.68, 2.56345, 26.1015, 90.809, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(108, 0, '', 244, 0, 0, 1556575665, 870780, 2000, 1, 1, 2548.5, 25.0104, 27.6756, 2548.69, 21.2042, 27.6756, 183.815, 2553.68, 11.8642, 26.6667, 91.7445, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(109, 0, '', 244, 0, 0, 0, 900065, 2000, 1, 0, 2550.83, 57.3378, 27.6756, 2549.01, 57.4198, 27.6756, 102.9, 2559.13, 72.6537, 26.1015, 89.4216, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(110, 0, '', 244, 0, 4, 1556694216, 857989, 2000, 1, 1, 2556.64, 87.9577, 27.6756, 2554.27, 87.8854, 26.8987, 104.488, 2551.5, 81.6127, 26.1034, 89.8621, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(111, 0, '', 244, 0, 0, 1, 859747, 2000, 1, 0, 2519.33, 58.3049, 27.6835, 2519.2, 60.5848, 27.6835, 331.755, 2513.58, 70.7213, 26.6805, 268.608, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(112, 0, '', 244, 0, 1, 1557359916, 894770, 2000, 1, 0, 2510.22, 89.0413, 27.6835, 2510.12, 90.8489, 26.9529, 7.31419, 2503.66, 94.414, 26.1111, 358.899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113, 0, '', 244, 0, 5, 1556976321, 864610, 2000, 1, 0, 2479.57, 94.6162, 27.6835, 2479.71, 96.1671, 27.6835, 356.638, 2494.8, 86.2048, 26.1094, 8.46745, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(114, 0, '', 244, 0, 0, 1558396716, 908739, 2000, 1, 0, 2480.6, 64.3852, 27.6835, 2480.47, 66.7541, 26.8861, 359.903, 2483.63, 72.0357, 26.1094, 93.736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(115, 0, '', 244, 0, 5, 1, 919865, 2000, 1, 0, 2536.18, 128.275, 27.6835, 2533.74, 128.12, 26.8497, 95.9045, 2528.18, 130.532, 26.1093, 181.003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(116, 0, '', 244, 0, 0, 1556593564, 843108, 2000, 1, 1, 2518.47, 128.931, 27.6756, 2518.34, 126.988, 27.6756, 175.401, 2502.99, 137.19, 26.1012, 179.539, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(117, 0, '', 244, 0, 5, 1556634078, 925948, 2000, 1, 0, 2480.69, 126.244, 27.6756, 2482.79, 126.359, 27.6756, 279.127, 2493.48, 130.676, 26.6581, 182.36, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(118, 0, '', 244, 0, 5, 1556602882, 870416, 2000, 1, 0, 2462.71, 134.199, 27.6756, 2462.72, 132.119, 26.9063, 189.345, 2469.02, 129.307, 26.1016, 179.335, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(119, 0, '', 244, 0, 0, 1559347116, 844237, 2000, 1, 0, 2444.45, 92.1786, 28.4416, 2447.2, 92.1535, 27.7359, 272.353, 2448.91, 86.083, 26.9205, 270.248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(120, 0, '', 244, 0, 5, 1556695820, 879938, 2000, 1, 1, 2443.3, 61.0521, 28.4416, 2443.37, 58.516, 27.7504, 181.915, 2449.48, 56.7503, 26.9265, 180.359, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(121, 0, '', 244, 0, 0, 1, 836978, 2000, 1, 0, 2413.48, 61.352, 28.4416, 2413.53, 58.493, 27.7583, 185.638, 2408.96, 63.9344, 27.466, 178.399, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(122, 0, '', 244, 0, 5, 1559433516, 915076, 2000, 1, 0, 2323.85, 136.423, 28.4416, 2324.89, 136.176, 28.4416, 269.967, 2330.9, 132.932, 26.7321, 221.204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123, 28, '', 111, 0, 0, 1, 834446, 2000, 1, 0, 2523.03, -1679.4, 15.497, 2519.33, -1678.86, 14.6897, 84.2751, 2516.42, -1671.74, 13.5134, 243.71, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(124, 0, '', 134, 0, 0, 1, 897003, 2000, 1, 0, 2151.05, -1807.91, 13.5463, 2153.01, -1808.16, 13.5474, 96.9826, 2157.33, -1793.72, 13.1176, 181.074, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(125, 0, '', 111, 0, 6, 1, 851680, 2000, 1, 0, 2513.66, -1650.2, 14.3557, 2512.27, -1651.58, 13.9327, 132.859, 2506.32, -1661.67, 13.0369, 10.3628, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(126, 0, '', 134, 0, 0, 0, 837389, 2000, 1, 0, 2151.05, -1814.95, 13.5498, 2152.24, -1814.83, 13.5469, 286.721, 2161.56, -1793.75, 13.118, 213.926, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(127, 0, '', 111, 0, 5, 1, 901906, 2000, 1, 1, 2498.48, -1642.88, 13.7826, 2498.27, -1645.09, 13.5343, 179.424, 2498.28, -1655.86, 13.0177, 321.862, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(128, 23, '', 111, 0, 0, 1, 2243429, 2000, 2, 0, 2486.32, -1645.24, 14.0772, 2486.32, -1647.29, 14.0703, 190.826, 2486.29, -1654.51, 13.0213, 56.1516, 0, 0, 0, 1, 0, 0, 0, 0, 106, 0, 0),
(129, 0, '', 111, 0, 5, 1, 867365, 2000, 1, 0, 2514.29, -1691.65, 14.046, 2512.95, -1690.04, 13.541, 45.8745, 2511.03, -1680.88, 13.1455, 220.801, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(130, 0, '', 111, 0, 5, 1, 901106, 2000, 1, 0, 2469.64, -1646.45, 13.7801, 2469.41, -1648.34, 13.4724, 190.825, 2472.48, -1654.06, 13.0265, 353.109, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(131, 0, '', 134, 0, 5, 1558655916, 873436, 2000, 1, 1, 2155.96, -1815.22, 13.5469, 2155.83, -1813.74, 13.5469, 357.67, 2161.56, -1807.67, 13.1329, 359.653, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(132, 0, '', 134, 0, 0, 1556578458, 833864, 2000, 1, 0, 2162.84, -1815.23, 13.5469, 2162.82, -1813.19, 13.5469, 267.789, 2165.54, -1807.74, 13.1346, 359.229, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(133, 0, '', 134, 0, 0, 0, 919012, 2000, 1, 0, 2168.84, -1815.23, 13.5469, 2168.85, -1813.4, 13.5469, 290.488, 2169.41, -1807.6, 13.1302, 359.796, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(134, 0, '', 134, 0, 0, 0, 863466, 2000, 1, 0, 2176.29, -1815.22, 13.5469, 2176.06, -1813.18, 13.5469, 237.112, 2173.74, -1807.74, 13.1343, 0.661502, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(135, 0, '', 111, 0, 5, 1, 830297, 2000, 1, 1, 2451.96, -1641.83, 13.7357, 2451.54, -1643.46, 13.7357, 175.458, 2443.19, -1643.15, 13.0864, 185.977, 2450.4, -1706.2, 1013.51, 1, 0, 0, 0, 0, 0, 0, 0),
(136, 0, '', 111, 0, 0, 0, 831086, 2000, 1, 0, 2414.02, -1646.85, 14.0119, 2413.76, -1649.27, 13.5455, 158.299, 2403.35, -1643.27, 13.1719, 94.0778, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(137, 0, '', 134, 0, 1, 0, 834538, 2000, 1, 0, 2172.3, -1819.69, 16.1406, 2172.54, -1818.45, 16.1406, 24.3766, 2157.57, -1807.6, 13.1553, 0.357772, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(138, 0, '', 111, 0, 0, 1557619116, 849435, 2000, 1, 0, 2393.07, -1646.32, 13.9051, 2393.34, -1648.95, 13.5469, 185.816, 2393.61, -1654, 13.2195, 185.971, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(139, 0, '', 134, 0, 0, 0, 913560, 2000, 1, 0, 2164.9, -1819.1, 16.1406, 2165.01, -1818.04, 16.1406, 331.787, 2165.63, -1793.69, 13.1296, 182.696, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(140, 0, '', 134, 0, 0, 1556661525, 889498, 2000, 1, 1, 2158.28, -1819.69, 16.1406, 2158.64, -1818.47, 16.1406, 358.183, 2169.69, -1793.5, 13.1373, 181.015, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(141, 0, '', 134, 0, 0, 1, 876808, 2000, 1, 0, 2151.91, -1819.69, 16.1406, 2151.99, -1818.43, 16.1406, 30.7092, 2173.68, -1793.41, 13.1344, 181.466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(142, 0, '', 134, 0, 2, 1556708439, 885547, 2000, 1, 1, 2146.59, -1814.95, 16.1406, 2147.97, -1814.96, 16.1406, 249.416, 2184.76, -1808.01, 13.1348, 359.072, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(143, 0, '', 111, 0, 0, 1559347116, 867313, 2000, 1, 0, 2362.86, -1644.03, 13.5334, 2362.79, -1646.16, 13.5291, 177.808, 2372.94, -1642.47, 13.1342, 72.6872, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(144, 0, '', 111, 0, 0, 1, 849923, 2000, 1, 0, 2409.19, -1674.15, 13.6049, 2408.97, -1671.78, 13.5812, 6.7365, 2418.61, -1672.17, 13.2295, 175.252, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(145, 0, '', 111, 0, 0, 0, 917676, 2000, 1, 0, 2384.64, -1675.19, 14.9152, 2384.89, -1673.43, 14.734, 3.09541, 2393.52, -1677.13, 13.9027, 92.6107, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(146, 0, '', 111, 0, 5, 1557705516, 908612, 2000, 1, 0, 2368.36, -1675.29, 14.1682, 2365.73, -1673.21, 13.5497, 13.0682, 2361.22, -1678.93, 13.1698, 98.732, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(147, 0, '', 134, 0, 0, 1556624726, 860034, 2000, 1, 0, 2146.52, -1808.42, 16.1406, 2147.53, -1808.79, 16.1406, 307.439, 2188.47, -1807.99, 13.1346, 1.71915, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(148, 0, '', 111, 0, 0, 0, 844335, 2000, 1, 0, 2327.21, -1681.88, 14.9297, 2329.66, -1681.68, 14.5276, 268.498, 2327.1, -1677.6, 14.0478, 102.31, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(149, 0, '', 111, 0, 2, 1558310316, 911573, 2000, 1, 0, 2402.45, -1715.23, 14.1328, 2402.42, -1716.83, 13.6342, 191.984, 2409.38, -1719.24, 13.3061, 137.023, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(150, 0, '', 111, 0, 5, 1, 2238867, 2000, 2, 0, 2385.37, -1711.66, 14.2422, 2385.06, -1712.69, 14.2232, 185.117, 2390.05, -1715.93, 13.3256, 43.7515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(151, 0, '', 111, 0, 0, 1556776478, 894862, 2000, 1, 1, 2326.75, -1717, 13.9074, 2326.95, -1718.86, 13.5469, 179.313, 2318.62, -1714.78, 13.1719, 90.4159, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(152, 0, '', 111, 0, 5, 0, 909590, 2000, 1, 0, 2308.94, -1714.34, 14.9801, 2308.74, -1715.25, 14.6496, 216.269, 2311.16, -1727.46, 13.1899, 86.5227, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(153, 0, '', 111, 0, 5, 1557359916, 833363, 2000, 1, 0, 2306.91, -1678.64, 14.0012, 2307.4, -1677.03, 14.0012, 10.505, 2306.7, -1668.15, 14.1825, 263.403, 2447.97, -1692.6, 1013.51, 0, 0, 0, 0, 0, 0, 0, 0),
(154, 0, '', 134, 0, 3, 0, 908049, 2000, 1, 1, 2140.95, -1801.86, 16.1475, 2142.08, -1802.19, 16.1406, 159.515, 2188.84, -1796.47, 13.1419, 359.447, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(155, 0, '', 111, 0, 0, 1557705516, 910154, 2000, 1, 0, 2282.39, -1641.71, 15.8898, 2282.38, -1643.66, 15.235, 172.071, 2272.42, -1639.22, 14.9619, 114.212, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(156, 0, '', 134, 0, 0, 1558655916, 896623, 2000, 1, 0, 2145.12, -1801.77, 16.1406, 2145.3, -1802.71, 16.1406, 191.558, 2188.8, -1789.02, 13.0926, 359.362, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(157, 0, '', 111, 0, 0, 1556676260, 922656, 2000, 1, 1, 2257.21, -1644.66, 15.519, 2256.69, -1647.15, 15.4904, 168.186, 2268.61, -1640.01, 14.9899, 286.548, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(158, 0, '', 111, 0, 5, 1, 893411, 2000, 1, 0, 2244.12, -1638.25, 15.9074, 2243.17, -1640.55, 15.5716, 150.866, 2237.42, -1634.11, 15.2936, 11.7506, 2457.67, -1722.07, 1011.71, 1, 0, 0, 0, 0, 0, 0, 0),
(159, 0, '', 131, 0, 0, 0, 869086, 2000, 1, 0, 2067.7, -1629, 14.2066, 2068.65, -1628.76, 13.8762, 266.21, 2064.95, -1636.22, 13.2644, 268.779, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(160, 0, '', 131, 0, 0, 1, 835198, 2000, 1, 0, 2067.57, -1643.73, 14.1363, 2068.64, -1643.72, 13.5469, 288.252, 2076.08, -1643.9, 13.1839, 177.15, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(161, 0, '', 131, 0, 5, 1557173261, 838731, 2000, 1, 0, 2066.74, -1656.5, 14.1328, 2067.63, -1656.48, 13.5469, 254.492, 2076.16, -1656.04, 13.1864, 180.712, 2455.92, -1700.62, 1013.51, 1, 0, 0, 0, 0, 0, 0, 0),
(162, 0, '', 131, 0, 0, 10, 858062, 2000, 1, 0, 2065.1, -1703.61, 14.1484, 2065.54, -1703.66, 14.1484, 259.6, 2051.64, -1694.67, 13.2722, 269.642, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(163, 0, '', 131, 0, 1, 0, 844116, 2000, 1, 1, 2066.24, -1717.05, 14.1363, 2067.18, -1717.3, 13.5547, 250.848, 2076.57, -1716.92, 13.1836, 180.542, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(164, 26, '', 131, 0, 0, 1, 916395, 2000, 1, 0, 2067.05, -1731.55, 14.2066, 2068.04, -1731.57, 13.8762, 252.111, 2063.88, -1738.92, 13.2645, 270.651, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(165, 0, '', 354, 0, 0, 1557222469, 919630, 2000, 1, 0, 2652.81, -1989.42, 13.9988, 2652.72, -1990.44, 13.5539, 205.361, 2645.33, -1988.37, 13.2704, 179.06, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(166, 43, '', 216, 0, 6, 12, 2214050, 5000, 2, 0, 1497.06, -687.892, 95.5633, 1496.87, -689.702, 94.8605, 184.536, 1514.77, -694.733, 94.4678, 90.537, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(167, 0, '', 354, 0, 0, 1557106393, 918964, 2000, 1, 0, 2672.68, -1989.49, 14.324, 2672.78, -1991.18, 13.9935, 184.755, 2685.16, -1982.93, 13.3035, 183.595, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(168, 0, '', 354, 0, 4, 1557142033, 905930, 2000, 1, 0, 2696.37, -1990.75, 14.2229, 2696.17, -1991.75, 13.5547, 185.989, 2696.6, -1999.07, 13.161, 84.5741, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(169, 0, '', 354, 0, 2, 1, 842758, 2000, 1, 0, 2695.27, -2020.3, 14.0223, 2695.33, -2019.65, 13.7604, 40.0996, 2694.04, -2008.86, 13.2273, 85.5255, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(170, 0, '', 354, 0, 0, 1, 866003, 2000, 1, 0, 2673.31, -2020.28, 14.1682, 2673.68, -2019.14, 13.9063, 189.599, 2685.49, -2024.86, 13.2683, 4.98959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(171, 0, '', 134, 0, 5, 0, 2203647, 2000, 2, 0, 2151.31, -1789.22, 13.5097, 2152.93, -1789.07, 13.512, 271.781, 2157.91, -1794.37, 12.9841, 143.881, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(172, 0, '', 134, 0, 0, 0, 871740, 2000, 1, 0, 2185.85, -1814.82, 13.5469, 2186.12, -1812.78, 13.5554, 27.8071, 2182.44, -1808.73, 12.9993, 236.683, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(173, 0, '', 134, 0, 2, 0, 830693, 2000, 1, 0, 2192.33, -1815.23, 13.5469, 2192.05, -1812.79, 13.5469, 1.50454, 2188.45, -1806.84, 12.9993, 268.32, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(174, 0, '', 134, 0, 5, 1557705516, 908244, 2000, 1, 0, 2176.14, -1821.58, 16.1452, 2175.51, -1819.36, 16.1567, 1.23527, 2183.09, -1805, 12.9955, 137.217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(175, 0, '', 134, 0, 4, 1557195318, 919144, 2000, 1, 1, 2176.49, -1828.49, 16.141, 2175.39, -1825.97, 16.1406, 17.2382, 2172.89, -1804.61, 12.9951, 267.883, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(176, 30, '', 131, 0, 6, 1, 840985, 2000, 1, 0, 2014.77, -1732.59, 14.2344, 2013.22, -1732.45, 14.0535, 110.401, 2014.24, -1737.36, 13.1777, 200.897, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(177, 0, '', 131, 0, 0, 1557211307, 917495, 2000, 1, 0, 2015.79, -1716.85, 13.9601, 2014.06, -1716.8, 13.5547, 97.5092, 2006.68, -1716.96, 13.0874, 316.444, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(178, 0, '', 131, 0, 5, 1, 834521, 2000, 1, 0, 2017.98, -1703.44, 14.2344, 2016.21, -1703.14, 14.0692, 95.9443, 2017.05, -1707.6, 13.172, 267.71, 2455.92, -1700.43, 1013.51, 1, 0, 0, 0, 0, 0, 0, 0),
(179, 0, '', 131, 0, 0, 0, 890120, 2000, 1, 0, 2013.17, -1656.28, 13.8058, 2011.2, -1656.33, 13.5547, 85.7719, 2006.88, -1656.19, 13.0874, 318.033, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(180, 0, '', 131, 0, 0, 1557178125, 917036, 2000, 1, 0, 2016.29, -1641.63, 13.7824, 2014.68, -1641.48, 13.7824, 86.3312, 2024.01, -1648.83, 13.1796, 346.711, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(181, 0, '', 131, 0, 5, 1, 884819, 2000, 1, 0, 2017.56, -1629.74, 13.7121, 2015.64, -1629.69, 13.5469, 90.406, 2015.51, -1626.83, 13.1719, 260.261, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(182, 0, '', 353, 0, 5, 1, 842991, 2000, 1, 0, 2437.86, -2020.84, 13.9025, 2437.69, -2019.83, 13.6407, 353.251, 2438.45, -2014.35, 13.2116, 268.449, 2464.42, -1699.17, 1013.51, 1, 0, 0, 0, 0, 0, 0, 0),
(183, 0, '', 353, 0, 0, 1557083604, 830499, 2000, 1, 0, 2465.31, -2020.79, 14.1242, 2465.11, -2019.85, 13.8623, 336.375, 2462.38, -2014.61, 13.1688, 269.274, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(184, 0, '', 353, 0, 0, 1557094248, 893522, 2000, 1, 0, 2486.48, -2021.55, 13.9988, 2486.32, -2020.63, 13.737, 10.057, 2484.2, -2014.32, 13.1629, 270.689, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(185, 0, '', 353, 0, 4, 1557203876, 846115, 2000, 1, 1, 2507.78, -2021.05, 14.2101, 2507.82, -2020.03, 13.9482, 351.792, 2497.98, -2022.73, 13.3052, 359.564, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(186, 0, '', 353, 0, 5, 1557171953, 920008, 2000, 1, 0, 2508.27, -1998.37, 13.9025, 2508.38, -1999.07, 13.9025, 199.013, 2495.46, -1996.65, 13.2824, 178.466, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(187, 0, '', 353, 0, 0, 1557138567, 831696, 2000, 1, 0, 2465.09, -1995.75, 14.0193, 2465.17, -1996.62, 13.6889, 183.503, 2464.06, -2004.51, 13.1549, 88.0707, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(188, 0, '', 353, 0, 1, 1559174316, 868454, 2000, 1, 0, 2483.36, -1995.34, 13.8343, 2483.37, -1996.28, 13.8343, 186.313, 2473.86, -1991.51, 13.3067, 179.371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(189, 0, '', 350, 0, 2, 1557126412, 917185, 2000, 1, 0, 2296.51, -1882.02, 14.2344, 2296.85, -1882.78, 14.2344, 191.505, 2297.2, -1889.45, 13.2188, 89.1515, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(190, 0, '', 350, 0, 0, 0, 850561, 2000, 1, 0, 2269.24, -1882.01, 14.2344, 2269.27, -1882.71, 14.2344, 194.514, 2268.94, -1889.8, 13.1803, 90.6174, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(191, 0, '', 350, 0, 5, 1, 871252, 2000, 1, 0, 2242, -1882.01, 14.2344, 2241.98, -1883.06, 14.2344, 187.725, 2239.41, -1889.56, 13.1938, 85.5216, 2452.16, -1686.67, 1013.92, 1, 0, 0, 0, 0, 0, 0, 0),
(192, 0, '', 350, 0, 0, 0, 874577, 2000, 1, 0, 2238.23, -1906.83, 14.9375, 2237.92, -1906.17, 14.9375, 356.652, 2238.34, -1931.35, 12.769, 179.063, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(193, 0, '', 350, 0, 0, 1557235640, 929128, 2000, 1, 0, 2261.54, -1906.75, 14.9375, 2261.19, -1906.07, 14.9375, 6.66615, 2261.43, -1931.3, 12.7662, 179.063, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(194, 0, '', 350, 0, 0, 1557134840, 891911, 2000, 1, 0, 2284.51, -1906.6, 14.9297, 2284.59, -1905.74, 14.9297, 9.89807, 2284.73, -1931.25, 12.7673, 179.063, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(195, 0, '', 353, 0, 5, 1557234736, 842170, 2000, 1, 1, 2333.43, -1883.56, 15, 2333.46, -1882.79, 15, 9.70683, 2333.33, -1908.52, 12.9004, 181.568, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(196, 0, '', 353, 0, 5, 1, 2226085, 2000, 2, 0, 2333.18, -1943.24, 14.9688, 2333.15, -1944.05, 14.9688, 210.97, 2333.62, -1919.47, 12.6453, 359.408, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(197, 0, '', 136, 0, 0, 0, 905119, 2000, 1, 0, 2148.93, -1484.85, 26.6241, 2147.68, -1484.81, 26.6241, 106.02, 2135.67, -1483.94, 24.2996, 358.563, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(198, 0, '', 140, 0, 4, 1557213438, 869085, 2000, 1, 1, 2152.21, -1446.24, 26.1051, 2150.85, -1446.4, 25.7746, 77.8342, 2133.44, -1444.37, 23.587, 357.945, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(199, 0, '', 140, 0, 0, 1557187573, 900068, 2000, 1, 1, 2149.85, -1433.75, 26.0703, 2148.64, -1433.81, 25.5391, 83.1851, 2135.05, -1430.56, 23.6264, 359.849, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(200, 0, '', 140, 0, 3, 1557205128, 863086, 2000, 1, 1, 2150.92, -1419.03, 25.9219, 2149.92, -1418.86, 25.9219, 109.694, 2154.86, -1423.75, 25.2769, 89.8884, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(201, 0, '', 140, 0, 0, 1557100921, 885227, 2000, 1, 0, 2151.18, -1400.64, 26.1285, 2150.74, -1400.44, 25.798, 101.201, 2149.11, -1408.41, 24.7784, 90.1128, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(202, 0, '', 140, 0, 5, 1557114295, 906879, 2000, 1, 0, 2196.23, -1404, 25.9488, 2197.1, -1404.4, 25.6183, 269.085, 2207.51, -1403.47, 23.6267, 180.917, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(203, 0, '', 140, 0, 5, 1557101703, 848712, 2000, 1, 0, 2188.57, -1419.35, 26.1562, 2189.26, -1419.03, 26.1562, 275.304, 2206.77, -1419.81, 23.6287, 177.744, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(204, 0, '', 140, 0, 1, 1557098087, 892924, 2000, 1, 0, 2194.35, -1442.74, 26.0738, 2195.07, -1442.86, 25.5391, 269.982, 2196.52, -1434.42, 24.49, 268.869, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(205, 0, '', 136, 0, 5, 1558223916, 888485, 2000, 1, 0, 2191.26, -1455.62, 26, 2191.74, -1456.38, 25.6875, 290.964, 2206.9, -1453.84, 23.6204, 180.178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(206, 0, '', 136, 0, 0, 0, 833653, 2000, 1, 0, 2190.45, -1470.51, 25.9141, 2191.54, -1470.6, 25.9141, 285.455, 2185.69, -1466.02, 25.2573, 267.441, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(207, 0, '', 136, 0, 0, 1557207420, 872809, 2000, 1, 0, 2190.32, -1487.69, 26.1051, 2190.81, -1487.44, 25.7746, 253.181, 2193.54, -1480.67, 24.7157, 271.591, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(208, 0, '', 136, 0, 1, 1557126506, 833088, 2000, 1, 0, 2146.72, -1470.47, 26.0426, 2145.5, -1470.47, 25.5467, 87.3773, 2134.7, -1472.69, 23.6668, 181.538, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(209, 0, '', 136, 0, 0, 0, 917013, 2000, 1, 1, 2232.56, -1469.34, 24.5816, 2232.63, -1470.29, 24.0616, 196.955, 2234, -1478.25, 23.3927, 90.0653, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(210, 0, '', 136, 0, 0, 0, 855800, 2000, 1, 1, 2247.59, -1469.33, 24.4801, 2247.72, -1470.46, 23.9312, 192.484, 2247.14, -1478.38, 23.0845, 88.0575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(211, 0, '', 136, 0, 0, 0, 897963, 2000, 1, 0, 2263.85, -1469.34, 24.3707, 2263.94, -1470.14, 23.8545, 162.39, 2262.61, -1478.31, 22.6467, 86.4479, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(212, 0, '', 140, 0, 3, 1, 892415, 2000, 1, 0, 2256.58, -1397.24, 24.5738, 2256.66, -1396.05, 24, 176.504, 2254.38, -1389.65, 23.6582, 269.695, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(213, 0, '', 140, 0, 0, 0, 838186, 2000, 1, 1, 2243.52, -1397.24, 24.5738, 2243.48, -1395.88, 24, 344.322, 2239.72, -1390.15, 23.9925, 287.854, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(214, 0, '', 140, 0, 0, 1, 883685, 2000, 1, 1, 2230.49, -1397.21, 24.5738, 2230.24, -1396.07, 24, 23.7204, 2227.29, -1389.82, 23.9916, 269.547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(215, 0, '', 138, 0, 0, 1, 873867, 2000, 1, 0, 2092.24, -1166.55, 26.5859, 2090.5, -1166.46, 26.241, 93.7397, 2088.36, -1170.52, 25.5938, 85.0778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(216, 0, '', 174, 0, 5, 0, 2169487, 2000, 2, 0, 2093.81, -1122.67, 27.6899, 2091.97, -1123.87, 27.2805, 79.6589, 2077.41, -1122.05, 24.0973, 187.624, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(217, 13, '', 119, 0, 1, 9, 888281, 2000, 1, 0, 2045.71, -1116.65, 26.3617, 2047.77, -1115.67, 25.8024, 268.228, 2051.8, -1119.24, 24.8048, 185.219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(218, 0, '', 119, 0, 0, 0, 889806, 2000, 1, 0, 2022.73, -1120.27, 26.421, 2023.02, -1122.32, 26.2031, 206.33, 2012.12, -1112.6, 26.2031, 186.077, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(219, 0, '', 119, 0, 2, 1, 854187, 2000, 1, 0, 1999.92, -1114.05, 27.125, 2000.09, -1117.12, 26.7812, 185.281, 1991.06, -1119.76, 26.7737, 186.562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(220, 0, '', 223, 0, 2, 1, 2219178, 5000, 2, 0, 858.592, -828.704, 89.5017, 857.682, -827.315, 89.5017, 26.3058, 860.66, -849.767, 76.9006, 36.9415, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(221, 13, '', 219, 0, 5, 1, 2237430, 5000, 2, 1, 1421.83, -886.231, 50.6864, 1421.81, -884.212, 50.6124, 355.725, 1429.7, -881.784, 50.423, 237.996, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(222, 0, '', 229, 0, 5, 1, 2179616, 5000, 2, 0, 1468.58, -905.844, 54.8359, 1468.79, -904.412, 54.8359, 359.627, 1464.61, -902.637, 54.4606, 195.768, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(223, 0, '', 229, 0, 0, 1, 2235792, 5000, 2, 0, 1535.67, -885.181, 57.6575, 1536.87, -882.71, 57.6575, 64.9089, 1531.48, -888.893, 60.7476, 223.122, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(224, 17, '', 229, 0, 1, 1, 2190111, 5000, 2, 0, 1540.12, -851.332, 64.3361, 1538.82, -851.465, 64.3361, 67.5188, 1537.48, -841.489, 64.2033, 94.6287, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(225, 0, '', 229, 0, 0, 1, 2193178, 5000, 2, 0, 1535.03, -800.24, 72.8495, 1532.85, -800.497, 72.6, 94.3757, 1531.23, -813.276, 71.6443, 282.88, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(226, 84, '', 229, 0, 1, 23, 2245560, 5000, 2, 0, 1527.78, -772.813, 80.5781, 1526.15, -774.088, 79.8949, 141.089, 1515.53, -766.077, 79.7576, 139.347, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(227, 7, '', 216, 0, 7, 13, 2198267, 5000, 2, 0, 1442.69, -629.168, 95.7186, 1442.41, -630.6, 95.7186, 195.211, 1460.47, -632.52, 95.3895, 181.613, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(228, 92, '', 224, 0, 0, 1, 2204656, 5000, 2, 0, 1112.49, -741.803, 100.133, 1110.99, -741.599, 100.133, 82.9649, 1109.8, -731.728, 99.9794, 269.255, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1),
(229, 57, '', 227, 0, 7, 22, 2178478, 5000, 2, 0, 1093.88, -806.896, 107.419, 1093.59, -805.472, 107.42, 9.66699, 1100.61, -820.297, 86.5703, 210.04, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(230, 10, '', 227, 0, 6, 16, 2228424, 5000, 2, 0, 1034.66, -812.593, 101.852, 1034.39, -811.231, 101.852, 38.3586, 1029.43, -811.208, 101.476, 163.295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(231, 0, '', 224, 0, 0, 14, 2156685, 5000, 2, 0, 1016.95, -763.356, 112.563, 1015.01, -762.245, 112.563, 110.624, 1024.62, -776.647, 102.752, 92.3793, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(232, 93, '', 227, 0, 1, 22, 2248154, 5000, 2, 0, 989.801, -828.654, 95.4686, 987.939, -828.83, 95.4686, 102.383, 979.798, -830.87, 95.2557, 198.988, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1),
(233, 24, '', 227, 0, 6, 1, 2220715, 5000, 2, 0, 937.561, -848.183, 93.6647, 936.905, -846.888, 93.8464, 20.6309, 933.926, -855.233, 93.1228, 181.644, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(234, 1, '', 224, 0, 6, 13, 2209115, 5000, 2, 0, 980.418, -677.306, 121.976, 978.963, -675.396, 121.976, 3.13594, 1005.07, -659.83, 121.148, 212.882, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(235, 32, '', 228, 0, 0, 1, 2233429, 5000, 2, 0, 1045.2, -642.932, 120.117, 1044.93, -639.753, 120.117, 355.083, 1038.74, -637.19, 120.114, 4.67642, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(236, 0, '', 223, 0, 5, 1, 2189802, 5000, 2, 1, 910.363, -817.561, 103.126, 910.769, -815.926, 103.126, 274.319, 912.467, -833.108, 92.1118, 36.0191, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(237, 83, '', 223, 0, 0, 14, 2198723, 5000, 2, 0, 827.76, -858.071, 70.3308, 828.123, -859.408, 69.9219, 212.005, 829.082, -850.178, 69.5471, 2.2743, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1),
(238, 0, '', 222, 0, 5, 1, 2174209, 5000, 2, 0, 835.952, -894.854, 68.7689, 836.733, -893.676, 68.7689, 8.35517, 833.351, -889.143, 68.3984, 120.344, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(239, 0, '', 222, 0, 0, 1, 2224876, 5000, 2, 0, 817.945, -943.336, 55.25, 816.981, -941.443, 55.25, 19.1775, 829.096, -923.109, 54.8788, 67.5462, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(240, 37, '', 202, 0, 6, 1, 871518, 2000, 1, 0, 692.84, -1602.78, 15.0469, 693.021, -1599.62, 14.117, 7.36729, 688.417, -1599.74, 13.7231, 191.672, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(241, 30, '', 202, 0, 5, 1, 2151753, 2000, 2, 0, 653.008, -1619.82, 15, 651.056, -1619.73, 15, 93.7364, 644.209, -1621.26, 14.7263, 359.597, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(242, 31, '', 202, 0, 1, 1, 2234136, 2000, 2, 1, 655.968, -1635.87, 15.8617, 652.387, -1636.78, 15.0239, 82.0492, 644.153, -1636.31, 14.6805, 184.662, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(243, 37, '', 202, 0, 0, 1, 2165424, 2000, 2, 0, 657.226, -1652.74, 15.4062, 654.249, -1652.45, 14.6216, 92.9481, 653.297, -1657.18, 14.2549, 177.299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(244, 0, '', 202, 0, 0, 1, 2174711, 2000, 2, 0, 652.267, -1693.9, 14.5668, 650.133, -1694.05, 14.6978, 97.9478, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(245, 32, '', 202, 0, 5, 1, 2227285, 2000, 2, 0, 653.596, -1714.04, 14.7648, 651.235, -1714.31, 14.2799, 86.9047, 640.207, -1713.66, 13.8906, 177.565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(246, 0, '', 202, 0, 5, 1, 2162292, 2000, 2, 0, 693.552, -1705.95, 3.81948, 695.93, -1705.58, 3.2789, 279.791, 705.001, -1704.46, 3.06384, 6.57823, 2319.19, -1158.97, 1050.72, 0, 0, 0, 0, 0, 0, 0, 1),
(247, 0, '', 202, 0, 3, 1, 865027, 2000, 1, 0, 694.8, -1690.69, 4.34612, 697.829, -1689.82, 3.36776, 265.467, 704.986, -1691.11, 3.06437, 179.505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(248, 0, '', 202, 0, 0, 1, 880584, 2000, 1, 1, 693.76, -1645.85, 4.09375, 696.403, -1645.75, 3.36956, 271.288, 697.095, -1641.32, 3.03905, 268.324, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(249, 0, '', 202, 0, 5, 0, 877838, 2000, 1, 0, 697.28, -1627.13, 3.74917, 699.927, -1626.77, 3.42664, 264.961, 705.086, -1628.7, 3.06249, 2.6354, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(250, 0, '', 132, 0, 0, 0, 917438, 2000, 1, 0, 1863.96, -1597.28, 14.3062, 1863.85, -1597.99, 14.3062, 186.856, 1861.79, -1607.89, 12.9517, 266.253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(251, 0, '', 132, 0, 0, 1, 923676, 2000, 1, 1, 1909.95, -1597.59, 14.3062, 1909.88, -1598, 14.3062, 188.039, 1912.05, -1607.86, 12.9474, 275.19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(252, 0, '', 132, 0, 0, 0, 836067, 2000, 1, 0, 2002.48, -1593.94, 13.5776, 2002.85, -1593.99, 13.5776, 218.224, 2004.08, -1596.94, 13.1436, 37.6759, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(253, 0, '', 131, 0, 1, 0, 879308, 2000, 1, 0, 1986.7, -1604.95, 13.5321, 1987.22, -1605.13, 13.5304, 205.282, 1988.99, -1613.85, 13.0829, 166.758, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(254, 0, '', 309, 0, 5, 1, 2179604, 2000, 2, 0, 1326.26, -1090.56, 27.9766, 1327.5, -1092.38, 27.9766, 264.927, 1330.35, -1098.86, 24.7103, 159.71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255, 0, '', 132, 0, 5, 0, 858341, 2000, 1, 1, 1973.14, -1559.69, 13.64, 1973.47, -1560.36, 13.6389, 238.069, 1964.97, -1563.54, 13.1806, 141.306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(256, 0, '', 132, 0, 0, 0, 923781, 2000, 1, 0, 1958.76, -1560.31, 13.5945, 1959.11, -1560.74, 13.596, 222.036, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(257, 11, '', 309, 0, 6, 1, 913880, 2000, 1, 0, 1325.95, -1067.72, 31.5547, 1327.39, -1065.93, 31.5547, 278.771, 1329.69, -1059.5, 28.3358, 54.0098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(258, 0, '', 131, 0, 5, 0, 868060, 2000, 1, 0, 1976.21, -1633.97, 18.569, 1975.07, -1633.9, 18.569, 97.4941, 1971.13, -1638.75, 15.5371, 193.654, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(259, 0, '', 309, 0, 5, 0, 868659, 2000, 1, 0, 1285.26, -1067.31, 31.6789, 1283.38, -1065.74, 31.6719, 90.5987, 1281.04, -1058.76, 29.1079, 223.845, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(260, 0, '', 131, 0, 0, 0, 909115, 2000, 1, 0, 1973.29, -1654.96, 15.9688, 1973.61, -1655.44, 15.9688, 196.547, 1973.58, -1659.5, 15.5176, 271.574, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(261, 0, '', 131, 0, 0, 1556755120, 909600, 2000, 1, 0, 1978.4, -1671.41, 18.5456, 1977.8, -1671.34, 18.5456, 104.57, 1973.73, -1674.32, 15.5404, 203.171, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(262, 0, '', 131, 0, 5, 0, 890654, 2000, 1, 0, 1981, -1682.9, 17.0538, 1981.64, -1682.79, 17.0537, 273.322, 1988.23, -1674.97, 14.4009, 271.91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(263, 0, '', 309, 0, 0, 1, 894471, 2000, 1, 0, 1285.26, -1090.11, 28.2578, 1283.64, -1091.77, 28.2578, 104.705, 1281.07, -1098.4, 25.6314, 0.627116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(264, 0, '', 131, 0, 0, 0, 870393, 2000, 1, 0, 1973.39, -1705.14, 15.9688, 1973.6, -1705.65, 15.9688, 159.116, 1970.52, -1709.8, 15.5271, 268.551, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(265, 0, '', 131, 0, 5, 0, 838552, 2000, 1, 0, 1980.38, -1718.72, 17.0301, 1980.97, -1718.77, 17.0301, 275.78, 1986.29, -1710.36, 15.0827, 274.734, 2462.5, -1697.76, 1013.51, 0, 0, 0, 0, 0, 0, 0, 0),
(266, 0, '', 221, 0, 0, 1, 5654954, 5000, 3, 0, 1259.64, -785.388, 92.0312, 1258.11, -785.592, 92.0302, 79.9039, 1242.82, -804.177, 83.7657, 206.152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(267, 34, '', 345, 0, 7, 4, 2161145, 50000, 2, 0, 691.579, -1275.99, 13.5607, 689.433, -1275.78, 13.5592, 86.5454, 670.231, -1264.45, 13.4657, 207.586, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(268, 15, '', 300, 0, 0, 14, 851583, 3000, 1, 0, 315.844, -1769.43, 4.62219, 315.915, -1771.55, 4.68568, 187.014, 323.283, -1766.63, 4.63585, 175.985, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(269, 0, '', 273, 0, 0, 1, 5671353, 15000, 3, 0, 315.597, -1139.06, 81.5934, 317.09, -1137.65, 81.5934, 314.399, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 11, 0),
(270, 0, '', 273, 0, 0, 1, 5741903, 15000, 3, 0, 251.467, -1220.19, 76.1024, 252.43, -1221.71, 75.4033, 217.328, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 11, 0),
(271, 0, '', 271, 0, 0, 1, 5745456, 15000, 3, 0, 265.674, -1287.81, 74.6325, 266.396, -1289.1, 74.6325, 213.693, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 16, 0),
(272, 0, '', 270, 0, 0, 1554783132, 5651572, 15000, 3, 0, 254.41, -1367.17, 53.1094, 255.455, -1366.25, 53.1094, 308.571, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `houses` (`id`, `owner_id`, `name`, `city`, `zone`, `improvements`, `rent_time`, `price`, `rent_price`, `type`, `lock`, `x`, `y`, `z`, `exit_x`, `exit_y`, `exit_z`, `exit_angle`, `car_x`, `car_y`, `car_z`, `car_angle`, `store_x`, `store_y`, `store_z`, `eviction`, `store_metall`, `store_drugs`, `store_weapon`, `store_ammo`, `store_skin`, `family_id`, `mebel_1`) VALUES
(273, 0, '', 272, 0, 0, 1557051370, 5671492, 15000, 3, 0, 189.637, -1308.18, 70.2493, 191.466, -1308.11, 70.2883, 271.347, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(274, 0, '', 270, 0, 0, 21, 5652745, 15000, 3, 0, 298.851, -1338.5, 53.4415, 297.918, -1337.09, 53.4416, 34.9259, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 12, 0),
(275, 0, '', 287, 0, 0, 1557120487, 5699251, 5000, 3, 0, 228.019, -1405.47, 51.6094, 228.868, -1403.15, 51.6047, 332.706, 222.391, -1396.38, 51.5928, 63.3238, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(276, 0, '', 333, 0, 0, 1, 5688020, 20000, 3, 0, 1122.71, -2036.88, 69.8942, 2531.91, 1507.75, 11.7812, 90.8734, 1132.98, -2074.8, 69.0078, 357.799, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 0),
(277, 0, '', 12, 0, 0, 0, 2216915, 20000, 2, 0, -2523.81, 2238.79, 5.39844, -2522.82, 2240.81, 5.16627, 327.801, -2527.66, 2251.75, 4.97348, 339.394, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(278, 1, '', 15, 0, 0, 1, 5692346, 4000, 3, 0, -2552.09, 2266.45, 5.47552, -2551, 2274.8, 4.98438, 210.442, -2560.89, 2258.15, 5.06327, 336.548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(279, 0, '', 15, 0, 0, 15, 20000, 2000, 3, 0, 1455.91, 750.724, 11.0234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0),
(280, 0, '', 15, 0, 6, 9, 200000000, 200, 2, 0, 1382.15, -1088.89, 28.2128, 1380.61, -1088.74, 27.3844, 84.4085, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(281, 3, '', 15, 0, 0, 8, 200000, 20000, 2, 0, 1298.64, -797.988, 84.1406, 1298.76, -799.068, 84.1406, 192.31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(282, 0, '', 15, 0, 0, 1, 25000, 2, 2, 0, 1456.13, 2773.37, 10.8203, 1458.97, 2773.11, 10.8203, 264.805, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 0, 0, 0, 0, 0),
(283, 0, '', 15, 0, 0, 8, 250000000, 200000, 3, 0, 2016.97, 1913.09, 12.3339, 2020.02, 1913.06, 12.3113, 280.55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0),
(284, 56, '', 15, 0, 5, 16, 200000, 2000, 0, 0, 1864.98, -2021.38, 13.5469, 1863.24, -2021.39, 13.5469, 90.1481, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(285, 17, '', 15, 0, 6, 5, 2000000, 2, 2, 1, 1286.8, -1329.4, 13.5549, 1284.61, -1329.4, 13.5452, 94.9804, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(313, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 599.176, -2302.12, 2.86658, 601.144, -2301.84, 2.86658, 261.529, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(286, 21, '', 15, 0, 1, 12, 1, 1, 2, 0, 841.174, -1471.36, 14.3086, 841.169, -1472.43, 13.8042, 209.039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(287, 0, '', 15, 0, 0, 13, 2000000, 1, 2, 0, -2099.81, 897.376, 76.7109, -2099.78, 898.801, 76.7109, 2.06706, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(288, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 855.715, -2380.61, 2.8641, 853.597, -2380.7, 2.8641, 79.5394, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(289, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 855.554, -2338.81, 2.8641, 854.536, -2338.7, 2.8641, 76.8018, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(290, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 855.714, -2359.75, 2.8641, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(291, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 817.713, -2370.65, 2.86291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(292, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 817.702, -2352.46, 2.86291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(293, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 817.706, -2334.03, 2.86291, 820.915, -2334.39, 2.86291, 290.54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(294, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 817.702, -2316.09, 2.86291, 820.286, -2316.04, 2.86291, 269.065, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(295, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 817.704, -2297.75, 2.86291, 821.135, -2297.88, 2.86291, 93.8022, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(296, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 817.709, -2279.58, 2.86291, 820.223, -2279.67, 2.86291, 269.684, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(297, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 817.709, -2261.26, 2.86291, 820.248, -2261.48, 2.86291, 255.248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(298, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 817.703, -2242.91, 2.86291, 820.133, -2242.86, 2.86291, 282.324, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(299, 32, '', 15, 0, 6, 1, 2500000, 2000, 2, 0, 855.709, -2233.89, 2.8641, 853.525, -2233.87, 2.8641, 83.5059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(300, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 855.708, -2255.01, 2.8641, 853.72, -2254.81, 2.8641, 88.7676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(301, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 855.715, -2275.77, 2.8641, 853.717, -2275.66, 2.8641, 91.3776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(302, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 855.714, -2296.84, 2.8641, 853.706, -2296.66, 2.8641, 94.07, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(303, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 855.713, -2317.83, 2.8641, 853.309, -2317.77, 2.8641, 78.2268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(304, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 818.6, -2201.43, 2.86357, 818.624, -2204.06, 2.86357, 177.47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(305, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 788.495, -2201.43, 2.86357, 788.484, -2204.32, 2.86357, 169.191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(306, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 757.744, -2201.43, 2.86357, 758.062, -2204.1, 2.86357, 198.995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(307, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 727.859, -2201.43, 2.86357, 727.856, -2203.98, 2.86357, 183.603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(308, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 697.59, -2201.44, 2.86357, 697.556, -2203.98, 2.86357, 172.701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(309, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 667.212, -2201.43, 2.86357, 636.849, -2203.56, 2.86357, 190.627, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(310, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 636.862, -2201.43, 2.86357, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(311, 0, '', 15, 0, 0, 0, 2500000, 2000, 2, 0, 606.715, -2201.44, 2.86357, 606.592, -2204.19, 2.86357, 172.74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(312, 6, '', 15, 0, 0, 12, 250000000, 2, 2, 0, 601.262, -2250.82, 3.6198, 602.696, -2251.02, 3.08264, 266.957, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(314, 2, '', 15, 0, 0, 13, 25000000, 2000, 2, 1, 603.56, -2365.68, 3.61979, 604.584, -2365.94, 3.26123, 290.324, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(315, 0, '', 15, 0, 0, 0, 2500000, 2000, 1, 0, 776.648, -2377.55, 2.86247, 774.505, -2377.41, 2.86247, 94.3868, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(316, 0, '', 15, 0, 0, 0, 2500000, 2000, 1, 0, 776.654, -2359.24, 2.86247, 774.379, -2359.04, 2.86247, 87.7628, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(317, 0, '', 15, 0, 0, 0, 2500000, 2000, 1, 0, 776.653, -2341.17, 2.86247, 774.58, -2341.15, 2.86247, 90.9042, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(318, 0, '', 15, 0, 0, 0, 2500000, 2000, 1, 0, 776.651, -2322.84, 2.86247, 774.814, -2322.87, 2.86247, 85.0708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(319, 0, '', 15, 0, 0, 0, 2500000, 2000, 1, 0, 776.652, -2304.63, 2.86247, 774.554, -2304.76, 2.86247, 67.8851, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(320, 0, '', 15, 0, 0, 0, 2500000, 2000, 1, 0, 776.654, -2286.4, 2.86247, 774.895, -2286.45, 2.86247, 91.3178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(321, 0, '', 15, 0, 0, 0, 2500000, 2000, 1, 0, 776.654, -2268.19, 2.86247, 775.277, -2268.3, 2.86247, 86.7669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(322, 0, '', 15, 0, 0, 0, 2500000, 2000, 1, 0, 776.653, -2249.98, 2.86247, 774.664, -2249.99, 2.86247, 86.3004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(323, 0, '', 15, 0, 0, 0, 2500000, 2000, 1, 0, 776.638, -2231.8, 2.86247, 774.923, -2231.7, 2.86247, 92.3788, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(324, 98, '', 15, 0, 0, 23, 7000000, 2000, 2, 0, 1094.99, -647.905, 113.648, 1095.1, -646.608, 113.648, 358.765, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(325, 5, '', 15, 0, 0, 16, 150000, 1000, 1, 0, 1464.5, 1894.9, 11.4609, 1464.51, 1894.89, 11.4609, 99.2411, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(326, 0, '', 15, 0, 0, 0, 3000000, 5000, 3, 0, 1566.83, 23.2543, 24.1641, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(327, 9, '', 15, 0, 0, 16, 1500000, 5000, 2, 0, -692.329, 939.553, 13.6328, -691.316, 939.722, 13.6328, 284.596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(328, 15, '', 15, 0, 7, 16, 5000000, 5000, 2, 0, 1332.22, -633.466, 109.135, 1332.45, -632.931, 109.135, 10.2002, 0, 0, 0, 0, 2337.39, -1160.38, 1054.32, 0, 0, 0, 24, 100, 0, 0, 0),
(329, 0, '', 15, 0, 0, 18, 10000, 10000000, 3, 0, 2019.32, 1008.07, 10.8203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(330, 4, '', 15, 0, 0, 3, 100000, 25000, 2, 0, 2186.24, 1113.19, 12.6484, 2184.88, 1114.19, 12.6484, 298.37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(331, 2, '', 15, 0, 0, 16, 100000, 25000, 2, 0, 1965.36, 1623.25, 12.8618, 1966.3, 1621.5, 12.8719, 118.467, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(332, 13, '', 15, 0, 7, 19, 100000, 10, 2, 1, 2449.22, 690.097, 11.4609, 2447.27, 689.841, 11.4609, 67.9584, 2451.42, 698.008, 11.4609, 89.2367, 2330.58, -1161.36, 1050.51, 0, 0, 0, 0, 0, 0, 0, 0),
(333, 29, '', 15, 0, 7, 17, 400000, 5000, 2, 0, 1273.95, 2522.48, 10.8203, 1274.68, 2522.74, 10.8203, 290.554, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(334, 0, '', 15, 0, 0, 0, 400000, 5000, 2, 0, 1316.31, 2524.61, 10.8203, 1315.96, 2524.59, 10.8203, 92.3578, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(335, 0, '', 15, 0, 0, 0, 400000, 5000, 2, 0, 1269.63, 2554.45, 10.8265, 1270.36, 2554.8, 10.8203, 230.028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(336, 0, '', 15, 0, 0, 0, 400000, 5000, 2, 0, 1271.88, 2564.38, 10.8203, 1272.01, 2564.84, 10.8203, 281.673, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(337, 0, '', 15, 0, 0, 0, 300000, 5000, 1, 0, 1284.76, 2610.72, 10.8203, 1284.9, 2610.02, 10.8203, 181.509, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(338, 0, '', 15, 0, 0, 0, 300000, 5000, 1, 0, 1265.52, 2609.8, 10.8203, 1265.39, 2608.94, 10.8203, 189.375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(339, 0, '', 15, 0, 0, 0, 400000, 5000, 2, 0, 1225.27, 2584.79, 10.8203, 1225.98, 2585, 10.8203, 262.774, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(340, 0, '', 15, 0, 0, 0, 300000, 5000, 1, 0, 1223.02, 2616.83, 10.8265, 1223.85, 2616.75, 10.8203, 83.7889, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(341, 0, '', 15, 0, 0, 0, 300000, 5000, 1, 0, 1325.7, 2567.34, 10.8203, 1325.38, 2567.69, 10.8203, 5.95671, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(342, 0, '', 15, 0, 0, 0, 400000, 500, 2, 0, 1313.7, 2610.19, 11.2989, 1313.82, 2609.77, 11.2989, 165.245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(343, 0, '', 15, 0, 0, 0, 400000, 5000, 2, 0, 1344.53, 2610.19, 11.2989, 1344.04, 2609.94, 11.2989, 203.9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(344, 0, '', 15, 0, 0, 0, 400000, 5000, 2, 0, 1349.63, 2567.69, 10.8203, 1349.79, 2568.13, 10.8203, 20.2582, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(345, 0, '', 15, 0, 0, 0, 300000, 5000, 1, 0, 2064.93, 729.824, 11.4683, 2064.93, 729.824, 11.4683, 195.339, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(346, 0, '', 15, 0, 0, 1, 200000, 200, 0, 0, 2042.44, 731.411, 11.4609, 2042.51, 732.01, 11.4609, 13.782, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(347, 0, '', 15, 0, 0, 0, 300000, 5000, 1, 0, 2093.29, 730.358, 11.4531, 2093.29, 730.358, 11.4531, 184.04, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(348, 19, '', 15, 0, 0, 1, 300000, 5000, 1, 0, 2122.53, 731.265, 11.4609, 2122.53, 731.265, 11.4609, 181.381, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(349, 24, '', 15, 0, 0, 1, 300000, 5000, 1, 0, 2123.49, 776.101, 11.4453, 2123.49, 776.101, 11.4453, 4.24293, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(350, 11, '', 15, 0, 0, 1, 300000, 3000, 1, 0, 2013.29, 730.358, 11.4531, 2013.17, 731.22, 11.4531, 355.158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(351, 69, '', 15, 0, 0, 1, 300000, 5000, 1, 0, 2094.19, 775.197, 11.4531, 2094.19, 775.197, 11.4531, 4.35118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(352, 36, '', 15, 0, 0, 1, 300000, 3000, 1, 0, 2014.13, 775.197, 11.4609, 2014.13, 775.197, 11.4609, 3.48341, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(353, 0, '', 15, 0, 0, 0, 300000, 5000, 1, 0, 2071.7, 776.636, 11.4605, 2071.7, 776.636, 11.4605, 347.584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(354, 0, '', 15, 0, 0, 0, 300000, 3000, 1, 0, 2043.14, 776.1, 11.4531, 2043.14, 776.1, 11.4531, 357.945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(355, 0, '', 15, 0, 0, 0, 300000, 5000, 1, 0, 2040.76, 696.094, 11.4531, 2040.76, 696.094, 11.4531, 4.78487, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(356, 0, '', 15, 0, 0, 0, 300000, 3000, 1, 0, 2068.99, 696.628, 11.4683, 2068.99, 696.628, 11.4683, 356.368, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(357, 0, '', 15, 0, 0, 0, 300000, 3000, 1, 0, 2091.3, 695.188, 11.4609, 2091.3, 695.188, 11.4609, 6.81305, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(358, 0, '', 15, 0, 0, 0, 300000, 5000, 1, 0, 2043.37, 651.312, 11.4609, 2043.37, 651.312, 11.4609, 175.948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(359, 0, '', 15, 0, 0, 0, 300000, 3000, 1, 0, 2120.55, 696.016, 11.4531, 2120.55, 696.016, 11.4531, 357.758, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(360, 0, '', 15, 0, 0, 0, 300000, 5000, 1, 0, 2065.88, 649.866, 11.4683, 2065.88, 649.866, 11.4683, 191.811, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(361, 0, '', 15, 0, 0, 0, 300000, 3000, 1, 0, 2123.25, 651.312, 11.4609, 2123.25, 651.312, 11.4609, 180.38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(362, 0, '', 15, 0, 0, 0, 300000, 5000, 1, 0, 2094.1, 650.405, 11.4609, 2094.1, 650.405, 11.4609, 184.659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(363, 0, '', 15, 0, 0, 0, 300000, 3000, 1, 0, 2014.02, 650.406, 11.4609, 2014.02, 650.406, 11.4609, 176.976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(364, 0, '', 15, 0, 0, 0, 300000, 5000, 1, 0, 2178.18, 655.99, 11.4609, 2178.18, 655.99, 11.4609, 12.3733, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(365, 0, '', 15, 0, 0, 0, 300000, 5000, 1, 0, 2206.5, 656.626, 11.4683, 2206.53, 656.627, 11.4683, 350.267, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(366, 35, '', 15, 0, 0, 17, 300000, 5000, 1, 0, 2224.02, 656.303, 11.4609, 2224.02, 656.303, 11.4609, 276.236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(367, 0, '', 15, 0, 0, 0, 300000, 3000, 1, 0, 2177.67, 736.102, 11.4609, 2177.67, 736.102, 11.4609, 0.608128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(368, 0, '', 15, 0, 0, 0, 300000, 3000, 1, 0, 2205.84, 736.638, 11.4683, 2205.84, 736.638, 11.4683, 351.531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(369, 0, '', 15, 0, 0, 0, 300000, 3000, 1, 0, 2228.4, 735.184, 11.4609, 2228.4, 735.184, 11.4609, 8.84986, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(370, 124, '', 15, 0, 5, 1, 300000, 3000, 1, 0, 2257.59, 736.107, 11.4609, 2257.59, 736.107, 11.4609, 354.45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(371, 0, '', 15, 0, 0, 0, 300000, 3000, 1, 0, 2206.51, 691.353, 11.4609, 2206.53, 692.692, 11.4609, 312.451, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(372, 12, '', 9, 0, 1, 20, 400000, 5000, 2, 0, -683.936, 939.652, 13.6328, -683.936, 939.652, 13.6328, 283.095, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(373, 0, '', 15, 0, 0, 20, 300000, 5000, 3, 0, 937.079, 1733.24, 8.85156, 937.079, 1733.24, 8.85156, 86.0562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0),
(374, 0, '', 15, 0, 1, 22, 100000, 5000, 0, 0, 1546.34, 32.2636, 24.1406, 1546.34, 32.2636, 24.1406, 104.516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(375, 0, '', 15, 0, 0, 0, 500000, 5000, 3, 0, 2239.05, 1285.75, 10.8203, 2239.05, 1285.75, 10.8203, 259.377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(376, 0, '', 15, 0, 0, 20, 500000, 5000, 3, 0, 2531.91, 1507.75, 11.7812, 2531.91, 1507.75, 11.7812, 90.8734, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0),
(377, 0, '', 15, 0, 0, 0, 300000, 2000, 2, 0, 1489.16, -1719.42, 8.24288, 1488.76, -1721.69, 8.20782, 166.796, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `houses_renters`
--

CREATE TABLE `houses_renters` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `rent_time` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id` int(11) NOT NULL,
  `nameasli` varchar(30) NOT NULL,
  `tgllahir` varchar(20) NOT NULL,
  `waktu` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`id`, `nameasli`, `tgllahir`, `waktu`) VALUES
(11, 'dedy', '1111-11-11', '16:32:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `money_log`
--

CREATE TABLE `money_log` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `uip` varchar(16) NOT NULL DEFAULT '255.255.255.255',
  `time` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `description` varchar(64) NOT NULL DEFAULT 'None'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ownable_cars`
--

CREATE TABLE `ownable_cars` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `color_1` int(11) NOT NULL DEFAULT -1,
  `color_2` int(11) NOT NULL DEFAULT -1,
  `pos_x` float NOT NULL,
  `pos_y` float NOT NULL,
  `pos_z` float NOT NULL,
  `angle` float NOT NULL,
  `number` varchar(7) NOT NULL DEFAULT '------',
  `status` int(11) NOT NULL,
  `alarm` int(11) NOT NULL,
  `key_in` int(11) NOT NULL,
  `mileage` float NOT NULL,
  `create_time` int(11) NOT NULL,
  `health` float NOT NULL DEFAULT 1000,
  `pt_engine` int(11) NOT NULL,
  `pt_brake` int(11) NOT NULL,
  `pt_stability` int(11) NOT NULL,
  `fuel` int(11) NOT NULL,
  `world` int(11) NOT NULL,
  `inter` int(11) NOT NULL,
  `paintjob` int(11) NOT NULL,
  `componentid` int(11) NOT NULL,
  `Spoiler` int(11) NOT NULL,
  `Nitro` int(11) NOT NULL,
  `Lamps` int(11) NOT NULL,
  `Sides` int(11) NOT NULL,
  `Hood` int(11) NOT NULL,
  `Vents` int(11) NOT NULL,
  `Exhaust` int(11) NOT NULL,
  `Wheels` int(11) NOT NULL,
  `RBumper` int(11) NOT NULL,
  `FBumper` int(11) NOT NULL,
  `Roof` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ownable_rc`
--

CREATE TABLE `ownable_rc` (
  `id` int(11) NOT NULL,
  `model` int(11) NOT NULL,
  `pos_x` float NOT NULL,
  `pos_y` float NOT NULL,
  `pos_z` float NOT NULL,
  `angle` float NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Struktur dari tabel `phone_books`
--

CREATE TABLE `phone_books` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `name` varchar(21) DEFAULT NULL,
  `number` varchar(9) DEFAULT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `promocode`
--

CREATE TABLE `promocode` (
  `id` int(11) NOT NULL,
  `code` varchar(32) CHARACTER SET utf8 NOT NULL,
  `type` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `usings` int(11) NOT NULL,
  `paydays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `promocode_activations`
--

CREATE TABLE `promocode_activations` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `paydays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `radar`
--

CREATE TABLE `radar` (
  `id` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `z` int(11) NOT NULL,
  `limit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Struktur dari tabel `repositories`
--

CREATE TABLE `repositories` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `return_money`
--

CREATE TABLE `return_money` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `description` varchar(64) CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

-- --------------------------------------------------------

--
-- Struktur dari tabel `setdonate`
--

CREATE TABLE `setdonate` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Nomer` varchar(50) NOT NULL,
  `package` varchar(50) NOT NULL,
  `pembayaran` varchar(50) NOT NULL,
  `jumblah` varchar(50) NOT NULL,
  `bukti` varchar(50) NOT NULL,
  `tanggal` date NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `setdonate`
--

INSERT INTO `setdonate` (`id`, `Name`, `Nomer`, `package`, `pembayaran`, `jumblah`, `bukti`, `tanggal`) VALUES
(45, 'test', '08134355031', 'primium-20days', 'Dana', '10000', 'https://www.gambar.png', '2021-08-05'),
(46, 'jhon_Sing', '08134355031', 'primium-20days', 'Dana', '10000', 'https://www.gambar.png', '2021-08-05'),
(47, 'jhon_Sinr', '08134355034', 'rumah', 'Gopay', '100000', 'https://www.gambar.png', '2021-08-05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` varchar(64) NOT NULL,
  `issuer` varchar(32) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trunks`
--

CREATE TABLE `trunks` (
  `id` int(11) NOT NULL,
  `oc_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ucp_news`
--

CREATE TABLE `ucp_news` (
  `id` int(11) NOT NULL,
  `news_name` text NOT NULL,
  `news_text` text NOT NULL,
  `news_image` text NOT NULL,
  `news_data` varchar(50) NOT NULL,
  `news_datas` varchar(50) NOT NULL,
  `news_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `unitpay_payments`
--

CREATE TABLE `unitpay_payments` (
  `id` int(10) NOT NULL,
  `unitpayId` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `sum` float NOT NULL,
  `itemsCount` int(11) NOT NULL DEFAULT 1,
  `dateCreate` datetime NOT NULL,
  `dateComplete` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `email` (`email`),
  ADD KEY `phone` (`phone`),
  ADD KEY `house` (`house`);

--
-- Indeks untuk tabel `action_log`
--
ALTER TABLE `action_log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bank_accounts_log`
--
ALTER TABLE `bank_accounts_log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ban_list`
--
ALTER TABLE `ban_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `business_gps`
--
ALTER TABLE `business_gps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bid` (`bid`);

--
-- Indeks untuk tabel `business_profit`
--
ALTER TABLE `business_profit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fid` (`bid`),
  ADD KEY `view` (`view`);

--
-- Indeks untuk tabel `change_names`
--
ALTER TABLE `change_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indeks untuk tabel `charity`
--
ALTER TABLE `charity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indeks untuk tabel `donatefitur`
--
ALTER TABLE `donatefitur`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `donate_log`
--
ALTER TABLE `donate_log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `family`
--
ALTER TABLE `family`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fuel_stations`
--
ALTER TABLE `fuel_stations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fuel_stations_profit`
--
ALTER TABLE `fuel_stations_profit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fid` (`fid`),
  ADD KEY `view` (`view`);

--
-- Indeks untuk tabel `gang_repositories`
--
ALTER TABLE `gang_repositories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gang_zones`
--
ALTER TABLE `gang_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `houses_renters`
--
ALTER TABLE `houses_renters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `house_id` (`house_id`);

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `money_log`
--
ALTER TABLE `money_log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ownable_cars`
--
ALTER TABLE `ownable_cars`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ownable_rc`
--
ALTER TABLE `ownable_rc`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `phone_books`
--
ALTER TABLE `phone_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indeks untuk tabel `promocode`
--
ALTER TABLE `promocode`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `promocode_activations`
--
ALTER TABLE `promocode_activations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `radar`
--
ALTER TABLE `radar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `repositories`
--
ALTER TABLE `repositories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`,`action_id`);

--
-- Indeks untuk tabel `return_money`
--
ALTER TABLE `return_money`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setdonate`
--
ALTER TABLE `setdonate`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trunks`
--
ALTER TABLE `trunks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ucp_news`
--
ALTER TABLE `ucp_news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `unitpay_payments`
--
ALTER TABLE `unitpay_payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT untuk tabel `action_log`
--
ALTER TABLE `action_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bank_accounts_log`
--
ALTER TABLE `bank_accounts_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ban_list`
--
ALTER TABLE `ban_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `board`
--
ALTER TABLE `board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `business`
--
ALTER TABLE `business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `business_gps`
--
ALTER TABLE `business_gps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `business_profit`
--
ALTER TABLE `business_profit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `change_names`
--
ALTER TABLE `change_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `charity`
--
ALTER TABLE `charity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `donatefitur`
--
ALTER TABLE `donatefitur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `donate_log`
--
ALTER TABLE `donate_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `family`
--
ALTER TABLE `family`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fuel_stations`
--
ALTER TABLE `fuel_stations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `fuel_stations_profit`
--
ALTER TABLE `fuel_stations_profit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `gang_repositories`
--
ALTER TABLE `gang_repositories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gang_zones`
--
ALTER TABLE `gang_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=378;

--
-- AUTO_INCREMENT untuk tabel `houses_renters`
--
ALTER TABLE `houses_renters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `money_log`
--
ALTER TABLE `money_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ownable_cars`
--
ALTER TABLE `ownable_cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ownable_rc`
--
ALTER TABLE `ownable_rc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `phone_books`
--
ALTER TABLE `phone_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `promocode`
--
ALTER TABLE `promocode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `promocode_activations`
--
ALTER TABLE `promocode_activations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `radar`
--
ALTER TABLE `radar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `repositories`
--
ALTER TABLE `repositories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `return_money`
--
ALTER TABLE `return_money`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `setdonate`
--
ALTER TABLE `setdonate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `trunks`
--
ALTER TABLE `trunks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ucp_news`
--
ALTER TABLE `ucp_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `unitpay_payments`
--
ALTER TABLE `unitpay_payments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
