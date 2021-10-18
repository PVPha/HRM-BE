-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2021 at 10:43 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_absent`
--

CREATE TABLE `tbl_absent` (
  `ID` int(11) NOT NULL,
  `id_decision` varchar(100) NOT NULL,
  `id_staff` varchar(100) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `time` date NOT NULL,
  `content` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_absent`
--

INSERT INTO `tbl_absent` (`ID`, `id_decision`, `id_staff`, `fullName`, `position`, `department`, `time`, `content`) VALUES
(1, 'MD1', 'nv1', 'nguyễn văn a', 'fe dev', 'IT', '2021-08-27', '<p>l&yacute; od</p>'),
(2, 'MD2', 'nv1', 'nguyễn văn a', 'fe dev', 'IT', '2021-08-19', '<p>ly do</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advance`
--

CREATE TABLE `tbl_advance` (
  `ID` int(11) NOT NULL,
  `id_decision` varchar(10) DEFAULT NULL,
  `id_staff` varchar(10) DEFAULT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `advance` int(11) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_advance`
--

INSERT INTO `tbl_advance` (`ID`, `id_decision`, `id_staff`, `fullName`, `position`, `department`, `time`, `advance`, `content`) VALUES
(5, 'QD1', 'nv2', 'phạm văn b', 'IT', 'fe dev', '2021-08-04', 997, '<p>sdfsdf</p>'),
(6, 'QD6', 'nv1', 'nguyễn văn a', 'IT', 'fe dev', '2021-08-11', 114, '<p>sdfsdf</p>'),
(7, 'QD7', 'nv2', 'phạm văn b', 'IT', 'fe dev', '2021-08-10', 99, '<p>sdf</p>'),
(8, 'QD8', 'nv1', 'nguyễn văn a', 'IT', 'fe dev', '2021-08-18', 29200, '<p>dsfsd</p>'),
(9, 'QD9', 'nv1', 'nguyễn văn a', 'IT', 'fe dev', '2021-08-26', 5000000, '<p>sdfs</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_allowance`
--

CREATE TABLE `tbl_allowance` (
  `ID` int(11) NOT NULL,
  `id_decision` varchar(10) NOT NULL,
  `id_staff` varchar(10) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `time` date NOT NULL,
  `content_allowance` longtext NOT NULL,
  `content_subsidy` longtext NOT NULL,
  `allowance` int(11) NOT NULL,
  `subsidy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_allowance`
--

INSERT INTO `tbl_allowance` (`ID`, `id_decision`, `id_staff`, `fullName`, `position`, `department`, `time`, `content_allowance`, `content_subsidy`, `allowance`, `subsidy`) VALUES
(4, 'qd1', 'nv2', 'phạm văn b', 'fe dev', 'IT', '2021-08-17', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>khoản phụ cấp</th>\n<th>mức phụ cấp</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>100</td>\n</tr>\n</tbody>\n</table>', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>khoản trợ cấp</th>\n<th>mức giảm trừ</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>2</td>\n<td>100</td>\n</tr>\n</tbody>\n</table>', 100, 100),
(5, 'QD5', 'nv5', 'lê văn d', 'fe dev', 'IT', '2021-08-20', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>khoản phụ cấp</th>\n<th>mức phụ cấp</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>100</td>\n</tr>\n</tbody>\n</table>', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>khoản trợ cấp</th>\n<th>mức giảm trừ</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>100</td>\n</tr>\n</tbody>\n</table>', 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appoint`
--

CREATE TABLE `tbl_appoint` (
  `ID` int(11) NOT NULL,
  `id_decision` varchar(10) NOT NULL,
  `id_staff` varchar(10) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `pos_appoint` varchar(100) NOT NULL,
  `dep_appoint` varchar(100) NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_appoint`
--

INSERT INTO `tbl_appoint` (`ID`, `id_decision`, `id_staff`, `fullName`, `position`, `department`, `pos_appoint`, `dep_appoint`, `time`) VALUES
(1, 'QD1', 'nv1', 'nguyễn văn a', 'fe dev', 'IT', 'appoint', 'appoint', '2021-08-20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_calculations`
--

CREATE TABLE `tbl_calculations` (
  `ID` int(11) NOT NULL,
  `workDay` varchar(500) NOT NULL,
  `KPI` varchar(500) NOT NULL,
  `sale` varchar(500) NOT NULL,
  `received` varchar(500) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_calculations`
--

INSERT INTO `tbl_calculations` (`ID`, `workDay`, `KPI`, `sale`, `received`) VALUES
(1, '(((((salary / 22) * workDay) * coefficientSalary)) + allowance + subsidy  + reward - advance - discipline + KPI_salary + sale_salary - deduction - insurance)', '(((achieveKPI / setKPI) * classification) * 10000000) ', '(achieveSale * 100)', '(workDay_salary - (workDay_salary * tax))');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cancel_contract`
--

CREATE TABLE `tbl_cancel_contract` (
  `ID` int(11) NOT NULL,
  `id_decision` varchar(10) NOT NULL,
  `id_staff` varchar(10) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `time` date NOT NULL,
  `reason` longtext NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cancel_contract`
--

INSERT INTO `tbl_cancel_contract` (`ID`, `id_decision`, `id_staff`, `fullName`, `time`, `reason`, `status`) VALUES
(1, 'qd1', 'nv2', 'phạm văn b', '2021-08-24', '<p>ky do</p>', 'thôi việc');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_candidate`
--

CREATE TABLE `tbl_candidate` (
  `ID` int(11) NOT NULL,
  `id_candidate` varchar(10) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `position` varchar(50) NOT NULL,
  `exp` varchar(500) NOT NULL,
  `skill` varchar(500) NOT NULL,
  `education` varchar(500) NOT NULL,
  `languageSkill` varchar(500) NOT NULL,
  `status` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_candidate`
--

INSERT INTO `tbl_candidate` (`ID`, `id_candidate`, `fullName`, `sex`, `dateOfBirth`, `phoneNumber`, `email`, `address`, `position`, `exp`, `skill`, `education`, `languageSkill`, `status`, `image`) VALUES
(2, 'hs1', 'nguyễn văn a', 'nam', '2021-08-23', '123', 'mail', 'HCM', 'fe dev', '<p>kinh nghiệm</p>', '<p>kỹ năng</p>', 'học vấn', 'ngoại ngữ', 'chờ', 'http://localhost:8080/hrm/HRM-BE/assets/image/1630244162-backup-driverWifi.png'),
(3, 'hs2', 'phạm văn b', 'nam', '2021-08-08', '123', 'email', 'hcm', 'fe dev', '<p>kinh nghiệm</p>', '<p>ky năng</p>', 'học vấn ', 'nn', 'từ chối', 'http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png'),
(4, 'hs3', 'trần văn c', 'nam', '2021-08-08', '123', 'email', 'hcm', 'fe dev', '<p>kinh nghiệm</p>', '<p>ky năng</p>', 'học vấn ', 'nn', 'duyệt', '<a href=\"http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png\" title=\"\" target=\"_blank\" rel=\"noopener noreferrer\">http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png</a>'),
(5, 'hs4', 'lê văn d', 'nam', '2021-08-08', '123', 'email', 'hcm', 'fe dev', '<p>kinh nghiệm</p>', '<p>ky năng</p>', 'học vấn ', 'nn', 'phỏng vấn', '<a href=\"http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png\" title=\"\" target=\"_blank\" rel=\"noopener noreferrer\">http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png</a>'),
(6, 'hs5', 'dương văn e', 'nam', '2021-08-08', '123', 'email', 'hcm', 'fe dev', '<p>kinh nghiệm</p>', '<p>ky năng</p>', 'học vấn ', 'nn', 'tuyển dụng', '&amp;lt;a href=&amp;quot;http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png&amp;quot; title=&amp;quot;&amp;quot; target=&amp;quot;_blank&amp;quot; rel=&amp;quot;noopener noreferrer&amp;quot;&amp;gt;http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png&amp;lt;/a&amp;gt;');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contract`
--

CREATE TABLE `tbl_contract` (
  `ID` int(11) NOT NULL,
  `id_contract` varchar(10) NOT NULL,
  `id_staff` varchar(10) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `typeContract` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `time` varchar(500) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `identityCard` varchar(20) NOT NULL,
  `position` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `content` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_contract`
--

INSERT INTO `tbl_contract` (`ID`, `id_contract`, `id_staff`, `fullName`, `dateOfBirth`, `typeContract`, `duration`, `time`, `phoneNumber`, `address`, `identityCard`, `position`, `department`, `content`) VALUES
(1, 'hd1', 'nv2', 'phạm văn b', '2021-08-08', 'nh', '12', '{\"start\":\"2021-08-28T17:00:00.000Z\",\"end\":\"2021-08-30T17:00:00.000Z\"}', '123', 'hcm', '123', 'fe dev', 'IT', '<h3>Điều 1: Điều khoản chung</h3>\n<ol>\n<li>Loại HĐLĐ:</li>\n<li>Thời hạn HĐLĐ 12 th&aacute;ng</li>\n<li>Thời điểm từ: ng&agrave;y &hellip;&hellip; th&aacute;ng &hellip;&hellip; năm &hellip;&hellip;.. đến ng&agrave;y &hellip;&hellip; th&aacute;ng &hellip;&hellip; năm &hellip;&hellip;</li>\n<li>Địa điểm l&agrave;m việc:</li>\n<li>Bộ phận c&ocirc;ng t&aacute;c: Ph&ograve;ng Chức danh chuy&ecirc;n m&ocirc;n (vị tr&iacute; c&ocirc;ng t&aacute;c):</li>\n<li>Nhiệm vụ c&ocirc;ng việc như sau:\n<ul>\n<li>Thực hiện c&ocirc;ng việc theo đ&uacute;ng chức danh chuy&ecirc;n m&ocirc;n của m&igrave;nh dưới sự quản l&yacute;, điều h&agrave;nh của Ban Gi&aacute;m đốc (v&agrave; c&aacute;c c&aacute; nh&acirc;n được bổ nhiệm hoặc ủy quyền phụ tr&aacute;ch).</li>\n<li>Phối hợp c&ugrave;ng với c&aacute;c bộ phận, ph&ograve;ng ban kh&aacute;c trong C&ocirc;ng ty để ph&aacute;t huy tối đa hiệu quả c&ocirc;ng việc.</li>\n<li>Ho&agrave;n th&agrave;nh những c&ocirc;ng việc kh&aacute;c t&ugrave;y thuộc theo y&ecirc;u cầu kinh doanh của C&ocirc;ng ty v&agrave; theo quyết định của Ban Gi&aacute;m đốc (v&agrave; c&aacute;c c&aacute; nh&acirc;n được bổ nhiệm hoặc ủy quyền phụ tr&aacute;ch).</li>\n</ul>\n</li>\n</ol>\n<h3>Điều 2: Chế độ l&agrave;m việc</h3>\n<ol>\n<li>Thời gian l&agrave;m việc:</li>\n<li>Từ ng&agrave;y thứ 2 đến s&aacute;ng ng&agrave;y thứ 7:\n<ul>\n<li>Buổi s&aacute;ng : 8h00 &ndash; 12h00</li>\n<li>Buổi chiều: 13h30 &ndash; 17h30</li>\n<li>S&aacute;ng ng&agrave;y thứ 7: L&agrave;m việc từ 08h00 đến 12h00</li>\n</ul>\n</li>\n<li>Do t&iacute;nh chất c&ocirc;ng việc, nhu cầu kinh doanh hay nhu cầu của tổ chức/bộ phận, C&ocirc;ng ty c&oacute; thể cho &aacute;p dụng thời gian l&agrave;m việc linh hoạt. Những nh&acirc;n vi&ecirc;n được &aacute;p dụng thời gian l&agrave;m việc linh hoạt c&oacute; thể kh&ocirc;ng tu&acirc;n thủ lịch l&agrave;m việc cố định b&igrave;nh thường m&agrave; l&agrave;m theo ca k&iacute;p, nhưng vẫn phải đảm bảo đủ số giờ l&agrave;m việc theo quy định.</li>\n<li>Thiết bị v&agrave; c&oc'),
(2, 'hd2', 'nv1', 'nguyễn văn a', '2021-08-23', 'dh', '12', '{\"start\":\"2021-08-11T17:00:00.000Z\",\"end\":\"2021-08-30T17:00:00.000Z\"}', '123', 'HCM', '123', 'fe dev', 'IT', '<h3>Điều 1: Điều khoản chung</h3>\n<ol>\n<li>Loại HĐLĐ:</li>\n<li>Thời hạn HĐLĐ 12 th&aacute;ng</li>\n<li>Thời điểm từ: ng&agrave;y &hellip;&hellip; th&aacute;ng &hellip;&hellip; năm &hellip;&hellip;.. đến ng&agrave;y &hellip;&hellip; th&aacute;ng &hellip;&hellip; năm &hellip;&hellip;</li>\n<li>Địa điểm l&agrave;m việc:</li>\n<li>Bộ phận c&ocirc;ng t&aacute;c: Ph&ograve;ng Chức danh chuy&ecirc;n m&ocirc;n (vị tr&iacute; c&ocirc;ng t&aacute;c):</li>\n<li>Nhiệm vụ c&ocirc;ng việc như sau:\n<ul>\n<li>Thực hiện c&ocirc;ng việc theo đ&uacute;ng chức danh chuy&ecirc;n m&ocirc;n của m&igrave;nh dưới sự quản l&yacute;, điều h&agrave;nh của Ban Gi&aacute;m đốc (v&agrave; c&aacute;c c&aacute; nh&acirc;n được bổ nhiệm hoặc ủy quyền phụ tr&aacute;ch).</li>\n<li>Phối hợp c&ugrave;ng với c&aacute;c bộ phận, ph&ograve;ng ban kh&aacute;c trong C&ocirc;ng ty để ph&aacute;t huy tối đa hiệu quả c&ocirc;ng việc.</li>\n<li>Ho&agrave;n th&agrave;nh những c&ocirc;ng việc kh&aacute;c t&ugrave;y thuộc theo y&ecirc;u cầu kinh doanh của C&ocirc;ng ty v&agrave; theo quyết định của Ban Gi&aacute;m đốc (v&agrave; c&aacute;c c&aacute; nh&acirc;n được bổ nhiệm hoặc ủy quyền phụ tr&aacute;ch).</li>\n</ul>\n</li>\n</ol>\n<h3>Điều 2: Chế độ l&agrave;m việc</h3>\n<ol>\n<li>Thời gian l&agrave;m việc:</li>\n<li>Từ ng&agrave;y thứ 2 đến s&aacute;ng ng&agrave;y thứ 7:\n<ul>\n<li>Buổi s&aacute;ng : 8h00 &ndash; 12h00</li>\n<li>Buổi chiều: 13h30 &ndash; 17h30</li>\n<li>S&aacute;ng ng&agrave;y thứ 7: L&agrave;m việc từ 08h00 đến 12h00</li>\n</ul>\n</li>\n<li>Do t&iacute;nh chất c&ocirc;ng việc, nhu cầu kinh doanh hay nhu cầu của tổ chức/bộ phận, C&ocirc;ng ty c&oacute; thể cho &aacute;p dụng thời gian l&agrave;m việc linh hoạt. Những nh&acirc;n vi&ecirc;n được &aacute;p dụng thời gian l&agrave;m việc linh hoạt c&oacute; thể kh&ocirc;ng tu&acirc;n thủ lịch l&agrave;m việc cố định b&igrave;nh thường m&agrave; l&agrave;m theo ca k&iacute;p, nhưng vẫn phải đảm bảo đủ số giờ l&agrave;m việc theo quy định.</li>\n<li>Thiết bị v&agrave; c&oc'),
(3, 'hd4', 'nv4', 'trần văn c', '2021-08-08', 'nh', '12', '{\"start\":\"2021-08-09T17:00:00.000Z\",\"end\":\"2021-08-30T17:00:00.000Z\"}', '123', 'hcm', '1234', 'fe dev', 'IT', '<h3>Điều 1: Điều khoản chung</h3>\n<ol>\n<li>Loại HĐLĐ:</li>\n<li>Thời hạn HĐLĐ 12 th&aacute;ng</li>\n<li>Thời điểm từ: ng&agrave;y &hellip;&hellip; th&aacute;ng &hellip;&hellip; năm &hellip;&hellip;.. đến ng&agrave;y &hellip;&hellip; th&aacute;ng &hellip;&hellip; năm &hellip;&hellip;</li>\n<li>Địa điểm l&agrave;m việc:</li>\n<li>Bộ phận c&ocirc;ng t&aacute;c: Ph&ograve;ng Chức danh chuy&ecirc;n m&ocirc;n (vị tr&iacute; c&ocirc;ng t&aacute;c):</li>\n<li>Nhiệm vụ c&ocirc;ng việc như sau:\n<ul>\n<li>Thực hiện c&ocirc;ng việc theo đ&uacute;ng chức danh chuy&ecirc;n m&ocirc;n của m&igrave;nh dưới sự quản l&yacute;, điều h&agrave;nh của Ban Gi&aacute;m đốc (v&agrave; c&aacute;c c&aacute; nh&acirc;n được bổ nhiệm hoặc ủy quyền phụ tr&aacute;ch).</li>\n<li>Phối hợp c&ugrave;ng với c&aacute;c bộ phận, ph&ograve;ng ban kh&aacute;c trong C&ocirc;ng ty để ph&aacute;t huy tối đa hiệu quả c&ocirc;ng việc.</li>\n<li>Ho&agrave;n th&agrave;nh những c&ocirc;ng việc kh&aacute;c t&ugrave;y thuộc theo y&ecirc;u cầu kinh doanh của C&ocirc;ng ty v&agrave; theo quyết định của Ban Gi&aacute;m đốc (v&agrave; c&aacute;c c&aacute; nh&acirc;n được bổ nhiệm hoặc ủy quyền phụ tr&aacute;ch).</li>\n</ul>\n</li>\n</ol>\n<h3>Điều 2: Chế độ l&agrave;m việc</h3>\n<ol>\n<li>Thời gian l&agrave;m việc:</li>\n<li>Từ ng&agrave;y thứ 2 đến s&aacute;ng ng&agrave;y thứ 7:\n<ul>\n<li>Buổi s&aacute;ng : 8h00 &ndash; 12h00</li>\n<li>Buổi chiều: 13h30 &ndash; 17h30</li>\n<li>S&aacute;ng ng&agrave;y thứ 7: L&agrave;m việc từ 08h00 đến 12h00</li>\n</ul>\n</li>\n<li>Do t&iacute;nh chất c&ocirc;ng việc, nhu cầu kinh doanh hay nhu cầu của tổ chức/bộ phận, C&ocirc;ng ty c&oacute; thể cho &aacute;p dụng thời gian l&agrave;m việc linh hoạt. Những nh&acirc;n vi&ecirc;n được &aacute;p dụng thời gian l&agrave;m việc linh hoạt c&oacute; thể kh&ocirc;ng tu&acirc;n thủ lịch l&agrave;m việc cố định b&igrave;nh thường m&agrave; l&agrave;m theo ca k&iacute;p, nhưng vẫn phải đảm bảo đủ số giờ l&agrave;m việc theo quy định.</li>\n<li>Thiết bị v&agrave; c&oc');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discipline`
--

CREATE TABLE `tbl_discipline` (
  `ID` int(11) NOT NULL,
  `id_decision` varchar(10) NOT NULL,
  `id_staff` varchar(10) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `money` int(11) NOT NULL,
  `time` date NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_discipline`
--

INSERT INTO `tbl_discipline` (`ID`, `id_decision`, `id_staff`, `fullName`, `position`, `department`, `money`, `time`, `content`) VALUES
(1, 'qd1', 'nv2', 'phạm văn b', 'fe dev', 'IT', 100, '2021-08-11', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>khoản kỉ luật</th>\n<th>l&yacute; do kỉ luật</th>\n<th>mức phạt</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>1</td>\n<td>100</td>\n</tr>\n</tbody>\n</table>'),
(2, 'QD2', 'nv2', 'phạm văn b', 'fe dev', 'IT', 1, '2021-08-09', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>khoản kỉ luật</th>\n<th>l&yacute; do kỉ luật</th>\n<th>mức phạt</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>1</td>\n<td>1</td>\n</tr>\n</tbody>\n</table>'),
(3, 'QD3', 'nv2', 'phạm văn b', 'fe dev', 'IT', 9, '2021-08-27', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>khoản kỉ luật</th>\n<th>l&yacute; do kỉ luật</th>\n<th>mức phạt</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>1</td>\n<td>9</td>\n</tr>\n</tbody>\n</table>'),
(4, 'QD4', 'nv5', 'lê văn d', 'fe dev', 'IT', 100, '2021-08-19', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>khoản kỉ luật</th>\n<th>l&yacute; do kỉ luật</th>\n<th>mức phạt</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>1</td>\n<td>100</td>\n</tr>\n</tbody>\n</table>'),
(5, 'QD5', 'nv2', 'phạm văn b', 'fe dev', 'IT', 123, '0000-00-00', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>khoản kỉ luật</th>\n<th>l&yacute; do kỉ luật</th>\n<th>mức phạt</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>1</td>\n<td>123</td>\n</tr>\n</tbody>\n</table>'),
(6, 'QD5', 'nv2', 'phạm văn b', 'fe dev', 'IT', 123, '0000-00-00', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>khoản kỉ luật</th>\n<th>l&yacute; do kỉ luật</th>\n<th>mức phạt</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>1</td>\n<td>123</td>\n</tr>\n</tbody>\n</table>'),
(7, 'QD5', 'nv2', 'phạm văn b', 'fe dev', 'IT', 123, '0000-00-00', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>khoản kỉ luật</th>\n<th>l&yacute; do kỉ luật</th>\n<th>mức phạt</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>1</td>\n<td>123</td>\n</tr>\n</tbody>\n</table>'),
(8, 'QD5', 'nv2', 'phạm văn b', 'fe dev', 'IT', 123, '0000-00-00', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>khoản kỉ luật</th>\n<th>l&yacute; do kỉ luật</th>\n<th>mức phạt</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>1</td>\n<td>123</td>\n</tr>\n</tbody>\n</table>'),
(9, 'QD5', 'nv2', 'phạm văn b', 'fe dev', 'IT', 123, '0000-00-00', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>khoản kỉ luật</th>\n<th>lý do kỉ luật</th>\n<th>mức phạt</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>1</td>\n<td>123</td>\n</tr>\n</tbody>\n</table>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hiring`
--

CREATE TABLE `tbl_hiring` (
  `ID` int(11) NOT NULL,
  `id_dicision` varchar(10) DEFAULT NULL,
  `id_candidate` varchar(10) NOT NULL,
  `id_staff` varchar(10) DEFAULT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `department` varchar(200) NOT NULL,
  `time` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time_start` date NOT NULL,
  `time_end` date NOT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_hiring`
--

INSERT INTO `tbl_hiring` (`ID`, `id_dicision`, `id_candidate`, `id_staff`, `fullName`, `position`, `department`, `time`, `time_start`, `time_end`, `salary`) VALUES
(6, 'qd1', 'hs1', 'nv1', 'nguyễn văn a', 'fe dev', 'IT', '{\"start\":\"2021-08-03T17:00:00.000Z\",\"end\":\"2021-08-30T17:00:00.000Z\"}', '2021-08-04', '2021-08-29', 1000),
(7, 'qd2', 'hs2', 'nv2', 'phạm văn b', 'fe dev', 'IT', '{\"start\":\"2021-08-28T17:00:00.000Z\",\"end\":\"2021-08-30T17:00:00.000Z\"}', '2021-08-29', '2021-08-29', 100000),
(8, 'qd3', 'hs5', 'nv3', 'dương văn e', 'fe dev', 'IT', '{\"start\":\"2021-08-31T17:00:00.000Z\",\"end\":\"2021-12-24T17:00:00.000Z\"}', '2021-09-01', '2021-12-25', 1000000),
(9, 'qd4', 'hs3', 'nv4', 'trần văn c', 'fe dev', 'IT', '{\"start\":\"2021-08-29T17:00:00.000Z\",\"end\":\"2021-09-28T17:00:00.000Z\"}', '2021-08-30', '2021-09-29', 1000000),
(10, 'QD10', 'hs4', '', 'lê văn d', 'fe dev', 'IT', '{\"start\":\"2021-08-30T17:00:00.000Z\",\"end\":\"2021-08-31T17:00:00.000Z\"}', '2021-08-31', '2021-09-01', 100000),
(11, 'QD11', 'hs4', '', 'lê văn d', 'fe dev', 'Marketing', '{\"start\":\"2021-08-30T17:00:00.000Z\",\"end\":\"2021-09-21T17:00:00.000Z\"}', '2021-08-31', '2021-09-22', 1000),
(12, 'QD12', 'hs5', '', 'dương văn e', 'fe dev', 'IT', '{\"start\":\"2021-08-17T17:00:00.000Z\",\"end\":\"2021-08-25T17:00:00.000Z\"}', '2021-08-18', '2021-08-26', 10000000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_increasesalary`
--

CREATE TABLE `tbl_increasesalary` (
  `ID` int(11) NOT NULL,
  `id_decision` varchar(10) NOT NULL,
  `id_staff` varchar(10) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `current` int(11) NOT NULL,
  `increase` int(11) NOT NULL,
  `content` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_increasesalary`
--

INSERT INTO `tbl_increasesalary` (`ID`, `id_decision`, `id_staff`, `fullName`, `position`, `department`, `time`, `current`, `increase`, `content`) VALUES
(1, 'qd1', 'nv1', 'nguyễn văn a', 'IT', 'fe dev', '2021-08-16', 1000, 1000000, '<p>sfdsdf</p>'),
(2, 'qd2', 'nv2', 'phạm văn b', 'IT', 'fe dev', '2021-08-10', 100000, 1000, '<p>lsdjf</p>'),
(3, 'qd3', 'nv2', 'phạm văn b', 'IT', 'fe dev', '2021-08-21', 101000, 4, '<p>sdfsf</p>'),
(4, 'qd5', 'nv2', 'phạm văn b', 'IT', 'fe dev', '2021-08-11', 101004, 4, '<p>sfsdf</p>'),
(5, 'qd7', 'nv2', 'phạm văn b', 'IT', 'fe dev', '2021-08-25', 101008, 2, '<p>sfdsdfs</p>'),
(6, 'qd8', 'nv3', 'dương văn e', 'IT', 'fe dev', '2021-08-11', 1000000, 1, '<p>sdfsd</p>'),
(7, 'qd123', 'nv1', 'nguyễn văn a', 'IT', 'fe dev', '2021-08-12', 1001000, 3, '<p>sdf</p>'),
(8, 'QD8', 'nv2', 'phạm văn b', 'IT', 'fe dev', '2021-08-27', 9999999, 1, '<p>sdf</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_insurance`
--

CREATE TABLE `tbl_insurance` (
  `ID` int(11) NOT NULL,
  `id_decision` varchar(10) NOT NULL,
  `id_insurance` varchar(10) NOT NULL,
  `id_staff` varchar(10) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `time` varchar(500) NOT NULL,
  `insurance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_insurance`
--

INSERT INTO `tbl_insurance` (`ID`, `id_decision`, `id_insurance`, `id_staff`, `fullName`, `position`, `department`, `time`, `insurance`) VALUES
(1, 'qd1', 'bh1', 'nv2', 'phạm văn b', 'fe dev', 'IT', '{\"start\":\"2021-08-17T17:00:00.000Z\",\"end\":\"2021-08-26T17:00:00.000Z\"}', 1000000),
(2, 'qd2', '', 'nv5', 'lê văn d', 'fe dev', 'IT', '{\"start\":\"2021-08-09T17:00:00.000Z\",\"end\":\"2021-08-30T17:00:00.000Z\"}', 100);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_interview`
--

CREATE TABLE `tbl_interview` (
  `ID` int(11) NOT NULL,
  `id_candidate` varchar(10) DEFAULT NULL,
  `fullName` varchar(500) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  `form` varchar(20) DEFAULT NULL,
  `noteSchedule` varchar(500) DEFAULT NULL,
  `interviewer` varchar(10) DEFAULT NULL,
  `expertise` int(11) DEFAULT NULL,
  `evaluate` varchar(500) DEFAULT NULL,
  `noteInterview` varchar(500) DEFAULT NULL,
  `approval` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_interview`
--

INSERT INTO `tbl_interview` (`ID`, `id_candidate`, `fullName`, `time`, `location`, `form`, `noteSchedule`, `interviewer`, `expertise`, `evaluate`, `noteInterview`, `approval`) VALUES
(1, 'hs1', 'Nguyễn Văn A', '2021-08-24', 'nguyễn chí thanh phường 9 quận 5', 'online', 'ghi chú', NULL, 10, 'dang gi', 'ghi chu', 'duyệt'),
(2, 'hs1', 'nguyễn văn a', '2021-08-03', 'nguyễn chí thanh phường 9 quận 5', 'online', 'ghi chú', NULL, 10, 'dang gi', 'ghi chu', 'duyệt'),
(3, 'hs2', 'phạm văn b', '2021-08-10', 'nguyễn chí thanh phường 9 quận 5', 'offline', 'ghi chú', NULL, 0, '', '', 'từ chối'),
(4, 'hs3', 'trần văn c', '2021-08-25', 'nguyễn chí thanh phường 9 quận 5', 'offline', 'ghi chú', NULL, 0, '', '', 'duyệt'),
(5, 'hs5', 'dương văn e', '2021-08-19', 'nguyễn chí thanh phường 9 quận 5', 'online', 'ghi chú', NULL, 12, 'ghi chu', 'sdf', 'duyệt'),
(6, 'hs4', 'lê văn d', '0000-00-00', 'nguyễn chí thanh phường 9 quận 5', 'offline', 'ghi chu', NULL, 0, '', '', 'duyệt'),
(7, 'hs4', 'lê văn d', '2021-08-02', 'nguyễn chí thanh phường 9 quận 5', 'online', 'ghi chu', NULL, 0, '', '', 'duyệt'),
(8, 'hs1', 'nguyễn văn a', '2021-08-17', 'nguyễn chí thanh phường 9 quận 5', 'offline', 'gjsdf', NULL, NULL, NULL, NULL, NULL),
(9, 'hs5', 'dương văn e', '2021-08-03', 'nguyễn chí thanh phường 9 quận 5', 'online', 'gjsf', NULL, 12, 'ghi chu', 'sdf', 'duyệt'),
(10, 'hs5', 'dương văn e', '2021-08-10', 'nguyễn chí thanh phường 9 quận 5', 'online', 'ghi chu', NULL, 12, 'ghi chu', 'sdf', 'duyệt'),
(11, 'hs2', 'phạm văn b', '2021-08-02', 'nguyễn chí thanh phường 9 quận 5', 'online', 'ghi chu', NULL, 0, '', '', 'từ chối'),
(12, 'hs4', 'lê văn d', '2021-08-17', 'nguyễn chí thanh phường 9 quận 5', 'offline', 'lsdj', NULL, NULL, NULL, NULL, NULL),
(13, 'hs3', 'trần văn c', '2021-08-31', 'nguyễn chí thanh phường 9 quận 5', 'online', 'ghi chu', NULL, 0, '', '', 'duyệt');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mission`
--

CREATE TABLE `tbl_mission` (
  `ID` int(11) NOT NULL,
  `id_dicision` varchar(10) NOT NULL,
  `id_staff` varchar(10) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `date_dicision` date NOT NULL,
  `cost` int(11) NOT NULL,
  `time` varchar(200) NOT NULL,
  `content` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mission`
--

INSERT INTO `tbl_mission` (`ID`, `id_dicision`, `id_staff`, `fullName`, `position`, `department`, `location`, `date_dicision`, `cost`, `time`, `content`) VALUES
(1, 'dl', 'nv1', 'nguyễn văn a', 'fe dev', 'IT', 'sdf', '2021-08-05', 10000, '{\"start\":\"10-08-2021\",\"end\":\"31-08-2021\"}', '<p>sdf</p>'),
(2, 'QD2', 'nv2', 'phạm văn b', 'fe dev', 'IT', 'lõc', '2021-08-20', 100000, '{\"start\":\"18-08-2021\",\"end\":\"31-08-2021\"}', '<p>noi dung</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_participate`
--

CREATE TABLE `tbl_participate` (
  `ID` int(11) NOT NULL,
  `id_staff` varchar(10) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `result` varchar(50) NOT NULL,
  `diligence` varchar(50) NOT NULL,
  `note` varchar(1000) NOT NULL,
  `evaluate` varchar(500) NOT NULL,
  `status` varchar(100) NOT NULL,
  `id_training` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `time` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_participate`
--

INSERT INTO `tbl_participate` (`ID`, `id_staff`, `fullName`, `position`, `department`, `result`, `diligence`, `note`, `evaluate`, `status`, `id_training`, `name`, `time`) VALUES
(1, 'nv1', 'nguyễn văn a', 'appoint', 'appoint', '20', 'tôt', 'tốt', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>C&aacute;c ti&ecirc;u ch&iacute; đ&aacute;nh gi&aacute;</th>\n<th>hệ số điểm</th>\n<th>số điểm</th>\n<th>Xếp loại</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>ti&ecirc;u ch&iacute; 1</td>\n<td>10</td>\n<td>10</td>\n<td>A</td>\n</tr>\n<tr>\n<td>ti&ecirc;u ch&iacute; 2</td>\n<td>10</td>\n<td>10</td>\n<td>A</td>\n</tr>\n</tbody>\n</table>', 'Hoàn thành', 'DT1', 'đào tạo 1', '24-08-2021 - 31-08-2021'),
(2, 'nv2', 'phạm văn b', 'fe dev', 'IT', '', '', '', '', '', 'DT1', 'đào tạo 1', '24-08-2021 - 31-08-2021'),
(3, 'nv3', 'dương văn e', 'fe dev', 'IT', '', '', '', '', '', 'DT1', 'đào tạo 1', '24-08-2021 - 31-08-2021'),
(4, 'nv4', 'trần văn c', 'fe dev', 'IT', '', '', '', '', '', 'DT1', 'đào tạo 1', '24-08-2021 - 31-08-2021'),
(5, 'nv5', 'lê văn d', 'fe dev', 'IT', '', '', '', '', '', 'DT1', 'đào tạo 1', '24-08-2021 - 31-08-2021'),
(6, '', 'lê văn d', 'fe dev', 'IT', '', '', '', '', '', 'DT1', 'đào tạo 1', '24-08-2021 - 31-08-2021'),
(7, '', 'lê văn d', 'fe dev', 'Marketing', '', '', '', '', '', 'DT1', 'đào tạo 1', '24-08-2021 - 31-08-2021'),
(8, 'nv3', 'dương văn e', 'fe dev', 'IT', '', '', '', '', '', 'DT1', 'đào tạo 1', '24-08-2021 - 31-08-2021'),
(9, '', 'dương văn e', 'fe dev', 'IT', '', '', '', '', '', 'DT1', 'đào tạo 1', '24-08-2021 - 31-08-2021');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recruitment`
--

CREATE TABLE `tbl_recruitment` (
  `ID` int(11) NOT NULL,
  `id_recruit` varchar(10) NOT NULL,
  `department` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `require` varchar(500) NOT NULL,
  `describe` varchar(500) NOT NULL,
  `amount` int(11) NOT NULL,
  `time` date NOT NULL,
  `location` varchar(100) NOT NULL,
  `benefit` varchar(500) NOT NULL,
  `approval` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_recruitment`
--

INSERT INTO `tbl_recruitment` (`ID`, `id_recruit`, `department`, `position`, `require`, `describe`, `amount`, `time`, `location`, `benefit`, `approval`) VALUES
(1, 'td1', 'IT', 'frontend dev', '<p>frontend</p>', '<p>m&ocirc; tả</p>', 10, '2021-08-18', 'HCM', '<p>quyền lợi</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resources`
--

CREATE TABLE `tbl_resources` (
  `ID` int(11) NOT NULL,
  `id_dicision` varchar(10) NOT NULL,
  `id_staff` varchar(10) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `time` date NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_resources`
--

INSERT INTO `tbl_resources` (`ID`, `id_dicision`, `id_staff`, `fullName`, `time`, `content`) VALUES
(1, 'qd1', 'nv2', 'phạm văn b', '2021-08-16', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>M&atilde; t&agrave;i nguy&ecirc;n</th>\n<th>T&ecirc;n t&agrave;i nguy&ecirc;n</th>\n<th>Số lượng</th>\n<th>T&igrave;nh trạng</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td class=\"test\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1</td>\n<td class=\"test\">1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n<td class=\"test\">1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n<td class=\"test\">1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n</tr>\n<tr>\n<td class=\"test\">2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n<td class=\"test\">2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n<td class=\"test\">2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n<td class=\"test\">2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n</tr>\n</tbody>\n</table>'),
(2, 'qd2', 'nv1', 'nguyễn văn a', '2021-08-22', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>M&atilde; t&agrave;i nguy&ecirc;n</th>\n<th>T&ecirc;n t&agrave;i nguy&ecirc;n</th>\n<th>Số lượng</th>\n<th>T&igrave;nh trạng</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td class=\"test\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1</td>\n<td class=\"test\">1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n<td class=\"test\">1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n<td class=\"test\">1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n</tr>\n<tr>\n<td class=\"test\">2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n<td class=\"test\">2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n<td class=\"test\">2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n<td class=\"test\">2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n</tr>\n</tbody>\n</table>'),
(3, 'qd4', 'nv4', 'trần văn c', '0000-00-00', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>M&atilde; t&agrave;i nguy&ecirc;n</th>\n<th>T&ecirc;n t&agrave;i nguy&ecirc;n</th>\n<th>Số lượng</th>\n<th>T&igrave;nh trạng</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td class=\"test\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1</td>\n<td class=\"test\">1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n<td class=\"test\">1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n<td class=\"test\">1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n</tr>\n<tr>\n<td class=\"test\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n<td class=\"test\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n<td class=\"test\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n<td class=\"test\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\n</tr>\n</tbody>\n</table>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reward`
--

CREATE TABLE `tbl_reward` (
  `ID` int(11) NOT NULL,
  `id_decision` varchar(10) NOT NULL,
  `id_staff` varchar(10) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `time` date NOT NULL,
  `money` int(11) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_reward`
--

INSERT INTO `tbl_reward` (`ID`, `id_decision`, `id_staff`, `fullName`, `position`, `department`, `time`, `money`, `content`) VALUES
(1, 'qd1', 'nv2', 'phạm văn b', 'fe dev', 'IT', '2021-08-06', 200, '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>khoản thưởng</th>\n<th>l&yacute; do khen thưởng</th>\n<th>mức thưởng</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>1</td>\n<td>100</td>\n</tr>\n<tr>\n<td>2</td>\n<td>2</td>\n<td>100</td>\n</tr>\n</tbody>\n</table>'),
(2, 'qd2', 'nv2', 'phạm văn b', 'fe dev', 'IT', '2021-08-26', 100, '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>khoản thưởng</th>\n<th>l&yacute; do khen thưởng</th>\n<th>mức thưởng</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>1</td>\n<td>100</td>\n</tr>\n</tbody>\n</table>'),
(3, 'QD3', 'nv1', 'nguyễn văn a', 'fe dev', 'IT', '2021-08-26', 200, '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>khoản thưởng</th>\n<th>l&yacute; do khen thưởng</th>\n<th>mức thưởng</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>1</td>\n<td>100</td>\n</tr>\n<tr>\n<td>1</td>\n<td>1</td>\n<td>100</td>\n</tr>\n</tbody>\n</table>'),
(4, 'QD4', 'nv1', 'nguyễn văn a', 'fe dev', 'IT', '2021-08-20', 100, '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>khoản thưởng</th>\n<th>l&yacute; do khen thưởng</th>\n<th>mức thưởng</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>1</td>\n<td>100</td>\n</tr>\n</tbody>\n</table>'),
(5, 'QD5', 'nv5', 'lê văn d', 'fe dev', 'IT', '2021-08-19', 100, '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>khoản thưởng</th>\n<th>l&yacute; do khen thưởng</th>\n<th>mức thưởng</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>1</td>\n<td>100</td>\n</tr>\n</tbody>\n</table>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary`
--

CREATE TABLE `tbl_salary` (
  `ID` int(11) NOT NULL,
  `id_staff` varchar(10) NOT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `coefficientSalary` float DEFAULT 1,
  `workDay` int(11) DEFAULT 0,
  `reward` int(11) DEFAULT 0,
  `subsidy` int(11) DEFAULT 0,
  `allowance` int(11) DEFAULT 0,
  `tax` float DEFAULT 0,
  `deduction` int(11) NOT NULL DEFAULT 0,
  `overtime` int(11) DEFAULT 0,
  `insurance` float DEFAULT 0,
  `advance` int(11) DEFAULT 0,
  `discipline` int(11) DEFAULT 0,
  `setKPI` float DEFAULT 0,
  `achieveKPI` float DEFAULT 0,
  `classification` float DEFAULT 0,
  `achieveSale` int(11) DEFAULT 0,
  `workDay_salary` int(11) NOT NULL DEFAULT 0,
  `KPI_salary` int(11) NOT NULL DEFAULT 0,
  `sale_salary` int(11) NOT NULL DEFAULT 0,
  `received` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_salary`
--

INSERT INTO `tbl_salary` (`ID`, `id_staff`, `fullName`, `position`, `department`, `salary`, `coefficientSalary`, `workDay`, `reward`, `subsidy`, `allowance`, `tax`, `deduction`, `overtime`, `insurance`, `advance`, `discipline`, `setKPI`, `achieveKPI`, `classification`, `achieveSale`, `workDay_salary`, `KPI_salary`, `sale_salary`, `received`) VALUES
(8, 'nv1', 'nguyễn văn a', 'fe dev', 'IT', 1001003, 2.34, 22, 300, 0, 0, 0, 0, 3, 0, 5029314, 0, 0.9, 0.8, 0.3, 200, 0, 2666667, 20000, 0),
(9, 'nv2', 'phạm văn b', 'fe dev', 'IT', 10000000, 2.34, 22, 300, 100, 100, 0.1, 100, 2, 1000000, 1096, 1357, 0.8, 0.2, 0.5, 400, 23687946, 1250000, 40000, 21319151),
(10, 'nv3', 'dương văn e', 'fe dev', 'IT', 1000001, 1, 22, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0.8, 0.2, 0.5, 400, 2290001, 1250000, 40000, 2290001),
(11, 'nv4', 'trần văn c', 'fe dev', 'IT', 1000000, 2.34, 22, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0.8, 0.2, 0.5, 400, 3630000, 1250000, 40000, 3630000),
(12, 'nv5', 'lê văn d', 'fe dev', 'IT', 100000, 1, 0, 100, 100, 100, 0.1, 100, 0, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0),
(13, '', 'lê văn d', 'fe dev', 'IT', 100000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, '', 'lê văn d', 'fe dev', 'IT', 100000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, '', 'lê văn d', 'fe dev', 'Marketing', 1000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, '', 'lê văn d', 'fe dev', 'IT', 100000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, '', 'lê văn d', 'fe dev', 'IT', 100000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, '', 'lê văn d', 'fe dev', 'Marketing', 1000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, '', 'dương văn e', 'fe dev', 'IT', 10000000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Triggers `tbl_salary`
--
DELIMITER $$
CREATE TRIGGER `trg_updateSalary` BEFORE UPDATE ON `tbl_salary` FOR EACH ROW BEGIN
    SET @WorkDay = (SELECT tbl_calculations.workDay FROM tbl_calculations);
    SET @KPI = (SELECT tbl_calculations.KPI FROM tbl_calculations);
    SET @Sale = (SELECT tbl_calculations.sale FROM tbl_calculations);
    SET @received = (SELECT tbl_calculations.received FROM tbl_calculations);

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schedule`
--

CREATE TABLE `tbl_schedule` (
  `ID` int(11) NOT NULL,
  `THOIGIAN` date NOT NULL,
  `DIADIEM` varchar(100) NOT NULL,
  `HINHTHUC` varchar(20) NOT NULL,
  `GHICHU` varchar(500) NOT NULL,
  `MANV` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

CREATE TABLE `tbl_staff` (
  `ID` int(11) NOT NULL,
  `id_staff` varchar(10) NOT NULL,
  `fullName` varchar(250) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `dateOfBirth` varchar(20) NOT NULL,
  `identityCard` varchar(20) DEFAULT NULL,
  `nation` varchar(50) DEFAULT NULL,
  `homeTown` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `health` varchar(100) DEFAULT NULL,
  `salary` int(11) NOT NULL,
  `coefficientSalary` float DEFAULT 1,
  `leaveDay` int(11) DEFAULT NULL,
  `education` varchar(100) NOT NULL,
  `languageSkill` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`ID`, `id_staff`, `fullName`, `sex`, `dateOfBirth`, `identityCard`, `nation`, `homeTown`, `email`, `phoneNumber`, `address`, `position`, `department`, `health`, `salary`, `coefficientSalary`, `leaveDay`, `education`, `languageSkill`, `image`, `status`) VALUES
(8, 'nv1', 'nguyễn văn a', 'nam', '2021-08-23', '123', 'kinh', 'bl', 'mail', '123', 'HCM', 'appoint', 'appoint', 'bthh', 1000, 2.34, 3, 'học vấn', 'ngoại ngữ', 'http://localhost:8080/hrm/HRM-BE/assets/image/1630244162-backup-driverWifi.png', 'chính thức'),
(9, 'nv2', 'phạm văn b', 'nam', '2021-08-08', '123', 'kinh', 'bl', 'email', '123', 'hcm', 'fe dev', 'IT', 'bth', 100000, 2.34, 3, 'học vấn ', 'nn', 'http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png', 'chính thức'),
(10, 'nv3', 'dương văn e', 'nam', '2021-08-08', NULL, NULL, NULL, 'email', '123', 'hcm', 'fe dev', 'IT', NULL, 1000000, 1, NULL, 'học vấn ', 'nn', '&amp;lt;a href=&amp;quot;http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png&amp;quot; title=&amp;quot;&amp;quot; target=&amp;quot;_blank&amp;quot; rel=&amp;quot;noopener noreferrer&amp;quot;&amp;gt;http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png&amp;lt;/a&amp;gt;', 'thử việc'),
(11, 'nv4', 'trần văn c', 'nam', '2021-08-08', '1234', 'kinh', 'que quan', 'email', '123', 'hcm', 'fe dev', 'IT', 'bth', 1000000, 2.34, 3, 'học vấn ', 'nn', '<a href=\"http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png\" title=\"\" target=\"_blank\" rel=\"noopener noreferrer\">http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png</a>', 'chính thức'),
(12, 'nv5', 'lê văn d', 'nam', '2021-08-08', NULL, NULL, NULL, 'email', '123', 'hcm', 'fe dev', 'IT', NULL, 100000, 1, NULL, 'học vấn ', 'nn', '<a href=\"http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png\" title=\"\" target=\"_blank\" rel=\"noopener noreferrer\">http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png</a>', 'chính thức'),
(13, '', 'lê văn d', 'nam', '2021-08-08', NULL, NULL, NULL, 'email', '123', 'hcm', 'fe dev', 'IT', NULL, 100000, 1, NULL, 'học vấn ', 'nn', '<a href=\"http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png\" title=\"\" target=\"_blank\" rel=\"noopener noreferrer\">http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png</a>', 'chính thức'),
(14, '', 'lê văn d', 'nam', '2021-08-08', NULL, NULL, NULL, 'email', '123', 'hcm', 'fe dev', 'Marketing', NULL, 1000, 1, NULL, 'học vấn ', 'nn', '<a href=\"http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png\" title=\"\" target=\"_blank\" rel=\"noopener noreferrer\">http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png</a>', 'chính thức'),
(16, 'nv3', 'dương văn e', 'nam', '2021-08-08', NULL, NULL, NULL, 'email', '123', 'hcm', 'fe dev', 'IT', NULL, 1000000, 1, NULL, 'học vấn ', 'nn', '&amp;lt;a href=&amp;quot;http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png&amp;quot; title=&amp;quot;&amp;quot; target=&amp;quot;_blank&amp;quot; rel=&amp;quot;noopener noreferrer&amp;quot;&amp;gt;http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png&amp;lt;/a&amp;gt;', 'thử việc'),
(17, '', 'dương văn e', 'nam', '2021-08-08', NULL, NULL, NULL, 'email', '123', 'hcm', 'fe dev', 'IT', NULL, 10000000, 1, NULL, 'học vấn ', 'nn', '&amp;lt;a href=&amp;quot;http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png&amp;quot; title=&amp;quot;&amp;quot; target=&amp;quot;_blank&amp;quot; rel=&amp;quot;noopener noreferrer&amp;quot;&amp;gt;http://localhost:8080/hrm/HRM-BE/assets/image/1630251792-backup-driverWifi.png&amp;lt;/a&amp;gt;', 'chính thức');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tax`
--

CREATE TABLE `tbl_tax` (
  `ID` int(11) NOT NULL,
  `id_decision` varchar(10) NOT NULL,
  `id_staff` varchar(10) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `time` date NOT NULL,
  `deduction` int(11) NOT NULL,
  `percent` double NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tax`
--

INSERT INTO `tbl_tax` (`ID`, `id_decision`, `id_staff`, `fullName`, `position`, `department`, `time`, `deduction`, `percent`, `content`) VALUES
(1, 'qd1', 'nv2', 'phạm văn b', 'fe dev', 'IT', '2021-08-11', 100, 0.1, '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>khoản giảm trừ</th>\n<th>mức giảm trừ</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>100</td>\n</tr>\n</tbody>\n</table>'),
(2, 'QD2', 'nv5', 'lê văn d', 'fe dev', 'IT', '2021-08-20', 100, 0.1, '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<thead>\n<tr>\n<th>khoản giảm trừ</th>\n<th>mức giảm trừ</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>1</td>\n<td>100</td>\n</tr>\n</tbody>\n</table>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_test`
--

CREATE TABLE `tbl_test` (
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timekeep_temp`
--

CREATE TABLE `tbl_timekeep_temp` (
  `ID` int(11) NOT NULL,
  `id_timeKeeping` varchar(10) NOT NULL,
  `id_staff` varchar(100) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `leaveDay` varchar(10) NOT NULL DEFAULT '0',
  `absent` varchar(10) NOT NULL DEFAULT '0',
  `holiday` varchar(10) NOT NULL DEFAULT '0',
  `mission` varchar(10) NOT NULL DEFAULT '0',
  `workDay` varchar(10) NOT NULL DEFAULT '0',
  `overtime` varchar(10) NOT NULL DEFAULT '0',
  `early` varchar(10) NOT NULL DEFAULT '0',
  `late` varchar(10) NOT NULL DEFAULT '0',
  `setKPI` varchar(100) DEFAULT '0',
  `achieveKPI` varchar(100) DEFAULT '0',
  `classification` float DEFAULT 0,
  `setSales` varchar(100) DEFAULT '0',
  `achieveSales` varchar(100) DEFAULT '0',
  `missingSales` varchar(100) DEFAULT '0',
  `exceedSales` varchar(100) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_timekeep_temp`
--

INSERT INTO `tbl_timekeep_temp` (`ID`, `id_timeKeeping`, `id_staff`, `fullName`, `position`, `department`, `leaveDay`, `absent`, `holiday`, `mission`, `workDay`, `overtime`, `early`, `late`, `setKPI`, `achieveKPI`, `classification`, `setSales`, `achieveSales`, `missingSales`, `exceedSales`) VALUES
(8, 'tk8', 'nv1', 'nguyễn văn a', 'fe dev', 'IT', '1', '2', '1', '21', '22', '3', '10', '10', '0.9', '0.8', 0.3, '1000', '200', '300', '400'),
(9, 'tk9', 'nv2', 'phạm văn b', 'fe dev', 'IT', '2', '3', '2', '13', '22', '2', '2', '2', '0.8', '0.2', 0.5, '2000', '400', '600', '800'),
(10, 'tk10', 'nv3', 'dương văn e', 'fe dev', 'IT', '', '2', '2', '0', '22', '2', '2', '2', '0.8', '0.2', 0.5, '2000', '400', '600', '800'),
(11, 'tk11', 'nv4', 'trần văn c', 'fe dev', 'IT', '3', '2', '2', '0', '22', '2', '2', '2', '0.8', '0.2', 0.5, '2000', '400', '600', '800'),
(12, 'tk12', '', 'lê văn d', 'fe dev', 'IT', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, '0', '0', '0', '0'),
(13, 'tk12', '', 'lê văn d', 'fe dev', 'IT', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, '0', '0', '0', '0'),
(14, 'tk13', '', 'lê văn d', 'fe dev', 'IT', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, '0', '0', '0', '0'),
(15, 'tk14', '', 'lê văn d', 'fe dev', 'Marketing', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, '0', '0', '0', '0'),
(16, 'tk12', '', 'lê văn d', 'fe dev', 'IT', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, '0', '0', '0', '0'),
(17, 'tk13', '', 'lê văn d', 'fe dev', 'IT', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, '0', '0', '0', '0'),
(18, 'tk14', '', 'lê văn d', 'fe dev', 'Marketing', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, '0', '0', '0', '0'),
(19, 'tk17', '', 'dương văn e', 'fe dev', 'IT', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_training`
--

CREATE TABLE `tbl_training` (
  `ID` int(11) NOT NULL,
  `id_training` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `time` varchar(200) NOT NULL,
  `location` varchar(250) NOT NULL,
  `trainers` varchar(100) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_training`
--

INSERT INTO `tbl_training` (`ID`, `id_training`, `name`, `time`, `location`, `trainers`, `content`, `status`) VALUES
(1, 'DT1', 'đào tạo 1', '24-08-2021 - 31-08-2021', 'HCM', 'pha', '<p>sldfjlsdkfjlsdf</p>', 'duyệt'),
(2, 'DT2', 'đào tạo 2', '11-08-2021 - 25-08-2021', 'HCM', 'pha', '<p>noi dung</p>', 'chờ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `ID` int(11) NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`ID`, `id_user`, `fullName`, `userName`, `password`, `role`) VALUES
(1, 'root', 'pham pha', 'manager', '1234', '0'),
(2, 'US1', 'salary', 'salary', '123', '2'),
(3, 'US2', 'recruiter', 'recruiter', '123', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_absent`
--
ALTER TABLE `tbl_absent`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_advance`
--
ALTER TABLE `tbl_advance`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_allowance`
--
ALTER TABLE `tbl_allowance`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_appoint`
--
ALTER TABLE `tbl_appoint`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_calculations`
--
ALTER TABLE `tbl_calculations`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_cancel_contract`
--
ALTER TABLE `tbl_cancel_contract`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_candidate`
--
ALTER TABLE `tbl_candidate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_contract`
--
ALTER TABLE `tbl_contract`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_discipline`
--
ALTER TABLE `tbl_discipline`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_hiring`
--
ALTER TABLE `tbl_hiring`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_increasesalary`
--
ALTER TABLE `tbl_increasesalary`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_insurance`
--
ALTER TABLE `tbl_insurance`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_interview`
--
ALTER TABLE `tbl_interview`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_mission`
--
ALTER TABLE `tbl_mission`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_participate`
--
ALTER TABLE `tbl_participate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_recruitment`
--
ALTER TABLE `tbl_recruitment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_resources`
--
ALTER TABLE `tbl_resources`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_reward`
--
ALTER TABLE `tbl_reward`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_salary`
--
ALTER TABLE `tbl_salary`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_tax`
--
ALTER TABLE `tbl_tax`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_test`
--
ALTER TABLE `tbl_test`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_timekeep_temp`
--
ALTER TABLE `tbl_timekeep_temp`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_training`
--
ALTER TABLE `tbl_training`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_absent`
--
ALTER TABLE `tbl_absent`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_advance`
--
ALTER TABLE `tbl_advance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_allowance`
--
ALTER TABLE `tbl_allowance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_appoint`
--
ALTER TABLE `tbl_appoint`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_calculations`
--
ALTER TABLE `tbl_calculations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_cancel_contract`
--
ALTER TABLE `tbl_cancel_contract`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_candidate`
--
ALTER TABLE `tbl_candidate`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_contract`
--
ALTER TABLE `tbl_contract`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_discipline`
--
ALTER TABLE `tbl_discipline`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_hiring`
--
ALTER TABLE `tbl_hiring`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_increasesalary`
--
ALTER TABLE `tbl_increasesalary`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_insurance`
--
ALTER TABLE `tbl_insurance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_interview`
--
ALTER TABLE `tbl_interview`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_mission`
--
ALTER TABLE `tbl_mission`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_participate`
--
ALTER TABLE `tbl_participate`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_recruitment`
--
ALTER TABLE `tbl_recruitment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_resources`
--
ALTER TABLE `tbl_resources`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_reward`
--
ALTER TABLE `tbl_reward`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_salary`
--
ALTER TABLE `tbl_salary`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_tax`
--
ALTER TABLE `tbl_tax`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_test`
--
ALTER TABLE `tbl_test`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_timekeep_temp`
--
ALTER TABLE `tbl_timekeep_temp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_training`
--
ALTER TABLE `tbl_training`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
