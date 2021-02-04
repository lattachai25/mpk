-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 04, 2021 at 09:57 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mpk`
--
CREATE DATABASE IF NOT EXISTS `mpk` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mpk`;

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `img_top` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `img_people` varchar(250) NOT NULL,
  `people_name` varchar(250) NOT NULL,
  `people_detel` text NOT NULL,
  `img_center_left` varchar(250) NOT NULL,
  `content_center_left` text NOT NULL,
  `img_center_right` varchar(250) NOT NULL,
  `content_center_right` text NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `img_top`, `content`, `img_people`, `people_name`, `people_detel`, `img_center_left`, `content_center_left`, `img_center_right`, `content_center_right`, `status`) VALUES
(1, '4b61d-bg_03_1.png', '<div>\n	เราคือศุนย์นำเข้าและจำหน่ายอุปกรณ์แต่งรถมอเตอร์ไซต์</div>\n<div>\n	SUPERBIKE อย่างเป็นทางการ ทั้งปลีกและส่งจากหลากหลาย</div>\n<div>\n	แบรนด์ชั้นนำทั่วโลก สำหรับรถ DUCATI, BMW, TRIUMPH, &nbsp;</div>\n<div>\n	HONDA, KAWASAKI, SUZUKI และอื่นๆ รวมถึงการให้บริการ\n	<div>\n		ดูแลรถแบบ ONE STOP SERVICE</div>\n</div>\n<p>\n	&nbsp;</p>\n', '508ce-img-man.png', 'คุณอาทิตย์ มนัสภากร', '<p>\n	หรือในวงการ SUPERBIKE เรียกกันว่า <span> &quot;พี่โจ๊ก MPK&quot; </span><br />\n	ผู้ก่อตั้งบริษัท MPKCONCEPT ตั้งแต่ปี 2005<br />\n	ด้วยความชื่นชอบและหลงใหลในเสน่ห์ ของรถ<br />\n	SUPERBIKE มาตั้งแต่เด็ก พร้อมคติที่ว่า<br />\n	&ldquo;MPK CONCEPT ไม่ใช่แค่ธุรกิจ แต่เป็นที่ที่ทำให้<br />\n	คนซึ่งหลงใหล ในสิ่งเดียวกันมาเจอกัน&rdquo;</p>\n', 'c5003-bg_03_1.png', '<div>\n	ด้วยความตั้งใจที่อยากให้ทุกคนได้ใช้สินค้า</div>\n<div>\n	ของแท้ที่มีคุณภาพ และได้รับข้อมูลเกี่ยวกับ</div>\n<div>\n	การแต่งรถที่ถูกต้อง เราจึงได้ทดลองสินค้า</div>\n<div>\n	ใหม่ๆ โดยการประกอบเข้ากับตัวรถและศึกษา</div>\n<div>\n	รายละเอียดข้อดีข้อเสียของสินค้าเพื่อที่จะ</div>\n<div>\n	สามารถแนะนำสินค้าให้ลูกค้าได้อย่างรู้จริงง</div>\n', '5711b-bg_03_1.png', '<div>\n	มากกว่านั้นคือเราจะไม่หยุดพัฒนา</div>\n<div>\n	เพื่อยกระดับคุณภาพการให้บริการให้ดียิ่งขึ้น</div>\n<div>\n	&quot;เพราะการสร้างประสบการณ์ที่ดี</div>\n<div>\n	สำหรับคุณ สำคัญสำหรับเรา&quot;</div>\n', '1');

-- --------------------------------------------------------

--
-- Table structure for table `best_seller`
--

CREATE TABLE `best_seller` (
  `best_seller_id` int(10) NOT NULL,
  `img1` varchar(250) NOT NULL,
  `img2` varchar(250) NOT NULL,
  `img3` varchar(250) NOT NULL,
  `img4` varchar(250) NOT NULL,
  `brand` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL,
  `discount_price` varchar(250) NOT NULL,
  `detail` text NOT NULL,
  `color` varchar(250) NOT NULL,
  `quality` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `best_seller`
--

INSERT INTO `best_seller` (`best_seller_id`, `img1`, `img2`, `img3`, `img4`, `brand`, `name`, `price`, `discount_price`, `detail`, `color`, `quality`, `date`, `status`) VALUES
(1, '7240d-1.png', '14507-2.png', '9b96a-3.png', '42f03-4.png', 2, 'admin', '1,234', '2,300', '', '3', '10', '2021-02-03', 1),
(2, 'd6689-2.png', '8a76c-1.png', '4ee04-3.png', 'd2aef-4.png', 2, 'admin', '1,234', '2,300', '', '3', '10', '2021-02-03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bike_for_sell`
--

CREATE TABLE `bike_for_sell` (
  `id` int(10) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `model` varchar(250) NOT NULL,
  `prict` varchar(250) NOT NULL,
  `discount` varchar(250) NOT NULL,
  `descripion` text NOT NULL,
  `img1` varchar(250) NOT NULL,
  `img2` varchar(250) NOT NULL,
  `img3` varchar(250) NOT NULL,
  `img4` varchar(250) NOT NULL,
  `img5` varchar(250) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bike_for_sell`
--

INSERT INTO `bike_for_sell` (`id`, `brand`, `model`, `prict`, `discount`, `descripion`, `img1`, `img2`, `img3`, `img4`, `img5`, `date`) VALUES
(1, '2', '7', '12,345', '2,345', '<div style=\"box-sizing: border-box; color: rgb(99, 107, 111); background-color: rgb(255, 255, 255); font-size: 18px; font-family: RSU; font-weight: bold;\">\n	Panigale V4S ปี 2018 V4S มือสองพร้อมท่อ Full Akrapovic<br style=\"box-sizing: border-box;\" />\n	สภาพสวยเนี๊ยบเหมือนเพิ่งออกจากศูนย์พร้อมของแต่ง<br style=\"box-sizing: border-box;\" />\n	วิ่งน้อยมากแค่ 2,542 km แถมประกันชั้น 1</div>\n<p>\n	&nbsp;</p>\n<div style=\"box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(255, 102, 52); font-weight: bold; font-size: 20px; font-family: RSU;\">\n	SALE จาก 990,000฿ เหลือเพียง 899,999฿</div>\n<p>\n	&nbsp;</p>\n<div style=\"box-sizing: border-box; color: rgb(99, 107, 111); background-color: rgb(255, 255, 255); font-size: 18px; font-family: RSU; font-weight: bold;\">\n	คุ้มมากมีประกันชั้น 1 (หมด 30/7/2020 FPG)<br style=\"box-sizing: border-box;\" />\n	รถศูนย์ ไม่มีประวัติ ล้ม ชน แปะ มั่นใจตรวจสอบได้<br style=\"box-sizing: border-box;\" />\n	ราคาพิเศษมาพร้อมของแต่งติดรถแบรนด์แท้เท่านั้น<br style=\"box-sizing: border-box;\" />\n	<br style=\"box-sizing: border-box;\" />\n	&nbsp; &nbsp; &nbsp; - ท่อ Full Akrapovic ของแท้<br style=\"box-sizing: border-box;\" />\n	&nbsp; &nbsp; &nbsp; - ท้ายสั้นพร้อมไฟเลี้ยว Nrc racing<br style=\"box-sizing: border-box;\" />\n	&nbsp; &nbsp; &nbsp; - ปิดใต้ถัง Evotech<br style=\"box-sizing: border-box;\" />\n	&nbsp; &nbsp; &nbsp; - ชุดแต่งบังหม้อน้ำ Evotech<br style=\"box-sizing: border-box;\" />\n	&nbsp; &nbsp; &nbsp; - กันล้มหน้า Evotech</div>\n', '9907d-1.png', 'cf008-2.png', '4d411-3.png', '003ce-4.png', '5ffdf-5.png', '2020-12-12'),
(2, '1', '1', '12,345', '23,457', '<div style=\"box-sizing: border-box; color: rgb(99, 107, 111); background-color: rgb(255, 255, 255); font-size: 18px; font-family: RSU; font-weight: bold;\">\n	Panigale V4S ปี 2018 V4S มือสองพร้อมท่อ Full Akrapovic<br style=\"box-sizing: border-box;\" />\n	สภาพสวยเนี๊ยบเหมือนเพิ่งออกจากศูนย์พร้อมของแต่ง<br style=\"box-sizing: border-box;\" />\n	วิ่งน้อยมากแค่ 2,542 km แถมประกันชั้น 1</div>\n<p>\n	&nbsp;</p>\n<div style=\"box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(255, 102, 52); font-weight: bold; font-size: 20px; font-family: RSU;\">\n	SALE จาก 990,000฿ เหลือเพียง 899,999฿</div>\n<p>\n	&nbsp;</p>\n<div style=\"box-sizing: border-box; color: rgb(99, 107, 111); background-color: rgb(255, 255, 255); font-size: 18px; font-family: RSU; font-weight: bold;\">\n	คุ้มมากมีประกันชั้น 1 (หมด 30/7/2020 FPG)<br style=\"box-sizing: border-box;\" />\n	รถศูนย์ ไม่มีประวัติ ล้ม ชน แปะ มั่นใจตรวจสอบได้<br style=\"box-sizing: border-box;\" />\n	ราคาพิเศษมาพร้อมของแต่งติดรถแบรนด์แท้เท่านั้น<br style=\"box-sizing: border-box;\" />\n	<br style=\"box-sizing: border-box;\" />\n	&nbsp; &nbsp; &nbsp; - ท่อ Full Akrapovic ของแท้<br style=\"box-sizing: border-box;\" />\n	&nbsp; &nbsp; &nbsp; - ท้ายสั้นพร้อมไฟเลี้ยว Nrc racing<br style=\"box-sizing: border-box;\" />\n	&nbsp; &nbsp; &nbsp; - ปิดใต้ถัง Evotech<br style=\"box-sizing: border-box;\" />\n	&nbsp; &nbsp; &nbsp; - ชุดแต่งบังหม้อน้ำ Evotech<br style=\"box-sizing: border-box;\" />\n	&nbsp; &nbsp; &nbsp; - กันล้มหน้า Evotech</div>\n', '8bee3-bike_03.png', '27c0a-2.png', '6ea8f-3.png', '1cd23-4.png', '87ed8-5.png', '2020-12-13'),
(3, '3', '3', '214,141', '43,534', '<div style=\"box-sizing: border-box; color: rgb(99, 107, 111); background-color: rgb(255, 255, 255); font-size: 18px; font-family: RSU; font-weight: bold;\">\n	Panigale V4S ปี 2018 V4S มือสองพร้อมท่อ Full Akrapovic<br style=\"box-sizing: border-box;\" />\n	สภาพสวยเนี๊ยบเหมือนเพิ่งออกจากศูนย์พร้อมของแต่ง<br style=\"box-sizing: border-box;\" />\n	วิ่งน้อยมากแค่ 2,542 km แถมประกันชั้น 1</div>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(99, 107, 111); font-family: helvetica, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">\n	&nbsp;</p>\n<div style=\"box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(255, 102, 52); font-weight: bold; font-size: 20px; font-family: RSU;\">\n	SALE จาก 990,000฿ เหลือเพียง 899,999฿</div>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(99, 107, 111); font-family: helvetica, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">\n	&nbsp;</p>\n<div style=\"box-sizing: border-box; color: rgb(99, 107, 111); background-color: rgb(255, 255, 255); font-size: 18px; font-family: RSU; font-weight: bold;\">\n	คุ้มมากมีประกันชั้น 1 (หมด 30/7/2020 FPG)<br style=\"box-sizing: border-box;\" />\n	รถศูนย์ ไม่มีประวัติ ล้ม ชน แปะ มั่นใจตรวจสอบได้<br style=\"box-sizing: border-box;\" />\n	ราคาพิเศษมาพร้อมของแต่งติดรถแบรนด์แท้เท่านั้น<br style=\"box-sizing: border-box;\" />\n	<br style=\"box-sizing: border-box;\" />\n	&nbsp; &nbsp; &nbsp; - ท่อ Full Akrapovic ของแท้<br style=\"box-sizing: border-box;\" />\n	&nbsp; &nbsp; &nbsp; - ท้ายสั้นพร้อมไฟเลี้ยว Nrc racing<br style=\"box-sizing: border-box;\" />\n	&nbsp; &nbsp; &nbsp; - ปิดใต้ถัง Evotech<br style=\"box-sizing: border-box;\" />\n	&nbsp; &nbsp; &nbsp; - ชุดแต่งบังหม้อน้ำ Evotech<br style=\"box-sizing: border-box;\" />\n	&nbsp; &nbsp; &nbsp; - กันล้มหน้า Evotech</div>\n', 'bab30-bike_01.png', '7339d-bike_01.png', '15c51-bike_01.png', '9357d-bike_01.png', '49d00-bike_01.png', '2020-12-14'),
(4, '17', '5', '5,765', '10,000', '<div style=\"box-sizing: border-box; color: rgb(99, 107, 111); background-color: rgb(255, 255, 255); font-size: 18px; font-family: RSU; font-weight: bold;\">\n	Panigale V4S ปี 2018 V4S มือสองพร้อมท่อ Full Akrapovic<br style=\"box-sizing: border-box;\" />\n	สภาพสวยเนี๊ยบเหมือนเพิ่งออกจากศูนย์พร้อมของแต่ง<br style=\"box-sizing: border-box;\" />\n	วิ่งน้อยมากแค่ 2,542 km แถมประกันชั้น 1</div>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(99, 107, 111); font-family: helvetica, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">\n	&nbsp;</p>\n<div style=\"box-sizing: border-box; background-color: rgb(255, 255, 255); color: rgb(255, 102, 52); font-weight: bold; font-size: 20px; font-family: RSU;\">\n	SALE จาก 990,000฿ เหลือเพียง 899,999฿</div>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(99, 107, 111); font-family: helvetica, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">\n	&nbsp;</p>\n<div style=\"box-sizing: border-box; color: rgb(99, 107, 111); background-color: rgb(255, 255, 255); font-size: 18px; font-family: RSU; font-weight: bold;\">\n	คุ้มมากมีประกันชั้น 1 (หมด 30/7/2020 FPG)<br style=\"box-sizing: border-box;\" />\n	รถศูนย์ ไม่มีประวัติ ล้ม ชน แปะ มั่นใจตรวจสอบได้<br style=\"box-sizing: border-box;\" />\n	ราคาพิเศษมาพร้อมของแต่งติดรถแบรนด์แท้เท่านั้น<br style=\"box-sizing: border-box;\" />\n	<br style=\"box-sizing: border-box;\" />\n	&nbsp; &nbsp; &nbsp; - ท่อ Full Akrapovic ของแท้<br style=\"box-sizing: border-box;\" />\n	&nbsp; &nbsp; &nbsp; - ท้ายสั้นพร้อมไฟเลี้ยว Nrc racing<br style=\"box-sizing: border-box;\" />\n	&nbsp; &nbsp; &nbsp; - ปิดใต้ถัง Evotech<br style=\"box-sizing: border-box;\" />\n	&nbsp; &nbsp; &nbsp; - ชุดแต่งบังหม้อน้ำ Evotech<br style=\"box-sizing: border-box;\" />\n	&nbsp; &nbsp; &nbsp; - กันล้มหน้า Evotech</div>\n', '09a80-bike_04.png', '5b0a9-bike_04.png', '306cf-bike_04.png', '28444-bike_04.png', '96bf5-bike_04.png', '2020-12-14'),
(5, '6', '1', '424214214', '1111', '<p>\n	2192194u21n4oun21o4821i4</p>\n', 'bf292-1.png', 'b2d53-1.png', '0511e-1.png', '0c371-1.png', '39ab2-1.png', '2020-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'ADG'),
(2, 'Aella'),
(3, 'Alpha Racing'),
(4, 'Austin Racing'),
(5, 'Bonamici'),
(6, 'Brembo'),
(7, 'CNC RACING'),
(8, 'Delight'),
(9, 'Desmoworld'),
(10, 'Dinavolt'),
(11, 'DP'),
(12, 'Far'),
(13, 'Futurismoto'),
(14, 'GB Racing'),
(15, 'GIAMOTO'),
(16, 'Hex escan'),
(17, 'Jetprime'),
(18, 'Kellermann'),
(19, 'Kohken'),
(20, 'Luimoto'),
(21, 'Magical Racing'),
(22, 'Motogadget'),
(23, 'Motul'),
(24, 'MPK'),
(25, 'MRA'),
(26, 'Nexzter'),
(27, 'NRC'),
(28, 'Optimate'),
(29, 'PVM'),
(30, 'Rizoma'),
(31, 'RK CHAIN'),
(32, 'STM Rock'),
(33, 'Suter'),
(34, 'Woodcraft'),
(35, 'Yuasa');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int(10) NOT NULL,
  `name_color` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `name_color`) VALUES
(1, 'Red'),
(2, 'Black'),
(3, 'Gold'),
(4, 'Silver');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `map_url` varchar(255) NOT NULL,
  `content_link` text NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `img_product` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `img_product`, `status`) VALUES
(1, '4f865-head.png', '1');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_category`
--

CREATE TABLE `gallery_category` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_img_head`
--

CREATE TABLE `gallery_img_head` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery_img_head`
--

INSERT INTO `gallery_img_head` (`id`, `img`, `status`) VALUES
(1, '734f6-head.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_img_logo`
--

CREATE TABLE `gallery_img_logo` (
  `id` int(11) NOT NULL,
  `img_logo` varchar(250) NOT NULL,
  `name_brand` varchar(250) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery_img_logo`
--

INSERT INTO `gallery_img_logo` (`id`, `img_logo`, `name_brand`, `status`) VALUES
(8, 'ccb7c-bmw.png', 'BMW', '1'),
(9, '2b600-ducati.png', 'Ducati', '1'),
(10, '844ce-honda.png', 'Honda', '1'),
(11, '3be13-kawasaki.png', 'Kawasaki', '1'),
(12, '44379-norton.png', 'Norton', '1'),
(13, '52c8e-suzuki.png', 'Suzuki', '1');

-- --------------------------------------------------------

--
-- Table structure for table `homebike`
--

CREATE TABLE `homebike` (
  `id` int(11) NOT NULL,
  `img_logo` text NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `homeplaylist`
--

CREATE TABLE `homeplaylist` (
  `id` int(11) NOT NULL,
  `link_vdo` varchar(255) NOT NULL,
  `Model` varchar(250) NOT NULL,
  `img_bg` varchar(250) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `homeplaylist`
--

INSERT INTO `homeplaylist` (`id`, `link_vdo`, `Model`, `img_bg`, `status`) VALUES
(1, 'https://www.youtube.com/watch?v=Ygr4oV0Egc0', 'S1000RR 2020 ', '19b9e-bg_play.png', '1');

-- --------------------------------------------------------

--
-- Table structure for table `homeslide`
--

CREATE TABLE `homeslide` (
  `id` int(11) NOT NULL,
  `img_slide` text NOT NULL,
  `content` text NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `homeslide`
--

INSERT INTO `homeslide` (`id`, `img_slide`, `content`, `status`) VALUES
(1, '7a789-slidebanner.jpg', '<p>\n	The Ultimate Race</p>\n', '1'),
(2, '11b49-slide_banner_n02.jpg', '<p>\n	The Ultimate By MPK</p>\n', '0');

-- --------------------------------------------------------

--
-- Table structure for table `main_category`
--

CREATE TABLE `main_category` (
  `category_id` int(10) NOT NULL,
  `Name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `main_category`
--

INSERT INTO `main_category` (`category_id`, `Name`) VALUES
(1, 'Brake System'),
(2, 'Battery\r\n'),
(3, 'Bike Stand Support'),
(4, 'Brake'),
(5, 'Brake/Clutch Fluid Caps'),
(6, 'Brake/Clutch Lever'),
(7, 'Caps Bleed'),
(8, 'Chain'),
(9, 'Clutch Slave Cylinder'),
(10, 'Engine Oil'),
(11, 'Fluid Tank'),
(12, 'Frame Hole Cap'),
(13, 'Gas Cap'),
(14, 'Grip'),
(15, 'Grips'),
(16, 'Handlebar'),
(17, 'Handlebar Cap'),
(18, 'Handlebar End Cap'),
(19, 'Heel Guard'),
(20, 'Indicator Light'),
(21, 'Mirror'),
(22, 'Oil Filler Cap'),
(23, 'Optimate'),
(24, 'Pegs'),
(25, 'Proguard'),
(26, 'Riser'),
(27, 'Stand'),
(28, 'Tank Cap Exspansion Tank Radiator'),
(29, 'Timing Inspection Cover'),
(30, 'Wheel Valve Caps');

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`id`, `name`) VALUES
(2, 'Monster821'),
(3, 'R1200GS'),
(4, 'R9T'),
(5, 'MTS'),
(6, 'CBR600RR'),
(7, 'S1000RR\'15'),
(8, 'TMAX530'),
(9, '1199'),
(10, 'C600/C650'),
(11, 'BMW'),
(12, 'Hypermotard 796/1100'),
(13, 'Hypermotard 821'),
(14, 'DUCATI'),
(15, 'Z1000'),
(16, 'Z800'),
(17, 'R9T/ R1200GS'),
(18, 'Z800 Z1000 '),
(19, 'S1000RR'),
(20, 'DIAVEL'),
(21, 'Streetfighter'),
(22, 'monster696/796/1100'),
(23, 'R1-09'),
(24, 'Monster'),
(25, 'Street fighter'),
(26, 'Hyper821/MTS'),
(27, ' Monster821 Rider /Passenger'),
(28, 'GS1200'),
(29, 'S1000RR 15'),
(30, 'ER-6N 2012'),
(31, 'MONSTER796/1100'),
(32, 'SF'),
(33, 'Hypermotard/Strada 2013'),
(34, 'MTS/SF'),
(35, 'DIAVEL /M821/M1200'),
(36, 'Hyper821'),
(37, 'S1000RR \'15'),
(38, 'ER6N \'09 up'),
(39, 'HYPER796'),
(40, 'C600/ C650'),
(41, 'gsxr1000 -9-11'),
(42, 'Monster/SF848'),
(43, 'Monster696/795'),
(44, 'SFs'),
(45, 'Monster796/1100  SF848'),
(46, '1199/899'),
(47, 'SFs/MTS/ Hyper821'),
(48, 'Kawasaki all'),
(49, 'Diavel / Monster'),
(50, '748/848/916/996/998/1098/1198'),
(51, 'SF XDIAVEL/Panigale'),
(52, 'F800R/ R1200GS/ S1000RR'),
(53, 'C600'),
(54, 'Hyper 1100'),
(55, 'Diavel /1199'),
(56, '899'),
(57, 'Diavel 2015'),
(58, 'Diavel 2012-14'),
(59, 'Multistrada 1200'),
(60, 'TMAX530\'17'),
(61, ' Ducati Scrambler '),
(62, 'MTS/1199/899/M1200/SF'),
(63, 'Scrambler/Hyp821/M821'),
(64, 'BMW C600Sport /C650GT'),
(65, 'Thruxton R 2016'),
(66, 'Street Twin'),
(67, 'CBR600R'),
(68, '899/1299'),
(69, 'X Diavel'),
(70, 'S1000XR'),
(71, 'R9T Scrambler'),
(72, 'Thruxton R 1200'),
(73, 'Thruxton 900'),
(74, 'R9T Racer'),
(75, 'T120'),
(76, 'X-ADV 750\'2017'),
(77, 'R9T '),
(78, 'R9T pure/scrambler'),
(79, 'R9T 14-17 / pure'),
(80, 'Panigale V4'),
(81, 'Monster 821/Scrambler'),
(82, 'Xdiavel'),
(83, 'X ADV'),
(84, 'Triumph Street Triple 2017-18'),
(85, 'Triumph T100'),
(86, 'X-ADV'),
(87, 'CBR1000R 2018'),
(88, 'Panigale'),
(89, 'Scrambler'),
(90, 'SF/ MTS1200'),
(91, 'Monster/ Diavel'),
(92, 'Monster795/796'),
(93, 'Panigale 1199'),
(94, 'Monster795/796/ Scrambler/STF'),
(95, 'Panigale 1199/899'),
(96, 'Monster 796/1100, Hyper796/821/939,SF848'),
(97, 'Diavel,1098-1198,Multi 1200,SF/Panigale1199/1299/V4'),
(98, 'M796/HYP821'),
(99, ' 1098/SF/Diavel'),
(100, 'Panigale 959/899'),
(101, 'M796/1100/848'),
(102, 'Diavel,1098-1198,Multi 1200,SF'),
(103, 'Hyper796/Monster796/1100/ MTS1200/1260/Scrambler'),
(104, 'Diavel/Xdiavel/Hyper1100'),
(105, 'Panigale 899/959/1199/1299'),
(106, 'Hyper821/Monster821/Multistrada'),
(107, 'Diavel/Hyper821/939,Monster797/821/1200,MTS950/1200/1260'),
(108, 'Monster 696/796/1100'),
(109, 'Universal'),
(110, 'Monster/ Diavel/Panigale'),
(111, 'Panigale 899/1199'),
(112, 'Classic'),
(113, 'Multistrada 950/1200/1260'),
(114, '959/899/1199/1299 panigale'),
(115, 'Supersport 939 2017'),
(116, 'MTS950/1260/HYP950/SCR1100'),
(117, 'Multistrada 950/1200/1260 '),
(118, 'Diavel 2014'),
(119, 'S1000RR 2015'),
(120, 'R1'),
(121, 'ZX10R'),
(122, 'S1000RR 2019'),
(123, 'Diavel 2012'),
(124, '795/796'),
(125, '1299/959'),
(126, 'M795/796'),
(127, 'hyp821'),
(128, 'M821/795/796'),
(129, 'M821 14-17'),
(130, '899/959/1199/1299 Panigale '),
(131, 'Triumph Scrambler'),
(132, 'Triumph Thruxton900'),
(133, 'Street Triple'),
(134, 'SS 2017'),
(135, 'M797/M1200 \'17/M821 2018'),
(136, 'S1000RR 2020'),
(137, 'Triumph Thruxton'),
(138, 'BMW R9T'),
(139, 'S1000RR 2020 สีสโมค'),
(140, 'S1000RR 7-18'),
(141, 'S1000RR 19-20'),
(142, 'Multistrada1260');

-- --------------------------------------------------------

--
-- Table structure for table `model_category`
--

CREATE TABLE `model_category` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `id_brand_category` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `model_category`
--

INSERT INTO `model_category` (`id`, `name`, `id_brand_category`) VALUES
(1, 'C 650 SPORT GT', 8),
(2, 'R 1200 1250 GS', 9),
(3, 'R NINE T', 10),
(4, 'S 1000 R', 11),
(5, 'S 1000 RR 2015-2018', 12),
(6, 'S 1000 RR 2020', 13),
(7, 'S 1000 XR', 8);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title_show` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `datetime` timestamp NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title_show`, `img`, `detail`, `title`, `datetime`, `status`) VALUES
(1, 'ทำไมต้องใส่กันล้ม?', '90456-news1.jpg', '', '', '0000-00-00 00:00:00', '1'),
(2, 'ระยะเวลาการใช้งานของแบตเตอรี่', '02832-news2.jpg', '', '', '0000-00-00 00:00:00', '1'),
(3, 'กันล้มมีกี่ส่วน มีประโยชน์อะไรบ้าง?', '75655-news3.jpg', '', '', '0000-00-00 00:00:00', ''),
(4, 'การดูแลรักษาแบตเตอรี่', 'bf9ee-news4.jpg', '', '', '0000-00-00 00:00:00', ''),
(5, 'เลือกกันล้มแบบไหนดี?', 'a9b1b-news5.jpg', '', '', '0000-00-00 00:00:00', ''),
(6, 'ปลายแฮนด์ช่วยลดอาการมือชา', '2a766-news6.jpg', '', '', '0000-00-00 00:00:00', ''),
(7, 'อาการมือชาขณะขับมอเตอร์ไซค์ เกิดขึ้นได้อย่างไร?', '616c0-news7.jpg', '', '', '0000-00-00 00:00:00', ''),
(8, 'ปลายแฮนด์มีแบบไหนบ้าง?', '46179-news8.jpg', '', '', '0000-00-00 00:00:00', ''),
(9, 'เลือกยี่ห้อกันล้ม?', '6ae31-news9.jpg', '', '', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `news_idea`
--

CREATE TABLE `news_idea` (
  `id` int(11) NOT NULL,
  `title_show` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `datetime` timestamp NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_idea`
--

INSERT INTO `news_idea` (`id`, `title_show`, `img`, `detail`, `title`, `datetime`, `status`) VALUES
(10, 'เลือกยี่ห้อกันล้ม?', '7f6cc-news1.jpg', '', 'What is Lorem Ipsum?', '2020-12-13 17:00:00', '1'),
(11, 'ปลายแฮนด์มีแบบไหนบ้าง?', 'f184a-news8.jpg', '', 'What is Lorem Ipsum?', '2020-12-13 17:00:00', '1'),
(12, 'อาการมือชาขณะขับมอเตอร์ไซค์ เกิดขึ้นได้อย่างไร?', 'a9f45-news7.jpg', '', 'What is Lorem Ipsum?', '2020-12-13 17:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `new_arrivals`
--

CREATE TABLE `new_arrivals` (
  `new_arrivals_id` int(10) NOT NULL,
  `img1` varchar(250) NOT NULL,
  `img2` varchar(250) NOT NULL,
  `img3` varchar(250) NOT NULL,
  `img4` varchar(250) NOT NULL,
  `brand` int(10) NOT NULL,
  `name` int(10) NOT NULL,
  `price` varchar(250) NOT NULL,
  `discount_price` varchar(250) NOT NULL,
  `detail` text NOT NULL,
  `color` varchar(250) NOT NULL,
  `quality` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `new_arrivals`
--

INSERT INTO `new_arrivals` (`new_arrivals_id`, `img1`, `img2`, `img3`, `img4`, `brand`, `name`, `price`, `discount_price`, `detail`, `color`, `quality`, `date`, `status`) VALUES
(1, '353ad-1.png', 'e8e97-2.png', '', '', 6, 0, '1,234', '2,300', '', '', '10', '2021-02-03', 1),
(2, '16fed-3.png', '287b8-4.png', '', '', 6, 0, '1,234', '2,300', '', '', '10', '2021-02-03', 1),
(3, 'd2fe9-3.png', '', '', '', 6, 0, '1,234', '2,300', '', '', '10', '2021-02-03', 1),
(4, '8fc00-4.png', '', '', '', 6, 0, '1,234', '2,300', '', '', '5', '2021-02-03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `popup`
--

CREATE TABLE `popup` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `Image_product1` varchar(250) NOT NULL,
  `Image_product2` varchar(250) NOT NULL,
  `Image_product3` varchar(250) NOT NULL,
  `Image_product4` varchar(250) NOT NULL,
  `Prict` varchar(250) NOT NULL,
  `Discount` varchar(250) NOT NULL,
  `Brand` varchar(250) NOT NULL,
  `Detail` text NOT NULL,
  `name_color` varchar(250) NOT NULL,
  `name_size` varchar(250) NOT NULL,
  `name_year` varchar(250) NOT NULL,
  `main_category` varchar(250) NOT NULL,
  `name_subcategory` varchar(250) NOT NULL,
  `name_model` varchar(250) NOT NULL,
  `Type` varchar(250) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `Status` int(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(10) NOT NULL,
  `id_brand_category` int(11) NOT NULL,
  `id_model_category` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `id_brand_category`, `id_model_category`, `name`, `description`, `date`, `status`) VALUES
(1, 1, 6, 'Brembo Brake-Discs Floating Disc', 'Brembo Brake-Discs Floating Disc', '0000-00-00', 1),
(2, 1, 6, 'Brembo Brake-Discs TOp Disc', 'Brembo Brake-Discs TOp Disc', '0000-00-00', 1),
(3, 1, 6, '', '', '0000-00-00', 1),
(4, 1, 6, 'BBM001L - ปั๊มบน ดำ 13 mm. (ซ้าย)', 'BBM001L - ปั๊มบน ดำ 13 mm. (ซ้าย)', '0000-00-00', 1),
(5, 1, 6, 'BBM001R - ปั๊มบน ดำ 13 mm. (ขวา)', 'BBM001R - ปั๊มบน ดำ 13 mm. (ขวา)', '0000-00-00', 1),
(6, 1, 6, 'BBM002L - ปั๊มบน ทอง ก้านเงิน (ซ้าย)', 'BBM002L - ปั๊มบน ทอง ก้านเงิน (ซ้าย)', '0000-00-00', 1),
(7, 1, 6, 'BBM002R - ปั๊มบน ทอง ก้านเงิน (ขวา)', 'BBM002R - ปั๊มบน ทอง ก้านเงิน (ขวา)', '0000-00-00', 1),
(8, 1, 6, 'BBM003R - ปั๊มบนเหลี่ยม (KTM) ดำ - ก้านดำ (ขวา)', 'BBM003R - ปั๊มบนเหลี่ยม (KTM) ดำ - ก้านดำ (ขวา)', '0000-00-00', 1),
(9, 1, 6, 'BBM004R - ปั๊มบนเหลี่ยม (KTM) ดำ - ก้านเงิน (ขวา)', 'BBM004R - ปั๊มบนเหลี่ยม (KTM) ดำ - ก้านเงิน (ขวา)', '0000-00-00', 1),
(10, 1, 6, 'BBM005R - ปั๊มบนเหลี่ยม (KTM) บอนด์ (ขวา)', 'BBM005R - ปั๊มบนเหลี่ยม (KTM) บอนด์ (ขวา)', '0000-00-00', 1),
(11, 1, 6, 'BBM006L - ปั๊มบน ทอง ก้านเหรียญ สีชา (ซ้าย)', 'BBM006L - ปั๊มบน ทอง ก้านเหรียญ สีชา (ซ้าย)', '0000-00-00', 1),
(12, 1, 6, 'BBM006R - ปั๊มบน ทอง ก้านเหรียญ สีชา (ขวา)', 'BBM006R - ปั๊มบน ทอง ก้านเหรียญ สีชา (ขวา)', '0000-00-00', 1),
(13, 1, 6, 'BBM007L - ปั๊มบน ทอง ก้านเหรียญ สีดำ (ซ้าย)', 'BBM007L - ปั๊มบน ทอง ก้านเหรียญ สีดำ (ซ้าย)', '0000-00-00', 1),
(14, 1, 6, 'BBM007R - ปั๊มบน ทอง ก้านเหรียญ สีดำ (ขวา)', 'BBM007R - ปั๊มบน ทอง ก้านเหรียญ สีดำ (ขวา)', '0000-00-00', 1),
(15, 1, 6, 'BBM008L - ปั๊มบน ทอง ก้านเหรียญ สีเงิน (ซ้าย)', 'BBM008L - ปั๊มบน ทอง ก้านเหรียญ สีเงิน (ซ้าย)', '0000-00-00', 1),
(16, 1, 6, 'BBM008R - ปั๊มบน ทอง ก้านเหรียญ สีเงิน (ขวา)', 'BBM008R - ปั๊มบน ทอง ก้านเหรียญ สีเงิน (ขวา)', '0000-00-00', 1),
(17, 1, 6, 'BBM009L - ปั๊มบน ทอง Ducati (ปะกับบน) ก้านเหรียญ (ซ้าย)', 'BBM009L - ปั๊มบน ทอง Ducati (ปะกับบน) ก้านเหรียญ (ซ้าย)', '0000-00-00', 1),
(18, 1, 6, 'BBM009R - ปั๊มบน ทอง Ducati (ปะกับบน) ก้านเหรียญ (ขวา)', 'BBM009R - ปั๊มบน ทอง Ducati (ปะกับบน) ก้านเหรียญ (ขวา)', '0000-00-00', 1),
(19, 1, 6, 'BBM010L - ปั๊มบน ดำ Ducati (ปะกับบน) ก้านเหรียญ (ซ้าย)', 'BBM010L - ปั๊มบน ดำ Ducati (ปะกับบน) ก้านเหรียญ (ซ้าย)', '0000-00-00', 1),
(20, 1, 6, 'BBM010R - ปั๊มบน ดำ Ducati (ปะกับบน) ก้านเหรียญ (ขวา)', 'BBM010R - ปั๊มบน ดำ Ducati (ปะกับบน) ก้านเหรียญ (ขวา)', '0000-00-00', 1),
(21, 1, 6, 'BBM011R - ปั๊มบน Racing 16*18 (โลโก้ขาว) (ขวา)', 'BBM011R - ปั๊มบน Racing 16*18 (โลโก้ขาว) (ขวา)', '0000-00-00', 1),
(22, 1, 6, 'BBM011RF - ปั๊มบน Racing 16*18 (โลโก้ขาว ก้านพับ) (ขวา)', 'BBM011RF - ปั๊มบน Racing 16*18 (โลโก้ขาว ก้านพับ) (ขวา)', '0000-00-00', 1),
(23, 1, 6, 'BBM012R - ปั๊มบน Racing 19*18 (โลโก้ขาว) (ขวา)', 'BBM012R - ปั๊มบน Racing 19*18 (โลโก้ขาว) (ขวา)', '0000-00-00', 1),
(24, 1, 6, 'BBM012RF - ปั๊มบน Racing 19*18 (โลโก้ขาว ก้านพับ) (ขวา)', 'BBM012RF - ปั๊มบน Racing 19*18 (โลโก้ขาว ก้านพับ) (ขวา)', '0000-00-00', 1),
(25, 1, 6, 'BBM013R - ปั๊มบน Racing 19*20 (โลโก้ขาว) (ขวา)', 'BBM013R - ปั๊มบน Racing 19*20 (โลโก้ขาว) (ขวา)', '0000-00-00', 1),
(26, 1, 6, 'BBM013F - ปั๊มบน Racing 19*20 (โลโก้ขาว ก้านพับ) (ขวา)', 'BBM013F - ปั๊มบน Racing 19*20 (โลโก้ขาว ก้านพับ) (ขวา)', '0000-00-00', 1),
(27, 1, 6, 'BBM014L - ปั๊มบน Racing 16*16 (โลโก้แดง) (ซ้าย)', 'BBM014L - ปั๊มบน Racing 16*16 (โลโก้แดง) (ซ้าย)', '0000-00-00', 1),
(28, 1, 6, 'BBM014LF - ปั๊มบน Racing 16*16 (โลโก้แดง ก้านพับ) (ซ้าย)', 'BBM014LF - ปั๊มบน Racing 16*16 (โลโก้แดง ก้านพับ) (ซ้าย)', '0000-00-00', 1),
(29, 1, 6, 'BBM014R - ปั๊มบน Racing 16*16 (โลโก้แดง) (ขวา)', 'BBM014R - ปั๊มบน Racing 16*16 (โลโก้แดง) (ขวา)', '0000-00-00', 1),
(30, 1, 6, 'BBM014RF - ปั๊มบน Racing 16*16 (โลโก้แดง ก้านพับ) (ขวา)', 'BBM014RF - ปั๊มบน Racing 16*16 (โลโก้แดง ก้านพับ) (ขวา)', '0000-00-00', 1),
(31, 1, 6, 'BBM015L - ปั๊มบน Racing 16*18 (โลโก้แดง) (ซ้าย)', 'BBM015L - ปั๊มบน Racing 16*18 (โลโก้แดง) (ซ้าย)', '0000-00-00', 1),
(32, 1, 6, 'BBM015LF - ปั๊มบน Racing 16*18 (โลโก้แดง ก้านพับ) (ซ้าย)', 'BBM015LF - ปั๊มบน Racing 16*18 (โลโก้แดง ก้านพับ) (ซ้าย)', '0000-00-00', 1),
(33, 1, 6, 'BBM015R - ปั๊มบน Racing 16*18 (โลโก้แดง) (ขวา)', 'BBM015R - ปั๊มบน Racing 16*18 (โลโก้แดง) (ขวา)', '0000-00-00', 1),
(34, 1, 6, 'BBM016L - ปั๊มบน Racing 19*16 (โลโก้แดง) (ซ้าย)', 'BBM016L - ปั๊มบน Racing 19*16 (โลโก้แดง) (ซ้าย)', '0000-00-00', 1),
(35, 1, 6, 'BBM016R - ปั๊มบน Racing 19*16 (โลโก้แดง) (ขวา)', 'BBM016R - ปั๊มบน Racing 19*16 (โลโก้แดง) (ขวา)', '0000-00-00', 1),
(36, 1, 6, 'BBM017L - ปั๊มบน Racing 19*18 (โลโก้แดง) (ซ้าย)', 'BBM017L - ปั๊มบน Racing 19*18 (โลโก้แดง) (ซ้าย)', '0000-00-00', 1),
(37, 1, 6, 'BBM017LF - ปั๊มบน Racing 19*18 (โลโก้แดง ก้านพับ) (ซ้าย)', 'BBM017LF - ปั๊มบน Racing 19*18 (โลโก้แดง ก้านพับ) (ซ้าย)', '0000-00-00', 1),
(38, 1, 6, 'BBM017R - ปั๊มบน Racing 19*18 (โลโก้แดง) (ขวา)', 'BBM017R - ปั๊มบน Racing 19*18 (โลโก้แดง) (ขวา)', '0000-00-00', 1),
(39, 1, 6, 'BBM017RF - ปั๊มบน Racing 19*18 (โลโก้แดง ก้านพับ) (ขวา)', 'BBM017RF - ปั๊มบน Racing 19*18 (โลโก้แดง ก้านพับ) (ขวา)', '0000-00-00', 1),
(40, 1, 6, 'BBM018L - ปั๊มบน Racing 19*20 (โลโก้แดง) (ซ้าย)', 'BBM018L - ปั๊มบน Racing 19*20 (โลโก้แดง) (ซ้าย)', '0000-00-00', 1),
(41, 1, 6, 'BBM018LF - ปั๊มบน Racing 19*20 (โลโก้แดง ก้านพับ) (ซ้าย)', 'BBM018LF - ปั๊มบน Racing 19*20 (โลโก้แดง ก้านพับ) (ซ้าย)', '0000-00-00', 1),
(42, 1, 6, 'BBM018R - ปั๊มบน Racing 19*20 (โลโก้แดง) (ขวา)', 'BBM018R - ปั๊มบน Racing 19*20 (โลโก้แดง) (ขวา)', '0000-00-00', 1),
(43, 1, 6, 'BBM018RF - ปั๊มบน Racing 19*20 (โลโก้แดง ก้านพับ) (ขวา)', 'BBM018RF - ปั๊มบน Racing 19*20 (โลโก้แดง ก้านพับ) (ขวา)', '0000-00-00', 1),
(44, 1, 6, 'BBM019R.SHORT - ปั๊มบน Italy 15 RCS (ก้านสั้น) (ขวา)', 'BBM019R.SHORT - ปั๊มบน Italy 15 RCS (ก้านสั้น) (ขวา)', '0000-00-00', 1),
(45, 1, 6, 'BBM019R.LONG - ปั๊มบน Italy 15 RCS (ก้านยาว) (ขวา)', 'BBM019R.LONG - ปั๊มบน Italy 15 RCS (ก้านยาว) (ขวา)', '0000-00-00', 1),
(46, 1, 6, 'BBM020L - ปั๊มบน Italy 16 RCS (ซ้าย)', 'BBM020L - ปั๊มบน Italy 16 RCS (ซ้าย)', '0000-00-00', 1),
(47, 1, 6, 'BBM021L - ปั๊มบน Italy 19 RCS (ซ้าย)', 'BBM021L - ปั๊มบน Italy 19 RCS (ซ้าย)', '0000-00-00', 1),
(48, 1, 6, 'BBM021R - ปั๊มบน Italy 19 RCS (ขวา)', 'BBM021R - ปั๊มบน Italy 19 RCS (ขวา)', '0000-00-00', 1),
(49, 1, 6, 'BBM021RC - ปั๊มบน Italy 19 Corsa Corta', 'BBM021RC - ปั๊มบน Italy 19 Corsa Corta', '0000-00-00', 1),
(50, 1, 6, 'BBM022 - ปั๊มบน Limited Edition', 'BBM022 - ปั๊มบน Limited Edition', '0000-00-00', 1),
(51, 1, 5, 'BBM023 - ปั๊มบน Rossi', 'BBM023 - ปั๊มบน Rossi', '0000-00-00', 1),
(52, 1, 5, 'BBM023L - ปั๊มบน Rossi (หมุดทอง) 16*19 (ซ้าย)', 'BBM023L - ปั๊มบน Rossi (หมุดทอง) 16*19 (ซ้าย)', '0000-00-00', 1),
(53, 1, 5, 'BBM024R - ปั๊มบน Italy 17 RCS (ขวา)', 'BBM024R - ปั๊มบน Italy 17 RCS (ขวา)', '0000-00-00', 1),
(54, 1, 5, 'BBL001 - ก้านดำ', 'BBL001 - ก้านดำ', '0000-00-00', 1),
(55, 1, 5, 'BBL002 - ก้านเงิน', 'BBL002 - ก้านเงิน', '0000-00-00', 1),
(56, 1, 5, 'BBL003 - ก้านเงิน (ปั๊มเหลี่ยม)', 'BBL003 - ก้านเงิน (ปั๊มเหลี่ยม)', '0000-00-00', 1),
(57, 1, 5, 'BBL004L - ก้านเหรียญ สีชา (ซ้าย)', 'BBL004L - ก้านเหรียญ สีชา (ซ้าย)', '0000-00-00', 1),
(58, 1, 5, 'BBL004R - ก้านเหรียญ สีชา (ขวา)', 'BBL004R - ก้านเหรียญ สีชา (ขวา)', '0000-00-00', 1),
(59, 1, 5, 'BBL005L - ก้านเหรียญ สีเงิน (ซ้าย)', 'BBL005L - ก้านเหรียญ สีเงิน (ซ้าย)', '0000-00-00', 1),
(60, 1, 5, 'BBL005R - ก้านเหรียญ สีเงิน (ขวา)', 'BBL005R - ก้านเหรียญ สีเงิน (ขวา)', '0000-00-00', 1),
(61, 1, 5, 'BBL006L - ก้านเหรียญ สีดำ (ซ้าย)', 'BBL006L - ก้านเหรียญ สีดำ (ซ้าย)', '0000-00-00', 1),
(62, 1, 5, 'BBL006R - ก้านเหรียญ สีดำ (ขวา)', 'BBL006R - ก้านเหรียญ สีดำ (ขวา)', '0000-00-00', 1),
(63, 1, 5, 'BBL007L - ก้านเหรียญ Ducati สีเงิน (ซ้าย)', 'BBL007L - ก้านเหรียญ Ducati สีเงิน (ซ้าย)', '0000-00-00', 1),
(64, 1, 5, 'BBL007R - ก้านเหรียญ Ducati สีเงิน (ขวา)', 'BBL007R - ก้านเหรียญ Ducati สีเงิน (ขวา)', '0000-00-00', 1),
(65, 1, 5, 'BBL008 - ก้าน Racing (ก้านสั้น)', 'BBL008 - ก้าน Racing (ก้านสั้น)', '0000-00-00', 1),
(66, 1, 5, 'BBL009 - ก้าน Racing (ก้านยาว)', 'BBL009 - ก้าน Racing (ก้านยาว)', '0000-00-00', 1),
(67, 1, 5, 'BBL010 - ก้าน Racing (ก้านพับ สั้น)', 'BBL010 - ก้าน Racing (ก้านพับ สั้น)', '0000-00-00', 1),
(68, 1, 5, 'BBL011 - ก้าน Racing (ก้านพับ ยาว)', 'BBL011 - ก้าน Racing (ก้านพับ ยาว)', '0000-00-00', 1),
(69, 1, 5, 'BBL012 - ก้าน Racing (ปลายก้าน สั้น)', 'BBL012 - ก้าน Racing (ปลายก้าน สั้น)', '0000-00-00', 1),
(70, 1, 3, 'BBL013 - ก้าน Racing (ปลายก้าน ยาว)', 'BBL013 - ก้าน Racing (ปลายก้าน ยาว)', '0000-00-00', 1),
(71, 1, 3, 'BBL014 - ก้าน Italy (ซ้าย) (R1,R6,FZ1,FZ6)', 'BBL014 - ก้าน Italy (ซ้าย) (R1,R6,FZ1,FZ6)', '0000-00-00', 1),
(72, 1, 3, 'BBL015 - ก้าน Racing (ก้านแต่งมีรู)', 'BBL015 - ก้าน Racing (ก้านแต่งมีรู)', '0000-00-00', 1),
(73, 1, 3, 'BBT001 - กระปุกน้ำมัน (เล็ก) - หูตรง', 'BBT001 - กระปุกน้ำมัน (เล็ก) - หูตรง', '0000-00-00', 1),
(74, 1, 3, 'BBT001.1 - กระปุกน้ำมัน (เล็ก) - หูเอียง', 'BBT001.1 - กระปุกน้ำมัน (เล็ก) - หูเอียง', '0000-00-00', 1),
(75, 1, 9, 'BBT002 - กระปุกน้ำมัน (ใหญ่)', 'BBT002 - กระปุกน้ำมัน (ใหญ่)', '0000-00-00', 1),
(76, 1, 9, 'BBT003 - กระปุกน้ำมัน (ชุดเล็ก)', 'BBT003 - กระปุกน้ำมัน (ชุดเล็ก)', '0000-00-00', 1),
(77, 1, 9, 'BBT004 - กระปุกน้ำมัน (ชุดใหญ่)', 'BBT004 - กระปุกน้ำมัน (ชุดใหญ่)', '0000-00-00', 1),
(78, 1, 9, 'BBR001 - HAYA \'08-09, B-KING \'08-09', 'BBR001 - HAYA \'08-09, B-KING \'08-09', '0000-00-00', 1),
(79, 1, 9, 'BBR002 - DUCATI T-DRIVE BLACK', 'BBR002 - DUCATI T-DRIVE BLACK', '0000-00-00', 1),
(80, 1, 9, 'BBR003 - R1', 'BBR003 - R1', '0000-00-00', 1),
(81, 1, 9, 'BBR004 - DUCATI', 'BBR004 - DUCATI', '0000-00-00', 1),
(82, 1, 9, 'BBR005 - R1, R6, FZ6', 'BBR005 - R1, R6, FZ6', '0000-00-00', 1),
(83, 1, 9, 'BBR006 - Aprilia', 'BBR006 - Aprilia', '0000-00-00', 1),
(84, 1, 9, 'BBR008 - Rotor for T-Drive Kit Disc Yamaha  R6/R1', 'BBR008 - Rotor for T-Drive Kit Disc Yamaha  R6/R1', '0000-00-00', 1),
(85, 1, 9, 'BBR019 - Rotor for Kawasaki zx14', 'BBR019 - Rotor for Kawasaki zx14', '0000-00-00', 1),
(86, 1, 9, 'BBR019 - Rotor for', 'BBR019 - Rotor for', '0000-00-00', 1),
(87, 1, 9, 'BBR010 - HPK Kit Disc Unpdated BMW S1000RR', 'BBR010 - HPK Kit Disc Unpdated BMW S1000RR', '0000-00-00', 1),
(88, 1, 7, 'BBR012 - Rotor for T-Drive Kit Disc Yamaha  R6 320M', 'BBR012 - Rotor for T-Drive Kit Disc Yamaha  R6 320M', '0000-00-00', 1),
(89, 1, 7, 'BBR013 - Rotor for T-Drive Kit Disc Honda CBR 320M', 'BBR013 - Rotor for T-Drive Kit Disc Honda CBR 320M', '0000-00-00', 1),
(90, 1, 7, 'BBR011 - Rotor for T-Drive Kit Disc Ducati 320MM DIAVEL', 'BBR011 - Rotor for T-Drive Kit Disc Ducati 320MM DIAVEL', '0000-00-00', 1),
(91, 1, 7, 'BBC101 - ปั๊มกระทุ้งออกข้าง (ทอง/ดำ)', 'BBC101 - ปั๊มกระทุ้งออกข้าง (ทอง/ดำ)', '0000-00-00', 1),
(92, 1, 8, 'BBC102 - ปั๊มกระทุ้งออกท้าย (ดำ)', 'BBC102 - ปั๊มกระทุ้งออกท้าย (ดำ)', '0000-00-00', 1),
(93, 1, 8, 'BBC103 - ปั๊มกระทุ้ง+ก้าน', 'BBC103 - ปั๊มกระทุ้ง+ก้าน', '0000-00-00', 1),
(94, 1, 8, 'BBC104 - ปั๊มกระทุ้ง Racing', 'BBC104 - ปั๊มกระทุ้ง Racing', '0000-00-00', 1),
(95, 1, 8, 'BBC201G - ปั๊มล่าง ผีเสื้อ (ทอง)', 'BBC201G - ปั๊มล่าง ผีเสื้อ (ทอง)', '0000-00-00', 1),
(96, 1, 8, 'BBC201B - ปั๊มล่าง ผีเสื้อ (ดำ)', 'BBC201B - ปั๊มล่าง ผีเสื้อ (ดำ)', '0000-00-00', 1),
(97, 1, 8, 'BBC201A - ปั๊มล่าง ผีเสื้อ (เงิน)', 'BBC201A - ปั๊มล่าง ผีเสื้อ (เงิน)', '0000-00-00', 1),
(98, 1, 8, 'BBC201S - ปั๊มล่าง ผีเสื้อตัวเล็ก', 'BBC201S - ปั๊มล่าง ผีเสื้อตัวเล็ก', '0000-00-00', 1),
(99, 1, 8, 'BBC202 - ปั๊มล่าง JOG', 'BBC202 - ปั๊มล่าง JOG', '0000-00-00', 1),
(100, 1, 4, 'BBC203 - ปั๊มล่าง APERIA', 'BBC203 - ปั๊มล่าง APERIA', '0000-00-00', 1),
(101, 1, 4, 'BBC204G - ปั๊มล่าง ตัว C/ผีเสื้อปักข้าง (ทอง)', 'BBC204G - ปั๊มล่าง ตัว C/ผีเสื้อปักข้าง (ทอง)', '0000-00-00', 1),
(102, 1, 4, 'BBC204B - ปั๊มล่าง ตัว C/ผีเสื้อปักข้าง (ดำ)', 'BBC204B - ปั๊มล่าง ตัว C/ผีเสื้อปักข้าง (ดำ)', '0000-00-00', 1),
(103, 1, 4, 'BBC205L - ปั๊มล่าง Gold line 4 pot (ซ้าย)', 'BBC205L - ปั๊มล่าง Gold line 4 pot (ซ้าย)', '0000-00-00', 1),
(104, 1, 4, 'BBC205R - ปั๊มล่าง Gold line 4 pot (ขวา)', 'BBC205R - ปั๊มล่าง Gold line 4 pot (ขวา)', '0000-00-00', 1),
(105, 1, 4, 'BBC206GL - ปั๊มล่าง Radial Mount (ทอง) (ซ้าย)', 'BBC206GL - ปั๊มล่าง Radial Mount (ทอง) (ซ้าย)', '0000-00-00', 1),
(106, 1, 4, 'BBC206GR - ปั๊มล่าง Radial Mount (ทอง) (ขวา)', 'BBC206GR - ปั๊มล่าง Radial Mount (ทอง) (ขวา)', '0000-00-00', 1),
(107, 1, 4, 'BBC206AL - ปั๊มล่าง Radial Mount (เงิน) (ซ้าย)', 'BBC206AL - ปั๊มล่าง Radial Mount (เงิน) (ซ้าย)', '0000-00-00', 1),
(108, 1, 4, 'BBC206AR - ปั๊มล่าง Radial Mount (เงิน) (ขวา)', 'BBC206AR - ปั๊มล่าง Radial Mount (เงิน) (ขวา)', '0000-00-00', 1),
(109, 1, 4, 'BBC207L - ปั๊มล่าง RSV 4-Pad (ซ้าย)', 'BBC207L - ปั๊มล่าง RSV 4-Pad (ซ้าย)', '0000-00-00', 1),
(110, 1, 8, 'BBC207R - ปั๊มล่าง RSV 4-Pad (ขวา)', 'BBC207R - ปั๊มล่าง RSV 4-Pad (ขวา)', '0000-00-00', 1),
(111, 1, 8, 'BBC208L - ปั๊มล่าง Racing 4 pot (ซ้าย)', 'BBC208L - ปั๊มล่าง Racing 4 pot (ซ้าย)', '0000-00-00', 1),
(112, 1, 8, 'BBC208R - ปั๊มล่าง Racing 4 pot (ขวา)', 'BBC208R - ปั๊มล่าง Racing 4 pot (ขวา)', '0000-00-00', 1),
(113, 1, 8, 'BBC301 - ปั๊มล่าง ด้วง ชา', 'BBC301 - ปั๊มล่าง ด้วง ชา', '0000-00-00', 1),
(114, 1, 8, 'BBC320.1 - ปั๊มด้วง Nickel ล่าง P2 34mm Nickel Coated Rear  - 120A44140 ด้วง Nickel', 'BBC320.1 - ปั๊มด้วง Nickel ล่าง P2 34mm Nickel Coated Rear  - 120A44140 ด้วง Nickel', '0000-00-00', 1),
(115, 1, 8, 'BBC320 - ปั๊มด้วงดำ  P2 34mm Black Coated Rear ด้วงดำ', 'BBC320 - ปั๊มด้วงดำ  P2 34mm Black Coated Rear ด้วงดำ', '0000-00-00', 1),
(116, 1, 8, 'BBC301.1 - ปั๊มล่าง ด้วง+ขา', 'BBC301.1 - ปั๊มล่าง ด้วง+ขา', '0000-00-00', 1),
(117, 1, 8, 'BBC301.2 - ปั๊มล่าง ด้วง+ขา cbr1000', 'BBC301.2 - ปั๊มล่าง ด้วง+ขา cbr1000', '0000-00-00', 1),
(118, 1, 8, 'BBC302 - ปั๊มล่าง ด้วง Racing', 'BBC302 - ปั๊มล่าง ด้วง Racing', '0000-00-00', 1),
(119, 1, 4, 'BBC301.3 - ปั๊มล่าง ด้วง GP', 'BBC301.3 - ปั๊มล่าง ด้วง GP', '0000-00-00', 1),
(120, 1, 4, 'BBC302.1 - ขาสำหรับด้วง  CBR1000, K7-K9', 'BBC302.1 - ขาสำหรับด้วง  CBR1000, K7-K9', '0000-00-00', 1),
(121, 1, 4, 'BBC303 - ปั๊มล่าง แมลงสาบ ', 'BBC303 - ปั๊มล่าง แมลงสาบ ', '0000-00-00', 1),
(122, 1, 4, 'BBC304.100 - ปั๊มล่าง Monobloc M4 100mm.', 'BBC304.100 - ปั๊มล่าง Monobloc M4 100mm.', '0000-00-00', 1),
(123, 1, 4, 'BBC304.108 - ปั๊มล่าง Monobloc M4 108mm. (รถญี่ปุ่น)', 'BBC304.108 - ปั๊มล่าง Monobloc M4 108mm. (รถญี่ปุ่น)', '0000-00-00', 1),
(124, 1, 4, 'BBC304.100B - ปั๊มล่าง Monobloc M4 100mm. ดำ', 'BBC304.100B - ปั๊มล่าง Monobloc M4 100mm. ดำ', '0000-00-00', 1),
(125, 1, 4, 'BBC305 - ปั๊มล่าง Monobloc Racing (ลูกสูบไทเทเนียม)', 'BBC305 - ปั๊มล่าง Monobloc Racing (ลูกสูบไทเทเนียม)', '0000-00-00', 1),
(126, 1, 4, 'BBC306 - ปั๊มล่าง HP (ปั๊มสีเงิน)', 'BBC306 - ปั๊มล่าง HP (ปั๊มสีเงิน)', '0000-00-00', 1),
(127, 1, 4, 'BBC307 - ปั๊มล่าง Radial Mount Racing', 'BBC307 - ปั๊มล่าง Radial Mount Racing', '0000-00-00', 1),
(128, 1, 4, 'BBC308 - ปั๊มล่าง Duo Inlet', 'BBC308 - ปั๊มล่าง Duo Inlet', '0000-00-00', 1),
(129, 1, 1, 'BBC315 - ปั๊มล่าง 484 ดำ 100 mm. CAFÉ 484', 'BBC315 - ปั๊มล่าง 484 ดำ 100 mm. CAFÉ 484', '0000-00-00', 1),
(130, 1, 1, 'BBC316B - ปั๊มล่าง 4 PAD black', 'BBC316B - ปั๊มล่าง 4 PAD black', '0000-00-00', 1),
(131, 1, 1, 'BBC321 - ปั๊มล่าง Nickel Coating 108', 'BBC321 - ปั๊มล่าง Nickel Coating 108', '0000-00-00', 1),
(132, 1, 1, 'BBP001 - ผ้าเบรค ผีเสื้อ / APERIA', 'BBP001 - ผ้าเบรค ผีเสื้อ / APERIA', '0000-00-00', 1),
(133, 1, 1, 'BBP002 - ผ้าเบรค ตัว C', 'BBP002 - ผ้าเบรค ตัว C', '0000-00-00', 1),
(134, 1, 1, 'BBP003 - ผ้าเบรค Racing ล่าง & Gold Line (หูชิด)', 'BBP003 - ผ้าเบรค Racing ล่าง & Gold Line (หูชิด)', '0000-00-00', 1),
(135, 1, 1, 'BBP004 - ผ้าเบรค Gold Line (หูห่าง) - Super 4', 'BBP004 - ผ้าเบรค Gold Line (หูห่าง) - Super 4', '0000-00-00', 1),
(136, 1, 1, 'BBP005 - ผ้าเบรค Radial Mount & RSV', 'BBP005 - ผ้าเบรค Radial Mount & RSV', '0000-00-00', 1),
(137, 1, 1, 'BBP006 - ผ้าเบรค ด้วง', 'BBP006 - ผ้าเบรค ด้วง', '0000-00-00', 1),
(138, 1, 1, 'BBP007 - ผ้าเบรค แมลงสาบ', 'BBP007 - ผ้าเบรค แมลงสาบ', '0000-00-00', 1),
(139, 1, 1, 'BBP008 - ผ้าเบรค M4', 'BBP008 - ผ้าเบรค M4', '0000-00-00', 1),
(140, 1, 1, 'BBP009 - ผ้าเบรค Radial Mount Racing', 'BBP009 - ผ้าเบรค Radial Mount Racing', '0000-00-00', 1),
(141, 1, 11, 'BBP012 - ผ้าเบรค single pad', 'BBP012 - ผ้าเบรค single pad', '0000-00-00', 1),
(142, 1, 11, 'BBP013 - ผ้าเบรค Evo Caliper', 'BBP013 - ผ้าเบรค Evo Caliper', '0000-00-00', 1),
(143, 1, 11, 'BBP014 - ผ้าเบรค P4', 'BBP014 - ผ้าเบรค P4', '0000-00-00', 1),
(144, 1, 11, 'BBR001 - ชุดซ่อม ผีเสื้อ / APERIA', 'BBR001 - ชุดซ่อม ผีเสื้อ / APERIA', '0000-00-00', 1),
(145, 1, 11, 'BBR002 - ชุดซ่อม ปั๊มบนดำ 13 mm.', 'BBR002 - ชุดซ่อม ปั๊มบนดำ 13 mm.', '0000-00-00', 1),
(146, 1, 11, 'BBR003 - ชุดซ่อม Racing - บน', 'BBR003 - ชุดซ่อม Racing - บน', '0000-00-00', 1),
(147, 1, 10, 'BBR004 - ชุดซ่อม Racing - ล่าง / Gold Line (หูชิด/หูห่าง)', 'BBR004 - ชุดซ่อม Racing - ล่าง / Gold Line (หูชิด/หูห่าง)', '0000-00-00', 1),
(148, 1, 10, 'BBO001 - ปะกับ - ดำ (ไม่มีหูกระจก)', 'BBO001 - ปะกับ - ดำ (ไม่มีหูกระจก)', '0000-00-00', 1),
(149, 1, 10, 'BBO002 - ปะกับ - ดำ (มีหูกระจก)', 'BBO002 - ปะกับ - ดำ (มีหูกระจก)', '0000-00-00', 1),
(150, 1, 10, 'BBO003 - สวิตซ์เบรค ปั๊มดำ', 'BBO003 - สวิตซ์เบรค ปั๊มดำ', '0000-00-00', 1),
(151, 1, 10, 'BBO004 - สวิตซ์เบรค ปั๊มดำ (มีสาย)', 'BBO004 - สวิตซ์เบรค ปั๊มดำ (มีสาย)', '0000-00-00', 1),
(152, 1, 11, 'BBO005 - สวิตซ์เบรค KTM (ปั๊มเหลี่ยม) (สวิตช์สีขาว)', 'BBO005 - สวิตซ์เบรค KTM (ปั๊มเหลี่ยม) (สวิตช์สีขาว)', '0000-00-00', 1),
(153, 1, 11, 'BBO006 - สวิตช์เบรค ปั๊มบน ทอง Ducati (ปะกับบน) ก้านเหรียญ เงิน', 'BBO006 - สวิตช์เบรค ปั๊มบน ทอง Ducati (ปะกับบน) ก้านเหรียญ เงิน', '0000-00-00', 1),
(154, 1, 11, 'BBO007 - สวิตช์แรงดัน (ใช้กับปั๊ม Racing)', 'BBO007 - สวิตช์แรงดัน (ใช้กับปั๊ม Racing)', '0000-00-00', 1),
(155, 1, 11, 'BBO008 - น๊อต BANJO เดี่ยว (น๊อตยึดน้ำมันเบรค) (เกลียวละเอียด)', 'BBO008 - น๊อต BANJO เดี่ยว (น๊อตยึดน้ำมันเบรค) (เกลียวละเอียด)', '0000-00-00', 1),
(156, 1, 11, 'BBO009 - น๊อต BANJO คู่ (น๊อตยึดน้ำมันเบรค) (เกลียวละเอียด)', 'BBO009 - น๊อต BANJO คู่ (น๊อตยึดน้ำมันเบรค) (เกลียวละเอียด)', '0000-00-00', 1),
(157, 1, 11, 'BBO010 - แหวนรองน็อต BANJO', 'BBO010 - แหวนรองน็อต BANJO', '0000-00-00', 1),
(158, 1, 11, 'BBO011 - สลักยึดผ้าเบรค ผีเสื้อ', 'BBO011 - สลักยึดผ้าเบรค ผีเสื้อ', '0000-00-00', 1),
(159, 1, 11, 'BBO012 - แผ่นดันผ้าเบรค ผีเสื้อ', 'BBO012 - แผ่นดันผ้าเบรค ผีเสื้อ', '0000-00-00', 1),
(160, 1, 11, 'BBO013 - สลักยึดผ้าเบรค ปักข้าง/ตัว C', 'BBO013 - สลักยึดผ้าเบรค ปักข้าง/ตัว C', '0000-00-00', 1),
(161, 1, 11, 'BBO014 - แผ่นดันผ้าเบรค ปักข้าง/ตัว C', 'BBO014 - แผ่นดันผ้าเบรค ปักข้าง/ตัว C', '0000-00-00', 1),
(162, 1, 11, 'BBO015 - สลักยึดผ้าเบรค Gold Line', 'BBO015 - สลักยึดผ้าเบรค Gold Line', '0000-00-00', 1),
(163, 1, 11, 'BBO016 - แผ่นดันผ้าเบรค Gold Line', 'BBO016 - แผ่นดันผ้าเบรค Gold Line', '0000-00-00', 1),
(164, 1, 11, 'BBO017 - สลักยึดผ้าเบรค 4 Pot Racing', 'BBO017 - สลักยึดผ้าเบรค 4 Pot Racing', '0000-00-00', 1),
(165, 1, 11, 'BBO018 - แผ่นดันผ้าเบรค 4 Pot Racing', 'BBO018 - แผ่นดันผ้าเบรค 4 Pot Racing', '0000-00-00', 1),
(166, 1, 11, 'BBO019 - ตัวไล่น้ำมันเบรค (เล็ก) - Ducati', 'BBO019 - ตัวไล่น้ำมันเบรค (เล็ก) - Ducati', '0000-00-00', 1),
(167, 1, 11, 'BBO020 - ตัวไล่น้ำมันเบรค (ใหญ่)', 'BBO020 - ตัวไล่น้ำมันเบรค (ใหญ่)', '0000-00-00', 1),
(168, 1, 11, 'BBO021 - ท่อกระปุก Inlet 90 degrees', 'BBO021 - ท่อกระปุก Inlet 90 degrees', '0000-00-00', 1),
(169, 1, 11, 'BBO022 - ท่อกระปุก Inlet 180 degrees', 'BBO022 - ท่อกระปุก Inlet 180 degrees', '0000-00-00', 1),
(170, 1, 9, 'BBO023 - สลักปั๊มดำ', 'BBO023 - สลักปั๊มดำ', '0000-00-00', 1),
(171, 1, 4, 'BBO024 - หมุดจาน', 'BBO024 - หมุดจาน', '0000-00-00', 1),
(172, 1, 4, 'BB025 - Brake Fluid', 'BB025 - Brake Fluid', '0000-00-00', 1),
(173, 1, 4, 'BBR007 - CBR 1000 \'08', 'BBR007 - CBR 1000 \'08', '0000-00-00', 1),
(174, 1, 4, 'BBC309 - ปั๊มล่าง Radial Mount Racing เล็ก', 'BBC309 - ปั๊มล่าง Radial Mount Racing เล็ก', '0000-00-00', 1),
(175, 1, 4, 'BBC310 - ปั๊มล่าง HP 100 mm.', 'BBC310 - ปั๊มล่าง HP 100 mm.', '0000-00-00', 1),
(176, 1, 4, 'BBC311 - ปั๊มล่าง HP 108 mm.', 'BBC311 - ปั๊มล่าง HP 108 mm.', '0000-00-00', 1),
(177, 1, 4, 'BBC312 - ปั๊มล่าง HP (130 mm.) - R1', 'BBC312 - ปั๊มล่าง HP (130 mm.) - R1', '0000-00-00', 1),
(178, 1, 9, 'BBC313 - ปั๊มล่าง R1 RACING', 'BBC313 - ปั๊มล่าง R1 RACING', '0000-00-00', 1),
(179, 1, 4, 'BBC313L - ปั๊มล่าง Monobloc GP4-RR Left', 'BBC313L - ปั๊มล่าง Monobloc GP4-RR Left', '0000-00-00', 1),
(180, 1, 4, 'BBC313R - ปั๊มล่าง Monobloc GP4-RR Right', 'BBC313R - ปั๊มล่าง Monobloc GP4-RR Right', '0000-00-00', 1),
(181, 1, 4, 'BBR009 - Rotor for T-Drive Kit Honda CBR 1000', 'BBR009 - Rotor for T-Drive Kit Honda CBR 1000', '0000-00-00', 1),
(182, 1, 4, 'BBO316B - 4 PAD BLACK', 'BBO316B - 4 PAD BLACK', '0000-00-00', 1),
(183, 1, 5, 'BBC316L - ปั๊มล่าง 484 Axial Left', 'BBC316L - ปั๊มล่าง 484 Axial Left', '0000-00-00', 1),
(184, 1, 5, 'BBC316R - ปั๊มล่าง 484 Axial Right', 'BBC316R - ปั๊มล่าง 484 Axial Right', '0000-00-00', 1),
(185, 1, 5, 'BBC317 - ปั๊มล่าง Nickel Coating 100', 'BBC317 - ปั๊มล่าง Nickel Coating 100', '0000-00-00', 1),
(186, 1, 5, 'BBL016 - ก้าน Italy (ซ้าย) (Kawasaki)', 'BBL016 - ก้าน Italy (ซ้าย) (Kawasaki)', '0000-00-00', 1),
(187, 1, 4, 'BBL017 - ก้าน Italy (ซ้าย) (S1000RR)', 'BBL017 - ก้าน Italy (ซ้าย) (S1000RR)', '0000-00-00', 1),
(188, 1, 4, 'BBL018 - Half Lever Kit 19 RCS', 'BBL018 - Half Lever Kit 19 RCS', '0000-00-00', 1),
(189, 1, 8, 'BBL019 - ก้าน Italy พร้อมหัวก้าน', 'BBL019 - ก้าน Italy พร้อมหัวก้าน', '0000-00-00', 1),
(190, 1, 6, 'BBC319 - ปั๊มล่าง GP4-RX Nickel Coating 108', 'BBC319 - ปั๊มล่าง GP4-RX Nickel Coating 108', '0000-00-00', 1),
(191, 1, 8, 'BBC319.1 - ปั๊มล่าง GP4-RX Nickel Coating 100mm', 'BBC319.1 - ปั๊มล่าง GP4-RX Nickel Coating 100mm', '0000-00-00', 1),
(192, 1, 1, 'BBC204T - ปั๊มล่าง ตัว C/ผีเสื้อปักข้าง (ไทเทเนียม)', 'BBC204T - ปั๊มล่าง ตัว C/ผีเสื้อปักข้าง (ไทเทเนียม)', '0000-00-00', 1),
(193, 1, 9, 'BBM024 - ปั๊มบน PS 13mm Rear Thumb Brake', 'BBM024 - ปั๊มบน PS 13mm Rear Thumb Brake', '0000-00-00', 1),
(194, 1, 9, 'BBC322 - ปั๊มล่าง Rear 2 Piston 34 mm.', 'BBC322 - ปั๊มล่าง Rear 2 Piston 34 mm.', '0000-00-00', 1),
(195, 1, 9, 'BP010 - ผ้าเบรค ปั๊มล่าง Rear 2 Piston 34 mm.', 'BP010 - ผ้าเบรค ปั๊มล่าง Rear 2 Piston 34 mm.', '0000-00-00', 1),
(196, 1, 9, 'BBR014 - Rotor for T-Drive Kit Disc KTM/Aprilia', 'BBR014 - Rotor for T-Drive Kit Disc KTM/Aprilia', '0000-00-00', 1),
(197, 1, 9, 'BBR015 - HPK Kit Disc BMW HP4 2013', 'BBR015 - HPK Kit Disc BMW HP4 2013', '0000-00-00', 1),
(198, 1, 1, 'BBR016 - HPK Kit Disc Ducati 1199 Panigale', 'BBR016 - HPK Kit Disc Ducati 1199 Panigale', '0000-00-00', 1),
(199, 1, 4, 'Rotor for Ducati Paul Smart', 'Rotor for Ducati Paul Smart', '0000-00-00', 1),
(200, 1, 6, 'BBR018 - HPK \"T-Drive\" Kit Disc BMW HP4 2013', 'BBR018 - HPK \"T-Drive\" Kit Disc BMW HP4 2013', '0000-00-00', 1),
(201, 1, 7, 'BBP011 - ผ้าเบรค ปั๊ม Racing GP', 'BBP011 - ผ้าเบรค ปั๊ม Racing GP', '0000-00-00', 1),
(202, 1, 5, 'BBC323 - ปั๊มล่าง Monobloc 100 mm. (pair)', 'BBC323 - ปั๊มล่าง Monobloc 100 mm. (pair)', '0000-00-00', 1),
(203, 0, 0, 'BBM025 - ปั๊มบน Rossi (หมุดทอง) 19*18 (ขวา)', 'BBM025 - ปั๊มบน Rossi (หมุดทอง) 19*18 (ขวา)', '0000-00-00', 1),
(204, 0, 0, 'BBC105 - ปั๊มกระทุ้งดำ', 'BBC105 - ปั๊มกระทุ้งดำ', '0000-00-00', 1),
(205, 26, 0, 'BBL020 - X98A7E1 ก้าน', 'BBL020 - X98A7E1 ก้าน', '0000-00-00', 1),
(206, 26, 0, 'AZ201R - Handlebar Clamp MTS1200', 'AZ201R - Handlebar Clamp MTS1200', '0000-00-00', 1),
(207, 26, 0, 'AZ202B - Handlebar Clamp M821', 'AZ202B - Handlebar Clamp M821', '0000-00-00', 1),
(208, 26, 0, 'AZ402B - Handlebar Clamp 42 mm.', 'AZ402B - Handlebar Clamp 42 mm.', '0000-00-00', 1),
(209, 0, 0, 'AZ403B - Handlebar Clamp 60 mm.', 'AZ403B - Handlebar Clamp 60 mm.', '0000-00-00', 1),
(210, 0, 0, 'AZ405B - Handlebar Clamp 24 mm. (except monster)', 'AZ405B - Handlebar Clamp 24 mm. (except monster)', '0000-00-00', 1),
(211, 21, 0, 'AZ430B - Handlebar Clamp for 25.4/ 1 inch (Triumph)', 'AZ430B - Handlebar Clamp for 25.4/ 1 inch (Triumph)', '0000-00-00', 1),
(212, 21, 0, 'AZ451T - Handlebar Riser R1200 GS', 'AZ451T - Handlebar Riser R1200 GS', '0000-00-00', 1),
(213, 21, 0, 'AZ452A - Handlebar Top Clamp Set R NINE T', 'AZ452A - Handlebar Top Clamp Set R NINE T', '0000-00-00', 1),
(214, 21, 0, 'BS070A - Mirror \"Reverse\" - Aluminium', 'BS070A - Mirror \"Reverse\" - Aluminium', '0000-00-00', 1),
(215, 21, 0, 'BS070B - Mirror \"Reverse\" - Black', 'BS070B - Mirror \"Reverse\" - Black', '0000-00-00', 1),
(216, 21, 0, 'BS070L - Mirror \"Reverse\" - Polish', 'BS070L - Mirror \"Reverse\" - Polish', '0000-00-00', 1),
(217, 21, 0, 'BS110A - Mirror \"Prototype\" - LH Aluminium', 'BS110A - Mirror \"Prototype\" - LH Aluminium', '0000-00-00', 1),
(218, 21, 0, 'BS112A - Mirror \"Prototype\" - RH Aluminium', 'BS112A - Mirror \"Prototype\" - RH Aluminium', '0000-00-00', 1),
(219, 21, 0, 'BS130A - Mirror \"Radial\" - Aluminium', 'BS130A - Mirror \"Radial\" - Aluminium', '0000-00-00', 1),
(220, 21, 0, 'BS130B - Mirror \"Radial\" - Black', 'BS130B - Mirror \"Radial\" - Black', '0000-00-00', 1),
(221, 21, 0, 'BS130BG - Mirror \"Radial\" - Black/GOLD', 'BS130BG - Mirror \"Radial\" - Black/GOLD', '0000-00-00', 1),
(222, 21, 0, 'BS134B - Mirror \"Radial-naked\" - Black', 'BS134B - Mirror \"Radial-naked\" - Black', '0000-00-00', 1),
(223, 21, 0, 'BS134BG - Mirror \"Radial-naked\" - Black/Gold', 'BS134BG - Mirror \"Radial-naked\" - Black/Gold', '0000-00-00', 1),
(224, 21, 0, 'BS144A - Mirror \"Class Retro\" - Aluminium', 'BS144A - Mirror \"Class Retro\" - Aluminium', '0000-00-00', 1),
(225, 21, 0, 'BS144B - Mirror \"Class Retro\" - Black', 'BS144B - Mirror \"Class Retro\" - Black', '0000-00-00', 1),
(226, 21, 0, 'BS150B - Mirror \"Limit-super sport\" - Black', 'BS150B - Mirror \"Limit-super sport\" - Black', '0000-00-00', 1),
(227, 21, 0, 'BS154B - Mirror \"Limit-naked\" - Black', 'BS154B - Mirror \"Limit-naked\" - Black', '0000-00-00', 1),
(228, 21, 0, 'BS171AB - Mirror \"ELISSE\" LH - Aluminium/Black', 'BS171AB - Mirror \"ELISSE\" LH - Aluminium/Black', '0000-00-00', 1),
(229, 21, 0, 'BS171B - Mirror \"ELISSE\" LH  - Black', 'BS171B - Mirror \"ELISSE\" LH  - Black', '0000-00-00', 1),
(230, 21, 0, 'BS172AB - Mirror \"ELISSE\" RH - Aluminium/Black', 'BS172AB - Mirror \"ELISSE\" RH - Aluminium/Black', '0000-00-00', 1),
(231, 21, 0, 'BS172B - Mirror \"ELISSE\" RH - Black', 'BS172B - Mirror \"ELISSE\" RH - Black', '0000-00-00', 1),
(232, 21, 0, 'BS185A - Mirror \"SPY-R\" - Aluminium', 'BS185A - Mirror \"SPY-R\" - Aluminium', '0000-00-00', 1),
(233, 21, 0, 'BS185B - Mirror \"SPY-R\" - Black', 'BS185B - Mirror \"SPY-R\" - Black', '0000-00-00', 1),
(234, 21, 0, 'BS186A - Mirror \"SPY-Q\" - Aluminium', 'BS186A - Mirror \"SPY-Q\" - Aluminium', '0000-00-00', 1),
(235, 21, 0, 'BS186B - Mirror \"SPY-Q\" - Black', 'BS186B - Mirror \"SPY-Q\" - Black', '0000-00-00', 1),
(236, 21, 0, 'BS191A - Mirror \"Spirit\" - Aluminium', 'BS191A - Mirror \"Spirit\" - Aluminium', '0000-00-00', 1),
(237, 21, 0, 'BS191B - Mirror \"Spirit\" - Black', 'BS191B - Mirror \"Spirit\" - Black', '0000-00-00', 1),
(238, 21, 0, 'BS196A - Mirror \"Linea\" - Aluminium', 'BS196A - Mirror \"Linea\" - Aluminium', '0000-00-00', 1),
(239, 21, 0, 'BS196B - Mirror \"Linea\" - Black', 'BS196B - Mirror \"Linea\" - Black', '0000-00-00', 1),
(240, 21, 0, 'BS198A - Mirror \"Street\" - Aluminium', 'BS198A - Mirror \"Street\" - Aluminium', '0000-00-00', 1),
(241, 21, 0, 'BS198B - Mirror \"Street\" - Black', 'BS198B - Mirror \"Street\" - Black', '0000-00-00', 1),
(242, 21, 0, 'BS201A - Mirror \"Circuit 744\" - Aluminium', 'BS201A - Mirror \"Circuit 744\" - Aluminium', '0000-00-00', 1),
(243, 21, 0, 'BS201B - Mirror \"Circuit 744\" - Black', 'BS201B - Mirror \"Circuit 744\" - Black', '0000-00-00', 1),
(244, 21, 0, 'BS202A - Mirror \"Circuit 744\" - Aluminium', 'BS202A - Mirror \"Circuit 744\" - Aluminium', '0000-00-00', 1),
(245, 21, 0, 'BS202B - Mirror \"Circuit 744\" - Black', 'BS202B - Mirror \"Circuit 744\" - Black', '0000-00-00', 1),
(246, 21, 0, 'BS203A - Mirror \"Circuit 959\" LH - Aluminium', 'BS203A - Mirror \"Circuit 959\" LH - Aluminium', '0000-00-00', 1),
(247, 21, 0, 'BS203B - Mirror \"Circuit 959\" LH - Black', 'BS203B - Mirror \"Circuit 959\" LH - Black', '0000-00-00', 1),
(248, 21, 0, 'BS204A - Mirror \"Circuit 959\" RH - Aluminium', 'BS204A - Mirror \"Circuit 959\" RH - Aluminium', '0000-00-00', 1),
(249, 21, 0, 'BS204B - Mirror \"Circuit 959\" RH - Black', 'BS204B - Mirror \"Circuit 959\" RH - Black', '0000-00-00', 1),
(250, 21, 0, 'BS205A - Mirror \"Veloce\" - Aluminium', 'BS205A - Mirror \"Veloce\" - Aluminium', '0000-00-00', 1),
(251, 21, 0, 'BS205B - Mirror \"Veloce\" - Black', 'BS205B - Mirror \"Veloce\" - Black', '0000-00-00', 1),
(252, 21, 0, 'BS207A - Mirror \"4D\" LH - Aluminium', 'BS207A - Mirror \"4D\" LH - Aluminium', '0000-00-00', 1),
(253, 21, 0, 'BS207B - Mirror \"4D\" LH - Black', 'BS207B - Mirror \"4D\" LH - Black', '0000-00-00', 1),
(254, 21, 0, 'BS208A - Mirror \"4D\" RH - Aluminium', 'BS208A - Mirror \"4D\" RH - Aluminium', '0000-00-00', 1),
(255, 21, 0, 'BS208B - Mirror \"4D\" RH - Black', 'BS208B - Mirror \"4D\" RH - Black', '0000-00-00', 1),
(256, 21, 0, 'BS250B - Mirror \" One\" - Black', 'BS250B - Mirror \" One\" - Black', '0000-00-00', 1),
(257, 21, 0, 'BS285A - Mirror \"Spy R 80\" - Aluminium', 'BS285A - Mirror \"Spy R 80\" - Aluminium', '0000-00-00', 1),
(258, 21, 0, 'BS285B - Mirror \"Spy R 80\" - Black', 'BS285B - Mirror \"Spy R 80\" - Black', '0000-00-00', 1),
(259, 21, 0, 'BS303A - Spy-Arm 80 - Aluminium', 'BS303A - Spy-Arm 80 - Aluminium', '0000-00-00', 1),
(260, 21, 0, 'BS303B - Spy-Arm 80 - Black', 'BS303B - Spy-Arm 80 - Black', '0000-00-00', 1),
(261, 21, 0, 'BS305A - Mirror \"Veloce L\"Sport - Aluminium', 'BS305A - Mirror \"Veloce L\"Sport - Aluminium', '0000-00-00', 1),
(262, 21, 0, 'BS305B - Mirror \"Veloce L\" Sport - Black', 'BS305B - Mirror \"Veloce L\" Sport - Black', '0000-00-00', 1),
(263, 21, 0, 'BS306A - Mirror \"Veloce L naked\" - Aluminium', 'BS306A - Mirror \"Veloce L naked\" - Aluminium', '0000-00-00', 1),
(264, 21, 0, 'BS306B - Mirror \"Veloce L naked\" - Black', 'BS306B - Mirror \"Veloce L naked\" - Black', '0000-00-00', 1),
(265, 21, 0, 'BS711B - Mirror adapter', 'BS711B - Mirror adapter', '0000-00-00', 1),
(266, 21, 0, 'BS716B - Mirror adapters Multistrada', 'BS716B - Mirror adapters Multistrada', '0000-00-00', 1),
(267, 21, 0, 'BS717B - Mirror adapters Multistrada', 'BS717B - Mirror adapters Multistrada', '0000-00-00', 1),
(268, 21, 0, 'BS770B - Mirror handlebar adapter 10x1.25 (ปะกับหูกระจก)', 'BS770B - Mirror handlebar adapter 10x1.25 (ปะกับหูกระจก)', '0000-00-00', 1),
(269, 21, 0, 'BS777B - Mirror adapter R1 09-14', 'BS777B - Mirror adapter R1 09-14', '0000-00-00', 1),
(270, 21, 0, 'BS778B - Adapter CBR600RR', 'BS778B - Adapter CBR600RR', '0000-00-00', 1),
(271, 21, 0, 'BS785B - Mirror Adapter S1000RR', 'BS785B - Mirror Adapter S1000RR', '0000-00-00', 1),
(272, 21, 0, 'BS786B - Mirror adapter-1pc TMAX (Fairing Position)', 'BS786B - Mirror adapter-1pc TMAX (Fairing Position)', '0000-00-00', 1),
(273, 21, 0, 'BS789B - Mirror adapter 1199', 'BS789B - Mirror adapter 1199', '0000-00-00', 1),
(274, 21, 0, 'BS790B - Mirror adapter BMW C600/C650', 'BS790B - Mirror adapter BMW C600/C650', '0000-00-00', 1),
(275, 21, 0, 'BS805B - Mirror adapters (right+left)/ pair TMAX530 ', 'BS805B - Mirror adapters (right+left)/ pair TMAX530 ', '0000-00-00', 1),
(276, 11, 0, 'BS806A - Mirror cap TMAX 530/ each side', 'BS806A - Mirror cap TMAX 530/ each side', '0000-00-00', 1),
(277, 11, 0, 'BS811B - Mirror Adapter One universal', 'BS811B - Mirror Adapter One universal', '0000-00-00', 1),
(278, 11, 0, 'BS812B - Mirror Adapter ONE R9T/Each', 'BS812B - Mirror Adapter ONE R9T/Each', '0000-00-00', 1),
(279, 11, 0, 'CT015A - Fluid Tank 68oz - Aluminium (เล็ก)', 'CT015A - Fluid Tank 68oz - Aluminium (เล็ก)', '0000-00-00', 1),
(280, 11, 0, 'CT015B - Fluid Tank 68oz - Black (เล็ก)', 'CT015B - Fluid Tank 68oz - Black (เล็ก)', '0000-00-00', 1),
(281, 11, 0, 'CT015G - Fluid Tank 68oz - Gold (เล็ก)', 'CT015G - Fluid Tank 68oz - Gold (เล็ก)', '0000-00-00', 1),
(282, 11, 0, 'CT015R - Fluid Tank.68oz - Red (เล็ก)', 'CT015R - Fluid Tank.68oz - Red (เล็ก)', '0000-00-00', 1),
(283, 11, 0, 'CT015U - Fluid Tank .68oz - Blue (เล็ก)', 'CT015U - Fluid Tank .68oz - Blue (เล็ก)', '0000-00-00', 1),
(284, 11, 0, 'CT017R - Fluid Tank .88oz - Red (กลางตรง)', 'CT017R - Fluid Tank .88oz - Red (กลางตรง)', '0000-00-00', 1),
(285, 11, 0, 'CT025A - Fluid Tank .91oz - Aluminium (กลาง)', 'CT025A - Fluid Tank .91oz - Aluminium (กลาง)', '0000-00-00', 1),
(286, 11, 0, 'CT025B - Fluid Tank .91oz - Black (กลาง)', 'CT025B - Fluid Tank .91oz - Black (กลาง)', '0000-00-00', 1),
(287, 11, 0, 'CT025G - Fluid Tank .91oz - Gold (กลาง)', 'CT025G - Fluid Tank .91oz - Gold (กลาง)', '0000-00-00', 1),
(288, 11, 0, 'CT025R - Fluid Tank .91oz - Red (กลาง)', 'CT025R - Fluid Tank .91oz - Red (กลาง)', '0000-00-00', 1),
(289, 11, 0, 'CT025U - Fluid Tank .91oz - Blue (กลาง)', 'CT025U - Fluid Tank .91oz - Blue (กลาง)', '0000-00-00', 1),
(290, 11, 0, 'CT027A - Fluid Tank 1.18oz - Aluminium (ใหญ่)', 'CT027A - Fluid Tank 1.18oz - Aluminium (ใหญ่)', '0000-00-00', 1),
(291, 11, 0, 'CT027B - Fluid Tank 1.18oz - Black (ใหญ่)', 'CT027B - Fluid Tank 1.18oz - Black (ใหญ่)', '0000-00-00', 1),
(292, 11, 0, 'CT027G - Fluid Tank 1.18oz - Gold (ใหญ่)', 'CT027G - Fluid Tank 1.18oz - Gold (ใหญ่)', '0000-00-00', 1),
(293, 11, 0, 'CT027R - Fluid Tank 1.18oz - Red (ใหญ่)', 'CT027R - Fluid Tank 1.18oz - Red (ใหญ่)', '0000-00-00', 1),
(294, 11, 0, 'CT027U - Fluid Tank 1.18oz - Blue (ใหญ่)', 'CT027U - Fluid Tank 1.18oz - Blue (ใหญ่)', '0000-00-00', 1),
(295, 11, 0, 'CT115A - Rear Brake Fluid Tank \"NEXT\" - Aluminium (เล็ก)', 'CT115A - Rear Brake Fluid Tank \"NEXT\" - Aluminium (เล็ก)', '0000-00-00', 1),
(296, 11, 0, 'CT115B - Rear Brake Fluid Tank \"NEXT\" - Black (เล็ก)', 'CT115B - Rear Brake Fluid Tank \"NEXT\" - Black (เล็ก)', '0000-00-00', 1),
(297, 11, 0, 'CT115G - Rear Brake Fluid Tank \"NEXT\" - Gold (เล็ก)', 'CT115G - Rear Brake Fluid Tank \"NEXT\" - Gold (เล็ก)', '0000-00-00', 1),
(298, 11, 0, 'CT115R - Rear Brake Fluid Tank \"NEXT\" - Red (เล็ก)', 'CT115R - Rear Brake Fluid Tank \"NEXT\" - Red (เล็ก)', '0000-00-00', 1),
(299, 11, 0, 'CT115U - Rear Brake Fluid Tank \"NEXT\" - Blue (เล็ก)', 'CT115U - Rear Brake Fluid Tank \"NEXT\" - Blue (เล็ก)', '0000-00-00', 1),
(300, 11, 0, 'CT125A - Clutch fluid tank \"NEXT\" - Aluminium (กลาง)', 'CT125A - Clutch fluid tank \"NEXT\" - Aluminium (กลาง)', '0000-00-00', 1),
(301, 11, 0, 'CT125B - Clutch fluid tank \"NEXT\" - Black (กลาง)', 'CT125B - Clutch fluid tank \"NEXT\" - Black (กลาง)', '0000-00-00', 1),
(302, 11, 0, 'CT125G - Clutch fluid tank \"NEXT\" - Gold (กลาง)', 'CT125G - Clutch fluid tank \"NEXT\" - Gold (กลาง)', '0000-00-00', 1),
(303, 11, 0, 'CT125R - Clutch fluid tank \"NEXT\" - Red (กลาง)', 'CT125R - Clutch fluid tank \"NEXT\" - Red (กลาง)', '0000-00-00', 1),
(304, 11, 0, 'CT125U - Clutch fluid tank \"NEXT\" - Blue (กลาง)', 'CT125U - Clutch fluid tank \"NEXT\" - Blue (กลาง)', '0000-00-00', 1),
(305, 11, 0, 'CT127A - Front Brake Fluid Tank \"NEXT\" - Aluminium (ใหญ่)', 'CT127A - Front Brake Fluid Tank \"NEXT\" - Aluminium (ใหญ่)', '0000-00-00', 1),
(306, 11, 0, 'CT127B - Front Brake Fluid Tank \"NEXT\" - Black (ใหญ่)', 'CT127B - Front Brake Fluid Tank \"NEXT\" - Black (ใหญ่)', '0000-00-00', 1),
(307, 11, 0, 'CT127G - Front Brake Fluid Tank \"NEXT\" - Gold (ใหญ่)', 'CT127G - Front Brake Fluid Tank \"NEXT\" - Gold (ใหญ่)', '0000-00-00', 1),
(308, 11, 0, 'CT127R - Front Brake Fluid Tank \"NEXT\" - Red (ใหญ่)', 'CT127R - Front Brake Fluid Tank \"NEXT\" - Red (ใหญ่)', '0000-00-00', 1),
(309, 11, 0, 'CT127U - Front Brake Fluid Tank \"NEXT\" - Blue (ใหญ่)', 'CT127U - Front Brake Fluid Tank \"NEXT\" - Blue (ใหญ่)', '0000-00-00', 1),
(310, 11, 0, 'CT135A - Clutch  Fluid Tank \"Wave\" - Aluminium (กลาง)', 'CT135A - Clutch  Fluid Tank \"Wave\" - Aluminium (กลาง)', '0000-00-00', 1),
(311, 11, 0, 'CT135B - Clutch  Fluid Tank \"Wave\" - Blalck (กลาง)', 'CT135B - Clutch  Fluid Tank \"Wave\" - Blalck (กลาง)', '0000-00-00', 1),
(312, 11, 0, 'CT135G - Clutch  Fluid Tank \"Wave\" - Gold (กลาง)', 'CT135G - Clutch  Fluid Tank \"Wave\" - Gold (กลาง)', '0000-00-00', 1),
(313, 11, 0, 'CT135R - Clutch  Fluid Tank \"Wave\" - Red (กลาง)', 'CT135R - Clutch  Fluid Tank \"Wave\" - Red (กลาง)', '0000-00-00', 1),
(314, 11, 0, 'CT135U - Clutch  Fluid Tank \"Wave\" - Blue (กลาง)', 'CT135U - Clutch  Fluid Tank \"Wave\" - Blue (กลาง)', '0000-00-00', 1),
(315, 11, 0, 'CT137A - Brake Fluid Tank \"Wave\" - Aluminium (ใหญ่)', 'CT137A - Brake Fluid Tank \"Wave\" - Aluminium (ใหญ่)', '0000-00-00', 1),
(316, 11, 0, 'CT137B - Brake Fluid Tank \"Wave\" - Black (ใหญ่)', 'CT137B - Brake Fluid Tank \"Wave\" - Black (ใหญ่)', '0000-00-00', 1),
(317, 11, 0, 'CT137G - Brake Fluid Tank \"Wave\" - Gold (ใหญ่)', 'CT137G - Brake Fluid Tank \"Wave\" - Gold (ใหญ่)', '0000-00-00', 1),
(318, 11, 0, 'CT137R - Brake Fluid Tank \"Wave\" - Red (ใหญ่)', 'CT137R - Brake Fluid Tank \"Wave\" - Red (ใหญ่)', '0000-00-00', 1),
(319, 11, 0, 'CT137U - Brake Fluid Tank \"Wave\" - Blue (ใหญ่)', 'CT137U - Brake Fluid Tank \"Wave\" - Blue (ใหญ่)', '0000-00-00', 1),
(320, 11, 0, 'CT157BS - Brake Fluid Tank \"NOTCH\" 51.5mm - Black (ใหญ่)', 'CT157BS - Brake Fluid Tank \"NOTCH\" 51.5mm - Black (ใหญ่)', '0000-00-00', 1),
(321, 11, 0, 'CT157R - Brake Fluid Tank \"NOTCH\" 51.5mm - Red (ใหญ่)', 'CT157R - Brake Fluid Tank \"NOTCH\" 51.5mm - Red (ใหญ่)', '0000-00-00', 1),
(322, 11, 0, 'CT155BS - Clutch  Fluid Tank \"NOTCH\" Fluid Tank 42mm - Black (กลาง)', 'CT155BS - Clutch  Fluid Tank \"NOTCH\" Fluid Tank 42mm - Black (กลาง)', '0000-00-00', 1),
(323, 11, 0, 'CT155R - Clutch  Fluid Tank \"NOTCH\" Fluid Tank42mm - Red (กลาง)', 'CT155R - Clutch  Fluid Tank \"NOTCH\" Fluid Tank42mm - Red (กลาง)', '0000-00-00', 1),
(324, 11, 0, 'CT147BS - Brake Fluid Tank  \"PURE\" 51.5mm - Black (ใหญ่)', 'CT147BS - Brake Fluid Tank  \"PURE\" 51.5mm - Black (ใหญ่)', '0000-00-00', 1),
(325, 11, 0, 'CT147R - Brake Fluid Tank  \"PURE\" 51.5mm - Red (ใหญ่)', 'CT147R - Brake Fluid Tank  \"PURE\" 51.5mm - Red (ใหญ่)', '0000-00-00', 1),
(326, 11, 0, 'CT145BS - Clutch  Fluid Tank \"PURE\" 42mm - Black (กลาง)', 'CT145BS - Clutch  Fluid Tank \"PURE\" 42mm - Black (กลาง)', '0000-00-00', 1),
(327, 11, 0, 'CT145R - Clutch  Fluid Tank \"PURE\" 42mm - Red (กลาง)', 'CT145R - Clutch  Fluid Tank \"PURE\" 42mm - Red (กลาง)', '0000-00-00', 1),
(328, 11, 0, 'CT450B - Fluid Tank Bracket (ขากระปุก) ยาว', 'CT450B - Fluid Tank Bracket (ขากระปุก) ยาว', '0000-00-00', 1),
(329, 11, 0, 'CT451B - Fluid Tank Bracket (ขากระปุก) สั้น', 'CT451B - Fluid Tank Bracket (ขากระปุก) สั้น', '0000-00-00', 1),
(330, 20, 0, 'CT453B - Rizoma Fluid Tank Adapter Panigale', 'CT453B - Rizoma Fluid Tank Adapter Panigale', '0000-00-00', 1),
(331, 20, 0, 'CT454B - Fluid Tank Bracket', 'CT454B - Fluid Tank Bracket', '0000-00-00', 1),
(332, 20, 0, 'CT457B Fluid Tank Bracket (Handlebar clamp lock)', 'CT457B Fluid Tank Bracket (Handlebar clamp lock)', '0000-00-00', 1),
(333, 0, 0, 'EE077B - License Light Kit (ไฟส่องป้ายทะเบียน)', 'EE077B - License Light Kit (ไฟส่องป้ายทะเบียน)', '0000-00-00', 1),
(334, 0, 0, 'EE078H - Turnsignal Cable Kit for R9T', 'EE078H - Turnsignal Cable Kit for R9T', '0000-00-00', 1),
(335, 20, 0, 'EE079H - Turnsignal Cable Kit Ducati', 'EE079H - Turnsignal Cable Kit Ducati', '0000-00-00', 1),
(336, 20, 0, 'FG051B - Toe Guard', 'FG051B - Toe Guard', '0000-00-00', 1),
(337, 20, 0, 'FG070B - Toe Guard', 'FG070B - Toe Guard', '0000-00-00', 1),
(338, 20, 0, 'FR021A -  Indicator Light \"AVIO 21\" - Aluminium', 'FR021A -  Indicator Light \"AVIO 21\" - Aluminium', '0000-00-00', 1),
(339, 20, 0, 'FR021B -  Indicator Light \"AVIO 21\" - Black', 'FR021B -  Indicator Light \"AVIO 21\" - Black', '0000-00-00', 1),
(340, 20, 0, 'FR021G -  Indicator Light \"AVIO 21\" - Gold', 'FR021G -  Indicator Light \"AVIO 21\" - Gold', '0000-00-00', 1),
(341, 20, 0, 'FR021R -  Indicator Light \"AVIO 21\" - Red', 'FR021R -  Indicator Light \"AVIO 21\" - Red', '0000-00-00', 1),
(342, 20, 0, 'FR025A -  Indicator Light \"ZERO11\" - Aluminium', 'FR025A -  Indicator Light \"ZERO11\" - Aluminium', '0000-00-00', 1),
(343, 20, 0, 'FR025B -  Indicator Light \"ZERO11\" - Black', 'FR025B -  Indicator Light \"ZERO11\" - Black', '0000-00-00', 1),
(344, 20, 0, 'FR026A -  Indicator Light \"GRAFFIO\" - Aluminium', 'FR026A -  Indicator Light \"GRAFFIO\" - Aluminium', '0000-00-00', 1),
(345, 20, 0, 'FR026B -  Indicator Light \"GRAFFIO\" - Black', 'FR026B -  Indicator Light \"GRAFFIO\" - Black', '0000-00-00', 1),
(346, 20, 0, 'FR026G -  Indicator Light \"GRAFFIO\" - Gold', 'FR026G -  Indicator Light \"GRAFFIO\" - Gold', '0000-00-00', 1),
(347, 20, 0, 'FR026R -  Indicator Light \"GRAFFIO\" - Red', 'FR026R -  Indicator Light \"GRAFFIO\" - Red', '0000-00-00', 1),
(348, 20, 0, 'FR026U -  Indicator Light \"GRAFFIO\" - Blue', 'FR026U -  Indicator Light \"GRAFFIO\" - Blue', '0000-00-00', 1),
(349, 20, 0, 'FR027B -  Indicator Light \"DROP\" - Black', 'FR027B -  Indicator Light \"DROP\" - Black', '0000-00-00', 1),
(350, 20, 0, 'FR027CH -  Indicator Light \"DROP\" - Polish', 'FR027CH -  Indicator Light \"DROP\" - Polish', '0000-00-00', 1),
(351, 20, 0, 'FR028A -  Indicator Light \"ACTION\" - Aluminium', 'FR028A -  Indicator Light \"ACTION\" - Aluminium', '0000-00-00', 1),
(352, 20, 0, 'FR028B -  Indicator Light \"ACTION\" - Black', 'FR028B -  Indicator Light \"ACTION\" - Black', '0000-00-00', 1),
(353, 20, 0, 'FR035A -  Indicator Light \"ZERO\" New - Aluminium', 'FR035A -  Indicator Light \"ZERO\" New - Aluminium', '0000-00-00', 1),
(354, 20, 0, 'FR035B -  Indicator Light \"ZERO\" New - Black', 'FR035B -  Indicator Light \"ZERO\" New - Black', '0000-00-00', 1),
(355, 20, 0, 'FR150B -  Indicator Light \"CLUB\" - Black', 'FR150B -  Indicator Light \"CLUB\" - Black', '0000-00-00', 1),
(356, 20, 0, 'FR150CH -  Indicator Light \"CLUB\" - Polish', 'FR150CH -  Indicator Light \"CLUB\" - Polish', '0000-00-00', 1),
(357, 20, 0, 'FR151B -  Indicator Light \"CLUB L\" - Black', 'FR151B -  Indicator Light \"CLUB L\" - Black', '0000-00-00', 1),
(358, 20, 0, 'FR151CH -  Indicator Light \"CLUB L\" - Polish', 'FR151CH -  Indicator Light \"CLUB L\" - Polish', '0000-00-00', 1),
(359, 20, 0, 'FR155B -  Indicator Light \"Club S\" - Black', 'FR155B -  Indicator Light \"Club S\" - Black', '0000-00-00', 1),
(360, 20, 0, 'FR155CH -  Indicator Light \"Club S\" - Polish', 'FR155CH -  Indicator Light \"Club S\" - Polish', '0000-00-00', 1),
(361, 20, 0, 'FR060B -  Indicator Light \"SGUARDO\" - Black', 'FR060B -  Indicator Light \"SGUARDO\" - Black', '0000-00-00', 1),
(362, 20, 0, 'FR060CH -  Indicator Light \"SGUARDO\" - Aluminium', 'FR060CH -  Indicator Light \"SGUARDO\" - Aluminium', '0000-00-00', 1),
(363, 20, 0, 'FR120A -  Indicator Light \"LEGGERA\" - Aluminium', 'FR120A -  Indicator Light \"LEGGERA\" - Aluminium', '0000-00-00', 1),
(364, 20, 0, 'FR120B -  Indicator Light \"LEGGERA\" - Black', 'FR120B -  Indicator Light \"LEGGERA\" - Black', '0000-00-00', 1),
(365, 20, 0, 'FR125A -  Indicator Light \"LEGGERA S\" - Aluminium', 'FR125A -  Indicator Light \"LEGGERA S\" - Aluminium', '0000-00-00', 1),
(366, 20, 0, 'FR125B -  Indicator Light \"LEGGERA S\" - Black', 'FR125B -  Indicator Light \"LEGGERA S\" - Black', '0000-00-00', 1),
(367, 20, 0, 'FR160B -  Indicator Light \'IRIDE\" - Black', 'FR160B -  Indicator Light \'IRIDE\" - Black', '0000-00-00', 1),
(368, 20, 0, 'FR160CH -  Indicator Light \'IRIDE\" - Aluminium', 'FR160CH -  Indicator Light \'IRIDE\" - Aluminium', '0000-00-00', 1),
(369, 20, 0, 'FR165B -  Indicator Light \'IRIDE S\" - Black', 'FR165B -  Indicator Light \'IRIDE S\" - Black', '0000-00-00', 1),
(370, 20, 0, 'FR165CH -  Indicator Light \'IRIDE S\" - Aluminium', 'FR165CH -  Indicator Light \'IRIDE S\" - Aluminium', '0000-00-00', 1),
(371, 20, 0, 'FR110B -  Indicator Light \"CORSA\" - Black', 'FR110B -  Indicator Light \"CORSA\" - Black', '0000-00-00', 1),
(372, 14, 0, 'FR221B - Indicator light Adapter PVC 4 pieces BMW', 'FR221B - Indicator light Adapter PVC 4 pieces BMW', '0000-00-00', 1),
(373, 14, 0, 'FR411B - Indicator Adapter on Ducati Hypermotard 796/1100', 'FR411B - Indicator Adapter on Ducati Hypermotard 796/1100', '0000-00-00', 1),
(374, 14, 0, 'FR417B - Indicator Mounting Adapter for Hypermotard 821', 'FR417B - Indicator Mounting Adapter for Hypermotard 821', '0000-00-00', 1),
(375, 14, 0, 'GR205A - Grips \"Sport line\" - Aluminium', 'GR205A - Grips \"Sport line\" - Aluminium', '0000-00-00', 1),
(376, 14, 0, 'GR205B - Grips \"Sport line\" - Black', 'GR205B - Grips \"Sport line\" - Black', '0000-00-00', 1),
(377, 14, 0, 'GR205G - Grips \"Sport line\" - Gold', 'GR205G - Grips \"Sport line\" - Gold', '0000-00-00', 1),
(378, 14, 0, 'GR205R - Grips \"Sport line\" - Red', 'GR205R - Grips \"Sport line\" - Red', '0000-00-00', 1),
(379, 14, 0, 'GR205U - Grips \"Sport line\" - Blue', 'GR205U - Grips \"Sport line\" - Blue', '0000-00-00', 1),
(380, 14, 0, 'GR213A - Grips \"LUX\" - Aluminium', 'GR213A - Grips \"LUX\" - Aluminium', '0000-00-00', 1),
(381, 14, 0, 'GR213B - Grips \"LUX\" - Black', 'GR213B - Grips \"LUX\" - Black', '0000-00-00', 1),
(382, 14, 0, 'GR213G - Grips \"LUX\" - Gold', 'GR213G - Grips \"LUX\" - Gold', '0000-00-00', 1),
(383, 14, 0, 'GR213R - Grips \"LUX\" - Red', 'GR213R - Grips \"LUX\" - Red', '0000-00-00', 1),
(384, 14, 0, 'GR213U - Grips \"LUX\" - Blue', 'GR213U - Grips \"LUX\" - Blue', '0000-00-00', 1),
(385, 6, 0, 'GR221A - Grips \"URLO\"  - Aluminium', 'GR221A - Grips \"URLO\"  - Aluminium', '0000-00-00', 1),
(386, 6, 0, 'GR221B - Grips \"URLO\"  - Black', 'GR221B - Grips \"URLO\"  - Black', '0000-00-00', 1),
(387, 6, 0, 'GR418B - Grips adapter Kit', 'GR418B - Grips adapter Kit', '0000-00-00', 1),
(388, 6, 0, 'LB301G - Brake Lever Kawasaki', 'LB301G - Brake Lever Kawasaki', '0000-00-00', 1),
(389, 6, 0, 'LB500A - Brake Lever \"Feel\" Ducati - Aluminium', 'LB500A - Brake Lever \"Feel\" Ducati - Aluminium', '0000-00-00', 1),
(390, 6, 0, 'LB500B - Brake Lever \"Feel\" Ducati - Black', 'LB500B - Brake Lever \"Feel\" Ducati - Black', '0000-00-00', 1),
(391, 6, 0, 'LB500G - Brake Lever \"Feel\" Ducati - Gold', 'LB500G - Brake Lever \"Feel\" Ducati - Gold', '0000-00-00', 1),
(392, 6, 0, 'LB700B - Brake Lever \"Feel\" - Black', 'LB700B - Brake Lever \"Feel\" - Black', '0000-00-00', 1),
(393, 6, 0, 'LB701A - Brake Lever \"Feel\" R9T/ R1200GS - Aluminium', 'LB701A - Brake Lever \"Feel\" R9T/ R1200GS - Aluminium', '0000-00-00', 1),
(394, 6, 0, 'LB701B - Brake Lever \"Feel\" R9T/ R1200GS - Black', 'LB701B - Brake Lever \"Feel\" R9T/ R1200GS - Black', '0000-00-00', 1),
(395, 6, 0, 'LBR301B - Brake Lever \"RRC\" Z1000 - Black', 'LBR301B - Brake Lever \"RRC\" Z1000 - Black', '0000-00-00', 1),
(396, 6, 0, 'LBR302A - Brake lever \"RRC\" Z800 - Aluminium', 'LBR302A - Brake lever \"RRC\" Z800 - Aluminium', '0000-00-00', 1),
(397, 6, 0, 'LBR302B - Brake lever \"RRC\" Z800 - Black', 'LBR302B - Brake lever \"RRC\" Z800 - Black', '0000-00-00', 1),
(398, 6, 0, 'LBR500A - Brake lever \"RRC\" - Aluminium', 'LBR500A - Brake lever \"RRC\" - Aluminium', '0000-00-00', 1),
(399, 6, 0, 'LBR500B - Brake lever  \"RRC\" - Black', 'LBR500B - Brake lever  \"RRC\" - Black', '0000-00-00', 1),
(400, 6, 0, 'LBR500G - Brake lever \"RRC\" - Gold', 'LBR500G - Brake lever \"RRC\" - Gold', '0000-00-00', 1),
(401, 6, 0, 'LC302G - Clutch Lever  \"Feel\" Kawasaki - Gold', 'LC302G - Clutch Lever  \"Feel\" Kawasaki - Gold', '0000-00-00', 1),
(402, 6, 0, 'LC500A - Clutch Lever \"Feel\" Ducati - Aluminium', 'LC500A - Clutch Lever \"Feel\" Ducati - Aluminium', '0000-00-00', 1),
(403, 6, 0, 'LC500B - Clutch Lever \"Feel\" Ducati - Black', 'LC500B - Clutch Lever \"Feel\" Ducati - Black', '0000-00-00', 1),
(404, 6, 0, 'LC500G - Clutch Lever \"Feel\" Ducati - Gold', 'LC500G - Clutch Lever \"Feel\" Ducati - Gold', '0000-00-00', 1),
(405, 6, 0, 'LC701A - Clutch Lever with adjustment \'FEEL\" S1000RR 2015 - Aluminium', 'LC701A - Clutch Lever with adjustment \'FEEL\" S1000RR 2015 - Aluminium', '0000-00-00', 1),
(406, 6, 0, 'LC703B - Clutch Lever \"Feel\" - Black', 'LC703B - Clutch Lever \"Feel\" - Black', '0000-00-00', 1),
(407, 6, 0, 'LC705A - Clutch Lever\"Feel\" R9T/ R1200GS - Aluminium', 'LC705A - Clutch Lever\"Feel\" R9T/ R1200GS - Aluminium', '0000-00-00', 1),
(408, 6, 0, 'LC705B - Clutch Lever\"Feel\" R9T/ R1200GS - Black', 'LC705B - Clutch Lever\"Feel\" R9T/ R1200GS - Black', '0000-00-00', 1),
(409, 6, 0, 'LCR301A - Clutch lever with adjustment \"RRC\" Z800 Z1000 - Aluminium', 'LCR301A - Clutch lever with adjustment \"RRC\" Z800 Z1000 - Aluminium', '0000-00-00', 1),
(410, 6, 0, 'LCR301B - Clutch lever with adjustment \"RRC\" Z800 Z1000 - Black', 'LCR301B - Clutch lever with adjustment \"RRC\" Z800 Z1000 - Black', '0000-00-00', 1),
(411, 25, 0, 'LCR500A - Clutch lever with adjustment \"RRC\" - Aluminium', 'LCR500A - Clutch lever with adjustment \"RRC\" - Aluminium', '0000-00-00', 1),
(412, 25, 0, 'LCR500B - Clutch lever with adjustment \"RRC\" - Black', 'LCR500B - Clutch lever with adjustment \"RRC\" - Black', '0000-00-00', 1),
(413, 25, 0, 'LCR500G - Clutch lever with adjustment \"RRC\" - Gold', 'LCR500G - Clutch lever with adjustment \"RRC\" - Gold', '0000-00-00', 1),
(414, 25, 0, 'LP010A - Proguard System - Aluminium', 'LP010A - Proguard System - Aluminium', '0000-00-00', 1),
(415, 25, 0, 'LP010B - Proguard System - Black', 'LP010B - Proguard System - Black', '0000-00-00', 1),
(416, 25, 0, 'LP010G - Proguard System - Gold', 'LP010G - Proguard System - Gold', '0000-00-00', 1),
(417, 25, 0, 'LP200B - Proguard Mounting Adapter (13-20mm) 1 piece- Universal', 'LP200B - Proguard Mounting Adapter (13-20mm) 1 piece- Universal', '0000-00-00', 1),
(418, 25, 0, 'LP321B - Proguard Mounting Adapter 1 piece- S1000RR', 'LP321B - Proguard Mounting Adapter 1 piece- S1000RR', '0000-00-00', 1),
(419, 16, 0, 'LP330B - Proguard Mounting Adapter 1 piece - Panigale 1199', 'LP330B - Proguard Mounting Adapter 1 piece - Panigale 1199', '0000-00-00', 1),
(420, 16, 0, 'LP400B - Proguard Mounting Adapter (20-23mm) 1 piece- Harley Davidson', 'LP400B - Proguard Mounting Adapter (20-23mm) 1 piece- Harley Davidson', '0000-00-00', 1),
(421, 16, 0, 'LPR040B - Proguard System RRC Racing', 'LPR040B - Proguard System RRC Racing', '0000-00-00', 1),
(422, 16, 0, 'MA001A - 7/8\" Handlebar (22 mm.) - Alumnium', 'MA001A - 7/8\" Handlebar (22 mm.) - Alumnium', '0000-00-00', 1),
(423, 16, 0, 'MA001B - 7/8\" Handlebar (22 mm.) - Black', 'MA001B - 7/8\" Handlebar (22 mm.) - Black', '0000-00-00', 1),
(424, 16, 0, 'MA001G - 7/8\" Handlebar (22 mm.) - Gold', 'MA001G - 7/8\" Handlebar (22 mm.) - Gold', '0000-00-00', 1),
(425, 16, 0, 'MA001R - 7/8\" Handlebar (22 mm.) - Red', 'MA001R - 7/8\" Handlebar (22 mm.) - Red', '0000-00-00', 1);
INSERT INTO `product_category` (`id`, `id_brand_category`, `id_model_category`, `name`, `description`, `date`, `status`) VALUES
(426, 16, 0, 'MA005A - Handlebar Conical 22-29  - H30mm (FAT) - Aluminium', 'MA005A - Handlebar Conical 22-29  - H30mm (FAT) - Aluminium', '0000-00-00', 1),
(427, 16, 0, 'MA005R - Handlebar Conical 22-29  - H30mm (FAT) - Red', 'MA005R - Handlebar Conical 22-29  - H30mm (FAT) - Red', '0000-00-00', 1),
(428, 16, 0, 'MA006B - Handlebar Conical 22-29  - H30mm (FAT) - Black', 'MA006B - Handlebar Conical 22-29  - H30mm (FAT) - Black', '0000-00-00', 1),
(429, 16, 0, 'MA006G - Handlebar Conical 22-29  - H30mm (FAT) - Gold', 'MA006G - Handlebar Conical 22-29  - H30mm (FAT) - Gold', '0000-00-00', 1),
(430, 16, 0, 'MA009B - Handlebar Conical 22-29  - H50mm (FAT) - Black', 'MA009B - Handlebar Conical 22-29  - H50mm (FAT) - Black', '0000-00-00', 1),
(431, 16, 0, 'MA011A - Handlebar Conical 22-29  - H20mm (FAT) - Alumnium', 'MA011A - Handlebar Conical 22-29  - H20mm (FAT) - Alumnium', '0000-00-00', 1),
(432, 16, 0, 'MA011B - Handlebar Conical 22-29  - H20mm (FAT) - Black', 'MA011B - Handlebar Conical 22-29  - H20mm (FAT) - Black', '0000-00-00', 1),
(433, 16, 0, 'MA011G - Handlebar Conical 22-29  - H20mm (FAT) - Gold', 'MA011G - Handlebar Conical 22-29  - H20mm (FAT) - Gold', '0000-00-00', 1),
(434, 16, 0, 'MA015A - Handlebar Conical 22-29  - H10mm (FAT) Drag Bar - Aluminium', 'MA015A - Handlebar Conical 22-29  - H10mm (FAT) Drag Bar - Aluminium', '0000-00-00', 1),
(435, 16, 0, 'MA015B - Handlebar Conical 22-29  - H10mm (FAT) Drag Bar - Black', 'MA015B - Handlebar Conical 22-29  - H10mm (FAT) Drag Bar - Black', '0000-00-00', 1),
(436, 0, 0, 'MA015B - Handlebar Conical 22-29  - H10mm (FAT) Drag Bar - Gold', 'MA015B - Handlebar Conical 22-29  - H10mm (FAT) Drag Bar - Gold', '0000-00-00', 1),
(437, 0, 0, 'MA015R - Handlebar Conical 22-29  - H10mm (FAT) Drag Bar - Red', 'MA015R - Handlebar Conical 22-29  - H10mm (FAT) Drag Bar - Red', '0000-00-00', 1),
(438, 0, 0, 'MA015U - Handlebar Conical 22-29  - H10mm (FAT) Drag Bar - Blue', 'MA015U - Handlebar Conical 22-29  - H10mm (FAT) Drag Bar - Blue', '0000-00-00', 1),
(439, 0, 0, 'MA050B - Clip-on Bar Kit (R Nine T)', 'MA050B - Clip-on Bar Kit (R Nine T)', '0000-00-00', 1),
(440, 0, 0, 'MA109B - Crossbar', 'MA109B - Crossbar', '0000-00-00', 1),
(441, 0, 0, 'MA204A - Clip-on bars kit - Aluminium', 'MA204A - Clip-on bars kit - Aluminium', '0000-00-00', 1),
(442, 0, 0, 'MA204B - Clip-on bars kit - Black', 'MA204B - Clip-on bars kit - Black', '0000-00-00', 1),
(443, 0, 0, 'MA207A - Handlebar \"Style & Comfort\" Diavel - Aluminium ', 'MA207A - Handlebar \"Style & Comfort\" Diavel - Aluminium ', '0000-00-00', 1),
(444, 17, 0, 'MA207B - Handlebar \"Style & Comfort\" Diavel - Black ', 'MA207B - Handlebar \"Style & Comfort\" Diavel - Black ', '0000-00-00', 1),
(445, 17, 0, 'MA301B - Handlebar Cap (Single) - Black', 'MA301B - Handlebar Cap (Single) - Black', '0000-00-00', 1),
(446, 17, 0, 'MA400B - Handlebar Adapter TMAX530', 'MA400B - Handlebar Adapter TMAX530', '0000-00-00', 1),
(447, 17, 0, 'MA502A - Handlebar Caps - Aluminium (ปลายแฮนด์เล็ก)', 'MA502A - Handlebar Caps - Aluminium (ปลายแฮนด์เล็ก)', '0000-00-00', 1),
(448, 17, 0, 'MA502B - Handlebar Caps - Black (ปลายแฮนด์เล็ก)', 'MA502B - Handlebar Caps - Black (ปลายแฮนด์เล็ก)', '0000-00-00', 1),
(449, 17, 0, 'MA502G - Handlebar Caps - Gold (ปลายแฮนด์เล็ก)', 'MA502G - Handlebar Caps - Gold (ปลายแฮนด์เล็ก)', '0000-00-00', 1),
(450, 17, 0, 'MA502R - Handlebar Caps - Red (ปลายแฮนด์เล็ก)', 'MA502R - Handlebar Caps - Red (ปลายแฮนด์เล็ก)', '0000-00-00', 1),
(451, 17, 0, 'MA502U - Handlebar Caps - Blue (ปลายแฮนด์เล็ก)', 'MA502U - Handlebar Caps - Blue (ปลายแฮนด์เล็ก)', '0000-00-00', 1),
(452, 17, 0, 'MA506A - Handlebar Caps - Aluminium (ปลายแฮนด์กลาง)', 'MA506A - Handlebar Caps - Aluminium (ปลายแฮนด์กลาง)', '0000-00-00', 1),
(453, 17, 0, 'MA506B - Handlebar Caps - Black (ปลายแฮนด์กลาง)', 'MA506B - Handlebar Caps - Black (ปลายแฮนด์กลาง)', '0000-00-00', 1),
(454, 17, 0, 'MA506G - Handlebar Caps - Gold (ปลายแฮนด์กลาง)', 'MA506G - Handlebar Caps - Gold (ปลายแฮนด์กลาง)', '0000-00-00', 1),
(455, 17, 0, 'MA506R - Handlebar Caps - Red (ปลายแฮนด์กลาง)', 'MA506R - Handlebar Caps - Red (ปลายแฮนด์กลาง)', '0000-00-00', 1),
(456, 17, 0, 'MA506U - Handlebar Caps - Blue (ปลายแฮนด์กลาง)', 'MA506U - Handlebar Caps - Blue (ปลายแฮนด์กลาง)', '0000-00-00', 1),
(457, 17, 0, 'MA508B - Replacement Cap', 'MA508B - Replacement Cap', '0000-00-00', 1),
(458, 17, 0, 'MA512A - Handlebar Caps - Aluminium (ปลายแฮนด์ใหญ่)', 'MA512A - Handlebar Caps - Aluminium (ปลายแฮนด์ใหญ่)', '0000-00-00', 1),
(459, 17, 0, 'MA512B - Handlebar Caps - Black (ปลายแฮนด์ใหญ่)', 'MA512B - Handlebar Caps - Black (ปลายแฮนด์ใหญ่)', '0000-00-00', 1),
(460, 17, 0, 'MA512G - Handlebar Caps - Gold (ปลายแฮนด์ใหญ่)', 'MA512G - Handlebar Caps - Gold (ปลายแฮนด์ใหญ่)', '0000-00-00', 1),
(461, 17, 0, 'MA512R - Handlebar Caps - Red (ปลายแฮนด์ใหญ่)', 'MA512R - Handlebar Caps - Red (ปลายแฮนด์ใหญ่)', '0000-00-00', 1),
(462, 17, 0, 'MA512U - Handlebar Caps - Blue(ปลายแฮนด์ใหญ่)', 'MA512U - Handlebar Caps - Blue(ปลายแฮนด์ใหญ่)', '0000-00-00', 1),
(463, 17, 0, 'MA516A - Handlebar Caps - Aluminium (ปลายแฮนด์แบน)', 'MA516A - Handlebar Caps - Aluminium (ปลายแฮนด์แบน)', '0000-00-00', 1),
(464, 17, 0, 'MA516B - Handlebar Caps - Black (ปลายแฮนด์แบน)', 'MA516B - Handlebar Caps - Black (ปลายแฮนด์แบน)', '0000-00-00', 1),
(465, 17, 0, 'MA516G - Handlebar Caps - Gold (ปลายแฮนด์แบน)', 'MA516G - Handlebar Caps - Gold (ปลายแฮนด์แบน)', '0000-00-00', 1),
(466, 17, 0, 'MA516R - Handlebar Caps - Red (ปลายแฮนด์แบน)', 'MA516R - Handlebar Caps - Red (ปลายแฮนด์แบน)', '0000-00-00', 1),
(467, 17, 0, 'MA516U - Handlebar Caps - Blue (ปลายแฮนด์แบน)', 'MA516U - Handlebar Caps - Blue (ปลายแฮนด์แบน)', '0000-00-00', 1),
(468, 17, 0, 'MA520A - Handlebar Caps - Aluminium (ปลายแฮนด์เฉียง)', 'MA520A - Handlebar Caps - Aluminium (ปลายแฮนด์เฉียง)', '0000-00-00', 1),
(469, 17, 0, 'MA520B - Handlebar Caps - Black (ปลายแฮนด์เฉียง)', 'MA520B - Handlebar Caps - Black (ปลายแฮนด์เฉียง)', '0000-00-00', 1),
(470, 17, 0, 'MA520G - Handlebar Caps - Gold (ปลายแฮนด์เฉียง)', 'MA520G - Handlebar Caps - Gold (ปลายแฮนด์เฉียง)', '0000-00-00', 1),
(471, 17, 0, 'MA520R - Handlebar Caps - Red (ปลายแฮนด์เฉียง)', 'MA520R - Handlebar Caps - Red (ปลายแฮนด์เฉียง)', '0000-00-00', 1),
(472, 17, 0, 'MA520U - Handlebar Caps - Blue (ปลายแฮนด์เฉียง)', 'MA520U - Handlebar Caps - Blue (ปลายแฮนด์เฉียง)', '0000-00-00', 1),
(473, 17, 0, 'MA530A - Handlebar Caps \"Switch\" - Aluminium', 'MA530A - Handlebar Caps \"Switch\" - Aluminium', '0000-00-00', 1),
(474, 17, 0, 'MA530B - Handlebar Caps \"Switch\" - Black', 'MA530B - Handlebar Caps \"Switch\" - Black', '0000-00-00', 1),
(475, 17, 0, 'MA531A - Handlebar Caps New - Aluminium (ปลายแฮนด์แบน)', 'MA531A - Handlebar Caps New - Aluminium (ปลายแฮนด์แบน)', '0000-00-00', 1),
(476, 17, 0, 'MA531B - Handlebar Caps New - Black (ปลายแฮนด์แบน)', 'MA531B - Handlebar Caps New - Black (ปลายแฮนด์แบน)', '0000-00-00', 1),
(477, 17, 0, 'MA532A - Handlebar Cap - Aluminium  (ปลายแฮนด์ใหญ่ 2 two tone)', 'MA532A - Handlebar Cap - Aluminium  (ปลายแฮนด์ใหญ่ 2 two tone)', '0000-00-00', 1),
(478, 17, 0, 'MA532B - Handlebar Cap - Black (ปลายแฮนด์ใหญ่ 2 two tone)', 'MA532B - Handlebar Cap - Black (ปลายแฮนด์ใหญ่ 2 two tone)', '0000-00-00', 1),
(479, 17, 0, 'MA532G - Handlebar Cap - Gold (ปลายแฮนด์ใหญ่ 2 two tone)', 'MA532G - Handlebar Cap - Gold (ปลายแฮนด์ใหญ่ 2 two tone)', '0000-00-00', 1),
(480, 12, 0, 'MA532R - Handlebar Cap - Red (ปลายแฮนด์ใหญ่ 2 two tone)', 'MA532R - Handlebar Cap - Red (ปลายแฮนด์ใหญ่ 2 two tone)', '0000-00-00', 1),
(481, 12, 0, 'MA532U - Handlebar Cap - Blue (ปลายแฮนด์ใหญ่ 2 two tone)', 'MA532U - Handlebar Cap - Blue (ปลายแฮนด์ใหญ่ 2 two tone)', '0000-00-00', 1),
(482, 12, 0, 'MA534B - Handlebar Caps New - Black (ปลายแฮนด์เล็ก)', 'MA534B - Handlebar Caps New - Black (ปลายแฮนด์เล็ก)', '0000-00-00', 1),
(483, 12, 0, 'MA700A - Frame Hole Cap 10-16mm - Aluminium', 'MA700A - Frame Hole Cap 10-16mm - Aluminium', '0000-00-00', 1),
(484, 12, 0, 'MA700B - Frame Hole Cap 10-16mm - Black', 'MA700B - Frame Hole Cap 10-16mm - Black', '0000-00-00', 1),
(485, 12, 0, 'MA700G - Frame Hole Cap 10-16mm - Gold', 'MA700G - Frame Hole Cap 10-16mm - Gold', '0000-00-00', 1),
(486, 12, 0, 'MA700R - Frame Hole Cap 10-16mm - Red', 'MA700R - Frame Hole Cap 10-16mm - Red', '0000-00-00', 1),
(487, 12, 0, 'MA700U - Frame Hole Cap 10-16mm - Blue', 'MA700U - Frame Hole Cap 10-16mm - Blue', '0000-00-00', 1),
(488, 12, 0, 'MA701B - Frame Hole Cap 17-22mm - Black', 'MA701B - Frame Hole Cap 17-22mm - Black', '0000-00-00', 1),
(489, 0, 0, 'MA701G - Frame Hole Cap 17-22mm - Gold', 'MA701G - Frame Hole Cap 17-22mm - Gold', '0000-00-00', 1),
(490, 0, 0, 'MA701R - Frame Hole Cap 17-22mm - Red', 'MA701R - Frame Hole Cap 17-22mm - Red', '0000-00-00', 1),
(491, 0, 0, 'MA701U - Frame Hole Cap 17-22mm - Blue', 'MA701U - Frame Hole Cap 17-22mm - Blue', '0000-00-00', 1),
(492, 0, 0, 'NP001B - Number Plate RH - Streetfighter', 'NP001B - Number Plate RH - Streetfighter', '0000-00-00', 1),
(493, 0, 0, 'NP002B - Number Plate LH - Streetfighter', 'NP002B - Number Plate LH - Streetfighter', '0000-00-00', 1),
(494, 24, 0, 'PE209B - Rear Set Control Kit - Monster696/796/1100', 'PE209B - Rear Set Control Kit - Monster696/796/1100', '0000-00-00', 1),
(495, 24, 0, 'PE212B - Rear Set Control Kit \"EVO\" - Diavel', 'PE212B - Rear Set Control Kit \"EVO\" - Diavel', '0000-00-00', 1),
(496, 24, 0, 'PE409B - Rear Set Control Kit-BMW s1000rr', 'PE409B - Rear Set Control Kit-BMW s1000rr', '0000-00-00', 1),
(497, 24, 0, 'PE606A - Pegs Kit Adapter - Diavel', 'PE606A - Pegs Kit Adapter - Diavel', '0000-00-00', 1),
(498, 24, 0, 'PE614A - \"PRO\" Rider / Passenger Pegs - Aluminium', 'PE614A - \"PRO\" Rider / Passenger Pegs - Aluminium', '0000-00-00', 1),
(499, 24, 0, 'PE614B - \"PRO\" Rider / Passenger Pegs - Black', 'PE614B - \"PRO\" Rider / Passenger Pegs - Black', '0000-00-00', 1),
(500, 24, 0, 'PE614G - \"PRO\" Rider / Passenger Pegs - Gold', 'PE614G - \"PRO\" Rider / Passenger Pegs - Gold', '0000-00-00', 1),
(501, 24, 0, 'PE614R - \"PRO\" Rider / Passenger Pegs - Red', 'PE614R - \"PRO\" Rider / Passenger Pegs - Red', '0000-00-00', 1),
(502, 24, 0, 'PE614U - \"PRO\" Rider / Passenger Pegs - Blue', 'PE614U - \"PRO\" Rider / Passenger Pegs - Blue', '0000-00-00', 1),
(503, 24, 0, 'PE616B - Rider Race Pegs (Pair) - Black', 'PE616B - Rider Race Pegs (Pair) - Black', '0000-00-00', 1),
(504, 24, 0, 'PE622B - \"TOURING\" Rider / Passenger Pegs - Black', 'PE622B - \"TOURING\" Rider / Passenger Pegs - Black', '0000-00-00', 1),
(505, 24, 0, 'PE622R - \"TOURING\" Rider / Passenger Pegs - Red', 'PE622R - \"TOURING\" Rider / Passenger Pegs - Red', '0000-00-00', 1),
(506, 24, 0, 'PE622U - \"TOURING\" Rider / Passenger Pegs - Blue', 'PE622U - \"TOURING\" Rider / Passenger Pegs - Blue', '0000-00-00', 1),
(507, 24, 0, 'PE624A - Peg Spare Part - Aluminium', 'PE624A - Peg Spare Part - Aluminium', '0000-00-00', 1),
(508, 24, 0, 'PE626B - Peg spare part - Black', 'PE626B - Peg spare part - Black', '0000-00-00', 1),
(509, 24, 0, 'PE629A - Peg spare part - Aluminium', 'PE629A - Peg spare part - Aluminium', '0000-00-00', 1),
(510, 24, 0, 'PE630A - \"B-PRO\" Rider / Passenger Pegs - Aluminium', 'PE630A - \"B-PRO\" Rider / Passenger Pegs - Aluminium', '0000-00-00', 1),
(511, 24, 0, 'PE630B - \"B-PRO\" Rider / Passenger Pegs - Black', 'PE630B - \"B-PRO\" Rider / Passenger Pegs - Black', '0000-00-00', 1),
(512, 24, 0, 'PE640B - \"RALLY\" Rider / Passenger Pegs - Black', 'PE640B - \"RALLY\" Rider / Passenger Pegs - Black', '0000-00-00', 1),
(513, 24, 0, 'PE642B - \"STREET\" Rider / Passenger Pegs - Black', 'PE642B - \"STREET\" Rider / Passenger Pegs - Black', '0000-00-00', 1),
(514, 24, 0, 'PE672A - Pegs Mount Kit - R1', 'PE672A - Pegs Mount Kit - R1', '0000-00-00', 1),
(515, 24, 0, 'PE676A - Pegs Mount Kit - TMAX', 'PE676A - Pegs Mount Kit - TMAX', '0000-00-00', 1),
(516, 24, 0, 'PE711A - Pegs Mount Kit - Monster', 'PE711A - Pegs Mount Kit - Monster', '0000-00-00', 1),
(517, 24, 0, 'PE712A - Pegs Mount Kit - Street fighter', 'PE712A - Pegs Mount Kit - Street fighter', '0000-00-00', 1),
(518, 24, 0, 'PE713A - Pegs Mount Kit - Hyper821/MTS/MTS950', 'PE713A - Pegs Mount Kit - Hyper821/MTS/MTS950', '0000-00-00', 1),
(519, 24, 0, 'PE716A - Peg Adapter Kit - Monster821 Rider /Passenger', 'PE716A - Peg Adapter Kit - Monster821 Rider /Passenger', '0000-00-00', 1),
(520, 24, 0, 'PE786B - Pegs Mount Kit -  R9T Passenger', 'PE786B - Pegs Mount Kit -  R9T Passenger', '0000-00-00', 1),
(521, 0, 0, 'PE792A - Peg Adapter Kit', 'PE792A - Peg Adapter Kit', '0000-00-00', 1),
(522, 0, 0, 'PE795A - Peg Adapter Kit', 'PE795A - Peg Adapter Kit', '0000-00-00', 1),
(523, 0, 0, 'PE798A - Ped Adapter Kit GS1200', 'PE798A - Ped Adapter Kit GS1200', '0000-00-00', 1),
(524, 0, 0, 'PER318B - Rearset Control Kit \"RRC\"  Z800', 'PER318B - Rearset Control Kit \"RRC\"  Z800', '0000-00-00', 1),
(525, 0, 0, 'PER411B - Rearset Control Kit \"RRC\" BMW S1000RR 2015', 'PER411B - Rearset Control Kit \"RRC\" BMW S1000RR 2015', '0000-00-00', 1),
(526, 0, 0, 'PM317B - Engine Guard ER-6N 2012', 'PM317B - Engine Guard ER-6N 2012', '0000-00-00', 1),
(527, 0, 0, 'PM321B - Clutch Protection Z1000', 'PM321B - Clutch Protection Z1000', '0000-00-00', 1),
(528, 0, 0, 'PM322B - Generator Case Protection ', 'PM322B - Generator Case Protection ', '0000-00-00', 1),
(529, 0, 0, 'PM351B - Fairing/ Engine Guard - 796/1100', 'PM351B - Fairing/ Engine Guard - 796/1100', '0000-00-00', 1),
(530, 0, 0, 'PM352B - Fairing/ Engine Guard - Streetfighter', 'PM352B - Fairing/ Engine Guard - Streetfighter', '0000-00-00', 1),
(531, 0, 0, 'PM353B - Water Pump Protection Hypermotard/Strada 2013', 'PM353B - Water Pump Protection Hypermotard/Strada 2013', '0000-00-00', 1),
(532, 0, 0, 'PM354A - Engine Guard “B-PRO” Monster 821', 'PM354A - Engine Guard “B-PRO” Monster 821', '0000-00-00', 1),
(533, 0, 0, 'PM503A - Water Pump Cover - Multi/SF', 'PM503A - Water Pump Cover - Multi/SF', '0000-00-00', 1),
(534, 0, 0, 'PM504B - Fairing / Engine Guard MTS', 'PM504B - Fairing / Engine Guard MTS', '0000-00-00', 1),
(535, 0, 0, 'PM505B - Fairing/ Radiator Guard - Diavel', 'PM505B - Fairing/ Radiator Guard - Diavel', '0000-00-00', 1),
(536, 0, 0, 'PM506A - Water Pump Protection - Diavel', 'PM506A - Water Pump Protection - Diavel', '0000-00-00', 1),
(537, 0, 0, 'PM508B - Fairing/ Engine Guard Hyper821', 'PM508B - Fairing/ Engine Guard Hyper821', '0000-00-00', 1),
(538, 0, 0, 'PM509B - Fairing/ Engine Guard Hyper821', 'PM509B - Fairing/ Engine Guard Hyper821', '0000-00-00', 1),
(539, 0, 0, 'PM570A - Right Engine Guard Z1000', 'PM570A - Right Engine Guard Z1000', '0000-00-00', 1),
(540, 0, 0, 'PM572A - Engine Guard  Z800', 'PM572A - Engine Guard  Z800', '0000-00-00', 1),
(541, 0, 0, 'PM580U - Frame Slider Kit S1000RR 2015', 'PM580U - Frame Slider Kit S1000RR 2015', '0000-00-00', 1),
(542, 0, 0, 'PM581A - Engine Guard RH S1000RR 2012-18 - Alumnium', 'PM581A - Engine Guard RH S1000RR 2012-18 - Alumnium', '0000-00-00', 1),
(543, 0, 0, 'PM581B - Engine Guard RH S1000RR 2012-18 - Black', 'PM581B - Engine Guard RH S1000RR 2012-18 - Black', '0000-00-00', 1),
(544, 0, 0, 'PM581U - Engine Guard RH S1000RR 2012-18 - Blue', 'PM581U - Engine Guard RH S1000RR 2012-18 - Blue', '0000-00-00', 1),
(545, 0, 0, 'PM582A - Engine Guard LH S1000RR 2012-18 - Alumnium', 'PM582A - Engine Guard LH S1000RR 2012-18 - Alumnium', '0000-00-00', 1),
(546, 0, 0, 'PM582B - Engine Guard LH S1000RR 2012-18 - Black', 'PM582B - Engine Guard LH S1000RR 2012-18 - Black', '0000-00-00', 1),
(547, 0, 0, 'PM582U - Engine Guard LH S1000RR 2012-18 - Blue', 'PM582U - Engine Guard LH S1000RR 2012-18 - Blue', '0000-00-00', 1),
(548, 0, 0, 'PM583A - Engine Guard S1000RR \'15', 'PM583A - Engine Guard S1000RR \'15', '0000-00-00', 1),
(549, 0, 0, 'PM590U - Engine Guard S1000RR 2015 (New version)', 'PM590U - Engine Guard S1000RR 2015 (New version)', '0000-00-00', 1),
(550, 0, 0, 'PT213B - License Support Plate \"FOX\" TMAX530', 'PT213B - License Support Plate \"FOX\" TMAX530', '0000-00-00', 1),
(551, 0, 0, 'PT309B - License Support Plate \"FOX\" ER6N \'09 up-', 'PT309B - License Support Plate \"FOX\" ER6N \'09 up-', '0000-00-00', 1),
(552, 0, 0, 'PT313B - License Support Plate \"FOX\"  Z800', 'PT313B - License Support Plate \"FOX\"  Z800', '0000-00-00', 1),
(553, 0, 0, 'PT314B - License Support Plate \"FOX\" ER-6N 2012', 'PT314B - License Support Plate \"FOX\" ER-6N 2012', '0000-00-00', 1),
(554, 0, 0, 'PT504B - License Support Plate \"FOX\" HYPER', 'PT504B - License Support Plate \"FOX\" HYPER', '0000-00-00', 1),
(555, 0, 0, 'PT506B - License Support Plate \"FOX\" SF', 'PT506B - License Support Plate \"FOX\" SF', '0000-00-00', 1),
(556, 0, 0, 'PT509B - License Support Plate \"ARM Side\" Diavel', 'PT509B - License Support Plate \"ARM Side\" Diavel', '0000-00-00', 1),
(557, 0, 0, 'PT510B - License Support Plate \"Side Mount\" Diavel', 'PT510B - License Support Plate \"Side Mount\" Diavel', '0000-00-00', 1),
(558, 0, 0, 'PT705B - License Support Plate \"FOX\" C600/C650 2017', 'PT705B - License Support Plate \"FOX\" C600/C650 2017', '0000-00-00', 1),
(559, 0, 0, 'PT706B - \"Side Arm\" License Plate Support Kit - R9T', 'PT706B - \"Side Arm\" License Plate Support Kit - R9T', '0000-00-00', 1),
(560, 0, 0, 'PT707B - \"Outside\" License Plate Support Kit - R9T', 'PT707B - \"Outside\" License Plate Support Kit - R9T', '0000-00-00', 1),
(561, 0, 0, 'PT709B - \"FOX\" License Plate Support Kit - R9T', 'PT709B - \"FOX\" License Plate Support Kit - R9T', '0000-00-00', 1),
(562, 0, 0, 'PT711B - \"FOX\" License Plate Support Kit with Tail Light - R9T', 'PT711B - \"FOX\" License Plate Support Kit with Tail Light - R9T', '0000-00-00', 1),
(563, 0, 0, 'PW150A - Front Wheel Protection -GSXR1000 -9-11', 'PW150A - Front Wheel Protection -GSXR1000 -9-11', '0000-00-00', 1),
(564, 0, 0, 'PW200A - Front Wheel Protection  Monster/SF848', 'PW200A - Front Wheel Protection  Monster/SF848', '0000-00-00', 1),
(565, 0, 0, 'PW201A - Rear Wheel Protection Monster696/795', 'PW201A - Rear Wheel Protection Monster696/795', '0000-00-00', 1),
(566, 0, 0, 'PW202A - Front Wheel Protection Streetfighter', 'PW202A - Front Wheel Protection Streetfighter', '0000-00-00', 1),
(567, 0, 0, 'PW203A - Rear Wheel Protection Streetfighter', 'PW203A - Rear Wheel Protection Streetfighter', '0000-00-00', 1),
(568, 0, 0, 'PW204A - Rear Wheel Protection Monster796/1100  SF848', 'PW204A - Rear Wheel Protection Monster796/1100  SF848', '0000-00-00', 1),
(569, 0, 0, 'PW206A - Front Wheel Protection Diavel', 'PW206A - Front Wheel Protection Diavel', '0000-00-00', 1),
(570, 0, 0, 'PW208A - Front Wheel Protection  1199/899', 'PW208A - Front Wheel Protection  1199/899', '0000-00-00', 1),
(571, 0, 0, 'PW209A - Front Wheel Protection SFs/MTS/ Hyper821', 'PW209A - Front Wheel Protection SFs/MTS/ Hyper821', '0000-00-00', 1),
(572, 0, 0, 'PW302A - Front Wheel Protection Z1000', 'PW302A - Front Wheel Protection Z1000', '0000-00-00', 1),
(573, 0, 0, 'PW305A - Front Wheel Protection Z800', 'PW305A - Front Wheel Protection Z800', '0000-00-00', 1),
(574, 3, 0, 'PW308A - Front Wheel Protection Z1000\' 2014', 'PW308A - Front Wheel Protection Z1000\' 2014', '0000-00-00', 1),
(575, 3, 0, 'PW701A - Front Wheel Protection S1000RR', 'PW701A - Front Wheel Protection S1000RR', '0000-00-00', 1),
(576, 3, 0, 'PW704A - Front Wheel Protection R9T', 'PW704A - Front Wheel Protection R9T', '0000-00-00', 1),
(577, 3, 0, 'SC010A - Bike Stand Support M6 (pair) - Aluminium', 'SC010A - Bike Stand Support M6 (pair) - Aluminium', '0000-00-00', 1),
(578, 3, 0, 'SC010B - Bike Stand Support M6 (pair) - Black', 'SC010B - Bike Stand Support M6 (pair) - Black', '0000-00-00', 1),
(579, 3, 0, 'SC010G - Bike Stand Support M6 (pair) - Gold', 'SC010G - Bike Stand Support M6 (pair) - Gold', '0000-00-00', 1),
(580, 3, 0, 'SC010R - Bike Stand Support M6 (pair) - Red', 'SC010R - Bike Stand Support M6 (pair) - Red', '0000-00-00', 1),
(581, 3, 0, 'SC020A - Bike Stand Support M8 (pair) - Aluminium', 'SC020A - Bike Stand Support M8 (pair) - Aluminium', '0000-00-00', 1),
(582, 3, 0, 'SC020B - Bike Stand Support M8  (pair) - Black', 'SC020B - Bike Stand Support M8  (pair) - Black', '0000-00-00', 1),
(583, 3, 0, 'SC020G - Bike Stand Support M8  (pair) - Gold', 'SC020G - Bike Stand Support M8  (pair) - Gold', '0000-00-00', 1),
(584, 3, 0, 'SC020R - Bike Stand Support M8  (pair) - Red', 'SC020R - Bike Stand Support M8  (pair) - Red', '0000-00-00', 1),
(585, 3, 0, 'SC020U - Bike Stand Support M8  (pair) - Blue', 'SC020U - Bike Stand Support M8  (pair) - Blue', '0000-00-00', 1),
(586, 3, 0, 'SC030A - Bike Stand Support M10 (pair) - Aluminium', 'SC030A - Bike Stand Support M10 (pair) - Aluminium', '0000-00-00', 1),
(587, 12, 0, 'SC030B - Bike Stand Support M10 (pair) - Black', 'SC030B - Bike Stand Support M10 (pair) - Black', '0000-00-00', 1),
(588, 12, 0, 'SC030G - Bike Stand Support M10 (pair) - Gold', 'SC030G - Bike Stand Support M10 (pair) - Gold', '0000-00-00', 1),
(589, 12, 0, 'SC030R - Bike Stand Support M10 (pair) - Red', 'SC030R - Bike Stand Support M10 (pair) - Red', '0000-00-00', 1),
(590, 13, 0, 'TA023B - Frame Hole Caps - Black', 'TA023B - Frame Hole Caps - Black', '0000-00-00', 1),
(591, 13, 0, 'TA124B - Frame Hole Cap, 24mm - Black', 'TA124B - Frame Hole Cap, 24mm - Black', '0000-00-00', 1),
(592, 13, 0, 'TA124G - Frame Hole Cap, 24mm - Gold', 'TA124G - Frame Hole Cap, 24mm - Gold', '0000-00-00', 1),
(593, 13, 0, 'TF010A - Gas Cap Kawasaki all - Aluminium', 'TF010A - Gas Cap Kawasaki all - Aluminium', '0000-00-00', 1),
(594, 13, 0, 'TF010B - Gas Cap Kawasaki all - Black', 'TF010B - Gas Cap Kawasaki all - Black', '0000-00-00', 1),
(595, 13, 0, 'TF040A - Gas Cap Diavel / Monster - Aluminium', 'TF040A - Gas Cap Diavel / Monster - Aluminium', '0000-00-00', 1),
(596, 13, 0, 'TF040B - Gas Cap Diavel / Monster', 'TF040B - Gas Cap Diavel / Monster', '0000-00-00', 1),
(597, 13, 0, 'TF041A - Gas Cap  748/848/916/996/998/1098/1198 - Aluminium', 'TF041A - Gas Cap  748/848/916/996/998/1098/1198 - Aluminium', '0000-00-00', 1),
(598, 13, 0, 'TF041B - Gas Cap 748/848/916/996/998/1098/1198 - Black', 'TF041B - Gas Cap 748/848/916/996/998/1098/1198 - Black', '0000-00-00', 1),
(599, 13, 0, 'TF042A - Gas Cap  SF XDIAVEL Panigale - Aluminium', 'TF042A - Gas Cap  SF XDIAVEL Panigale - Aluminium', '0000-00-00', 1),
(600, 22, 0, 'TF042B - Gas Cap  SF XDIAVEL Panigale - Black', 'TF042B - Gas Cap  SF XDIAVEL Panigale - Black', '0000-00-00', 1),
(601, 22, 0, 'TF051A - Gas Cap  F800R/ R1200GS/ S1000RR - Aluminium', 'TF051A - Gas Cap  F800R/ R1200GS/ S1000RR - Aluminium', '0000-00-00', 1),
(602, 22, 0, 'TF051B - Gas Cap S1000RR - Black', 'TF051B - Gas Cap S1000RR - Black', '0000-00-00', 1),
(603, 22, 0, 'TP008A - Oil Filler Cap (Ducati wetclutch/ ER6, Z1000 / Triumph) - Aluminium', 'TP008A - Oil Filler Cap (Ducati wetclutch/ ER6, Z1000 / Triumph) - Aluminium', '0000-00-00', 1),
(604, 22, 0, 'TP008B - Oil Filler Cap (Ducati wetclutch/ ER6, Z1000 / Triumph) - Black', 'TP008B - Oil Filler Cap (Ducati wetclutch/ ER6, Z1000 / Triumph) - Black', '0000-00-00', 1),
(605, 22, 0, 'TP008G - Oil Filler Cap (Ducati wetclutch/ ER6, Z1000 / Triumph) - Gold', 'TP008G - Oil Filler Cap (Ducati wetclutch/ ER6, Z1000 / Triumph) - Gold', '0000-00-00', 1),
(606, 22, 0, 'TP008R - Oil Filler Cap (Ducati wetclutch/ ER6, Z1000 / Triumph) - Red', 'TP008R - Oil Filler Cap (Ducati wetclutch/ ER6, Z1000 / Triumph) - Red', '0000-00-00', 1),
(607, 22, 0, 'TP009B - Oil Filler Cap (Suzuki) - Black', 'TP009B - Oil Filler Cap (Suzuki) - Black', '0000-00-00', 1),
(608, 22, 0, 'TP009G - Oil Filler Cap (Suzuki) - Gold', 'TP009G - Oil Filler Cap (Suzuki) - Gold', '0000-00-00', 1),
(609, 22, 0, 'TP009R - Oil Filler Cap (Suzuki) - Red', 'TP009R - Oil Filler Cap (Suzuki) - Red', '0000-00-00', 1),
(610, 22, 0, 'TP010A - Oil Filler Cap (Ducati DryClutch SFs, 1098,1198, SP1000) - Aluminium', 'TP010A - Oil Filler Cap (Ducati DryClutch SFs, 1098,1198, SP1000) - Aluminium', '0000-00-00', 1),
(611, 22, 0, 'TP010B - Oil Filler Cap (Ducati DryClutch SFs, 1098,1198, SP1000) - Black', 'TP010B - Oil Filler Cap (Ducati DryClutch SFs, 1098,1198, SP1000) - Black', '0000-00-00', 1),
(612, 22, 0, 'TP010G - Oil Filler Cap (Ducati DryClutch SFs, 1098,1198, SP1000) - Gold', 'TP010G - Oil Filler Cap (Ducati DryClutch SFs, 1098,1198, SP1000) - Gold', '0000-00-00', 1),
(613, 22, 0, 'TP010R - Oil Filler Cap (Ducati DryClutch SFs, 1098,1198, SP1000) - Red', 'TP010R - Oil Filler Cap (Ducati DryClutch SFs, 1098,1198, SP1000) - Red', '0000-00-00', 1),
(614, 5, 0, 'TP011B - Oil Filler Cap (Yamaha) - Black', 'TP011B - Oil Filler Cap (Yamaha) - Black', '0000-00-00', 1),
(615, 5, 0, 'TP011G - Oil Filler Cap (Yamaha) - Gold', 'TP011G - Oil Filler Cap (Yamaha) - Gold', '0000-00-00', 1),
(616, 5, 0, 'TP011R - Oil Filler Cap (Yamaha) - Red', 'TP011R - Oil Filler Cap (Yamaha) - Red', '0000-00-00', 1),
(617, 5, 0, 'TP016A - Brake/Clutch Fluid Caps Dia.49mm - Aluminium  (Big)', 'TP016A - Brake/Clutch Fluid Caps Dia.49mm - Aluminium  (Big)', '0000-00-00', 1),
(618, 5, 0, 'TP016B - Brake/Clutch Fluid Caps Dia.49mm - Black  (Big)', 'TP016B - Brake/Clutch Fluid Caps Dia.49mm - Black  (Big)', '0000-00-00', 1),
(619, 5, 0, 'TP016G - Brake/Clutch Fluid Caps Dia.49mm - Gold  (Big)', 'TP016G - Brake/Clutch Fluid Caps Dia.49mm - Gold  (Big)', '0000-00-00', 1),
(620, 5, 0, 'TP016R - Brake/Clutch Fluid Caps Dia.49mm - Red  (Big)', 'TP016R - Brake/Clutch Fluid Caps Dia.49mm - Red  (Big)', '0000-00-00', 1),
(621, 5, 0, 'TP017A - Brake/Clutch Fluid Caps M34x4 Ø37mm - Aluminium(Small)', 'TP017A - Brake/Clutch Fluid Caps M34x4 Ø37mm - Aluminium(Small)', '0000-00-00', 1),
(622, 22, 0, 'TP017B - Brake/Clutch Fluid Caps M34x4 Ø37mm - Black (Small)', 'TP017B - Brake/Clutch Fluid Caps M34x4 Ø37mm - Black (Small)', '0000-00-00', 1),
(623, 22, 0, 'TP017G - Brake/Clutch Fluid Caps M34x4 Ø37mm - Gold (Small)', 'TP017G - Brake/Clutch Fluid Caps M34x4 Ø37mm - Gold (Small)', '0000-00-00', 1),
(624, 22, 0, 'TP017R - Brake/Clutch Fluid Caps M34x4 Ø37mm - Red (Small)', 'TP017R - Brake/Clutch Fluid Caps M34x4 Ø37mm - Red (Small)', '0000-00-00', 1),
(625, 22, 0, 'TP021A - Oil Filler Cap Aprilia - Aluminium', 'TP021A - Oil Filler Cap Aprilia - Aluminium', '0000-00-00', 1),
(626, 22, 0, 'TP021B - Oil Filler Cap Aprilia - Black', 'TP021B - Oil Filler Cap Aprilia - Black', '0000-00-00', 1),
(627, 22, 0, 'TP021G - Oil Filler Cap Aprilia - Gold', 'TP021G - Oil Filler Cap Aprilia - Gold', '0000-00-00', 1),
(628, 22, 0, 'TP021R - Oil Filler Cap Aprilia - Red', 'TP021R - Oil Filler Cap Aprilia - Red', '0000-00-00', 1),
(629, 22, 0, 'TP023A - Oil Filler Cap yamaha Tmax - Aluminium', 'TP023A - Oil Filler Cap yamaha Tmax - Aluminium', '0000-00-00', 1),
(630, 22, 0, 'TP023B - Oil Filler Cap yamaha Tmax - Black', 'TP023B - Oil Filler Cap yamaha Tmax - Black', '0000-00-00', 1),
(631, 5, 0, 'TP023G - Oil Filler Cap yamaha Tmax - Gold', 'TP023G - Oil Filler Cap yamaha Tmax - Gold', '0000-00-00', 1),
(632, 5, 0, 'TP023R - Oil Filler Cap yamaha Tmax - Red', 'TP023R - Oil Filler Cap yamaha Tmax - Red', '0000-00-00', 1),
(633, 5, 0, 'TP023U - Oil Filler Cap yamaha Tmax - Blue', 'TP023U - Oil Filler Cap yamaha Tmax - Blue', '0000-00-00', 1),
(634, 22, 0, 'TP026A - Break Fluid-Cap, Rear, M45x4 Diavel - Aluminium', 'TP026A - Break Fluid-Cap, Rear, M45x4 Diavel - Aluminium', '0000-00-00', 1),
(635, 22, 0, 'TP026B - Break Fluid-Cap, Rear, M45x4 Diavel - Black', 'TP026B - Break Fluid-Cap, Rear, M45x4 Diavel - Black', '0000-00-00', 1),
(636, 22, 0, 'TP026U - Break Fluid-Cap, Rear, M45x4 Diavel - Blue', 'TP026U - Break Fluid-Cap, Rear, M45x4 Diavel - Blue', '0000-00-00', 1),
(637, 5, 0, 'TP027B - Oil Filler Cap S1000RR - Black', 'TP027B - Oil Filler Cap S1000RR - Black', '0000-00-00', 1),
(638, 5, 0, 'TP027R - Oil Filler Cap S1000RR - Red', 'TP027R - Oil Filler Cap S1000RR - Red', '0000-00-00', 1),
(639, 0, 0, 'TP027U - Oil Filler Cap S1000RR - Blue', 'TP027U - Oil Filler Cap S1000RR - Blue', '0000-00-00', 1),
(640, 0, 0, 'TP028A - Break Fluid-Tank, Front, M52x4 - Aluminium', 'TP028A - Break Fluid-Tank, Front, M52x4 - Aluminium', '0000-00-00', 1),
(641, 0, 0, 'TP028U - Break Fluid-Tank, Front, M52x4 - Blue', 'TP028U - Break Fluid-Tank, Front, M52x4 - Blue', '0000-00-00', 1),
(642, 22, 0, 'TP029A - Camshaft Cover S1000RR - Aluminium', 'TP029A - Camshaft Cover S1000RR - Aluminium', '0000-00-00', 1),
(643, 5, 0, 'TP029B - Camshaft Cover S1000RR - Black', 'TP029B - Camshaft Cover S1000RR - Black', '0000-00-00', 1),
(644, 5, 0, 'TP029U - Camshaft Cover - Blue', 'TP029U - Camshaft Cover - Blue', '0000-00-00', 1),
(645, 5, 0, 'TP030A - Oil Filler Cap BMW R9T - Aluminium', 'TP030A - Oil Filler Cap BMW R9T - Aluminium', '0000-00-00', 1),
(646, 5, 0, 'TP032B - Brake Fluid Caps -1pc - Aluminium', 'TP032B - Brake Fluid Caps -1pc - Aluminium', '0000-00-00', 1),
(647, 5, 0, 'TP032U - Brake Fluid Caps -1pc - Blue', 'TP032U - Brake Fluid Caps -1pc - Blue', '0000-00-00', 1),
(648, 5, 0, 'TP034A - Brake Fluid Caps - 1pc - Aluminium', 'TP034A - Brake Fluid Caps - 1pc - Aluminium', '0000-00-00', 1),
(649, 19, 0, 'TP034B - Brake Fluid Caps - 1pc - Black', 'TP034B - Brake Fluid Caps - 1pc - Black', '0000-00-00', 1),
(650, 19, 0, 'TP035A - Clutch Fluid Tank caps - Aluminium', 'TP035A - Clutch Fluid Tank caps - Aluminium', '0000-00-00', 1),
(651, 19, 0, 'TP035B - Clutch Fluid Tank caps - Black', 'TP035B - Clutch Fluid Tank caps - Black', '0000-00-00', 1),
(652, 0, 0, 'TT003A - Heel Guard Kevlar - Silver', 'TT003A - Heel Guard Kevlar - Silver', '0000-00-00', 1),
(653, 0, 0, 'TT003B - Heel Guard Kevlar - Black', 'TT003B - Heel Guard Kevlar - Black', '0000-00-00', 1),
(654, 0, 0, 'TT006A - Heel Guard  RRC - Aluminium', 'TT006A - Heel Guard  RRC - Aluminium', '0000-00-00', 1),
(655, 0, 0, 'ZBW025A - Shock Absorber / Pivot Adjustment R9T', 'ZBW025A - Shock Absorber / Pivot Adjustment R9T', '0000-00-00', 1),
(656, 0, 0, 'ZBW026A - Pivot Cover R9T - Aluminium', 'ZBW026A - Pivot Cover R9T - Aluminium', '0000-00-00', 1),
(657, 0, 0, 'ZBW026B - Pivot Cover R9T - Black', 'ZBW026B - Pivot Cover R9T - Black', '0000-00-00', 1),
(658, 0, 0, 'ZBW027A - Front Brake protection R9T - Aluminium', 'ZBW027A - Front Brake protection R9T - Aluminium', '0000-00-00', 1),
(659, 0, 0, 'ZBW027U - Front Brake protection R9T - Blue', 'ZBW027U - Front Brake protection R9T - Blue', '0000-00-00', 1),
(660, 0, 0, 'ZBW028A - Hub Cover, Rear R9T  - Aluminium', 'ZBW028A - Hub Cover, Rear R9T  - Aluminium', '0000-00-00', 1),
(661, 0, 0, 'ZBW028U - Hub Cover. Rear R9T - Blue', 'ZBW028U - Hub Cover. Rear R9T - Blue', '0000-00-00', 1),
(662, 0, 0, 'ZBW029A - Adjustable torque bar R9T', 'ZBW029A - Adjustable torque bar R9T', '0000-00-00', 1),
(663, 0, 0, 'ZBW030A - Sprocket Cover R9T', 'ZBW030A - Sprocket Cover R9T', '0000-00-00', 1),
(664, 0, 0, 'ZBW031K - Chain Guard R9T', 'ZBW031K - Chain Guard R9T', '0000-00-00', 1),
(665, 0, 0, 'ZBW033A - Rear Frame Hole Cap R9T - Aluminium', 'ZBW033A - Rear Frame Hole Cap R9T - Aluminium', '0000-00-00', 1),
(666, 0, 0, 'ZBW033B - Rear Frame Hole Cap R9T - Black', 'ZBW033B - Rear Frame Hole Cap R9T - Black', '0000-00-00', 1),
(667, 0, 0, 'ZBW033U - Frame Hole Cap R9T - Blue', 'ZBW033U - Frame Hole Cap R9T - Blue', '0000-00-00', 1),
(668, 0, 0, 'ZBW034A - Swing Arm Hole Plug R9T - Aluminium', 'ZBW034A - Swing Arm Hole Plug R9T - Aluminium', '0000-00-00', 1),
(669, 0, 0, 'ZBW034B - Swing Arm Hole Plug R9T - Black', 'ZBW034B - Swing Arm Hole Plug R9T - Black', '0000-00-00', 1),
(670, 0, 0, 'ZBW034U - Rear Fork Hole Cap R9T - Blue', 'ZBW034U - Rear Fork Hole Cap R9T - Blue', '0000-00-00', 1),
(671, 0, 0, 'ZBW035K - Head Cover Kevlar R9T', 'ZBW035K - Head Cover Kevlar R9T', '0000-00-00', 1),
(672, 0, 0, 'ZBW039B - Frame Hole Cap BMW C600 - Black', 'ZBW039B - Frame Hole Cap BMW C600 - Black', '0000-00-00', 1),
(673, 0, 0, 'ZBW039U - Frame Hole Cap BMW C600 - Blue', 'ZBW039U - Frame Hole Cap BMW C600 - Blue', '0000-00-00', 1),
(674, 0, 0, 'ZBW042A - Headlight Fairing R9T - Aluminium', 'ZBW042A - Headlight Fairing R9T - Aluminium', '0000-00-00', 1),
(675, 0, 0, 'ZBW042B - Headlight Fairing R9T - Black', 'ZBW042B - Headlight Fairing R9T - Black', '0000-00-00', 1),
(676, 0, 0, 'ZBW043B - Swing Arm Caps GS1200', 'ZBW043B - Swing Arm Caps GS1200', '0000-00-00', 1),
(677, 0, 0, 'ZBW045A - Engine Cover R9T - Aluminium', 'ZBW045A - Engine Cover R9T - Aluminium', '0000-00-00', 1),
(678, 0, 0, 'ZBW045B - Engine Cover R9T - Black', 'ZBW045B - Engine Cover R9T - Black', '0000-00-00', 1),
(679, 0, 0, 'ZBW048B - Undertail Cover R9T', 'ZBW048B - Undertail Cover R9T', '0000-00-00', 1),
(680, 0, 0, 'ZBW051A - Front Fender R9T', 'ZBW051A - Front Fender R9T', '0000-00-00', 1),
(681, 0, 0, 'ZBW053A - Rear Fender for PT \"Side Arm\" R9T - Aluminium', 'ZBW053A - Rear Fender for PT \"Side Arm\" R9T - Aluminium', '0000-00-00', 1),
(682, 0, 0, 'ZBW053B - Rear Fender for PT \"Side Arm\" R9T - Black', 'ZBW053B - Rear Fender for PT \"Side Arm\" R9T - Black', '0000-00-00', 1),
(683, 0, 0, 'ZBW054A - Intake tips R9T', 'ZBW054A - Intake tips R9T', '0000-00-00', 1),
(684, 0, 0, 'ZBW055AB - Head Cover R9T', 'ZBW055AB - Head Cover R9T', '0000-00-00', 1),
(685, 0, 0, 'ZBW056B - Exhuast End Cap R9T', 'ZBW056B - Exhuast End Cap R9T', '0000-00-00', 1),
(686, 0, 0, 'ZBW058A - Rear Fender for Undertail R9T', 'ZBW058A - Rear Fender for Undertail R9T', '0000-00-00', 1),
(687, 0, 0, 'ZBW059A - Triple Clamp Hole Cover Kit R9T', 'ZBW059A - Triple Clamp Hole Cover Kit R9T', '0000-00-00', 1),
(688, 0, 0, 'ZBW063B - Side Stand Base GS1200', 'ZBW063B - Side Stand Base GS1200', '0000-00-00', 1),
(689, 0, 0, 'ZBW064A - Headlight Guard GS1200', 'ZBW064A - Headlight Guard GS1200', '0000-00-00', 1),
(690, 0, 0, 'ZBW065B - Radiator Guard GS1200', 'ZBW065B - Radiator Guard GS1200', '0000-00-00', 1),
(691, 0, 0, 'ZDM036G - Pressure Plate Gold Ducati (Star)', 'ZDM036G - Pressure Plate Gold Ducati (Star)', '0000-00-00', 1),
(692, 0, 0, 'ZDM081A - Cable Cover (Monster/ Hyper)', 'ZDM081A - Cable Cover (Monster/ Hyper)', '0000-00-00', 1),
(693, 0, 0, 'ZDM082A - Chain Guard Hyper 1100', 'ZDM082A - Chain Guard Hyper 1100', '0000-00-00', 1),
(694, 0, 0, 'ZDM086G - Crankshaft Cover Gold (each)', 'ZDM086G - Crankshaft Cover Gold (each)', '0000-00-00', 1),
(695, 0, 0, 'ZDM088A - Timing Belt Cover - Aluminium (696/796/Hyper796)', 'ZDM088A - Timing Belt Cover - Aluminium (696/796/Hyper796)', '0000-00-00', 1),
(696, 0, 0, 'ZDM088B - Timing Belt Cover - Black (696/796/Hyper796)', 'ZDM088B - Timing Belt Cover - Black (696/796/Hyper796)', '0000-00-00', 1),
(697, 0, 0, 'ZDM090B - Sprocket Cover SF - Black', 'ZDM090B - Sprocket Cover SF - Black', '0000-00-00', 1),
(698, 0, 0, 'ZDM094A - Rear Hub Cover With Protection Diavel /1199', 'ZDM094A - Rear Hub Cover With Protection Diavel /1199', '0000-00-00', 1),
(699, 0, 0, 'ZDM095A - Shock Absorber/Pivot Adjustment Diavel - Aluminium', 'ZDM095A - Shock Absorber/Pivot Adjustment Diavel - Aluminium', '0000-00-00', 1),
(700, 0, 0, 'ZDM095B - Shock Absorber/Pivot Adjustment Diavel - Black', 'ZDM095B - Shock Absorber/Pivot Adjustment Diavel - Black', '0000-00-00', 1),
(701, 0, 0, 'ZDM095R - Shock Absorber/Pivot Adjustment Diavel - Red', 'ZDM095R - Shock Absorber/Pivot Adjustment Diavel - Red', '0000-00-00', 1),
(702, 0, 0, 'ZDM096A - Sprocket Cover Diavel - Aluminium', 'ZDM096A - Sprocket Cover Diavel - Aluminium', '0000-00-00', 1),
(703, 0, 0, 'ZDM096B - Sprocket Cover Diavel - Black', 'ZDM096B - Sprocket Cover Diavel - Black', '0000-00-00', 1),
(704, 0, 0, 'ZDM097A - Clutch Cover Protection Diavel', 'ZDM097A - Clutch Cover Protection Diavel', '0000-00-00', 1),
(705, 0, 0, 'ZDM098K - Rear Fender Kevlar Diavel', 'ZDM098K - Rear Fender Kevlar Diavel', '0000-00-00', 1),
(706, 0, 0, 'ZDM099A - Rear Hub Cover with Protection 899', 'ZDM099A - Rear Hub Cover with Protection 899', '0000-00-00', 1),
(707, 0, 0, 'ZDM100A - Front-Spoiler Diavel - Aluminium', 'ZDM100A - Front-Spoiler Diavel - Aluminium', '0000-00-00', 1),
(708, 0, 0, 'ZDM100B - Front-Spoiler Diavel - Black', 'ZDM100B - Front-Spoiler Diavel - Black', '0000-00-00', 1),
(709, 0, 0, 'ZDM100K - Front-Spoiler Diavel - Kevlar', 'ZDM100K - Front-Spoiler Diavel - Kevlar', '0000-00-00', 1),
(710, 0, 0, 'ZDM105A - Headlight Fairing Diavel 2015 – Aluminum', 'ZDM105A - Headlight Fairing Diavel 2015 – Aluminum', '0000-00-00', 1),
(711, 0, 0, 'ZDM105B - Headlight Fairing Diavel 2015 – Black', 'ZDM105B - Headlight Fairing Diavel 2015 – Black', '0000-00-00', 1),
(712, 0, 0, 'ZDM107B - Front Spoiler Adapter for MA207 Handlebar - Diavel 2015', 'ZDM107B - Front Spoiler Adapter for MA207 Handlebar - Diavel 2015', '0000-00-00', 1),
(713, 0, 0, 'ZDM110B - Front Spoiler Adapter for OEM handlebar - Diavel -2014', 'ZDM110B - Front Spoiler Adapter for OEM handlebar - Diavel -2014', '0000-00-00', 1),
(714, 0, 0, 'ZDM111B - Front Spoiler Adapter for MA207 Handlebar - Diavel -2014', 'ZDM111B - Front Spoiler Adapter for MA207 Handlebar - Diavel -2014', '0000-00-00', 1),
(715, 0, 0, 'ZDM112A - Frame Plug Kit Diavel - Aluminium', 'ZDM112A - Frame Plug Kit Diavel - Aluminium', '0000-00-00', 1),
(716, 0, 0, 'ZDM112B - Frame Plug Kit Diavel - Black', 'ZDM112B - Frame Plug Kit Diavel - Black', '0000-00-00', 1),
(717, 0, 0, 'ZDM112G - Frame Plug Kit Diavel - Gold', 'ZDM112G - Frame Plug Kit Diavel - Gold', '0000-00-00', 1),
(718, 0, 0, 'ZDM112R - Frame Plug Kit Diavel - Red', 'ZDM112R - Frame Plug Kit Diavel - Red', '0000-00-00', 1),
(719, 0, 0, 'ZDM113B - Clutch Cover Protection 1199 - Black', 'ZDM113B - Clutch Cover Protection 1199 - Black', '0000-00-00', 1),
(720, 0, 0, 'ZDM114A - Clutch Cover Protection 899 - Black', 'ZDM114A - Clutch Cover Protection 899 - Black', '0000-00-00', 1),
(721, 0, 0, 'ZDM115A - Frame Hole Caps Kit 1199  - Aluminium', 'ZDM115A - Frame Hole Caps Kit 1199  - Aluminium', '0000-00-00', 1),
(722, 0, 0, 'ZDM115B - Frame Hole Caps Kit 1199 - Black', 'ZDM115B - Frame Hole Caps Kit 1199 - Black', '0000-00-00', 1),
(723, 0, 0, 'ZDM119A - Timing Belt Cover (Vertical) SF/M821/M1200  - Aluminium', 'ZDM119A - Timing Belt Cover (Vertical) SF/M821/M1200  - Aluminium', '0000-00-00', 1),
(724, 0, 0, 'ZDM119B - Timing Belt Cover (Vertical) SF/M821/M1200 - Black', 'ZDM119B - Timing Belt Cover (Vertical) SF/M821/M1200 - Black', '0000-00-00', 1),
(725, 0, 0, 'ZDM120A - Timing Belt Cover (Horizontal) SF/M821/M1200  - Aluminium', 'ZDM120A - Timing Belt Cover (Horizontal) SF/M821/M1200  - Aluminium', '0000-00-00', 1),
(726, 0, 0, 'ZDM120B - Timing Belt Cover (Horizontal) SF/M821/M1200 - Black', 'ZDM120B - Timing Belt Cover (Horizontal) SF/M821/M1200 - Black', '0000-00-00', 1),
(727, 0, 0, 'ZKW007A - Injection Guard Z1000', 'ZKW007A - Injection Guard Z1000', '0000-00-00', 1),
(728, 0, 0, 'ZKW012B - Muffler Guard Z1000', 'ZKW012B - Muffler Guard Z1000', '0000-00-00', 1),
(729, 0, 0, 'ZKW013B - Frame Hole Cap Z1000', 'ZKW013B - Frame Hole Cap Z1000', '0000-00-00', 1),
(730, 0, 0, 'ZKW015B - Sprocket Cover Z800', 'ZKW015B - Sprocket Cover Z800', '0000-00-00', 1),
(731, 0, 0, 'ZKW018K - Left Engine Guard Z800', 'ZKW018K - Left Engine Guard Z800', '0000-00-00', 1),
(732, 0, 0, 'ZKW024K - Chain Guard Z800', 'ZKW024K - Chain Guard Z800', '0000-00-00', 1),
(733, 0, 0, 'ZKW026A - Headlight Fairing Z800 Aluminium', 'ZKW026A - Headlight Fairing Z800 Aluminium', '0000-00-00', 1),
(734, 0, 0, 'ZKW026B - Headlight Fairing Z800 Black', 'ZKW026B - Headlight Fairing Z800 Black', '0000-00-00', 1),
(735, 0, 0, 'ZKW027B - Design Kit Z800', 'ZKW027B - Design Kit Z800', '0000-00-00', 1),
(736, 0, 0, 'ZKW030B - Headlight Fairing Z1000\'2014', 'ZKW030B - Headlight Fairing Z1000\'2014', '0000-00-00', 1),
(737, 0, 0, 'ZKW031B - Design Kit Z1000 \'2014', 'ZKW031B - Design Kit Z1000 \'2014', '0000-00-00', 1),
(738, 0, 0, 'ZYF007B - Rear Wheel Hub Cover Tmax 530', 'ZYF007B - Rear Wheel Hub Cover Tmax 530', '0000-00-00', 1),
(739, 0, 0, 'LBJ206A - Rear Brake Lever \"3D\" adjustable Tmax530\'17 - Aluminium', 'LBJ206A - Rear Brake Lever \"3D\" adjustable Tmax530\'17 - Aluminium', '0000-00-00', 1),
(740, 0, 0, 'LBJ206B - Rear Brake Lever \"3D\" adjustable Tmax530\'17 - Black', 'LBJ206B - Rear Brake Lever \"3D\" adjustable Tmax530\'17 - Black', '0000-00-00', 1),
(741, 0, 0, 'LBJ206G - Rear Brake Lever \"3D\" adjustable Tmax530\'17 - Gold', 'LBJ206G - Rear Brake Lever \"3D\" adjustable Tmax530\'17 - Gold', '0000-00-00', 1),
(742, 0, 0, 'LBJ208A - Front Brake Lever \"3D\" adjustable Tmax530\'17 - Aluminium', 'LBJ208A - Front Brake Lever \"3D\" adjustable Tmax530\'17 - Aluminium', '0000-00-00', 1),
(743, 0, 0, 'LBJ208B - Front Brake Lever \"3D\" adjustable Tmax530\'17 - Black', 'LBJ208B - Front Brake Lever \"3D\" adjustable Tmax530\'17 - Black', '0000-00-00', 1),
(744, 0, 0, 'LBJ208G - Front Brake Lever \"3D\" adjustable Tmax530\'17 - Gold', 'LBJ208G - Front Brake Lever \"3D\" adjustable Tmax530\'17 - Gold', '0000-00-00', 1),
(745, 0, 0, 'PT228B - \"FOX\" License Plate Support Tmax530\'17 - Black', 'PT228B - \"FOX\" License Plate Support Tmax530\'17 - Black', '0000-00-00', 1),
(746, 0, 0, 'ZYF033B - Sump Cover (RH) Tmax530\'17 - Black', 'ZYF033B - Sump Cover (RH) Tmax530\'17 - Black', '0000-00-00', 1),
(747, 0, 0, 'ZYF034B - Pully Cover (Rear) Tmax530\'17 - Black', 'ZYF034B - Pully Cover (Rear) Tmax530\'17 - Black', '0000-00-00', 1),
(748, 0, 0, 'ZYF035A - Footrest Rear Side Tmax530\'17 - Aluminium', 'ZYF035A - Footrest Rear Side Tmax530\'17 - Aluminium', '0000-00-00', 1),
(749, 0, 0, 'ZYF036A - Front /Rear Beake Fluid Tank Cap Tmax530\'17 - Aluminium', 'ZYF036A - Front /Rear Beake Fluid Tank Cap Tmax530\'17 - Aluminium', '0000-00-00', 1),
(750, 0, 0, 'ZYF036B - Front /Rear Beake Fluid Tank Cap Tmax530\'17 - Black', 'ZYF036B - Front /Rear Beake Fluid Tank Cap Tmax530\'17 - Black', '0000-00-00', 1),
(751, 0, 0, 'ZYF036U - Front /Rear Beake Fluid Tank Cap Tmax530\'17 - Blue', 'ZYF036U - Front /Rear Beake Fluid Tank Cap Tmax530\'17 - Blue', '0000-00-00', 1),
(752, 0, 0, 'ZYF037A - Parking Brake Lever  Tmax530\'17 - Aluminium (new)', 'ZYF037A - Parking Brake Lever  Tmax530\'17 - Aluminium (new)', '0000-00-00', 1),
(753, 0, 0, 'ZYF037B - Parking Brake Lever Tmax530\'17 - Black (new)', 'ZYF037B - Parking Brake Lever Tmax530\'17 - Black (new)', '0000-00-00', 1),
(754, 0, 0, 'ZYF037U - Parking Brake Lever Tmax530\'17 - Blue (new)', 'ZYF037U - Parking Brake Lever Tmax530\'17 - Blue (new)', '0000-00-00', 1),
(755, 0, 0, 'ZYF038A - Mirror Hole Cap Tmax530\'17 / pair - Aluminium', 'ZYF038A - Mirror Hole Cap Tmax530\'17 / pair - Aluminium', '0000-00-00', 1),
(756, 0, 0, 'ZYF038B - Mirror Hole Cap Tmax530\'17 / pair - Black', 'ZYF038B - Mirror Hole Cap Tmax530\'17 / pair - Black', '0000-00-00', 1),
(757, 0, 0, 'ZYF038U - Mirror Hole Cap Tmax530\'17 / pair - Blue', 'ZYF038U - Mirror Hole Cap Tmax530\'17 / pair - Blue', '0000-00-00', 1),
(758, 0, 0, 'ZYF039B - Sump Cover (LH) Tmax530\'17 / pair - Black', 'ZYF039B - Sump Cover (LH) Tmax530\'17 / pair - Black', '0000-00-00', 1),
(759, 0, 0, 'CF010A - Headlight Fairing Ducati Scrambler - Aluminium', 'CF010A - Headlight Fairing Ducati Scrambler - Aluminium', '0000-00-00', 1),
(760, 0, 0, 'CF010B - Headlight Fairing Ducati Scrambler - Black', 'CF010B - Headlight Fairing Ducati Scrambler - Black', '0000-00-00', 1),
(761, 0, 0, 'ZDM131B - Headlight Fairing Adapter Ducati Scrambler', 'ZDM131B - Headlight Fairing Adapter Ducati Scrambler', '0000-00-00', 1),
(762, 0, 0, 'MA051B - Clip-On Bar Kit Ducati Scrambler', 'MA051B - Clip-On Bar Kit Ducati Scrambler', '0000-00-00', 1),
(763, 0, 0, 'ZDM128B - Guage Bracket (Used with the MA051 Clip-on Bar kit)', 'ZDM128B - Guage Bracket (Used with the MA051 Clip-on Bar kit)', '0000-00-00', 1),
(764, 0, 0, 'AZ203B - Guage Bracket (Used with 1-1/8inch Handlebar)', 'AZ203B - Guage Bracket (Used with 1-1/8inch Handlebar)', '0000-00-00', 1),
(765, 0, 0, 'TP040A - Front Brake Fluid Tank Cap Ducati Scrambler - Aluminium', 'TP040A - Front Brake Fluid Tank Cap Ducati Scrambler - Aluminium', '0000-00-00', 1),
(766, 0, 0, 'TP040B - Front Brake Fluid Tank Cap Ducati Scrambler - Black', 'TP040B - Front Brake Fluid Tank Cap Ducati Scrambler - Black', '0000-00-00', 1),
(767, 0, 0, 'ZDM129A - Front Fender Ducati Scrambler - Aluminium', 'ZDM129A - Front Fender Ducati Scrambler - Aluminium', '0000-00-00', 1),
(768, 0, 0, 'ZDM132A - Rear Fender Ducati Scrambler - Aluminium', 'ZDM132A - Rear Fender Ducati Scrambler - Aluminium', '0000-00-00', 1),
(769, 0, 0, 'ZDM134A - Fork Tube Guards Ducati Scrambler - Aluminium', 'ZDM134A - Fork Tube Guards Ducati Scrambler - Aluminium', '0000-00-00', 1),
(770, 0, 0, 'ZDM134B - Fork Tube Guards Ducati Scrambler - Black', 'ZDM134B - Fork Tube Guards Ducati Scrambler - Black', '0000-00-00', 1),
(771, 0, 0, 'PW200AA - Front Axle Slider New Ducati Scrambler', 'PW200AA - Front Axle Slider New Ducati Scrambler', '0000-00-00', 1),
(772, 0, 0, 'PW219A - Rear Axle Slider Ducati Scrambler', 'PW219A - Rear Axle Slider Ducati Scrambler', '0000-00-00', 1),
(773, 0, 0, 'TF142A - Gas Tank Cap \"Café Racer\" Ducati Scrambler Aluminium', 'TF142A - Gas Tank Cap \"Café Racer\" Ducati Scrambler Aluminium', '0000-00-00', 1),
(774, 0, 0, 'TF142B - Gas Tank Cap \"Café Racer\" Ducati Scrambler Black', 'TF142B - Gas Tank Cap \"Café Racer\" Ducati Scrambler Black', '0000-00-00', 1),
(775, 0, 0, 'ZDM123A - Timing Belt Cover Ducati Scrambler - Aluminium', 'ZDM123A - Timing Belt Cover Ducati Scrambler - Aluminium', '0000-00-00', 1),
(776, 0, 0, 'ZDM123B - Timing Belt Cover Ducati Scrambler - Black', 'ZDM123B - Timing Belt Cover Ducati Scrambler - Black', '0000-00-00', 1),
(777, 0, 0, 'ZDM127B - AIRBOX Ducati Scrambler - Black', 'ZDM127B - AIRBOX Ducati Scrambler - Black', '0000-00-00', 1),
(778, 0, 0, 'ZDM124A - Chain Guard  Ducati Scrambler - Aluminium', 'ZDM124A - Chain Guard  Ducati Scrambler - Aluminium', '0000-00-00', 1),
(779, 0, 0, 'ZDM124B - Chain Guard  Ducati Scrambler - Black', 'ZDM124B - Chain Guard  Ducati Scrambler - Black', '0000-00-00', 1),
(780, 0, 0, 'ZDM133A - Sprocket Cover Ducati Scrambler - Aluminium', 'ZDM133A - Sprocket Cover Ducati Scrambler - Aluminium', '0000-00-00', 1),
(781, 0, 0, 'ZDM133B - Sprocket Cover Ducati Scrambler - Black', 'ZDM133B - Sprocket Cover Ducati Scrambler - Black', '0000-00-00', 1),
(782, 0, 0, 'PM357A - Engine/ Fairing Guards \"B-PRO\" Scrambler', 'PM357A - Engine/ Fairing Guards \"B-PRO\" Scrambler', '0000-00-00', 1),
(783, 0, 0, 'ZDM125A - Cooler Covers (right/left) Ducati Scrambler - Aluminium', 'ZDM125A - Cooler Covers (right/left) Ducati Scrambler - Aluminium', '0000-00-00', 1),
(784, 0, 0, 'ZDM125B - Cooler Covers (right/left) Ducati Scrambler - Black', 'ZDM125B - Cooler Covers (right/left) Ducati Scrambler - Black', '0000-00-00', 1),
(785, 0, 0, 'PE213B - Adjustable Pegs Kit  Ducati Scrambler - Black', 'PE213B - Adjustable Pegs Kit  Ducati Scrambler - Black', '0000-00-00', 1),
(786, 0, 0, 'PT527B - License plate support \"OUTSIDE\" Ducati Scrambler', 'PT527B - License plate support \"OUTSIDE\" Ducati Scrambler', '0000-00-00', 1),
(787, 0, 0, 'LBJ500A - Brake Levers \"3D\" Ducati (MTS/1199/899/M1200/SF) - Aluminium', 'LBJ500A - Brake Levers \"3D\" Ducati (MTS/1199/899/M1200/SF) - Aluminium', '0000-00-00', 1),
(788, 0, 0, 'LBJ500B - Brake Levers \"3D\" Ducati (MTS/1199/899/M1200/SF) - Black', 'LBJ500B - Brake Levers \"3D\" Ducati (MTS/1199/899/M1200/SF) - Black', '0000-00-00', 1),
(789, 0, 0, 'LCJ500A - Clutch Levers \"3D\" Ducati (MTS/1199/899/M1200/SF) - Aluminium', 'LCJ500A - Clutch Levers \"3D\" Ducati (MTS/1199/899/M1200/SF) - Aluminium', '0000-00-00', 1),
(790, 0, 0, 'LCJ500B - Clutch Levers \"3D\" Ducati (MTS/1199/899/M1200/SF)  - Black', 'LCJ500B - Clutch Levers \"3D\" Ducati (MTS/1199/899/M1200/SF)  - Black', '0000-00-00', 1),
(791, 0, 0, 'PE715B - Eccentric Rider Peg Adapter ', 'PE715B - Eccentric Rider Peg Adapter ', '0000-00-00', 1),
(792, 0, 0, 'FR231B - Indicator Light Adapter for Ducati Scrambler', 'FR231B - Indicator Light Adapter for Ducati Scrambler', '0000-00-00', 1),
(793, 0, 0, 'LCJ500G - Clutch Lever \"3D\" Ducati - Gold', 'LCJ500G - Clutch Lever \"3D\" Ducati - Gold', '0000-00-00', 1),
(794, 0, 0, 'LBJ701A - Brake Lever\"3D\" R9T - Aluminium', 'LBJ701A - Brake Lever\"3D\" R9T - Aluminium', '0000-00-00', 1),
(795, 0, 0, 'LCJ705A - Clutch Lever\"3D\" R9T- Aluminium', 'LCJ705A - Clutch Lever\"3D\" R9T- Aluminium', '0000-00-00', 1),
(796, 0, 0, 'LBJ701B - Brake Levers \"3D\" R9T - Black', 'LBJ701B - Brake Levers \"3D\" R9T - Black', '0000-00-00', 1),
(797, 0, 0, 'LCJ705B - Clutch Levers \"3D\" R9T - Black', 'LCJ705B - Clutch Levers \"3D\" R9T - Black', '0000-00-00', 1),
(798, 0, 0, 'ZBW062A -Frame Hole Caps Kit  R1200GS', 'ZBW062A -Frame Hole Caps Kit  R1200GS', '0000-00-00', 1),
(799, 0, 0, 'LBR503B - Brake levers \"RRC\" (Scrambler/Hyp821/M821) - Black ', 'LBR503B - Brake levers \"RRC\" (Scrambler/Hyp821/M821) - Black ', '0000-00-00', 1),
(800, 0, 0, 'LCR503B - Clutch levers \"RRC\" Black (Scrambler/Hyp821/M821) - Black ', 'LCR503B - Clutch levers \"RRC\" Black (Scrambler/Hyp821/M821) - Black ', '0000-00-00', 1),
(801, 0, 0, 'ZBW040A - Hub Cover Rear Protector for  BMW C600Sport /C650GT', 'ZBW040A - Hub Cover Rear Protector for  BMW C600Sport /C650GT', '0000-00-00', 1),
(802, 0, 0, 'CF011A - Low Headlight Fairing (Aluminium) Thruxton R 2016 - Aluminium', 'CF011A - Low Headlight Fairing (Aluminium) Thruxton R 2016 - Aluminium', '0000-00-00', 1),
(803, 0, 0, 'CF011B - Low Headlight Fairing (Aluminium) Thruxton R 2016 - Black', 'CF011B - Low Headlight Fairing (Aluminium) Thruxton R 2016 - Black', '0000-00-00', 1),
(804, 0, 0, 'ZTH061B - Headlight Fairing Adapter for CF011 Thruxton R 2016', 'ZTH061B - Headlight Fairing Adapter for CF011 Thruxton R 2016', '0000-00-00', 1),
(805, 0, 0, 'FR218B - Indicator Light Adapters for Thruxton R 2016', 'FR218B - Indicator Light Adapters for Thruxton R 2016', '0000-00-00', 1),
(806, 0, 0, 'TP043A - Engine Oil Filler Cap For Thruxton R 2016 - Aluminium', 'TP043A - Engine Oil Filler Cap For Thruxton R 2016 - Aluminium', '0000-00-00', 1),
(807, 0, 0, 'TP043B - Engine Oil Filler Cap Fpr Thruxton R 2016 - Black', 'TP043B - Engine Oil Filler Cap Fpr Thruxton R 2016 - Black', '0000-00-00', 1),
(808, 0, 0, 'MA053A - Clip-On Bar Kit For 43mm Forks Thruxton R 2016 -Aluminium', 'MA053A - Clip-On Bar Kit For 43mm Forks Thruxton R 2016 -Aluminium', '0000-00-00', 1),
(809, 0, 0, 'MA053B - Clip-On Bar Kit For 43mm Forks Thruxton R 2016 -Black', 'MA053B - Clip-On Bar Kit For 43mm Forks Thruxton R 2016 -Black', '0000-00-00', 1);
INSERT INTO `product_category` (`id`, `id_brand_category`, `id_model_category`, `name`, `description`, `date`, `status`) VALUES
(810, 0, 0, 'ZTH060B - Headlight Guard  Thruxton R 2016- Black', 'ZTH060B - Headlight Guard  Thruxton R 2016- Black', '0000-00-00', 1),
(811, 0, 0, 'PE760A - Adapter Peg Rider - Street Twin', 'PE760A - Adapter Peg Rider - Street Twin', '0000-00-00', 1),
(812, 0, 0, 'PE762A - Adapter Peg Passenger - Street Twin', 'PE762A - Adapter Peg Passenger - Street Twin', '0000-00-00', 1),
(813, 0, 0, 'PT109B - \"FOX\" License Plate Support CBR600RR', 'PT109B - \"FOX\" License Plate Support CBR600RR', '0000-00-00', 1),
(814, 0, 0, 'PER215B - Rear Set Control Kit \"RRC\" 1199/959/899/1299', 'PER215B - Rear Set Control Kit \"RRC\" 1199/959/899/1299', '0000-00-00', 1),
(815, 0, 0, 'PT528B - License Plate Support \"OUTSIDE\" X Diavel', 'PT528B - License Plate Support \"OUTSIDE\" X Diavel', '0000-00-00', 1),
(816, 0, 0, 'ZDM141B - OEM/Rizoma Rear Marker Light Support for Single Seat', 'ZDM141B - OEM/Rizoma Rear Marker Light Support for Single Seat', '0000-00-00', 1),
(817, 0, 0, 'LCR706B - Clutch Lever With Adjustment \"RRC\" S1000XR - Black', 'LCR706B - Clutch Lever With Adjustment \"RRC\" S1000XR - Black', '0000-00-00', 1),
(818, 0, 0, 'ZBW074A -  Intake Tips R9T', 'ZBW074A -  Intake Tips R9T', '0000-00-00', 1),
(819, 0, 0, 'ZBW071B - Rear Bag Support  R9T Scrambler', 'ZBW071B - Rear Bag Support  R9T Scrambler', '0000-00-00', 1),
(820, 0, 0, 'ZBW072B - Saddlebag Support (Right) R9T Scrambler', 'ZBW072B - Saddlebag Support (Right) R9T Scrambler', '0000-00-00', 1),
(821, 0, 0, 'ZBW076A - Engine Protection Bar R9T', 'ZBW076A - Engine Protection Bar R9T', '0000-00-00', 1),
(822, 0, 0, 'ZBW028B - Rear Hub Cover', 'ZBW028B - Rear Hub Cover', '0000-00-00', 1),
(823, 0, 0, 'PE772B - Eccentric Rider Peg Adapter Thruxton R 1200', 'PE772B - Eccentric Rider Peg Adapter Thruxton R 1200', '0000-00-00', 1),
(824, 0, 0, 'ZTH042B - Head Light Guard Triumph Thruxton 900', 'ZTH042B - Head Light Guard Triumph Thruxton 900', '0000-00-00', 1),
(825, 0, 0, 'PW706A - Front Wheel Protection R9T Racer', 'PW706A - Front Wheel Protection R9T Racer', '0000-00-00', 1),
(826, 0, 0, 'BS132B - Mirror \"Radial RS\"', 'BS132B - Mirror \"Radial RS\"', '0000-00-00', 1),
(827, 0, 0, 'PT662B - \"FOX\" License plate Support T120', 'PT662B - \"FOX\" License plate Support T120', '0000-00-00', 1),
(828, 0, 0, 'EE082H - Cable Signal kit for T120', 'EE082H - Cable Signal kit for T120', '0000-00-00', 1),
(829, 0, 0, 'BS761B - Fairing sport mirror adapter R9T Racer', 'BS761B - Fairing sport mirror adapter R9T Racer', '0000-00-00', 1),
(830, 0, 0, 'PT665B - \"FOX\" License plate Support T120 without rear fender', 'PT665B - \"FOX\" License plate Support T120 without rear fender', '0000-00-00', 1),
(831, 0, 0, 'ZBW078B - Headlight Guard R9T', 'ZBW078B - Headlight Guard R9T', '0000-00-00', 1),
(832, 0, 0, 'EE140B - LED Fog Auxiliary Lights R9T', 'EE140B - LED Fog Auxiliary Lights R9T', '0000-00-00', 1),
(833, 0, 0, 'PT114B - \"FOX\" License plate Support Honda X-ADV 750\'17', 'PT114B - \"FOX\" License plate Support Honda X-ADV 750\'17', '0000-00-00', 1),
(834, 15, 0, 'ZBW087A - Engine Protection Bar R9T', 'ZBW087A - Engine Protection Bar R9T', '0000-00-00', 1),
(835, 0, 0, 'ZBW085B - Airbox Cover R Nine T 1200 Racer 2017', 'ZBW085B - Airbox Cover R Nine T 1200 Racer 2017', '0000-00-00', 1),
(836, 0, 0, 'ZBW081A - Headlight Fairing R9T pure/scrambler', 'ZBW081A - Headlight Fairing R9T pure/scrambler', '0000-00-00', 1),
(837, 0, 0, 'GR231BS - URLO Harley Davidson - Black', 'GR231BS - URLO Harley Davidson - Black', '0000-00-00', 1),
(838, 15, 0, 'PE412B - Gear Lever  R9T urban GS', 'PE412B - Gear Lever  R9T urban GS', '0000-00-00', 1),
(839, 0, 0, 'PE413B - Rear Set Control Kit R9T New version', 'PE413B - Rear Set Control Kit R9T New version', '0000-00-00', 1),
(840, 20, 0, 'FR600B - Adapter For The Mounting On Any Handlebar  Sguardo', 'FR600B - Adapter For The Mounting On Any Handlebar  Sguardo', '0000-00-00', 1),
(841, 0, 0, 'GR421B - Grip Adapter R9T', 'GR421B - Grip Adapter R9T', '0000-00-00', 1),
(842, 0, 0, 'PER216A - Rear set Control Kit -V4 ', 'PER216A - Rear set Control Kit -V4 ', '0000-00-00', 1),
(843, 0, 0, 'FR244B - Front indicator light adapter Monster 821/Scrambler', 'FR244B - Front indicator light adapter Monster 821/Scrambler', '0000-00-00', 1),
(844, 0, 0, 'BS822B - Mirror Adapter for Ducati Panigale V4', 'BS822B - Mirror Adapter for Ducati Panigale V4', '0000-00-00', 1),
(845, 0, 0, 'GRDW222Z11B - URLO ride by wire Xdiavel only', 'GRDW222Z11B - URLO ride by wire Xdiavel only', '0000-00-00', 1),
(846, 0, 0, 'FR237B - Indicator Light Adapters XADV', 'FR237B - Indicator Light Adapters XADV', '0000-00-00', 1),
(847, 0, 0, 'PT656B - \"Fox\" License Plate Support Triumph Street Triple 2017-18', 'PT656B - \"Fox\" License Plate Support Triumph Street Triple 2017-18', '0000-00-00', 1),
(848, 20, 0, 'PE220B - Rizoma EVO Rear Sets Ducati Xdiavel', 'PE220B - Rizoma EVO Rear Sets Ducati Xdiavel', '0000-00-00', 1),
(849, 20, 0, 'PE768B - Adapter Peg T100 for Rider', 'PE768B - Adapter Peg T100 for Rider', '0000-00-00', 1),
(850, 20, 0, 'PE769B - Adapter Peg T100 for Passenger', 'PE769B - Adapter Peg T100 for Passenger', '0000-00-00', 1),
(851, 20, 0, 'EE146H - Wiring Kit for front rizoma indicators Front Honda XADV ', 'EE146H - Wiring Kit for front rizoma indicators Front Honda XADV ', '0000-00-00', 1),
(852, 9, 0, 'EE154H - Wiring Kit for front rizoma indicators Rear Honda XADV', 'EE154H - Wiring Kit for front rizoma indicators Rear Honda XADV', '0000-00-00', 1),
(853, 9, 0, 'EE162H - Wiring Kit for front rizoma indicators Rear Honda CBR1000R 2018', 'EE162H - Wiring Kit for front rizoma indicators Rear Honda CBR1000R 2018', '0000-00-00', 1),
(854, 9, 0, 'EE167H - Wiring Kit for front rizoma indicators Front Honda CBR1000R 2018', 'EE167H - Wiring Kit for front rizoma indicators Front Honda CBR1000R 2018', '0000-00-00', 1),
(855, 9, 0, 'AF280B - Clutch Slave Cylinder Ø30 mm - Black', 'AF280B - Clutch Slave Cylinder Ø30 mm - Black', '0000-00-00', 1),
(856, 9, 0, 'AF280G - Clutch Slave Cylinder Ø30 mm - Gold', 'AF280G - Clutch Slave Cylinder Ø30 mm - Gold', '0000-00-00', 1),
(857, 9, 0, 'AF280N - Clutch Slave Cylinder Ø30 mm - Natural', 'AF280N - Clutch Slave Cylinder Ø30 mm - Natural', '0000-00-00', 1),
(858, 9, 0, 'AF280R - Clutch Slave Cylinder Ø30 mm - Red', 'AF280R - Clutch Slave Cylinder Ø30 mm - Red', '0000-00-00', 1),
(859, 9, 0, 'AF280T - Clutch Slave Cylinder Ø30 mm - Titanium', 'AF280T - Clutch Slave Cylinder Ø30 mm - Titanium', '0000-00-00', 1),
(860, 9, 0, 'AF281B - Clutch Slave Cylinder D.30mm Carbon - Black', 'AF281B - Clutch Slave Cylinder D.30mm Carbon - Black', '0000-00-00', 1),
(861, 9, 0, 'AF281G - Clutch Slave Cylinder D.30mm Carbon - Gold', 'AF281G - Clutch Slave Cylinder D.30mm Carbon - Gold', '0000-00-00', 1),
(862, 9, 0, 'AF281R - Clutch Slave Cylinder D.30mm Carbon - Red', 'AF281R - Clutch Slave Cylinder D.30mm Carbon - Red', '0000-00-00', 1),
(863, 9, 0, 'AF281T - Clutch Slave Cylinder D.30mm Carbon - Titanium', 'AF281T - Clutch Slave Cylinder D.30mm Carbon - Titanium', '0000-00-00', 1),
(864, 9, 0, 'AF286B - Clutch Slave Cylinder D.28mm Panigale - Black', 'AF286B - Clutch Slave Cylinder D.28mm Panigale - Black', '0000-00-00', 1),
(865, 9, 0, 'AF286G - Clutch Slave Cylinder D.28mm Panigale - Gold', 'AF286G - Clutch Slave Cylinder D.28mm Panigale - Gold', '0000-00-00', 1),
(866, 9, 0, 'AF286R - Clutch Slave Cylinder D.28mm Panigale - Red', 'AF286R - Clutch Slave Cylinder D.28mm Panigale - Red', '0000-00-00', 1),
(867, 0, 0, 'AF293B - Clutch Slave Cylinder Ø 30 MM Ducati SBK Panigale Series - Black', 'AF293B - Clutch Slave Cylinder Ø 30 MM Ducati SBK Panigale Series - Black', '0000-00-00', 1),
(868, 0, 0, 'AF293G - Clutch Slave Cylinder Ø 30 MM Ducati SBK Panigale Series - Gold', 'AF293G - Clutch Slave Cylinder Ø 30 MM Ducati SBK Panigale Series - Gold', '0000-00-00', 1),
(869, 0, 0, 'AF293R - Clutch Slave Cylinder Ø 30 MM Ducati SBK Panigale Series - Red', 'AF293R - Clutch Slave Cylinder Ø 30 MM Ducati SBK Panigale Series - Red', '0000-00-00', 1),
(870, 0, 0, 'BM500B - Larger Sidestand Foot (Hyper821/MTS2010-2014)', 'BM500B - Larger Sidestand Foot (Hyper821/MTS2010-2014)', '0000-00-00', 1),
(871, 0, 0, 'BM501B - Kickstand Pad Ducati Monster 821/ 1200 / S / R', 'BM501B - Kickstand Pad Ducati Monster 821/ 1200 / S / R', '0000-00-00', 1),
(872, 30, 0, 'BM502B - Kickstand Pad Ducati Scrambler 800', 'BM502B - Kickstand Pad Ducati Scrambler 800', '0000-00-00', 1),
(873, 30, 0, 'CC180B - Timing Belt Cover M1 - Black', 'CC180B - Timing Belt Cover M1 - Black', '0000-00-00', 1),
(874, 30, 0, 'CC180T - Timing Belt Cover M1 - Titanium', 'CC180T - Timing Belt Cover M1 - Titanium', '0000-00-00', 1),
(875, 30, 0, 'CF260B - Timing Inspection Cover SF/ MTS1200 - Black', 'CF260B - Timing Inspection Cover SF/ MTS1200 - Black', '0000-00-00', 1),
(876, 30, 0, 'CF260G - Timing Inspection Cover SF/ MTS1200 - Gold', 'CF260G - Timing Inspection Cover SF/ MTS1200 - Gold', '0000-00-00', 1),
(877, 30, 0, 'CF260R - Timing Inspection Cover SF/ MTS1200 - Red', 'CF260R - Timing Inspection Cover SF/ MTS1200 - Red', '0000-00-00', 1),
(878, 30, 0, 'CF260T - Timing Inspection Cover SF/ MTS1200 - Titanium', 'CF260T - Timing Inspection Cover SF/ MTS1200 - Titanium', '0000-00-00', 1),
(879, 30, 0, 'CF261B - Timing Inspection Cover Ducati for Monster/ Diavel - Black', 'CF261B - Timing Inspection Cover Ducati for Monster/ Diavel - Black', '0000-00-00', 1),
(880, 0, 0, 'CF261G - Timing Inspection Cover Ducati for Monster/ Diavel - Gold', 'CF261G - Timing Inspection Cover Ducati for Monster/ Diavel - Gold', '0000-00-00', 1),
(881, 0, 0, 'CF261R - Timing Inspection Cover Ducati for Monster/ Diavel - Red', 'CF261R - Timing Inspection Cover Ducati for Monster/ Diavel - Red', '0000-00-00', 1),
(882, 0, 0, 'CF261T - Timing Inspection Cover Ducati for Monster/ Diavel - Titanium', 'CF261T - Timing Inspection Cover Ducati for Monster/ Diavel - Titanium', '0000-00-00', 1),
(883, 0, 0, 'CK160B - Side Cap for Monster795/796 - Black ', 'CK160B - Side Cap for Monster795/796 - Black ', '0000-00-00', 1),
(884, 0, 0, 'CK160G - Side Cap for Monster795/796 - Gold ', 'CK160G - Side Cap for Monster795/796 - Gold ', '0000-00-00', 1),
(885, 0, 0, 'CK160R - Side Cap for Monster795/796 - Red', 'CK160R - Side Cap for Monster795/796 - Red', '0000-00-00', 1),
(886, 18, 0, 'CK161B - Cams Cover Ducati Panigale 1199 - Black', 'CK161B - Cams Cover Ducati Panigale 1199 - Black', '0000-00-00', 1),
(887, 18, 0, 'CK161G - Cams Cover Ducati Panigale 1199 - Gold', 'CK161G - Cams Cover Ducati Panigale 1199 - Gold', '0000-00-00', 1),
(888, 18, 0, 'CK161R - Cams Cover Ducati Panigale 1199 - Red', 'CK161R - Cams Cover Ducati Panigale 1199 - Red', '0000-00-00', 1),
(889, 18, 0, 'CM230B - Handlebars Ends - Black', 'CM230B - Handlebars Ends - Black', '0000-00-00', 1),
(890, 0, 0, 'CM230G - Handlebars Ends - Gold', 'CM230G - Handlebars Ends - Gold', '0000-00-00', 1),
(891, 0, 0, 'CM231B - Handlebars Ends - Black', 'CM231B - Handlebars Ends - Black', '0000-00-00', 1),
(892, 0, 0, 'CM231G - Handlebars Ends - Gold', 'CM231G - Handlebars Ends - Gold', '0000-00-00', 1),
(893, 0, 0, 'CP150B - Sprocket Cover for Monster795/796/ Scrambler/STF - Black', 'CP150B - Sprocket Cover for Monster795/796/ Scrambler/STF - Black', '0000-00-00', 1),
(894, 0, 0, 'CP150G - Sprocket Cover for Monster795/796/ Scrambler/STF - Gold', 'CP150G - Sprocket Cover for Monster795/796/ Scrambler/STF - Gold', '0000-00-00', 1),
(895, 0, 0, 'CP150R - Sprocket Cover for Monster795/796/ Scrambler/STF - Red', 'CP150R - Sprocket Cover for Monster795/796/ Scrambler/STF - Red', '0000-00-00', 1),
(896, 0, 0, 'CP150T - Sprocket Cover for Monster795/796/ Scrambler/STF - Titanium', 'CP150T - Sprocket Cover for Monster795/796/ Scrambler/STF - Titanium', '0000-00-00', 1),
(897, 0, 0, 'CP151B - Sprocket Cover Carbon for Diavel - Black ', 'CP151B - Sprocket Cover Carbon for Diavel - Black ', '0000-00-00', 1),
(898, 0, 0, 'CP151G - Sprocket Cover Carbon for Diavel - Gold', 'CP151G - Sprocket Cover Carbon for Diavel - Gold', '0000-00-00', 1),
(899, 0, 0, 'CP151T - Sprocket Cover Carbon for Diavel - Titanium', 'CP151T - Sprocket Cover Carbon for Diavel - Titanium', '0000-00-00', 1),
(900, 0, 0, 'CP154B - Sprocket Cover Hyper821 Black', 'CP154B - Sprocket Cover Hyper821 Black', '0000-00-00', 1),
(901, 0, 0, 'CP154G - Sprocket Cover Hyper821 Gold', 'CP154G - Sprocket Cover Hyper821 Gold', '0000-00-00', 1),
(902, 0, 0, 'CP154T - Sprocket Cover Hyper821 Titanium', 'CP154T - Sprocket Cover Hyper821 Titanium', '0000-00-00', 1),
(903, 0, 0, 'CS803B - Mirror Hole Caps Panigale 1199 - Black', 'CS803B - Mirror Hole Caps Panigale 1199 - Black', '0000-00-00', 1),
(904, 0, 0, 'CS803G - Mirror Hole Caps Panigale 1199 - Gold', 'CS803G - Mirror Hole Caps Panigale 1199 - Gold', '0000-00-00', 1),
(905, 0, 0, 'CS803R - Mirror Hole Caps Panigale 1199 - Red', 'CS803R - Mirror Hole Caps Panigale 1199 - Red', '0000-00-00', 1),
(906, 0, 0, 'CS803T - Mirror Hole Caps Panigale 1199 - Titanium ', 'CS803T - Mirror Hole Caps Panigale 1199 - Titanium ', '0000-00-00', 1),
(907, 0, 0, 'DA382B - Rear Wheel Axle Nut Sets Ergal 7075 Small - Black', 'DA382B - Rear Wheel Axle Nut Sets Ergal 7075 Small - Black', '0000-00-00', 1),
(908, 0, 0, 'DA382G - Rear Wheel Axle Nut Sets Ergal 7075 Small - Gold', 'DA382G - Rear Wheel Axle Nut Sets Ergal 7075 Small - Gold', '0000-00-00', 1),
(909, 0, 0, 'DA382R - Rear Wheel Axle Nut Sets Ergal 7075 Small - Red', 'DA382R - Rear Wheel Axle Nut Sets Ergal 7075 Small - Red', '0000-00-00', 1),
(910, 0, 0, 'DA383B - 5 Hole Sprocket Flange Nut Kit - Black ', 'DA383B - 5 Hole Sprocket Flange Nut Kit - Black ', '0000-00-00', 1),
(911, 0, 0, 'DA383G - 5 Hole Sprocket Flange Nut Kit - Gold', 'DA383G - 5 Hole Sprocket Flange Nut Kit - Gold', '0000-00-00', 1),
(912, 0, 0, 'DA383R - 5 Hole Sprocket Flange Nut Kit - Red', 'DA383R - 5 Hole Sprocket Flange Nut Kit - Red', '0000-00-00', 1),
(913, 0, 0, 'DA384B - 6 Hole Sprocket Flange Nut Kit - Black  ', 'DA384B - 6 Hole Sprocket Flange Nut Kit - Black  ', '0000-00-00', 1),
(914, 0, 0, 'DA384G - 6 Hole Sprocket Flange Nut Kit - Gold', 'DA384G - 6 Hole Sprocket Flange Nut Kit - Gold', '0000-00-00', 1),
(915, 0, 0, 'DA384R - 6 Hole Sprocket Flange Nut Kit - Red', 'DA384R - 6 Hole Sprocket Flange Nut Kit - Red', '0000-00-00', 1),
(916, 0, 0, 'DA386B - Nuts Sets Rear Sprocket Flange Ducati-M796/HYP821 - Black', 'DA386B - Nuts Sets Rear Sprocket Flange Ducati-M796/HYP821 - Black', '0000-00-00', 1),
(917, 0, 0, 'DA386G - Nuts Sets Rear Sprocket Flange Ducati-M796/HYP821 - Gold', 'DA386G - Nuts Sets Rear Sprocket Flange Ducati-M796/HYP821 - Gold', '0000-00-00', 1),
(918, 0, 0, 'DA386R - Nuts Sets Rear Sprocket Flange Ducati-M796/HYP821 - Red', 'DA386R - Nuts Sets Rear Sprocket Flange Ducati-M796/HYP821 - Red', '0000-00-00', 1),
(919, 0, 0, 'DA387B - Nuts Ring Gear Ducati M10X1.25 6 pcs - Black', 'DA387B - Nuts Ring Gear Ducati M10X1.25 6 pcs - Black', '0000-00-00', 1),
(920, 0, 0, 'DA387G - Nuts Ring Gear Ducati M10X1.25 6 pcs - Gold', 'DA387G - Nuts Ring Gear Ducati M10X1.25 6 pcs - Gold', '0000-00-00', 1),
(921, 0, 0, 'DA387R - Nuts Ring Gear Ducati M10X1.25 6 pcs - Red', 'DA387R - Nuts Ring Gear Ducati M10X1.25 6 pcs - Red', '0000-00-00', 1),
(922, 0, 0, 'DA394B - Rear Wheel Axle Nut Sets Ergal 7075 Big - Black', 'DA394B - Rear Wheel Axle Nut Sets Ergal 7075 Big - Black', '0000-00-00', 1),
(923, 0, 0, 'DA394G - Rear Wheel Axle Nut Sets Ergal 7075 Big - Gold', 'DA394G - Rear Wheel Axle Nut Sets Ergal 7075 Big - Gold', '0000-00-00', 1),
(924, 0, 0, 'DA394R - Rear Wheel Axle Nut Sets Ergal 7075 Big - Red', 'DA394R - Rear Wheel Axle Nut Sets Ergal 7075 Big - Red', '0000-00-00', 1),
(925, 0, 0, 'DA394T - Rear Wheel Axle Nut Sets Ergal 7075 Big - Titanium', 'DA394T - Rear Wheel Axle Nut Sets Ergal 7075 Big - Titanium', '0000-00-00', 1),
(926, 0, 0, 'DA396B - Front Wheel Nut (all Model)', 'DA396B - Front Wheel Nut (all Model)', '0000-00-00', 1),
(927, 0, 0, 'DA401B - Rear Wheel Nuts Ducati Panigale 959 - Black', 'DA401B - Rear Wheel Nuts Ducati Panigale 959 - Black', '0000-00-00', 1),
(928, 0, 0, 'DA401G - Rear Wheel Nuts Ducati Panigale 959 - Gold', 'DA401G - Rear Wheel Nuts Ducati Panigale 959 - Gold', '0000-00-00', 1),
(929, 0, 0, 'DA401R - Rear Wheel Nuts Ducati Panigale 959 - Red', 'DA401R - Rear Wheel Nuts Ducati Panigale 959 - Red', '0000-00-00', 1),
(930, 0, 0, 'FL500B - Rear Sprocket Flange 5 Hole - Black ', 'FL500B - Rear Sprocket Flange 5 Hole - Black ', '0000-00-00', 1),
(931, 0, 0, 'FL500G - Rear Sprocket Flange 5 hole - Gold', 'FL500G - Rear Sprocket Flange 5 hole - Gold', '0000-00-00', 1),
(932, 0, 0, 'FL500R - Rear Sprocket Flange 5 hole - Red', 'FL500R - Rear Sprocket Flange 5 hole - Red', '0000-00-00', 1),
(933, 0, 0, 'FL501B - Rear Sprocket Flange 6 hole - Black', 'FL501B - Rear Sprocket Flange 6 hole - Black', '0000-00-00', 1),
(934, 0, 0, 'FL501G - Rear Sprocket Flange 6 hole - Gold', 'FL501G - Rear Sprocket Flange 6 hole - Gold', '0000-00-00', 1),
(935, 0, 0, 'FL501R - Rear Sprocket Flange 6 hole - Red', 'FL501R - Rear Sprocket Flange 6 hole - Red', '0000-00-00', 1),
(936, 0, 0, 'FL501T - Rear Sprocket Flange 6 hole - Titanium', 'FL501T - Rear Sprocket Flange 6 hole - Titanium', '0000-00-00', 1),
(937, 0, 0, 'FL504BS - Rear Sprocket Flange Bicolor - Black (MTS/Diavel/1199/SS/SF)', 'FL504BS - Rear Sprocket Flange Bicolor - Black (MTS/Diavel/1199/SS/SF)', '0000-00-00', 1),
(938, 0, 0, 'FL504RS - Rear Sprocket Flange Bicolor - Red (MTS/Diavel/1199/SS/SF)', 'FL504RS - Rear Sprocket Flange Bicolor - Red (MTS/Diavel/1199/SS/SF)', '0000-00-00', 1),
(939, 0, 0, 'GH350B - Ring Nut Hyper796/Monster796/1100/ MTS1200/1260/Scrambler - Black', 'GH350B - Ring Nut Hyper796/Monster796/1100/ MTS1200/1260/Scrambler - Black', '0000-00-00', 1),
(940, 0, 0, 'GH350G - Ring Nut Hyper796/Monster796/1100/ MTS1200/1260/Scrambler- Gold', 'GH350G - Ring Nut Hyper796/Monster796/1100/ MTS1200/1260/Scrambler- Gold', '0000-00-00', 1),
(941, 0, 0, 'GH350R - Ring Nut Hyper796/Monster796/1100/ MTS1200/1260/Scrambler- Red', 'GH350R - Ring Nut Hyper796/Monster796/1100/ MTS1200/1260/Scrambler- Red', '0000-00-00', 1),
(942, 0, 0, 'GH351B - Ring Nut Diavel/Xdiavel/Hyper1100 - Black ', 'GH351B - Ring Nut Diavel/Xdiavel/Hyper1100 - Black ', '0000-00-00', 1),
(943, 0, 0, 'GH351R - Ring Nut Diavel/Xdiavel/Hyper1100 - Red', 'GH351R - Ring Nut Diavel/Xdiavel/Hyper1100 - Red', '0000-00-00', 1),
(944, 7, 0, 'GH354B - Ring Nut Ducati SBK Panigale Series - Black', 'GH354B - Ring Nut Ducati SBK Panigale Series - Black', '0000-00-00', 1),
(945, 7, 0, 'GH354G - Ring Nut Ducati SBK Panigale Series - Gold', 'GH354G - Ring Nut Ducati SBK Panigale Series - Gold', '0000-00-00', 1),
(946, 7, 0, 'GH354R - Ring Nut Ducati SBK Panigale Series - Red', 'GH354R - Ring Nut Ducati SBK Panigale Series - Red', '0000-00-00', 1),
(947, 7, 0, 'KS250B - Kit Caps Bleed Universal 6 pz - Black', 'KS250B - Kit Caps Bleed Universal 6 pz - Black', '0000-00-00', 1),
(948, 7, 0, 'KS250G - Kit Caps Bleed Universal 6 pz - Gold', 'KS250G - Kit Caps Bleed Universal 6 pz - Gold', '0000-00-00', 1),
(949, 31, 0, 'KS250L - Kit Caps Bleed Universal 6 pz - Blue', 'KS250L - Kit Caps Bleed Universal 6 pz - Blue', '0000-00-00', 1),
(950, 31, 0, 'KS250R - Kit Caps Bleed Universal 6 pz - Red', 'KS250R - Kit Caps Bleed Universal 6 pz - Red', '0000-00-00', 1),
(951, 31, 0, 'KS250T - Kit Caps Bleed Universal 6 pz - Titanium', 'KS250T - Kit Caps Bleed Universal 6 pz - Titanium', '0000-00-00', 1),
(952, 31, 0, 'KS252B - Wheel Valve Caps - Black', 'KS252B - Wheel Valve Caps - Black', '0000-00-00', 1),
(953, 0, 0, 'KS252G - Wheel Valve Caps - Gold', 'KS252G - Wheel Valve Caps - Gold', '0000-00-00', 1),
(954, 0, 0, 'KS252L - Wheel Valve Caps - Blue', 'KS252L - Wheel Valve Caps - Blue', '0000-00-00', 1),
(955, 0, 0, 'KS252R - Wheel Valve Caps - Red', 'KS252R - Wheel Valve Caps - Red', '0000-00-00', 1),
(956, 0, 0, 'KV302B - Fairing Screw Ducati Multistrada 1200 - Black', 'KV302B - Fairing Screw Ducati Multistrada 1200 - Black', '0000-00-00', 1),
(957, 0, 0, 'KV302R - Fairing Screw Ducati Multistrada 1200 - Red', 'KV302R - Fairing Screw Ducati Multistrada 1200 - Red', '0000-00-00', 1),
(958, 0, 0, 'KV315B - Screws Radiator Ducati Hypermotard 821 - Black', 'KV315B - Screws Radiator Ducati Hypermotard 821 - Black', '0000-00-00', 1),
(959, 0, 0, 'KV315G - Screws Radiator Ducati Hypermotard 821 - Gold', 'KV315G - Screws Radiator Ducati Hypermotard 821 - Gold', '0000-00-00', 1),
(960, 0, 0, 'KV315R - Screws Radiator Ducati Hypermotard 821 - Red', 'KV315R - Screws Radiator Ducati Hypermotard 821 - Red', '0000-00-00', 1),
(961, 0, 0, 'KV316B - Screws Dashboard Hypermotard 821 - Black', 'KV316B - Screws Dashboard Hypermotard 821 - Black', '0000-00-00', 1),
(962, 0, 0, 'KV316G - Screws Dashboard Hypermotard 821 - Gold', 'KV316G - Screws Dashboard Hypermotard 821 - Gold', '0000-00-00', 1),
(963, 0, 0, 'KV316R - Screws Dashboard Hypermotard 821 - Red', 'KV316R - Screws Dashboard Hypermotard 821 - Red', '0000-00-00', 1),
(964, 0, 0, 'KV317B - Kit Screws Side Panels+Rear Fairing Hypermotard 821 - Black', 'KV317B - Kit Screws Side Panels+Rear Fairing Hypermotard 821 - Black', '0000-00-00', 1),
(965, 0, 0, 'KV317G - Kit Screws Side Panels+Rear Fairing Hypermotard 821 - Gold', 'KV317G - Kit Screws Side Panels+Rear Fairing Hypermotard 821 - Gold', '0000-00-00', 1),
(966, 0, 0, 'KV317R - Kit Screws Side Panels+Rear Fairing Hypermotard 821 - Red', 'KV317R - Kit Screws Side Panels+Rear Fairing Hypermotard 821 - Red', '0000-00-00', 1),
(967, 0, 0, 'PA400N - Cylinder Head Shield Ducati', 'PA400N - Cylinder Head Shield Ducati', '0000-00-00', 1),
(968, 0, 0, 'PA401N - Ducati Multi. 1200 ABS Sensor Protection', 'PA401N - Ducati Multi. 1200 ABS Sensor Protection', '0000-00-00', 1),
(969, 0, 0, 'PE100B - Adjustable Rear Sets for Rider Monster 696/796/1100 - Black', 'PE100B - Adjustable Rear Sets for Rider Monster 696/796/1100 - Black', '0000-00-00', 1),
(970, 0, 0, 'PE110B - Passenger Peg Kit Monster 696/796/1100 - Black', 'PE110B - Passenger Peg Kit Monster 696/796/1100 - Black', '0000-00-00', 1),
(971, 0, 0, 'PE150B - Adjustable rear sets for Rider Streetfighter - Black', 'PE150B - Adjustable rear sets for Rider Streetfighter - Black', '0000-00-00', 1),
(972, 0, 0, 'PE215B - Touting pegs kit Ducati Multistrada 1200 - Black', 'PE215B - Touting pegs kit Ducati Multistrada 1200 - Black', '0000-00-00', 1),
(973, 0, 0, 'PE215R - Touting pegs kit Ducati Multistrada 1200 - Red', 'PE215R - Touting pegs kit Ducati Multistrada 1200 - Red', '0000-00-00', 1),
(974, 0, 0, 'PE215T - Touting pegs kit Ducati Multistrada 1200 - Titanium', 'PE215T - Touting pegs kit Ducati Multistrada 1200 - Titanium', '0000-00-00', 1),
(975, 0, 0, 'PE216B - Touring Pegs Kit Diavel- Black', 'PE216B - Touring Pegs Kit Diavel- Black', '0000-00-00', 1),
(976, 0, 0, 'PE216R - Touring Pegs Kit  Diavel- Red', 'PE216R - Touring Pegs Kit  Diavel- Red', '0000-00-00', 1),
(977, 0, 0, 'PE216T - Touring Pegs Kit  Diavel - Titanium', 'PE216T - Touring Pegs Kit  Diavel - Titanium', '0000-00-00', 1),
(978, 0, 0, 'PE218B - Adjustable Rear Sets Ducati Multistrada 1200 - Black', 'PE218B - Adjustable Rear Sets Ducati Multistrada 1200 - Black', '0000-00-00', 1),
(979, 0, 0, 'PE219B - Rider Footpegs Kit Ducati Multistrada 1200 - Black', 'PE219B - Rider Footpegs Kit Ducati Multistrada 1200 - Black', '0000-00-00', 1),
(980, 0, 0, 'PE219T - Rider Footpegs Kit Ducati Multistrada 1200 - Titanium', 'PE219T - Rider Footpegs Kit Ducati Multistrada 1200 - Titanium', '0000-00-00', 1),
(981, 0, 0, 'PE220B - Adjustable Rear Sets Ducati Multi 1200 - Black', 'PE220B - Adjustable Rear Sets Ducati Multi 1200 - Black', '0000-00-00', 1),
(982, 0, 0, 'PE220T - Adjustable Rear Sets Ducati Multi 1200 - Titanium', 'PE220T - Adjustable Rear Sets Ducati Multi 1200 - Titanium', '0000-00-00', 1),
(983, 0, 0, 'PE222B - Adjustable Rear Sets Ducati Diavel - Black', 'PE222B - Adjustable Rear Sets Ducati Diavel - Black', '0000-00-00', 1),
(984, 0, 0, 'PE245B - \"EASY\" Rider Footpegs Kit Ducati Multistrada 1200\' 2015', 'PE245B - \"EASY\" Rider Footpegs Kit Ducati Multistrada 1200\' 2015', '0000-00-00', 1),
(985, 0, 0, 'PE430B - Adjustable Rear Sets Rider Ducati Hypermotard 821', 'PE430B - Adjustable Rear Sets Rider Ducati Hypermotard 821', '0000-00-00', 1),
(986, 0, 0, 'PE431B - Adjustable Rear Sets Passenger Ducati Hypermotard 821', 'PE431B - Adjustable Rear Sets Passenger Ducati Hypermotard 821', '0000-00-00', 1),
(987, 0, 0, 'PEA01B - Pegs Kit Easy And Touring - Adapters Ducati Multistrada 1200', 'PEA01B - Pegs Kit Easy And Touring - Adapters Ducati Multistrada 1200', '0000-00-00', 1),
(988, 0, 0, 'PEL01B -  Gear Lever MTS', 'PEL01B -  Gear Lever MTS', '0000-00-00', 1),
(989, 0, 0, 'PS410B - Triple Clamps Ducati Monster 696/796/1100', 'PS410B - Triple Clamps Ducati Monster 696/796/1100', '0000-00-00', 1),
(990, 0, 0, 'PS510B - Triple Clamps Ducati Hypermotard 821', 'PS510B - Triple Clamps Ducati Hypermotard 821', '0000-00-00', 1),
(991, 0, 0, 'PS523B - Triple Clamps Ducati Hypermotard 821/939', 'PS523B - Triple Clamps Ducati Hypermotard 821/939', '0000-00-00', 1),
(992, 0, 0, 'RC100B - Knob Ducati Multistrada (kit : RE372R + XRC100) - Black', 'RC100B - Knob Ducati Multistrada (kit : RE372R + XRC100) - Black', '0000-00-00', 1),
(993, 0, 0, 'RC100R - Knob Ducati Multistrada (kit : RE372R + XRC100) - Red', 'RC100R - Knob Ducati Multistrada (kit : RE372R + XRC100) - Red', '0000-00-00', 1),
(994, 0, 0, 'RM241B - Riser Complete Ducati Hypermotard 821/939', 'RM241B - Riser Complete Ducati Hypermotard 821/939', '0000-00-00', 1),
(995, 0, 0, 'RP9L0B - Folding Gearshift Lever Peg - Eccentric (Left)', 'RP9L0B - Folding Gearshift Lever Peg - Eccentric (Left)', '0000-00-00', 1),
(996, 0, 0, 'RP9R0B - Folding Rear Brake Lever Peg - Eccentric (Right)', 'RP9R0B - Folding Rear Brake Lever Peg - Eccentric (Right)', '0000-00-00', 1),
(997, 0, 0, 'SE500B - Fluid Oil Reservior 12ml REBEL - Black', 'SE500B - Fluid Oil Reservior 12ml REBEL - Black', '0000-00-00', 1),
(998, 0, 0, 'SE601BG - Fluid Oil Reservoir Brake-Clutch 12 ml Body Black - Cap Gold', 'SE601BG - Fluid Oil Reservoir Brake-Clutch 12 ml Body Black - Cap Gold', '0000-00-00', 1),
(999, 0, 0, 'SE601BR - Fluid Oil Reservoir Brake-Clutch 12 ml Body Black - Cap Red', 'SE601BR - Fluid Oil Reservoir Brake-Clutch 12 ml Body Black - Cap Red', '0000-00-00', 1),
(1000, 0, 0, 'SE601BT - Fluid Oil Reservoir Brake-Clutch 12 ml Body Black - Cap Titanium', 'SE601BT - Fluid Oil Reservoir Brake-Clutch 12 ml Body Black - Cap Titanium', '0000-00-00', 1),
(1001, 0, 0, 'SE601GB - Fluid Oil Reservoir Brake-Clutch 12 ml Body Gold - Cap Black', 'SE601GB - Fluid Oil Reservoir Brake-Clutch 12 ml Body Gold - Cap Black', '0000-00-00', 1),
(1002, 0, 0, 'SE601RB - Fluid Oil Reservoir Brake-Clutch 12 ml Body Red - Cap Black', 'SE601RB - Fluid Oil Reservoir Brake-Clutch 12 ml Body Red - Cap Black', '0000-00-00', 1),
(1003, 0, 0, 'SE601TB - Fluid Oil Reservoir Brake-Clutch 12 ml Body Titanium - Cap Black', 'SE601TB - Fluid Oil Reservoir Brake-Clutch 12 ml Body Titanium - Cap Black', '0000-00-00', 1),
(1004, 0, 0, 'SE605BG - Fluid Oil Reservoir Brake-Clutch 25 ml Body Black - Cap Gold', 'SE605BG - Fluid Oil Reservoir Brake-Clutch 25 ml Body Black - Cap Gold', '0000-00-00', 1),
(1005, 0, 0, 'SE605BR - Fluid Oil Reservoir Brake-Clutch 25 ml Body Black - Cap Red', 'SE605BR - Fluid Oil Reservoir Brake-Clutch 25 ml Body Black - Cap Red', '0000-00-00', 1),
(1006, 0, 0, 'SE605BT - Fluid Oil Reservoir Brake-Clutch 25 ml Body Black - Cap Titanium', 'SE605BT - Fluid Oil Reservoir Brake-Clutch 25 ml Body Black - Cap Titanium', '0000-00-00', 1),
(1007, 28, 0, 'SE605GB - Fluid Oil Reservoir Brake-Clutch 25 ml Body Gold - Cap Black', 'SE605GB - Fluid Oil Reservoir Brake-Clutch 25 ml Body Gold - Cap Black', '0000-00-00', 1),
(1008, 28, 0, 'SE605RB - Fluid Oil Reservoir Brake-Clutch 25 ml Body Red - Cap Black', 'SE605RB - Fluid Oil Reservoir Brake-Clutch 25 ml Body Red - Cap Black', '0000-00-00', 1),
(1009, 28, 0, 'SE605TB - Fluid Oil Reservoir Brake-Clutch 25 ml Body Titanium - Cap Black', 'SE605TB - Fluid Oil Reservoir Brake-Clutch 25 ml Body Titanium - Cap Black', '0000-00-00', 1),
(1010, 28, 0, 'TA150B - Tank Cap Exspansion Tank Radiator Ducati - Balck', 'TA150B - Tank Cap Exspansion Tank Radiator Ducati - Balck', '0000-00-00', 1),
(1011, 5, 0, 'TA150G - Tank Cap Exspansion Tank Radiator Ducati - Gold', 'TA150G - Tank Cap Exspansion Tank Radiator Ducati - Gold', '0000-00-00', 1),
(1012, 5, 0, 'TA150R - Tank Cap Exspansion Tank Radiator Ducati - Red', 'TA150R - Tank Cap Exspansion Tank Radiator Ducati - Red', '0000-00-00', 1),
(1013, 5, 0, 'TA150T - Tank Cap Exspansion Tank Radiator Ducati - Titanium', 'TA150T - Tank Cap Exspansion Tank Radiator Ducati - Titanium', '0000-00-00', 1),
(1014, 5, 0, 'TF445B - Rear Brake-Clutch Cap M34X4 - Black', 'TF445B - Rear Brake-Clutch Cap M34X4 - Black', '0000-00-00', 1),
(1015, 13, 0, 'TF445G - Rear Brake-Clutch Cap M34X4 - Gold', 'TF445G - Rear Brake-Clutch Cap M34X4 - Gold', '0000-00-00', 1),
(1016, 13, 0, 'TF445R - Rear Brake-Clutch Cap M34X4 - Red', 'TF445R - Rear Brake-Clutch Cap M34X4 - Red', '0000-00-00', 1),
(1017, 13, 0, 'TF445T - Rear Brake-Clutch Cap M34X4 - Titanium', 'TF445T - Rear Brake-Clutch Cap M34X4 - Titanium', '0000-00-00', 1),
(1018, 13, 0, 'TS323B - Fuel Tank Cap \"Fast Open \"Aprilia/ Ducati - Black', 'TS323B - Fuel Tank Cap \"Fast Open \"Aprilia/ Ducati - Black', '0000-00-00', 1),
(1019, 0, 0, 'TS323G - Fuel Tank Cap \"Fast Open \"Aprilia/ Ducati - Gold', 'TS323G - Fuel Tank Cap \"Fast Open \"Aprilia/ Ducati - Gold', '0000-00-00', 1),
(1020, 0, 0, 'TS323R - Fuel Tank Cap \"Fast Open \"Aprilia/ Ducati - Red', 'TS323R - Fuel Tank Cap \"Fast Open \"Aprilia/ Ducati - Red', '0000-00-00', 1),
(1021, 0, 0, 'TS323T - Fuel Tank Cap \"Fast Open \"Aprilia/ Ducati - Titanium', 'TS323T - Fuel Tank Cap \"Fast Open \"Aprilia/ Ducati - Titanium', '0000-00-00', 1),
(1022, 0, 0, 'TT312B - Frame Cap Sets for Diavel  Carbon - Black', 'TT312B - Frame Cap Sets for Diavel  Carbon - Black', '0000-00-00', 1),
(1023, 0, 0, 'TT312G - Frame Cap Sets for Diavel  Carbon - Gold', 'TT312G - Frame Cap Sets for Diavel  Carbon - Gold', '0000-00-00', 1),
(1024, 0, 0, 'TT317B - Frame Cap Sets - Diavel Logo - Black', 'TT317B - Frame Cap Sets - Diavel Logo - Black', '0000-00-00', 1),
(1025, 0, 0, 'TT321B - Frame Cap Sets Ducati Panigale 899/1199 - Black', 'TT321B - Frame Cap Sets Ducati Panigale 899/1199 - Black', '0000-00-00', 1),
(1026, 0, 0, 'TT321G - Frame Cap Sets Ducati Panigale 899/1199 - Gold', 'TT321G - Frame Cap Sets Ducati Panigale 899/1199 - Gold', '0000-00-00', 1),
(1027, 0, 0, 'TT321R - Frame Cap Sets Ducati Panigale 899/1199 - Red', 'TT321R - Frame Cap Sets Ducati Panigale 899/1199 - Red', '0000-00-00', 1),
(1028, 0, 0, 'TT326B - Frame Cap Sets Ducati Hypermotard 821/SP 821- Black', 'TT326B - Frame Cap Sets Ducati Hypermotard 821/SP 821- Black', '0000-00-00', 1),
(1029, 0, 0, 'TT326G - Frame Cap Sets Ducati Hypermotard 821/SP 821- Gold', 'TT326G - Frame Cap Sets Ducati Hypermotard 821/SP 821- Gold', '0000-00-00', 1),
(1030, 0, 0, 'TT326R - Frame Cap Sets Ducati Hypermotard 821/SP 821- Red', 'TT326R - Frame Cap Sets Ducati Hypermotard 821/SP 821- Red', '0000-00-00', 1),
(1031, 0, 0, 'VA202G - Oil Breather Valve - Gold', 'VA202G - Oil Breather Valve - Gold', '0000-00-00', 1),
(1032, 0, 0, 'VA202R - Oil Breather Valve - Red', 'VA202R - Oil Breather Valve - Red', '0000-00-00', 1),
(1033, 0, 0, 'ZA940Y - Carbon CNC - Side Exhaust Protection Hypermotard 821', 'ZA940Y - Carbon CNC - Side Exhaust Protection Hypermotard 821', '0000-00-00', 1),
(1034, 0, 0, 'ZA941Y - Carbon CNC - Exhaust Heat Shield Terminal Hypermotard 821', 'ZA941Y - Carbon CNC - Exhaust Heat Shield Terminal Hypermotard 821', '0000-00-00', 1),
(1035, 0, 0, 'ZA942Y - Carbon CNC - Protect Radiator Side Panels Right Left Hypermotard 821', 'ZA942Y - Carbon CNC - Protect Radiator Side Panels Right Left Hypermotard 821', '0000-00-00', 1),
(1036, 0, 0, 'ZA943Y - Carbon CNC - Side Panels Below The Tank Hypermotard 821', 'ZA943Y - Carbon CNC - Side Panels Below The Tank Hypermotard 821', '0000-00-00', 1),
(1037, 0, 0, 'ZA944Y - Carbon CNC - Rear Fender Hypermotard 821', 'ZA944Y - Carbon CNC - Rear Fender Hypermotard 821', '0000-00-00', 1),
(1038, 0, 0, 'ZA945Y - Carbon CNC - Cover Instrumentation Hypermotard 821', 'ZA945Y - Carbon CNC - Cover Instrumentation Hypermotard 821', '0000-00-00', 1),
(1039, 0, 0, 'ZA946Y - Carbon CNC - Cover Fuel Tank Cap Hypermotard 821', 'ZA946Y - Carbon CNC - Cover Fuel Tank Cap Hypermotard 821', '0000-00-00', 1),
(1040, 0, 0, 'ZA947Y - Carbon CNC - Fairing Cover Hypermotard 821', 'ZA947Y - Carbon CNC - Fairing Cover Hypermotard 821', '0000-00-00', 1),
(1041, 0, 0, 'ZY851Y - Windshield Ducati Multistrada 950/1200/1260 - matt carbon', 'ZY851Y - Windshield Ducati Multistrada 950/1200/1260 - matt carbon', '0000-00-00', 1),
(1042, 0, 0, 'PSB07B - Bottom Triplle Clamp 959/899/1199/1299 panigale', 'PSB07B - Bottom Triplle Clamp 959/899/1199/1299 panigale', '0000-00-00', 1),
(1043, 0, 0, 'PSA03B - Triple Clamps Steering Tube 959/899/1199/1299 panigale', 'PSA03B - Triple Clamps Steering Tube 959/899/1199/1299 panigale', '0000-00-00', 1),
(1044, 0, 0, 'SD100B - Steering Damper Kit Ducati Scrambler', 'SD100B - Steering Damper Kit Ducati Scrambler', '0000-00-00', 1),
(1045, 0, 0, 'CF265B - Timing inspection Cover Ducati Panigale V4 - Black', 'CF265B - Timing inspection Cover Ducati Panigale V4 - Black', '0000-00-00', 1),
(1046, 0, 0, 'CF265G - Timing inspection Cover Ducati Panigale V4 - Gold', 'CF265G - Timing inspection Cover Ducati Panigale V4 - Gold', '0000-00-00', 1),
(1047, 0, 0, 'CF265R - Timing inspection Cover Ducati Panigale V4 - Red', 'CF265R - Timing inspection Cover Ducati Panigale V4 - Red', '0000-00-00', 1),
(1048, 0, 0, 'FL506B - Rear Sprocket Flange Ducati Version 1 - Black', 'FL506B - Rear Sprocket Flange Ducati Version 1 - Black', '0000-00-00', 1),
(1049, 0, 0, 'FL506G - Rear Sprocket Flange Ducati Version 1 - Gold', 'FL506G - Rear Sprocket Flange Ducati Version 1 - Gold', '0000-00-00', 1),
(1050, 0, 0, 'FL506R - Rear Sprocket Flange Ducati Version 1 - Red', 'FL506R - Rear Sprocket Flange Ducati Version 1 - Red', '0000-00-00', 1),
(1051, 0, 0, 'FL507B - Rear Sprocket Flange Ducati Version 2 Swirl - Black', 'FL507B - Rear Sprocket Flange Ducati Version 2 Swirl - Black', '0000-00-00', 1),
(1052, 0, 0, 'FL507G - Rear Sprocket Flange Ducati Version 2 Swirl - Gold', 'FL507G - Rear Sprocket Flange Ducati Version 2 Swirl - Gold', '0000-00-00', 1),
(1053, 0, 0, 'FL507R - Rear Sprocket Flange Ducati Version 2 Swirl - Red', 'FL507R - Rear Sprocket Flange Ducati Version 2 Swirl - Red', '0000-00-00', 1),
(1054, 0, 0, 'FL507BS - Rear Sprocket Flange Ducati Version 3 Bicolor - Black', 'FL507BS - Rear Sprocket Flange Ducati Version 3 Bicolor - Black', '0000-00-00', 1),
(1055, 0, 0, 'FL507GS - Rear Sprocket Flange Ducati Version 3 Bicolor - Gold', 'FL507GS - Rear Sprocket Flange Ducati Version 3 Bicolor - Gold', '0000-00-00', 1),
(1056, 0, 0, 'FL507RS - Rear Sprocket Flange Ducati Version 3 Bicolor - Red', 'FL507RS - Rear Sprocket Flange Ducati Version 3 Bicolor - Red', '0000-00-00', 1),
(1057, 0, 0, 'DA501B - Rear Wheel Nut LH Bicolor/ side - Black', 'DA501B - Rear Wheel Nut LH Bicolor/ side - Black', '0000-00-00', 1),
(1058, 0, 0, 'DA501G - Rear Wheel Nut LH Bicolor/ side - Gold', 'DA501G - Rear Wheel Nut LH Bicolor/ side - Gold', '0000-00-00', 1),
(1059, 0, 0, 'DA501R - Rear Wheel Nut LH Bicolor/ side - Red', 'DA501R - Rear Wheel Nut LH Bicolor/ side - Red', '0000-00-00', 1),
(1060, 0, 0, 'SWD14B - Right Handlebar Switch for OEM and RCS Brembo Brake Master Cylinder', 'SWD14B - Right Handlebar Switch for OEM and RCS Brembo Brake Master Cylinder', '0000-00-00', 1),
(1061, 0, 0, 'SWD15B - Right Handlebar Switch for Brembo billet CNC and forged Master Cylinder', 'SWD15B - Right Handlebar Switch for Brembo billet CNC and forged Master Cylinder', '0000-00-00', 1),
(1062, 0, 0, 'PST15B - Triple Clamps Ducati Panigale V4 - TOP YOKE', 'PST15B - Triple Clamps Ducati Panigale V4 - TOP YOKE', '0000-00-00', 1),
(1063, 0, 0, 'ZA701Y  - GP Ducts Carbon Cooling System -Matt', 'ZA701Y  - GP Ducts Carbon Cooling System -Matt', '0000-00-00', 1),
(1064, 0, 0, 'ZAB21B - GP Ducts Mounting Kit', 'ZAB21B - GP Ducts Mounting Kit', '0000-00-00', 1),
(1065, 0, 0, 'GH457B - Ring Nut Ducati Panigale V4 - Black', 'GH457B - Ring Nut Ducati Panigale V4 - Black', '0000-00-00', 1),
(1066, 0, 0, 'GH457G - Ring Nut Ducati Panigale V4 - Gold', 'GH457G - Ring Nut Ducati Panigale V4 - Gold', '0000-00-00', 1),
(1067, 0, 0, 'GH457R - Ring Nut Ducati Panigale V4 - Red', 'GH457R - Ring Nut Ducati Panigale V4 - Red', '0000-00-00', 1),
(1068, 9, 0, 'PL100BPR - Brake-Guard Race Pramac Racing Limited Edition - Black', 'PL100BPR - Brake-Guard Race Pramac Racing Limited Edition - Black', '0000-00-00', 1),
(1069, 9, 0, 'PL100RPR -  Brake-Guard Race Pramac Racing Limited Edition - Red', 'PL100RPR -  Brake-Guard Race Pramac Racing Limited Edition - Red', '0000-00-00', 1),
(1070, 9, 0, 'ZW002Y - GP Winglets Ducati Panigale V4 - Carbon', 'ZW002Y - GP Winglets Ducati Panigale V4 - Carbon', '0000-00-00', 1),
(1071, 0, 0, 'AF600B - Clutch slave cylinder Ducati Panigale V4 - Black', 'AF600B - Clutch slave cylinder Ducati Panigale V4 - Black', '0000-00-00', 1),
(1072, 0, 0, 'AF600G - Clutch slave cylinder Ducati Panigale V4 - Gold', 'AF600G - Clutch slave cylinder Ducati Panigale V4 - Gold', '0000-00-00', 1),
(1073, 0, 0, 'AF600R - Clutch slave cylinder Ducati Panigale V4 - Red', 'AF600R - Clutch slave cylinder Ducati Panigale V4 - Red', '0000-00-00', 1),
(1074, 9, 0, 'PE444B - Rear Sets for Supersport 939 2017', 'PE444B - Rear Sets for Supersport 939 2017', '0000-00-00', 1),
(1075, 9, 0, 'RM241B - Riser Complete for 29mm H 40mm Ducati Hypermotard/ Strada / M821 / M1200', 'RM241B - Riser Complete for 29mm H 40mm Ducati Hypermotard/ Strada / M821 / M1200', '0000-00-00', 1),
(1076, 9, 0, 'RM242B - Riser\'s Upper H 20 mm', 'RM242B - Riser\'s Upper H 20 mm', '0000-00-00', 1),
(1077, 9, 0, 'AF501BR -  Clutch Slave Cylinder Ø 30 mm Ducati GEAR -Black Red', 'AF501BR -  Clutch Slave Cylinder Ø 30 mm Ducati GEAR -Black Red', '0000-00-00', 1),
(1078, 0, 0, 'AF650B - Clutch Slave Cylinder Ø 29 mm Ducati MTS950/1260/HYP950/SCR1100 - Black', 'AF650B - Clutch Slave Cylinder Ø 29 mm Ducati MTS950/1260/HYP950/SCR1100 - Black', '0000-00-00', 1),
(1079, 0, 0, 'AF650G - Clutch Slave Cylinder Ø 29 mm Ducati MTS950/1260/HYP950/SCR1100 - Gold', 'AF650G - Clutch Slave Cylinder Ø 29 mm Ducati MTS950/1260/HYP950/SCR1100 - Gold', '0000-00-00', 1),
(1080, 0, 0, 'AF650R - Clutch Slave Cylinder Ø 29 mm Ducati MTS950/1260/HYP950/SCR1100 -Red', 'AF650R - Clutch Slave Cylinder Ø 29 mm Ducati MTS950/1260/HYP950/SCR1100 -Red', '0000-00-00', 1),
(1081, 8, 0, 'KV409B - Carbon Windshield Bolts Kit Ducati Multistrada 950/1200/1260 ', 'KV409B - Carbon Windshield Bolts Kit Ducati Multistrada 950/1200/1260 ', '0000-00-00', 1),
(1082, 8, 0, 'KV409R - Carbon Windshield Bolts Kit Ducati Multistrada 950/1200/1260', 'KV409R - Carbon Windshield Bolts Kit Ducati Multistrada 950/1200/1260', '0000-00-00', 1),
(1083, 8, 0, 'SWD13B - Left Handlebar Switch - Street Use  (V4/V4S/V4R)', 'SWD13B - Left Handlebar Switch - Street Use  (V4/V4S/V4R)', '0000-00-00', 1),
(1084, 8, 0, 'BP525GXW120L - RK Chain 525 GXW high performance Black', 'BP525GXW120L - RK Chain 525 GXW high performance Black', '0000-00-00', 1),
(1085, 8, 0, 'RR525GXW120L - RK Chain 525 GXW high performance - Red', 'RR525GXW120L - RK Chain 525 GXW high performance - Red', '0000-00-00', 1),
(1086, 8, 0, 'GB525GXW120L - RK Chain 525 GXW high performance - Gold', 'GB525GXW120L - RK Chain 525 GXW high performance - Gold', '0000-00-00', 1),
(1087, 8, 0, 'RR520GXW120L - RK Chain 520 GXW high performance - Red', 'RR520GXW120L - RK Chain 520 GXW high performance - Red', '0000-00-00', 1),
(1088, 8, 0, 'BP520GXW120L - RK Chain 520 GXW high performance - Black', 'BP520GXW120L - RK Chain 520 GXW high performance - Black', '0000-00-00', 1),
(1089, 8, 0, 'GB520GXW120L - RK Chain 520 GXW high performance - Gold', 'GB520GXW120L - RK Chain 520 GXW high performance - Gold', '0000-00-00', 1),
(1090, 8, 0, 'BP530GXW120L - RK Chain 530 GXW high performance - Black', 'BP530GXW120L - RK Chain 530 GXW high performance - Black', '0000-00-00', 1),
(1091, 8, 0, 'GB530GXW120L - RK Chain 530 GXW high performance - Gold', 'GB530GXW120L - RK Chain 530 GXW high performance - Gold', '0000-00-00', 1),
(1092, 0, 0, 'BL520XXW120L - RK Chain 520 XXW high performance - Black', 'BL520XXW120L - RK Chain 520 XXW high performance - Black', '0000-00-00', 1),
(1093, 0, 0, 'BL525XXW120L - RK Chain 525 XXW high performance - Black', 'BL525XXW120L - RK Chain 525 XXW high performance - Black', '0000-00-00', 1),
(1094, 0, 0, 'BL530XXW120L - RK Chain 530 XXW high performance - Black', 'BL530XXW120L - RK Chain 530 XXW high performance - Black', '0000-00-00', 1),
(1095, 0, 0, 'Delight - Adjuster footrest Racing Rearset Ducati Panigale 1199 Black', 'Delight - Adjuster footrest Racing Rearset Ducati Panigale 1199 Black', '0000-00-00', 1),
(1096, 0, 0, 'Delight - Adjuster footrest Racing Rearset Ducati Panigale 1199 Titanium', 'Delight - Adjuster footrest Racing Rearset Ducati Panigale 1199 Titanium', '0000-00-00', 1),
(1097, 0, 0, 'Magical Racing - Windscreen Diavel 2014 - Super Coat', 'Magical Racing - Windscreen Diavel 2014 - Super Coat', '0000-00-00', 1),
(1098, 0, 0, 'Magical Racing - Windscreen S1000RR 2015 - Super Coat', 'Magical Racing - Windscreen S1000RR 2015 - Super Coat', '0000-00-00', 1),
(1099, 0, 0, 'Magical Racing - Windscreen S1000RR 2015- Clear', 'Magical Racing - Windscreen S1000RR 2015- Clear', '0000-00-00', 1),
(1100, 0, 0, 'Magical Racing - Windscreen S1000RR 2015 - Smoke', 'Magical Racing - Windscreen S1000RR 2015 - Smoke', '0000-00-00', 1),
(1101, 0, 0, 'Magical Racing - Windscreen 1199 Panigale - Super Coat', 'Magical Racing - Windscreen 1199 Panigale - Super Coat', '0000-00-00', 1),
(1102, 0, 0, 'Magical Racing - Windscreen 1199 Panigale - Smoke', 'Magical Racing - Windscreen 1199 Panigale - Smoke', '0000-00-00', 1),
(1103, 0, 0, 'Magical Racing - Windscreen R1 - Super Coat', 'Magical Racing - Windscreen R1 - Super Coat', '0000-00-00', 1),
(1104, 23, 0, 'Magical Racing - Windscreen ZX10R - Super Coat', 'Magical Racing - Windscreen ZX10R - Super Coat', '0000-00-00', 1),
(1105, 23, 0, 'Magical Racing - Windscreen S1000RR 2019 - Super Coat', 'Magical Racing - Windscreen S1000RR 2019 - Super Coat', '0000-00-00', 1),
(1106, 23, 0, 'D01-S10019-04A1 - Windscreen S1000RR 2019 Smoke', 'D01-S10019-04A1 - Windscreen S1000RR 2019 Smoke', '0000-00-00', 1),
(1107, 0, 0, 'Optimate - Optimate 2 Autocharge', 'Optimate - Optimate 2 Autocharge', '0000-00-00', 1),
(1108, 0, 0, 'Optimate - Optimate Adapter Ducati Only', 'Optimate - Optimate Adapter Ducati Only', '0000-00-00', 1),
(1109, 20, 0, 'Optimate - Optimate  Adapter Universal', 'Optimate - Optimate  Adapter Universal', '0000-00-00', 1),
(1110, 0, 0, 'PVM - Wheel for Paul Smart 1000', 'PVM - Wheel for Paul Smart 1000', '0000-00-00', 1),
(1111, 0, 0, 'STM Rock - Front Shock Monster 795/796', 'STM Rock - Front Shock Monster 795/796', '0000-00-00', 1),
(1112, 0, 0, 'Kellermann - BL2000 Dark Tuen signal bar end cap', 'Kellermann - BL2000 Dark Tuen signal bar end cap', '0000-00-00', 1),
(1113, 0, 0, 'NRC - Ducati Diavel Rear Turn Signals Diavel 2012', 'NRC - Ducati Diavel Rear Turn Signals Diavel 2012', '0000-00-00', 1),
(1114, 0, 0, 'NRC - Fender Eliminator Kit for Monster 795/796', 'NRC - Fender Eliminator Kit for Monster 795/796', '0000-00-00', 1),
(1115, 0, 0, 'NRC - Ducati  899/1199 Front Turn Signals', 'NRC - Ducati  899/1199 Front Turn Signals', '0000-00-00', 1),
(1116, 0, 0, 'NRC - Ducati 959/1299 Panigale Mirror Block Off Turn Signals', 'NRC - Ducati 959/1299 Panigale Mirror Block Off Turn Signals', '0000-00-00', 1),
(1117, 0, 0, 'NRC - Ducati Monster 696 Front Turn Signals', 'NRC - Ducati Monster 696 Front Turn Signals', '0000-00-00', 1),
(1118, 0, 0, 'NRC - Ducati Hypermotard 821/939 Front Turn Signals', 'NRC - Ducati Hypermotard 821/939 Front Turn Signals', '0000-00-00', 1),
(1119, 0, 0, 'NRC - Fender Eliminator Kit for Ducati Scrambler 800', 'NRC - Fender Eliminator Kit for Ducati Scrambler 800', '0000-00-00', 1),
(1120, 0, 0, 'NRC - Fender Eliminator Kit for Ducati Scrambler 800 (keep rear fender)', 'NRC - Fender Eliminator Kit for Ducati Scrambler 800 (keep rear fender)', '0000-00-00', 1),
(1121, 0, 0, 'NRC - NRC Ducati Monster 821 Front Turn Signals', 'NRC - NRC Ducati Monster 821 Front Turn Signals', '0000-00-00', 1),
(1122, 0, 0, 'NRC - Ducati XDiavel Front Turn Signals', 'NRC - Ducati XDiavel Front Turn Signals', '0000-00-00', 1),
(1123, 0, 0, 'NRC - Ducati XDiavel Rear Turn Signals', 'NRC - Ducati XDiavel Rear Turn Signals', '0000-00-00', 1),
(1124, 0, 0, 'NRC - Fender Eliminator Kit for Ducati Monster821 ', 'NRC - Fender Eliminator Kit for Ducati Monster821 ', '0000-00-00', 1),
(1125, 0, 0, 'NRC - Fender Eliminator Kit for Ducati 899/959/1199/1299 Panigale ', 'NRC - Fender Eliminator Kit for Ducati 899/959/1199/1299 Panigale ', '0000-00-00', 1),
(1126, 0, 0, 'NRC - Fender Eliminator Kit for Triumph Scrambler Fender Eliminator Kit', 'NRC - Fender Eliminator Kit for Triumph Scrambler Fender Eliminator Kit', '0000-00-00', 1),
(1127, 0, 0, 'NRC - Fender Eliminator Kit for Triumph Thruxton 900', 'NRC - Fender Eliminator Kit for Triumph Thruxton 900', '0000-00-00', 1),
(1128, 0, 0, 'NRC - Fender Eliminator Kit for Thruxton R  (2016-present)', 'NRC - Fender Eliminator Kit for Thruxton R  (2016-present)', '0000-00-00', 1),
(1129, 0, 0, 'NRC - Triumph Street Triple Front Turn Signals | 2013-Present', 'NRC - Triumph Street Triple Front Turn Signals | 2013-Present', '0000-00-00', 1),
(1130, 0, 0, 'NRC - Fender Eliminator Kit for Ducati Supersport 939', 'NRC - Fender Eliminator Kit for Ducati Supersport 939', '0000-00-00', 1),
(1131, 0, 0, 'NRC - Ducati Supersport 939 Front Signals', 'NRC - Ducati Supersport 939 Front Signals', '0000-00-00', 1),
(1132, 0, 0, 'NRC - Ducati Supersport 939  Mirror Block off', 'NRC - Ducati Supersport 939  Mirror Block off', '0000-00-00', 1),
(1133, 0, 0, 'NRC - Fender Eliminator Kit for Ducati Monster 797/1200(2017 Models) /M821 2018', 'NRC - Fender Eliminator Kit for Ducati Monster 797/1200(2017 Models) /M821 2018', '0000-00-00', 1),
(1134, 0, 0, 'NRC - Ducati Hypermotard 821 \'Blackout\' Front Turn Signals', 'NRC - Ducati Hypermotard 821 \'Blackout\' Front Turn Signals', '0000-00-00', 1),
(1135, 21, 0, 'NRC - Fender Eliminator Kit for Ducati Panigale V4', 'NRC - Fender Eliminator Kit for Ducati Panigale V4', '0000-00-00', 1),
(1136, 21, 0, 'NRC - Ducati Panigale V4 Mirror Block Off Turn Signals', 'NRC - Ducati Panigale V4 Mirror Block Off Turn Signals', '0000-00-00', 1),
(1137, 21, 0, 'NRC - Fender Eliminator Kit for BMW S1000RR 2019-2020', 'NRC - Fender Eliminator Kit for BMW S1000RR 2019-2020', '0000-00-00', 1),
(1138, 0, 0, 'ADG - Bar End Mirror - Aluminium', 'ADG - Bar End Mirror - Aluminium', '0000-00-00', 1),
(1139, 0, 0, 'ADG - Bar End Mirror - Black', 'ADG - Bar End Mirror - Black', '0000-00-00', 1),
(1140, 0, 0, 'ADG - Adapter Mirror', 'ADG - Adapter Mirror', '0000-00-00', 1),
(1141, 0, 0, 'ADG - Tail Tidy including Turn signal light - Ducati Scrambler', 'ADG - Tail Tidy including Turn signal light - Ducati Scrambler', '0000-00-00', 1),
(1142, 0, 0, 'ADG - Tail Tidy including Turn signal light - Triumph Scrambler', 'ADG - Tail Tidy including Turn signal light - Triumph Scrambler', '0000-00-00', 1),
(1143, 20, 0, 'ADG - Tail Tidy including Turn signal light - Triumph Thruxton', 'ADG - Tail Tidy including Turn signal light - Triumph Thruxton', '0000-00-00', 1),
(1144, 20, 0, 'ADG - Turn Signal Light ', 'ADG - Turn Signal Light ', '0000-00-00', 1),
(1145, 0, 0, 'ADG - Tail Tidy including Turnsignal light - BMW R9T', 'ADG - Tail Tidy including Turnsignal light - BMW R9T', '0000-00-00', 1),
(1146, 20, 0, 'Motogadget - m-Blaze Disc  turn signal for handlebar LED  Black', 'Motogadget - m-Blaze Disc  turn signal for handlebar LED  Black', '0000-00-00', 1),
(1147, 0, 0, 'Motogadget - m-Blaze Cone turn signal for handlebar LED Black\n', 'Motogadget - m-Blaze Cone turn signal for handlebar LED Black\n', '0000-00-00', 1),
(1148, 0, 0, 'Motogadget - Motoscope pro BMW R9T', 'Motogadget - Motoscope pro BMW R9T', '0000-00-00', 1),
(1149, 0, 0, 'Motogadget - M-Ice turn signal for handlebar LED', 'Motogadget - M-Ice turn signal for handlebar LED', '0000-00-00', 1),
(1150, 0, 0, 'MRA - Windscreen Monster821  smoke', 'MRA - Windscreen Monster821  smoke', '0000-00-00', 1),
(1151, 0, 0, 'MRA - Windshield Panigale V4/S smoke', 'MRA - Windshield Panigale V4/S smoke', '0000-00-00', 1),
(1152, 0, 0, 'MRA - Windshield Panigale V4/S Clear', 'MRA - Windshield Panigale V4/S Clear', '0000-00-00', 1),
(1153, 0, 0, 'MRA - Windshield Raing Screen \"R\" Smoke S1000RR 2019-', 'MRA - Windshield Raing Screen \"R\" Smoke S1000RR 2019-', '0000-00-00', 1),
(1154, 0, 0, 'GIAMOTO - Rearset Control kit for S1000RR 2015-18 Tricolor', 'GIAMOTO - Rearset Control kit for S1000RR 2015-18 Tricolor', '0000-00-00', 1),
(1155, 0, 0, 'GIAMOTO - Rearset Control kit for S1000RR 2015-18 Red', 'GIAMOTO - Rearset Control kit for S1000RR 2015-18 Red', '0000-00-00', 1),
(1156, 0, 0, 'GIAMOTO - Rearset Control kit for Panigale V4 with Carbon Heel guard DP', 'GIAMOTO - Rearset Control kit for Panigale V4 with Carbon Heel guard DP', '0000-00-00', 1),
(1157, 0, 0, 'Woodcraft - Ducati 2014-2016 monster 821 1\" inch woodcraft clip on adapter ', 'Woodcraft - Ducati 2014-2016 monster 821 1\" inch woodcraft clip on adapter ', '0000-00-00', 1),
(1158, 0, 0, 'Jetprime - Switch Off Run for Kawasaki ZX10R (Right side)', 'Jetprime - Switch Off Run for Kawasaki ZX10R (Right side)', '0000-00-00', 1),
(1159, 0, 0, 'Jetprime - Switch 7 Controls for Kawasaki ZX10R (Left side)', 'Jetprime - Switch 7 Controls for Kawasaki ZX10R (Left side)', '0000-00-00', 1),
(1160, 0, 0, 'Jetprime - Switch 7 Controls for Ducati (Left side)', 'Jetprime - Switch 7 Controls for Ducati (Left side)', '0000-00-00', 1),
(1161, 0, 0, 'Jetprime - Switch Off Run for Ducati (Right side)', 'Jetprime - Switch Off Run for Ducati (Right side)', '0000-00-00', 1);
INSERT INTO `product_category` (`id`, `id_brand_category`, `id_model_category`, `name`, `description`, `date`, `status`) VALUES
(1162, 0, 0, 'Jetprime - ปลอกด้านในปะกับแฮนด์', 'Jetprime - ปลอกด้านในปะกับแฮนด์', '0000-00-00', 1),
(1163, 0, 0, 'Jetprime - Switch 7 Controls for S1000RR', 'Jetprime - Switch 7 Controls for S1000RR', '0000-00-00', 1),
(1164, 4, 1, 'Jetprime - Switch Off Run for S1000RR (Right side)', 'Jetprime - Switch Off Run for S1000RR (Right side)', '0000-00-00', 1),
(1165, 4, 1, 'Hex escan - Easy Switch Solution for R1200LC', 'Hex escan - Easy Switch Solution for R1200LC', '0000-00-00', 1),
(1166, 4, 1, 'Kohken - Wire Clutch Lever', 'Kohken - Wire Clutch Lever', '0000-00-00', 1),
(1167, 4, 1, 'Nexzter - 1919AA - Front Brake Pad Monster795/ 796/ MTS10-14/ SF848/ Hypermotard 796 9-12', 'Nexzter - 1919AA - Front Brake Pad Monster795/ 796/ MTS10-14/ SF848/ Hypermotard 796 9-12', '0000-00-00', 1),
(1168, 4, 1, 'Nexzter - 2020AA - Front Brake Pad Diavel 11/ M4/ M50/ GP4R/ MTS15/ M1100', 'Nexzter - 2020AA - Front Brake Pad Diavel 11/ M4/ M50/ GP4R/ MTS15/ M1100', '0000-00-00', 1),
(1169, 4, 1, 'Nexzter - 3535AA - Rear Brake Pad HP/ ปักหลัง/ ด้วง/ Monster8-14/ MTS10-14/ SF/ Panigale 899/1199', 'Nexzter - 3535AA - Rear Brake Pad HP/ ปักหลัง/ ด้วง/ Monster8-14/ MTS10-14/ SF/ Panigale 899/1199', '0000-00-00', 1),
(1170, 4, 1, 'Nexzter - 5455AA - Rear Brake Pad Diavel 1200cc / Xdiavel / GS1200/frontScrambler400 62', 'Nexzter - 5455AA - Rear Brake Pad Diavel 1200cc / Xdiavel / GS1200/frontScrambler400 62', '0000-00-00', 1),
(1171, 4, 1, 'Nexzter - 5656AA - Front Brake Pad M821/ Hyp821/ 939/ Panigale899/959 / Scrambler/MTS950/ MTS Enduro/ Xdiavel/ M797', 'Nexzter - 5656AA - Front Brake Pad M821/ Hyp821/ 939/ Panigale899/959 / Scrambler/MTS950/ MTS Enduro/ Xdiavel/ M797', '0000-00-00', 1),
(1172, 10, 0, 'Nexzter - 5758AA - Rear Brake Pad New Multistrada 1200', 'Nexzter - 5758AA - Rear Brake Pad New Multistrada 1200', '0000-00-00', 1),
(1173, 2, 0, 'Nexzter - 5253AA - Rear Brake Pad  Ducati Scrambler800/400/S1000RR/', 'Nexzter - 5253AA - Rear Brake Pad  Ducati Scrambler800/400/S1000RR/', '0000-00-00', 1),
(1174, 2, 0, 'Nexzter - 7474AA - Front Brake Pad S1000RR', 'Nexzter - 7474AA - Front Brake Pad S1000RR', '0000-00-00', 1),
(1175, 0, 0, 'Motul - Engine Oil V3', 'Motul - Engine Oil V3', '0000-00-00', 1),
(1176, 0, 0, 'Yuasa - YT7B-BS  Battery for Ducati Panigale', 'Yuasa - YT7B-BS  Battery for Ducati Panigale', '0000-00-00', 1),
(1177, 0, 0, 'Yuasa - YT12B-BS  Battery for Ducati Monster/Diavel/SF', 'Yuasa - YT12B-BS  Battery for Ducati Monster/Diavel/SF', '0000-00-00', 1),
(1178, 0, 0, 'Luimoto - Ducati Panigale V4\'2018 Veloce Rider Seat fabric Cover', 'Luimoto - Ducati Panigale V4\'2018 Veloce Rider Seat fabric Cover', '0000-00-00', 1),
(1179, 0, 0, 'GB Racing - GB Racing Engine Guard set -Panigale V4', 'GB Racing - GB Racing Engine Guard set -Panigale V4', '0000-00-00', 1),
(1180, 0, 0, 'GB Racing - GB Racing Engine Guard set -S1000RR 2017', 'GB Racing - GB Racing Engine Guard set -S1000RR 2017', '0000-00-00', 1),
(1181, 0, 0, 'GB Racing - GB Racing Engine Guard set -S1000RR 2019-2020', 'GB Racing - GB Racing Engine Guard set -S1000RR 2019-2020', '0000-00-00', 1),
(1182, 0, 0, 'Desmoworld - Clear Clutch Cover V4 - Black Black', 'Desmoworld - Clear Clutch Cover V4 - Black Black', '0000-00-00', 1),
(1183, 0, 0, 'Desmoworld - Clear Clutch Cover V4 - Black Gold', 'Desmoworld - Clear Clutch Cover V4 - Black Gold', '0000-00-00', 1),
(1184, 0, 0, 'Desmoworld - Clear Clutch Cover V4 - Black Red', 'Desmoworld - Clear Clutch Cover V4 - Black Red', '0000-00-00', 1),
(1185, 27, 0, 'Futurismoto - Mirror block Panigale V4 Black', 'Futurismoto - Mirror block Panigale V4 Black', '0000-00-00', 1),
(1186, 27, 0, 'Futurismoto - Mirror block Panigale V4 Silver', 'Futurismoto - Mirror block Panigale V4 Silver', '0000-00-00', 1),
(1187, 27, 0, 'Futurismoto - License Plate with turn light Panigale V4', 'Futurismoto - License Plate with turn light Panigale V4', '0000-00-00', 1),
(1188, 27, 0, 'Stand R9T Black', 'Stand R9T Black', '0000-00-00', 1),
(1189, 0, 0, 'Stand Proarm Ducati', 'Stand Proarm Ducati', '0000-00-00', 1),
(1190, 0, 0, 'Stand Swingarm', 'Stand Swingarm', '0000-00-00', 1),
(1191, 21, 0, 'Front Stand (All)', 'Front Stand (All)', '0000-00-00', 1),
(1192, 0, 0, 'Bonamici - Rearset Control Kit Panigale V4 Black', 'Bonamici - Rearset Control Kit Panigale V4 Black', '0000-00-00', 1),
(1193, 0, 0, 'Bonamici - Rearset Control Kit Panigale V4 Silver', 'Bonamici - Rearset Control Kit Panigale V4 Silver', '0000-00-00', 1),
(1194, 0, 0, 'Far - Mirror with turn signal light for panigale V4', 'Far - Mirror with turn signal light for panigale V4', '0000-00-00', 1),
(1195, 0, 0, 'DP - Dry Clutch V4', 'DP - Dry Clutch V4', '0000-00-00', 1),
(1196, 0, 0, 'DP - FairingR - V4R Red  (include Windscreen)', 'DP - FairingR - V4R Red  (include Windscreen)', '0000-00-00', 1),
(1197, 0, 0, 'DP - FairingRW - V4R White+ mock up  (not include Windscreen)', 'DP - FairingRW - V4R White+ mock up  (not include Windscreen)', '0000-00-00', 1),
(1198, 0, 0, 'DP - Wing - V4R Winglet Carbon', 'DP - Wing - V4R Winglet Carbon', '0000-00-00', 1),
(1199, 0, 0, 'Aella - Frame Slider Panigale V4/V4S/V4R', 'Aella - Frame Slider Panigale V4/V4S/V4R', '0000-00-00', 1),
(1200, 0, 0, 'Aella - Rearset Control Kit Multistrada1260 - Silver', 'Aella - Rearset Control Kit Multistrada1260 - Silver', '0000-00-00', 1),
(1201, 0, 0, 'Aella  - Rearset Control Kit Multistrada1260 - Black', 'Aella  - Rearset Control Kit Multistrada1260 - Black', '0000-00-00', 1),
(1202, 0, 0, 'Alpha Racing - Fixing sockets set for rear stand alpha Racing, black anodized, with alpha Racing Logo BMW S 1000 RR 2019-', 'Alpha Racing - Fixing sockets set for rear stand alpha Racing, black anodized, with alpha Racing Logo BMW S 1000 RR 2019-', '0000-00-00', 1),
(1203, 0, 0, 'Alpha Racing - Crashpad kit, for BMW S 1000 RR 2019- (K67), for racing- and OEM fairing, left/right, black', 'Alpha Racing - Crashpad kit, for BMW S 1000 RR 2019- (K67), for racing- and OEM fairing, left/right, black', '0000-00-00', 1),
(1204, 0, 0, 'Alpha Racing - Rear axle cup, for BMW S 1000 RR 2019- (K67), fits to rear axle standard swingarm', 'Alpha Racing - Rear axle cup, for BMW S 1000 RR 2019- (K67), fits to rear axle standard swingarm', '0000-00-00', 1),
(1205, 0, 0, 'Alpha Racing - Front axle cup, for BMW S 1000 RR 2019- (K67), fits with Öhlins front fork', 'Alpha Racing - Front axle cup, for BMW S 1000 RR 2019- (K67), fits with Öhlins front fork', '0000-00-00', 1),
(1206, 0, 0, 'Alpha Racing - Samco Sport radiator hose kit, for BMW S 1000 RR 2019- (K67), silicone, fits OEM radiator and OEM expansion tank', 'Alpha Racing - Samco Sport radiator hose kit, for BMW S 1000 RR 2019- (K67), silicone, fits OEM radiator and OEM expansion tank', '0000-00-00', 1),
(1207, 0, 0, 'Alpha Racing - Front brake disc 320 x 6 mm EVO, for BMW S 1000 RR 2019- (K67), fits aluminium racing wheels and M-carbon wheels', 'Alpha Racing - Front brake disc 320 x 6 mm EVO, for BMW S 1000 RR 2019- (K67), fits aluminium racing wheels and M-carbon wheels', '0000-00-00', 1),
(1208, 0, 0, 'Alpha Racing - Front brake disc 320 x 6 mm EVO, for BMW S 1000 RR 2019- (K67), for OEM cast wheel', 'Alpha Racing - Front brake disc 320 x 6 mm EVO, for BMW S 1000 RR 2019- (K67), for OEM cast wheel', '0000-00-00', 1),
(1209, 0, 0, 'Alpha Racing - Front brake disc 321 x 6 mm EWC, for BMW S 1000 RR 2019- (K67),fits aluminium racing wheels and M-carbon wheels', 'Alpha Racing - Front brake disc 321 x 6 mm EWC, for BMW S 1000 RR 2019- (K67),fits aluminium racing wheels and M-carbon wheels', '0000-00-00', 1),
(1210, 0, 0, 'Alpha Racing - Remote adjuster for brake lever \"Moto GP Style\", for alpha Racing brake lever and Brembo RCS/PR master cylinder BMW S 1000 RR 2019-', 'Alpha Racing - Remote adjuster for brake lever \"Moto GP Style\", for alpha Racing brake lever and Brembo RCS/PR master cylinder BMW S 1000 RR 2019-', '0000-00-00', 1),
(1211, 0, 0, 'Alpha Racing - Reservoir sock cover, 7x4,5 cm, 80% cotton, 20% elastan, black with 3D alpha Racing logo BMW S 1000 RR 2019-', 'Alpha Racing - Reservoir sock cover, 7x4,5 cm, 80% cotton, 20% elastan, black with 3D alpha Racing logo BMW S 1000 RR 2019-', '0000-00-00', 1),
(1212, 0, 0, 'Alpha Racing - Clutch lever Racing long, for BMW S 1000 RR 2019- (K67), folding and adjustable, black anodised, aluminum, length: 190 mm', 'Alpha Racing - Clutch lever Racing long, for BMW S 1000 RR 2019- (K67), folding and adjustable, black anodised, aluminum, length: 190 mm', '0000-00-00', 1),
(1213, 0, 0, 'Alpha Racing - Fuel cap \"quick action\", for BMW S 1000 RR 2019- (K67), black anodised,spring-loaded cap', 'Alpha Racing - Fuel cap \"quick action\", for BMW S 1000 RR 2019- (K67), black anodised,spring-loaded cap', '0000-00-00', 1),
(1214, 0, 0, 'Alpha Racing - E-throttle kit, version 2019, for BMW S 1000 RR 2015-2018 and 2019-(K67), aluminium housing, incl. Renthal grips', 'Alpha Racing - E-throttle kit, version 2019, for BMW S 1000 RR 2015-2018 and 2019-(K67), aluminium housing, incl. Renthal grips', '0000-00-00', 1),
(1215, 0, 0, 'Alpha Racing - Chain adjuster kit, for BMW S 1000 RR 2019- (K67), black anodised with alpha Racing logo', 'Alpha Racing - Chain adjuster kit, for BMW S 1000 RR 2019- (K67), black anodised with alpha Racing logo', '0000-00-00', 1),
(1216, 0, 0, 'Alpha Racing - Oil filler plug kit alpha Racing BMW S1000RR, oil filler plug M24x2,pre-drilled for safety wiring, black anodised, stainless steel safety wirewith clip and bracket, engine cover screw ISA M6x35', 'Alpha Racing - Oil filler plug kit alpha Racing BMW S1000RR, oil filler plug M24x2,pre-drilled for safety wiring, black anodised, stainless steel safety wirewith clip and bracket, engine cover screw ISA M6x35', '0000-00-00', 1),
(1217, 0, 0, 'Alpha Racing - Magnetic oil drain plug racing, for BMW S 1000 RR/R and HP4,aluminium with magnet', 'Alpha Racing - Magnetic oil drain plug racing, for BMW S 1000 RR/R and HP4,aluminium with magnet', '0000-00-00', 1),
(1218, 0, 0, 'Alpha Racing - Fast shift sensor for BMW S 1000 RR 2019-', 'Alpha Racing - Fast shift sensor for BMW S 1000 RR 2019-', '0000-00-00', 1),
(1219, 0, 0, 'Autin Racing - GP1R Decat Black Ceramic  S1000RR 2019', 'Autin Racing - GP1R Decat Black Ceramic  S1000RR 2019', '0000-00-00', 1),
(1220, 2, 0, 'Autin Racing - GP1R Decat Titanium S1000RR 2019', 'Autin Racing - GP1R Decat Titanium S1000RR 2019', '0000-00-00', 1),
(1221, 0, 0, 'Autin Racing - DECAT V3 150MM Black Ceramic S1000RR 2019', 'Autin Racing - DECAT V3 150MM Black Ceramic S1000RR 2019', '0000-00-00', 1),
(1222, 0, 0, 'Autin Racing - DECAT V3 150MM Titanium S1000RR 2019', 'Autin Racing - DECAT V3 150MM Titanium S1000RR 2019', '0000-00-00', 1),
(1223, 0, 0, 'Dinavolt - Lithium S1000RR 2019', 'Dinavolt - Lithium S1000RR 2019', '0000-00-00', 1),
(1224, 0, 0, 'Suter - Swingarm S1000RR 2019', 'Suter - Swingarm S1000RR 2019', '0000-00-00', 1),
(1225, 0, 0, 'name', 'description', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_status`
--

CREATE TABLE `product_status` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_status`
--

INSERT INTO `product_status` (`id`, `name`) VALUES
(1, 'HOT DEAL'),
(2, 'SAVE'),
(3, 'NEW'),
(4, 'NONE');

-- --------------------------------------------------------

--
-- Table structure for table `promotion_product`
--

CREATE TABLE `promotion_product` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `category` varchar(250) NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(250) NOT NULL,
  `img3` varchar(250) NOT NULL,
  `img4` varchar(250) NOT NULL,
  `name` varchar(255) NOT NULL,
  `no_code` varchar(250) NOT NULL,
  `price` varchar(255) NOT NULL,
  `discount_price` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `color` varchar(255) NOT NULL,
  `quality` varchar(255) NOT NULL,
  `date` timestamp NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_slide`
--

CREATE TABLE `promotion_slide` (
  `id` int(11) NOT NULL,
  `img_slide` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promotion_slide`
--

INSERT INTO `promotion_slide` (`id`, `img_slide`, `status`) VALUES
(1, 'ecade-1_03.png', '1'),
(2, 'd0743-1_03.png', '1'),
(3, '04823-1_03.png', '1');

-- --------------------------------------------------------

--
-- Table structure for table `select_your_bike`
--

CREATE TABLE `select_your_bike` (
  `id` int(10) NOT NULL,
  `name_product` varchar(250) NOT NULL,
  `img1` varchar(250) NOT NULL,
  `img2` varchar(250) NOT NULL,
  `img3` varchar(250) NOT NULL,
  `img4` varchar(250) NOT NULL,
  `img5` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `brand` int(10) NOT NULL,
  `model` varchar(250) NOT NULL,
  `name_color` varchar(250) NOT NULL,
  `name_year` varchar(250) NOT NULL,
  `Price` varchar(250) NOT NULL,
  `discount` varchar(250) NOT NULL,
  `quality` varchar(250) NOT NULL,
  `detail` text NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `select_your_bike`
--

INSERT INTO `select_your_bike` (`id`, `name_product`, `img1`, `img2`, `img3`, `img4`, `img5`, `category`, `sub_category`, `brand`, `model`, `name_color`, `name_year`, `Price`, `discount`, `quality`, `detail`, `status`) VALUES
(2, 'BBM001R - ปั๊มบน ดำ 13 mm. (ขวา)', '72191-11.png', '9b2db-10.png', 'd1923-11.png', '1c137-11.png', '8e645-11.png', '6', '6', 6, '', '', '', '0', '3500', '0', '', '1'),
(3, 'BBM002L - ปั๊มบน ทอง ก้านเงิน (ซ้าย)', '', '', '', '', '', '', '', 31, '', '', '', '0', '4950', '0', '', '1'),
(4, 'BBM002R - ปั๊มบน ทอง ก้านเงิน (ขวา)', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(5, 'BBM003R - ปั๊มบนเหลี่ยม (KTM) ดำ - ก้านดำ (ขวา)', '', '', '', '', '', '', '', 30, '', '', '', '0', '9450', '0', '', '1'),
(6, 'BBM004R - ปั๊มบนเหลี่ยม (KTM) ดำ - ก้านเงิน (ขวา)', '', '', '', '', '', '', '', 30, '', '', '', '0', '4450', '0', '', '1'),
(7, 'BBM001L - ปั๊มบน ดำ 13 mm. (ซ้าย)', 'b46b5-11.png', '04b42-10.png', 'a438e-10.png', '65473-10.png', '524cd-10.png', '6', '6', 6, '', '', '', '0', '3500', '0', '', '1'),
(8, 'BBM006L - ปั๊มบน ทอง ก้านเหรียญ สีชา (ซ้าย)', '', '', '', '', '', '21', '', 30, '', '', '', '0', '1500', '0', '', '1'),
(9, 'BBM006R - ปั๊มบน ทอง ก้านเหรียญ สีชา (ขวา)', '', '', '', '', '', '21', '', 30, '', '', '', '0', '800', '0', '', '1'),
(10, 'BBM007L - ปั๊มบน ทอง ก้านเหรียญ สีดำ (ซ้าย)', '', '', '', '', '', '21', '', 30, '', '', '', '0', '1000', '0', '', '1'),
(11, 'BBM007R - ปั๊มบน ทอง ก้านเหรียญ สีดำ (ขวา)', '', '', '', '', '', '21', '', 30, '', '', '', '0', '1050', '0', '', '1'),
(12, 'BBM008L - ปั๊มบน ทอง ก้านเหรียญ สีเงิน (ซ้าย)', '', '', '', '', '', '21', '', 30, '', '', '', '0', '1000', '0', '', '1'),
(13, 'BBM008R - ปั๊มบน ทอง ก้านเหรียญ สีเงิน (ขวา)', '', '', '', '', '', '21', '', 30, '', '', '', '0', '1000', '0', '', '1'),
(14, 'BBM009L - ปั๊มบน ทอง Ducati (ปะกับบน) ก้านเหรียญ (ซ้าย)', '', '', '', '', '', '21', '', 30, '', '', '', '0', '2450', '0', '', '1'),
(15, 'BBM009R - ปั๊มบน ทอง Ducati (ปะกับบน) ก้านเหรียญ (ขวา)', '', '', '', '', '', '21', '', 30, '', '', '', '0', '1950', '0', '', '1'),
(16, 'BBM010L - ปั๊มบน ดำ Ducati (ปะกับบน) ก้านเหรียญ (ซ้าย)', '', '', '', '', '', '21', '', 30, '', '', '', '0', '500', '0', '', '1'),
(17, 'BBM010R - ปั๊มบน ดำ Ducati (ปะกับบน) ก้านเหรียญ (ขวา)', '', '', '', '', '', '11', '', 30, '', '', '', '0', '1950', '0', '', '1'),
(18, 'BBM011R - ปั๊มบน Racing 16*18 (โลโก้ขาว) (ขวา)', '', '', '', '', '', '20', '', 30, '', '', '', '0', '750', '0', '', '1'),
(19, 'BBM011RF - ปั๊มบน Racing 16*18 (โลโก้ขาว ก้านพับ) (ขวา)', '', '', '', '', '', '20', '', 30, '', '', '', '0', '500', '0', '', '1'),
(20, 'BBM012R - ปั๊มบน Racing 19*18 (โลโก้ขาว) (ขวา)', '', '', '', '', '', '20', '', 30, '', '', '', '0', '1050', '0', '', '1'),
(21, 'BBM012RF - ปั๊มบน Racing 19*18 (โลโก้ขาว ก้านพับ) (ขวา)', '', '', '', '', '', '20', '', 30, '', '', '', '0', '1200', '0', '', '1'),
(22, 'BBM013R - ปั๊มบน Racing 19*20 (โลโก้ขาว) (ขวา)', '', '', '', '', '', '6', '', 30, '', '', '', '0', '8450', '0', '', '1'),
(23, 'BBM013F - ปั๊มบน Racing 19*20 (โลโก้ขาว ก้านพับ) (ขวา)', '', '', '', '', '', '6', '', 30, '', '', '', '0', '8450', '0', '', '1'),
(24, 'BBM014L - ปั๊มบน Racing 16*16 (โลโก้แดง) (ซ้าย)', '', '', '', '', '', '6', '', 30, '', '', '', '0', '8450', '0', '', '1'),
(25, 'BBM014LF - ปั๊มบน Racing 16*16 (โลโก้แดง ก้านพับ) (ซ้าย)', '', '', '', '', '', '6', '', 30, '', '', '', '0', '5950', '0', '', '1'),
(26, 'BBM014R - ปั๊มบน Racing 16*16 (โลโก้แดง) (ขวา)', '', '', '', '', '', '6', '', 30, '', '', '', '0', '5950', '0', '', '1'),
(27, 'BBM014RF - ปั๊มบน Racing 16*16 (โลโก้แดง ก้านพับ) (ขวา)', '', '', '', '', '', '6', '', 30, '', '', '', '0', '5950', '0', '', '1'),
(28, 'BBM015L - ปั๊มบน Racing 16*18 (โลโก้แดง) (ซ้าย)', '', '', '', '', '', '6', '', 30, '', '', '', '0', '8450', '0', '', '1'),
(29, 'BBM015LF - ปั๊มบน Racing 16*18 (โลโก้แดง ก้านพับ) (ซ้าย)', '', '', '', '', '', '6', '', 30, '', '', '', '0', '8450', '0', '', '1'),
(30, 'BBM015R - ปั๊มบน Racing 16*18 (โลโก้แดง) (ขวา)', '', '', '', '', '', '6', '', 30, '', '', '', '0', '8450', '0', '', '1'),
(31, 'BBM016L - ปั๊มบน Racing 19*16 (โลโก้แดง) (ซ้าย)', '', '', '', '', '', '6', '', 30, '', '', '', '0', '5950', '0', '', '1'),
(32, 'BBM016R - ปั๊มบน Racing 19*16 (โลโก้แดง) (ขวา)', '', '', '', '', '', '6', '', 30, '', '', '', '0', '5950', '0', '', '1'),
(33, 'BBM017L - ปั๊มบน Racing 19*18 (โลโก้แดง) (ซ้าย)', '', '', '', '', '', '6', '', 30, '', '', '', '0', '5950', '0', '', '1'),
(34, 'BBM017LF - ปั๊มบน Racing 19*18 (โลโก้แดง ก้านพับ) (ซ้าย)', '', '', '', '', '', '6', '', 30, '', '', '', '0', '5950', '0', '', '1'),
(35, 'BBM017R - ปั๊มบน Racing 19*18 (โลโก้แดง) (ขวา)', '', '', '', '', '', '6', '', 30, '', '', '', '0', '5950', '0', '', '1'),
(36, 'BBM017RF - ปั๊มบน Racing 19*18 (โลโก้แดง ก้านพับ) (ขวา)', '', '', '', '', '', '25', '', 30, '', '', '', '0', '500', '0', '', '1'),
(37, 'BBM018L - ปั๊มบน Racing 19*20 (โลโก้แดง) (ซ้าย)', '', '', '', '', '', '25', '', 30, '', '', '', '0', '500', '0', '', '1'),
(38, 'BBM018LF - ปั๊มบน Racing 19*20 (โลโก้แดง ก้านพับ) (ซ้าย)', '', '', '', '', '', '', '', 30, '', '', '', '0', '21450', '0', '', '1'),
(39, 'BBM018R - ปั๊มบน Racing 19*20 (โลโก้แดง) (ขวา)', '', '', '', '', '', '', '', 30, '', '', '', '0', '34950', '0', '', '1'),
(40, 'BBM018RF - ปั๊มบน Racing 19*20 (โลโก้แดง ก้านพับ) (ขวา)', '', '', '', '', '', '', '', 30, '', '', '', '0', '34950', '0', '', '1'),
(41, 'BBM019R.SHORT - ปั๊มบน Italy 15 RCS (ก้านสั้น) (ขวา)', '', '', '', '', '', '', '', 30, '', '', '', '0', '19950', '0', '', '1'),
(42, 'BBM019R.LONG - ปั๊มบน Italy 15 RCS (ก้านยาว) (ขวา)', '', '', '', '', '', '', '', 30, '', '', '', '0', '2450', '0', '', '1'),
(43, 'BBM020L - ปั๊มบน Italy 16 RCS (ซ้าย)', '', '', '', '', '', '', '', 30, '', '', '', '0', '2450', '0', '', '1'),
(44, 'BBM021L - ปั๊มบน Italy 19 RCS (ซ้าย)', '', '', '', '', '', '', '', 30, '', '', '', '0', '39950', '0', '', '1'),
(45, 'BBM021R - ปั๊มบน Italy 19 RCS (ขวา)', '', '', '', '', '', '', '', 30, '', '', '', '0', '29950', '0', '', '1'),
(46, 'BBM021RC - ปั๊มบน Italy 19 Corsa Corta', '', '', '', '', '', '', '', 30, '', '', '', '0', '27450', '0', '', '1'),
(47, 'BBM022 - ปั๊มบน Limited Edition', '', '', '', '', '', '24', '', 30, '', '', '', '0', '1550', '0', '', '1'),
(48, 'BBM023 - ปั๊มบน Rossi', '', '', '', '', '', '24', '', 30, '', '', '', '0', '1550', '0', '', '1'),
(49, 'BBM023L - ปั๊มบน Rossi (หมุดทอง) 16*19 (ซ้าย)', '', '', '', '', '', '24', '', 30, '', '', '', '0', '1950', '0', '', '1'),
(50, 'BBM024R - ปั๊มบน Italy 17 RCS (ขวา)', '', '', '', '', '', '24', '', 30, '', '', '', '0', '1950', '0', '', '1'),
(51, 'BBL001 - ก้านดำ', '', '', '', '', '', '24', '', 30, '', '', '', '0', '1950', '0', '', '1'),
(52, 'BBL002 - ก้านเงิน', '', '', '', '', '', '24', '', 30, '', '', '', '0', '1950', '0', '', '1'),
(53, 'BBL003 - ก้านเงิน (ปั๊มเหลี่ยม)', '', '', '', '', '', '24', '', 30, '', '', '', '0', '1950', '0', '', '1'),
(54, 'BBL004L - ก้านเหรียญ สีชา (ซ้าย)', '', '', '', '', '', '', '', 30, '', '', '', '0', '22450', '0', '', '1'),
(55, 'BBL004R - ก้านเหรียญ สีชา (ขวา)', '', '', '', '', '', '', '', 30, '', '', '', '0', '34950', '0', '', '1'),
(56, 'BBL005L - ก้านเหรียญ สีเงิน (ซ้าย)', '', '', '', '', '', '', '', 30, '', '', '', '0', '4950', '0', '', '1'),
(57, 'BBL005R - ก้านเหรียญ สีเงิน (ขวา)', '', '', '', '', '', '', '', 30, '', '', '', '0', '4950', '0', '', '1'),
(58, 'BBL006L - ก้านเหรียญ สีดำ (ซ้าย)', '', '', '', '', '', '', '', 30, '', '', '', '0', '7950', '0', '', '1'),
(59, 'BBL006R - ก้านเหรียญ สีดำ (ขวา)', '', '', '', '', '', '', '', 30, '', '', '', '0', '7950', '0', '', '1'),
(60, 'BBL007L - ก้านเหรียญ Ducati สีเงิน (ซ้าย)', '', '', '', '', '', '', '', 30, '', '', '', '0', '4450', '0', '', '1'),
(61, 'BBL007R - ก้านเหรียญ Ducati สีเงิน (ขวา)', '', '', '', '', '', '', '', 30, '', '', '', '0', '5950', '0', '', '1'),
(62, 'BBL008 - ก้าน Racing (ก้านสั้น)', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(63, 'BBL009 - ก้าน Racing (ก้านยาว)', '', '', '', '', '', '', '', 30, '', '', '', '0', '12450', '0', '', '1'),
(64, 'BBL010 - ก้าน Racing (ก้านพับ สั้น)', '', '', '', '', '', '', '', 30, '', '', '', '0', '17450', '0', '', '1'),
(65, 'BBL011 - ก้าน Racing (ก้านพับ ยาว)', '', '', '', '', '', '', '', 30, '', '', '', '0', '4950', '0', '', '1'),
(66, 'BBL012 - ก้าน Racing (ปลายก้าน สั้น)', '', '', '', '', '', '', '', 30, '', '', '', '0', '12450', '0', '', '1'),
(67, 'BBL013 - ก้าน Racing (ปลายก้าน ยาว)', '', '', '', '', '', '', '', 30, '', '', '', '0', '7950', '0', '', '1'),
(68, 'BBL014 - ก้าน Italy (ซ้าย) (R1,R6,FZ1,FZ6)', '', '', '', '', '', '', '', 30, '', '', '', '0', '4450', '0', '', '1'),
(69, 'BBL015 - ก้าน Racing (ก้านแต่งมีรู)', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(70, 'BBT001 - กระปุกน้ำมัน (เล็ก) - หูตรง', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(71, 'BBT001.1 - กระปุกน้ำมัน (เล็ก) - หูเอียง', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(72, 'BBT002 - กระปุกน้ำมัน (ใหญ่)', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(73, 'BBT003 - กระปุกน้ำมัน (ชุดเล็ก)', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(74, 'BBT004 - กระปุกน้ำมัน (ชุดใหญ่)', '', '', '', '', '', '', '', 30, '', '', '', '0', '4950', '0', '', '1'),
(75, 'BBR001 - HAYA \'08-09, B-KING \'08-09', '', '', '', '', '', '', '', 30, '', '', '', '0', '4950', '0', '', '1'),
(76, 'BBR002 - DUCATI T-DRIVE BLACK', '', '', '', '', '', '', '', 30, '', '', '', '0', '4950', '0', '', '1'),
(77, 'BBR003 - R1', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(78, 'BBR004 - DUCATI', '', '', '', '', '', '', '', 30, '', '', '', '0', '4450', '0', '', '1'),
(79, 'BBR005 - R1, R6, FZ6', '', '', '', '', '', '', '', 30, '', '', '', '0', '7000', '0', '', '1'),
(80, 'BBR006 - Aprilia', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(81, 'BBR008 - Rotor for T-Drive Kit Disc Yamaha  R6/R1', '', '', '', '', '', '', '', 30, '', '', '', '0', '8450', '0', '', '1'),
(82, 'BBR019 - Rotor for Kawasaki zx14', '', '', '', '', '', '', '', 30, '', '', '', '0', '8450', '0', '', '1'),
(83, 'BBR019 - Rotor for', '', '', '', '', '', '', '', 30, '', '', '', '0', '9950', '0', '', '1'),
(84, 'BBR010 - HPK Kit Disc Unpdated BMW S1000RR', '', '', '', '', '', '', '', 30, '', '', '', '0', '9950', '0', '', '1'),
(85, 'BBR012 - Rotor for T-Drive Kit Disc Yamaha  R6 320M', '', '', '', '', '', '', '', 30, '', '', '', '0', '17450', '0', '', '1'),
(86, 'BBR013 - Rotor for T-Drive Kit Disc Honda CBR 320M', '', '', '', '', '', '', '', 30, '', '', '', '0', '11450', '0', '', '1'),
(87, 'BBR011 - Rotor for T-Drive Kit Disc Ducati 320MM DIAVEL', '', '', '', '', '', '', '', 30, '', '', '', '0', '10500', '0', '', '1'),
(88, 'BBC101 - ปั๊มกระทุ้งออกข้าง (ทอง/ดำ)', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(89, 'BBC102 - ปั๊มกระทุ้งออกท้าย (ดำ)', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(90, 'BBC103 - ปั๊มกระทุ้ง+ก้าน', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(91, 'BBC104 - ปั๊มกระทุ้ง Racing', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(92, 'BBC201G - ปั๊มล่าง ผีเสื้อ (ทอง)', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(93, 'BBC201B - ปั๊มล่าง ผีเสื้อ (ดำ)', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(94, 'BBC201A - ปั๊มล่าง ผีเสื้อ (เงิน)', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(95, 'BBC201S - ปั๊มล่าง ผีเสื้อตัวเล็ก', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(96, 'BBC202 - ปั๊มล่าง JOG', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(97, 'BBC203 - ปั๊มล่าง APERIA', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(98, 'BBC204G - ปั๊มล่าง ตัว C/ผีเสื้อปักข้าง (ทอง)', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(99, 'BBC204B - ปั๊มล่าง ตัว C/ผีเสื้อปักข้าง (ดำ)', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(100, 'BBC205L - ปั๊มล่าง Gold line 4 pot (ซ้าย)', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(101, 'BBC205R - ปั๊มล่าง Gold line 4 pot (ขวา)', '', '', '', '', '', '13', '', 30, '', '', '', '0', '9450', '0', '', '1'),
(102, 'BBC206GL - ปั๊มล่าง Radial Mount (ทอง) (ซ้าย)', '', '', '', '', '', '13', '', 30, '', '', '', '0', '9450', '0', '', '1'),
(103, 'BBC206GR - ปั๊มล่าง Radial Mount (ทอง) (ขวา)', '', '', '', '', '', '13', '', 30, '', '', '', '0', '9450', '0', '', '1'),
(104, 'BBC206AL - ปั๊มล่าง Radial Mount (เงิน) (ซ้าย)', '', '', '', '', '', '13', '', 30, '', '', '', '0', '9450', '0', '', '1'),
(105, 'BBC206AR - ปั๊มล่าง Radial Mount (เงิน) (ขวา)', '', '', '', '', '', '13', '', 30, '', '', '', '0', '9450', '0', '', '1'),
(106, 'BBC207L - ปั๊มล่าง RSV 4-Pad (ซ้าย)', '', '', '', '', '', '13', '', 30, '', '', '', '0', '9450', '0', '', '1'),
(107, 'BBC207R - ปั๊มล่าง RSV 4-Pad (ขวา)', '', '', '', '', '', '13', '', 30, '', '', '', '0', '9450', '0', '', '1'),
(108, 'BBC208L - ปั๊มล่าง Racing 4 pot (ซ้าย)', '', '', '', '', '', '13', '', 30, '', '', '', '0', '9450', '0', '', '1'),
(109, 'BBC208R - ปั๊มล่าง Racing 4 pot (ขวา)', '', '', '', '', '', '13', '', 30, '', '', '', '0', '9450', '0', '', '1'),
(110, 'BBC301 - ปั๊มล่าง ด้วง ชา', '', '', '', '', '', '13', '', 30, '', '', '', '0', '9450', '0', '', '1'),
(111, 'BBC320.1 - ปั๊มด้วง Nickel ล่าง P2 34mm Nickel Coated Rear  - 120A44140 ด้วง Nickel', '', '', '', '', '', '', '', 30, '', '', '', '0', '2950', '0', '', '1'),
(112, 'BBC320 - ปั๊มด้วงดำ  P2 34mm Black Coated Rear ด้วงดำ', '', '', '', '', '', '', '', 30, '', '', '', '0', '2950', '0', '', '1'),
(113, 'BBC301.1 - ปั๊มล่าง ด้วง+ขา', '', '', '', '', '', '', '', 30, '', '', '', '0', '2950', '0', '', '1'),
(114, 'BBC301.2 - ปั๊มล่าง ด้วง+ขา cbr1000', '', '', '', '', '', '', '', 30, '', '', '', '0', '4450', '0', '', '1'),
(115, 'BBC302 - ปั๊มล่าง ด้วง Racing', '', '', '', '', '', '', '', 30, '', '', '', '0', '2450', '0', '', '1'),
(116, 'BBC301.3 - ปั๊มล่าง ด้วง GP', '', '', '', '', '', '', '', 30, '', '', '', '0', '2450', '0', '', '1'),
(117, 'BBC302.1 - ขาสำหรับด้วง  CBR1000, K7-K9', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(118, 'BBC303 - ปั๊มล่าง แมลงสาบ ', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(119, 'BBC304.100 - ปั๊มล่าง Monobloc M4 100mm.', '', '', '', '', '', '', '', 30, '', '', '', '0', '11500', '0', '', '1'),
(120, 'BBC304.108 - ปั๊มล่าง Monobloc M4 108mm. (รถญี่ปุ่น)', '', '', '', '', '', '', '', 30, '', '', '', '0', '11450', '0', '', '1'),
(121, 'BBC304.100B - ปั๊มล่าง Monobloc M4 100mm. ดำ', '', '', '', '', '', '', '', 30, '', '', '', '0', '14950', '0', '', '1'),
(122, 'BBC305 - ปั๊มล่าง Monobloc Racing (ลูกสูบไทเทเนียม)', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(123, 'BBC306 - ปั๊มล่าง HP (ปั๊มสีเงิน)', '', '', '', '', '', '', '', 30, '', '', '', '0', '4950', '0', '', '1'),
(124, 'BBC307 - ปั๊มล่าง Radial Mount Racing', '', '', '', '', '', '', '', 30, '', '', '', '0', '2450', '0', '', '1'),
(125, 'BBC308 - ปั๊มล่าง Duo Inlet', '', '', '', '', '', '', '', 30, '', '', '', '0', '2450', '0', '', '1'),
(126, 'BBC315 - ปั๊มล่าง 484 ดำ 100 mm. CAFÉ 484', '', '', '', '', '', '', '', 30, '', '', '', '0', '2450', '0', '', '1'),
(127, 'BBC316B - ปั๊มล่าง 4 PAD black', '', '', '', '', '', '', '', 30, '', '', '', '0', '2450', '0', '', '1'),
(128, 'BBC321 - ปั๊มล่าง Nickel Coating 108', '', '', '', '', '', '', '', 30, '', '', '', '0', '2450', '0', '', '1'),
(129, 'BBP001 - ผ้าเบรค ผีเสื้อ / APERIA', '', '', '', '', '', '', '', 30, '', '', '', '0', '2450', '0', '', '1'),
(130, 'BBP002 - ผ้าเบรค ตัว C', '', '', '', '', '', '', '', 30, '', '', '', '0', '17450', '0', '', '1'),
(131, 'BBP003 - ผ้าเบรค Racing ล่าง & Gold Line (หูชิด)', '', '', '', '', '', '', '', 30, '', '', '', '0', '3450', '0', '', '1'),
(132, 'BBP004 - ผ้าเบรค Gold Line (หูห่าง) - Super 4', '', '', '', '', '', '', '', 30, '', '', '', '0', '3450', '0', '', '1'),
(133, 'BBP005 - ผ้าเบรค Radial Mount & RSV', '', '', '', '', '', '', '', 30, '', '', '', '0', '11450', '0', '', '1'),
(134, 'BBP006 - ผ้าเบรค ด้วง', '', '', '', '', '', '', '', 30, '', '', '', '0', '11450', '0', '', '1'),
(135, 'BBP007 - ผ้าเบรค แมลงสาบ', '', '', '', '', '', '', '', 30, '', '', '', '0', '3450', '0', '', '1'),
(136, 'BBP008 - ผ้าเบรค M4', '', '', '', '', '', '', '', 30, '', '', '', '0', '34950', '0', '', '1'),
(137, 'BBP009 - ผ้าเบรค Radial Mount Racing', '', '', '', '', '', '', '', 30, '', '', '', '0', '34950', '0', '', '1'),
(138, 'BBP012 - ผ้าเบรค single pad', '', '', '', '', '', '', '', 30, '', '', '', '0', '4950', '0', '', '1'),
(139, 'BBP013 - ผ้าเบรค Evo Caliper', '', '', '', '', '', '', '', 30, '', '', '', '0', '9450', '0', '', '1'),
(140, 'BBP014 - ผ้าเบรค P4', '', '', '', '', '', '', '', 30, '', '', '', '0', '8950', '0', '', '1'),
(141, 'BBR001 - ชุดซ่อม ผีเสื้อ / APERIA', '', '', '', '', '', '', '', 30, '', '', '', '0', '8950', '0', '', '1'),
(142, 'BBR002 - ชุดซ่อม ปั๊มบนดำ 13 mm.', '', '', '', '', '', '', '', 30, '', '', '', '0', '7450', '0', '', '1'),
(143, 'BBR003 - ชุดซ่อม Racing - บน', '', '', '', '', '', '', '', 30, '', '', '', '0', '69500', '0', '', '1'),
(144, 'BBR004 - ชุดซ่อม Racing - ล่าง / Gold Line (หูชิด/หูห่าง)', '', '', '', '', '', '', '', 30, '', '', '', '0', '9450', '0', '', '1'),
(145, 'BBO001 - ปะกับ - ดำ (ไม่มีหูกระจก)', '', '', '', '', '', '', '', 30, '', '', '', '0', '8950', '0', '', '1'),
(146, 'BBO002 - ปะกับ - ดำ (มีหูกระจก)', '', '', '', '', '', '', '', 30, '', '', '', '0', '3450', '0', '', '1'),
(147, 'BBO003 - สวิตซ์เบรค ปั๊มดำ', '', '', '', '', '', '', '', 30, '', '', '', '0', '2950', '0', '', '1'),
(148, 'BBO004 - สวิตซ์เบรค ปั๊มดำ (มีสาย)', '', '', '', '', '', '', '', 30, '', '', '', '0', '12450', '0', '', '1'),
(149, 'BBO005 - สวิตซ์เบรค KTM (ปั๊มเหลี่ยม) (สวิตช์สีขาว)', '', '', '', '', '', '', '', 30, '', '', '', '0', '4450', '0', '', '1'),
(150, 'BBO006 - สวิตช์เบรค ปั๊มบน ทอง Ducati (ปะกับบน) ก้านเหรียญ เงิน', '', '', '', '', '', '', '', 30, '', '', '', '0', '8450', '0', '', '1'),
(151, 'BBO007 - สวิตช์แรงดัน (ใช้กับปั๊ม Racing)', '', '', '', '', '', '', '', 30, '', '', '', '0', '12450', '0', '', '1'),
(152, 'BBO008 - น๊อต BANJO เดี่ยว (น๊อตยึดน้ำมันเบรค) (เกลียวละเอียด)', '', '', '', '', '', '', '', 30, '', '', '', '0', '3450', '0', '', '1'),
(153, 'BBO009 - น๊อต BANJO คู่ (น๊อตยึดน้ำมันเบรค) (เกลียวละเอียด)', '', '', '', '', '', '', '', 30, '', '', '', '0', '3450', '0', '', '1'),
(154, 'BBO010 - แหวนรองน็อต BANJO', '', '', '', '', '', '', '', 30, '', '', '', '0', '3450', '0', '', '1'),
(155, 'BBO011 - สลักยึดผ้าเบรค ผีเสื้อ', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(156, 'BBO012 - แผ่นดันผ้าเบรค ผีเสื้อ', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(157, 'BBO013 - สลักยึดผ้าเบรค ปักข้าง/ตัว C', '', '', '', '', '', '', '', 30, '', '', '', '0', '9950', '0', '', '1'),
(158, 'BBO014 - แผ่นดันผ้าเบรค ปักข้าง/ตัว C', '', '', '', '', '', '', '', 30, '', '', '', '0', '9450', '0', '', '1'),
(159, 'BBO015 - สลักยึดผ้าเบรค Gold Line', '', '', '', '', '', '', '', 30, '', '', '', '0', '12450', '0', '', '1'),
(160, 'BBO016 - แผ่นดันผ้าเบรค Gold Line', '', '', '', '', '', '', '', 30, '', '', '', '0', '14950', '0', '', '1'),
(161, 'BBO017 - สลักยึดผ้าเบรค 4 Pot Racing', '', '', '', '', '', '', '', 30, '', '', '', '0', '14950', '0', '', '1'),
(162, 'BBO018 - แผ่นดันผ้าเบรค 4 Pot Racing', '', '', '', '', '', '', '', 30, '', '', '', '0', '2550', '0', '', '1'),
(163, 'BBO019 - ตัวไล่น้ำมันเบรค (เล็ก) - Ducati', '', '', '', '', '', '', '', 30, '', '', '', '0', '3450', '0', '', '1'),
(164, 'BBO020 - ตัวไล่น้ำมันเบรค (ใหญ่)', '', '', '', '', '', '', '', 30, '', '', '', '0', '3450', '0', '', '1'),
(165, 'BBO021 - ท่อกระปุก Inlet 90 degrees', '', '', '', '', '', '', '', 30, '', '', '', '0', '7800', '0', '', '1'),
(166, 'BBO022 - ท่อกระปุก Inlet 180 degrees', '', '', '', '', '', '', '', 30, '', '', '', '0', '7800', '0', '', '1'),
(167, 'BBO023 - สลักปั๊มดำ', '', '', '', '', '', '', '', 30, '', '', '', '0', '7800', '0', '', '1'),
(168, 'BBO024 - หมุดจาน', '', '', '', '', '', '', '', 30, '', '', '', '0', '7800', '0', '', '1'),
(169, 'BB025 - Brake Fluid', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(170, 'BBR007 - CBR 1000 \'08', '', '', '', '', '', '', '', 30, '', '', '', '0', '13500', '0', '', '1'),
(171, 'BBC309 - ปั๊มล่าง Radial Mount Racing เล็ก', '', '', '', '', '', '', '', 30, '', '', '', '0', '4950', '0', '', '1'),
(172, 'BBC310 - ปั๊มล่าง HP 100 mm.', '', '', '', '', '', '', '', 30, '', '', '', '0', '4950', '0', '', '1'),
(173, 'BBC311 - ปั๊มล่าง HP 108 mm.', '', '', '', '', '', '', '', 30, '', '', '', '0', '15000', '0', '', '1'),
(174, 'BBC312 - ปั๊มล่าง HP (130 mm.) - R1', '', '', '', '', '', '', '', 30, '', '', '', '0', '15000', '0', '', '1'),
(175, 'BBC313 - ปั๊มล่าง R1 RACING', '', '', '', '', '', '', '', 30, '', '', '', '0', '25000', '0', '', '1'),
(176, 'BBC313L - ปั๊มล่าง Monobloc GP4-RR Left', '', '', '', '', '', '', '', 30, '', '', '', '0', '25000', '0', '', '1'),
(177, 'BBC313R - ปั๊มล่าง Monobloc GP4-RR Right', '', '', '', '', '', '', '', 30, '', '', '', '0', '2000', '0', '', '1'),
(178, 'BBR009 - Rotor for T-Drive Kit Honda CBR 1000', '', '', '', '', '', '', '', 30, '', '', '', '0', '4950', '0', '', '1'),
(179, 'BBO316B - 4 PAD BLACK', '', '', '', '', '', '', '', 30, '', '', '', '0', '2450', '0', '', '1'),
(180, 'BBC316L - ปั๊มล่าง 484 Axial Left', '', '', '', '', '', '', '', 30, '', '', '', '0', '7450', '0', '', '1'),
(181, 'BBC316R - ปั๊มล่าง 484 Axial Right', '', '', '', '', '', '', '', 30, '', '', '', '0', '4950', '0', '', '1'),
(182, 'BBC317 - ปั๊มล่าง Nickel Coating 100', '', '', '', '', '', '', '', 30, '', '', '', '0', '5950', '0', '', '1'),
(183, 'BBL016 - ก้าน Italy (ซ้าย) (Kawasaki)', '', '', '', '', '', '', '', 30, '', '', '', '0', '6500', '0', '', '1'),
(184, 'BBL017 - ก้าน Italy (ซ้าย) (S1000RR)', '', '', '', '', '', '', '', 30, '', '', '', '0', '6500', '0', '', '1'),
(185, 'BBL018 - Half Lever Kit 19 RCS', '', '', '', '', '', '', '', 30, '', '', '', '0', '3450', '0', '', '1'),
(186, 'BBL019 - ก้าน Italy พร้อมหัวก้าน', '', '', '', '', '', '', '', 30, '', '', '', '0', '6500', '0', '', '1'),
(187, 'BBC319 - ปั๊มล่าง GP4-RX Nickel Coating 108', '', '', '', '', '', '', '', 30, '', '', '', '0', '4500', '0', '', '1'),
(188, 'BBC319.1 - ปั๊มล่าง GP4-RX Nickel Coating 100mm', '', '', '', '', '', '', '', 30, '', '', '', '0', '4450', '0', '', '1'),
(189, 'BBC204T - ปั๊มล่าง ตัว C/ผีเสื้อปักข้าง (ไทเทเนียม)', '', '', '', '', '', '', '', 30, '', '', '', '0', '8950', '0', '', '1'),
(190, 'BBM024 - ปั๊มบน PS 13mm Rear Thumb Brake', '', '', '', '', '', '', '', 30, '', '', '', '0', '8950', '0', '', '1'),
(191, 'BBC322 - ปั๊มล่าง Rear 2 Piston 34 mm.', '', '', '', '', '', '', '', 30, '', '', '', '0', '8950', '0', '', '1'),
(192, 'BP010 - ผ้าเบรค ปั๊มล่าง Rear 2 Piston 34 mm.', '', '', '', '', '', '', '', 30, '', '', '', '0', '8950', '0', '', '1'),
(193, 'BBR014 - Rotor for T-Drive Kit Disc KTM/Aprilia', '', '', '', '', '', '', '', 30, '', '', '', '0', '8950', '0', '', '1'),
(194, 'BBR015 - HPK Kit Disc BMW HP4 2013', '', '', '', '', '', '', '', 30, '', '', '', '0', '8950', '0', '', '1'),
(195, 'BBR016 - HPK Kit Disc Ducati 1199 Panigale', '', '', '', '', '', '', '', 30, '', '', '', '0', '8450', '0', '', '1'),
(196, 'Rotor for Ducati Paul Smart', '', '', '', '', '', '', '', 30, '', '', '', '0', '4950', '0', '', '1'),
(197, 'BBR018 - HPK \"T-Drive\" Kit Disc BMW HP4 2013', '', '', '', '', '', '', '', 30, '', '', '', '0', '4950', '0', '', '1'),
(198, 'BBP011 - ผ้าเบรค ปั๊ม Racing GP', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(199, 'BBC323 - ปั๊มล่าง Monobloc 100 mm. (pair)', '', '', '', '', '', '', '', 30, '', '', '', '0', '2450', '0', '', '1'),
(200, 'BBM025 - ปั๊มบน Rossi (หมุดทอง) 19*18 (ขวา)', '', '', '', '', '', '', '', 30, '', '', '', '0', '2450', '0', '', '1'),
(201, 'BBC105 - ปั๊มกระทุ้งดำ', '', '', '', '', '', '', '', 30, '', '', '', '0', '2450', '0', '', '1'),
(202, 'BBL020 - X98A7E1 ก้าน', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(203, 'AZ201R - Handlebar Clamp MTS1200', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(204, 'AZ202B - Handlebar Clamp M821', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(205, 'AZ402B - Handlebar Clamp 42 mm.', '', '', '', '', '', '', '', 30, '', '', '', '0', '4950', '0', '', '1'),
(206, 'AZ403B - Handlebar Clamp 60 mm.', '', '', '', '', '', '', '', 30, '', '', '', '0', '4950', '0', '', '1'),
(207, 'AZ405B - Handlebar Clamp 24 mm. (except monster)', '', '', '', '', '', '', '', 30, '', '', '', '0', '4950', '0', '', '1'),
(208, 'AZ430B - Handlebar Clamp for 25.4/ 1 inch (Triumph)', '', '', '', '', '', '', '', 30, '', '', '', '0', '4450', '0', '', '1'),
(209, 'AZ451T - Handlebar Riser R1200 GS', '', '', '', '', '', '', '', 30, '', '', '', '0', '7450', '0', '', '1'),
(210, 'AZ452A - Handlebar Top Clamp Set R NINE T', '', '', '', '', '', '', '', 30, '', '', '', '0', '7450', '0', '', '1'),
(211, 'BS070A - Mirror \"Reverse\" - Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(212, 'BS070B - Mirror \"Reverse\" - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '21450', '0', '', '1'),
(213, 'BS070L - Mirror \"Reverse\" - Polish', '', '', '', '', '', '', '', 30, '', '', '', '0', '7450', '0', '', '1'),
(214, 'BS110A - Mirror \"Prototype\" - LH Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '7950', '0', '', '1'),
(215, 'BS112A - Mirror \"Prototype\" - RH Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '3450', '0', '', '1'),
(216, 'BS130A - Mirror \"Radial\" - Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '3450', '0', '', '1'),
(217, 'BS130B - Mirror \"Radial\" - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '9450', '0', '', '1'),
(218, 'BS130BG - Mirror \"Radial\" - Black/GOLD', '', '', '', '', '', '', '', 30, '', '', '', '0', '9450', '0', '', '1'),
(219, 'BS134B - Mirror \"Radial-naked\" - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '11450', '0', '', '1'),
(220, 'BS134BG - Mirror \"Radial-naked\" - Black/Gold', '', '', '', '', '', '', '', 30, '', '', '', '0', '11450', '0', '', '1'),
(221, 'BS144A - Mirror \"Class Retro\" - Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(222, 'BS144B - Mirror \"Class Retro\" - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(223, 'BS150B - Mirror \"Limit-super sport\" - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '9950', '0', '', '1'),
(224, 'BS154B - Mirror \"Limit-naked\" - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '9950', '0', '', '1'),
(225, 'BS171AB - Mirror \"ELISSE\" LH - Aluminium/Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '24950', '0', '', '1'),
(226, 'BS171B - Mirror \"ELISSE\" LH  - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '24950', '0', '', '1'),
(227, 'BS172AB - Mirror \"ELISSE\" RH - Aluminium/Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '34950', '0', '', '1'),
(228, 'BS172B - Mirror \"ELISSE\" RH - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '4950', '0', '', '1'),
(229, 'BS185A - Mirror \"SPY-R\" - Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '4950', '0', '', '1'),
(230, 'BS185B - Mirror \"SPY-R\" - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(231, 'BS186A - Mirror \"SPY-Q\" - Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(232, 'BS186B - Mirror \"SPY-Q\" - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '9450', '0', '', '1'),
(233, 'BS191A - Mirror \"Spirit\" - Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '11450', '0', '', '1'),
(234, 'BS191B - Mirror \"Spirit\" - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '11450', '0', '', '1'),
(235, 'BS196A - Mirror \"Linea\" - Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '19450', '0', '', '1'),
(236, 'BS196B - Mirror \"Linea\" - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '12450', '0', '', '1'),
(237, 'BS198A - Mirror \"Street\" - Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '8950', '0', '', '1'),
(238, 'BS198B - Mirror \"Street\" - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '8950', '0', '', '1'),
(239, 'BS201A - Mirror \"Circuit 744\" - Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '8950', '0', '', '1'),
(240, 'BS201B - Mirror \"Circuit 744\" - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '8950', '0', '', '1'),
(241, 'BS202A - Mirror \"Circuit 744\" - Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '8950', '0', '', '1'),
(242, 'BS202B - Mirror \"Circuit 744\" - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '8950', '0', '', '1'),
(243, 'BS203A - Mirror \"Circuit 959\" LH - Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '8950', '0', '', '1'),
(244, 'BS203B - Mirror \"Circuit 959\" LH - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '8950', '0', '', '1'),
(245, 'BS204A - Mirror \"Circuit 959\" RH - Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '8450', '0', '', '1'),
(246, 'BS204B - Mirror \"Circuit 959\" RH - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(247, 'BS205A - Mirror \"Veloce\" - Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(248, 'BS205B - Mirror \"Veloce\" - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(249, 'BS207A - Mirror \"4D\" LH - Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '7450', '0', '', '1'),
(250, 'BS207B - Mirror \"4D\" LH - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '7450', '0', '', '1'),
(251, 'BS208A - Mirror \"4D\" RH - Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(252, 'BS208B - Mirror \"4D\" RH - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '500', '0', '', '1'),
(253, 'BS250B - Mirror \" One\" - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '2450', '0', '', '1'),
(254, 'BS285A - Mirror \"Spy R 80\" - Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '2450', '0', '', '1'),
(255, 'BS285B - Mirror \"Spy R 80\" - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '21450', '0', '', '1'),
(256, 'BS303A - Spy-Arm 80 - Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '21450', '0', '', '1'),
(257, 'BS303B - Spy-Arm 80 - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(258, 'BS305A - Mirror \"Veloce L\"Sport - Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '1950', '0', '', '1'),
(259, 'BS305B - Mirror \"Veloce L\" Sport - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '1950', '0', '', '1'),
(260, 'BS306A - Mirror \"Veloce L naked\" - Aluminium', '', '', '', '', '', '', '', 30, '', '', '', '0', '9950', '0', '', '1'),
(261, 'BS306B - Mirror \"Veloce L naked\" - Black', '', '', '', '', '', '', '', 30, '', '', '', '0', '29950', '0', '', '1'),
(262, 'BS711B - Mirror adapter', '', '', '', '', '', '', '', 30, '', '', '', '0', '15450', '0', '', '1'),
(263, 'BS716B - Mirror adapters Multistrada', '', '', '', '', '', '', '', 30, '', '', '', '0', '2500', '0', '', '1'),
(264, 'BS717B - Mirror adapters Multistrada', '', '', '', '', '', '', '', 30, '', '', '', '0', '5950', '0', '', '1'),
(265, 'BS770B - Mirror handlebar adapter 10x1.25 (ปะกับหูกระจก)', '', '', '', '', '', '', '', 30, '', '', '', '0', '7950', '0', '', '1'),
(266, 'BS777B - Mirror adapter R1 09-14', '', '', '', '', '', '', '', 30, '', '', '', '0', '12450', '0', '', '1'),
(267, 'BS778B - Adapter CBR600RR', '', '', '', '', '', '', '', 30, '', '', '', '0', '4950', '0', '', '1'),
(268, 'BS785B - Mirror Adapter S1000RR', '', '', '', '', '', '', '', 30, '', '', '', '0', '22500', '0', '', '1'),
(269, 'BS786B - Mirror adapter-1pc TMAX (Fairing Position)', '', '', '', '', '', '', '', 30, '', '', '', '0', '11500', '0', '', '1'),
(270, 'BS789B - Mirror adapter 1199', '', '', '', '', '', '', '', 30, '', '', '', '0', '5950', '0', '', '1'),
(271, 'BS790B - Mirror adapter BMW C600/C650', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(272, 'BS805B - Mirror adapters (right+left)/ pair TMAX530 ', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(273, 'BS806A - Mirror cap TMAX 530/ each side', '', '', '', '', '', '', '', 30, '', '', '', '0', '12450', '0', '', '1'),
(274, 'BS811B - Mirror Adapter One universal', '', '', '', '', '', '', '', 30, '', '', '', '0', '750', '0', '', '1'),
(275, 'BS812B - Mirror Adapter ONE R9T/Each', '', '', '', '', '', '', '', 30, '', '', '', '0', '3450', '0', '', '1'),
(276, 'CT015A - Fluid Tank 68oz - Aluminium (เล็ก)', '', '', '', '', '', '', '', 30, '', '', '', '0', '12450', '0', '', '1'),
(277, 'CT015B - Fluid Tank 68oz - Black (เล็ก)', '', '', '', '', '', '', '', 30, '', '', '', '0', '7450', '0', '', '1'),
(278, 'CT015G - Fluid Tank 68oz - Gold (เล็ก)', '', '', '', '', '', '', '', 30, '', '', '', '0', '16450', '0', '', '1'),
(279, 'CT015R - Fluid Tank.68oz - Red (เล็ก)', '', '', '', '', '', '', '', 30, '', '', '', '0', '12450', '0', '', '1'),
(280, 'CT015U - Fluid Tank .68oz - Blue (เล็ก)', '', '', '', '', '', '', '', 30, '', '', '', '0', '22500', '0', '', '1'),
(281, 'CT017R - Fluid Tank .88oz - Red (กลางตรง)', '', '', '', '', '', '', '', 30, '', '', '', '0', '9950', '0', '', '1'),
(282, 'CT025A - Fluid Tank .91oz - Aluminium (กลาง)', '', '', '', '', '', '', '', 30, '', '', '', '0', '12450', '0', '', '1'),
(283, 'CT025B - Fluid Tank .91oz - Black (กลาง)', '', '', '', '', '', '', '', 30, '', '', '', '0', '3950', '0', '', '1'),
(284, 'CT025G - Fluid Tank .91oz - Gold (กลาง)', '', '', '', '', '', '', '', 30, '', '', '', '0', '39950', '0', '', '1'),
(285, 'CT025R - Fluid Tank .91oz - Red (กลาง)', '', '', '', '', '', '15', '', 30, '', '', '', '0', '1950', '0', '', '1'),
(286, 'CT025U - Fluid Tank .91oz - Blue (กลาง)', '', '', '', '', '', '', '', 30, '', '', '', '0', '48000', '0', '', '1'),
(287, 'CT027A - Fluid Tank 1.18oz - Aluminium (ใหญ่)', '', '', '', '', '', '20', '', 30, '', '', '', '0', '1500', '0', '', '1'),
(288, 'CT027B - Fluid Tank 1.18oz - Black (ใหญ่)', '', '', '', '', '', '', '', 30, '', '', '', '0', '6450', '0', '', '1'),
(289, 'CT027G - Fluid Tank 1.18oz - Gold (ใหญ่)', '', '', '', '', '', '', '', 30, '', '', '', '0', '4000', '0', '', '1'),
(290, 'CT027R - Fluid Tank 1.18oz - Red (ใหญ่)', '', '', '', '', '', '', '', 30, '', '', '', '0', '1000', '0', '', '1'),
(291, 'CT027U - Fluid Tank 1.18oz - Blue (ใหญ่)', '', '', '', '', '', '', '', 30, '', '', '', '0', '8500', '0', '', '1'),
(292, 'CT115A - Rear Brake Fluid Tank \"NEXT\" - Aluminium (เล็ก)', '', '', '', '', '', '', '', 30, '', '', '', '0', '42500', '0', '', '1'),
(293, 'CT115B - Rear Brake Fluid Tank \"NEXT\" - Black (เล็ก)', '', '', '', '', '', '', '', 30, '', '', '', '0', '2000', '0', '', '1'),
(294, 'CT115G - Rear Brake Fluid Tank \"NEXT\" - Gold (เล็ก)', '', '', '', '', '', '', '', 30, '', '', '', '0', '2000', '0', '', '1'),
(295, 'CT115R - Rear Brake Fluid Tank \"NEXT\" - Red (เล็ก)', '', '', '', '', '', '20', '', 30, '', '', '', '0', '1500', '0', '', '1'),
(296, 'CT115U - Rear Brake Fluid Tank \"NEXT\" - Blue (เล็ก)', '', '', '', '', '', '20', '', 30, '', '', '', '0', '1500', '0', '', '1'),
(297, 'CT125A - Clutch fluid tank \"NEXT\" - Aluminium (กลาง)', '', '', '', '', '', '20', '', 30, '', '', '', '0', '1500', '0', '', '1'),
(298, 'CT125B - Clutch fluid tank \"NEXT\" - Black (กลาง)', '', '', '', '', '', '20', '', 30, '', '', '', '0', '1500', '0', '', '1'),
(299, 'CT125G - Clutch fluid tank \"NEXT\" - Gold (กลาง)', '', '', '', '', '', '9', '', 7, '', '', '', '0', '6750', '0', '', '1'),
(300, 'CT125R - Clutch fluid tank \"NEXT\" - Red (กลาง)', '', '', '', '', '', '9', '', 7, '', '', '', '0', '6750', '0', '', '1'),
(301, 'CT125U - Clutch fluid tank \"NEXT\" - Blue (กลาง)', '', '', '', '', '', '9', '', 7, '', '', '', '0', '6750', '0', '', '1'),
(302, 'CT127A - Front Brake Fluid Tank \"NEXT\" - Aluminium (ใหญ่)', '', '', '', '', '', '9', '', 7, '', '', '', '0', '7500', '0', '', '1'),
(303, 'CT127B - Front Brake Fluid Tank \"NEXT\" - Black (ใหญ่)', '', '', '', '', '', '9', '', 7, '', '', '', '0', '7500', '0', '', '1'),
(304, 'CT127G - Front Brake Fluid Tank \"NEXT\" - Gold (ใหญ่)', '', '', '', '', '', '9', '', 7, '', '', '', '0', '7500', '0', '', '1'),
(305, 'CT127R - Front Brake Fluid Tank \"NEXT\" - Red (ใหญ่)', '', '', '', '', '', '', '', 7, '', '', '', '0', '2000', '0', '', '1'),
(306, 'CT127U - Front Brake Fluid Tank \"NEXT\" - Blue (ใหญ่)', '', '', '', '', '', '30', '', 7, '', '', '', '0', '1300', '0', '', '1'),
(307, 'CT135A - Clutch  Fluid Tank \"Wave\" - Aluminium (กลาง)', '', '', '', '', '', '30', '', 7, '', '', '', '0', '1300', '0', '', '1'),
(308, 'CT135B - Clutch  Fluid Tank \"Wave\" - Blalck (กลาง)', '', '', '', '', '', '30', '', 7, '', '', '', '0', '1300', '0', '', '1'),
(309, 'CT135G - Clutch  Fluid Tank \"Wave\" - Gold (กลาง)', '', '', '', '', '', '30', '', 7, '', '', '', '0', '1300', '0', '', '1'),
(310, 'CT135R - Clutch  Fluid Tank \"Wave\" - Red (กลาง)', '', '', '', '', '', '30', '', 7, '', '', '', '0', '1300', '0', '', '1'),
(311, 'CT135U - Clutch  Fluid Tank \"Wave\" - Blue (กลาง)', '', '', '', '', '', '30', '', 7, '', '', '', '0', '1300', '0', '', '1'),
(312, 'CT137A - Brake Fluid Tank \"Wave\" - Aluminium (ใหญ่)', '', '', '', '', '', '30', '', 7, '', '', '', '0', '1300', '0', '', '1'),
(313, 'CT137B - Brake Fluid Tank \"Wave\" - Black (ใหญ่)', '', '', '', '', '', '30', '', 7, '', '', '', '0', '1300', '0', '', '1'),
(314, 'CT137G - Brake Fluid Tank \"Wave\" - Gold (ใหญ่)', '', '', '', '', '', '', '', 7, '', '', '', '0', '2500', '0', '', '1'),
(315, 'CT137R - Brake Fluid Tank \"Wave\" - Red (ใหญ่)', '', '', '', '', '', '', '', 7, '', '', '', '0', '2500', '0', '', '1'),
(316, 'CT137U - Brake Fluid Tank \"Wave\" - Blue (ใหญ่)', '', '', '', '', '', '', '', 7, '', '', '', '0', '2500', '0', '', '1'),
(317, 'CT157BS - Brake Fluid Tank \"NOTCH\" 51.5mm - Black (ใหญ่)', '', '', '', '', '', '', '', 7, '', '', '', '0', '2800', '0', '', '1'),
(318, 'CT157R - Brake Fluid Tank \"NOTCH\" 51.5mm - Red (ใหญ่)', '', '', '', '', '', '', '', 7, '', '', '', '0', '2800', '0', '', '1'),
(319, 'CT155BS - Clutch  Fluid Tank \"NOTCH\" Fluid Tank 42mm - Black (กลาง)', '', '', '', '', '', '', '', 7, '', '', '', '0', '2800', '0', '', '1'),
(320, 'CT155R - Clutch  Fluid Tank \"NOTCH\" Fluid Tank42mm - Red (กลาง)', '', '', '', '', '', '', '', 7, '', '', '', '0', '2500', '0', '', '1'),
(321, 'CT147BS - Brake Fluid Tank  \"PURE\" 51.5mm - Black (ใหญ่)', '', '', '', '', '', '', '', 7, '', '', '', '0', '2500', '0', '', '1'),
(322, 'CT147R - Brake Fluid Tank  \"PURE\" 51.5mm - Red (ใหญ่)', '', '', '', '', '', '', '', 7, '', '', '', '0', '2500', '0', '', '1'),
(323, 'CT145BS - Clutch  Fluid Tank \"PURE\" 42mm - Black (กลาง)', '', '', '', '', '', '', '', 7, '', '', '', '0', '2500', '0', '', '1'),
(324, 'CT145R - Clutch  Fluid Tank \"PURE\" 42mm - Red (กลาง)', '', '', '', '', '', '', '', 7, '', '', '', '0', '3500', '0', '', '1'),
(325, 'CT450B - Fluid Tank Bracket (ขากระปุก) ยาว', '', '', '', '', '', '', '', 7, '', '', '', '0', '3500', '0', '', '1'),
(326, 'CT451B - Fluid Tank Bracket (ขากระปุก) สั้น', '', '', '', '', '', '', '', 7, '', '', '', '0', '3500', '0', '', '1'),
(327, 'CT453B - Rizoma Fluid Tank Adapter Panigale', '', '', '', '', '', '', '', 7, '', '', '', '0', '4800', '0', '', '1'),
(328, 'CT454B - Fluid Tank Bracket', '', '', '', '', '', '', '', 7, '', '', '', '0', '4800', '0', '', '1'),
(329, 'CT457B Fluid Tank Bracket (Handlebar clamp lock)', '', '', '', '', '', '', '', 7, '', '', '', '0', '4800', '0', '', '1'),
(330, 'EE077B - License Light Kit (ไฟส่องป้ายทะเบียน)', '', '', '', '', '', '', '', 7, '', '', '', '0', '2200', '0', '', '1'),
(331, 'EE078H - Turnsignal Cable Kit for R9T', '', '', '', '', '', '', '', 7, '', '', '', '0', '2200', '0', '', '1'),
(332, 'EE079H - Turnsignal Cable Kit Ducati', '', '', '', '', '', '', '', 7, '', '', '', '0', '2200', '0', '', '1'),
(333, 'FG051B - Toe Guard', '', '', '', '', '', '', '', 7, '', '', '', '0', '2200', '0', '', '1'),
(334, 'FG070B - Toe Guard', '', '', '', '', '', '', '', 7, '', '', '', '0', '2500', '0', '', '1'),
(335, 'FR021A -  Indicator Light \"AVIO 21\" - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '2500', '0', '', '1'),
(336, 'FR021B -  Indicator Light \"AVIO 21\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '2500', '0', '', '1'),
(337, 'FR021G -  Indicator Light \"AVIO 21\" - Gold', '', '', '', '', '', '', '', 7, '', '', '', '0', '1800', '0', '', '1'),
(338, 'FR021R -  Indicator Light \"AVIO 21\" - Red', '', '', '', '', '', '', '', 7, '', '', '', '0', '1800', '0', '', '1'),
(339, 'FR025A -  Indicator Light \"ZERO11\" - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '1800', '0', '', '1'),
(340, 'FR025B -  Indicator Light \"ZERO11\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '1500', '0', '', '1'),
(341, 'FR026A -  Indicator Light \"GRAFFIO\" - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '1500', '0', '', '1'),
(342, 'FR026B -  Indicator Light \"GRAFFIO\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '1500', '0', '', '1'),
(343, 'FR026G -  Indicator Light \"GRAFFIO\" - Gold', '', '', '', '', '', '', '', 7, '', '', '', '0', '3000', '0', '', '1'),
(344, 'FR026R -  Indicator Light \"GRAFFIO\" - Red', '', '', '', '', '', '', '', 7, '', '', '', '0', '3000', '0', '', '1'),
(345, 'FR026U -  Indicator Light \"GRAFFIO\" - Blue', '', '', '', '', '', '', '', 7, '', '', '', '0', '3000', '0', '', '1'),
(346, 'FR027B -  Indicator Light \"DROP\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '3000', '0', '', '1'),
(347, 'FR027CH -  Indicator Light \"DROP\" - Polish', '', '', '', '', '', '', '', 7, '', '', '', '0', '1500', '0', '', '1'),
(348, 'FR028A -  Indicator Light \"ACTION\" - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '1500', '0', '', '1'),
(349, 'FR028B -  Indicator Light \"ACTION\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '1500', '0', '', '1'),
(350, 'FR035A -  Indicator Light \"ZERO\" New - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '6000', '0', '', '1'),
(351, 'FR035B -  Indicator Light \"ZERO\" New - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '6000', '0', '', '1'),
(352, 'FR150B -  Indicator Light \"CLUB\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '6000', '0', '', '1'),
(353, 'FR150CH -  Indicator Light \"CLUB\" - Polish', '', '', '', '', '', '', '', 7, '', '', '', '0', '6500', '0', '', '1'),
(354, 'FR151B -  Indicator Light \"CLUB L\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '6500', '0', '', '1'),
(355, 'FR151CH -  Indicator Light \"CLUB L\" - Polish', '', '', '', '', '', '', '', 7, '', '', '', '0', '6500', '0', '', '1'),
(356, 'FR155B -  Indicator Light \"Club S\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '6500', '0', '', '1'),
(357, 'FR155CH -  Indicator Light \"Club S\" - Polish', '', '', '', '', '', '', '', 7, '', '', '', '0', '2500', '0', '', '1'),
(358, 'FR060B -  Indicator Light \"SGUARDO\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '2500', '0', '', '1'),
(359, 'FR060CH -  Indicator Light \"SGUARDO\" - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '2500', '0', '', '1'),
(360, 'FR120A -  Indicator Light \"LEGGERA\" - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '3000', '0', '', '1'),
(361, 'FR120B -  Indicator Light \"LEGGERA\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '3000', '0', '', '1'),
(362, 'FR125A -  Indicator Light \"LEGGERA S\" - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '2500', '0', '', '1'),
(363, 'FR125B -  Indicator Light \"LEGGERA S\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '2500', '0', '', '1'),
(364, 'FR160B -  Indicator Light \'IRIDE\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '2500', '0', '', '1'),
(365, 'FR160CH -  Indicator Light \'IRIDE\" - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '1750', '0', '', '1'),
(366, 'FR165B -  Indicator Light \'IRIDE S\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '1750', '0', '', '1'),
(367, 'FR165CH -  Indicator Light \'IRIDE S\" - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '1950', '0', '', '1'),
(368, 'FR110B -  Indicator Light \"CORSA\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '1950', '0', '', '1'),
(369, 'FR221B - Indicator light Adapter PVC 4 pieces BMW', '', '', '', '', '', '', '', 7, '', '', '', '0', '1950', '0', '', '1'),
(370, 'FR411B - Indicator Adapter on Ducati Hypermotard 796/1100', '', '', '', '', '', '', '', 7, '', '', '', '0', '900', '0', '', '1'),
(371, 'FR417B - Indicator Mounting Adapter for Hypermotard 821', '', '', '', '', '', '', '', 7, '', '', '', '0', '900', '0', '', '1'),
(372, 'GR205A - Grips \"Sport line\" - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '900', '0', '', '1'),
(373, 'GR205B - Grips \"Sport line\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '3950', '0', '', '1'),
(374, 'GR205G - Grips \"Sport line\" - Gold', '', '', '', '', '', '', '', 7, '', '', '', '0', '3950', '0', '', '1'),
(375, 'GR205R - Grips \"Sport line\" - Red', '', '', '', '', '', '', '', 7, '', '', '', '0', '3950', '0', '', '1'),
(376, 'GR205U - Grips \"Sport line\" - Blue', '', '', '', '', '', '', '', 7, '', '', '', '0', '1800', '0', '', '1'),
(377, 'GR213A - Grips \"LUX\" - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '1500', '0', '', '1'),
(378, 'GR213B - Grips \"LUX\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '25000', '0', '', '1'),
(379, 'GR213G - Grips \"LUX\" - Gold', '', '', '', '', '', '', '', 7, '', '', '', '0', '15000', '0', '', '1'),
(380, 'GR213R - Grips \"LUX\" - Red', '', '', '', '', '', '', '', 7, '', '', '', '0', '21000', '0', '', '1'),
(381, 'GR213U - Grips \"LUX\" - Blue', '', '', '', '', '', '', '', 7, '', '', '', '0', '8500', '0', '', '1'),
(382, 'GR221A - Grips \"URLO\"  - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '8500', '0', '', '1'),
(383, 'GR221B - Grips \"URLO\"  - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '8500', '0', '', '1'),
(384, 'GR418B - Grips adapter Kit', '', '', '', '', '', '', '', 7, '', '', '', '0', '8500', '0', '', '1'),
(385, 'LB301G - Brake Lever Kawasaki', '', '', '', '', '', '', '', 7, '', '', '', '0', '8500', '0', '', '1'),
(386, 'LB500A - Brake Lever \"Feel\" Ducati - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '8500', '0', '', '1'),
(387, 'LB500B - Brake Lever \"Feel\" Ducati - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '17500', '0', '', '1'),
(388, 'LB500G - Brake Lever \"Feel\" Ducati - Gold', '', '', '', '', '', '', '', 7, '', '', '', '0', '17500', '0', '', '1'),
(389, 'LB700B - Brake Lever \"Feel\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '17500', '0', '', '1'),
(390, 'LB701A - Brake Lever \"Feel\" R9T/ R1200GS - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '17500', '0', '', '1'),
(391, 'LB701B - Brake Lever \"Feel\" R9T/ R1200GS - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '17500', '0', '', '1'),
(392, 'LBR301B - Brake Lever \"RRC\" Z1000 - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '22500', '0', '', '1'),
(393, 'LBR302A - Brake lever \"RRC\" Z800 - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '9000', '0', '', '1'),
(394, 'LBR302B - Brake lever \"RRC\" Z800 - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '45000', '0', '', '1'),
(395, 'LBR500A - Brake lever \"RRC\" - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '8500', '0', '', '1'),
(396, 'LBR500B - Brake lever  \"RRC\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '2500', '0', '', '1'),
(397, 'LBR500G - Brake lever \"RRC\" - Gold', '', '', '', '', '', '', '', 7, '', '', '', '0', '13000', '0', '', '1'),
(398, 'LC302G - Clutch Lever  \"Feel\" Kawasaki - Gold', '', '', '', '', '', '', '', 7, '', '', '', '0', '35000', '0', '', '1'),
(399, 'LC500A - Clutch Lever \"Feel\" Ducati - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '35000', '0', '', '1'),
(400, 'LC500B - Clutch Lever \"Feel\" Ducati - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '45000', '0', '', '1'),
(401, 'LC500G - Clutch Lever \"Feel\" Ducati - Gold', '', '', '', '', '', '', '', 7, '', '', '', '0', '2300', '0', '', '1'),
(402, 'LC701A - Clutch Lever with adjustment \'FEEL\" S1000RR 2015 - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '2300', '0', '', '1'),
(403, 'LC703B - Clutch Lever \"Feel\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '9500', '0', '', '1'),
(404, 'LC705A - Clutch Lever\"Feel\" R9T/ R1200GS - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '2000', '0', '', '1'),
(405, 'LC705B - Clutch Lever\"Feel\" R9T/ R1200GS - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '2000', '0', '', '1'),
(406, 'LCR301A - Clutch lever with adjustment \"RRC\" Z800 Z1000 - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '4750', '0', '', '1'),
(407, 'LCR301B - Clutch lever with adjustment \"RRC\" Z800 Z1000 - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '3500', '0', '', '1'),
(408, 'LCR500A - Clutch lever with adjustment \"RRC\" - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '3500', '0', '', '1'),
(409, 'LCR500B - Clutch lever with adjustment \"RRC\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '3500', '0', '', '1'),
(410, 'LCR500G - Clutch lever with adjustment \"RRC\" - Gold', '', '', '', '', '', '', '', 7, '', '', '', '0', '3500', '0', '', '1'),
(411, 'LP010A - Proguard System - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '3500', '0', '', '1'),
(412, 'LP010B - Proguard System - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '3500', '0', '', '1'),
(413, 'LP010G - Proguard System - Gold', '', '', '', '', '', '', '', 7, '', '', '', '0', '3500', '0', '', '1');
INSERT INTO `select_your_bike` (`id`, `name_product`, `img1`, `img2`, `img3`, `img4`, `img5`, `category`, `sub_category`, `brand`, `model`, `name_color`, `name_year`, `Price`, `discount`, `quality`, `detail`, `status`) VALUES
(414, 'LP200B - Proguard Mounting Adapter (13-20mm) 1 piece- Universal', '', '', '', '', '', '', '', 7, '', '', '', '0', '3500', '0', '', '1'),
(415, 'LP321B - Proguard Mounting Adapter 1 piece- S1000RR', '', '', '', '', '', '', '', 7, '', '', '', '0', '3500', '0', '', '1'),
(416, 'LP330B - Proguard Mounting Adapter 1 piece - Panigale 1199', '', '', '', '', '', '', '', 7, '', '', '', '0', '3500', '0', '', '1'),
(417, 'LP400B - Proguard Mounting Adapter (20-23mm) 1 piece- Harley Davidson', '', '', '', '', '', '', '', 7, '', '', '', '0', '3500', '0', '', '1'),
(418, 'LPR040B - Proguard System RRC Racing', '', '', '', '', '', '', '', 7, '', '', '', '0', '3500', '0', '', '1'),
(419, 'MA001A - 7/8\" Handlebar (22 mm.) - Alumnium', '', '', '', '', '', '5', '', 7, '', '', '', '0', '1500', '0', '', '1'),
(420, 'MA001B - 7/8\" Handlebar (22 mm.) - Black', '', '', '', '', '', '5', '', 7, '', '', '', '0', '1500', '0', '', '1'),
(421, 'MA001G - 7/8\" Handlebar (22 mm.) - Gold', '', '', '', '', '', '5', '', 7, '', '', '', '0', '1500', '0', '', '1'),
(422, 'MA001R - 7/8\" Handlebar (22 mm.) - Red', '', '', '', '', '', '5', '', 7, '', '', '', '0', '1500', '0', '', '1'),
(423, 'MA005A - Handlebar Conical 22-29  - H30mm (FAT) - Aluminium', '', '', '', '', '', '13', '', 7, '', '', '', '0', '7500', '0', '', '1'),
(424, 'MA005R - Handlebar Conical 22-29  - H30mm (FAT) - Red', '', '', '', '', '', '13', '', 7, '', '', '', '0', '7500', '0', '', '1'),
(425, 'MA006B - Handlebar Conical 22-29  - H30mm (FAT) - Black', '', '', '', '', '', '13', '', 7, '', '', '', '0', '7500', '0', '', '1'),
(426, 'MA006G - Handlebar Conical 22-29  - H30mm (FAT) - Gold', '', '', '', '', '', '13', '', 7, '', '', '', '0', '7500', '0', '', '1'),
(427, 'MA009B - Handlebar Conical 22-29  - H50mm (FAT) - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '6900', '0', '', '1'),
(428, 'MA011A - Handlebar Conical 22-29  - H20mm (FAT) - Alumnium', '', '', '', '', '', '', '', 7, '', '', '', '0', '6900', '0', '', '1'),
(429, 'MA011B - Handlebar Conical 22-29  - H20mm (FAT) - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '4000', '0', '', '1'),
(430, 'MA011G - Handlebar Conical 22-29  - H20mm (FAT) - Gold', '', '', '', '', '', '', '', 7, '', '', '', '0', '1500', '0', '', '1'),
(431, 'MA015A - Handlebar Conical 22-29  - H10mm (FAT) Drag Bar - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '1500', '0', '', '1'),
(432, 'MA015B - Handlebar Conical 22-29  - H10mm (FAT) Drag Bar - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '1500', '0', '', '1'),
(433, 'MA015B - Handlebar Conical 22-29  - H10mm (FAT) Drag Bar - Gold', '', '', '', '', '', '', '', 7, '', '', '', '0', '4000', '0', '', '1'),
(434, 'MA015R - Handlebar Conical 22-29  - H10mm (FAT) Drag Bar - Red', '', '', '', '', '', '', '', 7, '', '', '', '0', '4000', '0', '', '1'),
(435, 'MA015U - Handlebar Conical 22-29  - H10mm (FAT) Drag Bar - Blue', '', '', '', '', '', '', '', 7, '', '', '', '0', '4000', '0', '', '1'),
(436, 'MA050B - Clip-on Bar Kit (R Nine T)', '', '', '', '', '', '', '', 7, '', '', '', '0', '2500', '0', '', '1'),
(437, 'MA109B - Crossbar', '', '', '', '', '', '', '', 7, '', '', '', '0', '2500', '0', '', '1'),
(438, 'MA204A - Clip-on bars kit - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '4000', '0', '', '1'),
(439, 'MA204B - Clip-on bars kit - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '4250', '0', '', '1'),
(440, 'MA207A - Handlebar \"Style & Comfort\" Diavel - Aluminium ', '', '', '', '', '', '', '', 7, '', '', '', '0', '6500', '0', '', '1'),
(441, 'MA207B - Handlebar \"Style & Comfort\" Diavel - Black ', '', '', '', '', '', '', '', 7, '', '', '', '0', '6500', '0', '', '1'),
(442, 'MA301B - Handlebar Cap (Single) - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '10000', '0', '', '1'),
(443, 'MA400B - Handlebar Adapter TMAX530', '', '', '', '', '', '', '', 7, '', '', '', '0', '3750', '0', '', '1'),
(444, 'MA502A - Handlebar Caps - Aluminium (ปลายแฮนด์เล็ก)', '', '', '', '', '', '', '', 7, '', '', '', '0', '3750', '0', '', '1'),
(445, 'MA502B - Handlebar Caps - Black (ปลายแฮนด์เล็ก)', '', '', '', '', '', '', '', 7, '', '', '', '0', '3750', '0', '', '1'),
(446, 'MA502G - Handlebar Caps - Gold (ปลายแฮนด์เล็ก)', '', '', '', '', '', '', '', 7, '', '', '', '0', '10000', '0', '', '1'),
(447, 'MA502R - Handlebar Caps - Red (ปลายแฮนด์เล็ก)', '', '', '', '', '', '', '', 7, '', '', '', '0', '27500', '0', '', '1'),
(448, 'MA502U - Handlebar Caps - Blue (ปลายแฮนด์เล็ก)', '', '', '', '', '', '', '', 7, '', '', '', '0', '3750', '0', '', '1'),
(449, 'MA506A - Handlebar Caps - Aluminium (ปลายแฮนด์กลาง)', '', '', '', '', '', '', '', 7, '', '', '', '0', '17450', '0', '', '1'),
(450, 'MA506B - Handlebar Caps - Black (ปลายแฮนด์กลาง)', '', '', '', '', '', '', '', 7, '', '', '', '0', '1500', '0', '', '1'),
(451, 'MA506G - Handlebar Caps - Gold (ปลายแฮนด์กลาง)', '', '', '', '', '', '', '', 7, '', '', '', '0', '1500', '0', '', '1'),
(452, 'MA506R - Handlebar Caps - Red (ปลายแฮนด์กลาง)', '', '', '', '', '', '', '', 7, '', '', '', '0', '1500', '0', '', '1'),
(453, 'MA506U - Handlebar Caps - Blue (ปลายแฮนด์กลาง)', '', '', '', '', '', '', '', 7, '', '', '', '0', '6500', '0', '', '1'),
(454, 'MA508B - Replacement Cap', '', '', '', '', '', '', '', 7, '', '', '', '0', '6500', '0', '', '1'),
(455, 'MA512A - Handlebar Caps - Aluminium (ปลายแฮนด์ใหญ่)', '', '', '', '', '', '', '', 7, '', '', '', '0', '6500', '0', '', '1'),
(456, 'MA512B - Handlebar Caps - Black (ปลายแฮนด์ใหญ่)', '', '', '', '', '', '', '', 7, '', '', '', '0', '7000', '0', '', '1'),
(457, 'MA512G - Handlebar Caps - Gold (ปลายแฮนด์ใหญ่)', '', '', '', '', '', '', '', 7, '', '', '', '0', '7000', '0', '', '1'),
(458, 'MA512R - Handlebar Caps - Red (ปลายแฮนด์ใหญ่)', '', '', '', '', '', '', '', 7, '', '', '', '0', '7000', '0', '', '1'),
(459, 'MA512U - Handlebar Caps - Blue(ปลายแฮนด์ใหญ่)', '', '', '', '', '', '', '', 7, '', '', '', '0', '7000', '0', '', '1'),
(460, 'MA516A - Handlebar Caps - Aluminium (ปลายแฮนด์แบน)', '', '', '', '', '', '', '', 7, '', '', '', '0', '7000', '0', '', '1'),
(461, 'MA516B - Handlebar Caps - Black (ปลายแฮนด์แบน)', '', '', '', '', '', '', '', 7, '', '', '', '0', '7000', '0', '', '1'),
(462, 'MA516G - Handlebar Caps - Gold (ปลายแฮนด์แบน)', '', '', '', '', '', '', '', 7, '', '', '', '0', '1750', '0', '', '1'),
(463, 'MA516R - Handlebar Caps - Red (ปลายแฮนด์แบน)', '', '', '', '', '', '', '', 7, '', '', '', '0', '1750', '0', '', '1'),
(464, 'MA516U - Handlebar Caps - Blue (ปลายแฮนด์แบน)', '', '', '', '', '', '', '', 7, '', '', '', '0', '1750', '0', '', '1'),
(465, 'MA520A - Handlebar Caps - Aluminium (ปลายแฮนด์เฉียง)', '', '', '', '', '', '', '', 7, '', '', '', '0', '11500', '0', '', '1'),
(466, 'MA520B - Handlebar Caps - Black (ปลายแฮนด์เฉียง)', '', '', '', '', '', '', '', 7, '', '', '', '0', '11500', '0', '', '1'),
(467, 'MA520G - Handlebar Caps - Gold (ปลายแฮนด์เฉียง)', '', '', '', '', '', '', '', 7, '', '', '', '0', '17000', '0', '', '1'),
(468, 'MA520R - Handlebar Caps - Red (ปลายแฮนด์เฉียง)', '', '', '', '', '', '', '', 7, '', '', '', '0', '13500', '0', '', '1'),
(469, 'MA520U - Handlebar Caps - Blue (ปลายแฮนด์เฉียง)', '', '', '', '', '', '', '', 7, '', '', '', '0', '', '0', '', '1'),
(470, 'MA530A - Handlebar Caps \"Switch\" - Aluminium', '', '', '', '', '', '', '', 7, '', '', '', '0', '2000', '0', '', '1'),
(471, 'MA530B - Handlebar Caps \"Switch\" - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '2000', '0', '', '1'),
(472, 'MA531A - Handlebar Caps New - Aluminium (ปลายแฮนด์แบน)', '', '', '', '', '', '', '', 7, '', '', '', '0', '2000', '0', '', '1'),
(473, 'MA531B - Handlebar Caps New - Black (ปลายแฮนด์แบน)', '', '', '', '', '', '', '', 7, '', '', '', '0', '24990', '0', '', '1'),
(474, 'MA532A - Handlebar Cap - Aluminium  (ปลายแฮนด์ใหญ่ 2 two tone)', '', '', '', '', '', '9', '', 7, '', '', '', '0', '7700', '0', '', '1'),
(475, 'MA532B - Handlebar Cap - Black (ปลายแฮนด์ใหญ่ 2 two tone)', '', '', '', '', '', '9', '', 7, '', '', '', '0', '7700', '0', '', '1'),
(476, 'MA532G - Handlebar Cap - Gold (ปลายแฮนด์ใหญ่ 2 two tone)', '', '', '', '', '', '9', '', 7, '', '', '', '0', '7700', '0', '', '1'),
(477, 'MA532R - Handlebar Cap - Red (ปลายแฮนด์ใหญ่ 2 two tone)', '', '', '', '', '', '', '', 7, '', '', '', '0', '49450', '0', '', '1'),
(478, 'MA532U - Handlebar Cap - Blue (ปลายแฮนด์ใหญ่ 2 two tone)', '', '', '', '', '', '', '', 7, '', '', '', '0', '9500', '0', '', '1'),
(479, 'MA534B - Handlebar Caps New - Black (ปลายแฮนด์เล็ก)', '', '', '', '', '', '', '', 7, '', '', '', '0', '1500', '0', '', '1'),
(480, 'MA700A - Frame Hole Cap 10-16mm - Aluminium', '', '', '', '', '', '9', '', 7, '', '', '', '0', '6600', '0', '', '1'),
(481, 'MA700B - Frame Hole Cap 10-16mm - Black', '', '', '', '', '', '9', '', 7, '', '', '', '0', '6600', '0', '', '1'),
(482, 'MA700G - Frame Hole Cap 10-16mm - Gold', '', '', '', '', '', '9', '', 7, '', '', '', '0', '6600', '0', '', '1'),
(483, 'MA700R - Frame Hole Cap 10-16mm - Red', '', '', '', '', '', '', '', 7, '', '', '', '0', '1000', '0', '', '1'),
(484, 'MA700U - Frame Hole Cap 10-16mm - Blue', '', '', '', '', '', '', '', 7, '', '', '', '0', '1000', '0', '', '1'),
(485, 'MA701B - Frame Hole Cap 17-22mm - Black', '', '', '', '', '', '', '', 7, '', '', '', '0', '16950', '0', '', '1'),
(486, 'MA701G - Frame Hole Cap 17-22mm - Gold', '', '', '', '', '', '', '', 8, '', '', '', '0', '40000', '0', '', '1'),
(487, 'MA701R - Frame Hole Cap 17-22mm - Red', '', '', '', '', '', '', '', 8, '', '', '', '0', '40000', '0', '', '1'),
(488, 'MA701U - Frame Hole Cap 17-22mm - Blue', '', '', '', '', '', '', '', 21, '', '', '', '0', '25000', '0', '', '1'),
(489, 'NP001B - Number Plate RH - Streetfighter', '', '', '', '', '', '', '', 21, '', '', '', '0', '18500', '0', '', '1'),
(490, 'NP002B - Number Plate LH - Streetfighter', '', '', '', '', '', '', '', 21, '', '', '', '0', '16500', '0', '', '1'),
(491, 'PE209B - Rear Set Control Kit - Monster696/796/1100', '', '', '', '', '', '', '', 21, '', '', '', '0', '16500', '0', '', '1'),
(492, 'PE212B - Rear Set Control Kit \"EVO\" - Diavel', '', '', '', '', '', '', '', 21, '', '', '', '0', '18500', '0', '', '1'),
(493, 'PE409B - Rear Set Control Kit-BMW s1000rr', '', '', '', '', '', '', '', 21, '', '', '', '0', '16500', '0', '', '1'),
(494, 'PE606A - Pegs Kit Adapter - Diavel', '', '', '', '', '', '', '', 21, '', '', '', '0', '18500', '0', '', '1'),
(495, 'PE614A - \"PRO\" Rider / Passenger Pegs - Aluminium', '', '', '', '', '', '', '', 21, '', '', '', '0', '18500', '0', '', '1'),
(496, 'PE614B - \"PRO\" Rider / Passenger Pegs - Black', '', '', '', '', '', '', '', 21, '', '', '', '0', '18500', '0', '', '1'),
(497, 'PE614G - \"PRO\" Rider / Passenger Pegs - Gold', '', '', '', '', '', '', '', 27, '', '', '', '0', '14500', '0', '', '1'),
(498, 'PE614R - \"PRO\" Rider / Passenger Pegs - Red', '', '', '', '', '', '', '', 27, '', '', '', '0', '8500', '0', '', '1'),
(499, 'PE614U - \"PRO\" Rider / Passenger Pegs - Blue', '', '', '', '', '', '', '', 27, '', '', '', '0', '4900', '0', '', '1'),
(500, 'PE616B - Rider Race Pegs (Pair) - Black', '', '', '', '', '', '', '', 27, '', '', '', '0', '4900', '0', '', '1'),
(501, 'PE622B - \"TOURING\" Rider / Passenger Pegs - Black', '', '', '', '', '', '', '', 27, '', '', '', '0', '4900', '0', '', '1'),
(502, 'PE622R - \"TOURING\" Rider / Passenger Pegs - Red', '', '', '', '', '', '', '', 27, '', '', '', '0', '3900', '0', '', '1'),
(503, 'PE622U - \"TOURING\" Rider / Passenger Pegs - Blue', '', '', '', '', '', '', '', 27, '', '', '', '0', '5000', '0', '', '1'),
(504, 'PE624A - Peg Spare Part - Aluminium', '', '', '', '', '', '', '', 27, '', '', '', '0', '6800', '0', '', '1'),
(505, 'PE626B - Peg spare part - Black', '', '', '', '', '', '', '', 27, '', '', '', '0', '4900', '0', '', '1'),
(506, 'PE629A - Peg spare part - Aluminium', '', '', '', '', '', '', '', 27, '', '', '', '0', '4900', '0', '', '1'),
(507, 'PE630A - \"B-PRO\" Rider / Passenger Pegs - Aluminium', '', '', '', '', '', '', '', 27, '', '', '', '0', '5500', '0', '', '1'),
(508, 'PE630B - \"B-PRO\" Rider / Passenger Pegs - Black', '', '', '', '', '', '', '', 27, '', '', '', '0', '9000', '0', '', '1'),
(509, 'PE640B - \"RALLY\" Rider / Passenger Pegs - Black', '', '', '', '', '', '', '', 27, '', '', '', '0', '6900', '0', '', '1'),
(510, 'PE642B - \"STREET\" Rider / Passenger Pegs - Black', '', '', '', '', '', '', '', 27, '', '', '', '0', '9000', '0', '', '1'),
(511, 'PE672A - Pegs Mount Kit - R1', '', '', '', '', '', '', '', 27, '', '', '', '0', '9000', '0', '', '1'),
(512, 'PE676A - Pegs Mount Kit - TMAX', '', '', '', '', '', '', '', 27, '', '', '', '0', '9000', '0', '', '1'),
(513, 'PE711A - Pegs Mount Kit - Monster', '', '', '', '', '', '', '', 27, '', '', '', '0', '5200', '0', '', '1'),
(514, 'PE712A - Pegs Mount Kit - Street fighter', '', '', '', '', '', '', '', 27, '', '', '', '0', '6500', '0', '', '1'),
(515, 'PE713A - Pegs Mount Kit - Hyper821/MTS/MTS950', '', '', '', '', '', '', '', 27, '', '', '', '0', '3990', '0', '', '1'),
(516, 'PE716A - Peg Adapter Kit - Monster821 Rider /Passenger', '', '', '', '', '', '', '', 27, '', '', '', '0', '2500', '0', '', '1'),
(517, 'PE786B - Pegs Mount Kit -  R9T Passenger', '', '', '', '', '', '', '', 27, '', '', '', '0', '6900', '0', '', '1'),
(518, 'PE792A - Peg Adapter Kit', '', '', '', '', '', '', '', 27, '', '', '', '0', '7900', '0', '', '1'),
(519, 'PE795A - Peg Adapter Kit', '', '', '', '', '', '', '', 27, '', '', '', '0', '4900', '0', '', '1'),
(520, 'PE798A - Ped Adapter Kit GS1200', '', '', '', '', '', '', '', 27, '', '', '', '0', '8900', '0', '', '1'),
(521, 'PER318B - Rearset Control Kit \"RRC\"  Z800', '', '', '', '', '', '', '', 1, '', '', '', '0', '11900', '0', '', '1'),
(522, 'PER411B - Rearset Control Kit \"RRC\" BMW S1000RR 2015', '', '', '', '', '', '', '', 1, '', '', '', '0', '11900', '0', '', '1'),
(523, 'PM317B - Engine Guard ER-6N 2012', '', '', '', '', '', '', '', 1, '', '', '', '0', '11900', '0', '', '1'),
(524, 'PM321B - Clutch Protection Z1000', '', '', '', '', '', '', '', 1, '', '', '', '0', '18500', '0', '', '1'),
(525, 'PM322B - Generator Case Protection ', '', '', '', '', '', '', '', 22, '', '', '', '0', '24000', '0', '', '1'),
(526, 'PM351B - Fairing/ Engine Guard - 796/1100', '', '', '', '', '', '', '', 25, '', '', '', '0', '3990', '0', '', '1'),
(527, 'PM352B - Fairing/ Engine Guard - Streetfighter', '', '', '', '', '', '', '', 14, '', '', '', '0', '9300', '0', '', '1'),
(528, 'PM353B - Water Pump Protection Hypermotard/Strada 2013', '', '', '', '', '', '', '', 14, '', '', '', '0', '9900', '0', '', '1'),
(529, 'PM354A - Engine Guard “B-PRO” Monster 821', '', '', '', '', '', '', '', 14, '', '', '', '0', '13500', '0', '', '1'),
(530, 'PM503A - Water Pump Cover - Multi/SF', '', '', '', '', '', '', '', 9, '', '', '', '0', '20000', '0', '', '1'),
(531, 'PM504B - Fairing / Engine Guard MTS', '', '', '', '', '', '', '', 9, '', '', '', '0', '20000', '0', '', '1'),
(532, 'PM505B - Fairing/ Radiator Guard - Diavel', '', '', '', '', '', '', '', 9, '', '', '', '0', '20000', '0', '', '1'),
(533, 'PM506A - Water Pump Protection - Diavel', '', '', '', '', '', '', '', 13, '', '', '', '0', '6500', '0', '', '1'),
(534, 'PM508B - Fairing/ Engine Guard Hyper821', '', '', '', '', '', '', '', 13, '', '', '', '0', '6500', '0', '', '1'),
(535, 'PM509B - Fairing/ Engine Guard Hyper821', '', '', '', '', '', '', '', 13, '', '', '', '0', '11000', '0', '', '1'),
(536, 'PM570A - Right Engine Guard Z1000', '', '', '', '', '', '27', '', 24, '', '', '', '0', '5000', '0', '', '1'),
(537, 'PM572A - Engine Guard  Z800', '', '', '', '', '', '', '', 5, '', '', '', '0', '32000', '0', '', '1'),
(538, 'PM580U - Frame Slider Kit S1000RR 2015', '', '', '', '', '', '', '', 5, '', '', '', '0', '32000', '0', '', '1'),
(539, 'PM581A - Engine Guard RH S1000RR 2012-18 - Alumnium', '', '', '', '', '', '21', '', 12, '', '', '', '0', '13000', '0', '', '1'),
(540, 'PM581B - Engine Guard RH S1000RR 2012-18 - Black', '', '', '', '', '', '', '', 11, '', '', '', '0', '118000', '0', '', '1'),
(541, 'PM581U - Engine Guard RH S1000RR 2012-18 - Blue', '', '', '', '', '', '', '', 11, '', '', '', '0', '98000', '0', '', '1'),
(542, 'PM582A - Engine Guard LH S1000RR 2012-18 - Alumnium', '', '', '', '', '', '', '', 11, '', '', '', '0', '36800', '0', '', '1'),
(543, 'PM582B - Engine Guard LH S1000RR 2012-18 - Black', '', '', '', '', '', '', '', 11, '', '', '', '0', '56600', '0', '', '1'),
(544, 'PM582U - Engine Guard LH S1000RR 2012-18 - Blue', '', '', '', '', '', '', '', 2, '', '', '', '0', '14990', '0', '', '1'),
(545, 'PM583A - Engine Guard S1000RR \'15', '', '', '', '', '', '', '', 2, '', '', '', '0', '39000', '0', '', '1'),
(546, 'PM590U - Engine Guard S1000RR 2015 (New version)', '', '', '', '', '', '', '', 2, '', '', '', '0', '39000', '0', '', '1'),
(547, 'PT213B - License Support Plate \"FOX\" TMAX530', '', '', '', '', '', '', '', 3, '', '', '', '0', '2500', '0', '', '1'),
(548, 'PT309B - License Support Plate \"FOX\" ER6N \'09 up-', '', '', '', '', '', '', '', 3, '', '', '', '0', '5000', '0', '', '1'),
(549, 'PT313B - License Support Plate \"FOX\"  Z800', '', '', '', '', '', '', '', 3, '', '', '', '0', '3000', '0', '', '1'),
(550, 'PT314B - License Support Plate \"FOX\" ER-6N 2012', '', '', '', '', '', '', '', 3, '', '', '', '0', '5000', '0', '', '1'),
(551, 'PT504B - License Support Plate \"FOX\" HYPER', '', '', '', '', '', '', '', 3, '', '', '', '0', '12000', '0', '', '1'),
(552, 'PT506B - License Support Plate \"FOX\" SF', '', '', '', '', '', '', '', 3, '', '', '', '0', '32000', '0', '', '1'),
(553, 'PT509B - License Support Plate \"ARM Side\" Diavel', '', '', '', '', '', '', '', 3, '', '', '', '0', '28500', '0', '', '1'),
(554, 'PT510B - License Support Plate \"Side Mount\" Diavel', '', '', '', '', '', '', '', 3, '', '', '', '0', '39000', '0', '', '1'),
(555, 'PT705B - License Support Plate \"FOX\" C600/C650 2017', '', '', '', '', '', '', '', 3, '', '', '', '0', '5500', '0', '', '1'),
(556, 'PT706B - \"Side Arm\" License Plate Support Kit - R9T', '', '', '', '', '', '', '', 3, '', '', '', '0', '800', '0', '', '1'),
(557, 'PT707B - \"Outside\" License Plate Support Kit - R9T', '', '', '', '', '', '', '', 3, '', '', '', '0', '5500', '0', '', '1'),
(558, 'PT709B - \"FOX\" License Plate Support Kit - R9T', '', '', '', '', '', '', '', 3, '', '', '', '0', '5500', '0', '', '1'),
(559, 'PT711B - \"FOX\" License Plate Support Kit with Tail Light - R9T', '', '', '', '', '', '', '', 3, '', '', '', '0', '30000', '0', '', '1'),
(560, 'PW150A - Front Wheel Protection -GSXR1000 -9-11', '', '', '', '', '', '', '', 3, '', '', '', '0', '4500', '0', '', '1'),
(561, 'PW200A - Front Wheel Protection  Monster/SF848', '', '', '', '', '', '', '', 3, '', '', '', '0', '2500', '0', '', '1'),
(562, 'PW201A - Rear Wheel Protection Monster696/795', '', '', '', '', '', '', '', 3, '', '', '', '0', '2000', '0', '', '1'),
(563, 'PW202A - Front Wheel Protection Streetfighter', '', '', '', '', '', '', '', 3, '', '', '', '0', '', '0', '', '1'),
(564, 'PW203A - Rear Wheel Protection Streetfighter', '', '', '', '', '', '', '', 4, '', '', '', '0', '60000', '0', '', '1'),
(565, 'PW204A - Rear Wheel Protection Monster796/1100  SF848', '', '', '', '', '', '', '', 4, '', '', '', '0', '55000', '0', '', '1'),
(566, 'PW206A - Front Wheel Protection Diavel', '', '', '', '', '', '', '', 4, '', '', '', '0', '58000', '0', '', '1'),
(567, 'PW208A - Front Wheel Protection  1199/899', '', '', '', '', '', '', '', 4, '', '', '', '0', '58000', '0', '', '1'),
(568, 'PW209A - Front Wheel Protection SFs/MTS/ Hyper821', '', '', '', '', '', '2', '', 10, '', '', '', '0', '7200', '0', '', '1'),
(569, 'PW302A - Front Wheel Protection Z1000', '', '', '', '', '', '', '', 33, '', '', '', '0', '350000', '0', '', '1'),
(570, 'PW305A - Front Wheel Protection Z800', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(571, 'PW308A - Front Wheel Protection Z1000\' 2014', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(572, 'PW701A - Front Wheel Protection S1000RR', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(573, 'PW704A - Front Wheel Protection R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(574, 'SC010A - Bike Stand Support M6 (pair) - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(575, 'SC010B - Bike Stand Support M6 (pair) - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(576, 'SC010G - Bike Stand Support M6 (pair) - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(577, 'SC010R - Bike Stand Support M6 (pair) - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(578, 'SC020A - Bike Stand Support M8 (pair) - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(579, 'SC020B - Bike Stand Support M8  (pair) - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(580, 'SC020G - Bike Stand Support M8  (pair) - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(581, 'SC020R - Bike Stand Support M8  (pair) - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(582, 'SC020U - Bike Stand Support M8  (pair) - Blue', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(583, 'SC030A - Bike Stand Support M10 (pair) - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(584, 'SC030B - Bike Stand Support M10 (pair) - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(585, 'SC030G - Bike Stand Support M10 (pair) - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(586, 'SC030R - Bike Stand Support M10 (pair) - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(587, 'TA023B - Frame Hole Caps - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(588, 'TA124B - Frame Hole Cap, 24mm - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(589, 'TA124G - Frame Hole Cap, 24mm - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(590, 'TF010A - Gas Cap Kawasaki all - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(591, 'TF010B - Gas Cap Kawasaki all - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(592, 'TF040A - Gas Cap Diavel / Monster - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(593, 'TF040B - Gas Cap Diavel / Monster', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(594, 'TF041A - Gas Cap  748/848/916/996/998/1098/1198 - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(595, 'TF041B - Gas Cap 748/848/916/996/998/1098/1198 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(596, 'TF042A - Gas Cap  SF XDIAVEL Panigale - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(597, 'TF042B - Gas Cap  SF XDIAVEL Panigale - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(598, 'TF051A - Gas Cap  F800R/ R1200GS/ S1000RR - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(599, 'TF051B - Gas Cap S1000RR - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(600, 'TP008A - Oil Filler Cap (Ducati wetclutch/ ER6, Z1000 / Triumph) - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(601, 'TP008B - Oil Filler Cap (Ducati wetclutch/ ER6, Z1000 / Triumph) - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(602, 'TP008G - Oil Filler Cap (Ducati wetclutch/ ER6, Z1000 / Triumph) - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(603, 'TP008R - Oil Filler Cap (Ducati wetclutch/ ER6, Z1000 / Triumph) - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(604, 'TP009B - Oil Filler Cap (Suzuki) - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(605, 'TP009G - Oil Filler Cap (Suzuki) - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(606, 'TP009R - Oil Filler Cap (Suzuki) - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(607, 'TP010A - Oil Filler Cap (Ducati DryClutch SFs, 1098,1198, SP1000) - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(608, 'TP010B - Oil Filler Cap (Ducati DryClutch SFs, 1098,1198, SP1000) - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(609, 'TP010G - Oil Filler Cap (Ducati DryClutch SFs, 1098,1198, SP1000) - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(610, 'TP010R - Oil Filler Cap (Ducati DryClutch SFs, 1098,1198, SP1000) - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(611, 'TP011B - Oil Filler Cap (Yamaha) - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(612, 'TP011G - Oil Filler Cap (Yamaha) - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(613, 'TP011R - Oil Filler Cap (Yamaha) - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(614, 'TP016A - Brake/Clutch Fluid Caps Dia.49mm - Aluminium  (Big)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(615, 'TP016B - Brake/Clutch Fluid Caps Dia.49mm - Black  (Big)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(616, 'TP016G - Brake/Clutch Fluid Caps Dia.49mm - Gold  (Big)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(617, 'TP016R - Brake/Clutch Fluid Caps Dia.49mm - Red  (Big)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(618, 'TP017A - Brake/Clutch Fluid Caps M34x4 Ø37mm - Aluminium(Small)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(619, 'TP017B - Brake/Clutch Fluid Caps M34x4 Ø37mm - Black (Small)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(620, 'TP017G - Brake/Clutch Fluid Caps M34x4 Ø37mm - Gold (Small)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(621, 'TP017R - Brake/Clutch Fluid Caps M34x4 Ø37mm - Red (Small)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(622, 'TP021A - Oil Filler Cap Aprilia - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(623, 'TP021B - Oil Filler Cap Aprilia - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(624, 'TP021G - Oil Filler Cap Aprilia - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(625, 'TP021R - Oil Filler Cap Aprilia - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(626, 'TP023A - Oil Filler Cap yamaha Tmax - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(627, 'TP023B - Oil Filler Cap yamaha Tmax - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(628, 'TP023G - Oil Filler Cap yamaha Tmax - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(629, 'TP023R - Oil Filler Cap yamaha Tmax - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(630, 'TP023U - Oil Filler Cap yamaha Tmax - Blue', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(631, 'TP026A - Break Fluid-Cap, Rear, M45x4 Diavel - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(632, 'TP026B - Break Fluid-Cap, Rear, M45x4 Diavel - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(633, 'TP026U - Break Fluid-Cap, Rear, M45x4 Diavel - Blue', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(634, 'TP027B - Oil Filler Cap S1000RR - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(635, 'TP027R - Oil Filler Cap S1000RR - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(636, 'TP027U - Oil Filler Cap S1000RR - Blue', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(637, 'TP028A - Break Fluid-Tank, Front, M52x4 - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(638, 'TP028U - Break Fluid-Tank, Front, M52x4 - Blue', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(639, 'TP029A - Camshaft Cover S1000RR - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(640, 'TP029B - Camshaft Cover S1000RR - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(641, 'TP029U - Camshaft Cover - Blue', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(642, 'TP030A - Oil Filler Cap BMW R9T - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(643, 'TP032B - Brake Fluid Caps -1pc - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(644, 'TP032U - Brake Fluid Caps -1pc - Blue', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(645, 'TP034A - Brake Fluid Caps - 1pc - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(646, 'TP034B - Brake Fluid Caps - 1pc - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(647, 'TP035A - Clutch Fluid Tank caps - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(648, 'TP035B - Clutch Fluid Tank caps - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(649, 'TT003A - Heel Guard Kevlar - Silver', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(650, 'TT003B - Heel Guard Kevlar - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(651, 'TT006A - Heel Guard  RRC - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(652, 'ZBW025A - Shock Absorber / Pivot Adjustment R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(653, 'ZBW026A - Pivot Cover R9T - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(654, 'ZBW026B - Pivot Cover R9T - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(655, 'ZBW027A - Front Brake protection R9T - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(656, 'ZBW027U - Front Brake protection R9T - Blue', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(657, 'ZBW028A - Hub Cover, Rear R9T  - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(658, 'ZBW028U - Hub Cover. Rear R9T - Blue', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(659, 'ZBW029A - Adjustable torque bar R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(660, 'ZBW030A - Sprocket Cover R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(661, 'ZBW031K - Chain Guard R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(662, 'ZBW033A - Rear Frame Hole Cap R9T - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(663, 'ZBW033B - Rear Frame Hole Cap R9T - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(664, 'ZBW033U - Frame Hole Cap R9T - Blue', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(665, 'ZBW034A - Swing Arm Hole Plug R9T - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(666, 'ZBW034B - Swing Arm Hole Plug R9T - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(667, 'ZBW034U - Rear Fork Hole Cap R9T - Blue', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(668, 'ZBW035K - Head Cover Kevlar R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(669, 'ZBW039B - Frame Hole Cap BMW C600 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(670, 'ZBW039U - Frame Hole Cap BMW C600 - Blue', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(671, 'ZBW042A - Headlight Fairing R9T - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(672, 'ZBW042B - Headlight Fairing R9T - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(673, 'ZBW043B - Swing Arm Caps GS1200', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(674, 'ZBW045A - Engine Cover R9T - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(675, 'ZBW045B - Engine Cover R9T - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(676, 'ZBW048B - Undertail Cover R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(677, 'ZBW051A - Front Fender R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(678, 'ZBW053A - Rear Fender for PT \"Side Arm\" R9T - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(679, 'ZBW053B - Rear Fender for PT \"Side Arm\" R9T - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(680, 'ZBW054A - Intake tips R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(681, 'ZBW055AB - Head Cover R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(682, 'ZBW056B - Exhuast End Cap R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(683, 'ZBW058A - Rear Fender for Undertail R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(684, 'ZBW059A - Triple Clamp Hole Cover Kit R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(685, 'ZBW063B - Side Stand Base GS1200', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(686, 'ZBW064A - Headlight Guard GS1200', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(687, 'ZBW065B - Radiator Guard GS1200', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(688, 'ZDM036G - Pressure Plate Gold Ducati (Star)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(689, 'ZDM081A - Cable Cover (Monster/ Hyper)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(690, 'ZDM082A - Chain Guard Hyper 1100', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(691, 'ZDM086G - Crankshaft Cover Gold (each)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(692, 'ZDM088A - Timing Belt Cover - Aluminium (696/796/Hyper796)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(693, 'ZDM088B - Timing Belt Cover - Black (696/796/Hyper796)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(694, 'ZDM090B - Sprocket Cover SF - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(695, 'ZDM094A - Rear Hub Cover With Protection Diavel /1199', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(696, 'ZDM095A - Shock Absorber/Pivot Adjustment Diavel - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(697, 'ZDM095B - Shock Absorber/Pivot Adjustment Diavel - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(698, 'ZDM095R - Shock Absorber/Pivot Adjustment Diavel - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(699, 'ZDM096A - Sprocket Cover Diavel - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(700, 'ZDM096B - Sprocket Cover Diavel - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(701, 'ZDM097A - Clutch Cover Protection Diavel', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(702, 'ZDM098K - Rear Fender Kevlar Diavel', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(703, 'ZDM099A - Rear Hub Cover with Protection 899', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(704, 'ZDM100A - Front-Spoiler Diavel - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(705, 'ZDM100B - Front-Spoiler Diavel - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(706, 'ZDM100K - Front-Spoiler Diavel - Kevlar', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(707, 'ZDM105A - Headlight Fairing Diavel 2015 – Aluminum', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(708, 'ZDM105B - Headlight Fairing Diavel 2015 – Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(709, 'ZDM107B - Front Spoiler Adapter for MA207 Handlebar - Diavel 2015', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(710, 'ZDM110B - Front Spoiler Adapter for OEM handlebar - Diavel -2014', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(711, 'ZDM111B - Front Spoiler Adapter for MA207 Handlebar - Diavel -2014', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(712, 'ZDM112A - Frame Plug Kit Diavel - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(713, 'ZDM112B - Frame Plug Kit Diavel - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(714, 'ZDM112G - Frame Plug Kit Diavel - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(715, 'ZDM112R - Frame Plug Kit Diavel - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(716, 'ZDM113B - Clutch Cover Protection 1199 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(717, 'ZDM114A - Clutch Cover Protection 899 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(718, 'ZDM115A - Frame Hole Caps Kit 1199  - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(719, 'ZDM115B - Frame Hole Caps Kit 1199 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(720, 'ZDM119A - Timing Belt Cover (Vertical) SF/M821/M1200  - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(721, 'ZDM119B - Timing Belt Cover (Vertical) SF/M821/M1200 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(722, 'ZDM120A - Timing Belt Cover (Horizontal) SF/M821/M1200  - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(723, 'ZDM120B - Timing Belt Cover (Horizontal) SF/M821/M1200 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(724, 'ZKW007A - Injection Guard Z1000', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(725, 'ZKW012B - Muffler Guard Z1000', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(726, 'ZKW013B - Frame Hole Cap Z1000', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(727, 'ZKW015B - Sprocket Cover Z800', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(728, 'ZKW018K - Left Engine Guard Z800', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(729, 'ZKW024K - Chain Guard Z800', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(730, 'ZKW026A - Headlight Fairing Z800 Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(731, 'ZKW026B - Headlight Fairing Z800 Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(732, 'ZKW027B - Design Kit Z800', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(733, 'ZKW030B - Headlight Fairing Z1000\'2014', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(734, 'ZKW031B - Design Kit Z1000 \'2014', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(735, 'ZYF007B - Rear Wheel Hub Cover Tmax 530', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(736, 'LBJ206A - Rear Brake Lever \"3D\" adjustable Tmax530\'17 - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(737, 'LBJ206B - Rear Brake Lever \"3D\" adjustable Tmax530\'17 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(738, 'LBJ206G - Rear Brake Lever \"3D\" adjustable Tmax530\'17 - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(739, 'LBJ208A - Front Brake Lever \"3D\" adjustable Tmax530\'17 - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(740, 'LBJ208B - Front Brake Lever \"3D\" adjustable Tmax530\'17 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(741, 'LBJ208G - Front Brake Lever \"3D\" adjustable Tmax530\'17 - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(742, 'PT228B - \"FOX\" License Plate Support Tmax530\'17 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(743, 'ZYF033B - Sump Cover (RH) Tmax530\'17 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(744, 'ZYF034B - Pully Cover (Rear) Tmax530\'17 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(745, 'ZYF035A - Footrest Rear Side Tmax530\'17 - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(746, 'ZYF036A - Front /Rear Beake Fluid Tank Cap Tmax530\'17 - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(747, 'ZYF036B - Front /Rear Beake Fluid Tank Cap Tmax530\'17 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(748, 'ZYF036U - Front /Rear Beake Fluid Tank Cap Tmax530\'17 - Blue', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(749, 'ZYF037A - Parking Brake Lever  Tmax530\'17 - Aluminium (new)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(750, 'ZYF037B - Parking Brake Lever Tmax530\'17 - Black (new)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(751, 'ZYF037U - Parking Brake Lever Tmax530\'17 - Blue (new)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(752, 'ZYF038A - Mirror Hole Cap Tmax530\'17 / pair - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(753, 'ZYF038B - Mirror Hole Cap Tmax530\'17 / pair - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(754, 'ZYF038U - Mirror Hole Cap Tmax530\'17 / pair - Blue', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(755, 'ZYF039B - Sump Cover (LH) Tmax530\'17 / pair - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(756, 'CF010A - Headlight Fairing Ducati Scrambler - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(757, 'CF010B - Headlight Fairing Ducati Scrambler - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(758, 'ZDM131B - Headlight Fairing Adapter Ducati Scrambler', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(759, 'MA051B - Clip-On Bar Kit Ducati Scrambler', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(760, 'ZDM128B - Guage Bracket (Used with the MA051 Clip-on Bar kit)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(761, 'AZ203B - Guage Bracket (Used with 1-1/8inch Handlebar)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(762, 'TP040A - Front Brake Fluid Tank Cap Ducati Scrambler - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(763, 'TP040B - Front Brake Fluid Tank Cap Ducati Scrambler - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(764, 'ZDM129A - Front Fender Ducati Scrambler - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(765, 'ZDM132A - Rear Fender Ducati Scrambler - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(766, 'ZDM134A - Fork Tube Guards Ducati Scrambler - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(767, 'ZDM134B - Fork Tube Guards Ducati Scrambler - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(768, 'PW200AA - Front Axle Slider New Ducati Scrambler', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(769, 'PW219A - Rear Axle Slider Ducati Scrambler', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(770, 'TF142A - Gas Tank Cap \"Café Racer\" Ducati Scrambler Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(771, 'TF142B - Gas Tank Cap \"Café Racer\" Ducati Scrambler Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(772, 'ZDM123A - Timing Belt Cover Ducati Scrambler - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(773, 'ZDM123B - Timing Belt Cover Ducati Scrambler - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(774, 'ZDM127B - AIRBOX Ducati Scrambler - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(775, 'ZDM124A - Chain Guard  Ducati Scrambler - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(776, 'ZDM124B - Chain Guard  Ducati Scrambler - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(777, 'ZDM133A - Sprocket Cover Ducati Scrambler - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(778, 'ZDM133B - Sprocket Cover Ducati Scrambler - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(779, 'PM357A - Engine/ Fairing Guards \"B-PRO\" Scrambler', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(780, 'ZDM125A - Cooler Covers (right/left) Ducati Scrambler - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(781, 'ZDM125B - Cooler Covers (right/left) Ducati Scrambler - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(782, 'PE213B - Adjustable Pegs Kit  Ducati Scrambler - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(783, 'PT527B - License plate support \"OUTSIDE\" Ducati Scrambler', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(784, 'LBJ500A - Brake Levers \"3D\" Ducati (MTS/1199/899/M1200/SF) - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(785, 'LBJ500B - Brake Levers \"3D\" Ducati (MTS/1199/899/M1200/SF) - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(786, 'LCJ500A - Clutch Levers \"3D\" Ducati (MTS/1199/899/M1200/SF) - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(787, 'LCJ500B - Clutch Levers \"3D\" Ducati (MTS/1199/899/M1200/SF)  - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(788, 'PE715B - Eccentric Rider Peg Adapter ', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(789, 'FR231B - Indicator Light Adapter for Ducati Scrambler', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(790, 'LCJ500G - Clutch Lever \"3D\" Ducati - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(791, 'LBJ701A - Brake Lever\"3D\" R9T - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(792, 'LCJ705A - Clutch Lever\"3D\" R9T- Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(793, 'LBJ701B - Brake Levers \"3D\" R9T - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(794, 'LCJ705B - Clutch Levers \"3D\" R9T - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(795, 'ZBW062A -Frame Hole Caps Kit  R1200GS', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(796, 'LBR503B - Brake levers \"RRC\" (Scrambler/Hyp821/M821) - Black ', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(797, 'LCR503B - Clutch levers \"RRC\" Black (Scrambler/Hyp821/M821) - Black ', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(798, 'ZBW040A - Hub Cover Rear Protector for  BMW C600Sport /C650GT', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(799, 'CF011A - Low Headlight Fairing (Aluminium) Thruxton R 2016 - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(800, 'CF011B - Low Headlight Fairing (Aluminium) Thruxton R 2016 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(801, 'ZTH061B - Headlight Fairing Adapter for CF011 Thruxton R 2016', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(802, 'FR218B - Indicator Light Adapters for Thruxton R 2016', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(803, 'TP043A - Engine Oil Filler Cap For Thruxton R 2016 - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(804, 'TP043B - Engine Oil Filler Cap Fpr Thruxton R 2016 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(805, 'MA053A - Clip-On Bar Kit For 43mm Forks Thruxton R 2016 -Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(806, 'MA053B - Clip-On Bar Kit For 43mm Forks Thruxton R 2016 -Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(807, 'ZTH060B - Headlight Guard  Thruxton R 2016- Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(808, 'PE760A - Adapter Peg Rider - Street Twin', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(809, 'PE762A - Adapter Peg Passenger - Street Twin', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(810, 'PT109B - \"FOX\" License Plate Support CBR600RR', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(811, 'PER215B - Rear Set Control Kit \"RRC\" 1199/959/899/1299', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(812, 'PT528B - License Plate Support \"OUTSIDE\" X Diavel', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(813, 'ZDM141B - OEM/Rizoma Rear Marker Light Support for Single Seat', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(814, 'LCR706B - Clutch Lever With Adjustment \"RRC\" S1000XR - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(815, 'ZBW074A -  Intake Tips R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1');
INSERT INTO `select_your_bike` (`id`, `name_product`, `img1`, `img2`, `img3`, `img4`, `img5`, `category`, `sub_category`, `brand`, `model`, `name_color`, `name_year`, `Price`, `discount`, `quality`, `detail`, `status`) VALUES
(816, 'ZBW071B - Rear Bag Support  R9T Scrambler', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(817, 'ZBW072B - Saddlebag Support (Right) R9T Scrambler', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(818, 'ZBW076A - Engine Protection Bar R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(819, 'ZBW028B - Rear Hub Cover', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(820, 'PE772B - Eccentric Rider Peg Adapter Thruxton R 1200', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(821, 'ZTH042B - Head Light Guard Triumph Thruxton 900', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(822, 'PW706A - Front Wheel Protection R9T Racer', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(823, 'BS132B - Mirror \"Radial RS\"', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(824, 'PT662B - \"FOX\" License plate Support T120', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(825, 'EE082H - Cable Signal kit for T120', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(826, 'BS761B - Fairing sport mirror adapter R9T Racer', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(827, 'PT665B - \"FOX\" License plate Support T120 without rear fender', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(828, 'ZBW078B - Headlight Guard R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(829, 'EE140B - LED Fog Auxiliary Lights R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(830, 'PT114B - \"FOX\" License plate Support Honda X-ADV 750\'17', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(831, 'ZBW087A - Engine Protection Bar R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(832, 'ZBW085B - Airbox Cover R Nine T 1200 Racer 2017', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(833, 'ZBW081A - Headlight Fairing R9T pure/scrambler', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(834, 'GR231BS - URLO Harley Davidson - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(835, 'PE412B - Gear Lever  R9T urban GS', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(836, 'PE413B - Rear Set Control Kit R9T New version', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(837, 'FR600B - Adapter For The Mounting On Any Handlebar  Sguardo', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(838, 'GR421B - Grip Adapter R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(839, 'PER216A - Rear set Control Kit -V4 ', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(840, 'FR244B - Front indicator light adapter Monster 821/Scrambler', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(841, 'BS822B - Mirror Adapter for Ducati Panigale V4', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(842, 'GRDW222Z11B - URLO ride by wire Xdiavel only', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(843, 'FR237B - Indicator Light Adapters XADV', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(844, 'PT656B - \"Fox\" License Plate Support Triumph Street Triple 2017-18', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(845, 'PE220B - Rizoma EVO Rear Sets Ducati Xdiavel', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(846, 'PE768B - Adapter Peg T100 for Rider', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(847, 'PE769B - Adapter Peg T100 for Passenger', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(848, 'EE146H - Wiring Kit for front rizoma indicators Front Honda XADV ', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(849, 'EE154H - Wiring Kit for front rizoma indicators Rear Honda XADV', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(850, 'EE162H - Wiring Kit for front rizoma indicators Rear Honda CBR1000R 2018', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(851, 'EE167H - Wiring Kit for front rizoma indicators Front Honda CBR1000R 2018', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(852, 'AF280B - Clutch Slave Cylinder Ø30 mm - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(853, 'AF280G - Clutch Slave Cylinder Ø30 mm - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(854, 'AF280N - Clutch Slave Cylinder Ø30 mm - Natural', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(855, 'AF280R - Clutch Slave Cylinder Ø30 mm - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(856, 'AF280T - Clutch Slave Cylinder Ø30 mm - Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(857, 'AF281B - Clutch Slave Cylinder D.30mm Carbon - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(858, 'AF281G - Clutch Slave Cylinder D.30mm Carbon - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(859, 'AF281R - Clutch Slave Cylinder D.30mm Carbon - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(860, 'AF281T - Clutch Slave Cylinder D.30mm Carbon - Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(861, 'AF286B - Clutch Slave Cylinder D.28mm Panigale - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(862, 'AF286G - Clutch Slave Cylinder D.28mm Panigale - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(863, 'AF286R - Clutch Slave Cylinder D.28mm Panigale - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(864, 'AF293B - Clutch Slave Cylinder Ø 30 MM Ducati SBK Panigale Series - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(865, 'AF293G - Clutch Slave Cylinder Ø 30 MM Ducati SBK Panigale Series - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(866, 'AF293R - Clutch Slave Cylinder Ø 30 MM Ducati SBK Panigale Series - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(867, 'BM500B - Larger Sidestand Foot (Hyper821/MTS2010-2014)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(868, 'BM501B - Kickstand Pad Ducati Monster 821/ 1200 / S / R', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(869, 'BM502B - Kickstand Pad Ducati Scrambler 800', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(870, 'CC180B - Timing Belt Cover M1 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(871, 'CC180T - Timing Belt Cover M1 - Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(872, 'CF260B - Timing Inspection Cover SF/ MTS1200 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(873, 'CF260G - Timing Inspection Cover SF/ MTS1200 - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(874, 'CF260R - Timing Inspection Cover SF/ MTS1200 - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(875, 'CF260T - Timing Inspection Cover SF/ MTS1200 - Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(876, 'CF261B - Timing Inspection Cover Ducati for Monster/ Diavel - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(877, 'CF261G - Timing Inspection Cover Ducati for Monster/ Diavel - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(878, 'CF261R - Timing Inspection Cover Ducati for Monster/ Diavel - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(879, 'CF261T - Timing Inspection Cover Ducati for Monster/ Diavel - Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(880, 'CK160B - Side Cap for Monster795/796 - Black ', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(881, 'CK160G - Side Cap for Monster795/796 - Gold ', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(882, 'CK160R - Side Cap for Monster795/796 - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(883, 'CK161B - Cams Cover Ducati Panigale 1199 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(884, 'CK161G - Cams Cover Ducati Panigale 1199 - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(885, 'CK161R - Cams Cover Ducati Panigale 1199 - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(886, 'CM230B - Handlebars Ends - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(887, 'CM230G - Handlebars Ends - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(888, 'CM231B - Handlebars Ends - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(889, 'CM231G - Handlebars Ends - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(890, 'CP150B - Sprocket Cover for Monster795/796/ Scrambler/STF - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(891, 'CP150G - Sprocket Cover for Monster795/796/ Scrambler/STF - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(892, 'CP150R - Sprocket Cover for Monster795/796/ Scrambler/STF - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(893, 'CP150T - Sprocket Cover for Monster795/796/ Scrambler/STF - Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(894, 'CP151B - Sprocket Cover Carbon for Diavel - Black ', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(895, 'CP151G - Sprocket Cover Carbon for Diavel - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(896, 'CP151T - Sprocket Cover Carbon for Diavel - Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(897, 'CP154B - Sprocket Cover Hyper821 Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(898, 'CP154G - Sprocket Cover Hyper821 Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(899, 'CP154T - Sprocket Cover Hyper821 Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(900, 'CS803B - Mirror Hole Caps Panigale 1199 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(901, 'CS803G - Mirror Hole Caps Panigale 1199 - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(902, 'CS803R - Mirror Hole Caps Panigale 1199 - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(903, 'CS803T - Mirror Hole Caps Panigale 1199 - Titanium ', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(904, 'DA382B - Rear Wheel Axle Nut Sets Ergal 7075 Small - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(905, 'DA382G - Rear Wheel Axle Nut Sets Ergal 7075 Small - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(906, 'DA382R - Rear Wheel Axle Nut Sets Ergal 7075 Small - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(907, 'DA383B - 5 Hole Sprocket Flange Nut Kit - Black ', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(908, 'DA383G - 5 Hole Sprocket Flange Nut Kit - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(909, 'DA383R - 5 Hole Sprocket Flange Nut Kit - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(910, 'DA384B - 6 Hole Sprocket Flange Nut Kit - Black  ', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(911, 'DA384G - 6 Hole Sprocket Flange Nut Kit - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(912, 'DA384R - 6 Hole Sprocket Flange Nut Kit - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(913, 'DA386B - Nuts Sets Rear Sprocket Flange Ducati-M796/HYP821 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(914, 'DA386G - Nuts Sets Rear Sprocket Flange Ducati-M796/HYP821 - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(915, 'DA386R - Nuts Sets Rear Sprocket Flange Ducati-M796/HYP821 - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(916, 'DA387B - Nuts Ring Gear Ducati M10X1.25 6 pcs - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(917, 'DA387G - Nuts Ring Gear Ducati M10X1.25 6 pcs - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(918, 'DA387R - Nuts Ring Gear Ducati M10X1.25 6 pcs - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(919, 'DA394B - Rear Wheel Axle Nut Sets Ergal 7075 Big - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(920, 'DA394G - Rear Wheel Axle Nut Sets Ergal 7075 Big - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(921, 'DA394R - Rear Wheel Axle Nut Sets Ergal 7075 Big - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(922, 'DA394T - Rear Wheel Axle Nut Sets Ergal 7075 Big - Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(923, 'DA396B - Front Wheel Nut (all Model)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(924, 'DA401B - Rear Wheel Nuts Ducati Panigale 959 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(925, 'DA401G - Rear Wheel Nuts Ducati Panigale 959 - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(926, 'DA401R - Rear Wheel Nuts Ducati Panigale 959 - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(927, 'FL500B - Rear Sprocket Flange 5 Hole - Black ', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(928, 'FL500G - Rear Sprocket Flange 5 hole - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(929, 'FL500R - Rear Sprocket Flange 5 hole - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(930, 'FL501B - Rear Sprocket Flange 6 hole - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(931, 'FL501G - Rear Sprocket Flange 6 hole - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(932, 'FL501R - Rear Sprocket Flange 6 hole - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(933, 'FL501T - Rear Sprocket Flange 6 hole - Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(934, 'FL504BS - Rear Sprocket Flange Bicolor - Black (MTS/Diavel/1199/SS/SF)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(935, 'FL504RS - Rear Sprocket Flange Bicolor - Red (MTS/Diavel/1199/SS/SF)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(936, 'GH350B - Ring Nut Hyper796/Monster796/1100/ MTS1200/1260/Scrambler - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(937, 'GH350G - Ring Nut Hyper796/Monster796/1100/ MTS1200/1260/Scrambler- Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(938, 'GH350R - Ring Nut Hyper796/Monster796/1100/ MTS1200/1260/Scrambler- Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(939, 'GH351B - Ring Nut Diavel/Xdiavel/Hyper1100 - Black ', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(940, 'GH351R - Ring Nut Diavel/Xdiavel/Hyper1100 - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(941, 'GH354B - Ring Nut Ducati SBK Panigale Series - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(942, 'GH354G - Ring Nut Ducati SBK Panigale Series - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(943, 'GH354R - Ring Nut Ducati SBK Panigale Series - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(944, 'KS250B - Kit Caps Bleed Universal 6 pz - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(945, 'KS250G - Kit Caps Bleed Universal 6 pz - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(946, 'KS250L - Kit Caps Bleed Universal 6 pz - Blue', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(947, 'KS250R - Kit Caps Bleed Universal 6 pz - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(948, 'KS250T - Kit Caps Bleed Universal 6 pz - Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(949, 'KS252B - Wheel Valve Caps - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(950, 'KS252G - Wheel Valve Caps - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(951, 'KS252L - Wheel Valve Caps - Blue', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(952, 'KS252R - Wheel Valve Caps - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(953, 'KV302B - Fairing Screw Ducati Multistrada 1200 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(954, 'KV302R - Fairing Screw Ducati Multistrada 1200 - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(955, 'KV315B - Screws Radiator Ducati Hypermotard 821 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(956, 'KV315G - Screws Radiator Ducati Hypermotard 821 - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(957, 'KV315R - Screws Radiator Ducati Hypermotard 821 - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(958, 'KV316B - Screws Dashboard Hypermotard 821 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(959, 'KV316G - Screws Dashboard Hypermotard 821 - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(960, 'KV316R - Screws Dashboard Hypermotard 821 - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(961, 'KV317B - Kit Screws Side Panels+Rear Fairing Hypermotard 821 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(962, 'KV317G - Kit Screws Side Panels+Rear Fairing Hypermotard 821 - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(963, 'KV317R - Kit Screws Side Panels+Rear Fairing Hypermotard 821 - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(964, 'PA400N - Cylinder Head Shield Ducati', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(965, 'PA401N - Ducati Multi. 1200 ABS Sensor Protection', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(966, 'PE100B - Adjustable Rear Sets for Rider Monster 696/796/1100 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(967, 'PE110B - Passenger Peg Kit Monster 696/796/1100 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(968, 'PE150B - Adjustable rear sets for Rider Streetfighter - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(969, 'PE215B - Touting pegs kit Ducati Multistrada 1200 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(970, 'PE215R - Touting pegs kit Ducati Multistrada 1200 - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(971, 'PE215T - Touting pegs kit Ducati Multistrada 1200 - Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(972, 'PE216B - Touring Pegs Kit Diavel- Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(973, 'PE216R - Touring Pegs Kit  Diavel- Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(974, 'PE216T - Touring Pegs Kit  Diavel - Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(975, 'PE218B - Adjustable Rear Sets Ducati Multistrada 1200 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(976, 'PE219B - Rider Footpegs Kit Ducati Multistrada 1200 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(977, 'PE219T - Rider Footpegs Kit Ducati Multistrada 1200 - Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(978, 'PE220B - Adjustable Rear Sets Ducati Multi 1200 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(979, 'PE220T - Adjustable Rear Sets Ducati Multi 1200 - Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(980, 'PE222B - Adjustable Rear Sets Ducati Diavel - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(981, 'PE245B - \"EASY\" Rider Footpegs Kit Ducati Multistrada 1200\' 2015', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(982, 'PE430B - Adjustable Rear Sets Rider Ducati Hypermotard 821', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(983, 'PE431B - Adjustable Rear Sets Passenger Ducati Hypermotard 821', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(984, 'PEA01B - Pegs Kit Easy And Touring - Adapters Ducati Multistrada 1200', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(985, 'PEL01B -  Gear Lever MTS', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(986, 'PS410B - Triple Clamps Ducati Monster 696/796/1100', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(987, 'PS510B - Triple Clamps Ducati Hypermotard 821', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(988, 'PS523B - Triple Clamps Ducati Hypermotard 821/939', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(989, 'RC100B - Knob Ducati Multistrada (kit : RE372R + XRC100) - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(990, 'RC100R - Knob Ducati Multistrada (kit : RE372R + XRC100) - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(991, 'RM241B - Riser Complete Ducati Hypermotard 821/939', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(992, 'RP9L0B - Folding Gearshift Lever Peg - Eccentric (Left)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(993, 'RP9R0B - Folding Rear Brake Lever Peg - Eccentric (Right)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(994, 'SE500B - Fluid Oil Reservior 12ml REBEL - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(995, 'SE601BG - Fluid Oil Reservoir Brake-Clutch 12 ml Body Black - Cap Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(996, 'SE601BR - Fluid Oil Reservoir Brake-Clutch 12 ml Body Black - Cap Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(997, 'SE601BT - Fluid Oil Reservoir Brake-Clutch 12 ml Body Black - Cap Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(998, 'SE601GB - Fluid Oil Reservoir Brake-Clutch 12 ml Body Gold - Cap Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(999, 'SE601RB - Fluid Oil Reservoir Brake-Clutch 12 ml Body Red - Cap Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1000, 'SE601TB - Fluid Oil Reservoir Brake-Clutch 12 ml Body Titanium - Cap Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1001, 'SE605BG - Fluid Oil Reservoir Brake-Clutch 25 ml Body Black - Cap Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1002, 'SE605BR - Fluid Oil Reservoir Brake-Clutch 25 ml Body Black - Cap Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1003, 'SE605BT - Fluid Oil Reservoir Brake-Clutch 25 ml Body Black - Cap Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1004, 'SE605GB - Fluid Oil Reservoir Brake-Clutch 25 ml Body Gold - Cap Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1005, 'SE605RB - Fluid Oil Reservoir Brake-Clutch 25 ml Body Red - Cap Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1006, 'SE605TB - Fluid Oil Reservoir Brake-Clutch 25 ml Body Titanium - Cap Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1007, 'TA150B - Tank Cap Exspansion Tank Radiator Ducati - Balck', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1008, 'TA150G - Tank Cap Exspansion Tank Radiator Ducati - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1009, 'TA150R - Tank Cap Exspansion Tank Radiator Ducati - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1010, 'TA150T - Tank Cap Exspansion Tank Radiator Ducati - Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1011, 'TF445B - Rear Brake-Clutch Cap M34X4 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1012, 'TF445G - Rear Brake-Clutch Cap M34X4 - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1013, 'TF445R - Rear Brake-Clutch Cap M34X4 - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1014, 'TF445T - Rear Brake-Clutch Cap M34X4 - Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1015, 'TS323B - Fuel Tank Cap \"Fast Open \"Aprilia/ Ducati - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1016, 'TS323G - Fuel Tank Cap \"Fast Open \"Aprilia/ Ducati - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1017, 'TS323R - Fuel Tank Cap \"Fast Open \"Aprilia/ Ducati - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1018, 'TS323T - Fuel Tank Cap \"Fast Open \"Aprilia/ Ducati - Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1019, 'TT312B - Frame Cap Sets for Diavel  Carbon - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1020, 'TT312G - Frame Cap Sets for Diavel  Carbon - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1021, 'TT317B - Frame Cap Sets - Diavel Logo - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1022, 'TT321B - Frame Cap Sets Ducati Panigale 899/1199 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1023, 'TT321G - Frame Cap Sets Ducati Panigale 899/1199 - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1024, 'TT321R - Frame Cap Sets Ducati Panigale 899/1199 - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1025, 'TT326B - Frame Cap Sets Ducati Hypermotard 821/SP 821- Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1026, 'TT326G - Frame Cap Sets Ducati Hypermotard 821/SP 821- Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1027, 'TT326R - Frame Cap Sets Ducati Hypermotard 821/SP 821- Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1028, 'VA202G - Oil Breather Valve - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1029, 'VA202R - Oil Breather Valve - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1030, 'ZA940Y - Carbon CNC - Side Exhaust Protection Hypermotard 821', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1031, 'ZA941Y - Carbon CNC - Exhaust Heat Shield Terminal Hypermotard 821', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1032, 'ZA942Y - Carbon CNC - Protect Radiator Side Panels Right Left Hypermotard 821', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1033, 'ZA943Y - Carbon CNC - Side Panels Below The Tank Hypermotard 821', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1034, 'ZA944Y - Carbon CNC - Rear Fender Hypermotard 821', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1035, 'ZA945Y - Carbon CNC - Cover Instrumentation Hypermotard 821', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1036, 'ZA946Y - Carbon CNC - Cover Fuel Tank Cap Hypermotard 821', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1037, 'ZA947Y - Carbon CNC - Fairing Cover Hypermotard 821', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1038, 'ZY851Y - Windshield Ducati Multistrada 950/1200/1260 - matt carbon', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1039, 'PSB07B - Bottom Triplle Clamp 959/899/1199/1299 panigale', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1040, 'PSA03B - Triple Clamps Steering Tube 959/899/1199/1299 panigale', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1041, 'SD100B - Steering Damper Kit Ducati Scrambler', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1042, 'CF265B - Timing inspection Cover Ducati Panigale V4 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1043, 'CF265G - Timing inspection Cover Ducati Panigale V4 - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1044, 'CF265R - Timing inspection Cover Ducati Panigale V4 - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1045, 'FL506B - Rear Sprocket Flange Ducati Version 1 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1046, 'FL506G - Rear Sprocket Flange Ducati Version 1 - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1047, 'FL506R - Rear Sprocket Flange Ducati Version 1 - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1048, 'FL507B - Rear Sprocket Flange Ducati Version 2 Swirl - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1049, 'FL507G - Rear Sprocket Flange Ducati Version 2 Swirl - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1050, 'FL507R - Rear Sprocket Flange Ducati Version 2 Swirl - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1051, 'FL507BS - Rear Sprocket Flange Ducati Version 3 Bicolor - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1052, 'FL507GS - Rear Sprocket Flange Ducati Version 3 Bicolor - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1053, 'FL507RS - Rear Sprocket Flange Ducati Version 3 Bicolor - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1054, 'DA501B - Rear Wheel Nut LH Bicolor/ side - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1055, 'DA501G - Rear Wheel Nut LH Bicolor/ side - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1056, 'DA501R - Rear Wheel Nut LH Bicolor/ side - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1057, 'SWD14B - Right Handlebar Switch for OEM and RCS Brembo Brake Master Cylinder', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1058, 'SWD15B - Right Handlebar Switch for Brembo billet CNC and forged Master Cylinder', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1059, 'PST15B - Triple Clamps Ducati Panigale V4 - TOP YOKE', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1060, 'ZA701Y  - GP Ducts Carbon Cooling System -Matt', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1061, 'ZAB21B - GP Ducts Mounting Kit', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1062, 'GH457B - Ring Nut Ducati Panigale V4 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1063, 'GH457G - Ring Nut Ducati Panigale V4 - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1064, 'GH457R - Ring Nut Ducati Panigale V4 - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1065, 'PL100BPR - Brake-Guard Race Pramac Racing Limited Edition - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1066, 'PL100RPR -  Brake-Guard Race Pramac Racing Limited Edition - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1067, 'ZW002Y - GP Winglets Ducati Panigale V4 - Carbon', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1068, 'AF600B - Clutch slave cylinder Ducati Panigale V4 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1069, 'AF600G - Clutch slave cylinder Ducati Panigale V4 - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1070, 'AF600R - Clutch slave cylinder Ducati Panigale V4 - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1071, 'PE444B - Rear Sets for Supersport 939 2017', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1072, 'RM241B - Riser Complete for 29mm H 40mm Ducati Hypermotard/ Strada / M821 / M1200', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1073, 'RM242B - Riser\'s Upper H 20 mm', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1074, 'AF501BR -  Clutch Slave Cylinder Ø 30 mm Ducati GEAR -Black Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1075, 'AF650B - Clutch Slave Cylinder Ø 29 mm Ducati MTS950/1260/HYP950/SCR1100 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1076, 'AF650G - Clutch Slave Cylinder Ø 29 mm Ducati MTS950/1260/HYP950/SCR1100 - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1077, 'AF650R - Clutch Slave Cylinder Ø 29 mm Ducati MTS950/1260/HYP950/SCR1100 -Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1078, 'KV409B - Carbon Windshield Bolts Kit Ducati Multistrada 950/1200/1260 ', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1079, 'KV409R - Carbon Windshield Bolts Kit Ducati Multistrada 950/1200/1260', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1080, 'SWD13B - Left Handlebar Switch - Street Use  (V4/V4S/V4R)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1081, 'BP525GXW120L - RK Chain 525 GXW high performance Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1082, 'RR525GXW120L - RK Chain 525 GXW high performance - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1083, 'GB525GXW120L - RK Chain 525 GXW high performance - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1084, 'RR520GXW120L - RK Chain 520 GXW high performance - Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1085, 'BP520GXW120L - RK Chain 520 GXW high performance - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1086, 'GB520GXW120L - RK Chain 520 GXW high performance - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1087, 'BP530GXW120L - RK Chain 530 GXW high performance - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1088, 'GB530GXW120L - RK Chain 530 GXW high performance - Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1089, 'BL520XXW120L - RK Chain 520 XXW high performance - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1090, 'BL525XXW120L - RK Chain 525 XXW high performance - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1091, 'BL530XXW120L - RK Chain 530 XXW high performance - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1092, 'Delight - Adjuster footrest Racing Rearset Ducati Panigale 1199 Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1093, 'Delight - Adjuster footrest Racing Rearset Ducati Panigale 1199 Titanium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1094, 'Magical Racing - Windscreen Diavel 2014 - Super Coat', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1095, 'Magical Racing - Windscreen S1000RR 2015 - Super Coat', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1096, 'Magical Racing - Windscreen S1000RR 2015- Clear', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1097, 'Magical Racing - Windscreen S1000RR 2015 - Smoke', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1098, 'Magical Racing - Windscreen 1199 Panigale - Super Coat', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1099, 'Magical Racing - Windscreen 1199 Panigale - Smoke', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1100, 'Magical Racing - Windscreen R1 - Super Coat', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1101, 'Magical Racing - Windscreen ZX10R - Super Coat', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1102, 'Magical Racing - Windscreen S1000RR 2019 - Super Coat', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1103, 'D01-S10019-04A1 - Windscreen S1000RR 2019 Smoke', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1104, 'Optimate - Optimate 2 Autocharge', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1105, 'Optimate - Optimate Adapter Ducati Only', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1106, 'Optimate - Optimate  Adapter Universal', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1107, 'PVM - Wheel for Paul Smart 1000', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1108, 'STM Rock - Front Shock Monster 795/796', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1109, 'Kellermann - BL2000 Dark Tuen signal bar end cap', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1110, 'NRC - Ducati Diavel Rear Turn Signals Diavel 2012', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1111, 'NRC - Fender Eliminator Kit for Monster 795/796', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1112, 'NRC - Ducati  899/1199 Front Turn Signals', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1113, 'NRC - Ducati 959/1299 Panigale Mirror Block Off Turn Signals', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1114, 'NRC - Ducati Monster 696 Front Turn Signals', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1115, 'NRC - Ducati Hypermotard 821/939 Front Turn Signals', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1116, 'NRC - Fender Eliminator Kit for Ducati Scrambler 800', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1117, 'NRC - Fender Eliminator Kit for Ducati Scrambler 800 (keep rear fender)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1118, 'NRC - NRC Ducati Monster 821 Front Turn Signals', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1119, 'NRC - Ducati XDiavel Front Turn Signals', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1120, 'NRC - Ducati XDiavel Rear Turn Signals', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1121, 'NRC - Fender Eliminator Kit for Ducati Monster821 ', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1122, 'NRC - Fender Eliminator Kit for Ducati 899/959/1199/1299 Panigale ', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1123, 'NRC - Fender Eliminator Kit for Triumph Scrambler Fender Eliminator Kit', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1124, 'NRC - Fender Eliminator Kit for Triumph Thruxton 900', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1125, 'NRC - Fender Eliminator Kit for Thruxton R  (2016-present)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1126, 'NRC - Triumph Street Triple Front Turn Signals | 2013-Present', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1127, 'NRC - Fender Eliminator Kit for Ducati Supersport 939', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1128, 'NRC - Ducati Supersport 939 Front Signals', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1129, 'NRC - Ducati Supersport 939  Mirror Block off', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1130, 'NRC - Fender Eliminator Kit for Ducati Monster 797/1200(2017 Models) /M821 2018', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1131, 'NRC - Ducati Hypermotard 821 \'Blackout\' Front Turn Signals', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1132, 'NRC - Fender Eliminator Kit for Ducati Panigale V4', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1133, 'NRC - Ducati Panigale V4 Mirror Block Off Turn Signals', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1134, 'NRC - Fender Eliminator Kit for BMW S1000RR 2019-2020', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1135, 'ADG - Bar End Mirror - Aluminium', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1136, 'ADG - Bar End Mirror - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1137, 'ADG - Adapter Mirror', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1138, 'ADG - Tail Tidy including Turn signal light - Ducati Scrambler', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1139, 'ADG - Tail Tidy including Turn signal light - Triumph Scrambler', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1140, 'ADG - Tail Tidy including Turn signal light - Triumph Thruxton', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1141, 'ADG - Turn Signal Light ', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1142, 'ADG - Tail Tidy including Turnsignal light - BMW R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1143, 'Motogadget - m-Blaze Disc  turn signal for handlebar LED  Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1144, 'Motogadget - m-Blaze Cone turn signal for handlebar LED Black\n', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1145, 'Motogadget - Motoscope pro BMW R9T', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1146, 'Motogadget - M-Ice turn signal for handlebar LED', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1147, 'MRA - Windscreen Monster821  smoke', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1148, 'MRA - Windshield Panigale V4/S smoke', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1149, 'MRA - Windshield Panigale V4/S Clear', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1150, 'MRA - Windshield Raing Screen \"R\" Smoke S1000RR 2019-', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1151, 'GIAMOTO - Rearset Control kit for S1000RR 2015-18 Tricolor', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1152, 'GIAMOTO - Rearset Control kit for S1000RR 2015-18 Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1153, 'GIAMOTO - Rearset Control kit for Panigale V4 with Carbon Heel guard DP', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1154, 'Woodcraft - Ducati 2014-2016 monster 821 1\" inch woodcraft clip on adapter ', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1155, 'Jetprime - Switch Off Run for Kawasaki ZX10R (Right side)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1156, 'Jetprime - Switch 7 Controls for Kawasaki ZX10R (Left side)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1157, 'Jetprime - Switch 7 Controls for Ducati (Left side)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1158, 'Jetprime - Switch Off Run for Ducati (Right side)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1159, 'Jetprime - ปลอกด้านในปะกับแฮนด์', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1160, 'Jetprime - Switch 7 Controls for S1000RR', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1161, 'Jetprime - Switch Off Run for S1000RR (Right side)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1162, 'Hex escan - Easy Switch Solution for R1200LC', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1163, 'Kohken - Wire Clutch Lever', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1164, 'Nexzter - 1919AA - Front Brake Pad Monster795/ 796/ MTS10-14/ SF848/ Hypermotard 796 9-12', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1165, 'Nexzter - 2020AA - Front Brake Pad Diavel 11/ M4/ M50/ GP4R/ MTS15/ M1100', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1166, 'Nexzter - 3535AA - Rear Brake Pad HP/ ปักหลัง/ ด้วง/ Monster8-14/ MTS10-14/ SF/ Panigale 899/1199', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1167, 'Nexzter - 5455AA - Rear Brake Pad Diavel 1200cc / Xdiavel / GS1200/frontScrambler400 62', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1168, 'Nexzter - 5656AA - Front Brake Pad M821/ Hyp821/ 939/ Panigale899/959 / Scrambler/MTS950/ MTS Enduro/ Xdiavel/ M797', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1169, 'Nexzter - 5758AA - Rear Brake Pad New Multistrada 1200', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1170, 'Nexzter - 5253AA - Rear Brake Pad  Ducati Scrambler800/400/S1000RR/', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1171, 'Nexzter - 7474AA - Front Brake Pad S1000RR', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1172, 'Motul - Engine Oil V3', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1173, 'Yuasa - YT7B-BS  Battery for Ducati Panigale', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1174, 'Yuasa - YT12B-BS  Battery for Ducati Monster/Diavel/SF', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1175, 'Luimoto - Ducati Panigale V4\'2018 Veloce Rider Seat fabric Cover', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1176, 'GB Racing - GB Racing Engine Guard set -Panigale V4', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1177, 'GB Racing - GB Racing Engine Guard set -S1000RR 2017', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1178, 'GB Racing - GB Racing Engine Guard set -S1000RR 2019-2020', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1179, 'Desmoworld - Clear Clutch Cover V4 - Black Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1180, 'Desmoworld - Clear Clutch Cover V4 - Black Gold', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1181, 'Desmoworld - Clear Clutch Cover V4 - Black Red', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1182, 'Futurismoto - Mirror block Panigale V4 Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1183, 'Futurismoto - Mirror block Panigale V4 Silver', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1184, 'Futurismoto - License Plate with turn light Panigale V4', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1185, 'Stand R9T Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1186, 'Stand Proarm Ducati', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1187, 'Stand Swingarm', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1188, 'Front Stand (All)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1189, 'Bonamici - Rearset Control Kit Panigale V4 Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1190, 'Bonamici - Rearset Control Kit Panigale V4 Silver', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1191, 'Far - Mirror with turn signal light for panigale V4', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1192, 'DP - Dry Clutch V4', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1193, 'DP - FairingR - V4R Red  (include Windscreen)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1194, 'DP - FairingRW - V4R White+ mock up  (not include Windscreen)', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1195, 'DP - Wing - V4R Winglet Carbon', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1196, 'Aella - Frame Slider Panigale V4/V4S/V4R', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1197, 'Aella - Rearset Control Kit Multistrada1260 - Silver', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1198, 'Aella  - Rearset Control Kit Multistrada1260 - Black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1199, 'Alpha Racing - Fixing sockets set for rear stand alpha Racing, black anodized, with alpha Racing Logo BMW S 1000 RR 2019-', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1200, 'Alpha Racing - Crashpad kit, for BMW S 1000 RR 2019- (K67), for racing- and OEM fairing, left/right, black', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1201, 'Alpha Racing - Rear axle cup, for BMW S 1000 RR 2019- (K67), fits to rear axle standard swingarm', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1202, 'Alpha Racing - Front axle cup, for BMW S 1000 RR 2019- (K67), fits with Öhlins front fork', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1');
INSERT INTO `select_your_bike` (`id`, `name_product`, `img1`, `img2`, `img3`, `img4`, `img5`, `category`, `sub_category`, `brand`, `model`, `name_color`, `name_year`, `Price`, `discount`, `quality`, `detail`, `status`) VALUES
(1203, 'Alpha Racing - Samco Sport radiator hose kit, for BMW S 1000 RR 2019- (K67), silicone, fits OEM radiator and OEM expansion tank', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1204, 'Alpha Racing - Front brake disc 320 x 6 mm EVO, for BMW S 1000 RR 2019- (K67), fits aluminium racing wheels and M-carbon wheels', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1205, 'Alpha Racing - Front brake disc 320 x 6 mm EVO, for BMW S 1000 RR 2019- (K67), for OEM cast wheel', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1206, 'Alpha Racing - Front brake disc 321 x 6 mm EWC, for BMW S 1000 RR 2019- (K67),fits aluminium racing wheels and M-carbon wheels', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1207, 'Alpha Racing - Remote adjuster for brake lever \"Moto GP Style\", for alpha Racing brake lever and Brembo RCS/PR master cylinder BMW S 1000 RR 2019-', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1208, 'Alpha Racing - Reservoir sock cover, 7x4,5 cm, 80% cotton, 20% elastan, black with 3D alpha Racing logo BMW S 1000 RR 2019-', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1209, 'Alpha Racing - Clutch lever Racing long, for BMW S 1000 RR 2019- (K67), folding and adjustable, black anodised, aluminum, length: 190 mm', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1210, 'Alpha Racing - Fuel cap \"quick action\", for BMW S 1000 RR 2019- (K67), black anodised,spring-loaded cap', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1211, 'Alpha Racing - E-throttle kit, version 2019, for BMW S 1000 RR 2015-2018 and 2019-(K67), aluminium housing, incl. Renthal grips', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1212, 'Alpha Racing - Chain adjuster kit, for BMW S 1000 RR 2019- (K67), black anodised with alpha Racing logo', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1213, 'Alpha Racing - Oil filler plug kit alpha Racing BMW S1000RR, oil filler plug M24x2,pre-drilled for safety wiring, black anodised, stainless steel safety wirewith clip and bracket, engine cover screw ISA M6x35', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1214, 'Alpha Racing - Magnetic oil drain plug racing, for BMW S 1000 RR/R and HP4,aluminium with magnet', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1215, 'Alpha Racing - Fast shift sensor for BMW S 1000 RR 2019-', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1216, 'Autin Racing - GP1R Decat Black Ceramic  S1000RR 2019', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1217, 'Autin Racing - GP1R Decat Titanium S1000RR 2019', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1218, 'Autin Racing - DECAT V3 150MM Black Ceramic S1000RR 2019', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1219, 'Autin Racing - DECAT V3 150MM Titanium S1000RR 2019', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1220, 'Dinavolt - Lithium S1000RR 2019', '', '', '', '', '', '', '', 0, '', '', '', '0', '', '0', '', '1'),
(1221, 'Suter - Swingarm S1000RR 2019', '', '', '', '', '', '', '', 2, '', '', '', '0', '', '0', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `img`, `text`, `status`) VALUES
(1, 'b9dbd-bg_01.png', '', '1'),
(2, '82110-bg_02.png', '', ''),
(3, '1dc7e-bg_03.png', '', '1'),
(4, 'ed398-bg_04.png', '', '1'),
(5, '09f5f-bg_05.png', '', '1'),
(6, 'df6cb-bg_06.png', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `size_product`
--

CREATE TABLE `size_product` (
  `id` int(10) NOT NULL,
  `name_size` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `size_product`
--

INSERT INTO `size_product` (`id`, `name_size`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'XL'),
(4, 'XXL');

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `link` int(11) NOT NULL,
  `img` int(11) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_category_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `name_subcategory` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_category_id`, `category_id`, `name_subcategory`) VALUES
(1, 1, 'Brake Pad'),
(2, 1, 'Brake-Discs'),
(3, 1, 'Fluid Tank'),
(4, 0, 'Front Caliper'),
(5, 2, 'Lever'),
(6, 2, 'Master Cylinder'),
(7, 0, 'Rear Brake'),
(8, 0, 'Rear Caliper'),
(9, 0, 'Rotor Disc'),
(10, 0, 'Switch'),
(11, 0, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin_mpk', '9beb092784ee8aab75513cbdf3624074');

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `id` int(10) NOT NULL,
  `name_year` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`id`, `name_year`) VALUES
(1, '1900'),
(2, '1901'),
(3, '1902'),
(4, '1903'),
(5, '1904'),
(6, '1905'),
(7, '1906'),
(8, '1907'),
(9, '1908'),
(10, '1909'),
(11, '1910'),
(12, '1911'),
(13, '1912'),
(14, '1913'),
(15, '1914'),
(16, '1915'),
(17, '1916'),
(18, '1917'),
(19, '1918'),
(20, '1919'),
(21, '1920'),
(22, '1921'),
(23, '1922'),
(24, '1923'),
(25, '1924'),
(26, '1925'),
(27, '1926'),
(28, '1927'),
(29, '1928'),
(30, '1929'),
(31, '1930'),
(32, '1931'),
(33, '1932'),
(34, '1933'),
(35, '1934'),
(36, '1935'),
(37, '1936'),
(38, '1937'),
(39, '1938'),
(40, '1939'),
(41, '1940'),
(42, '1941'),
(43, '1942'),
(44, '1943'),
(45, '1944'),
(46, '1945'),
(47, '1946'),
(48, '1947'),
(49, '1948'),
(50, '1949'),
(51, '1950'),
(52, '1951'),
(53, '1952'),
(54, '1953'),
(55, '1954'),
(56, '1955'),
(57, '1956'),
(58, '1957'),
(59, '1958'),
(60, '1959'),
(61, '1960'),
(62, '1961'),
(63, '1962'),
(64, '1963'),
(65, '1964'),
(66, '1965'),
(67, '1966'),
(68, '1967'),
(69, '1968'),
(70, '1969'),
(71, '1970'),
(72, '1971'),
(73, '1972'),
(74, '1973'),
(75, '1974'),
(76, '1975'),
(77, '1976'),
(78, '1977'),
(79, '1978'),
(80, '1979'),
(81, '1980'),
(82, '1981'),
(83, '1982'),
(84, '1983'),
(85, '1984'),
(86, '1985'),
(87, '1986'),
(88, '1987'),
(89, '1988'),
(90, '1989'),
(91, '1990'),
(92, '1991'),
(93, '1992'),
(94, '1993'),
(95, '1994'),
(96, '1995'),
(97, '1996'),
(98, '1997'),
(99, '1998'),
(100, '1999'),
(101, '2000'),
(102, '2001'),
(103, '2002'),
(104, '2003'),
(105, '2004'),
(106, '2005'),
(107, '2006'),
(108, '2007'),
(109, '2008'),
(110, '2009'),
(111, '2010'),
(112, '2011'),
(113, '2012'),
(114, '2013'),
(115, '2014'),
(116, '2015'),
(117, '2016'),
(118, '2017'),
(119, '2018'),
(120, '2019'),
(121, '2020'),
(122, '2021'),
(123, '2022'),
(124, '2023'),
(125, '2024'),
(126, '2025');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `best_seller`
--
ALTER TABLE `best_seller`
  ADD PRIMARY KEY (`best_seller_id`);

--
-- Indexes for table `bike_for_sell`
--
ALTER TABLE `bike_for_sell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_category`
--
ALTER TABLE `gallery_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_img_head`
--
ALTER TABLE `gallery_img_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_img_logo`
--
ALTER TABLE `gallery_img_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homebike`
--
ALTER TABLE `homebike`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homeplaylist`
--
ALTER TABLE `homeplaylist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homeslide`
--
ALTER TABLE `homeslide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_category`
--
ALTER TABLE `main_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_category`
--
ALTER TABLE `model_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_idea`
--
ALTER TABLE `news_idea`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_arrivals`
--
ALTER TABLE `new_arrivals`
  ADD PRIMARY KEY (`new_arrivals_id`);

--
-- Indexes for table `popup`
--
ALTER TABLE `popup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_status`
--
ALTER TABLE `product_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion_product`
--
ALTER TABLE `promotion_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion_slide`
--
ALTER TABLE `promotion_slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `select_your_bike`
--
ALTER TABLE `select_your_bike`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size_product`
--
ALTER TABLE `size_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `best_seller`
--
ALTER TABLE `best_seller`
  MODIFY `best_seller_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bike_for_sell`
--
ALTER TABLE `bike_for_sell`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery_category`
--
ALTER TABLE `gallery_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_img_head`
--
ALTER TABLE `gallery_img_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery_img_logo`
--
ALTER TABLE `gallery_img_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `homebike`
--
ALTER TABLE `homebike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeplaylist`
--
ALTER TABLE `homeplaylist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homeslide`
--
ALTER TABLE `homeslide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_category`
--
ALTER TABLE `main_category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `model_category`
--
ALTER TABLE `model_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `news_idea`
--
ALTER TABLE `news_idea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `new_arrivals`
--
ALTER TABLE `new_arrivals`
  MODIFY `new_arrivals_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1226;

--
-- AUTO_INCREMENT for table `product_status`
--
ALTER TABLE `product_status`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promotion_product`
--
ALTER TABLE `promotion_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `promotion_slide`
--
ALTER TABLE `promotion_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `select_your_bike`
--
ALTER TABLE `select_your_bike`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1222;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `size_product`
--
ALTER TABLE `size_product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
