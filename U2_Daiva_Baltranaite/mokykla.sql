-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 22, 2021 at 11:31 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mokykla`
--

-- --------------------------------------------------------

--
-- Table structure for table `Kursai`
--

CREATE TABLE `Kursai` (
  `id` int(11) NOT NULL,
  `autorius` varchar(300) NOT NULL,
  `data` date NOT NULL DEFAULT current_timestamp(),
  `pavadinimas` varchar(50) NOT NULL,
  `aprasymas` varchar(200) NOT NULL,
  `aprasas` varchar(1000) NOT NULL,
  `nuotrauka` varchar(1000) DEFAULT NULL,
  `populiarumas` int(11) DEFAULT NULL,
  `komentarai` int(11) DEFAULT NULL,
  `kaina` double DEFAULT NULL,
  `reitingas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Kursai`
--

INSERT INTO `Kursai` (`id`, `autorius`, `data`, `pavadinimas`, `aprasymas`, `aprasas`, `nuotrauka`, `populiarumas`, `komentarai`, `kaina`, `reitingas`) VALUES
(1, 'Mykolaitis', '2021-06-22', 'PHP pagrindai', 'Įvadas į PHP', 'Kurso metu mokysimės dirbti su PHP programavimo kalba', 'images/php.jpg', 10, 8, 200, 5),
(2, 'Balsytė', '2021-06-22', 'JavaScript', 'Įvadas į JavaScript programavimo kalbą.', 'Kurso metu mokysimės tinklapių kūrimo pagrindų.', 'images/js.jpg', 5, 11, 200, 5),
(3, 'Marytė', '2021-06-22', 'HTML/CSS Įvadas', 'Įvadas į HTML/CSS programavimo kalbas.', 'Kurso metu mokysimės tinklapių kūrimo pagrindų.', 'images/css.jpg', 5, 20, 200, 4),
(4, 'Petriukas', '2021-06-22', 'Pažintis su GIT', 'Darbas su GIT.', 'Kurso metu mokysimės dirbti su GIT.', 'images/git.jpg', 5, 34, 100, 5),
(5, 'Antanas', '2021-06-22', 'Rankinis/Automatinis testavimas', 'Įvadas į rankinį/automatinį testavimą.', 'Kurso metu mokysimės testuoti rankiniu ir automatiniu būdu..', 'images/test.jpg', 4, 12, 150, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Kursai`
--
ALTER TABLE `Kursai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Kursai`
--
ALTER TABLE `Kursai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
