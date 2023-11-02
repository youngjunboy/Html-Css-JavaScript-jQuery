-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 23-11-02 08:33
-- 서버 버전: 10.4.27-MariaDB
-- PHP 버전: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `sample`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `freeboard`
--

CREATE TABLE `freeboard` (
  `num` int(11) NOT NULL,
  `name` char(20) NOT NULL,
  `pass` char(20) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text DEFAULT NULL,
  `regist_day` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 테이블의 덤프 데이터 `freeboard`
--

INSERT INTO `freeboard` (`num`, `name`, `pass`, `subject`, `content`, `regist_day`) VALUES
(1, '1', '1', '1', '1', '2023-09-11 (04:40)'),
(2, '1', '1', '1', '1', '2023-09-11 (04:40)'),
(3, '2', '2', '2', '2', '2023-09-11 (04:42)'),
(4, '3', '3', '3', '3', '2023-09-11 (04:42)');

-- --------------------------------------------------------

--
-- 테이블 구조 `memberboard`
--

CREATE TABLE `memberboard` (
  `num` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 테이블의 덤프 데이터 `memberboard`
--

INSERT INTO `memberboard` (`num`, `id`, `name`, `subject`, `content`, `regist_day`, `file_name`, `file_type`, `file_copied`) VALUES
(1, 'c', 'c', '11', '11', '2023-10-20 (02:35)', '', '', ''),
(2, 'c', 'c', '12', '12', '2023-10-20 (02:35)', '', '', ''),
(4, 'c', 'c', '13', '13', '2023-10-20 (02:41)', 'ë¡œê³ 3.jpg', 'image/jpeg', '2023_10_20_02_41_52.jpg'),
(5, 'a', 'a', '15', '15', '2023-10-20 (02:55)', 'abc.jpg', 'image/jpeg', '2023_10_20_02_55_21.jpg'),
(6, 'a', 'a', 'ss', 'ss', '2023-10-30 (07:18)', 'G6-31005-ê¹€ì§€ìœ¤-1.ai', 'application/postscript', '2023_10_30_07_18_58.ai'),
(7, 'a', 'a', '00', '00', '2023-10-30 (07:22)', 'G6-31005-ê¹€ì§€ìœ¤-2.ai', 'application/postscript', '2023_10_30_07_22_36.ai'),
(8, 'a', 'a', '3', '3', '2023-10-30 (07:37)', 'members.sql', 'application/octet-stream', '2023_10_30_07_37_05.sql'),
(9, 'a', 'a', '4', '4', '2023-10-30 (08:09)', 'report.pdf', 'application/pdf', '2023_10_30_08_09_33.pdf'),
(10, 'a', 'a', '9', '9', '2023-10-30 (08:10)', 'report (12).pdf', 'application/pdf', '2023_10_30_08_10_35.pdf'),
(11, '1', '1', '1', '1', '2023-11-02 (08:10)', 'imgres.htm', 'text/html', '2023_11_02_08_10_03.htm'),
(12, '1', '1', '1', '1', '2023-11-02 (08:12)', 'imgres.htm', 'text/html', '2023_11_02_08_12_08.htm'),
(13, '1', '1', '1', '1', '2023-11-02 (08:12)', 'imgres.htm', 'text/html', '2023_11_02_08_12_31.htm'),
(14, '1', '1', '1', '1', '2023-11-02 (08:12)', 'imgres.htm', 'text/html', '2023_11_02_08_12_46.htm'),
(15, '1', '1', '1', '1', '2023-11-02 (08:13)', 'imgres.htm', 'text/html', '2023_11_02_08_13_08.htm'),
(16, '1', '1', '1', '1', '2023-11-02 (08:25)', 'imgres.htm', 'text/html', '2023_11_02_08_25_53.htm');

-- --------------------------------------------------------

--
-- 테이블 구조 `members`
--

CREATE TABLE `members` (
  `num` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `pass` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `email` char(80) DEFAULT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 테이블의 덤프 데이터 `members`
--

INSERT INTO `members` (`num`, `id`, `pass`, `name`, `email`, `regist_day`, `level`, `point`) VALUES
(17, 'a', 'a', 'a', 'a', '2023-09-18 (08:42)', 9, 0),
(22, 'b', 'b', 'b', 'b', '2023-10-30 (03:10)', 9, 0),
(23, '1', '1', '1', '1', '2023-11-02 (08:09)', 9, 0);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `freeboard`
--
ALTER TABLE `freeboard`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `memberboard`
--
ALTER TABLE `memberboard`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`num`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `freeboard`
--
ALTER TABLE `freeboard`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 테이블의 AUTO_INCREMENT `memberboard`
--
ALTER TABLE `memberboard`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 테이블의 AUTO_INCREMENT `members`
--
ALTER TABLE `members`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
