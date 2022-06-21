-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2022 at 11:45 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `institutions`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `explanation` text DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `children_feedback`
--

CREATE TABLE `children_feedback` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `teacher_name` text DEFAULT NULL,
  `date_of_feedback` timestamp NOT NULL DEFAULT current_timestamp(),
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `children_feedback`
--

INSERT INTO `children_feedback` (`id`, `school_id`, `subject`, `feedback`, `teacher_name`, `date_of_feedback`, `student_id`) VALUES
(10, 22, 'Toán', 'Điểm Toán Kiểm Tra học kỳ : 9đ', 'Tiến Minh', '2022-06-06 07:37:43', 45);

-- --------------------------------------------------------

--
-- Table structure for table `complants`
--

CREATE TABLE `complants` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `type` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `number` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `date_of_complant` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complants`
--

INSERT INTO `complants` (`id`, `school_id`, `type`, `name`, `number`, `title`, `feedback`, `date_of_complant`) VALUES
(21, NULL, 'type', 'Name', 'PhoneNumber', 'TITLE', 'Feedback', '2020-01-08 18:53:40'),
(22, NULL, 'asdsad', 'asd', 'asdsad', 'asasd', 'asdsadasdsadsadsdaasdsaddsa', '2020-01-08 19:47:03'),
(23, 3, 'type', 'asd', 'asdsad', 'asasd', 'asdsadasdsadsadsdaasdsaddsa', '2020-01-08 19:54:39'),
(24, 3, 'Be Beb', 'asd', 'asdsad', 'asasd', 'asdsadasdsadsadsdaasdsaddsa', '2020-01-08 19:55:07'),
(29, 3, 'Be Beb', 'asd', 'asdsad', 'asasd', 'asdsadasdsadsadsdaasdsaddsaHow	', '2020-01-08 19:58:27'),
(30, 16, 'asdsda', 'sadsaddsdsdsdssad', 'sadsasdsdadssadsa', 'asdasd', 'sdsadsadasdsasadsadsad', '2020-01-08 19:59:45'),
(31, 16, 'asdsda', 'sadsaddsdsdsdssad', 'sadsasdsdadssadsa', 'asdasd', 'sdsadsadasdsasadsadsad', '2020-01-08 20:02:54'),
(32, 16, 'asdsda', 'sadsaddsdsdsdssad', 'sadsasdsdadssadsa', 'asdasd', 'sdsadsadasdsasadsadsad', '2020-01-08 20:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `control_groups`
--

CREATE TABLE `control_groups` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp(),
  `student_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `control_groups`
--

INSERT INTO `control_groups` (`id`, `school_id`, `date_of_register`, `student_id`, `group_id`) VALUES
(21, 22, '2022-06-01 19:32:16', 45, 7);

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `fees_amount` float DEFAULT NULL,
  `date_of_pay` timestamp NULL DEFAULT current_timestamp(),
  `student_id` int(11) DEFAULT NULL,
  `fees_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `school_id`, `fees_amount`, `date_of_pay`, `student_id`, `fees_name`) VALUES
(16, 22, 500, '2022-06-02 07:40:39', 45, 'hoc phi thang 7'),
(17, 22, 200, '2022-06-02 07:40:46', 45, '');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `time_of_room` text DEFAULT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp(),
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `school_id`, `name`, `subject`, `time_of_room`, `date_of_register`, `teacher_id`) VALUES
(7, 22, 'Hóa 11', 'Hóa', '8h  - 10h', '2022-06-01 19:31:31', 5),
(8, 22, 'Toán 11', 'Toán', '8h  - 10h', '2022-06-02 06:54:39', 6);

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `time_of_treatment` text DEFAULT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp(),
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `number` text NOT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp(),
  `school_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `username`, `password`, `name`, `email`, `address`, `number`, `date_of_register`, `school_id`, `student_id`) VALUES
