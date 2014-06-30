-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jun 30, 2014 at 12:15 PM
-- Server version: 5.5.29
-- PHP Version: 5.4.11

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dienthoai`
--

CREATE TABLE IF NOT EXISTS `dienthoai` (
  `madienthoai` int(11) NOT NULL AUTO_INCREMENT,
  `tendienthoai` varchar(45) NOT NULL,
  `mahinhdaidien` int(11) DEFAULT NULL,
  `mahangsx` int(11) NOT NULL,
  `mahedieuhanh` int(11) NOT NULL,
  `soluong` int(11) unsigned zerofill NOT NULL,
  `gia` int(11) unsigned zerofill NOT NULL,
  `mausac` varchar(45) DEFAULT NULL,
  `thongtinthem` text,
  `hienthi` tinyint(4) NOT NULL,
  `ngaythemvao` datetime DEFAULT NULL,
  `sanphamnoibat` tinyint(4) DEFAULT NULL,
  `chitiet` text,
  PRIMARY KEY (`madienthoai`),
  KEY `fk_dienthoai_hangsx1_idx` (`mahangsx`),
  KEY `fk_dienthoai_hedieuhanh1_idx` (`mahedieuhanh`),
  KEY `fk_dienthoai_hinhanh1_idx` (`mahinhdaidien`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `dienthoai`
--

INSERT INTO `dienthoai` (`madienthoai`, `tendienthoai`, `mahinhdaidien`, `mahangsx`, `mahedieuhanh`, `soluong`, `gia`, `mausac`, `thongtinthem`, `hienthi`, `ngaythemvao`, `sanphamnoibat`, `chitiet`) VALUES
(3, 'iphone 5s', 1, 1, 1, 00000000001, 00015000000, NULL, NULL, 1, NULL, NULL, NULL),
(7, 'Samsung Galaxy S5', 2, 3, 2, 00000000000, 00012000000, NULL, NULL, 0, NULL, NULL, NULL),
(11, 'Samsung Galaxy Note 3', 3, 3, 2, 00000000000, 00015000000, NULL, NULL, 0, NULL, NULL, '{\n  "general": [\n    {\n      "Loại máy": "Điện thoại",\n      "Nhà sản xuất": "Samsung"\n    }\n  ],\n  "screen": [\n    {\n      "Loại màn hình": "Super AMOLED",\n      "Kích thước": "5.7 inch",\n      "Độ phân giải": "1080 x 1920"\n    }\n  ],\n  "sound": [\n    {}\n  ],\n  "memory": [\n    {}\n  ],\n  "connection": [\n    {}\n  ]\n}');

-- --------------------------------------------------------

--
-- Table structure for table `hangsx`
--

CREATE TABLE IF NOT EXISTS `hangsx` (
  `mahangsx` int(11) NOT NULL AUTO_INCREMENT,
  `tenhangsx` varchar(45) NOT NULL,
  `mahinhdaidien` int(11) DEFAULT NULL,
  PRIMARY KEY (`mahangsx`),
  KEY `fk_hangsx_hinhanh1_idx` (`mahinhdaidien`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `hangsx`
--

INSERT INTO `hangsx` (`mahangsx`, `tenhangsx`, `mahinhdaidien`) VALUES
(1, 'Apple', NULL),
(2, 'Nokia', NULL),
(3, 'Samsung', NULL),
(4, 'HTC', NULL),
(5, 'Blackberry', NULL),
(6, 'LG', NULL),
(7, 'Oppo', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hedieuhanh`
--

