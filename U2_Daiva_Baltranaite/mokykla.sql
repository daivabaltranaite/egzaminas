-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 22, 2021 at 12:26 PM
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
-- Table structure for table `Autoriai`
--

CREATE TABLE `Autoriai` (
  `id` int(11) NOT NULL,
  `vardas` varchar(100) NOT NULL,
  `pavarde` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Autoriai`
--

INSERT INTO `Autoriai` (`id`, `vardas`, `pavarde`) VALUES
(1, 'Antanas', 'Antanaitis'),
(2, 'Laima', 'Laimutė'),
(3, 'Rimas', 'Rimaitis'),
(4, 'Marytė', 'Martytaitė');

-- --------------------------------------------------------

--
-- Table structure for table `Komentarai`
--

CREATE TABLE `Komentarai` (
  `id` int(11) NOT NULL,
  `komentaras` varchar(1000) NOT NULL,
  `slapyvardis` varchar(200) NOT NULL,
  `kursas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Komentarai`
--

INSERT INTO `Komentarai` (`id`, `komentaras`, `slapyvardis`, `kursas`) VALUES
(1, 'Puikus dėstytojas', 'mokinys', 1),
(2, 'Labai puiki dėstytoja', 'mokinys', 2),
(3, 'Labai svarbus dalykas', 'mokinys', 4),
(4, 'Labai svarbus dalykas', 'mokinys', 4),
(5, 'Labai svarbus dalykas', 'mokinys', 4),
(6, 'Labai svarbus dalykas', 'mokinys', 4),
(7, 'Labai svarbus dalykas', 'mokinys', 4),
(8, 'Labai patiko dėstoma medžiaga', 'mokinys999', 5),
(9, 'Rekomenduoju', 'LaimingasMokinys', 3),
(10, 'Rekomenduoju', 'mokinys', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Kursai`
--

CREATE TABLE `Kursai` (
  `id` int(11) NOT NULL,
  `autorius` int(11) NOT NULL,
  `data` date NOT NULL DEFAULT current_timestamp(),
  `pavadinimas` varchar(50) NOT NULL,
  `aprasymas` varchar(200) NOT NULL,
  `aprasas` varchar(1000) NOT NULL,
  `nuotrauka` varchar(1000) DEFAULT NULL,
  `populiarumas` int(11) DEFAULT NULL,
  `kaina` double DEFAULT NULL,
  `reitingas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Kursai`
--

INSERT INTO `Kursai` (`id`, `autorius`, `data`, `pavadinimas`, `aprasymas`, `aprasas`, `nuotrauka`, `populiarumas`, `kaina`, `reitingas`) VALUES
(1, 1, '2021-06-22', 'PHP pagrindai', 'Įvadas į PHP', 'Kurso metu mokysimės dirbti su PHP programavimo kalba', 'images/php.jpg', 10, 200, 5),
(2, 2, '2021-06-22', 'JavaScript', 'Įvadas į JavaScript programavimo kalbą.', 'Kurso metu mokysimės tinklapių kūrimo pagrindų.', 'images/js.jpg', 5, 200, 5),
(3, 3, '2021-06-22', 'HTML/CSS Įvadas', 'Įvadas į HTML/CSS programavimo kalbas.', 'Kurso metu mokysimės tinklapių kūrimo pagrindų.', 'images/css.jpg', 5, 200, 4),
(4, 3, '2021-06-22', 'Pažintis su GIT', 'Darbas su GIT.', 'Kurso metu mokysimės dirbti su GIT.', 'images/git.jpg', 5, 100, 5),
(5, 4, '2021-06-22', 'Rankinis/Automatinis testavimas', 'Įvadas į rankinį/automatinį testavimą.', 'Kurso metu mokysimės testuoti rankiniu ir automatiniu būdu..', 'images/test.jpg', 4, 150, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Autoriai`
--
ALTER TABLE `Autoriai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Komentarai`
--
ALTER TABLE `Komentarai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kursas` (`kursas`);

--
-- Indexes for table `Kursai`
--
ALTER TABLE `Kursai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autorius` (`autorius`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Autoriai`
--
ALTER TABLE `Autoriai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Komentarai`
--
ALTER TABLE `Komentarai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Kursai`
--
ALTER TABLE `Kursai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Komentarai`
--
ALTER TABLE `Komentarai`
  ADD CONSTRAINT `Komentarai_ibfk_1` FOREIGN KEY (`kursas`) REFERENCES `Kursai` (`id`);

--
-- Constraints for table `Kursai`
--
ALTER TABLE `Kursai`
  ADD CONSTRAINT `Kursai_ibfk_1` FOREIGN KEY (`autorius`) REFERENCES `Autoriai` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
