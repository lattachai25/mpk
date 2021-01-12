-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 22, 2020 at 05:12 AM
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
-- Table structure for table `brand_category`
--

CREATE TABLE `brand_category` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 'https://www.youtube.com/embed/w5gL1zFSjkI', 'S1000RR 2020 ', '19b9e-bg_play.png', '1');

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
(2, '11b49-slide_banner_n02.jpg', '<p>\n	The Ultimate By MPK</p>\n', '1'),
(4, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `main_category`
--

CREATE TABLE `main_category` (
  `id` int(10) NOT NULL,
  `Name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `main_category`
--

INSERT INTO `main_category` (`id`, `Name`) VALUES
(1, 'Brake System'),
(2, 'Engine & Clutch'),
(3, 'Exhaust'),
(4, 'Fluid Tank'),
(5, 'Grips & Handlebar'),
(6, 'Indicator Light'),
(7, 'Maintenance & Care'),
(8, 'Mirrors'),
(9, 'Other'),
(10, 'Parts & Accessories'),
(11, 'Protection'),
(12, 'Steering & Suspension'),
(13, 'Transmission'),
(14, 'Wheel');

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
(1, '1098/SF/Diavel'),
(2, '1199'),
(3, '1199/899'),
(4, '1299/959'),
(5, '748/848/916/996/998/1098/1198'),
(6, '795/796'),
(7, '899'),
(8, '899/1299'),
(9, '899/959/1199/1299 Panigale '),
(10, '959/899/1199/1299 panigale'),
(11, 'BMW'),
(12, 'BMW C600Sport /C650GT'),
(13, 'BMW R9T'),
(14, 'C600'),
(15, 'C600/C650'),
(16, 'CBR1000R 2018'),
(17, 'CBR600R'),
(18, 'CBR600RR'),
(19, 'Classic'),
(20, 'DIAVEL'),
(21, 'Diavel / Monster'),
(22, 'Diavel /1199'),
(23, 'DIAVEL /M821/M1200'),
(24, 'Diavel 2012'),
(25, 'Diavel 2012-14'),
(26, 'Diavel 2014'),
(27, 'Diavel 2015'),
(28, 'Diavel,1098-1198,Multi 1200,SF'),
(29, 'Diavel,1098-1198,Multi 1200,SF/Panigale1199/1299/V4'),
(30, 'Diavel/Hyper821/939,Monster797/821/1200,MTS950/1200/1260'),
(31, 'Diavel/Xdiavel/Hyper1100'),
(32, 'DUCATI'),
(33, 'Ducati Scrambler '),
(34, 'ER6N \'09 up'),
(35, 'ER-6N 2012'),
(36, 'F800R/ R1200GS/ S1000RR'),
(37, 'GS1200'),
(38, 'gsxr1000 -9-11'),
(39, 'hyp821'),
(40, 'Hyper 1100'),
(41, 'HYPER796'),
(42, 'Hyper796/Monster796/1100/ MTS1200/1260/Scrambler'),
(43, 'Hyper821'),
(44, 'Hyper821/Monster821/Multistrada'),
(45, 'Hyper821/MTS'),
(46, 'Hypermotard 796/1100'),
(47, 'Hypermotard 821'),
(48, 'Hypermotard/Strada 2013'),
(49, 'Kawasaki all'),
(50, 'M795/796'),
(51, 'M796/1100/848'),
(52, 'M796/HYP821'),
(53, 'M797/M1200 \'17/M821 2018'),
(54, 'M821 14-17'),
(55, 'M821/795/796'),
(56, 'Monster'),
(57, 'Monster 696/796/1100'),
(58, 'Monster 796/1100, Hyper796/821/939,SF848');

-- --------------------------------------------------------

--
-- Table structure for table `model_category`
--

CREATE TABLE `model_category` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `model_category`
--

INSERT INTO `model_category` (`id`, `name`) VALUES
(1, 'C 650 SPORT GT'),
(2, 'R 1200 1250 GS'),
(3, 'R NINE T'),
(4, 'S 1000 R'),
(5, 'S 1000 RR 2015-2018'),
(6, 'S 1000 RR 2020'),
(7, 'S 1000 XR');

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
(1, 8, 6, '6729e-1.png', '<h2 style=\"margin: 0px 0px 10px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px; background-color: rgb(255, 255, 255);\">\n	Lorem Ipsum คืออะไร?</h2>\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">\n	Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ ที่ใช้กันในธุรกิจงานพิมพ์หรืองานเรียงพิมพ์ มันได้กลายมาเป็นเนื้อหาจำลองมาตรฐานของธุรกิจดังกล่าวมาตั้งแต่ศตวรรษที่ 16 เมื่อเครื่องพิมพ์โนเนมเครื่องหนึ่งนำรางตัวพิมพ์มาสลับสับตำแหน่งตัวอักษรเพื่อทำหนังสือตัวอย่าง Lorem Ipsum อยู่ยงคงกระพันมาไม่ใช่แค่เพียงห้าศตวรรษ แต่อยู่มาจนถึงยุคที่พลิกโฉมเข้าสู่งานเรียงพิมพ์ด้วยวิธีทางอิเล็กทรอนิกส์ และยังคงสภาพเดิมไว้อย่างไม่มีการเปลี่ยนแปลง มันได้รับความนิยมมากขึ้นในยุค ค.ศ. 1960 เมื่อแผ่น Letraset วางจำหน่ายโดยมีข้อความบนนั้นเป็น Lorem Ipsum และล่าสุดกว่านั้น คือเมื่อซอฟท์แวร์การทำสื่อสิ่งพิมพ์ (Desktop Publishing) อย่าง Aldus PageMaker ได้รวมเอา Lorem Ipsum เวอร์ชั่นต่างๆ เข้าไว้ในซอฟท์แวร์ด้วย</p>\n', '2020-12-10', 1),
(2, 9, 5, '5b62d-2.png', '<h2 style=\"margin: 0px 0px 10px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px; background-color: rgb(255, 255, 255);\">\n	Lorem Ipsum คืออะไร?</h2>\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">\n	Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ ที่ใช้กันในธุรกิจงานพิมพ์หรืองานเรียงพิมพ์ มันได้กลายมาเป็นเนื้อหาจำลองมาตรฐานของธุรกิจดังกล่าวมาตั้งแต่ศตวรรษที่ 16 เมื่อเครื่องพิมพ์โนเนมเครื่องหนึ่งนำรางตัวพิมพ์มาสลับสับตำแหน่งตัวอักษรเพื่อทำหนังสือตัวอย่าง Lorem Ipsum อยู่ยงคงกระพันมาไม่ใช่แค่เพียงห้าศตวรรษ แต่อยู่มาจนถึงยุคที่พลิกโฉมเข้าสู่งานเรียงพิมพ์ด้วยวิธีทางอิเล็กทรอนิกส์ และยังคงสภาพเดิมไว้อย่างไม่มีการเปลี่ยนแปลง มันได้รับความนิยมมากขึ้นในยุค ค.ศ. 1960 เมื่อแผ่น Letraset วางจำหน่ายโดยมีข้อความบนนั้นเป็น Lorem Ipsum และล่าสุดกว่านั้น คือเมื่อซอฟท์แวร์การทำสื่อสิ่งพิมพ์ (Desktop Publishing) อย่าง Aldus PageMaker ได้รวมเอา Lorem Ipsum เวอร์ชั่นต่างๆ เข้าไว้ในซอฟท์แวร์ด้วย</p>\n', '2020-12-10', 1),
(3, 10, 4, '16c1b-3.png', '<h2 style=\"margin: 0px 0px 10px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 24px; line-height: 24px; background-color: rgb(255, 255, 255);\">\n	Lorem Ipsum คืออะไร?</h2>\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">\n	Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ ที่ใช้กันในธุรกิจงานพิมพ์หรืองานเรียงพิมพ์ มันได้กลายมาเป็นเนื้อหาจำลองมาตรฐานของธุรกิจดังกล่าวมาตั้งแต่ศตวรรษที่ 16 เมื่อเครื่องพิมพ์โนเนมเครื่องหนึ่งนำรางตัวพิมพ์มาสลับสับตำแหน่งตัวอักษรเพื่อทำหนังสือตัวอย่าง Lorem Ipsum อยู่ยงคงกระพันมาไม่ใช่แค่เพียงห้าศตวรรษ แต่อยู่มาจนถึงยุคที่พลิกโฉมเข้าสู่งานเรียงพิมพ์ด้วยวิธีทางอิเล็กทรอนิกส์ และยังคงสภาพเดิมไว้อย่างไม่มีการเปลี่ยนแปลง มันได้รับความนิยมมากขึ้นในยุค ค.ศ. 1960 เมื่อแผ่น Letraset วางจำหน่ายโดยมีข้อความบนนั้นเป็น Lorem Ipsum และล่าสุดกว่านั้น คือเมื่อซอฟท์แวร์การทำสื่อสิ่งพิมพ์ (Desktop Publishing) อย่าง Aldus PageMaker ได้รวมเอา Lorem Ipsum เวอร์ชั่นต่างๆ เข้าไว้ในซอฟท์แวร์ด้วย</p>\n', '2020-12-10', 1);

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

--
-- Dumping data for table `promotion_product`
--

INSERT INTO `promotion_product` (`id`, `type`, `brand`, `category`, `sub_category`, `img1`, `img2`, `img3`, `img4`, `name`, `no_code`, `price`, `discount_price`, `detail`, `color`, `quality`, `date`, `status`) VALUES
(1, '4', '2', '1', '15', '48dc8-4.png', '44a3f-3.png', 'f0ff4-5.png', '01acd-2.png', 'BRAKE DISC 321X6 EWC S1000 RR 2019', '00067', '1,230', '2,300', '<p>\n	<span style=\"color: rgb(116, 116, 116); font-family: helvetica, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</span></p>\n', '', '20', '0000-00-00 00:00:00', '1'),
(2, '1', '1', '1', '15', '138dc-1.png', '79148-2.png', '57773-1.png', '8ae69-1.png', 'BRAKE DISC 321X6 EWC S1000 RR 2019', '00066', '1.234', '2,300', 'Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ ที่ใช้กันในธุรกิจงานพิมพ์หรืองานเรียงพิมพ์ มันได้กลายมาเป็นเนื้อหาจำลองมาตรฐานของธุรกิจดังกล่าวมาตั้งแต่ศตวรรษที่ 16 เมื่อเครื่องพิมพ์โนเนมเครื่องหนึ่งนำรางตัวพิมพ์มาสลับสับตำแหน่งตัวอักษรเพื่อทำหนังสือตัวอย่าง Lorem Ipsum อยู่ยงคงกระพันมาไม่ใช่แค่เพียงห้าศตวรรษ แต่อยู่มาจนถึงยุคที่พลิกโฉมเข้าสู่งานเรียงพิมพ์ด้วยวิธีทางอิเล็กทรอนิกส์ และยังคงสภาพเดิมไว้อย่างไม่มีการเปลี่ยนแปลง มันได้รับความนิยมมากขึ้นในยุค ค.ศ. 1960 เมื่อแผ่น Letraset วางจำหน่ายโดยมีข้อความบนนั้นเป็น Lorem Ipsum และล่าสุดกว่านั้น คือเมื่อซอฟท์แวร์การทำสื่อสิ่งพิมพ์ (Desktop Publishing) อย่าง Aldus PageMaker ได้รวมเอา Lorem Ipsum เวอร์ชั่นต่างๆ เข้าไว้ในซอฟท์แวร์ด้วย\n', '1', '10', '0000-00-00 00:00:00', '1'),
(3, '1', '1', '1', '3', '0488b-2.png', '7a52a-2.png', '44c94-2.png', 'b5f6c-5.png', 'BRAKE DISC 321X6 EWC S1000 RR 2019', '00065', '1,234', '2,300', '<p>\n	<span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ ที่ใช้กันในธุรกิจงานพิมพ์หรืองานเรียงพิมพ์ มันได้กลายมาเป็นเนื้อหาจำลองมาตรฐานของธุรกิจดังกล่าวมาตั้งแต่ศตวรรษที่ 16 เมื่อเครื่องพิมพ์โนเนมเครื่องหนึ่งนำรางตัวพิมพ์มาสลับสับตำแหน่งตัวอักษรเพื่อทำหนังสือตัวอย่าง Lorem Ipsum อยู่ยงคงกระพันมาไม่ใช่แค่เพียงห้าศตวรรษ แต่อยู่มาจนถึงยุคที่พลิกโฉมเข้าสู่งานเรียงพิมพ์ด้วยวิธีทางอิเล็กทรอนิกส์ และยังคงสภาพเดิมไว้อย่างไม่มีการเปลี่ยนแปลง มันได้รับความนิยมมากขึ้นในยุค ค.ศ. 1960 เมื่อแผ่น Letraset วางจำหน่ายโดยมีข้อความบนนั้นเป็น Lorem Ipsum และล่าสุดกว่านั้น คือเมื่อซอฟท์แวร์การทำสื่อสิ่งพิมพ์ (Desktop Publishing) อย่าง Aldus PageMaker ได้รวมเอา Lorem Ipsum เวอร์ชั่นต่างๆ เข้าไว้ในซอฟท์แวร์ด้วย</span></p>\n', '1', '10', '0000-00-00 00:00:00', '1'),
(4, '1', '1', '1', '15', 'a46b0-3.png', '2eb01-4.png', 'b2123-5.png', '8d8a8-4.png', 'BRAKE DISC 321X6 EWC S1000 RR 2019', '00064', '1,234', '2,300', '<p>\n	<span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ ที่ใช้กันในธุรกิจงานพิมพ์หรืองานเรียงพิมพ์ มันได้กลายมาเป็นเนื้อหาจำลองมาตรฐานของธุรกิจดังกล่าวมาตั้งแต่ศตวรรษที่ 16 เมื่อเครื่องพิมพ์โนเนมเครื่องหนึ่งนำรางตัวพิมพ์มาสลับสับตำแหน่งตัวอักษรเพื่อทำหนังสือตัวอย่าง Lorem Ipsum อยู่ยงคงกระพันมาไม่ใช่แค่เพียงห้าศตวรรษ แต่อยู่มาจนถึงยุคที่พลิกโฉมเข้าสู่งานเรียงพิมพ์ด้วยวิธีทางอิเล็กทรอนิกส์ และยังคงสภาพเดิมไว้อย่างไม่มีการเปลี่ยนแปลง มันได้รับความนิยมมากขึ้นในยุค ค.ศ. 1960 เมื่อแผ่น Letraset วางจำหน่ายโดยมีข้อความบนนั้นเป็น Lorem Ipsum และล่าสุดกว่านั้น คือเมื่อซอฟท์แวร์การทำสื่อสิ่งพิมพ์ (Desktop Publishing) อย่าง Aldus PageMaker ได้รวมเอา Lorem Ipsum เวอร์ชั่นต่างๆ เข้าไว้ในซอฟท์แวร์ด้วย</span></p>\n', '1', '15', '0000-00-00 00:00:00', '1'),
(5, '1', '1', '1', '15', 'f028f-2.png', 'a72e8-1.png', '10b5c-1.png', '62761-1.png', 'BRAKE DISC 321X6 EWC S1000 RR 2019', '00063', '1,234', '2,300', '<p>\n	<span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">Lorem Ipsum คือ เนื้อหาจำลองแบบเรียบๆ ที่ใช้กันในธุรกิจงานพิมพ์หรืองานเรียงพิมพ์ มันได้กลายมาเป็นเนื้อหาจำลองมาตรฐานของธุรกิจดังกล่าวมาตั้งแต่ศตวรรษที่ 16 เมื่อเครื่องพิมพ์โนเนมเครื่องหนึ่งนำรางตัวพิมพ์มาสลับสับตำแหน่งตัวอักษรเพื่อทำหนังสือตัวอย่าง Lorem Ipsum อยู่ยงคงกระพันมาไม่ใช่แค่เพียงห้าศตวรรษ แต่อยู่มาจนถึงยุคที่พลิกโฉมเข้าสู่งานเรียงพิมพ์ด้วยวิธีทางอิเล็กทรอนิกส์ และยังคงสภาพเดิมไว้อย่างไม่มีการเปลี่ยนแปลง มันได้รับความนิยมมากขึ้นในยุค ค.ศ. 1960 เมื่อแผ่น Letraset วางจำหน่ายโดยมีข้อความบนนั้นเป็น Lorem Ipsum และล่าสุดกว่านั้น คือเมื่อซอฟท์แวร์การทำสื่อสิ่งพิมพ์ (Desktop Publishing) อย่าง Aldus PageMaker ได้รวมเอา Lorem Ipsum เวอร์ชั่นต่างๆ เข้าไว้ในซอฟท์แวร์ด้วย</span></p>\n', '1', '1', '0000-00-00 00:00:00', '1'),
(6, '1', '2', '1', '15', '82a42-1.png', '461ca-4.png', 'bcef2-4.png', '66ddf-1.png', 'BRAKE DISC 321X6 EWC S1000 RR 2019', '00062', '1,234', '2,300', '<p>\n	<span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">มีท่อนต่างๆ ของ Lorem Ipsum ให้หยิบมาใช้งานได้มากมาย แต่ส่วนใหญ่แล้วจะถูกนำไปปรับให้เป็นรูปแบบอื่นๆ อาจจะด้วยการสอดแทรกมุกตลก หรือด้วยคำที่มั่วขึ้นมาซึ่งถึงอย่างไรก็ไม่มีทางเป็นเรื่องจริงได้เลยแม้แต่น้อย ถ้าคุณกำลังคิดจะใช้ Lorem Ipsum สักท่อนหนึ่ง คุณจำเป็นจะต้องตรวจให้แน่ใจว่าไม่มีอะไรน่าอับอายซ่อนอยู่ภายในท่อนนั้นๆ ตัวสร้าง Lorem Ipsum บนอินเทอร์เน็ตทุกตัวมักจะเอาท่อนที่แน่ใจแล้วมาใช้ซ้ำๆ ทำให้กลายเป็นที่มาของตัวสร้างที่แท้จริงบนอินเทอร์เน็ต ในการสร้าง Lorem Ipsum ที่ดูเข้าท่า ต้องใช้คำจากพจนานุกรมภาษาละตินถึงกว่า 200 คำ ผสมกับรูปแบบโครงสร้างประโยคอีกจำนวนหนึ่ง เพราะฉะนั้น Lorem Ipsum ที่ถูกสร้างขึ้นใหม่นี้ก็จะไม่ซ้ำไปซ้ำมา ไม่มีมุกตลกซุกแฝงไว้ภายใน หรือไม่มีคำใดๆ ที่ไม่บ่งบอกความหมาย</span></p>\n', '1', '10', '0000-00-00 00:00:00', '1'),
(7, '3', '1', '1', '15', '0ed43-4.png', 'dee58-2.png', 'eb8ae-3.png', 'daa42-4.png', 'BRAKE DISC 321X6 EWC S1000 RR 2019', '00061', '1,234', '2,300', '<p>\n	<span background-color:=\"\" font-size:=\"\" open=\"\" style=\"font-family: \" text-align:=\"\">มีท่อนต่างๆ ของ Lorem Ipsum ให้หยิบมาใช้งานได้มากมาย แต่ส่วนใหญ่แล้วจะถูกนำไปปรับให้เป็นรูปแบบอื่นๆ อาจจะด้วยการสอดแทรกมุกตลก หรือด้วยคำที่มั่วขึ้นมาซึ่งถึงอย่างไรก็ไม่มีทางเป็นเรื่องจริงได้เลยแม้แต่น้อย ถ้าคุณกำลังคิดจะใช้ Lorem Ipsum สักท่อนหนึ่ง คุณจำเป็นจะต้องตรวจให้แน่ใจว่าไม่มีอะไรน่าอับอายซ่อนอยู่ภายในท่อนนั้นๆ ตัวสร้าง Lorem Ipsum บนอินเทอร์เน็ตทุกตัวมักจะเอาท่อนที่แน่ใจแล้วมาใช้ซ้ำๆ ทำให้กลายเป็นที่มาของตัวสร้างที่แท้จริงบนอินเทอร์เน็ต ในการสร้าง Lorem Ipsum ที่ดูเข้าท่า ต้องใช้คำจากพจนานุกรมภาษาละตินถึงกว่า 200 คำ ผสมกับรูปแบบโครงสร้างประโยคอีกจำนวนหนึ่ง เพราะฉะนั้น Lorem Ipsum ที่ถูกสร้างขึ้นใหม่นี้ก็จะไม่ซ้ำไปซ้ำมา ไม่มีมุกตลกซุกแฝงไว้ภายใน หรือไม่มีคำใดๆ ที่ไม่บ่งบอกความหมาย</span></p>\n', '1', '10', '0000-00-00 00:00:00', '1'),
(8, '3', '1', '1', '15', 'e7dc5-5.png', '8e4f4-5.png', 'df3f2-5.png', 'eefb2-5.png', 'BRAKE DISC 321X6 EWC S1000 RR 2019', '00060', '1,234', '2,300', '<p>\n	<span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">มีท่อนต่างๆ ของ Lorem Ipsum ให้หยิบมาใช้งานได้มากมาย แต่ส่วนใหญ่แล้วจะถูกนำไปปรับให้เป็นรูปแบบอื่นๆ อาจจะด้วยการสอดแทรกมุกตลก หรือด้วยคำที่มั่วขึ้นมาซึ่งถึงอย่างไรก็ไม่มีทางเป็นเรื่องจริงได้เลยแม้แต่น้อย ถ้าคุณกำลังคิดจะใช้ Lorem Ipsum สักท่อนหนึ่ง คุณจำเป็นจะต้องตรวจให้แน่ใจว่าไม่มีอะไรน่าอับอายซ่อนอยู่ภายในท่อนนั้นๆ ตัวสร้าง Lorem Ipsum บนอินเทอร์เน็ตทุกตัวมักจะเอาท่อนที่แน่ใจแล้วมาใช้ซ้ำๆ ทำให้กลายเป็นที่มาของตัวสร้างที่แท้จริงบนอินเทอร์เน็ต ในการสร้าง Lorem Ipsum ที่ดูเข้าท่า ต้องใช้คำจากพจนานุกรมภาษาละตินถึงกว่า 200 คำ ผสมกับรูปแบบโครงสร้างประโยคอีกจำนวนหนึ่ง เพราะฉะนั้น Lorem Ipsum ที่ถูกสร้างขึ้นใหม่นี้ก็จะไม่ซ้ำไปซ้ำมา ไม่มีมุกตลกซุกแฝงไว้ภายใน หรือไม่มีคำใดๆ ที่ไม่บ่งบอกความหมาย</span></p>\n', '1', '10', '0000-00-00 00:00:00', '1'),
(9, '3', '1', '1', '3', 'ed6e0-2.png', '93f20-2.png', '0dda9-2.png', '', 'BRAKE DISC 321X6 EWC S1000 RR 2019', '00059', '1,234', '2,300', '<p>\n	<span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">มีท่อนต่างๆ ของ Lorem Ipsum ให้หยิบมาใช้งานได้มากมาย แต่ส่วนใหญ่แล้วจะถูกนำไปปรับให้เป็นรูปแบบอื่นๆ อาจจะด้วยการสอดแทรกมุกตลก หรือด้วยคำที่มั่วขึ้นมาซึ่งถึงอย่างไรก็ไม่มีทางเป็นเรื่องจริงได้เลยแม้แต่น้อย ถ้าคุณกำลังคิดจะใช้ Lorem Ipsum สักท่อนหนึ่ง คุณจำเป็นจะต้องตรวจให้แน่ใจว่าไม่มีอะไรน่าอับอายซ่อนอยู่ภายในท่อนนั้นๆ ตัวสร้าง Lorem Ipsum บนอินเทอร์เน็ตทุกตัวมักจะเอาท่อนที่แน่ใจแล้วมาใช้ซ้ำๆ ทำให้กลายเป็นที่มาของตัวสร้างที่แท้จริงบนอินเทอร์เน็ต ในการสร้าง Lorem Ipsum ที่ดูเข้าท่า ต้องใช้คำจากพจนานุกรมภาษาละตินถึงกว่า 200 คำ ผสมกับรูปแบบโครงสร้างประโยคอีกจำนวนหนึ่ง เพราะฉะนั้น Lorem Ipsum ที่ถูกสร้างขึ้นใหม่นี้ก็จะไม่ซ้ำไปซ้ำมา ไม่มีมุกตลกซุกแฝงไว้ภายใน หรือไม่มีคำใดๆ ที่ไม่บ่งบอกความหมาย</span></p>\n', '1', '10', '0000-00-00 00:00:00', '1'),
(10, '3', '1', '1', '3', '9a3cc-3.png', '25520-3.png', '6596b-3.png', '5d075-3.png', 'BRAKE DISC 321X6 EWC S1000 RR 2019', '00058', '1.234', '2,300', '<p>\n	<span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">มีท่อนต่างๆ ของ Lorem Ipsum ให้หยิบมาใช้งานได้มากมาย แต่ส่วนใหญ่แล้วจะถูกนำไปปรับให้เป็นรูปแบบอื่นๆ อาจจะด้วยการสอดแทรกมุกตลก หรือด้วยคำที่มั่วขึ้นมาซึ่งถึงอย่างไรก็ไม่มีทางเป็นเรื่องจริงได้เลยแม้แต่น้อย ถ้าคุณกำลังคิดจะใช้ Lorem Ipsum สักท่อนหนึ่ง คุณจำเป็นจะต้องตรวจให้แน่ใจว่าไม่มีอะไรน่าอับอายซ่อนอยู่ภายในท่อนนั้นๆ ตัวสร้าง Lorem Ipsum บนอินเทอร์เน็ตทุกตัวมักจะเอาท่อนที่แน่ใจแล้วมาใช้ซ้ำๆ ทำให้กลายเป็นที่มาของตัวสร้างที่แท้จริงบนอินเทอร์เน็ต ในการสร้าง Lorem Ipsum ที่ดูเข้าท่า ต้องใช้คำจากพจนานุกรมภาษาละตินถึงกว่า 200 คำ ผสมกับรูปแบบโครงสร้างประโยคอีกจำนวนหนึ่ง เพราะฉะนั้น Lorem Ipsum ที่ถูกสร้างขึ้นใหม่นี้ก็จะไม่ซ้ำไปซ้ำมา ไม่มีมุกตลกซุกแฝงไว้ภายใน หรือไม่มีคำใดๆ ที่ไม่บ่งบอกความหมาย</span></p>\n', '1', '10', '0000-00-00 00:00:00', '1'),
(11, '3', '1', '1', '15', '053fc-2.png', 'c8a2d-2.png', '9eb4c-2.png', '0fad5-2.png', 'BRAKE DISC 321X6 EWC S1000 RR 2019', '00057', '1,234', '2,300', '<p>\n	<span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">มีท่อนต่างๆ ของ Lorem Ipsum ให้หยิบมาใช้งานได้มากมาย แต่ส่วนใหญ่แล้วจะถูกนำไปปรับให้เป็นรูปแบบอื่นๆ อาจจะด้วยการสอดแทรกมุกตลก หรือด้วยคำที่มั่วขึ้นมาซึ่งถึงอย่างไรก็ไม่มีทางเป็นเรื่องจริงได้เลยแม้แต่น้อย ถ้าคุณกำลังคิดจะใช้ Lorem Ipsum สักท่อนหนึ่ง คุณจำเป็นจะต้องตรวจให้แน่ใจว่าไม่มีอะไรน่าอับอายซ่อนอยู่ภายในท่อนนั้นๆ ตัวสร้าง Lorem Ipsum บนอินเทอร์เน็ตทุกตัวมักจะเอาท่อนที่แน่ใจแล้วมาใช้ซ้ำๆ ทำให้กลายเป็นที่มาของตัวสร้างที่แท้จริงบนอินเทอร์เน็ต ในการสร้าง Lorem Ipsum ที่ดูเข้าท่า ต้องใช้คำจากพจนานุกรมภาษาละตินถึงกว่า 200 คำ ผสมกับรูปแบบโครงสร้างประโยคอีกจำนวนหนึ่ง เพราะฉะนั้น Lorem Ipsum ที่ถูกสร้างขึ้นใหม่นี้ก็จะไม่ซ้ำไปซ้ำมา ไม่มีมุกตลกซุกแฝงไว้ภายใน หรือไม่มีคำใดๆ ที่ไม่บ่งบอกความหมาย</span></p>\n', '1', '10', '0000-00-00 00:00:00', '1'),
(12, '2', '1', '1', '4', '0f69c-1.png', '685ca-1.png', '', '', 'name', '00056', '1,234', '2,300', '<p>\n	<span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">มีท่อนต่างๆ ของ Lorem Ipsum ให้หยิบมาใช้งานได้มากมาย แต่ส่วนใหญ่แล้วจะถูกนำไปปรับให้เป็นรูปแบบอื่นๆ อาจจะด้วยการสอดแทรกมุกตลก หรือด้วยคำที่มั่วขึ้นมาซึ่งถึงอย่างไรก็ไม่มีทางเป็นเรื่องจริงได้เลยแม้แต่น้อย ถ้าคุณกำลังคิดจะใช้ Lorem Ipsum สักท่อนหนึ่ง คุณจำเป็นจะต้องตรวจให้แน่ใจว่าไม่มีอะไรน่าอับอายซ่อนอยู่ภายในท่อนนั้นๆ ตัวสร้าง Lorem Ipsum บนอินเทอร์เน็ตทุกตัวมักจะเอาท่อนที่แน่ใจแล้วมาใช้ซ้ำๆ ทำให้กลายเป็นที่มาของตัวสร้างที่แท้จริงบนอินเทอร์เน็ต ในการสร้าง Lorem Ipsum ที่ดูเข้าท่า ต้องใช้คำจากพจนานุกรมภาษาละตินถึงกว่า 200 คำ ผสมกับรูปแบบโครงสร้างประโยคอีกจำนวนหนึ่ง เพราะฉะนั้น Lorem Ipsum ที่ถูกสร้างขึ้นใหม่นี้ก็จะไม่ซ้ำไปซ้ำมา ไม่มีมุกตลกซุกแฝงไว้ภายใน หรือไม่มีคำใดๆ ที่ไม่บ่งบอกความหมาย</span></p>\n', '1', '10', '0000-00-00 00:00:00', ''),
(13, '2', '1', '1', '4', '86046-1.png', '18d18-1.png', '', '', 'BRAKE DISC 321X6 EWC S1000 RR 2019', '00055', '1,234', '2,300', '<p>\n	<span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">มีท่อนต่างๆ ของ Lorem Ipsum ให้หยิบมาใช้งานได้มากมาย แต่ส่วนใหญ่แล้วจะถูกนำไปปรับให้เป็นรูปแบบอื่นๆ อาจจะด้วยการสอดแทรกมุกตลก หรือด้วยคำที่มั่วขึ้นมาซึ่งถึงอย่างไรก็ไม่มีทางเป็นเรื่องจริงได้เลยแม้แต่น้อย ถ้าคุณกำลังคิดจะใช้ Lorem Ipsum สักท่อนหนึ่ง คุณจำเป็นจะต้องตรวจให้แน่ใจว่าไม่มีอะไรน่าอับอายซ่อนอยู่ภายในท่อนนั้นๆ ตัวสร้าง Lorem Ipsum บนอินเทอร์เน็ตทุกตัวมักจะเอาท่อนที่แน่ใจแล้วมาใช้ซ้ำๆ ทำให้กลายเป็นที่มาของตัวสร้างที่แท้จริงบนอินเทอร์เน็ต ในการสร้าง Lorem Ipsum ที่ดูเข้าท่า ต้องใช้คำจากพจนานุกรมภาษาละตินถึงกว่า 200 คำ ผสมกับรูปแบบโครงสร้างประโยคอีกจำนวนหนึ่ง เพราะฉะนั้น Lorem Ipsum ที่ถูกสร้างขึ้นใหม่นี้ก็จะไม่ซ้ำไปซ้ำมา ไม่มีมุกตลกซุกแฝงไว้ภายใน หรือไม่มีคำใดๆ ที่ไม่บ่งบอกความหมาย</span></p>\n', '1', '10', '0000-00-00 00:00:00', '1'),
(14, '2', '1', '1', '3', '81d69-2.png', '6c2d8-2.png', '', '', 'BRAKE DISC 321X6 EWC S1000 RR 2019', '00054', '1,234', '2,300', '<p>\n	<span background-color:=\"\" font-size:=\"\" open=\"\" style=\"font-family: \" text-align:=\"\">มีท่อนต่างๆ ของ Lorem Ipsum ให้หยิบมาใช้งานได้มากมาย แต่ส่วนใหญ่แล้วจะถูกนำไปปรับให้เป็นรูปแบบอื่นๆ อาจจะด้วยการสอดแทรกมุกตลก หรือด้วยคำที่มั่วขึ้นมาซึ่งถึงอย่างไรก็ไม่มีทางเป็นเรื่องจริงได้เลยแม้แต่น้อย ถ้าคุณกำลังคิดจะใช้ Lorem Ipsum สักท่อนหนึ่ง คุณจำเป็นจะต้องตรวจให้แน่ใจว่าไม่มีอะไรน่าอับอายซ่อนอยู่ภายในท่อนนั้นๆ ตัวสร้าง Lorem Ipsum บนอินเทอร์เน็ตทุกตัวมักจะเอาท่อนที่แน่ใจแล้วมาใช้ซ้ำๆ ทำให้กลายเป็นที่มาของตัวสร้างที่แท้จริงบนอินเทอร์เน็ต ในการสร้าง Lorem Ipsum ที่ดูเข้าท่า ต้องใช้คำจากพจนานุกรมภาษาละตินถึงกว่า 200 คำ ผสมกับรูปแบบโครงสร้างประโยคอีกจำนวนหนึ่ง เพราะฉะนั้น Lorem Ipsum ที่ถูกสร้างขึ้นใหม่นี้ก็จะไม่ซ้ำไปซ้ำมา ไม่มีมุกตลกซุกแฝงไว้ภายใน หรือไม่มีคำใดๆ ที่ไม่บ่งบอกความหมาย</span></p>\n', '1', '9', '0000-00-00 00:00:00', '1'),
(15, '4', '1', '1', '3', '38257-4.png', '32d76-4.png', 'c5fe7-4.png', '', 'BRAKE DISC 321X6 EWC S1000 RR 2019', '00053', '1,234', '2,300', '<p>\n	<span background-color:=\"\" font-size:=\"\" open=\"\" style=\"font-family: \" text-align:=\"\">มีท่อนต่างๆ ของ Lorem Ipsum ให้หยิบมาใช้งานได้มากมาย แต่ส่วนใหญ่แล้วจะถูกนำไปปรับให้เป็นรูปแบบอื่นๆ อาจจะด้วยการสอดแทรกมุกตลก หรือด้วยคำที่มั่วขึ้นมาซึ่งถึงอย่างไรก็ไม่มีทางเป็นเรื่องจริงได้เลยแม้แต่น้อย ถ้าคุณกำลังคิดจะใช้ Lorem Ipsum สักท่อนหนึ่ง คุณจำเป็นจะต้องตรวจให้แน่ใจว่าไม่มีอะไรน่าอับอายซ่อนอยู่ภายในท่อนนั้นๆ ตัวสร้าง Lorem Ipsum บนอินเทอร์เน็ตทุกตัวมักจะเอาท่อนที่แน่ใจแล้วมาใช้ซ้ำๆ ทำให้กลายเป็นที่มาของตัวสร้างที่แท้จริงบนอินเทอร์เน็ต ในการสร้าง Lorem Ipsum ที่ดูเข้าท่า ต้องใช้คำจากพจนานุกรมภาษาละตินถึงกว่า 200 คำ ผสมกับรูปแบบโครงสร้างประโยคอีกจำนวนหนึ่ง เพราะฉะนั้น Lorem Ipsum ที่ถูกสร้างขึ้นใหม่นี้ก็จะไม่ซ้ำไปซ้ำมา ไม่มีมุกตลกซุกแฝงไว้ภายใน หรือไม่มีคำใดๆ ที่ไม่บ่งบอกความหมาย</span></p>\n', '1', '10', '0000-00-00 00:00:00', '1'),
(16, '2', '1', '1', '15', '20575-5.png', 'dee01-5.png', '', '', 'BRAKE DISC 321X6 EWC S1000 RR 2019', '00052', '1,234', '2,300', '<p>\n	<span background-color:=\"\" font-size:=\"\" open=\"\" style=\"font-family: \" text-align:=\"\">มีท่อนต่างๆ ของ Lorem Ipsum ให้หยิบมาใช้งานได้มากมาย แต่ส่วนใหญ่แล้วจะถูกนำไปปรับให้เป็นรูปแบบอื่นๆ อาจจะด้วยการสอดแทรกมุกตลก หรือด้วยคำที่มั่วขึ้นมาซึ่งถึงอย่างไรก็ไม่มีทางเป็นเรื่องจริงได้เลยแม้แต่น้อย ถ้าคุณกำลังคิดจะใช้ Lorem Ipsum สักท่อนหนึ่ง คุณจำเป็นจะต้องตรวจให้แน่ใจว่าไม่มีอะไรน่าอับอายซ่อนอยู่ภายในท่อนนั้นๆ ตัวสร้าง Lorem Ipsum บนอินเทอร์เน็ตทุกตัวมักจะเอาท่อนที่แน่ใจแล้วมาใช้ซ้ำๆ ทำให้กลายเป็นที่มาของตัวสร้างที่แท้จริงบนอินเทอร์เน็ต ในการสร้าง Lorem Ipsum ที่ดูเข้าท่า ต้องใช้คำจากพจนานุกรมภาษาละตินถึงกว่า 200 คำ ผสมกับรูปแบบโครงสร้างประโยคอีกจำนวนหนึ่ง เพราะฉะนั้น Lorem Ipsum ที่ถูกสร้างขึ้นใหม่นี้ก็จะไม่ซ้ำไปซ้ำมา ไม่มีมุกตลกซุกแฝงไว้ภายใน หรือไม่มีคำใดๆ ที่ไม่บ่งบอกความหมาย</span></p>\n', '1', '10', '0000-00-00 00:00:00', '1'),
(17, '4', '1', '1', '4', '41db7-2.png', 'ad7c5-2.png', '', '', 'BRAKE DISC 321X6 EWC S1000 RR 2019', '00051', '1,234', '2,300', '<p>\n	<span background-color:=\"\" font-size:=\"\" open=\"\" style=\"font-family: \" text-align:=\"\">มีท่อนต่างๆ ของ Lorem Ipsum ให้หยิบมาใช้งานได้มากมาย แต่ส่วนใหญ่แล้วจะถูกนำไปปรับให้เป็นรูปแบบอื่นๆ อาจจะด้วยการสอดแทรกมุกตลก หรือด้วยคำที่มั่วขึ้นมาซึ่งถึงอย่างไรก็ไม่มีทางเป็นเรื่องจริงได้เลยแม้แต่น้อย ถ้าคุณกำลังคิดจะใช้ Lorem Ipsum สักท่อนหนึ่ง คุณจำเป็นจะต้องตรวจให้แน่ใจว่าไม่มีอะไรน่าอับอายซ่อนอยู่ภายในท่อนนั้นๆ ตัวสร้าง Lorem Ipsum บนอินเทอร์เน็ตทุกตัวมักจะเอาท่อนที่แน่ใจแล้วมาใช้ซ้ำๆ ทำให้กลายเป็นที่มาของตัวสร้างที่แท้จริงบนอินเทอร์เน็ต ในการสร้าง Lorem Ipsum ที่ดูเข้าท่า ต้องใช้คำจากพจนานุกรมภาษาละตินถึงกว่า 200 คำ ผสมกับรูปแบบโครงสร้างประโยคอีกจำนวนหนึ่ง เพราะฉะนั้น Lorem Ipsum ที่ถูกสร้างขึ้นใหม่นี้ก็จะไม่ซ้ำไปซ้ำมา ไม่มีมุกตลกซุกแฝงไว้ภายใน หรือไม่มีคำใดๆ ที่ไม่บ่งบอกความหมาย</span></p>\n', '1', '10', '0000-00-00 00:00:00', '1');

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
(3, '04823-1_03.png', '1'),
(4, '9cda4-slide_banner_n01.jpg', '1');

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

INSERT INTO `select_your_bike` (`id`, `name_product`, `img1`, `img2`, `img3`, `img4`, `img5`, `category`, `sub_category`, `model`, `name_color`, `name_year`, `Price`, `discount`, `quality`, `detail`, `status`) VALUES
(1, 'SLIP ON CARBON', '643b3-1.png', '59d67-1.png', '55833-1.png', '33a89-1.png', '26949-1.png', '2', '27', '12', '1', '120', '1,234', '3,210', '10', '<p>\n	<span style=\"color: rgb(116, 116, 116); font-family: helvetica, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</span></p>\n', '1'),
(2, 'SLIP ON CARBON', '15e55-2.png', 'cf066-2.png', '3c26f-2.png', '9d0e1-2.png', '223c0-2.png', '2', '17', '2', '1', '101', '1,234', '1,300', '5', '<p>\n	<span style=\"color: rgb(116, 116, 116); font-family: helvetica, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</span></p>\n', '1');

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
  `id` int(10) NOT NULL,
  `name_subcategory` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `name_subcategory`) VALUES
(1, 'Master Cylinder'),
(2, 'Caliper'),
(3, 'Brake Rotors'),
(4, 'Brake Pads'),
(5, 'Clear Clutch Cover'),
(6, 'Clutch Slave Cylinder'),
(7, 'Wet Clutch'),
(8, 'Dry Clutch'),
(9, 'Grips'),
(10, 'Handlebar & Clip on'),
(11, 'Handlebar End Cap'),
(12, 'Riser & Clamp'),
(13, 'Air Filter'),
(14, 'Oil Filter'),
(15, 'Brake Oil'),
(16, 'Engine Oil'),
(17, 'Battery'),
(18, 'Charger'),
(19, 'Cleaner'),
(20, 'Bike Cover'),
(21, 'Cruise Control'),
(22, 'Gear Position Indicator'),
(23, 'Paddock Stand'),
(24, 'Volt Guage'),
(25, 'Bolts'),
(26, 'Brake/Clutch Lever'),
(27, 'Carbon Part'),
(28, 'Exhuast Hanger'),
(29, 'Frame Plug'),
(30, 'Gas Cap'),
(31, 'Heel Guard'),
(32, 'Horn'),
(33, 'Hose Kit'),
(34, 'Kickstand'),
(35, 'License Plate'),
(36, 'Oil Breather'),
(37, 'Oil Filler Cap'),
(38, 'Other Parts'),
(39, 'Pegs'),
(40, 'Quickshifter'),
(41, 'Rearset'),
(42, 'Remote Adjuster'),
(43, 'Sprocket Cover'),
(44, 'Switch'),
(45, 'Tank Traction Grips'),
(46, 'Timing Belt Cover'),
(47, 'Timing Inspection Cover'),
(48, 'Water pump Protection'),
(49, 'Windscreen'),
(50, 'Proguard'),
(51, 'Radiator & Oil Cooler Guard'),
(52, 'Slider & Engine Guard'),
(53, 'Front Fork'),
(54, 'Rear Shock Absorber'),
(55, 'Steering Damper'),
(56, 'Chain'),
(57, 'Chain Adjuster'),
(58, 'Hub Kit '),
(59, 'Sprocket');

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
-- Indexes for table `brand_category`
--
ALTER TABLE `brand_category`
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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `brand_category`
--
ALTER TABLE `brand_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `main_category`
--
ALTER TABLE `main_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

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
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `select_your_bike`
--
ALTER TABLE `select_your_bike`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

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
