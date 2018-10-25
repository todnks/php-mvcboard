-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 18-10-25 08:30
-- 서버 버전: 10.1.31-MariaDB
-- PHP 버전: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `mvc`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `board`
--

CREATE TABLE `board` (
  `idx` int(11) NOT NULL,
  `midx` int(11) NOT NULL,
  `writer` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `hit` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `change_date` datetime NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL,
  `change_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `board`
--

INSERT INTO `board` (`idx`, `midx`, `writer`, `subject`, `content`, `hit`, `date`, `change_date`, `file_name`, `file_size`, `change_name`) VALUES
(25, 0, '456', '파일', '시발', 75, '2018-05-12 02:12:13', '0000-00-00 00:00:00', '', 0, ''),
(36, 0, '1', '1010', '10', 16, '2018-10-23 19:22:13', '0000-00-00 00:00:00', '', 0, ''),
(37, 0, '1', '789', '789', 20, '2018-10-23 19:16:48', '0000-00-00 00:00:00', '', 0, ''),
(38, 0, '1', '12', '12', 101, '2018-10-23 19:16:25', '0000-00-00 00:00:00', '', 0, ''),
(46, 3, '0', '66', '66', 10, '2018-10-25 11:14:41', '0000-00-00 00:00:00', '', 0, '');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`idx`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `board`
--
ALTER TABLE `board`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
