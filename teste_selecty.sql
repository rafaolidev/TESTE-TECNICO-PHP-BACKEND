-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 19, 2022 at 03:39 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teste_selecty`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_education`
--

CREATE TABLE `academic_education` (
  `eduacation_institution` text COLLATE utf8_unicode_ci NOT NULL,
  `code` int(11) NOT NULL,
  `user_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academic_education`
--

INSERT INTO `academic_education` (`eduacation_institution`, `code`, `user_code`) VALUES
('dadasdas', 1, 41);

-- --------------------------------------------------------

--
-- Table structure for table `professional_experiences`
--

CREATE TABLE `professional_experiences` (
  `professional_experience` text COLLATE utf8_unicode_ci NOT NULL,
  `code` int(11) NOT NULL,
  `user_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `professional_experiences`
--

INSERT INTO `professional_experiences` (`professional_experience`, `code`, `user_code`) VALUES
('adadasda', 2, 41);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `code` int(11) NOT NULL,
  `user_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`code`, `user_name`, `name`, `email`, `phone`, `password`) VALUES
(15, '', 'teste', 'testenov@email', '', '$2y$10$TtKRGEgbjGzg/pyzA1UpzernWZIL26iirge/s7jlv3eK1YClWuosu'),
(16, '', 'teste', 'testenov@email', '', '$2y$10$f0qPuM8jy3NF8fOf0fZ50eYEQ2DGSIUP6B60MkmggaK3Ys.brLeM6'),
(17, '', 'teste', 'testenov@email', '', '$2y$10$SJggHAh1wAD.WPAqOdTG/uRhnech1w8oiXwhKmzY9mkJaYMAdvtkm'),
(18, '', 'teste', 'testenov@email', '', '$2y$10$mqXQNKOOIrwDvZPYmtfdVecgRlXOEAav7tI/Zg/H7xBC1grHbTllO'),
(19, 'menino', 'teste', 'testenov@email', '', '$2y$10$ynLXw3H86Ww9TJePJYCem.PFrZWwKpoGbxl.q4JOSUSlwjedcG8jK'),
(23, 'dasdasda', 'adasdas', 'dadasdas', 'dadasda', '$2y$10$Exsh7uDsnGnQhZuPHMfvBuC7ilP81rXlY/LVX/ZtJpigVCodesGcq'),
(24, 'dasdasda', 'adasdas', 'dadasdas', 'dadasda', '$2y$10$.z/Tyczjaqqiu1ORP7bKX.2Kxk8ujuW9DuuaqFrExEHH5eiyzRjWG'),
(25, 'dasdadas', 'adasdas', 'dadssad', 'dadsad', '$2y$10$xkh7wa1vcOJMHy.jO0fIi.JosODAF4.GP/6m1qylPGNMf/c8S2oIW'),
(30, 'dadasda2222', 'adasdad', 'dadasd', 'dadas', '$2y$10$JeYGt1oMwGE8kAsQF2UXEO9RHsJafvbKoZYLxy.w7iKHS9UAQqzXS'),
(31, 'dadasda2222', 'adasdad', 'dadasd', 'dadas', '$2y$10$zIEar/oE.A2AaJ5nmCV3AejS8Aznjd479noT5zRwlB5wZA4BIs.gC'),
(32, 'dadas', 'adasdasd', 'dadsada', 'dadasd', '$2y$10$nqtXA9Ii3IJ.sas4Ng5QWuUcBgMcUnA0K274pRJH9i3fns/4618ci'),
(33, 'dadas', 'adasdasd', 'dadsada', 'dadasd', '$2y$10$nqtXA9Ii3IJ.sas4Ng5QWuUcBgMcUnA0K274pRJH9i3fns/4618ci'),
(34, 'dadasds', 'easdsadas', 'dasdasdas', 'adsasdsda', '$2y$10$ZaN0qQA4RGv/SDWI3SEzlOgX1EEV/0TapxwakcGaBx8YsyWviQUbu'),
(35, 'dadasds', 'easdsadas', 'dasdasdas', 'adsasdsda', '$2y$10$ZaN0qQA4RGv/SDWI3SEzlOgX1EEV/0TapxwakcGaBx8YsyWviQUbu'),
(36, 'dasdasdas', 'qeqweqwe', 'adasdasdas', 'dasdasd', '$2y$10$k.H0npDWisMnRxVeiweYoOLhnwA3Tkz1umeFwf1XIhRSvTx/lX8r2'),
(37, 'dasdasdas', 'qeqweqwe', 'adasdasdas', 'dasdasd', '$2y$10$k.H0npDWisMnRxVeiweYoOLhnwA3Tkz1umeFwf1XIhRSvTx/lX8r2'),
(38, 'dadasdsd', 'dadsadada', 'dadasdasd', 'dadasdas', '$2y$10$LOuwJwSiiyonlMBoz77M2u3hZtedEhcLBpTY8pYQWTpcS5Cd.r1F6'),
(39, 'dadasdsd', 'dadsadada', 'dadasdasd', 'dadasdas', '$2y$10$LOuwJwSiiyonlMBoz77M2u3hZtedEhcLBpTY8pYQWTpcS5Cd.r1F6'),
(40, 'dasdasda', 'asdasdasds', 'dadasdasd', 'dadasdas', '$2y$10$mWCtlHIp/F2g0UbQQo7VnOU6t8QJcKcoNZVimHZ0Cj9SNOATzhwFm'),
(41, 'dasdasda', 'asdasdasds', 'dadasdasd', 'dadasdas', '$2y$10$mWCtlHIp/F2g0UbQQo7VnOU6t8QJcKcoNZVimHZ0Cj9SNOATzhwFm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_education`
--
ALTER TABLE `academic_education`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `professional_experiences`
--
ALTER TABLE `professional_experiences`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_education`
--
ALTER TABLE `academic_education`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `professional_experiences`
--
ALTER TABLE `professional_experiences`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
