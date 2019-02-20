-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2019 m. Vas 20 d. 19:34
-- Server version: 5.7.25-0ubuntu0.16.04.2
-- PHP Version: 7.0.33-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barber`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `Barbers`
--

CREATE TABLE `Barbers` (
  `id_b` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `Barbers`
--

INSERT INTO `Barbers` (`id_b`, `name`, `password`) VALUES
(1, 'Dalia', 'E00CF25AD42683B3DF678C61F42C6BDA'),
(2, 'Jonas', 'C84258E9C39059A89AB77D846DDAB909'),
(3, 'Rasa', '32CACB2F994F6B42183A1300D9A3E8D6'),
(4, 'Lijana', 'FC1EBC848E31E0A68E868432225E3C82'),
(5, 'Jeronimas', '26A91342190D515231D7238B0C5438E1');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `Clients`
--

CREATE TABLE `Clients` (
  `id_c` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci NOT NULL,
  `lastname` varchar(100) CHARACTER SET utf8 COLLATE utf8_lithuanian_ci NOT NULL,
  `visits_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `Clients`
--

INSERT INTO `Clients` (`id_c`, `name`, `lastname`, `visits_count`) VALUES
(95, 'Marijus', 'Romanovas', 5),
(96, 'Jonas', 'Petraitis', 1),
(97, 'Jonas', 'Jurgis', 1),
(98, 'Jurgita', 'Juratė', 8),
(99, 'Jurgita', 'Matutytė', 1),
(100, 'Jurgitas', 'Matas', 1),
(101, 'Jurginas', 'Beržas', 1),
(102, 'Jurggis', 'Beržas', 1),
(103, 'Jolantas', 'Vasaris', 1),
(104, 'Petras', 'Vasaris', 1),
(105, 'Petraitis', 'Vacius', 1),
(106, 'Beltas', 'Vaicius', 1),
(107, 'Bartis', 'Vaicius', 1),
(108, 'Bartas', 'Vaicius', 1),
(109, 'Nojus', 'Vakaris', 1),
(110, 'Pranas', 'Mašiotas', 1),
(111, 'Pranas', 'Bernotas', 1),
(112, 'Pranas', 'Bukis', 1),
(113, 'Pijus', 'Bukis', 1),
(114, 'Pijus', 'Burtas', 1),
(115, 'Povilas', 'Batutas', 1),
(116, 'Kipras', 'Baltuška', 1),
(117, 'Kipatas', 'Baltuška', 1),
(118, 'Kovas', 'Baltuškaitis', 10),
(119, 'Praimas', 'Baltutis', 1),
(120, 'Jurgis', 'Razma', 1),
(121, 'Jurgis', 'Jovaras', 1),
(122, 'Jurgis', 'Jonaitis', 1),
(123, 'Jurgis', 'JIezmas', 1),
(124, 'Jurgis', 'Lapatinskas', 1),
(125, 'Jurgė', 'Lapatinskė', 1),
(126, 'Petrutė', 'Lapatinskė', 1),
(127, 'Petrutė', 'Lotus', 1),
(128, 'Petrutis', 'Lotuska', 1),
(129, 'Renata', 'Kairė', 1),
(130, 'Renata', 'Dešinė', 1),
(131, 'Laurynas', 'Tututis', 1),
(132, 'Laurynas', 'Mikutis', 1),
(133, 'Laurynas', 'Motaitis', 1),
(134, 'Laurynas', 'Velička', 1),
(135, 'Mečys', 'Velička', 1),
(136, 'Matas', 'Lotis', 1),
(137, 'Matas', 'Liepaitis', 1),
(138, 'Matas', 'Langvinis', 1),
(139, 'Matas', 'Rotis', 1),
(140, 'Rytis', 'Laputis', 1),
(141, 'Rytis', 'Liepts', 1),
(142, 'Marius', 'Maciks', 1),
(143, 'Nerijus', 'Bubutis', 1),
(144, 'Nerijus', 'Balčiūnas', 1),
(145, 'Jurgita', 'VilkutÄ—', 1),
(146, 'Marijus', 'Netukas', 1);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `Reservations`
--

