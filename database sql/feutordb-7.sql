-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 27, 2024 at 09:47 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feutordb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `username`, `password`) VALUES
(1, 'feuradmin', 'feutor24');

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` int(11) NOT NULL,
  `studentID` int(11) DEFAULT NULL,
  `otp` varchar(6) DEFAULT NULL,
  `otp_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `reviewID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `sessionID` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`reviewID`, `studentID`, `sessionID`, `rating`, `comment`, `timestamp`) VALUES
(3, 16, 100, 5, 'hello world', '2024-10-18 01:54:53'),
(4, 16, 111, 5, 'goods naaman', '2024-10-19 22:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `sessionID` int(11) NOT NULL,
  `tutorID` int(11) DEFAULT NULL,
  `studentID` int(11) DEFAULT NULL,
  `sessionDate` date DEFAULT NULL,
  `startTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  `duration` decimal(5,2) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `teachingMode` varchar(50) DEFAULT NULL,
  `need` text DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `paymentStatus` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`sessionID`, `tutorID`, `studentID`, `sessionDate`, `startTime`, `endTime`, `duration`, `subject`, `teachingMode`, `need`, `status`, `paymentStatus`, `created_at`) VALUES
(100, 11, 16, '2024-10-04', '01:00:00', '00:00:03', '2.00', 'Programming', 'Online', 'I need help grasping the basics, like variables, loops, and functions. Sometimes, I feel lost when trying to connect concepts, and I want someone who can break them down for me in a way that makes sense.', 'Finished', 'Paid', '2024-10-06 10:05:21'),
(101, 11, 16, '2024-10-09', '01:00:00', '00:00:03', '2.00', 'Programming', 'Online', 'I often get stuck on errors that I can’t figure out how to fix, and it slows down my progress. I want to learn how to debug my code more efficiently and understand common programming mistakes.', 'Cancelled', NULL, '2024-10-06 10:24:16'),
(107, 11, 16, '2024-10-02', '02:00:00', '00:00:06', '4.00', 'Programming', 'Online', 'I know how to write basic code, but I want to learn the best practices, like writing clean and maintainable code. I’ve read about things like “code readability” and “modular design,” but I’m not sure how to implement them properly.', 'Pending', NULL, '2024-10-08 04:18:58'),
(109, 11, 16, '2024-10-24', '12:24:00', '00:00:17', '5.00', 'Programming', NULL, 'I’m currently learning Python/JavaScript/C++ (or any language), and I find it challenging to understand some of the advanced features like object-oriented programming, asynchronous programming, or recursion. I need guidance to master the language and apply it effectively.\r\n\r\n', 'Approved', '', '2024-10-08 04:21:27'),
(110, 11, 16, '2024-11-27', '19:07:00', '00:00:23', '4.00', 'Programming', 'Online', 'I know algorithms and data structures are essential in programming, but I struggle with understanding when and how to use them. I want help learning how to approach problems with the right algorithms and how data structures like arrays, stacks, and trees work.', 'Finished', 'Paid', '2024-10-18 08:07:26'),
(111, 11, 16, '2024-10-30', '21:10:00', '00:00:23', '2.00', 'Programming', 'Online', 'I’m working on a personal or school project, and I want support in designing, planning, and coding it. I often get overwhelmed by where to start or how to structure my code when working on larger projects.', 'Finished', 'Paid', '2024-10-18 08:10:45'),
(112, 12, 16, '2024-10-16', '01:00:00', '00:00:03', '2.00', 'Mathematics', 'School', 'Need: Assistance with Algebraic Equations\r\nThe student requires help with solving algebraic equations, particularly in understanding how to isolate variables and apply various algebraic methods (e.g., substitution, elimination) in both linear and quadratic equations. They struggle with interpreting word problems and translating them into equations, so they need guidance in improving problem-solving strategies and enhancing their confidence in this area.', 'Approved', NULL, '2024-10-20 08:19:35'),
(117, 11, 16, '2024-11-20', '01:28:00', '00:00:08', '7.00', 'Programming', 'School', 'kokok', 'Pending', NULL, '2024-10-22 17:28:41'),
(119, 11, 16, '2024-12-25', '01:32:00', '00:00:02', '1.00', 'Programming', NULL, 'dsds', 'Pending', NULL, '2024-10-22 17:32:46'),
(121, 11, 16, '2024-10-31', '02:00:00', '00:00:03', '1.70', 'Programming', NULL, 'kk', 'Waiting for Payment', NULL, '2024-10-22 17:42:21'),
(123, 11, 16, '2025-01-30', '02:00:00', '00:00:04', '2.80', 'Programming', NULL, 'kk', 'Waiting for Payment', NULL, '2024-10-22 17:47:34'),
(124, 11, 16, '2024-11-14', '02:49:00', '00:00:03', '1.00', 'Programming', NULL, 'koko', 'Cancelled', NULL, '2024-10-22 17:49:52'),
(125, 11, 16, '2024-11-28', '16:13:00', '00:00:19', '3.00', 'Programming', NULL, 'kkk', 'Pending', NULL, '2024-10-26 08:10:22'),
(126, 11, 16, '2024-10-17', '16:43:00', '00:00:20', '4.00', 'Programming', NULL, 'dddss', 'Pending', NULL, '2024-10-27 08:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `degreeProgram` varchar(225) NOT NULL,
  `year` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `otp` varchar(6) DEFAULT NULL,
  `otp_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `firstname`, `lastname`, `degreeProgram`, `year`, `email`, `password`, `created_at`, `otp`, `otp_expiry`) VALUES
(2, 'kendall', 'jenner', '', '', 'kendalljenner@gmail.com', '$2y$10$qCHTE2o0qWrPsSn5nOmj3uU/VPqZTvwmIB9eWsjAQJdXZuFzvtsVm', '2024-02-27 16:37:24', NULL, NULL),
(3, 'Laylani', 'Pula', 'BS in Business Administration', '2nd Year', 'lhyred@gmail.com', '$2y$10$X0QCm6byZnYe0ne2kfc1SeSGFhhjGQ1DTOmrrcanUCXZZ23BA9r9K', '2024-02-27 16:54:16', NULL, NULL),
(4, 'leng', 'leng', '', '', 'leng@gmail.com', '$2y$10$.j5E0Tb7bMqsXotdV3eCkOg.DjPohsDV02lEIsFeOovEoUssh29dm', '2024-03-06 13:56:02', NULL, NULL),
(5, 'Ethan', 'Billones', 'BS in Information Technology', '2nd Year', 'ethan@gmail.com', '$2y$10$.iqbPHYY.PxxA59TlhidsecBkyleC.ZQz456Q4KM.JGYpXfM7Bnc.', '2024-03-10 02:29:40', NULL, NULL),
(6, 'Rebecca', 'Strauss', 'BSIT', '1', 'rebeccastrauss@gmail.com', '$2y$10$bs2xqDfe99oqaT7FbOtjxObr5n3DHQgR4ImE4liXsZMXfAa8IkoNe', '2024-03-12 22:29:51', NULL, NULL),
(7, 'Trevor', 'Tutaan', 'BSIT', '2nd Year', 'trevor@gmail.com', '$2y$10$qykD/bm3swvmzgC6r3SbauPt0a0t6l5SDFPCPjWPVl3lRCLDwNB6.', '2024-03-21 10:41:43', '463475', '2024-10-22 17:24:04'),
(8, 'Bella', 'Hadid', 'BSIT', '1st Year', 'bella@gmail.com', '$2y$10$MaLBwBF0P5gk1D3lWISDuOozIIMKvPJjQAZD7Ccsv1XoSGil3EBda', '2024-03-21 10:43:45', NULL, NULL),
(9, 'Kris', 'Jenner', 'BS in Information Technology', '1st Year', 'kris@gmail.com', '$2y$10$5nBxHuERjVR4T6nmbZgj8u3gOfZV2k9MxkQXjPLKsmqrSgfxiLJmm', '2024-03-21 10:45:12', NULL, NULL),
(10, 'Harvey', 'del Castillo', 'BS in Information Technology', '3rd Year', 'harvey@gmail.com', '$2y$10$i2yuzEB4y7iMFCro0BsQKeXTw1icEsrr1LJUvG1jmMrQmvcRp29wi', '2024-03-21 13:51:44', NULL, NULL),
(11, 'Kourtney', 'Kardashian ', 'BS n Business Administration', '1st Year', 'kourtney@gmail.com', '$2y$10$ZqPY79EqeSgYZYlhniXwAuLDArzkW29wFOdD24I9apeW3ez1rFhhe', '2024-03-21 14:11:15', NULL, NULL),
(12, 'Gigi', 'Hadid', 'High School', '1st Year', 'gigi@gmail.com', '$2y$10$X598YcqByN0o6YjGdOuMiOZihWbBiCV9EVIqZ24sBqXxLJlQ0Ygri', '2024-03-21 14:38:18', NULL, NULL),
(13, 'tess', 'kars', 'BS n Business Administration', '1st year', 'tess@gmail.com', '$2y$10$tEpqjvxldlrVYHDHjHYeBONNTUHzcJmN6Gg00Dz6KqPELa7my8Rh6', '2024-03-22 14:21:17', NULL, NULL),
(16, 'Tony', 'Keme', 'BS n Business Administration', '1', 'reizsakaryllmartinez1230@gmail.com', '$2y$10$6RYxuTfavl.tSE2GVM8vFOzWPM5Hiu51LQMe5.Vqlxqhw0v18M0py', '2024-09-13 13:05:54', '365567', '2024-10-23 12:29:25'),
(17, 'Reizsa', 'Haha', 'BS n Business Administration', '1', 'r2022022301@feuroosevelt.edu.ph', '$2y$10$PlRGIA5JjjmSPpi8lAcEt.TUUMD.BWEjFnHrh26e1CtVAa3975Xxa', '2024-09-23 20:56:44', '948545', '2024-09-23 14:59:56');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `semester` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_name`, `category`, `semester`) VALUES
(9, 'Programming', 'College', '1st semester'),
(15, 'Mathematics', 'High School', '1st semester'),
(16, 'Physics', 'High School', '2nd semester'),
(17, 'Biology', 'High School', '1st semester'),
(18, 'Chemistry', 'High School', '2nd semester'),
(19, 'History', 'Senior High School', '1st semester'),
(20, 'Geography', 'Senior High School', '2nd semester'),
(21, 'Literature', 'Senior High School', '1st semester'),
(22, 'Economics', 'Senior High School', '2nd semester'),
(23, 'Computer Science', 'College', '1st semester'),
(24, 'Statistics', 'College', '2nd semester'),
(25, 'Java Programming', 'College', '2nd semester');

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `tutorID` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `degreeProgram` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `gdriveLink` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `approvalStatus` enum('Pending','Approved','Declined') NOT NULL DEFAULT 'Pending',
  `created_at` datetime DEFAULT current_timestamp(),
  `profilePicture` varchar(255) DEFAULT NULL,
  `subjectExpertise` varchar(255) DEFAULT NULL,
  `teachingMode` varchar(50) DEFAULT NULL,
  `ratePerHour` decimal(10,0) DEFAULT NULL,
  `bio` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`tutorID`, `firstName`, `lastName`, `email`, `degreeProgram`, `year`, `gdriveLink`, `password`, `approvalStatus`, `created_at`, `profilePicture`, `subjectExpertise`, `teachingMode`, `ratePerHour`, `bio`) VALUES
