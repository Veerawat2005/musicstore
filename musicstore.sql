-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2025 at 05:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` enum('CD','Vinyl','Digital Download','Merchandise') NOT NULL,
  `stock` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category`, `stock`, `created_at`) VALUES
(1, 'Greatest Hits CD', 'รวมเพลงฮิตตลอดกาล', 350.00, 'CD', 20, '2025-09-29 03:04:52'),
(2, 'Classic Rock Vinyl', 'อัลบั้มแผ่นเสียงแนวร็อค', 1200.00, 'Vinyl', 10, '2025-09-29 03:04:52'),
(3, 'Pop Digital Album', 'อัลบั้มดิจิทัลดาวน์โหลดไฟล์ MP3/FLAC', 250.00, 'Digital Download', 50, '2025-09-29 03:04:52'),
(4, 'Band T-Shirt', 'เสื้อยืดลายวงดนตรี', 450.00, 'Merchandise', 30, '2025-09-29 03:04:52'),
(5, 'Love Songs CD', 'รวมเพลงรักฮิต', 300.00, 'CD', 15, '2025-09-29 03:04:52'),
(6, 'Jazz Vinyl Collection', 'ชุดรวมเพลงแจ๊สแผ่นเสียง', 1500.00, 'Vinyl', 8, '2025-09-29 03:04:52'),
(7, 'Hip-Hop Digital Album', 'อัลบั้มฮิปฮอปดาวน์โหลด', 200.00, 'Digital Download', 40, '2025-09-29 03:04:52'),
(8, 'Concert Mug', 'แก้วที่ระลึกจากคอนเสิร์ต', 180.00, 'Merchandise', 25, '2025-09-29 03:04:52'),
(9, 'Acoustic Hits CD', 'รวมเพลงอะคูสติกยอดนิยม', 320.00, 'CD', 18, '2025-09-29 03:04:52'),
(10, 'Retro Pop Vinyl', 'แผ่นเสียงเพลงป๊อปยุค 80s', 1350.00, 'Vinyl', 12, '2025-09-29 03:04:52'),
(11, 'Electronic Beats Digital Album', 'อัลบั้มเพลงอิเล็กทรอนิกส์ไฟล์ FLAC', 220.00, 'Digital Download', 60, '2025-09-29 03:04:52'),
(12, 'Band Hoodie', 'เสื้อฮู้ดลายโลโก้วงดนตรี', 650.00, 'Merchandise', 20, '2025-09-29 03:04:52'),
(13, 'Piano Classics CD', 'เพลงเปียโนคลาสสิกตลอดกาล', 280.00, 'CD', 25, '2025-09-29 03:04:52'),
(14, 'Blues Vinyl Album', 'อัลบั้มแผ่นเสียงเพลงบลูส์', 1450.00, 'Vinyl', 9, '2025-09-29 03:04:52'),
(15, 'Indie Rock Digital Album', 'อัลบั้มเพลงอินดี้ร็อคไฟล์ MP3', 210.00, 'Digital Download', 45, '2025-09-29 03:04:52'),
(16, 'Concert Cap', 'หมวกแก๊ปที่ระลึกจากคอนเสิร์ต', 300.00, 'Merchandise', 15, '2025-09-29 03:04:52'),
(17, 'Romantic Ballads CD', 'รวมเพลงบัลลาดรักซึ้งๆ', 340.00, 'CD', 22, '2025-09-29 03:04:52'),
(18, 'Symphony Vinyl Collection', 'บ็อกซ์เซ็ตแผ่นเสียงซิมโฟนี', 2000.00, 'Vinyl', 6, '2025-09-29 03:04:52'),
(19, 'Dance Mix Digital Album', 'รวมเพลงแดนซ์มันส์ๆ ดาวน์โหลด', 190.00, 'Digital Download', 55, '2025-09-29 03:04:52'),
(20, 'Keychain Merchandise', 'พวงกุญแจวงดนตรี', 120.00, 'Merchandise', 40, '2025-09-29 03:04:52'),
(21, 'New Album CD', 'อัลบั้มใหม่ล่าสุด', 400.00, 'CD', 12, '2025-09-29 03:34:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
