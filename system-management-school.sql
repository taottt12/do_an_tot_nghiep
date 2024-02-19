-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2024 at 03:06 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `system-management-school`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `detail_schedules_id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Khoa Đào tạo và BDCD', 'Phòng ban trong Trường Cao đẳng Kinh tế Kế hoạch', 'khoa-dao-tao-va-bdcd', '2024-01-16 06:55:30', '2024-01-16 06:55:30'),
(2, 'Khoa Kế hạch và Quản trị', 'Đào tạo và nghiên cứu về quản lý kế hoạch và quản trị trong giáo dục đại học và tổ chức.', 'khoa-ke-hoach-va-quan-tri', '2024-01-16 06:55:30', '2024-01-16 06:55:30'),
(3, 'Khoa Kế toán', 'Đào tạo và nghiên cứu về các nguyên tắc, phương pháp và quy trình liên quan đến lĩnh vực Kế toán trong giáo dục đại học và tổ chức, bao gồm quản lý tài chính, phân tích tài chính, kiểm toán, quản lý chi phí và công tác thuế.', 'khoa-ke-toan', '2024-01-16 06:55:30', '2024-01-16 06:55:30'),
(4, 'Khoa Kinh tế cơ sở', 'Đào tạo và nghiên cứu về nguyên lý và quản lý kinh tế trong giáo dục đại học và tổ chức', 'khoa-kinh-te-co-so', '2024-01-16 06:55:30', '2024-01-16 06:55:30'),
(5, 'Khoa Tin học và Ngoại ngữ', 'Đào tạo và nghiên cứu về Tin học và các ngôn ngữ ngoại ngữ trong giáo dục đại học và tổ chức', 'khoa-tin-học-va-ngoai-ngu', '2024-01-16 06:55:30', '2024-01-16 06:55:30'),
(6, 'Department of foreign language information technology', 'Khoa tin học ngoại ngữ', 'tin-hoc-ngoai-ngu', '2024-01-16 06:55:30', '2024-01-16 06:55:30'),
(7, 'Accounting department', 'Khoa kế toán', 'ke-toan', '2024-01-16 06:55:30', '2024-01-16 06:55:30'),
(8, 'Tourism English Department', 'Khoa tiếng anh du lịch', 'tieng-anh-du-lich', '2024-01-16 06:55:30', '2024-01-16 06:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `detail__attendances`
--

CREATE TABLE `detail__attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attendance_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail__classes`
--

CREATE TABLE `detail__classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `descriptions` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail__classes`
--

INSERT INTO `detail__classes` (`id`, `grade_id`, `teacher_id`, `student_id`, `descriptions`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 'Giáo viên chủ nhiệm của lớp CNTT1-21', 1, '2024-01-16 07:39:07', '2024-01-16 07:39:07'),
(2, 1, NULL, 1, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(3, 3, NULL, 1, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(4, 1, NULL, 2, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(5, 3, NULL, 2, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(6, 1, NULL, 3, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(7, 5, NULL, 3, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(8, 2, NULL, 4, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(9, 3, NULL, 4, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(10, 3, NULL, 5, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(11, 4, NULL, 5, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(12, 1, NULL, 6, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(13, 5, NULL, 6, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(14, 1, NULL, 7, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(15, 6, NULL, 7, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(16, 2, NULL, 8, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(17, 5, NULL, 8, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(18, 2, NULL, 9, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(19, 4, NULL, 9, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(20, 2, NULL, 10, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(21, 5, NULL, 10, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(22, 2, NULL, 11, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(23, 4, NULL, 11, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(24, 3, NULL, 12, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(25, 4, NULL, 12, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(26, 2, NULL, 13, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(27, 6, NULL, 13, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(28, 1, NULL, 14, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(29, 4, NULL, 14, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(30, 1, NULL, 15, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(31, 3, NULL, 15, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(32, 1, NULL, 16, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(33, 4, NULL, 16, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(34, 5, NULL, 17, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(35, 3, NULL, 17, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(36, 6, NULL, 18, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(37, 4, NULL, 18, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(38, 1, NULL, 19, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(39, 5, NULL, 19, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(40, 5, NULL, 20, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(41, 3, NULL, 20, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(42, 6, NULL, 21, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(43, 4, NULL, 21, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(44, 2, NULL, 22, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(45, 6, NULL, 22, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(46, 1, NULL, 23, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(47, 5, NULL, 23, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(48, 1, NULL, 24, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(49, 3, NULL, 24, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(50, 1, NULL, 25, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(51, 2, NULL, 25, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(52, 5, NULL, 26, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(53, 6, NULL, 26, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(54, 1, NULL, 27, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(55, 4, NULL, 27, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(56, 1, NULL, 28, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(57, 6, NULL, 28, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(58, 1, NULL, 29, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(59, 5, NULL, 29, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(60, 5, NULL, 30, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(61, 3, NULL, 30, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(62, 1, NULL, 31, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(63, 2, NULL, 31, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(64, 1, NULL, 32, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(65, 4, NULL, 32, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(66, 3, NULL, 33, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(67, 4, NULL, 33, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(68, 3, NULL, 34, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(69, 4, NULL, 34, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(70, 6, NULL, 35, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(71, 4, NULL, 35, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(72, 2, NULL, 36, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(73, 6, NULL, 36, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(74, 6, NULL, 37, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(75, 3, NULL, 37, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(76, 1, NULL, 38, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(77, 2, NULL, 38, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(78, 2, NULL, 39, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(79, 5, NULL, 39, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(80, 1, NULL, 40, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(81, 6, NULL, 40, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(82, 2, NULL, 41, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(83, 4, NULL, 41, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(84, 1, NULL, 42, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(85, 2, NULL, 42, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(86, 5, NULL, 43, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(87, 3, NULL, 43, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(88, 6, NULL, 44, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(89, 3, NULL, 44, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(90, 5, NULL, 45, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(91, 4, NULL, 45, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(92, 6, NULL, 46, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(93, 4, NULL, 46, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(94, 5, NULL, 47, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(95, 4, NULL, 47, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(96, 5, NULL, 48, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(97, 3, NULL, 48, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(98, 6, NULL, 49, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(99, 4, NULL, 49, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(100, 5, NULL, 50, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(101, 4, NULL, 50, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(102, 2, NULL, 51, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(103, 5, NULL, 51, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(104, 1, NULL, 52, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(105, 6, NULL, 52, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(106, 2, NULL, 53, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(107, 4, NULL, 53, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(108, 2, NULL, 54, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(109, 6, NULL, 54, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(110, 2, NULL, 55, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(111, 3, NULL, 55, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(112, 1, NULL, 56, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(113, 3, NULL, 56, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(114, 1, NULL, 57, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(115, 3, NULL, 57, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(116, 6, NULL, 58, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(117, 3, NULL, 58, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(118, 5, NULL, 59, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(119, 3, NULL, 59, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(120, 1, NULL, 60, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(121, 3, NULL, 60, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(122, 2, NULL, 61, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(123, 3, NULL, 61, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(124, 1, NULL, 62, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(125, 2, NULL, 62, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(126, 5, NULL, 63, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(127, 4, NULL, 63, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(128, 2, NULL, 64, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(129, 3, NULL, 64, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(130, 3, NULL, 65, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(131, 4, NULL, 65, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(132, 2, NULL, 66, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(133, 4, NULL, 66, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(134, 5, NULL, 67, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(135, 6, NULL, 67, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(136, 3, NULL, 68, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(137, 4, NULL, 68, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(138, 3, NULL, 69, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(139, 4, NULL, 69, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(140, 1, NULL, 70, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(141, 6, NULL, 70, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(142, 1, NULL, 71, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(143, 2, NULL, 71, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(144, 5, NULL, 72, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(145, 4, NULL, 72, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(146, 1, NULL, 73, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(147, 3, NULL, 73, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(148, 2, NULL, 74, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(149, 4, NULL, 74, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(150, 3, NULL, 75, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(151, 4, NULL, 75, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(152, 2, NULL, 76, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(153, 3, NULL, 76, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(154, 5, NULL, 77, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(155, 6, NULL, 77, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(156, 5, NULL, 78, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(157, 3, NULL, 78, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(158, 6, NULL, 79, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(159, 4, NULL, 79, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(160, 2, NULL, 80, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(161, 3, NULL, 80, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(162, 2, NULL, 81, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(163, 6, NULL, 81, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(164, 6, NULL, 82, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(165, 4, NULL, 82, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(166, 2, NULL, 83, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(167, 6, NULL, 83, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(168, 3, NULL, 84, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(169, 4, NULL, 84, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(170, 1, NULL, 85, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(171, 3, NULL, 85, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(172, 5, NULL, 86, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(173, 3, NULL, 86, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(174, 5, NULL, 87, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(175, 3, NULL, 87, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(176, 2, NULL, 88, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(177, 3, NULL, 88, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(178, 3, NULL, 89, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(179, 4, NULL, 89, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(180, 1, NULL, 90, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(181, 3, NULL, 90, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(182, 3, NULL, 91, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(183, 4, NULL, 91, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(184, 2, NULL, 92, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(185, 5, NULL, 92, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(186, 2, NULL, 93, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(187, 6, NULL, 93, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(188, 2, NULL, 94, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(189, 5, NULL, 94, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(190, 6, NULL, 95, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(191, 4, NULL, 95, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(192, 1, NULL, 96, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(193, 3, NULL, 96, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(194, 2, NULL, 97, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(195, 5, NULL, 97, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(196, 6, NULL, 98, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(197, 4, NULL, 98, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(198, 6, NULL, 99, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(199, 4, NULL, 99, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(200, 2, NULL, 100, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(201, 5, NULL, 100, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(202, 1, NULL, 101, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(203, 3, NULL, 101, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(204, 1, NULL, 102, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(205, 6, NULL, 102, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(206, 2, NULL, 103, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(207, 5, NULL, 103, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(208, 1, NULL, 104, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(209, 6, NULL, 104, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(210, 6, NULL, 105, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(211, 4, NULL, 105, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(212, 3, NULL, 106, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(213, 4, NULL, 106, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(214, 5, NULL, 107, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(215, 3, NULL, 107, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(216, 1, NULL, 108, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(217, 2, NULL, 108, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(218, 5, NULL, 109, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(219, 4, NULL, 109, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(220, 6, NULL, 110, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(221, 3, NULL, 110, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(222, 2, NULL, 111, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(223, 6, NULL, 111, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(224, 5, NULL, 112, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(225, 3, NULL, 112, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(226, 1, NULL, 113, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(227, 2, NULL, 113, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(228, 2, NULL, 114, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(229, 4, NULL, 114, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(230, 1, NULL, 115, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(231, 2, NULL, 115, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(232, 5, NULL, 116, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(233, 6, NULL, 116, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(234, 1, NULL, 117, 'Sinh viên lớp CNTT1-21', 0, NULL, NULL),
(235, 4, NULL, 117, 'Sinh viên lớp TATM2-21', 0, NULL, NULL),
(236, 2, NULL, 118, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(237, 5, NULL, 118, 'Sinh viên lớp MAR1-21', 0, NULL, NULL),
(238, 6, NULL, 119, 'Sinh viên lớp MAR2-21', 0, NULL, NULL),
(239, 3, NULL, 119, 'Sinh viên lớp TATM1-21', 0, NULL, NULL),
(240, 2, NULL, 120, 'Sinh viên lớp CNTT2-21', 0, NULL, NULL),
(241, 3, NULL, 120, 'Sinh viên lớp TATM1-21', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail__departments`
--