CREATE TABLE IF NOT EXISTS `hedieuhanh` (
  `mahedieuhanh` int(11) NOT NULL AUTO_INCREMENT,
  `tenhedieuhanh` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mahedieuhanh`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `hedieuhanh`
--

INSERT INTO `hedieuhanh` (`mahedieuhanh`, `tenhedieuhanh`) VALUES
(1, 'IOS'),
(2, 'Android'),
(3, 'Windows Phone'),
(4, 'Blackberry'),
(5, 'LG');

-- --------------------------------------------------------

--
-- Table structure for table `hinhanh`
--

CREATE TABLE IF NOT EXISTS `hinhanh` (
  `mahinhanh` int(11) NOT NULL AUTO_INCREMENT,
  `duongdan` varchar(1024) DEFAULT NULL,
  `chuthich` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`mahinhanh`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `hinhanh`
--

INSERT INTO `hinhanh` (`mahinhanh`, `duongdan`, `chuthich`) VALUES
(1, 'images/apple-iphone-5s-ofic.jpg', NULL),
(2, 'images/samsung-galaxy-s5b-800x600.jpg', NULL),
(3, 'images/b0a0ed26-42f1-4eab-b730-27b845906e14_dien-thoai-samsung-galaxy-note-3-white.jpg', NULL),
(4, 'images/tumblr_n6afqqGCvQ1rlxc3wo1_1280.jpg', NULL),
(6, 'images/Samsung-Galaxy-Note-3-02.jpg', NULL),
(7, 'images/Samsung-Galaxy-Note-3-03.jpg', NULL),
(8, 'images/Samsung-Galaxy-Note-3-05.jpg', NULL),
(9, 'images/Samsung-Galaxy-Note-3-06.jpg', NULL),
(10, 'images/Samsung-Galaxy-Note-3-08.jpg', NULL),
(11, 'images/Samsung-Galaxy-Note-3-09.jpg', NULL),
(12, 'images/Samsung-Galaxy-Note-3-10.jpg', NULL),
(13, 'images/Samsung-Galaxy-Note-3-11.jpg', NULL),
(14, 'images/Samsung-Galaxy-Note-3-12.jpg', NULL),
(15, 'images/Samsung-Galaxy-Note-3-13.jpg', NULL),
(16, 'images/Samsung-Galaxy-Note-3-14.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hinhanhdienthoai`
--

CREATE TABLE IF NOT EXISTS `hinhanhdienthoai` (
  `madienthoai` int(11) NOT NULL,
  `mahinhanh` int(11) NOT NULL,
  PRIMARY KEY (`madienthoai`,`mahinhanh`),
  KEY `fk_dienthoai_has_hinhanh_hinhanh1_idx` (`mahinhanh`),
  KEY `fk_dienthoai_has_hinhanh_dienthoai1_idx` (`madienthoai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hinhanhdienthoai`
--

INSERT INTO `hinhanhdienthoai` (`madienthoai`, `mahinhanh`) VALUES
(11, 6),
(11, 7),
(11, 8),
(11, 9),
(11, 10),
(11, 11),
(11, 12),
(11, 13),
(11, 14),
(11, 15),
(11, 16);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE IF NOT EXISTS `taikhoan` (
  `mataikhoan` int(11) NOT NULL AUTO_INCREMENT,
  `tentaikhoan` varchar(45) NOT NULL,
  `matkhau` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(45) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mataikhoan`,`tentaikhoan`,`email`),
  UNIQUE KEY `tentaikhoan_UNIQUE` (`tentaikhoan`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`mataikhoan`, `tentaikhoan`, `matkhau`, `email`, `role`, `firstname`, `lastname`) VALUES
(1, 'Admin', '111111', 'xmen.exe@gmail.com', 'admin', 'Hieu', 'Le Minh'),
(2, 'user1', '111111', 'hieulm@live.com', 'user', 'Foo', 'Bar'),
(12, 'abc', '123567', 'txa@gmail.com', 'user', '', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD CONSTRAINT `fk_dienthoai_hangsx1` FOREIGN KEY (`mahangsx`) REFERENCES `hangsx` (`mahangsx`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_dienthoai_hedieuhanh1` FOREIGN KEY (`mahedieuhanh`) REFERENCES `hedieuhanh` (`mahedieuhanh`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_dienthoai_hinhanh1` FOREIGN KEY (`mahinhdaidien`) REFERENCES `hinhanh` (`mahinhanh`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `hangsx`
--
ALTER TABLE `hangsx`
  ADD CONSTRAINT `fk_hangsx_hinhanh1` FOREIGN KEY (`mahinhdaidien`) REFERENCES `hinhanh` (`mahinhanh`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `hinhanhdienthoai`
--
ALTER TABLE `hinhanhdienthoai`
  ADD CONSTRAINT `fk_dienthoai_has_hinhanh_dienthoai1` FOREIGN KEY (`madienthoai`) REFERENCES `dienthoai` (`madienthoai`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dienthoai_has_hinhanh_hinhanh1` FOREIGN KEY (`mahinhanh`) REFERENCES `hinhanh` (`mahinhanh`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