(11, 'leminh', '$2y$10$tzsjyzEijwdEhr6kiLlxjuzd.EuqU5xX4y2rsc7n0IPCR24HC96LW', 'lê Minh Phương', 'sdsdasd', 'sdasdsd', 'sdasdsd', '0000-00-00 00:00:00', 22, 45),
(172, 'hoangdung', '$2y$10$PGSGdjlUU9UMUW2HzSmLUumH5j7suFsxddk72ak.dcsG0E1QawDBi', 'Võ Hoàng Dung', 'asdsds@sdasdsdsa', 'sdasdsdas', 'sadasdasdsd', '2022-06-02 13:52:57', 22, 12),
(173, 'trannghia', '$2y$10$yRC8i6epbpI4iwCTzQUC8el5ESUDD2Y9jvEXAW6OpVt2sQnydRulq', 'Trần Thái Nghĩa', 'asdasds@sdsadsadsd', 'đâsdasd', '261s64d8as', '2022-06-02 13:53:54', 22, 13),
(174, 'tronghuy', '$2y$10$Fi7N1oKfReaQaG.FYxAizuhCQwE48D6bT2ZTAdRBRWArRZM50LXhm', 'Lê Trọng Huy', 'asdsad@sadasdasd', 'ádasdasd', 'sadsds5d6sa4d', '2022-06-02 13:55:44', 22, 15);

-- --------------------------------------------------------

--
-- Table structure for table `people_emergency`
--

CREATE TABLE `people_emergency` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `number` text DEFAULT NULL,
  `relation` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp(),
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `appointment1` text DEFAULT NULL,
  `appointment2` text DEFAULT NULL,
  `appointment3` text DEFAULT NULL,
  `appointment4` text DEFAULT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp(),
  `grade` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `school_id`, `appointment1`, `appointment2`, `appointment3`, `appointment4`, `date_of_register`, `grade`) VALUES
(45, 22, 'Toán: 8:0pm - 9:30pm', 'Hóa: ', 'Lý', '', '2022-06-06 07:35:22', '11');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `number` text NOT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `username`, `password`, `name`, `email`, `address`, `number`, `date_of_register`) VALUES
(3, 'test_school_2', 'test_school_2', 'Second School', 'test_school_2@yahoo.com', 'Giza', '01021548987', '2019-10-29 21:11:52'),
(16, 'noor', '$2y$10$uHYW3rb8bIaHSPJCpnVcTOapPj1mz6dgyPqt/ygbPRnmrWPNAsj.S', 'Noor', 'noor@gmail.com', 'Egypt, Dakahlia', '0101212448789', '2019-11-05 11:56:39'),
(22, 'hocvienMath', '$2y$10$tzsjyzEijwdEhr6kiLlxjuzd.EuqU5xX4y2rsc7n0IPCR24HC96LW', 'hoc vien math', 'hocvienmath@gmail.com', 'ádasdasff', '4889+8465', '2022-06-01 19:24:33');

-- --------------------------------------------------------

--
-- Table structure for table `sibiling`
--

CREATE TABLE `sibiling` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `date_of_birth` text DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `job` text DEFAULT NULL,
  `number` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `grade` text DEFAULT NULL,
  `date_of_birth` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `school_id`, `username`, `password`, `name`, `grade`, `date_of_birth`, `address`, `date_of_register`) VALUES
(1, 22, 'trannghi', '$2y$10$wZTRGKUGIp5KRV1wa7Raq.seskhKqTpSK5NBJDpHhiBrCo043ST9e', 'Lê Minh Hiếu', '11', '27/2/2005', 'sdsadsadsad', '0000-00-00 00:00:00'),
(11, 22, 'hieuminh', '$2y$10$wZTRGKUGIp5KRV1wa7Raq.seskhKqTpSK5NBJDpHhiBrCo043ST9e', 'Lê Minh Hiếu', '11', '27/2/2005', 'sdsadsadsad', '0000-00-00 00:00:00'),
(12, 22, 'thucnghi', '$2y$10$wZTRGKUGIp5KRV1wa7Raq.seskhKqTpSK5NBJDpHhiBrCo043ST9e', 'Lê Minh Hiếu', '11', '27/2/2005', 'sdsadsadsad', '0000-00-00 00:00:00'),
(13, 22, 'ngoctrang', '$2y$10$wZTRGKUGIp5KRV1wa7Raq.seskhKqTpSK5NBJDpHhiBrCo043ST9e', 'Lê Minh Hiếu', '11', '27/2/2005', 'sdsadsadsad', '0000-00-00 00:00:00'),
(15, 22, 'haitrieu', '$2y$10$wZTRGKUGIp5KRV1wa7Raq.seskhKqTpSK5NBJDpHhiBrCo043ST9e', 'Lê Minh Hiếu', '11', '27/2/2005', 'sdsadsadsad', '0000-00-00 00:00:00'),
(19, 22, 'taiphat', '$2y$10$wZTRGKUGIp5KRV1wa7Raq.seskhKqTpSK5NBJDpHhiBrCo043ST9e', 'Lê Minh Hiếu', '11', '27/2/2005', 'sdsadsadsad', '0000-00-00 00:00:00'),
(20, 22, 'ngocminh', '$2y$10$wZTRGKUGIp5KRV1wa7Raq.seskhKqTpSK5NBJDpHhiBrCo043ST9e', 'Lê Minh Hiếu', '11', '27/2/2005', 'sdsadsadsad', '0000-00-00 00:00:00'),
(45, 22, 'hoaidung', '$2y$10$wZTRGKUGIp5KRV1wa7Raq.seskhKqTpSK5NBJDpHhiBrCo043ST9e', 'Lê Hoài Dũng', '11', '27/09/2005', 'ádasdasff', '2022-06-01 19:25:37'),
(50, 22, 'đangung', '$2y$10$wZTRGKUGIp5KRV1wa7Raq.seskhKqTpSK5NBJDpHhiBrCo043ST9e', 'Lê Minh Hiếu', '11', '27/2/2005', 'sdsadsadsad', '0000-00-00 00:00:00'),
(78, 22, 'tranvuong', '$2y$10$wZTRGKUGIp5KRV1wa7Raq.seskhKqTpSK5NBJDpHhiBrCo043ST9e', 'Lê Minh Hiếu', '11', '27/2/2005', 'sdsadsadsad', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `task` text DEFAULT NULL,
  `date_of_task` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `school_id`, `group_id`, `subject`, `task`, `date_of_task`) VALUES