CREATE TABLE `Reservations` (
  `id` int(11) NOT NULL,
  `client_id` int(100) NOT NULL,
  `barber_id` int(11) NOT NULL,
  `visit_date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `Reservations`
--

INSERT INTO `Reservations` (`id`, `client_id`, `barber_id`, `visit_date`, `time`) VALUES
(115, 95, 1, '2019-02-21', '17:30:00'),
(116, 96, 1, '2019-02-21', '16:45:00'),
(117, 97, 4, '2019-02-21', '09:00:00'),
(118, 98, 2, '2019-02-21', '09:15:00'),
(119, 99, 5, '2019-03-21', '10:00:00'),
(120, 100, 4, '2019-03-11', '10:15:00'),
(121, 101, 5, '2019-03-05', '10:15:00'),
(122, 102, 1, '2019-03-05', '09:45:00'),
(123, 103, 3, '2019-03-03', '09:00:00'),
(124, 104, 3, '2019-03-03', '09:45:00'),
(125, 105, 1, '2019-03-03', '10:45:00'),
(126, 106, 3, '2019-03-01', '10:45:00'),
(127, 107, 5, '2019-02-25', '09:00:00'),
(128, 108, 1, '2019-02-25', '09:00:00'),
(129, 109, 4, '2019-02-25', '10:30:00'),
(130, 110, 1, '2019-02-26', '09:00:00'),
(131, 111, 1, '2019-03-01', '09:00:00'),
(132, 112, 4, '2019-03-27', '09:15:00'),
(133, 113, 2, '2019-03-27', '09:15:00'),
(134, 114, 3, '2019-03-27', '09:45:00'),
(135, 115, 2, '2019-03-27', '09:00:00'),
(136, 116, 2, '2019-02-27', '09:15:00'),
(137, 117, 1, '2019-02-27', '09:00:00'),
(138, 118, 2, '2019-02-26', '09:15:00'),
(139, 119, 2, '2019-03-02', '09:00:00'),
(140, 120, 2, '2019-03-02', '09:15:00'),
(141, 121, 2, '2019-03-02', '09:45:00'),
(142, 122, 5, '2019-02-24', '10:15:00'),
(143, 123, 1, '2019-02-24', '09:15:00'),
(144, 124, 4, '2019-02-24', '10:00:00'),
(145, 125, 4, '2019-02-24', '11:30:00'),
(146, 126, 4, '2019-02-21', '10:15:00'),
(147, 127, 4, '2019-02-21', '10:30:00'),
(148, 128, 3, '2019-02-21', '09:45:00'),
(149, 129, 3, '2019-02-20', '10:30:00'),
(150, 130, 4, '2019-02-20', '10:45:00'),
(151, 131, 4, '2019-02-20', '11:30:00'),
(152, 132, 1, '2019-02-28', '09:00:00'),
(153, 133, 4, '2019-02-28', '10:15:00'),
(154, 134, 5, '2019-02-28', '09:00:00'),
(155, 135, 3, '2019-02-28', '10:15:00'),
(156, 136, 2, '2019-02-28', '09:15:00'),
(157, 137, 1, '2019-03-01', '11:45:00'),
(158, 138, 4, '2019-03-01', '09:30:00'),
(159, 139, 2, '2019-03-01', '11:15:00'),
(160, 140, 1, '2019-03-04', '09:15:00'),
(161, 141, 3, '2019-03-04', '09:30:00'),
(162, 142, 3, '2019-03-19', '09:00:00'),
(163, 143, 4, '2019-03-19', '09:30:00'),
(164, 144, 3, '2019-03-28', '09:30:00'),
(165, 145, 4, '2019-03-28', '10:00:00'),
(166, 146, 1, '2019-02-21', '09:15:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Barbers`
--
ALTER TABLE `Barbers`
  ADD PRIMARY KEY (`id_b`),
  ADD KEY `id` (`id_b`);

--
-- Indexes for table `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `Reservations`
--
ALTER TABLE `Reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `barber_id` (`barber_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Barbers`
--
ALTER TABLE `Barbers`
  MODIFY `id_b` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Clients`
--
ALTER TABLE `Clients`
  MODIFY `id_c` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT for table `Reservations`
--
ALTER TABLE `Reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
--
-- Apribojimai eksportuotom lentelėm
--

--
-- Apribojimai lentelei `Reservations`
--
ALTER TABLE `Reservations`
  ADD CONSTRAINT `Reservations_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `Clients` (`id_c`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Reservations_ibfk_2` FOREIGN KEY (`barber_id`) REFERENCES `Barbers` (`id_b`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
