-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2021-04-20 08:11:24
-- 伺服器版本： 8.0.22
-- PHP 版本： 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `curl_storage`
--

-- --------------------------------------------------------

--
-- 資料表結構 `files`
--

CREATE TABLE `files` (
  `ID` char(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(100) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `files`
--

INSERT INTO `files` (`ID`, `name`, `path`, `size`, `time`) VALUES
('607d7d1f0142d', 'Cat and Hare.jpg', '../api/v1/files/Cat and Hare.jpg', '898271', '2021-04-19 20:52:47'),
('607d7d1f0637a', 'Cat enginner.jpg', '../api/v1/files/Cat enginner.jpg', '1571614', '2021-04-19 20:52:47'),
('607d8721599ec', 'Commission_Demo_flatColor.jpg', '../api/v1/files/Commission_Demo_flatColor.jpg', '1433959', '2021-04-19 21:35:29'),
('607dbda0e1d97', 'Grant_black_dragon.jpg', '../api/v1/files/Grant_black_dragon.jpg', '4364867', '2021-04-20 01:28:00'),
('607dbf657db02', 'Grant_blacki_deepred_dragon.jpg', '../api/v1/files/Grant_blacki_deepred_dragon.jpg', '2334498', '2021-04-20 01:35:33');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