(8, 'Monica', 'Geller', 'missreirei@gmail.com', 'BSIT', '1', 'https://drive.google.com/drive/u/0/', '$2y$10$zT6kxug9Fpg/OI315Sf4M.IW8moSwSj61MkIEZEO6kcyvHMQkTlcu', 'Declined', '2024-03-02 23:16:40', NULL, NULL, NULL, NULL, NULL),
(9, 'aika', 'men', 'aika@gmail.com', 'High School', '10', 'https://drive.google.com/drive/u/0/', '$2y$10$Kn6uZW259Xws29VJZTqaMezi7fpTsHUsIF/bJSKkwML1H8dOgocH6', 'Declined', '2024-03-02 23:21:22', NULL, NULL, NULL, NULL, NULL),
(10, 'ysa', 'jenner', 'ysajenner@gmail.com', 'Senior High School', 'Grade 9', 'https://drive.google.com/drive/u/0/', '$2y$10$G1OhZ/VUqNUiMsD/f1w5C.buHaN3e4WPo0ZFm0PF.qt2cfhzFQDF.', 'Approved', '2024-03-06 14:01:57', NULL, NULL, NULL, NULL, NULL),
(11, 'Reizsa', 'Cute', 'torofam@gmail.com', 'BS in Business Administration', '1st Year', 'https://drive.google.com/drive/u/0/', '$2y$10$qto/AfzXOtTgXK0eEDJAT.iWzUJe4PelGAL7ugvNXyU.1d7LyZeny', 'Approved', '2024-03-06 14:02:38', 'img/709164d71901f2441b994d4dd6e35f85.png', 'Programming', 'Online & School', '311', 'Bio'),
(12, 'Lucifer', 'Morning Star', 'john.doe@example.com', 'BS in Information Technology', '2nd Year', 'https://drive.google.com/1234567890', '$2y$10$6HZtQp25EQFdzR9xwrMOS.Cs59AJ.G2r9.pRjbYlfuhFnmHqSzE0q', 'Approved', '2024-03-06 22:02:43', 'img/1_D6YSoRx6GUPSpP4gDBtXwA.jpeg', 'Mathematics, Physics', 'Online & School', '25', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pulvinar lorem nunc, euismod interdum mi sodales vel. Vivamus vitae sodales libero. Duis in urna eros. Donec sed leo non neque ullamcorper bibendum. Nam id vehicula ipsum. Sed non ligula commodo, tempus ipsum eu, dapibus nisi. Duis at mauris mauris. Pellentesque vel lectus vitae mi ullamcorper vestibulum vel eu lorem. Ut quis eros at tellus viverra fermentum. Sed ut diam at tortor ultrices vestibulum vel et lectus. Integer id eros auctor, finibus quam in, commodo diam. Nam non nulla magna. Morbi ultricies enim sit amet ante interdum, non eleifend nibh elementum. Nullam quis tellus non nulla vehicula egestas eu sed magna.'),
(13, 'Jamie', 'Dornan', 'jane.smith@example.com', 'High School', '12th Grade', 'https://drive.google.com/0987654321', '$2y$10$4AqFT64Yqo1BWVXpSXXfxuuRts4k3CEYmc9.Nj8I1rdHkFwhwAWAa', 'Approved', '2024-03-06 22:10:55', 'img/chris.png', 'Biology, Chemistry', 'School', '20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pulvinar lorem nunc, euismod interdum mi sodales vel. Vivamus vitae sodales libero. Duis in urna eros. Donec sed leo non neque ullamcorper bibendum. Nam id vehicula ipsum. Sed non ligula commodo, tempus ipsum eu, dapibus nisi. Duis at mauris mauris. Pellentesque vel lectus vitae mi ullamcorper vestibulum vel eu lorem. Ut quis eros at tellus viverra fermentum. Sed ut diam at tortor ultrices vestibulum vel et lectus. Integer id eros auctor, finibus quam in, commodo diam. Nam non nulla magna. Morbi ultricies enim sit amet ante interdum, non eleifend nibh elementum. Nullam quis tellus non nulla vehicula egestas eu sed magna.'),
(14, 'Chris', 'Evans', 'michael.johnson@example.com', 'Senior High School', '11th Grade', 'https://drive.google.com/5678901234', '$2y$10$j2nyVbFKg7jsNlYapvFSi.4wz0tDl9JnGxhj2RLyRbD6YMQhZfdT2', 'Approved', '2024-03-06 22:10:55', 'img/jamie.png', 'History, Geography', 'Online', '23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pulvinar lorem nunc, euismod interdum mi sodales vel. Vivamus vitae sodales libero. Duis in urna eros. Donec sed leo non neque ullamcorper bibendum. Nam id vehicula ipsum. Sed non ligula commodo, tempus ipsum eu, dapibus nisi. Duis at mauris mauris. Pellentesque vel lectus vitae mi ullamcorper vestibulum vel eu lorem. Ut quis eros at tellus viverra fermentum. Sed ut diam at tortor ultrices vestibulum vel et lectus. Integer id eros auctor, finibus quam in, commodo diam. Nam non nulla magna. Morbi ultricies enim sit amet ante interdum, non eleifend nibh elementum. Nullam quis tellus non nulla vehicula egestas eu sed magna.'),
(15, 'Chloe', 'Decker', 'emily.williams@example.com', 'BS in Business Administration', '3rd Year', 'https://drive.google.com/3456789012', '$2y$10$2o1C9G1McQ/yyekgkf48ceJ2yzWVjN7oZyKicJdI4YjBKKzG9dS9K', 'Approved', '2024-03-06 22:10:55', 'img/chloe.png', 'Literature, Economics', 'Online', '18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pulvinar lorem nunc, euismod interdum mi sodales vel. Vivamus vitae sodales libero. Duis in urna eros. Donec sed leo non neque ullamcorper bibendum. Nam id vehicula ipsum. Sed non ligula commodo, tempus ipsum eu, dapibus nisi. Duis at mauris mauris. Pellentesque vel lectus vitae mi ullamcorper vestibulum vel eu lorem. Ut quis eros at tellus viverra fermentum. Sed ut diam at tortor ultrices vestibulum vel et lectus. Integer id eros auctor, finibus quam in, commodo diam. Nam non nulla magna. Morbi ultricies enim sit amet ante interdum, non eleifend nibh elementum. Nullam quis tellus non nulla veh.'),
(16, 'Harvey', 'del Castillo', 'harvey@gmail.com', 'BS in Information Technology', '3rd Year', 'https://drive.google.com/drive/u/0/', '$2y$10$4c/yh6l.YAhcFCMAW6Wx5eihXOY2a9wVqr5zhv57mXXVUWq897csi', 'Approved', '2024-03-21 10:59:36', NULL, '9', NULL, NULL, NULL),
(17, 'ysa', 'jenner', 'jenner@gmail.com', 'BS in Business Administration', '1st Year', 'https://drive.google.com/drive/u/0/', '$2y$10$piRrghT3SwUf1KycwAs5Du9aVwPTzFzam7OR20vEVkWyVb2k.al8W', 'Approved', '2024-03-22 14:31:33', NULL, 'Physics,Biology', NULL, NULL, NULL),
(18, 'cath', 'dava', 'cath@gmail.com', 'BS in Information Technology', '1st Year', 'https://drive.google.com/drive/u/0/', '$2y$10$UxKrZ0tTI9QkUZtLUejwYOXlR/ecLS851YUuJgpFBr1RnKXmCkRpi', 'Approved', '2024-04-08 15:15:34', 'img/e8a53bca8019b3a55c26f0c72c762cb1.png', 'Programming,Physics', 'Online & School', '200', 'With over 5 years of tutoring experience and a Bachelor\'s degree in Mathematics from XYZ University, I have a passion for numbers and a knack for breaking down complex mathematical concepts into bite-sized, digestible pieces. eme\r\n'),
(19, 'paul', 'cute', 'paul@gmail.com', 'BS in Information Technology', '1', 'https://drive.google.com/drive/u/0/', '$2y$10$LYlFcukGBMOm9uZLi..piuRbbRBuUVxBZ5juOkdTnOCvKkvaoLJSG', 'Approved', '2024-09-03 19:42:09', NULL, 'Mathematics,Physics,Biology', NULL, NULL, NULL),
(20, 'Toni', 'fowler', 'trevor@gmail.com', 'High School', '2nd Year', 'sasa', '$2y$10$K1TkxdBfr3lY7Ei76U9eUe5DkNIWC4KJwE/0PLygvL/T.sfZfbYu.', 'Approved', '2024-10-21 04:11:03', '', NULL, 'Online & School', '300', 'ss'),
(21, 'Trevor', 'Tutaan', 'trev@gmail.com', 'BS in Business Administration', '2nd Year', 'https://www.google.com/', '$2y$10$dYb/cmrPAjWj66Wt9TRJ0uBQiXvnOtzpogW.ixxKd67f8ofWil/Q2', 'Approved', '2024-10-22 23:21:56', NULL, NULL, NULL, NULL, NULL),
(28, 'paul', 'sanchez', 'paul@gmail.com', 'High School', '2nd Year', 'https://genius.com/The-cast-of-drag-race-philippines-slay-accla-lyrics', 'paul', 'Pending', '2024-10-26 18:44:07', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tutorAvailability`
--

CREATE TABLE `tutorAvailability` (
  `id` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `day_of_week` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday') NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutorAvailability`
--

INSERT INTO `tutorAvailability` (`id`, `tutor_id`, `day_of_week`, `start_time`, `end_time`) VALUES
(1, 11, 'Wednesday', '01:00:00', '03:00:00'),
(2, 11, 'Thursday', '02:00:00', '05:00:00'),
(3, 12, 'Wednesday', '01:00:00', '05:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_earnings`
--

CREATE TABLE `tutor_earnings` (
  `earningsID` int(11) NOT NULL,
  `tutorID` int(11) DEFAULT NULL,
  `sessionID` int(11) DEFAULT NULL,
  `ratePerHour` decimal(10,2) DEFAULT NULL,
  `duration` decimal(5,2) DEFAULT NULL,
  `totalEarnings` decimal(10,2) GENERATED ALWAYS AS (`ratePerHour` * `duration`) STORED,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `claimedStatus` varchar(20) DEFAULT 'Not Claimed Yet'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutor_earnings`
--

INSERT INTO `tutor_earnings` (`earningsID`, `tutorID`, `sessionID`, `ratePerHour`, `duration`, `created_at`, `claimedStatus`) VALUES
(1, 11, 100, '311.00', '2.00', '2024-10-26 10:06:20', 'Not Claimed Yet'),
(2, 11, 101, '311.00', '2.00', '2024-10-26 10:06:20', 'Not Claimed Yet'),
(3, 11, 107, '311.00', '4.00', '2024-10-26 10:06:20', 'Not Claimed Yet'),
(4, 11, 109, '311.00', '5.00', '2024-10-26 10:06:20', 'Not Claimed Yet'),
(5, 11, 110, '311.00', '4.00', '2024-10-26 10:06:20', 'Not Claimed Yet'),
(6, 11, 111, '311.00', '2.00', '2024-10-26 10:06:20', 'Not Claimed Yet'),
(7, 12, 112, '25.00', '2.00', '2024-10-26 10:06:20', 'Not Claimed Yet'),
(8, 11, 117, '311.00', '7.00', '2024-10-26 10:06:20', 'Not Claimed Yet'),
(9, 11, 119, '311.00', '1.00', '2024-10-26 10:06:20', 'Not Claimed Yet'),
(10, 11, 121, '311.00', '1.70', '2024-10-26 10:06:20', 'Claimed'),
(11, 11, 123, '311.00', '2.80', '2024-10-26 10:06:20', 'Claimed'),
(12, 11, 124, '311.00', '1.00', '2024-10-26 10:06:20', 'Claimed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `studentID` (`studentID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`reviewID`),
  ADD KEY `studentID` (`studentID`),
  ADD KEY `sessionID` (`sessionID`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`sessionID`),
  ADD UNIQUE KEY `unique_student_booking_per_day` (`studentID`,`sessionDate`),
  ADD KEY `fk_tutorID` (`tutorID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`tutorID`);

--
-- Indexes for table `tutorAvailability`
--
ALTER TABLE `tutorAvailability`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tutor_id` (`tutor_id`,`day_of_week`);

--
-- Indexes for table `tutor_earnings`
--
ALTER TABLE `tutor_earnings`
  ADD PRIMARY KEY (`earningsID`),
  ADD KEY `tutorID` (`tutorID`),
  ADD KEY `sessionID` (`sessionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `reviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `sessionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tutor`
--
ALTER TABLE `tutor`
  MODIFY `tutorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tutorAvailability`
--
ALTER TABLE `tutorAvailability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tutor_earnings`
--
ALTER TABLE `tutor_earnings`
  MODIFY `earningsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `otp`
--
ALTER TABLE `otp`
  ADD CONSTRAINT `otp_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`sessionID`) REFERENCES `session` (`sessionID`);

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `fk_tutorID` FOREIGN KEY (`tutorID`) REFERENCES `tutor` (`tutorID`),
  ADD CONSTRAINT `session_ibfk_2` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`);

--
-- Constraints for table `tutorAvailability`
--
ALTER TABLE `tutorAvailability`
  ADD CONSTRAINT `tutoravailability_ibfk_1` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`tutorID`) ON DELETE CASCADE;

--
-- Constraints for table `tutor_earnings`
--
ALTER TABLE `tutor_earnings`
  ADD CONSTRAINT `tutor_earnings_ibfk_1` FOREIGN KEY (`tutorID`) REFERENCES `tutor` (`tutorID`),
  ADD CONSTRAINT `tutor_earnings_ibfk_2` FOREIGN KEY (`sessionID`) REFERENCES `session` (`sessionID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