(1, 22, 7, 'Hóa', 'Làm Bài Tập Trong Đề Cương Trang Số 15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `number` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `school_id`, `username`, `password`, `name`, `subject`, `number`, `email`, `address`, `date_of_register`) VALUES
(3, 16, 'abdallahyassein', '$2y$10$xJr5DjvQDtJ5kRdjA6jMouvc9qYTWdfR.ycOnJe56iWX3iOw3lmjO', 'Abdallah Yassein', 'Science', '0101212448789', 'abdallaasdsad@yahoo.com', 'Egypt, Dakahlia', '2019-11-13 18:24:46'),
(5, 22, 'hoanghai', '$2y$10$tzsjyzEijwdEhr6kiLlxjuzd.EuqU5xX4y2rsc7n0IPCR24HC96LW', 'Lê Hoàng Hải', 'Hóa', '5189847945', 'sdasdasd@áhdihasidas', 'sdwdqwdqwdw', '2022-06-01 19:30:28'),
(6, 22, 'phungHuy', '$2y$10$hr6QiSCQKx9Y1nk5LRu6zuIlL.yqNtpJaihDgEKhQEnTmsh1ayhpS', 'Dương Phùng Huy', 'Toán', '15198446', 'sdasđqưdq', 'ádasdsd', '2022-06-02 06:52:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `children_feedback`
--
ALTER TABLE `children_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `complants`
--
ALTER TABLE `complants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `control_groups`
--
ALTER TABLE `control_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING HASH,
  ADD KEY `school_id` (`school_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `people_emergency`
--
ALTER TABLE `people_emergency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING HASH;

--
-- Indexes for table `sibiling`
--
ALTER TABLE `sibiling`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING HASH,
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING HASH,
  ADD KEY `school_id` (`school_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `children_feedback`
--
ALTER TABLE `children_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `complants`
--
ALTER TABLE `complants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `control_groups`
--
ALTER TABLE `control_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `people_emergency`
--
ALTER TABLE `people_emergency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sibiling`
--
ALTER TABLE `sibiling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `activities_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `children_feedback`
--
ALTER TABLE `children_feedback`
  ADD CONSTRAINT `children_feedback_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `children_feedback_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `complants`
--
ALTER TABLE `complants`
  ADD CONSTRAINT `complants_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `control_groups`
--
ALTER TABLE `control_groups`
  ADD CONSTRAINT `control_groups_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `control_groups_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `control_groups_ibfk_4` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `fees_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `groups_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `medication`
--
ALTER TABLE `medication`
  ADD CONSTRAINT `medication_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `medication_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `parents`
--
ALTER TABLE `parents`
  ADD CONSTRAINT `parents_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `parents_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `people_emergency`
--
ALTER TABLE `people_emergency`
  ADD CONSTRAINT `people_emergency_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `people_emergency_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `sibiling`
--
ALTER TABLE `sibiling`
  ADD CONSTRAINT `sibiling_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `sibiling_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staffs`
--
ALTER TABLE `staffs`
  ADD CONSTRAINT `staffs_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