CREATE TABLE `detail__departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `grade_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail__departments`
--

INSERT INTO `detail__departments` (`id`, `department_id`, `teacher_id`, `grade_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '2024-01-16 07:04:56', '2024-01-16 07:04:56'),
(2, 6, 2, NULL, NULL, NULL),
(3, 8, 2, NULL, NULL, NULL),
(4, 1, 3, NULL, NULL, NULL),
(5, 2, 3, NULL, NULL, NULL),
(6, 4, 4, NULL, NULL, NULL),
(7, 5, 4, NULL, NULL, NULL),
(8, 2, 5, NULL, NULL, NULL),
(9, 4, 5, NULL, NULL, NULL),
(10, 1, 6, NULL, NULL, NULL),
(11, 8, 6, NULL, NULL, NULL),
(12, 1, 7, NULL, NULL, NULL),
(13, 3, 7, NULL, NULL, NULL),
(14, 7, 8, NULL, NULL, NULL),
(15, 1, 8, NULL, NULL, NULL),
(16, 1, 9, NULL, NULL, NULL),
(17, 5, 9, NULL, NULL, NULL),
(18, 2, 10, NULL, NULL, NULL),
(19, 5, 10, NULL, NULL, NULL),
(20, 1, 11, NULL, NULL, NULL),
(21, 8, 11, NULL, NULL, NULL),
(22, 7, 12, NULL, NULL, NULL),
(23, 8, 12, NULL, NULL, NULL),
(24, 3, 13, NULL, NULL, NULL),
(25, 5, 13, NULL, NULL, NULL),
(26, 6, 14, NULL, NULL, NULL),
(27, 1, 14, NULL, NULL, NULL),
(28, 6, 15, NULL, NULL, NULL),
(29, 3, 15, NULL, NULL, NULL),
(30, 5, 16, NULL, NULL, NULL),
(31, 8, 16, NULL, NULL, NULL),
(32, 3, 17, NULL, NULL, NULL),
(33, 4, 17, NULL, NULL, NULL),
(34, 6, 18, NULL, NULL, NULL),
(35, 3, 18, NULL, NULL, NULL),
(36, 7, 19, NULL, NULL, NULL),
(37, 8, 19, NULL, NULL, NULL),
(38, 2, 20, NULL, NULL, NULL),
(39, 5, 20, NULL, NULL, NULL),
(40, 7, 21, NULL, NULL, NULL),
(41, 2, 21, NULL, NULL, NULL),
(42, 2, 22, NULL, NULL, NULL),
(43, 5, 22, NULL, NULL, NULL),
(44, 6, 23, NULL, NULL, NULL),
(45, 2, 23, NULL, NULL, NULL),
(46, 1, 24, NULL, NULL, NULL),
(47, 8, 24, NULL, NULL, NULL),
(48, 1, 25, NULL, NULL, NULL),
(49, 5, 25, NULL, NULL, NULL),
(50, 7, 26, NULL, NULL, NULL),
(51, 5, 26, NULL, NULL, NULL),
(52, 1, 27, NULL, NULL, NULL),
(53, 2, 27, NULL, NULL, NULL),
(54, 3, 28, NULL, NULL, NULL),
(55, 8, 28, NULL, NULL, NULL),
(56, 3, 29, NULL, NULL, NULL),
(57, 5, 29, NULL, NULL, NULL),
(58, 6, 30, NULL, NULL, NULL),
(59, 3, 30, NULL, NULL, NULL),
(60, 7, 31, NULL, NULL, NULL),
(61, 1, 31, NULL, NULL, NULL),
(62, 1, 32, NULL, NULL, NULL),
(63, 4, 32, NULL, NULL, NULL),
(64, 1, 33, NULL, NULL, NULL),
(65, 4, 33, NULL, NULL, NULL),
(66, 3, 34, NULL, NULL, NULL),
(67, 4, 34, NULL, NULL, NULL),
(68, 2, 35, NULL, NULL, NULL),
(69, 8, 35, NULL, NULL, NULL),
(70, 7, 36, NULL, NULL, NULL),
(71, 1, 36, NULL, NULL, NULL),
(72, 6, 37, NULL, NULL, NULL),
(73, 5, 37, NULL, NULL, NULL),
(74, 6, 38, NULL, NULL, NULL),
(75, 2, 38, NULL, NULL, NULL),
(76, 7, 39, NULL, NULL, NULL),
(77, 1, 39, NULL, NULL, NULL),
(78, 2, 40, NULL, NULL, NULL),
(79, 4, 40, NULL, NULL, NULL),
(80, 1, 41, NULL, NULL, NULL),
(81, 8, 41, NULL, NULL, NULL),
(82, 2, 42, NULL, NULL, NULL),
(83, 3, 42, NULL, NULL, NULL),
(84, 6, 43, NULL, NULL, NULL),
(85, 2, 43, NULL, NULL, NULL),
(86, 7, 44, NULL, NULL, NULL),
(87, 6, 44, NULL, NULL, NULL),
(88, 2, 45, NULL, NULL, NULL),
(89, 3, 45, NULL, NULL, NULL),
(90, 1, 46, NULL, NULL, NULL),
(91, 5, 46, NULL, NULL, NULL),
(92, 6, 47, NULL, NULL, NULL),
(93, 1, 47, NULL, NULL, NULL),
(94, 7, 48, NULL, NULL, NULL),
(95, 6, 48, NULL, NULL, NULL),
(96, 2, 49, NULL, NULL, NULL),
(97, 5, 49, NULL, NULL, NULL),
(98, 7, 50, NULL, NULL, NULL),
(99, 3, 50, NULL, NULL, NULL),
(100, 1, 51, NULL, NULL, NULL),
(101, 8, 51, NULL, NULL, NULL),
(102, 7, 52, NULL, NULL, NULL),
(103, 8, 52, NULL, NULL, NULL),
(104, 2, 53, NULL, NULL, NULL),
(105, 8, 53, NULL, NULL, NULL),
(106, 3, 54, NULL, NULL, NULL),
(107, 5, 54, NULL, NULL, NULL),
(108, 1, 55, NULL, NULL, NULL),
(109, 5, 55, NULL, NULL, NULL),
(110, 1, 56, NULL, NULL, NULL),
(111, 4, 56, NULL, NULL, NULL),
(112, 4, 57, NULL, NULL, NULL),
(113, 5, 57, NULL, NULL, NULL),
(114, 7, 58, NULL, NULL, NULL),
(115, 5, 58, NULL, NULL, NULL),
(116, 6, 59, NULL, NULL, NULL),
(117, 3, 59, NULL, NULL, NULL),
(118, 6, 60, NULL, NULL, NULL),
(119, 8, 60, NULL, NULL, NULL),
(120, 3, 61, NULL, NULL, NULL),
(121, 8, 61, NULL, NULL, NULL),
(122, 3, 62, NULL, NULL, NULL),
(123, 4, 62, NULL, NULL, NULL),
(124, 1, 63, NULL, NULL, NULL),
(125, 5, 63, NULL, NULL, NULL),
(126, 3, 64, NULL, NULL, NULL),
(127, 8, 64, NULL, NULL, NULL),
(128, 1, 65, NULL, NULL, NULL),
(129, 2, 65, NULL, NULL, NULL),
(130, 6, 66, NULL, NULL, NULL),
(131, 5, 66, NULL, NULL, NULL),
(132, 6, 67, NULL, NULL, NULL),
(133, 5, 67, NULL, NULL, NULL),
(134, 6, 68, NULL, NULL, NULL),
(135, 5, 68, NULL, NULL, NULL),
(136, 3, 69, NULL, NULL, NULL),
(137, 4, 69, NULL, NULL, NULL),
(138, 7, 70, NULL, NULL, NULL),
(139, 8, 70, NULL, NULL, NULL),
(140, 4, 71, NULL, NULL, NULL),
(141, 8, 71, NULL, NULL, NULL),
(142, 7, 72, NULL, NULL, NULL),
(143, 3, 72, NULL, NULL, NULL),
(144, 2, 73, NULL, NULL, NULL),
(145, 5, 73, NULL, NULL, NULL),
(146, 2, 74, NULL, NULL, NULL),
(147, 3, 74, NULL, NULL, NULL),
(148, 6, 75, NULL, NULL, NULL),
(149, 1, 75, NULL, NULL, NULL),
(150, 7, 76, NULL, NULL, NULL),
(151, 4, 76, NULL, NULL, NULL),
(152, 1, 77, NULL, NULL, NULL),
(153, 5, 77, NULL, NULL, NULL),
(154, 6, 78, NULL, NULL, NULL),
(155, 1, 78, NULL, NULL, NULL),
(156, 7, 79, NULL, NULL, NULL),
(157, 2, 79, NULL, NULL, NULL),
(158, 2, 80, NULL, NULL, NULL),
(159, 3, 80, NULL, NULL, NULL),
(160, 1, 81, NULL, NULL, NULL),
(161, 3, 81, NULL, NULL, NULL),
(162, 6, 82, NULL, NULL, NULL),
(163, 8, 82, NULL, NULL, NULL),
(164, 6, 83, NULL, NULL, NULL),
(165, 8, 83, NULL, NULL, NULL),
(166, 7, 84, NULL, NULL, NULL),
(167, 3, 84, NULL, NULL, NULL),
(168, 1, 85, NULL, NULL, NULL),
(169, 8, 85, NULL, NULL, NULL),
(170, 7, 86, NULL, NULL, NULL),
(171, 8, 86, NULL, NULL, NULL),
(172, 1, 87, NULL, NULL, NULL),
(173, 4, 87, NULL, NULL, NULL),
(174, 4, 88, NULL, NULL, NULL),
(175, 5, 88, NULL, NULL, NULL),
(176, 7, 89, NULL, NULL, NULL),
(177, 1, 89, NULL, NULL, NULL),
(178, 7, 90, NULL, NULL, NULL),
(179, 5, 90, NULL, NULL, NULL),
(180, 7, 91, NULL, NULL, NULL),
(181, 1, 91, NULL, NULL, NULL),
(182, 3, 92, NULL, NULL, NULL),
(183, 8, 92, NULL, NULL, NULL),
(184, 2, 93, NULL, NULL, NULL),
(185, 5, 93, NULL, NULL, NULL),
(186, 7, 94, NULL, NULL, NULL),
(187, 8, 94, NULL, NULL, NULL),
(188, 3, 95, NULL, NULL, NULL),
(189, 5, 95, NULL, NULL, NULL),
(190, 6, 96, NULL, NULL, NULL),
(191, 1, 96, NULL, NULL, NULL),
(192, 7, 97, NULL, NULL, NULL),
(193, 8, 97, NULL, NULL, NULL),
(194, 3, 98, NULL, NULL, NULL),
(195, 5, 98, NULL, NULL, NULL),
(196, 7, 99, NULL, NULL, NULL),
(197, 8, 99, NULL, NULL, NULL),
(198, 6, 100, NULL, NULL, NULL),
(199, 2, 100, NULL, NULL, NULL),
(200, 7, 101, NULL, NULL, NULL),
(201, 3, 101, NULL, NULL, NULL),
(202, 4, 102, NULL, NULL, NULL),
(203, 5, 102, NULL, NULL, NULL),
(204, 5, 103, NULL, NULL, NULL),
(205, 8, 103, NULL, NULL, NULL),
(206, 7, 104, NULL, NULL, NULL),
(207, 4, 104, NULL, NULL, NULL),
(208, 1, 105, NULL, NULL, NULL),
(209, 3, 105, NULL, NULL, NULL),
(210, 2, 106, NULL, NULL, NULL),
(211, 5, 106, NULL, NULL, NULL),
(212, 3, 107, NULL, NULL, NULL),
(213, 5, 107, NULL, NULL, NULL),
(214, 6, 108, NULL, NULL, NULL),
(215, 2, 108, NULL, NULL, NULL),
(216, 6, 109, NULL, NULL, NULL),
(217, 3, 109, NULL, NULL, NULL),
(218, 1, 110, NULL, NULL, NULL),
(219, 4, 110, NULL, NULL, NULL),
(220, 7, 111, NULL, NULL, NULL),
(221, 6, 111, NULL, NULL, NULL),
(222, 7, 112, NULL, NULL, NULL),
(223, 3, 112, NULL, NULL, NULL),
(224, 7, 113, NULL, NULL, NULL),
(225, 8, 113, NULL, NULL, NULL),
(226, 6, 114, NULL, NULL, NULL),
(227, 2, 114, NULL, NULL, NULL),
(228, 7, 115, NULL, NULL, NULL),
(229, 8, 115, NULL, NULL, NULL),
(230, 7, 116, NULL, NULL, NULL),
(231, 5, 116, NULL, NULL, NULL),
(232, 7, 117, NULL, NULL, NULL),
(233, 5, 117, NULL, NULL, NULL),
(234, 5, 118, NULL, NULL, NULL),
(235, 8, 118, NULL, NULL, NULL),
(236, 7, 119, NULL, NULL, NULL),
(237, 4, 119, NULL, NULL, NULL),
(238, 7, 120, NULL, NULL, NULL),
(239, 8, 120, NULL, NULL, NULL),
(240, 3, 121, NULL, NULL, NULL),
(241, 4, 121, NULL, NULL, NULL),
(242, 2, NULL, 1, '2024-01-17 16:47:07', '2024-01-17 16:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `detail__schedules`
--

CREATE TABLE `detail__schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `schedule_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail__schedules`
--

INSERT INTO `detail__schedules` (`id`, `subject_id`, `room_id`, `created_at`, `updated_at`, `schedule_id`) VALUES
(16, 1, 1, '2024-01-16 13:49:13', '2024-01-16 13:49:13', 18),
(17, 1, 1, '2024-01-16 13:49:13', '2024-01-16 13:49:13', 19),
(18, 1, 1, '2024-01-16 13:49:13', '2024-01-16 13:49:13', 20),
(19, 3, 10, '2024-01-16 13:53:47', '2024-01-16 13:53:47', 21),
(20, 3, 10, '2024-01-16 13:53:47', '2024-01-16 13:53:47', 22),
(21, 3, 10, '2024-01-16 13:53:47', '2024-01-16 13:53:47', 23),
(22, 9, 15, '2024-01-16 13:56:03', '2024-01-16 13:56:03', 24),
(23, 9, 15, '2024-01-16 13:56:03', '2024-01-16 13:56:03', 25),
(24, 9, 15, '2024-01-16 13:56:03', '2024-01-16 13:56:03', 26),
(25, 8, 15, '2024-01-16 14:09:06', '2024-01-16 14:09:06', 27),
(26, 8, 15, '2024-01-16 14:09:06', '2024-01-16 14:09:06', 28),
(27, 8, 15, '2024-01-16 14:09:06', '2024-01-16 14:09:06', 29);

-- --------------------------------------------------------

--
-- Table structure for table `detail__scores`
--

CREATE TABLE `detail__scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `score_id` bigint(20) UNSIGNED NOT NULL,
  `attendance_grade` varchar(255) NOT NULL DEFAULT '0',
  `scores_1` varchar(255) NOT NULL DEFAULT '0',
  `scores_2` varchar(255) NOT NULL DEFAULT '0',
  `final_grade` varchar(255) NOT NULL DEFAULT '0',
  `medium_score` varchar(255) NOT NULL DEFAULT '0',
  `scale_4` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail__teachers`
--

CREATE TABLE `detail__teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail__teachers`
--

INSERT INTO `detail__teachers` (`id`, `teacher_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '2024-01-17 16:48:25', '2024-01-17 16:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'CNTT1-21', 'Công nghệ thông tin 1-21', 'cong-nghe-thong-tin-1-21', '2024-01-16 06:55:30', '2024-01-16 06:55:30'),
(2, 'CNTT2-21', 'Công nghệ thông tin 2-21', 'cong-nghe-thong-tin-2-21', '2024-01-16 06:55:30', '2024-01-16 06:55:30'),
(3, 'TATM1-21', 'Tiếng anh thương mại 1-21', 'tieng-anh-thong-mai-1-21', '2024-01-16 06:55:30', '2024-01-16 06:55:30'),
(4, 'TATM2-21', 'Tiếng anh thương mại 2-21', 'tieng-anh-thong-mai-2-21', '2024-01-16 06:55:30', '2024-01-16 06:55:30'),
(5, 'MAR1-21', 'Marketing 1-21', 'marketing-1-21', '2024-01-16 06:55:30', '2024-01-16 06:55:30'),
(6, 'MAR2-21', 'Marketing 2-21', 'marketing-2-21', '2024-01-16 06:55:30', '2024-01-16 06:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_08_051803_create_permission_tables', 1),
(6, '2023_11_09_061253_create_teachers_table', 1),
(7, '2023_11_09_061301_create_teacher_user_table', 1),
(8, '2023_11_09_061315_create_subjects_table', 1),
(9, '2023_11_09_061331_create_rooms_table', 1),
(10, '2023_11_09_061350_create_students_table', 1),
(11, '2023_11_09_061401_create_student_user_table', 1),
(12, '2023_11_09_061529_create_grades_table', 1),
(13, '2023_11_09_061547_create_departments_table', 1),
(14, '2023_11_09_061622_create_detail__classes_table', 1),
(15, '2023_11_09_061636_create_detail__departments_table', 1),
(16, '2023_11_09_061653_create_detail__teachers_table', 1),
(17, '2023_11_09_061710_create_rank__schedules_table', 1),
(18, '2023_11_09_061711_create_periods_table', 1),
(19, '2023_11_09_061712_create_schedules_table', 1),
(20, '2023_11_09_061743_create_detail__schedules_table', 1),
(21, '2023_11_09_061754_create_attendances_table', 1),
(22, '2023_11_09_061806_create_detail__attendances_table', 1),
(23, '2023_11_09_061818_create_scores_table', 1),
(24, '2023_11_09_061847_create_detail__scores_table', 1),
(25, '2023_12_21_025056_remove_unique_constraint_from_description_column', 1),
(26, '2023_12_21_025139_remove_unique_constraint_from_description_column', 1),
(27, '2023_12_30_174451_add_detail__classes_to_users', 1),
(28, '2024_01_02_101015_add_column_rank_id_to_table_schedule', 1),
(29, '2024_01_02_101155_add_column_schedule_id_to_table_detail__schedules', 1),
(30, '2024_01_02_102213_remove_column_rank_from_detail__schedules', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `periods`
--

CREATE TABLE `periods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `periods`
--

INSERT INTO `periods` (`id`, `name`, `time`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Tiết 1', '7:00 -> 7:50', 'tiet-1', '2024-01-16 09:49:19', '2024-01-16 09:49:19'),
(2, 'Tiết 2', '7:55 -> 8:45', 'tiet-2', '2024-01-16 09:49:19', '2024-01-16 09:49:19'),
(3, 'Tiết 3', '8:50 -> 9:40', 'tiet-3', '2024-01-16 09:49:19', '2024-01-16 09:49:19'),
(4, 'Tiết 4', '9:45 -> 10:35', 'tiet-4', '2024-01-16 09:49:19', '2024-01-16 09:49:19'),
(5, 'Tiết 5', '10:40 -> 11:30', 'tiet-5', '2024-01-16 09:49:19', '2024-01-16 09:49:19'),
(6, 'Tiết 6', '12:30 -> 13:20', 'tiet-6', '2024-01-16 09:49:19', '2024-01-16 09:49:19'),
(7, 'Tiết 7', '13:25 -> 14:15', 'tiet-7', '2024-01-16 09:49:19', '2024-01-16 09:49:19'),
(8, 'Tiết 8', '14:20 -> 15:10', 'tiet-8', '2024-01-16 09:49:19', '2024-01-16 09:49:19'),
(9, 'Tiết 9', '15:15 -> 16:05', 'tiet-9', '2024-01-16 09:49:19', '2024-01-16 09:49:19'),
(10, 'Tiết 10', '16:10 -> 17:00', 'tiet-10', '2024-01-16 09:49:19', '2024-01-16 09:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `group` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `group`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create-role', 'Create Role', 'Establish a new role', 'Role', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(2, 'update-role', 'Update Role', 'Modify and update the role', 'Role', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(3, 'show-role', 'Show Role', 'View role', 'Role', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(4, 'delete-role', 'Delete Role', 'Delete role', 'Role', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(5, 'create-user', 'Create User', 'Establish a new User', 'User', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(6, 'update-user', 'Update User', 'Modify and update the User', 'User', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(7, 'show-user', 'Show User', 'View User', 'User', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(8, 'delete-user', 'Delete User', 'Delete User', 'User', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(9, 'create-teacher', 'Create Teacher', 'Establish a new Teacher', 'Teacher', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(10, 'update-teacher', 'Update Teacher', 'Modify and update the Teacher', 'Teacher', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(11, 'show-teacher', 'Show Teacher', 'View Teacher', 'Teacher', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(12, 'delete-teacher', 'Delete Teacher', 'Delete Teacher', 'Teacher', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(13, 'create-department', 'Create Department', 'Establish a new Department', 'Department', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(14, 'update-department', 'Update Department', 'Modify and update the Department', 'Department', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(15, 'show-department', 'Show Department', 'View Department', 'Department', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(16, 'delete-department', 'Delete Department', 'Delete Department', 'Department', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(17, 'create-student', 'Create Student', 'Establish a new Student', 'Student', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(18, 'update-student', 'Update Student', 'Modify and update the Student', 'Student', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(19, 'show-student', 'Show Student', 'View Student', 'Student', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(20, 'delete-student', 'Delete Student', 'Delete Student', 'Student', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(21, 'create-class', 'Create Class', 'Establish a new Class', 'Class', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(22, 'update-class', 'Update Class', 'Modify and update the Class', 'Class', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(23, 'show-class', 'Show Class', 'View Class', 'Class', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(24, 'delete-class', 'Delete Class', 'Delete Class', 'Class', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(25, 'create-subject', 'Create Subject', 'Establish a new Subject', 'Subject', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(26, 'update-subject', 'Update Subject', 'Modify and update the Subject', 'Subject', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(27, 'show-subject', 'Show Subject', 'View Subject', 'Subject', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(28, 'delete-subject', 'Delete Subject', 'Delete Subject', 'Subject', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(29, 'create-room', 'Create Room', 'Establish a new Room', 'Room', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(30, 'update-room', 'Update Room', 'Modify and update the Room', 'Room', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(31, 'show-room', 'Show Room', 'View Room', 'Room', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(32, 'delete-room', 'Delete Room', 'Delete Room', 'Room', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(33, 'create-schedule', 'Create Schedule', 'Establish a new Schedule', 'Schedule', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(34, 'update-schedule', 'Update Schedule', 'Modify and update the Schedule', 'Schedule', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(35, 'show-schedule', 'Show Schedule', 'View Schedule', 'Schedule', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(36, 'delete-schedule', 'Delete Schedule', 'Delete Schedule', 'Schedule', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(37, 'create-attendance', 'Create Attendance', 'Establish a new Attendance', 'Attendance', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(38, 'update-attendance', 'Update Attendance', 'Modify and update the Attendance', 'Attendance', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(39, 'show-attendance', 'Show Attendance', 'View Attendance', 'Attendance', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(40, 'delete-attendance', 'Delete Attendance', 'Delete Attendance', 'Attendance', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(41, 'create-score', 'Create Score', 'Establish a new Score', 'Score', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(42, 'update-score', 'Update Score', 'Modify and update the Score', 'Score', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(43, 'show-score', 'Show Score', 'View Score', 'Score', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(44, 'delete-score', 'Delete Score', 'Delete Score', 'Score', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rank__schedules`
--

CREATE TABLE `rank__schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rank__schedules`
--

INSERT INTO `rank__schedules` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Thứ 2', 'thu-2', '2024-01-16 09:49:28', '2024-01-16 09:49:28'),
(2, 'Thứ 3', 'thu-3', '2024-01-16 09:49:28', '2024-01-16 09:49:28'),
(3, 'Thứ 4', 'thu-4', '2024-01-16 09:49:28', '2024-01-16 09:49:28'),
(4, 'Thứ 5', 'thu-5', '2024-01-16 09:49:28', '2024-01-16 09:49:28'),
(5, 'Thứ 6', 'thu-6', '2024-01-16 09:49:28', '2024-01-16 09:49:28'),
(6, 'Thứ 7', 'thu-7', '2024-01-16 09:49:28', '2024-01-16 09:49:28'),
(7, 'Chủ Nhật', 'chu-nhat', '2024-01-16 09:49:28', '2024-01-16 09:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `group` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `group`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'super-admin', 'software owner', 'system', 'web', '2024-01-15 01:38:21', '2024-01-15 01:39:03'),
(2, 'admin', 'Admin', 'software management', 'system', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(3, 'teacher', 'Teacher', 'teacher', 'clinet', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21'),
(4, 'student', 'Student', 'student', 'clinet', 'web', '2024-01-15 01:38:21', '2024-01-15 01:38:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'P101', 'Phòng số 1 ở tầng 1', 'p101', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(2, 'P102', 'Phòng số 2 ở tầng 1', 'p102', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(3, 'P103', 'Phòng số 3 ở tầng 1', 'p103', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(4, 'P104', 'Phòng số 4 ở tầng 1', 'p104', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(5, 'P105', 'Phòng số 5 ở tầng 1', 'p105', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(6, 'P106', 'Phòng số 6 ở tầng 1', 'p106', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(7, 'P107', 'Phòng số 7 ở tầng 1', 'p107', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(8, 'P108', 'Phòng số 8 ở tầng 1', 'p108', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(9, 'P109', 'Phòng số 9 ở tầng 1', 'p109', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(10, 'P110', 'Phòng số 10 ở tầng 1', 'p110', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(11, 'P201', 'Phòng số 1 ở tầng 2', 'p201', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(12, 'P202', 'Phòng số 2 ở tầng 2', 'p202', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(13, 'P203', 'Phòng số 3 ở tầng 2', 'p203', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(14, 'P204', 'Phòng số 4 ở tầng 2', 'p204', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(15, 'P205', 'Phòng số 5 ở tầng 2', 'p205', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(16, 'P206', 'Phòng số 6 ở tầng 2', 'p206', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(17, 'P207', 'Phòng số 7 ở tầng 2', 'p207', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(18, 'P208', 'Phòng số 8 ở tầng 2', 'p208', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(19, 'P209', 'Phòng số 9 ở tầng 2', 'p209', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(20, 'P210', 'Phòng số 10 ở tầng 2', 'p210', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(21, 'P301', 'Phòng số 1 ở tầng 3', 'p301', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(22, 'P302', 'Phòng số 2 ở tầng 3', 'p302', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(23, 'P303', 'Phòng số 3 ở tầng 3', 'p303', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(24, 'P304', 'Phòng số 4 ở tầng 3', 'p304', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(25, 'P305', 'Phòng số 5 ở tầng 3', 'p305', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(26, 'P306', 'Phòng số 6 ở tầng 3', 'p306', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(27, 'P307', 'Phòng số 7 ở tầng 3', 'p307', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(28, 'P308', 'Phòng số 8 ở tầng 3', 'p308', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(29, 'P309', 'Phòng số 9 ở tầng 3', 'p309', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(30, 'P310', 'Phòng số 10 ở tầng 3', 'p310', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(31, 'P401', 'Phòng số 1 ở tầng 4', 'p401', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(32, 'P402', 'Phòng số 2 ở tầng 4', 'p402', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(33, 'P403', 'Phòng số 3 ở tầng 4', 'p403', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(34, 'P404', 'Phòng số 4 ở tầng 4', 'p404', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(35, 'P405', 'Phòng số 5 ở tầng 4', 'p405', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(36, 'P406', 'Phòng số 6 ở tầng 4', 'p406', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(37, 'P407', 'Phòng số 7 ở tầng 4', 'p407', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(38, 'P408', 'Phòng số 8 ở tầng 4', 'p408', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(39, 'P409', 'Phòng số 9 ở tầng 4', 'p409', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(40, 'P410', 'Phòng số 10 ở tầng 4', 'p410', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(41, 'P501', 'Phòng số 1 ở tầng 5', 'p501', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(42, 'P502', 'Phòng số 2 ở tầng 5', 'p502', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(43, 'P503', 'Phòng số 3 ở tầng 5', 'p503', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(44, 'P504', 'Phòng số 4 ở tầng 5', 'p504', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(45, 'P505', 'Phòng số 5 ở tầng 5', 'p505', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(46, 'P506', 'Phòng số 6 ở tầng 5', 'p506', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(47, 'P507', 'Phòng số 7 ở tầng 5', 'p507', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(48, 'P508', 'Phòng số 8 ở tầng 5', 'p508', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(49, 'P509', 'Phòng số 9 ở tầng 5', 'p509', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(50, 'P510', 'Phòng số 10 ở tầng 5', 'p510', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(51, 'P601', 'Phòng số 1 ở tầng 6', 'p601', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(52, 'P602', 'Phòng số 2 ở tầng 6', 'p602', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(53, 'P603', 'Phòng số 3 ở tầng 6', 'p603', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(54, 'P604', 'Phòng số 4 ở tầng 6', 'p604', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(55, 'P605', 'Phòng số 5 ở tầng 6', 'p605', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(56, 'P606', 'Phòng số 6 ở tầng 6', 'p606', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(57, 'P607', 'Phòng số 7 ở tầng 6', 'p607', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(58, 'P608', 'Phòng số 8 ở tầng 6', 'p608', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(59, 'P609', 'Phòng số 9 ở tầng 6', 'p609', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(60, 'P610', 'Phòng số 10 ở tầng 6', 'p610', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(61, 'P701', 'Phòng số 1 ở tầng 7', 'p701', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(62, 'P702', 'Phòng số 2 ở tầng 7', 'p702', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(63, 'P703', 'Phòng số 3 ở tầng 7', 'p703', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(64, 'P704', 'Phòng số 4 ở tầng 7', 'p704', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(65, 'P705', 'Phòng số 5 ở tầng 7', 'p705', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(66, 'P706', 'Phòng số 6 ở tầng 7', 'p706', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(67, 'P707', 'Phòng số 7 ở tầng 7', 'p707', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(68, 'P708', 'Phòng số 8 ở tầng 7', 'p708', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(69, 'P709', 'Phòng số 9 ở tầng 7', 'p709', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(70, 'P710', 'Phòng số 10 ở tầng 7', 'p710', '2024-01-16 06:59:11', '2024-01-16 06:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `effect` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `period_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `teacher_id`, `grade_id`, `effect`, `created_at`, `updated_at`, `rank_id`, `period_id`) VALUES
(18, 1, 1, '01/01/2016 12:00 AM - 01/25/2016 12:00 AM', '2024-01-16 13:49:13', '2024-01-16 13:49:13', 1, 1),
(19, 1, 1, '01/01/2016 12:00 AM - 01/25/2016 12:00 AM', '2024-01-16 13:49:13', '2024-01-16 13:49:13', 1, 2),
(20, 1, 1, '01/01/2016 12:00 AM - 01/25/2016 12:00 AM', '2024-01-16 13:49:13', '2024-01-16 13:49:13', 1, 3),
(21, 1, 2, '01/01/2016 12:00 AM - 01/25/2016 12:00 AM', '2024-01-16 13:53:47', '2024-01-16 13:53:47', 2, 2),
(22, 1, 2, '01/01/2016 12:00 AM - 01/25/2016 12:00 AM', '2024-01-16 13:53:47', '2024-01-16 13:53:47', 2, 5),
(23, 1, 2, '01/01/2016 12:00 AM - 01/25/2016 12:00 AM', '2024-01-16 13:53:47', '2024-01-16 13:53:47', 2, 8),
(24, 1, 4, '01/01/2016 12:00 AM - 01/25/2016 12:00 AM', '2024-01-16 13:56:03', '2024-01-16 13:56:03', 3, 6),
(25, 1, 4, '01/01/2016 12:00 AM - 01/25/2016 12:00 AM', '2024-01-16 13:56:03', '2024-01-16 13:56:03', 3, 9),
(26, 1, 4, '01/01/2016 12:00 AM - 01/25/2016 12:00 AM', '2024-01-16 13:56:03', '2024-01-16 13:56:03', 3, 10),
(27, 1, 3, '01/01/2016 12:00 AM - 01/25/2016 12:00 AM', '2024-01-16 14:09:06', '2024-01-16 14:09:06', 4, 4),
(28, 1, 3, '01/01/2016 12:00 AM - 01/25/2016 12:00 AM', '2024-01-16 14:09:06', '2024-01-16 14:09:06', 4, 7),
(29, 1, 3, '01/01/2016 12:00 AM - 01/25/2016 12:00 AM', '2024-01-16 14:09:06', '2024-01-16 14:09:06', 4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `image_personal` varchar(255) NOT NULL,
  `image_citizenIdentification_front` varchar(255) NOT NULL,
  `image_citizenIdentification_backside` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL DEFAULT 'male',
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `hometown` varchar(4000) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `code`, `image_personal`, `image_citizenIdentification_front`, `image_citizenIdentification_backside`, `last_name`, `first_name`, `birthday`, `gender`, `email`, `phone`, `hometown`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'SV6465724031', 'teacher_image_1', 'front_image_1', 'backside_image_1', 'Lastname1', 'Firstname1', '23/3/1999', 'female', 'sv1@gmail.com', '0101993993', 'Da Nang', 'sv1', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(2, 'SV1472117572', 'teacher_image_2', 'front_image_2', 'backside_image_2', 'Lastname2', 'Firstname2', '23/3/1999', 'male', 'sv2@gmail.com', '0101993993', 'Da Nang', 'sv2', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(3, 'SV5542346453', 'teacher_image_3', 'front_image_3', 'backside_image_3', 'Lastname3', 'Firstname3', '23/3/1999', 'female', 'sv3@gmail.com', '0101993993', 'Da Nang', 'sv3', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(4, 'SV6942056114', 'teacher_image_4', 'front_image_4', 'backside_image_4', 'Lastname4', 'Firstname4', '23/3/1999', 'male', 'sv4@gmail.com', '0101993993', 'Da Nang', 'sv4', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(5, 'SV6532470835', 'teacher_image_5', 'front_image_5', 'backside_image_5', 'Lastname5', 'Firstname5', '23/3/1999', 'female', 'sv5@gmail.com', '0101993993', 'Da Nang', 'sv5', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(6, 'SV1314336756', 'teacher_image_6', 'front_image_6', 'backside_image_6', 'Lastname6', 'Firstname6', '23/3/1999', 'male', 'sv6@gmail.com', '0101993993', 'Da Nang', 'sv6', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(7, 'SV7197454797', 'teacher_image_7', 'front_image_7', 'backside_image_7', 'Lastname7', 'Firstname7', '23/3/1999', 'female', 'sv7@gmail.com', '0101993993', 'Da Nang', 'sv7', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(8, 'SV7708645968', 'teacher_image_8', 'front_image_8', 'backside_image_8', 'Lastname8', 'Firstname8', '23/3/1999', 'male', 'sv8@gmail.com', '0101993993', 'Da Nang', 'sv8', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(9, 'SV6625737669', 'teacher_image_9', 'front_image_9', 'backside_image_9', 'Lastname9', 'Firstname9', '23/3/1999', 'female', 'sv9@gmail.com', '0101993993', 'Da Nang', 'sv9', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(10, 'SV61365802810', 'teacher_image_10', 'front_image_10', 'backside_image_10', 'Lastname10', 'Firstname10', '23/3/1999', 'male', 'sv10@gmail.com', '0101993993', 'Da Nang', 'sv10', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(11, 'SV63857084411', 'teacher_image_11', 'front_image_11', 'backside_image_11', 'Lastname11', 'Firstname11', '23/3/1999', 'female', 'sv11@gmail.com', '0101993993', 'Da Nang', 'sv11', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(12, 'SV75242681112', 'teacher_image_12', 'front_image_12', 'backside_image_12', 'Lastname12', 'Firstname12', '23/3/1999', 'male', 'sv12@gmail.com', '0101993993', 'Da Nang', 'sv12', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(13, 'SV26869525913', 'teacher_image_13', 'front_image_13', 'backside_image_13', 'Lastname13', 'Firstname13', '23/3/1999', 'female', 'sv13@gmail.com', '0101993993', 'Da Nang', 'sv13', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(14, 'SV75339660414', 'teacher_image_14', 'front_image_14', 'backside_image_14', 'Lastname14', 'Firstname14', '23/3/1999', 'male', 'sv14@gmail.com', '0101993993', 'Da Nang', 'sv14', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(15, 'SV88270980415', 'teacher_image_15', 'front_image_15', 'backside_image_15', 'Lastname15', 'Firstname15', '23/3/1999', 'female', 'sv15@gmail.com', '0101993993', 'Da Nang', 'sv15', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(16, 'SV57435132616', 'teacher_image_16', 'front_image_16', 'backside_image_16', 'Lastname16', 'Firstname16', '23/3/1999', 'male', 'sv16@gmail.com', '0101993993', 'Da Nang', 'sv16', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(17, 'SV95802716317', 'teacher_image_17', 'front_image_17', 'backside_image_17', 'Lastname17', 'Firstname17', '23/3/1999', 'female', 'sv17@gmail.com', '0101993993', 'Da Nang', 'sv17', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(18, 'SV32435762718', 'teacher_image_18', 'front_image_18', 'backside_image_18', 'Lastname18', 'Firstname18', '23/3/1999', 'male', 'sv18@gmail.com', '0101993993', 'Da Nang', 'sv18', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(19, 'SV64103910119', 'teacher_image_19', 'front_image_19', 'backside_image_19', 'Lastname19', 'Firstname19', '23/3/1999', 'female', 'sv19@gmail.com', '0101993993', 'Da Nang', 'sv19', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(20, 'SV21369369420', 'teacher_image_20', 'front_image_20', 'backside_image_20', 'Lastname20', 'Firstname20', '23/3/1999', 'male', 'sv20@gmail.com', '0101993993', 'Da Nang', 'sv20', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(21, 'SV66608474021', 'teacher_image_21', 'front_image_21', 'backside_image_21', 'Lastname21', 'Firstname21', '23/3/1999', 'female', 'sv21@gmail.com', '0101993993', 'Da Nang', 'sv21', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(22, 'SV4086272322', 'teacher_image_22', 'front_image_22', 'backside_image_22', 'Lastname22', 'Firstname22', '23/3/1999', 'male', 'sv22@gmail.com', '0101993993', 'Da Nang', 'sv22', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(23, 'SV47888059023', 'teacher_image_23', 'front_image_23', 'backside_image_23', 'Lastname23', 'Firstname23', '23/3/1999', 'female', 'sv23@gmail.com', '0101993993', 'Da Nang', 'sv23', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(24, 'SV18184015024', 'teacher_image_24', 'front_image_24', 'backside_image_24', 'Lastname24', 'Firstname24', '23/3/1999', 'male', 'sv24@gmail.com', '0101993993', 'Da Nang', 'sv24', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(25, 'SV33527665125', 'teacher_image_25', 'front_image_25', 'backside_image_25', 'Lastname25', 'Firstname25', '23/3/1999', 'female', 'sv25@gmail.com', '0101993993', 'Da Nang', 'sv25', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(26, 'SV78703019926', 'teacher_image_26', 'front_image_26', 'backside_image_26', 'Lastname26', 'Firstname26', '23/3/1999', 'male', 'sv26@gmail.com', '0101993993', 'Da Nang', 'sv26', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(27, 'SV35406339827', 'teacher_image_27', 'front_image_27', 'backside_image_27', 'Lastname27', 'Firstname27', '23/3/1999', 'female', 'sv27@gmail.com', '0101993993', 'Da Nang', 'sv27', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(28, 'SV16942082628', 'teacher_image_28', 'front_image_28', 'backside_image_28', 'Lastname28', 'Firstname28', '23/3/1999', 'male', 'sv28@gmail.com', '0101993993', 'Da Nang', 'sv28', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(29, 'SV43211350029', 'teacher_image_29', 'front_image_29', 'backside_image_29', 'Lastname29', 'Firstname29', '23/3/1999', 'female', 'sv29@gmail.com', '0101993993', 'Da Nang', 'sv29', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(30, 'SV72512175330', 'teacher_image_30', 'front_image_30', 'backside_image_30', 'Lastname30', 'Firstname30', '23/3/1999', 'male', 'sv30@gmail.com', '0101993993', 'Da Nang', 'sv30', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(31, 'SV6709365131', 'teacher_image_31', 'front_image_31', 'backside_image_31', 'Lastname31', 'Firstname31', '23/3/1999', 'female', 'sv31@gmail.com', '0101993993', 'Da Nang', 'sv31', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(32, 'SV90941229132', 'teacher_image_32', 'front_image_32', 'backside_image_32', 'Lastname32', 'Firstname32', '23/3/1999', 'male', 'sv32@gmail.com', '0101993993', 'Da Nang', 'sv32', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(33, 'SV74009966733', 'teacher_image_33', 'front_image_33', 'backside_image_33', 'Lastname33', 'Firstname33', '23/3/1999', 'female', 'sv33@gmail.com', '0101993993', 'Da Nang', 'sv33', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(34, 'SV55190382534', 'teacher_image_34', 'front_image_34', 'backside_image_34', 'Lastname34', 'Firstname34', '23/3/1999', 'male', 'sv34@gmail.com', '0101993993', 'Da Nang', 'sv34', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(35, 'SV94762990535', 'teacher_image_35', 'front_image_35', 'backside_image_35', 'Lastname35', 'Firstname35', '23/3/1999', 'female', 'sv35@gmail.com', '0101993993', 'Da Nang', 'sv35', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(36, 'SV42553417536', 'teacher_image_36', 'front_image_36', 'backside_image_36', 'Lastname36', 'Firstname36', '23/3/1999', 'male', 'sv36@gmail.com', '0101993993', 'Da Nang', 'sv36', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(37, 'SV59411003737', 'teacher_image_37', 'front_image_37', 'backside_image_37', 'Lastname37', 'Firstname37', '23/3/1999', 'female', 'sv37@gmail.com', '0101993993', 'Da Nang', 'sv37', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(38, 'SV50953503238', 'teacher_image_38', 'front_image_38', 'backside_image_38', 'Lastname38', 'Firstname38', '23/3/1999', 'male', 'sv38@gmail.com', '0101993993', 'Da Nang', 'sv38', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(39, 'SV16226584839', 'teacher_image_39', 'front_image_39', 'backside_image_39', 'Lastname39', 'Firstname39', '23/3/1999', 'female', 'sv39@gmail.com', '0101993993', 'Da Nang', 'sv39', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(40, 'SV46929046340', 'teacher_image_40', 'front_image_40', 'backside_image_40', 'Lastname40', 'Firstname40', '23/3/1999', 'male', 'sv40@gmail.com', '0101993993', 'Da Nang', 'sv40', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(41, 'SV20518807841', 'teacher_image_41', 'front_image_41', 'backside_image_41', 'Lastname41', 'Firstname41', '23/3/1999', 'female', 'sv41@gmail.com', '0101993993', 'Da Nang', 'sv41', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(42, 'SV88580500342', 'teacher_image_42', 'front_image_42', 'backside_image_42', 'Lastname42', 'Firstname42', '23/3/1999', 'male', 'sv42@gmail.com', '0101993993', 'Da Nang', 'sv42', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(43, 'SV95673308143', 'teacher_image_43', 'front_image_43', 'backside_image_43', 'Lastname43', 'Firstname43', '23/3/1999', 'female', 'sv43@gmail.com', '0101993993', 'Da Nang', 'sv43', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(44, 'SV83844337244', 'teacher_image_44', 'front_image_44', 'backside_image_44', 'Lastname44', 'Firstname44', '23/3/1999', 'male', 'sv44@gmail.com', '0101993993', 'Da Nang', 'sv44', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(45, 'SV17013581145', 'teacher_image_45', 'front_image_45', 'backside_image_45', 'Lastname45', 'Firstname45', '23/3/1999', 'female', 'sv45@gmail.com', '0101993993', 'Da Nang', 'sv45', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(46, 'SV81381382146', 'teacher_image_46', 'front_image_46', 'backside_image_46', 'Lastname46', 'Firstname46', '23/3/1999', 'male', 'sv46@gmail.com', '0101993993', 'Da Nang', 'sv46', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(47, 'SV37076753047', 'teacher_image_47', 'front_image_47', 'backside_image_47', 'Lastname47', 'Firstname47', '23/3/1999', 'female', 'sv47@gmail.com', '0101993993', 'Da Nang', 'sv47', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(48, 'SV47221645148', 'teacher_image_48', 'front_image_48', 'backside_image_48', 'Lastname48', 'Firstname48', '23/3/1999', 'male', 'sv48@gmail.com', '0101993993', 'Da Nang', 'sv48', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(49, 'SV54862857049', 'teacher_image_49', 'front_image_49', 'backside_image_49', 'Lastname49', 'Firstname49', '23/3/1999', 'female', 'sv49@gmail.com', '0101993993', 'Da Nang', 'sv49', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(50, 'SV11248641350', 'teacher_image_50', 'front_image_50', 'backside_image_50', 'Lastname50', 'Firstname50', '23/3/1999', 'male', 'sv50@gmail.com', '0101993993', 'Da Nang', 'sv50', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(51, 'SV24993344551', 'teacher_image_51', 'front_image_51', 'backside_image_51', 'Lastname51', 'Firstname51', '23/3/1999', 'female', 'sv51@gmail.com', '0101993993', 'Da Nang', 'sv51', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(52, 'SV30590102252', 'teacher_image_52', 'front_image_52', 'backside_image_52', 'Lastname52', 'Firstname52', '23/3/1999', 'male', 'sv52@gmail.com', '0101993993', 'Da Nang', 'sv52', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(53, 'SV17663057153', 'teacher_image_53', 'front_image_53', 'backside_image_53', 'Lastname53', 'Firstname53', '23/3/1999', 'female', 'sv53@gmail.com', '0101993993', 'Da Nang', 'sv53', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(54, 'SV52543921654', 'teacher_image_54', 'front_image_54', 'backside_image_54', 'Lastname54', 'Firstname54', '23/3/1999', 'male', 'sv54@gmail.com', '0101993993', 'Da Nang', 'sv54', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(55, 'SV15052860555', 'teacher_image_55', 'front_image_55', 'backside_image_55', 'Lastname55', 'Firstname55', '23/3/1999', 'female', 'sv55@gmail.com', '0101993993', 'Da Nang', 'sv55', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(56, 'SV87904088856', 'teacher_image_56', 'front_image_56', 'backside_image_56', 'Lastname56', 'Firstname56', '23/3/1999', 'male', 'sv56@gmail.com', '0101993993', 'Da Nang', 'sv56', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(57, 'SV12539641757', 'teacher_image_57', 'front_image_57', 'backside_image_57', 'Lastname57', 'Firstname57', '23/3/1999', 'female', 'sv57@gmail.com', '0101993993', 'Da Nang', 'sv57', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(58, 'SV36275310458', 'teacher_image_58', 'front_image_58', 'backside_image_58', 'Lastname58', 'Firstname58', '23/3/1999', 'male', 'sv58@gmail.com', '0101993993', 'Da Nang', 'sv58', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(59, 'SV15598689459', 'teacher_image_59', 'front_image_59', 'backside_image_59', 'Lastname59', 'Firstname59', '23/3/1999', 'female', 'sv59@gmail.com', '0101993993', 'Da Nang', 'sv59', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(60, 'SV76902094960', 'teacher_image_60', 'front_image_60', 'backside_image_60', 'Lastname60', 'Firstname60', '23/3/1999', 'male', 'sv60@gmail.com', '0101993993', 'Da Nang', 'sv60', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(61, 'SV20099116461', 'teacher_image_61', 'front_image_61', 'backside_image_61', 'Lastname61', 'Firstname61', '23/3/1999', 'female', 'sv61@gmail.com', '0101993993', 'Da Nang', 'sv61', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(62, 'SV44929268462', 'teacher_image_62', 'front_image_62', 'backside_image_62', 'Lastname62', 'Firstname62', '23/3/1999', 'male', 'sv62@gmail.com', '0101993993', 'Da Nang', 'sv62', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(63, 'SV8324424263', 'teacher_image_63', 'front_image_63', 'backside_image_63', 'Lastname63', 'Firstname63', '23/3/1999', 'female', 'sv63@gmail.com', '0101993993', 'Da Nang', 'sv63', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(64, 'SV74528738564', 'teacher_image_64', 'front_image_64', 'backside_image_64', 'Lastname64', 'Firstname64', '23/3/1999', 'male', 'sv64@gmail.com', '0101993993', 'Da Nang', 'sv64', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(65, 'SV92375939065', 'teacher_image_65', 'front_image_65', 'backside_image_65', 'Lastname65', 'Firstname65', '23/3/1999', 'female', 'sv65@gmail.com', '0101993993', 'Da Nang', 'sv65', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(66, 'SV80651139166', 'teacher_image_66', 'front_image_66', 'backside_image_66', 'Lastname66', 'Firstname66', '23/3/1999', 'male', 'sv66@gmail.com', '0101993993', 'Da Nang', 'sv66', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(67, 'SV86188734367', 'teacher_image_67', 'front_image_67', 'backside_image_67', 'Lastname67', 'Firstname67', '23/3/1999', 'female', 'sv67@gmail.com', '0101993993', 'Da Nang', 'sv67', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(68, 'SV12020614068', 'teacher_image_68', 'front_image_68', 'backside_image_68', 'Lastname68', 'Firstname68', '23/3/1999', 'male', 'sv68@gmail.com', '0101993993', 'Da Nang', 'sv68', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(69, 'SV24822986369', 'teacher_image_69', 'front_image_69', 'backside_image_69', 'Lastname69', 'Firstname69', '23/3/1999', 'female', 'sv69@gmail.com', '0101993993', 'Da Nang', 'sv69', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(70, 'SV86260490970', 'teacher_image_70', 'front_image_70', 'backside_image_70', 'Lastname70', 'Firstname70', '23/3/1999', 'male', 'sv70@gmail.com', '0101993993', 'Da Nang', 'sv70', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(71, 'SV16725905671', 'teacher_image_71', 'front_image_71', 'backside_image_71', 'Lastname71', 'Firstname71', '23/3/1999', 'female', 'sv71@gmail.com', '0101993993', 'Da Nang', 'sv71', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(72, 'SV61742764972', 'teacher_image_72', 'front_image_72', 'backside_image_72', 'Lastname72', 'Firstname72', '23/3/1999', 'male', 'sv72@gmail.com', '0101993993', 'Da Nang', 'sv72', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(73, 'SV84714908773', 'teacher_image_73', 'front_image_73', 'backside_image_73', 'Lastname73', 'Firstname73', '23/3/1999', 'female', 'sv73@gmail.com', '0101993993', 'Da Nang', 'sv73', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(74, 'SV50015499874', 'teacher_image_74', 'front_image_74', 'backside_image_74', 'Lastname74', 'Firstname74', '23/3/1999', 'male', 'sv74@gmail.com', '0101993993', 'Da Nang', 'sv74', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(75, 'SV84587384975', 'teacher_image_75', 'front_image_75', 'backside_image_75', 'Lastname75', 'Firstname75', '23/3/1999', 'female', 'sv75@gmail.com', '0101993993', 'Da Nang', 'sv75', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(76, 'SV34552107476', 'teacher_image_76', 'front_image_76', 'backside_image_76', 'Lastname76', 'Firstname76', '23/3/1999', 'male', 'sv76@gmail.com', '0101993993', 'Da Nang', 'sv76', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(77, 'SV43664899377', 'teacher_image_77', 'front_image_77', 'backside_image_77', 'Lastname77', 'Firstname77', '23/3/1999', 'female', 'sv77@gmail.com', '0101993993', 'Da Nang', 'sv77', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(78, 'SV61738920078', 'teacher_image_78', 'front_image_78', 'backside_image_78', 'Lastname78', 'Firstname78', '23/3/1999', 'male', 'sv78@gmail.com', '0101993993', 'Da Nang', 'sv78', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(79, 'SV99655916479', 'teacher_image_79', 'front_image_79', 'backside_image_79', 'Lastname79', 'Firstname79', '23/3/1999', 'female', 'sv79@gmail.com', '0101993993', 'Da Nang', 'sv79', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(80, 'SV56129696780', 'teacher_image_80', 'front_image_80', 'backside_image_80', 'Lastname80', 'Firstname80', '23/3/1999', 'male', 'sv80@gmail.com', '0101993993', 'Da Nang', 'sv80', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(81, 'SV68258435281', 'teacher_image_81', 'front_image_81', 'backside_image_81', 'Lastname81', 'Firstname81', '23/3/1999', 'female', 'sv81@gmail.com', '0101993993', 'Da Nang', 'sv81', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(82, 'SV33014455982', 'teacher_image_82', 'front_image_82', 'backside_image_82', 'Lastname82', 'Firstname82', '23/3/1999', 'male', 'sv82@gmail.com', '0101993993', 'Da Nang', 'sv82', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(83, 'SV6743039183', 'teacher_image_83', 'front_image_83', 'backside_image_83', 'Lastname83', 'Firstname83', '23/3/1999', 'female', 'sv83@gmail.com', '0101993993', 'Da Nang', 'sv83', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(84, 'SV71630744184', 'teacher_image_84', 'front_image_84', 'backside_image_84', 'Lastname84', 'Firstname84', '23/3/1999', 'male', 'sv84@gmail.com', '0101993993', 'Da Nang', 'sv84', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(85, 'SV95939513185', 'teacher_image_85', 'front_image_85', 'backside_image_85', 'Lastname85', 'Firstname85', '23/3/1999', 'female', 'sv85@gmail.com', '0101993993', 'Da Nang', 'sv85', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(86, 'SV88867553586', 'teacher_image_86', 'front_image_86', 'backside_image_86', 'Lastname86', 'Firstname86', '23/3/1999', 'male', 'sv86@gmail.com', '0101993993', 'Da Nang', 'sv86', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(87, 'SV31433454487', 'teacher_image_87', 'front_image_87', 'backside_image_87', 'Lastname87', 'Firstname87', '23/3/1999', 'female', 'sv87@gmail.com', '0101993993', 'Da Nang', 'sv87', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(88, 'SV96638440888', 'teacher_image_88', 'front_image_88', 'backside_image_88', 'Lastname88', 'Firstname88', '23/3/1999', 'male', 'sv88@gmail.com', '0101993993', 'Da Nang', 'sv88', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(89, 'SV26472677489', 'teacher_image_89', 'front_image_89', 'backside_image_89', 'Lastname89', 'Firstname89', '23/3/1999', 'female', 'sv89@gmail.com', '0101993993', 'Da Nang', 'sv89', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(90, 'SV50137318990', 'teacher_image_90', 'front_image_90', 'backside_image_90', 'Lastname90', 'Firstname90', '23/3/1999', 'male', 'sv90@gmail.com', '0101993993', 'Da Nang', 'sv90', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(91, 'SV64216676691', 'teacher_image_91', 'front_image_91', 'backside_image_91', 'Lastname91', 'Firstname91', '23/3/1999', 'female', 'sv91@gmail.com', '0101993993', 'Da Nang', 'sv91', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(92, 'SV98641988592', 'teacher_image_92', 'front_image_92', 'backside_image_92', 'Lastname92', 'Firstname92', '23/3/1999', 'male', 'sv92@gmail.com', '0101993993', 'Da Nang', 'sv92', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(93, 'SV67582999593', 'teacher_image_93', 'front_image_93', 'backside_image_93', 'Lastname93', 'Firstname93', '23/3/1999', 'female', 'sv93@gmail.com', '0101993993', 'Da Nang', 'sv93', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(94, 'SV18092346994', 'teacher_image_94', 'front_image_94', 'backside_image_94', 'Lastname94', 'Firstname94', '23/3/1999', 'male', 'sv94@gmail.com', '0101993993', 'Da Nang', 'sv94', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(95, 'SV19617205795', 'teacher_image_95', 'front_image_95', 'backside_image_95', 'Lastname95', 'Firstname95', '23/3/1999', 'female', 'sv95@gmail.com', '0101993993', 'Da Nang', 'sv95', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(96, 'SV58882950996', 'teacher_image_96', 'front_image_96', 'backside_image_96', 'Lastname96', 'Firstname96', '23/3/1999', 'male', 'sv96@gmail.com', '0101993993', 'Da Nang', 'sv96', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(97, 'SV44933774097', 'teacher_image_97', 'front_image_97', 'backside_image_97', 'Lastname97', 'Firstname97', '23/3/1999', 'female', 'sv97@gmail.com', '0101993993', 'Da Nang', 'sv97', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(98, 'SV49034967298', 'teacher_image_98', 'front_image_98', 'backside_image_98', 'Lastname98', 'Firstname98', '23/3/1999', 'male', 'sv98@gmail.com', '0101993993', 'Da Nang', 'sv98', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(99, 'SV71360882399', 'teacher_image_99', 'front_image_99', 'backside_image_99', 'Lastname99', 'Firstname99', '23/3/1999', 'female', 'sv99@gmail.com', '0101993993', 'Da Nang', 'sv99', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(100, 'SV566816520100', 'teacher_image_100', 'front_image_100', 'backside_image_100', 'Lastname100', 'Firstname100', '23/3/1999', 'male', 'sv100@gmail.com', '0101993993', 'Da Nang', 'sv100', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(101, 'SV667665790101', 'teacher_image_101', 'front_image_101', 'backside_image_101', 'Lastname101', 'Firstname101', '23/3/1999', 'female', 'sv101@gmail.com', '0101993993', 'Da Nang', 'sv101', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(102, 'SV461479918102', 'teacher_image_102', 'front_image_102', 'backside_image_102', 'Lastname102', 'Firstname102', '23/3/1999', 'male', 'sv102@gmail.com', '0101993993', 'Da Nang', 'sv102', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(103, 'SV478659160103', 'teacher_image_103', 'front_image_103', 'backside_image_103', 'Lastname103', 'Firstname103', '23/3/1999', 'female', 'sv103@gmail.com', '0101993993', 'Da Nang', 'sv103', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(104, 'SV465030609104', 'teacher_image_104', 'front_image_104', 'backside_image_104', 'Lastname104', 'Firstname104', '23/3/1999', 'male', 'sv104@gmail.com', '0101993993', 'Da Nang', 'sv104', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(105, 'SV159332208105', 'teacher_image_105', 'front_image_105', 'backside_image_105', 'Lastname105', 'Firstname105', '23/3/1999', 'female', 'sv105@gmail.com', '0101993993', 'Da Nang', 'sv105', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(106, 'SV802527602106', 'teacher_image_106', 'front_image_106', 'backside_image_106', 'Lastname106', 'Firstname106', '23/3/1999', 'male', 'sv106@gmail.com', '0101993993', 'Da Nang', 'sv106', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(107, 'SV620812694107', 'teacher_image_107', 'front_image_107', 'backside_image_107', 'Lastname107', 'Firstname107', '23/3/1999', 'female', 'sv107@gmail.com', '0101993993', 'Da Nang', 'sv107', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(108, 'SV208112781108', 'teacher_image_108', 'front_image_108', 'backside_image_108', 'Lastname108', 'Firstname108', '23/3/1999', 'male', 'sv108@gmail.com', '0101993993', 'Da Nang', 'sv108', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(109, 'SV644749449109', 'teacher_image_109', 'front_image_109', 'backside_image_109', 'Lastname109', 'Firstname109', '23/3/1999', 'female', 'sv109@gmail.com', '0101993993', 'Da Nang', 'sv109', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(110, 'SV638094851110', 'teacher_image_110', 'front_image_110', 'backside_image_110', 'Lastname110', 'Firstname110', '23/3/1999', 'male', 'sv110@gmail.com', '0101993993', 'Da Nang', 'sv110', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(111, 'SV168979940111', 'teacher_image_111', 'front_image_111', 'backside_image_111', 'Lastname111', 'Firstname111', '23/3/1999', 'female', 'sv111@gmail.com', '0101993993', 'Da Nang', 'sv111', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(112, 'SV283062326112', 'teacher_image_112', 'front_image_112', 'backside_image_112', 'Lastname112', 'Firstname112', '23/3/1999', 'male', 'sv112@gmail.com', '0101993993', 'Da Nang', 'sv112', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(113, 'SV134675947113', 'teacher_image_113', 'front_image_113', 'backside_image_113', 'Lastname113', 'Firstname113', '23/3/1999', 'female', 'sv113@gmail.com', '0101993993', 'Da Nang', 'sv113', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(114, 'SV484497594114', 'teacher_image_114', 'front_image_114', 'backside_image_114', 'Lastname114', 'Firstname114', '23/3/1999', 'male', 'sv114@gmail.com', '0101993993', 'Da Nang', 'sv114', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(115, 'SV433448820115', 'teacher_image_115', 'front_image_115', 'backside_image_115', 'Lastname115', 'Firstname115', '23/3/1999', 'female', 'sv115@gmail.com', '0101993993', 'Da Nang', 'sv115', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(116, 'SV818092921116', 'teacher_image_116', 'front_image_116', 'backside_image_116', 'Lastname116', 'Firstname116', '23/3/1999', 'male', 'sv116@gmail.com', '0101993993', 'Da Nang', 'sv116', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(117, 'SV262606512117', 'teacher_image_117', 'front_image_117', 'backside_image_117', 'Lastname117', 'Firstname117', '23/3/1999', 'female', 'sv117@gmail.com', '0101993993', 'Da Nang', 'sv117', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(118, 'SV950028864118', 'teacher_image_118', 'front_image_118', 'backside_image_118', 'Lastname118', 'Firstname118', '23/3/1999', 'male', 'sv118@gmail.com', '0101993993', 'Da Nang', 'sv118', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(119, 'SV165499993119', 'teacher_image_119', 'front_image_119', 'backside_image_119', 'Lastname119', 'Firstname119', '23/3/1999', 'female', 'sv119@gmail.com', '0101993993', 'Da Nang', 'sv119', '2024-01-17 16:45:55', '2024-01-17 16:45:55'),
(120, 'SV111857624120', 'teacher_image_120', 'front_image_120', 'backside_image_120', 'Lastname120', 'Firstname120', '23/3/1999', 'male', 'sv120@gmail.com', '0101993993', 'Da Nang', 'sv120', '2024-01-17 16:45:55', '2024-01-17 16:45:55');

-- --------------------------------------------------------

--
-- Table structure for table `student_user`
--

CREATE TABLE `student_user` (
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `credit_hours` int(11) NOT NULL,
  `total_number_of_periods` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `credit_hours`, `total_number_of_periods`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Anh văn cơ bản 1', 2, 72, 'Học và lấy lại kiến thức cơ bản tiếng anh của các thì', 'anh-van-co-ban-1', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(2, 'Giáo dục chính trị', 2, 72, 'Học các hiểu biết về chính trị của xã hội', 'giao-duc-chinh-tri', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(3, 'Giáo dục thể chất', 2, 72, 'Học rèn luyện sức khỏe cho bản thân', 'giao-duc-the-chat', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(4, 'Tin học', 2, 72, 'Học cách làm Word, Execl, PowerPoint', 'tin-hoc', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(5, 'Pháp luật', 2, 72, 'Học các luật lệ của quốc gia hiện nay', 'phap-luat', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(6, 'Anh văn cơ bản 2', 2, 72, 'Học và lấy lại kiến thức cơ bản, cách viết đoạn văn và giao tiếp bằng tiếng anh', 'anh-van-co-ban-2', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(7, 'Cơ sở dữ liệu', 2, 72, 'Làm quên với cơ sở dữ liệu và hiểu cách hoạt động của nó', 'co-so-du-lieu', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(8, 'C# Programming', 2, 72, 'Lập trình C#', 'C#-programming', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(9, 'System design analysis', 4, 72, 'Phân tích thiết kế hệ thống', 'system-design-analysis', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(10, 'Database', 5, 72, 'Cơ dỡ dữ liệu', 'database', '2024-01-16 06:59:11', '2024-01-16 06:59:11'),
(11, 'Basic English', 2, 72, 'Tiếng anh cơ bản', 'basic-english', '2024-01-16 06:59:11', '2024-01-16 06:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `image_personal` varchar(255) NOT NULL,
  `image_citizenIdentification_front` varchar(255) NOT NULL,
  `image_citizenIdentification_backside` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL DEFAULT 'male',
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `hometown` varchar(4000) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `code`, `image_personal`, `image_citizenIdentification_front`, `image_citizenIdentification_backside`, `last_name`, `first_name`, `birthday`, `gender`, `email`, `phone`, `hometown`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'TC3103631551', 'lastname1-firstname1-awm-tuyet-dia-cau-sinh-6123a4a415a9033.jpg', 'lastname1-firstname1-awm-tuyet-dia-cau-sinh-6123a4a415a9055.jpg', 'lastname1-firstname1-awm-tuyet-dia-cau-sinh-6123a4a415a9091.jpg', 'Lastname1', 'Firstname1', '23/3/1980', 'female', 'teacher1@school.com', '0101993993', 'Hometown1', 'lastname1-firstname1', '2024-01-15 01:38:22', '2024-01-16 07:02:48'),
(2, 'TC3658176161', 'teacher_image_1', 'front_image_1', 'backside_image_1', 'Lastname1', 'Firstname1', '23/3/1980', 'female', 'teacher1@school.com', '0101993993', 'Hometown1', 'teacher1', '2024-01-17 16:45:53', '2024-01-17 16:45:53'),
(3, 'TC3479306002', 'teacher_image_2', 'front_image_2', 'backside_image_2', 'Lastname2', 'Firstname2', '23/3/1980', 'male', 'teacher2@school.com', '0101993993', 'Hometown2', 'teacher2', '2024-01-17 16:45:53', '2024-01-17 16:45:53'),
(4, 'TC8064123433', 'teacher_image_3', 'front_image_3', 'backside_image_3', 'Lastname3', 'Firstname3', '23/3/1980', 'female', 'teacher3@school.com', '0101993993', 'Hometown3', 'teacher3', '2024-01-17 16:45:53', '2024-01-17 16:45:53'),
(5, 'TC8476070614', 'teacher_image_4', 'front_image_4', 'backside_image_4', 'Lastname4', 'Firstname4', '23/3/1980', 'male', 'teacher4@school.com', '0101993993', 'Hometown4', 'teacher4', '2024-01-17 16:45:53', '2024-01-17 16:45:53'),
(6, 'TC754034755', 'teacher_image_5', 'front_image_5', 'backside_image_5', 'Lastname5', 'Firstname5', '23/3/1980', 'female', 'teacher5@school.com', '0101993993', 'Hometown5', 'teacher5', '2024-01-17 16:45:53', '2024-01-17 16:45:53'),
(7, 'TC4533752046', 'teacher_image_6', 'front_image_6', 'backside_image_6', 'Lastname6', 'Firstname6', '23/3/1980', 'male', 'teacher6@school.com', '0101993993', 'Hometown6', 'teacher6', '2024-01-17 16:45:53', '2024-01-17 16:45:53'),
(8, 'TC9657841157', 'teacher_image_7', 'front_image_7', 'backside_image_7', 'Lastname7', 'Firstname7', '23/3/1980', 'female', 'teacher7@school.com', '0101993993', 'Hometown7', 'teacher7', '2024-01-17 16:45:53', '2024-01-17 16:45:53'),
(9, 'TC4376178518', 'teacher_image_8', 'front_image_8', 'backside_image_8', 'Lastname8', 'Firstname8', '23/3/1980', 'male', 'teacher8@school.com', '0101993993', 'Hometown8', 'teacher8', '2024-01-17 16:45:53', '2024-01-17 16:45:53'),
(10, 'TC4855846369', 'teacher_image_9', 'front_image_9', 'backside_image_9', 'Lastname9', 'Firstname9', '23/3/1980', 'female', 'teacher9@school.com', '0101993993', 'Hometown9', 'teacher9', '2024-01-17 16:45:53', '2024-01-17 16:45:53'),
(11, 'TC41033422410', 'teacher_image_10', 'front_image_10', 'backside_image_10', 'Lastname10', 'Firstname10', '23/3/1980', 'male', 'teacher10@school.com', '0101993993', 'Hometown10', 'teacher10', '2024-01-17 16:45:53', '2024-01-17 16:45:53'),
(12, 'TC56840730411', 'teacher_image_11', 'front_image_11', 'backside_image_11', 'Lastname11', 'Firstname11', '23/3/1980', 'female', 'teacher11@school.com', '0101993993', 'Hometown11', 'teacher11', '2024-01-17 16:45:53', '2024-01-17 16:45:53'),
(13, 'TC59387755312', 'teacher_image_12', 'front_image_12', 'backside_image_12', 'Lastname12', 'Firstname12', '23/3/1980', 'male', 'teacher12@school.com', '0101993993', 'Hometown12', 'teacher12', '2024-01-17 16:45:53', '2024-01-17 16:45:53'),
(14, 'TC90527785713', 'teacher_image_13', 'front_image_13', 'backside_image_13', 'Lastname13', 'Firstname13', '23/3/1980', 'female', 'teacher13@school.com', '0101993993', 'Hometown13', 'teacher13', '2024-01-17 16:45:53', '2024-01-17 16:45:53'),
(15, 'TC93693496014', 'teacher_image_14', 'front_image_14', 'backside_image_14', 'Lastname14', 'Firstname14', '23/3/1980', 'male', 'teacher14@school.com', '0101993993', 'Hometown14', 'teacher14', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(16, 'TC26850993715', 'teacher_image_15', 'front_image_15', 'backside_image_15', 'Lastname15', 'Firstname15', '23/3/1980', 'female', 'teacher15@school.com', '0101993993', 'Hometown15', 'teacher15', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(17, 'TC28951680616', 'teacher_image_16', 'front_image_16', 'backside_image_16', 'Lastname16', 'Firstname16', '23/3/1980', 'male', 'teacher16@school.com', '0101993993', 'Hometown16', 'teacher16', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(18, 'TC28694634217', 'teacher_image_17', 'front_image_17', 'backside_image_17', 'Lastname17', 'Firstname17', '23/3/1980', 'female', 'teacher17@school.com', '0101993993', 'Hometown17', 'teacher17', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(19, 'TC11173598718', 'teacher_image_18', 'front_image_18', 'backside_image_18', 'Lastname18', 'Firstname18', '23/3/1980', 'male', 'teacher18@school.com', '0101993993', 'Hometown18', 'teacher18', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(20, 'TC4982472319', 'teacher_image_19', 'front_image_19', 'backside_image_19', 'Lastname19', 'Firstname19', '23/3/1980', 'female', 'teacher19@school.com', '0101993993', 'Hometown19', 'teacher19', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(21, 'TC75085428820', 'teacher_image_20', 'front_image_20', 'backside_image_20', 'Lastname20', 'Firstname20', '23/3/1980', 'male', 'teacher20@school.com', '0101993993', 'Hometown20', 'teacher20', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(22, 'TC47316982221', 'teacher_image_21', 'front_image_21', 'backside_image_21', 'Lastname21', 'Firstname21', '23/3/1980', 'female', 'teacher21@school.com', '0101993993', 'Hometown21', 'teacher21', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(23, 'TC51541534922', 'teacher_image_22', 'front_image_22', 'backside_image_22', 'Lastname22', 'Firstname22', '23/3/1980', 'male', 'teacher22@school.com', '0101993993', 'Hometown22', 'teacher22', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(24, 'TC19445854423', 'teacher_image_23', 'front_image_23', 'backside_image_23', 'Lastname23', 'Firstname23', '23/3/1980', 'female', 'teacher23@school.com', '0101993993', 'Hometown23', 'teacher23', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(25, 'TC88055130724', 'teacher_image_24', 'front_image_24', 'backside_image_24', 'Lastname24', 'Firstname24', '23/3/1980', 'male', 'teacher24@school.com', '0101993993', 'Hometown24', 'teacher24', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(26, 'TC58904453225', 'teacher_image_25', 'front_image_25', 'backside_image_25', 'Lastname25', 'Firstname25', '23/3/1980', 'female', 'teacher25@school.com', '0101993993', 'Hometown25', 'teacher25', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(27, 'TC21278643826', 'teacher_image_26', 'front_image_26', 'backside_image_26', 'Lastname26', 'Firstname26', '23/3/1980', 'male', 'teacher26@school.com', '0101993993', 'Hometown26', 'teacher26', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(28, 'TC48847794327', 'teacher_image_27', 'front_image_27', 'backside_image_27', 'Lastname27', 'Firstname27', '23/3/1980', 'female', 'teacher27@school.com', '0101993993', 'Hometown27', 'teacher27', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(29, 'TC10153976828', 'teacher_image_28', 'front_image_28', 'backside_image_28', 'Lastname28', 'Firstname28', '23/3/1980', 'male', 'teacher28@school.com', '0101993993', 'Hometown28', 'teacher28', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(30, 'TC42713096229', 'teacher_image_29', 'front_image_29', 'backside_image_29', 'Lastname29', 'Firstname29', '23/3/1980', 'female', 'teacher29@school.com', '0101993993', 'Hometown29', 'teacher29', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(31, 'TC387832730', 'teacher_image_30', 'front_image_30', 'backside_image_30', 'Lastname30', 'Firstname30', '23/3/1980', 'male', 'teacher30@school.com', '0101993993', 'Hometown30', 'teacher30', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(32, 'TC39638000831', 'teacher_image_31', 'front_image_31', 'backside_image_31', 'Lastname31', 'Firstname31', '23/3/1980', 'female', 'teacher31@school.com', '0101993993', 'Hometown31', 'teacher31', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(33, 'TC79308514332', 'teacher_image_32', 'front_image_32', 'backside_image_32', 'Lastname32', 'Firstname32', '23/3/1980', 'male', 'teacher32@school.com', '0101993993', 'Hometown32', 'teacher32', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(34, 'TC94705778433', 'teacher_image_33', 'front_image_33', 'backside_image_33', 'Lastname33', 'Firstname33', '23/3/1980', 'female', 'teacher33@school.com', '0101993993', 'Hometown33', 'teacher33', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(35, 'TC70015284834', 'teacher_image_34', 'front_image_34', 'backside_image_34', 'Lastname34', 'Firstname34', '23/3/1980', 'male', 'teacher34@school.com', '0101993993', 'Hometown34', 'teacher34', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(36, 'TC70592822935', 'teacher_image_35', 'front_image_35', 'backside_image_35', 'Lastname35', 'Firstname35', '23/3/1980', 'female', 'teacher35@school.com', '0101993993', 'Hometown35', 'teacher35', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(37, 'TC97662725436', 'teacher_image_36', 'front_image_36', 'backside_image_36', 'Lastname36', 'Firstname36', '23/3/1980', 'male', 'teacher36@school.com', '0101993993', 'Hometown36', 'teacher36', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(38, 'TC27664408837', 'teacher_image_37', 'front_image_37', 'backside_image_37', 'Lastname37', 'Firstname37', '23/3/1980', 'female', 'teacher37@school.com', '0101993993', 'Hometown37', 'teacher37', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(39, 'TC64274722638', 'teacher_image_38', 'front_image_38', 'backside_image_38', 'Lastname38', 'Firstname38', '23/3/1980', 'male', 'teacher38@school.com', '0101993993', 'Hometown38', 'teacher38', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(40, 'TC93427484639', 'teacher_image_39', 'front_image_39', 'backside_image_39', 'Lastname39', 'Firstname39', '23/3/1980', 'female', 'teacher39@school.com', '0101993993', 'Hometown39', 'teacher39', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(41, 'TC97046811240', 'teacher_image_40', 'front_image_40', 'backside_image_40', 'Lastname40', 'Firstname40', '23/3/1980', 'male', 'teacher40@school.com', '0101993993', 'Hometown40', 'teacher40', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(42, 'TC89088743641', 'teacher_image_41', 'front_image_41', 'backside_image_41', 'Lastname41', 'Firstname41', '23/3/1980', 'female', 'teacher41@school.com', '0101993993', 'Hometown41', 'teacher41', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(43, 'TC75870708042', 'teacher_image_42', 'front_image_42', 'backside_image_42', 'Lastname42', 'Firstname42', '23/3/1980', 'male', 'teacher42@school.com', '0101993993', 'Hometown42', 'teacher42', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(44, 'TC13285487143', 'teacher_image_43', 'front_image_43', 'backside_image_43', 'Lastname43', 'Firstname43', '23/3/1980', 'female', 'teacher43@school.com', '0101993993', 'Hometown43', 'teacher43', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(45, 'TC85519063944', 'teacher_image_44', 'front_image_44', 'backside_image_44', 'Lastname44', 'Firstname44', '23/3/1980', 'male', 'teacher44@school.com', '0101993993', 'Hometown44', 'teacher44', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(46, 'TC53023519145', 'teacher_image_45', 'front_image_45', 'backside_image_45', 'Lastname45', 'Firstname45', '23/3/1980', 'female', 'teacher45@school.com', '0101993993', 'Hometown45', 'teacher45', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(47, 'TC96633753046', 'teacher_image_46', 'front_image_46', 'backside_image_46', 'Lastname46', 'Firstname46', '23/3/1980', 'male', 'teacher46@school.com', '0101993993', 'Hometown46', 'teacher46', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(48, 'TC31565867547', 'teacher_image_47', 'front_image_47', 'backside_image_47', 'Lastname47', 'Firstname47', '23/3/1980', 'female', 'teacher47@school.com', '0101993993', 'Hometown47', 'teacher47', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(49, 'TC96685507748', 'teacher_image_48', 'front_image_48', 'backside_image_48', 'Lastname48', 'Firstname48', '23/3/1980', 'male', 'teacher48@school.com', '0101993993', 'Hometown48', 'teacher48', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(50, 'TC89652690849', 'teacher_image_49', 'front_image_49', 'backside_image_49', 'Lastname49', 'Firstname49', '23/3/1980', 'female', 'teacher49@school.com', '0101993993', 'Hometown49', 'teacher49', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(51, 'TC64254050550', 'teacher_image_50', 'front_image_50', 'backside_image_50', 'Lastname50', 'Firstname50', '23/3/1980', 'male', 'teacher50@school.com', '0101993993', 'Hometown50', 'teacher50', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(52, 'TC38121476351', 'teacher_image_51', 'front_image_51', 'backside_image_51', 'Lastname51', 'Firstname51', '23/3/1980', 'female', 'teacher51@school.com', '0101993993', 'Hometown51', 'teacher51', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(53, 'TC47166949352', 'teacher_image_52', 'front_image_52', 'backside_image_52', 'Lastname52', 'Firstname52', '23/3/1980', 'male', 'teacher52@school.com', '0101993993', 'Hometown52', 'teacher52', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(54, 'TC95662450853', 'teacher_image_53', 'front_image_53', 'backside_image_53', 'Lastname53', 'Firstname53', '23/3/1980', 'female', 'teacher53@school.com', '0101993993', 'Hometown53', 'teacher53', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(55, 'TC45474425354', 'teacher_image_54', 'front_image_54', 'backside_image_54', 'Lastname54', 'Firstname54', '23/3/1980', 'male', 'teacher54@school.com', '0101993993', 'Hometown54', 'teacher54', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(56, 'TC87566720655', 'teacher_image_55', 'front_image_55', 'backside_image_55', 'Lastname55', 'Firstname55', '23/3/1980', 'female', 'teacher55@school.com', '0101993993', 'Hometown55', 'teacher55', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(57, 'TC78337358456', 'teacher_image_56', 'front_image_56', 'backside_image_56', 'Lastname56', 'Firstname56', '23/3/1980', 'male', 'teacher56@school.com', '0101993993', 'Hometown56', 'teacher56', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(58, 'TC27489935257', 'teacher_image_57', 'front_image_57', 'backside_image_57', 'Lastname57', 'Firstname57', '23/3/1980', 'female', 'teacher57@school.com', '0101993993', 'Hometown57', 'teacher57', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(59, 'TC32283940058', 'teacher_image_58', 'front_image_58', 'backside_image_58', 'Lastname58', 'Firstname58', '23/3/1980', 'male', 'teacher58@school.com', '0101993993', 'Hometown58', 'teacher58', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(60, 'TC67246384359', 'teacher_image_59', 'front_image_59', 'backside_image_59', 'Lastname59', 'Firstname59', '23/3/1980', 'female', 'teacher59@school.com', '0101993993', 'Hometown59', 'teacher59', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(61, 'TC5754998160', 'teacher_image_60', 'front_image_60', 'backside_image_60', 'Lastname60', 'Firstname60', '23/3/1980', 'male', 'teacher60@school.com', '0101993993', 'Hometown60', 'teacher60', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(62, 'TC47302597361', 'teacher_image_61', 'front_image_61', 'backside_image_61', 'Lastname61', 'Firstname61', '23/3/1980', 'female', 'teacher61@school.com', '0101993993', 'Hometown61', 'teacher61', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(63, 'TC5949789662', 'teacher_image_62', 'front_image_62', 'backside_image_62', 'Lastname62', 'Firstname62', '23/3/1980', 'male', 'teacher62@school.com', '0101993993', 'Hometown62', 'teacher62', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(64, 'TC56458070663', 'teacher_image_63', 'front_image_63', 'backside_image_63', 'Lastname63', 'Firstname63', '23/3/1980', 'female', 'teacher63@school.com', '0101993993', 'Hometown63', 'teacher63', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(65, 'TC45046210664', 'teacher_image_64', 'front_image_64', 'backside_image_64', 'Lastname64', 'Firstname64', '23/3/1980', 'male', 'teacher64@school.com', '0101993993', 'Hometown64', 'teacher64', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(66, 'TC30562845565', 'teacher_image_65', 'front_image_65', 'backside_image_65', 'Lastname65', 'Firstname65', '23/3/1980', 'female', 'teacher65@school.com', '0101993993', 'Hometown65', 'teacher65', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(67, 'TC68366373766', 'teacher_image_66', 'front_image_66', 'backside_image_66', 'Lastname66', 'Firstname66', '23/3/1980', 'male', 'teacher66@school.com', '0101993993', 'Hometown66', 'teacher66', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(68, 'TC16041485967', 'teacher_image_67', 'front_image_67', 'backside_image_67', 'Lastname67', 'Firstname67', '23/3/1980', 'female', 'teacher67@school.com', '0101993993', 'Hometown67', 'teacher67', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(69, 'TC75608297268', 'teacher_image_68', 'front_image_68', 'backside_image_68', 'Lastname68', 'Firstname68', '23/3/1980', 'male', 'teacher68@school.com', '0101993993', 'Hometown68', 'teacher68', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(70, 'TC53415172969', 'teacher_image_69', 'front_image_69', 'backside_image_69', 'Lastname69', 'Firstname69', '23/3/1980', 'female', 'teacher69@school.com', '0101993993', 'Hometown69', 'teacher69', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(71, 'TC71624008570', 'teacher_image_70', 'front_image_70', 'backside_image_70', 'Lastname70', 'Firstname70', '23/3/1980', 'male', 'teacher70@school.com', '0101993993', 'Hometown70', 'teacher70', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(72, 'TC85354884971', 'teacher_image_71', 'front_image_71', 'backside_image_71', 'Lastname71', 'Firstname71', '23/3/1980', 'female', 'teacher71@school.com', '0101993993', 'Hometown71', 'teacher71', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(73, 'TC90342809272', 'teacher_image_72', 'front_image_72', 'backside_image_72', 'Lastname72', 'Firstname72', '23/3/1980', 'male', 'teacher72@school.com', '0101993993', 'Hometown72', 'teacher72', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(74, 'TC82425097773', 'teacher_image_73', 'front_image_73', 'backside_image_73', 'Lastname73', 'Firstname73', '23/3/1980', 'female', 'teacher73@school.com', '0101993993', 'Hometown73', 'teacher73', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(75, 'TC13751089274', 'teacher_image_74', 'front_image_74', 'backside_image_74', 'Lastname74', 'Firstname74', '23/3/1980', 'male', 'teacher74@school.com', '0101993993', 'Hometown74', 'teacher74', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(76, 'TC22233545775', 'teacher_image_75', 'front_image_75', 'backside_image_75', 'Lastname75', 'Firstname75', '23/3/1980', 'female', 'teacher75@school.com', '0101993993', 'Hometown75', 'teacher75', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(77, 'TC59494680376', 'teacher_image_76', 'front_image_76', 'backside_image_76', 'Lastname76', 'Firstname76', '23/3/1980', 'male', 'teacher76@school.com', '0101993993', 'Hometown76', 'teacher76', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(78, 'TC55402138777', 'teacher_image_77', 'front_image_77', 'backside_image_77', 'Lastname77', 'Firstname77', '23/3/1980', 'female', 'teacher77@school.com', '0101993993', 'Hometown77', 'teacher77', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(79, 'TC9096023278', 'teacher_image_78', 'front_image_78', 'backside_image_78', 'Lastname78', 'Firstname78', '23/3/1980', 'male', 'teacher78@school.com', '0101993993', 'Hometown78', 'teacher78', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(80, 'TC51478584079', 'teacher_image_79', 'front_image_79', 'backside_image_79', 'Lastname79', 'Firstname79', '23/3/1980', 'female', 'teacher79@school.com', '0101993993', 'Hometown79', 'teacher79', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(81, 'TC9685137780', 'teacher_image_80', 'front_image_80', 'backside_image_80', 'Lastname80', 'Firstname80', '23/3/1980', 'male', 'teacher80@school.com', '0101993993', 'Hometown80', 'teacher80', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(82, 'TC44024813381', 'teacher_image_81', 'front_image_81', 'backside_image_81', 'Lastname81', 'Firstname81', '23/3/1980', 'female', 'teacher81@school.com', '0101993993', 'Hometown81', 'teacher81', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(83, 'TC3110864282', 'teacher_image_82', 'front_image_82', 'backside_image_82', 'Lastname82', 'Firstname82', '23/3/1980', 'male', 'teacher82@school.com', '0101993993', 'Hometown82', 'teacher82', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(84, 'TC55641523283', 'teacher_image_83', 'front_image_83', 'backside_image_83', 'Lastname83', 'Firstname83', '23/3/1980', 'female', 'teacher83@school.com', '0101993993', 'Hometown83', 'teacher83', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(85, 'TC33017784', 'teacher_image_84', 'front_image_84', 'backside_image_84', 'Lastname84', 'Firstname84', '23/3/1980', 'male', 'teacher84@school.com', '0101993993', 'Hometown84', 'teacher84', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(86, 'TC43753247285', 'teacher_image_85', 'front_image_85', 'backside_image_85', 'Lastname85', 'Firstname85', '23/3/1980', 'female', 'teacher85@school.com', '0101993993', 'Hometown85', 'teacher85', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(87, 'TC18225177386', 'teacher_image_86', 'front_image_86', 'backside_image_86', 'Lastname86', 'Firstname86', '23/3/1980', 'male', 'teacher86@school.com', '0101993993', 'Hometown86', 'teacher86', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(88, 'TC85632178587', 'teacher_image_87', 'front_image_87', 'backside_image_87', 'Lastname87', 'Firstname87', '23/3/1980', 'female', 'teacher87@school.com', '0101993993', 'Hometown87', 'teacher87', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(89, 'TC27658174388', 'teacher_image_88', 'front_image_88', 'backside_image_88', 'Lastname88', 'Firstname88', '23/3/1980', 'male', 'teacher88@school.com', '0101993993', 'Hometown88', 'teacher88', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(90, 'TC19358290889', 'teacher_image_89', 'front_image_89', 'backside_image_89', 'Lastname89', 'Firstname89', '23/3/1980', 'female', 'teacher89@school.com', '0101993993', 'Hometown89', 'teacher89', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(91, 'TC7144386790', 'teacher_image_90', 'front_image_90', 'backside_image_90', 'Lastname90', 'Firstname90', '23/3/1980', 'male', 'teacher90@school.com', '0101993993', 'Hometown90', 'teacher90', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(92, 'TC92520204591', 'teacher_image_91', 'front_image_91', 'backside_image_91', 'Lastname91', 'Firstname91', '23/3/1980', 'female', 'teacher91@school.com', '0101993993', 'Hometown91', 'teacher91', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(93, 'TC71039484192', 'teacher_image_92', 'front_image_92', 'backside_image_92', 'Lastname92', 'Firstname92', '23/3/1980', 'male', 'teacher92@school.com', '0101993993', 'Hometown92', 'teacher92', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(94, 'TC1124393393', 'teacher_image_93', 'front_image_93', 'backside_image_93', 'Lastname93', 'Firstname93', '23/3/1980', 'female', 'teacher93@school.com', '0101993993', 'Hometown93', 'teacher93', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(95, 'TC69935004794', 'teacher_image_94', 'front_image_94', 'backside_image_94', 'Lastname94', 'Firstname94', '23/3/1980', 'male', 'teacher94@school.com', '0101993993', 'Hometown94', 'teacher94', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(96, 'TC78582716895', 'teacher_image_95', 'front_image_95', 'backside_image_95', 'Lastname95', 'Firstname95', '23/3/1980', 'female', 'teacher95@school.com', '0101993993', 'Hometown95', 'teacher95', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(97, 'TC12896047696', 'teacher_image_96', 'front_image_96', 'backside_image_96', 'Lastname96', 'Firstname96', '23/3/1980', 'male', 'teacher96@school.com', '0101993993', 'Hometown96', 'teacher96', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(98, 'TC99426147297', 'teacher_image_97', 'front_image_97', 'backside_image_97', 'Lastname97', 'Firstname97', '23/3/1980', 'female', 'teacher97@school.com', '0101993993', 'Hometown97', 'teacher97', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(99, 'TC32738841298', 'teacher_image_98', 'front_image_98', 'backside_image_98', 'Lastname98', 'Firstname98', '23/3/1980', 'male', 'teacher98@school.com', '0101993993', 'Hometown98', 'teacher98', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(100, 'TC73185576499', 'teacher_image_99', 'front_image_99', 'backside_image_99', 'Lastname99', 'Firstname99', '23/3/1980', 'female', 'teacher99@school.com', '0101993993', 'Hometown99', 'teacher99', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(101, 'TC191934869100', 'teacher_image_100', 'front_image_100', 'backside_image_100', 'Lastname100', 'Firstname100', '23/3/1980', 'male', 'teacher100@school.com', '0101993993', 'Hometown100', 'teacher100', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(102, 'TC226511264101', 'teacher_image_101', 'front_image_101', 'backside_image_101', 'Lastname101', 'Firstname101', '23/3/1980', 'female', 'teacher101@school.com', '0101993993', 'Hometown101', 'teacher101', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(103, 'TC899655027102', 'teacher_image_102', 'front_image_102', 'backside_image_102', 'Lastname102', 'Firstname102', '23/3/1980', 'male', 'teacher102@school.com', '0101993993', 'Hometown102', 'teacher102', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(104, 'TC15981428103', 'teacher_image_103', 'front_image_103', 'backside_image_103', 'Lastname103', 'Firstname103', '23/3/1980', 'female', 'teacher103@school.com', '0101993993', 'Hometown103', 'teacher103', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(105, 'TC175560297104', 'teacher_image_104', 'front_image_104', 'backside_image_104', 'Lastname104', 'Firstname104', '23/3/1980', 'male', 'teacher104@school.com', '0101993993', 'Hometown104', 'teacher104', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(106, 'TC793840892105', 'teacher_image_105', 'front_image_105', 'backside_image_105', 'Lastname105', 'Firstname105', '23/3/1980', 'female', 'teacher105@school.com', '0101993993', 'Hometown105', 'teacher105', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(107, 'TC830232631106', 'teacher_image_106', 'front_image_106', 'backside_image_106', 'Lastname106', 'Firstname106', '23/3/1980', 'male', 'teacher106@school.com', '0101993993', 'Hometown106', 'teacher106', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(108, 'TC516172186107', 'teacher_image_107', 'front_image_107', 'backside_image_107', 'Lastname107', 'Firstname107', '23/3/1980', 'female', 'teacher107@school.com', '0101993993', 'Hometown107', 'teacher107', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(109, 'TC840738562108', 'teacher_image_108', 'front_image_108', 'backside_image_108', 'Lastname108', 'Firstname108', '23/3/1980', 'male', 'teacher108@school.com', '0101993993', 'Hometown108', 'teacher108', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(110, 'TC414769869109', 'teacher_image_109', 'front_image_109', 'backside_image_109', 'Lastname109', 'Firstname109', '23/3/1980', 'female', 'teacher109@school.com', '0101993993', 'Hometown109', 'teacher109', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(111, 'TC624693793110', 'teacher_image_110', 'front_image_110', 'backside_image_110', 'Lastname110', 'Firstname110', '23/3/1980', 'male', 'teacher110@school.com', '0101993993', 'Hometown110', 'teacher110', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(112, 'TC862862907111', 'teacher_image_111', 'front_image_111', 'backside_image_111', 'Lastname111', 'Firstname111', '23/3/1980', 'female', 'teacher111@school.com', '0101993993', 'Hometown111', 'teacher111', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(113, 'TC32478126112', 'teacher_image_112', 'front_image_112', 'backside_image_112', 'Lastname112', 'Firstname112', '23/3/1980', 'male', 'teacher112@school.com', '0101993993', 'Hometown112', 'teacher112', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(114, 'TC60587641113', 'teacher_image_113', 'front_image_113', 'backside_image_113', 'Lastname113', 'Firstname113', '23/3/1980', 'female', 'teacher113@school.com', '0101993993', 'Hometown113', 'teacher113', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(115, 'TC132510476114', 'teacher_image_114', 'front_image_114', 'backside_image_114', 'Lastname114', 'Firstname114', '23/3/1980', 'male', 'teacher114@school.com', '0101993993', 'Hometown114', 'teacher114', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(116, 'TC187622843115', 'teacher_image_115', 'front_image_115', 'backside_image_115', 'Lastname115', 'Firstname115', '23/3/1980', 'female', 'teacher115@school.com', '0101993993', 'Hometown115', 'teacher115', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(117, 'TC208111622116', 'teacher_image_116', 'front_image_116', 'backside_image_116', 'Lastname116', 'Firstname116', '23/3/1980', 'male', 'teacher116@school.com', '0101993993', 'Hometown116', 'teacher116', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(118, 'TC240536365117', 'teacher_image_117', 'front_image_117', 'backside_image_117', 'Lastname117', 'Firstname117', '23/3/1980', 'female', 'teacher117@school.com', '0101993993', 'Hometown117', 'teacher117', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(119, 'TC238976814118', 'teacher_image_118', 'front_image_118', 'backside_image_118', 'Lastname118', 'Firstname118', '23/3/1980', 'male', 'teacher118@school.com', '0101993993', 'Hometown118', 'teacher118', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(120, 'TC701497324119', 'teacher_image_119', 'front_image_119', 'backside_image_119', 'Lastname119', 'Firstname119', '23/3/1980', 'female', 'teacher119@school.com', '0101993993', 'Hometown119', 'teacher119', '2024-01-17 16:45:54', '2024-01-17 16:45:54'),
(121, 'TC948445668120', 'teacher_image_120', 'front_image_120', 'backside_image_120', 'Lastname120', 'Firstname120', '23/3/1980', 'male', 'teacher120@school.com', '0101993993', 'Hometown120', 'teacher120', '2024-01-17 16:45:54', '2024-01-17 16:45:54');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_user`
--

CREATE TABLE `teacher_user` (
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_user`
--

INSERT INTO `teacher_user` (`teacher_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, '2024-01-17 16:47:51', '2024-01-17 16:47:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', NULL, '$2y$12$1I9GZY4zCTMB17awoAjXJeqdmXtgqm.tz9Ag2HjtzaQ9xoCNxT8Ai', NULL, '2024-01-15 01:38:22', '2024-01-15 01:38:22'),
(2, 'TC3103631551', NULL, '$2y$12$nE3LKi/v3hD2Cc5cVvm8meKcceSfKvus/SMZpsl97B/R/DCCcRfzC', NULL, '2024-01-17 16:47:51', '2024-01-17 16:47:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attendances_day_unique` (`day`),
  ADD KEY `attendances_detail_schedules_id_foreign` (`detail_schedules_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`),
  ADD UNIQUE KEY `departments_slug_unique` (`slug`);

--
-- Indexes for table `detail__attendances`
--
ALTER TABLE `detail__attendances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `detail__attendances_status_unique` (`status`),
  ADD KEY `detail__attendances_attendance_id_foreign` (`attendance_id`),
  ADD KEY `detail__attendances_student_id_foreign` (`student_id`);

--
-- Indexes for table `detail__classes`
--
ALTER TABLE `detail__classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail__classes_grade_id_foreign` (`grade_id`),
  ADD KEY `detail__classes_student_id_foreign` (`student_id`),
  ADD KEY `detail__classes_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `detail__departments`
--
ALTER TABLE `detail__departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail__departments_department_id_foreign` (`department_id`),
  ADD KEY `detail__departments_teacher_id_foreign` (`teacher_id`),
  ADD KEY `detail__departments_grade_id_foreign` (`grade_id`);

--
-- Indexes for table `detail__schedules`
--
ALTER TABLE `detail__schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail__schedules_subject_id_foreign` (`subject_id`),
  ADD KEY `detail__schedules_room_id_foreign` (`room_id`),
  ADD KEY `detail__schedules_schedule_id_foreign` (`schedule_id`);

--
-- Indexes for table `detail__scores`
--
ALTER TABLE `detail__scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail__scores_score_id_foreign` (`score_id`);

--
-- Indexes for table `detail__teachers`
--
ALTER TABLE `detail__teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail__teachers_teacher_id_foreign` (`teacher_id`),
  ADD KEY `detail__teachers_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grades_name_unique` (`name`),
  ADD UNIQUE KEY `grades_slug_unique` (`slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `periods_name_unique` (`name`),
  ADD UNIQUE KEY `periods_time_unique` (`time`),
  ADD UNIQUE KEY `periods_slug_unique` (`slug`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rank__schedules`
--
ALTER TABLE `rank__schedules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rank__schedules_name_unique` (`name`),
  ADD UNIQUE KEY `rank__schedules_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rooms_name_unique` (`name`),
  ADD UNIQUE KEY `rooms_slug_unique` (`slug`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_teacher_id_foreign` (`teacher_id`),
  ADD KEY `schedules_grade_id_foreign` (`grade_id`),
  ADD KEY `schedules_rank_id_foreign` (`rank_id`),
  ADD KEY `schedules_period_id_foreign` (`period_id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scores_subject_id_foreign` (`subject_id`),
  ADD KEY `scores_student_id_foreign` (`student_id`),
  ADD KEY `scores_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_code_unique` (`code`),
  ADD UNIQUE KEY `students_image_personal_unique` (`image_personal`),
  ADD UNIQUE KEY `students_image_citizenidentification_front_unique` (`image_citizenIdentification_front`),
  ADD UNIQUE KEY `students_image_citizenidentification_backside_unique` (`image_citizenIdentification_backside`);

--
-- Indexes for table `student_user`
--
ALTER TABLE `student_user`
  ADD PRIMARY KEY (`student_id`,`user_id`),
  ADD KEY `student_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subjects_name_unique` (`name`),
  ADD UNIQUE KEY `subjects_slug_unique` (`slug`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_code_unique` (`code`),
  ADD UNIQUE KEY `teachers_image_personal_unique` (`image_personal`),
  ADD UNIQUE KEY `teachers_image_citizenidentification_front_unique` (`image_citizenIdentification_front`),
  ADD UNIQUE KEY `teachers_image_citizenidentification_backside_unique` (`image_citizenIdentification_backside`);

--
-- Indexes for table `teacher_user`
--
ALTER TABLE `teacher_user`
  ADD PRIMARY KEY (`teacher_id`,`user_id`),
  ADD KEY `teacher_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `detail__attendances`
--
ALTER TABLE `detail__attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail__classes`
--
ALTER TABLE `detail__classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `detail__departments`
--
ALTER TABLE `detail__departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `detail__schedules`
--
ALTER TABLE `detail__schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `detail__scores`
--
ALTER TABLE `detail__scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail__teachers`
--
ALTER TABLE `detail__teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `periods`
--
ALTER TABLE `periods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rank__schedules`
--
ALTER TABLE `rank__schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_detail_schedules_id_foreign` FOREIGN KEY (`detail_schedules_id`) REFERENCES `detail__schedules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `detail__attendances`
--
ALTER TABLE `detail__attendances`
  ADD CONSTRAINT `detail__attendances_attendance_id_foreign` FOREIGN KEY (`attendance_id`) REFERENCES `attendances` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail__attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `detail__classes`
--
ALTER TABLE `detail__classes`
  ADD CONSTRAINT `detail__classes_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail__classes_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail__classes_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `detail__departments`
--
ALTER TABLE `detail__departments`
  ADD CONSTRAINT `detail__departments_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail__departments_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail__departments_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `detail__schedules`
--
ALTER TABLE `detail__schedules`
  ADD CONSTRAINT `detail__schedules_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail__schedules_schedule_id_foreign` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail__schedules_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `detail__scores`
--
ALTER TABLE `detail__scores`
  ADD CONSTRAINT `detail__scores_score_id_foreign` FOREIGN KEY (`score_id`) REFERENCES `scores` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `detail__teachers`
--
ALTER TABLE `detail__teachers`
  ADD CONSTRAINT `detail__teachers_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail__teachers_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_period_id_foreign` FOREIGN KEY (`period_id`) REFERENCES `periods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_rank_id_foreign` FOREIGN KEY (`rank_id`) REFERENCES `rank__schedules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `scores_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `scores_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_user`
--
ALTER TABLE `student_user`
  ADD CONSTRAINT `student_user_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teacher_user`
--
ALTER TABLE `teacher_user`
  ADD CONSTRAINT `teacher_user_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teacher_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
