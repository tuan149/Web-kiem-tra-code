-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 10, 2020 lúc 08:09 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vinh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_account`
--

CREATE TABLE `db_account` (
  `ID_acc` varchar(20) NOT NULL,
  `Name` text DEFAULT NULL,
  `Ava` text DEFAULT NULL,
  `Point` int(11) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `admin` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_account`
--

INSERT INTO `db_account` (`ID_acc`, `Name`, `Ava`, `Point`, `Date`, `admin`) VALUES
('1141633332862435', 'Trần Tuấn', 'https://graph.facebook.com/1141633332862435/picture?type=large', NULL, '2020-06-10 12:25:19', NULL),
('3272516749639311', 'Tuấn Minh Trần', 'https://graph.facebook.com/3272516749639311/picture?type=large', 3, '2020-06-07 17:09:22', 1),
('2403946663230660', 'Tung Nguyen', 'https://graph.facebook.com/2403946663230660/picture?type=large', 1, '2020-06-10 12:27:22', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_problem`
--

CREATE TABLE `db_problem` (
  `ID_prob` varchar(20) NOT NULL,
  `ID_tag` varchar(50) NOT NULL,
  `Name` text DEFAULT NULL,
  `Decription` text DEFAULT NULL,
  `TestCase` text NOT NULL,
  `Date` datetime DEFAULT NULL,
  `LimitTime` float DEFAULT NULL,
  `LimitMem` float NOT NULL,
  `AC_Users` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_problem`
--

INSERT INTO `db_problem` (`ID_prob`, `ID_tag`, `Name`, `Decription`, `TestCase`, `Date`, `LimitTime`, `LimitMem`, `AC_Users`) VALUES
('CONG', 'Cơ bản, Vỡ lòng', 'Cộng hai số nguyên A và B', '<p>Cho 2 số nguy&ecirc;n A v&agrave; B . H&atilde;y t&iacute;nh A + B</p>\r\n\r\n<h2><strong>Input</strong></h2>\r\n\r\n<p>Gồm 1 d&ograve;ng chứa 2 số nguy&ecirc;n A v&agrave; B , c&aacute;ch bởi 1 dấu c&aacute;ch.</p>\r\n\r\n<h2><strong>Output</strong></h2>\r\n\r\n<p>Ghi ra tổng A+B .</p>\r\n\r\n<h2><strong>V&iacute; dụ</strong></h2>\r\n\r\n<ul>\r\n	<li><strong>Input:</strong> 3 4</li>\r\n	<li><strong>Output:</strong> 7</li>\r\n	<li><strong>Gợi &yacute;:</strong> Sử dụng to&aacute;n tử &quot;+&quot; .</li>\r\n</ul>\r\n', '{\"1\":\"1 2|3\",\"2\":\"4 5|9\",\"3\":\"-1 -2|-3\"}', '2017-03-26 17:29:42', 1, 10240, '{\"3272516749639311\":{\"data\":\"2020-06-10 10:37:14\",\"t\":\"0\",\"m\":\"0\",\"l\":\"c\",\"s\":\"0\"},\"2403946663230660\":{\"data\":\"2020-06-10 12:38:22\",\"t\":\"0\",\"m\":\"0\",\"l\":\"c\",\"s\":\"0\"}}'),
('TAMGIAC', 'Cơ bản', 'In tam giác theo mẫu', '<p>Nhập v&agrave;o chiều cao n v&agrave; in một tam gi&aacute;c c&acirc;n bằng dấu *</p>\r\n\r\n<h2><strong>Input</strong></h2>\r\n\r\n<p>Một số nguy&ecirc;n dương n</p>\r\n\r\n<h2><strong>Output</strong></h2>\r\n\r\n<p>In ra tam gi&aacute;c bằng dấu *</p>\r\n\r\n<h2><strong>V&iacute; dụ</strong></h2>\r\n\r\n<p><strong><img alt=\"\" src=\"/file/img/temp/7228a7de.png\" style=\"width: 460px; height: 221px;\" /></strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"/file/img/temp/547e3b02.png\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', '{\"1\":\"1|*\",\"2\":\"5|    *\\\\n   ***\\\\n  *****\\\\n *******\\\\n*********\",\"3\":\"7|      *\\\\n     ***\\\\n    *****\\\\n   *******\\\\n  *********\\\\n ***********\\\\n*************\"}', '2020-03-26 17:29:42', 1, 10240, ''),
('TSNGT', 'Cơ bản', 'Phân tích thành thừa số nguyên tố', '<p>Nhập một số nguy&ecirc;n dương n, h&atilde;y ph&acirc;n t&iacute;ch n th&agrave;nh thừa số nguy&ecirc;n tố</p>\r\n\r\n<h2><strong>Input</strong></h2>\r\n\r\n<p>Số nguy&ecirc;n dương n &gt;= 2</p>\r\n\r\n<h2><strong>Output</strong></h2>\r\n\r\n<p>Ph&acirc;n t&iacute;ch th&agrave;nh thừa số nguy&ecirc;n tố, d&ugrave;ng c&aacute;c k&yacute; tự như ^, *, kh&ocirc;ng khoảng c&aacute;ch</p>\r\n\r\n<h2><strong>V&iacute; dụ</strong></h2>\r\n\r\n<ul>\r\n	<li><strong>Input:</strong>&nbsp;120</li>\r\n	<li><strong>Output:</strong>&nbsp;2^3*3*5</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Input:</strong>&nbsp;2</li>\r\n	<li><strong>Output:</strong>&nbsp;2</li>\r\n</ul>\r\n', '{\"1\":\"2|2\",\"2\":\"120|2^3*3*5\",\"3\":\"45774254|2*37*618571\"}', '2017-03-26 17:29:42', 1, 10240, '{\"3272516749639311\":{\"data\":\"2020-06-10 10:39:25\",\"t\":\"0\",\"m\":\"0\",\"l\":\"c\",\"s\":\"0\"}}'),
('SIEUXAU', 'Nâng cao', 'Số siêu xấu nhỏ nhất lớn hơn n', '<p>Số si&ecirc;u xấu l&agrave; <strong>số đối xứng chỉ c&oacute; c&aacute;c chữ số lẻ 1, 3, 5, 7, 9</strong>. V&iacute; dụ 1331 l&agrave; 1 số si&ecirc;u xấu, 13577531 l&agrave; 1 số si&ecirc;u xấu</p>\r\n\r\n<p>Nhập v&agrave;o số nguy&ecirc;n dương N tối đa 8 chữ số. T&igrave;m số si&ecirc;u xấu<strong> nhỏ nhất sao cho số đ&oacute; lớn hơn N</strong>.</p>\r\n\r\n<h2><strong>Input</strong></h2>\r\n\r\n<p>Một số nguy&ecirc;n dương N (lưu &yacute; kh&ocirc;ng in ra c&aacute;c c&acirc;u mời ch&agrave;o như &quot;Moi ban nhap n&quot;, nhập thẳng từ b&agrave;n ph&iacute;m, kh&ocirc;ng cần m&ocirc; tả mời ch&agrave;o)</p>\r\n\r\n<h2><strong>Output</strong></h2>\r\n\r\n<p>Số si&ecirc;u xấu thỏa điều kiện (xuất thẳng số si&ecirc;u xấu thỏa điều kiện)</p>\r\n\r\n<h2><strong>V&iacute; dụ</strong></h2>\r\n\r\n<ul>\r\n	<li>Nhập N = 49 kết quả l&agrave; 55.</li>\r\n	<li>Nhập N = 123 kết quả l&agrave; 131.</li>\r\n	<li>Nhập N = 7349 kết quả l&agrave; 7557.</li>\r\n</ul>\r\n', '{\"1\":\"49|55\",\"2\":\"123|131\",\"3\":\"123456|131131\",\"4\":\"589745|591195\",\"5\":\"5422341|5511155\"}', '2017-03-26 17:29:42', 1, 10240, ''),
('DAYSO', 'Cơ bản', 'Dãy số con lớn nhất', '<p>C&oacute; 1 d&atilde;y số. X&acirc;y dựng thuật to&aacute;n t&igrave;m<strong> d&atilde;y số con </strong>c&oacute;<strong> 4 chữ số lớn nhất từ d&atilde;y tr&ecirc;n v&agrave; theo thứ tự từ tr&aacute;i qua phải</strong></p>\r\n\r\n<h2><strong>Input</strong></h2>\r\n\r\n<p>1 d&atilde;y số (giới hạn nhập tối đa&nbsp;20 chữ số, tối thiểu 4 chữ số)</p>\r\n\r\n<h2><strong>Output</strong></h2>\r\n\r\n<p>4 chữ số lớn nhất từ d&atilde;y tr&ecirc;n v&agrave; theo thứ tự từ tr&aacute;i qua phải</p>\r\n\r\n<h2><strong>V&iacute; dụ</strong></h2>\r\n\r\n<ul>\r\n	<li><strong>Input:</strong> 0675800</li>\r\n	<li><strong>Output:</strong> 7800</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Input:</strong> 3826834</li>\r\n	<li><strong>Output:</strong> 8834</li>\r\n</ul>\r\n', '{\"1\":\"0675800|7800\",\"2\":\"3826834|8834\",\"3\":\"4001545115017|5557\",\"4\":\"1010570480012|8012\",\"5\":\"0505855|5855\",\"6\":\"01201|1201\",\"7\":\"412014472287|7287\"}', '2017-03-26 17:29:42', 5, 10240, ''),
('DUONGBIEN', 'Ma trận,Cơ bản', 'Tổng đường biên ma trận vuông', '<p>Nhập v&agrave;o một ma trận vu&ocirc;ng cấp n, xuất ra tổng đường bi&ecirc;n của ma trận đ&oacute;</p>\r\n\r\n<h2><strong>Input</strong></h2>\r\n\r\n<p>D&ograve;ng đầu ti&ecirc;n l&agrave; n <strong>số nguy&ecirc;n</strong> (n&gt; 0)&nbsp;được nhập từ b&agrave;n ph&iacute;m</p>\r\n\r\n<p>n d&ograve;ng tiếp theo l&agrave; n phần tử <strong>số nguy&ecirc;n</strong>&nbsp;được nhập từ b&agrave;n ph&iacute;m</p>\r\n\r\n<h2><strong>Output</strong></h2>\r\n\r\n<p>Tổng đường bi&ecirc;n</p>\r\n\r\n<h2><strong>V&iacute; dụ</strong></h2>\r\n\r\n<ul>\r\n	<li><strong>Input:</strong>&nbsp;1 1</li>\r\n	<li><strong>Output:</strong>&nbsp;1</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Input:</strong>&nbsp;2 2 3 1 1</li>\r\n	<li><strong>Output:</strong>&nbsp;7</li>\r\n</ul>\r\n', '{\"1\":\"1 1|1\",\"2\":\"2 2 3 1 1|7\",\"3\":\"3 1 2 3 7 8 9 3 2 1|28\",\"4\":\"4 1 2 5 4 0 2 4 8 9 6 5 4 7 8 5 2|55\"}', '2017-03-26 17:29:42', 1, 10240, ''),
('NGTO', 'Cơ bản', 'Tổng chữ số nguyên tố của n', '<p>Nhập v&agrave;o 1 số nguy&ecirc;n n (n &gt; 0, n &lt; 2*10^6), h&atilde;y xuất ra tổng c&aacute;c chữ số l&agrave; số nguy&ecirc;n tố trong n</p>\r\n\r\n<h2><strong>Input</strong></h2>\r\n\r\n<p>Gồm n l&agrave; số nguy&ecirc;n</p>\r\n\r\n<h2><strong>Output</strong></h2>\r\n\r\n<p>Tổng c&aacute;c chữ số l&agrave; số nguy&ecirc;n tố của n</p>\r\n\r\n<h2><strong>V&iacute; dụ</strong></h2>\r\n\r\n<ul>\r\n	<li><strong>Input:</strong>&nbsp;19001560</li>\r\n	<li><strong>Output:</strong> 5</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Input:</strong>&nbsp;1213141516</li>\r\n	<li><strong>Output:</strong>&nbsp;10</li>\r\n</ul>\r\n', '{\"1\":\"19001560|5\",\"2\":\"2345678|17\",\"3\":\"1|0\",\"4\":\"7|7\"}', '2017-03-26 17:29:42', 1, 10240, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `submit_status`
--

CREATE TABLE `submit_status` (
  `ID_prob` varchar(20) NOT NULL,
  `ID_acc` varchar(20) NOT NULL,
  `Status` text DEFAULT NULL,
  `Date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `submit_status`
--

INSERT INTO `submit_status` (`ID_prob`, `ID_acc`, `Status`, `Date`) VALUES
('CONG', '2403946663230660', '0', '2020-06-10 12:32:27'),
('CONG', '2403946663230660', '0', '2020-06-10 12:32:18'),
('CONG', '2403946663230660', '0', '2020-06-10 12:28:56'),
('TAMGIAC', '3272516749639311', '0', '2020-06-10 10:53:24'),
('NGTO', '3272516749639311', '0', '2020-06-10 10:41:32'),
('NGTO', '3272516749639311', '0', '2020-06-10 10:40:48'),
('TSNGT', '3272516749639311', '1', '2020-06-10 10:39:25'),
('CONG', '3272516749639311', '1', '2020-06-10 10:37:14'),
('CONG', '3272516749639311', '0', '2020-06-10 10:36:27'),
('CONG', '3272516749639311', '0', '2020-06-10 10:35:52'),
('CONG', '3272516749639311', '0', '2020-06-10 10:34:59'),
('CONG', '3272516749639311', '0', '2020-06-10 10:34:56'),
('CONG', '3272516749639311', '0', '2020-06-10 10:34:42'),
('CONG', '3272516749639311', '0', '2020-06-10 10:34:39'),
('CONG', '3272516749639311', '0', '2020-06-10 10:34:06'),
('CONG', '3272516749639311', '0', '2020-06-10 10:34:02'),
('CONG', '3272516749639311', '0', '2020-06-10 10:31:27'),
('CONG', '3272516749639311', '0', '2020-06-10 10:31:14'),
('CONG', '3272516749639311', '0', '2020-06-10 10:31:06'),
('CONG', '3272516749639311', '0', '2020-06-10 10:31:02'),
('CONG', '3272516749639311', '0', '2020-06-10 10:30:54'),
('CONG', '3272516749639311', '0', '2020-06-10 10:30:50'),
('CONG', '3272516749639311', '0', '2020-06-10 10:28:41'),
('CONG', '3272516749639311', '0', '2020-06-10 10:28:36'),
('CONG', '3272516749639311', '0', '2020-06-10 10:28:32'),
('CONG', '3272516749639311', '0', '2020-06-10 09:44:30'),
('CONG', '3272516749639311', '0', '2020-06-10 09:44:07'),
('CONG', '2403946663230660', '0', '2020-06-10 12:36:01'),
('CONG', '2403946663230660', '0', '2020-06-10 12:36:30'),
('CONG', '2403946663230660', '1', '2020-06-10 12:38:22');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `db_account`
--
ALTER TABLE `db_account`
  ADD PRIMARY KEY (`ID_acc`);

--
-- Chỉ mục cho bảng `db_problem`
--
ALTER TABLE `db_problem`
  ADD PRIMARY KEY (`ID_prob`),
  ADD KEY `ID_tag` (`ID_tag`);

--
-- Chỉ mục cho bảng `submit_status`
--
ALTER TABLE `submit_status`
  ADD PRIMARY KEY (`ID_prob`,`ID_acc`,`Date`),
  ADD KEY `ID_acc` (`ID_acc`,`Date`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
