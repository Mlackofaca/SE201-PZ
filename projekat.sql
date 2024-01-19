-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2023 at 06:22 PM
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
-- Database: `projekat`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `naziv_albuma` varchar(20) DEFAULT NULL,
  `broj_sati_snimanja` varchar(20) DEFAULT NULL,
  `izvodjac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `naziv_albuma`, `broj_sati_snimanja`, `izvodjac`) VALUES
(1, 'Vila', '10', 1),
(2, 'Hotel Nacional', '15', 2),
(3, 'Amajlija', '20', 5),
(4, 'Nebo', '12', 1),
(5, 'Aleksandra', '18', 5);

-- --------------------------------------------------------

--
-- Table structure for table `humanitarini`
--

CREATE TABLE `humanitarini` (
  `id` int(11) NOT NULL,
  `ustanova` varchar(20) DEFAULT NULL,
  `prihod` double NOT NULL,
  `koncert` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `humanitarini`
--

INSERT INTO `humanitarini` (`id`, `ustanova`, `prihod`, `koncert`) VALUES
(1, 'Crveni krst', 5000, 1),
(2, 'UNICEF', 7000, 2),
(3, 'Dom za nezbrinutu de', 4500, 3),
(4, 'Bolnica sveti Sava', 6000, 4),
(5, 'Caritas', 8000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `izvodjac`
--

CREATE TABLE `izvodjac` (
  `id` int(11) NOT NULL,
  `naziv` varchar(20) DEFAULT NULL,
  `kontakt` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `webadresa` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `izvodjac`
--

INSERT INTO `izvodjac` (`id`, `naziv`, `kontakt`, `email`, `webadresa`) VALUES
(1, 'Emina Jahović', '123-456', 'emina@email.com', 'www.eminajahovic.com'),
(2, 'Dino Merlin', '789-012', 'dino@email.com', 'www.dinomerlin.com'),
(3, 'Željko Joksimović', '345-678', 'zeljko@email.com', 'www.zeljkojoksimovic.com'),
(4, 'Nina Badrić', '987-654', 'nina@email.com', 'www.ninabadric.com'),
(5, 'Aleksandra Prijović', '567-890', 'aleksandra@email.com', 'www.aleksandraprijovic.com');

-- --------------------------------------------------------

--
-- Table structure for table `izvodjac_pesma`
--

CREATE TABLE `izvodjac_pesma` (
  `id` int(11) NOT NULL,
  `pesma` int(11) NOT NULL,
  `izvodjac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `izvodjac_pesma`
--

INSERT INTO `izvodjac_pesma` (`id`, `pesma`, `izvodjac`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 2),
(4, 4, 5),
(5, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `komercijalni`
--

CREATE TABLE `komercijalni` (
  `id` int(11) NOT NULL,
  `cena_ulaznice` double NOT NULL,
  `koncert` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `komercijalni`
--

INSERT INTO `komercijalni` (`id`, `cena_ulaznice`, `koncert`) VALUES
(1, 50, 1),
(2, 40, 2),
(3, 60, 3),
(4, 55, 4),
(5, 70, 5);

-- --------------------------------------------------------

--
-- Table structure for table `koncert`
--

CREATE TABLE `koncert` (
  `id` int(11) NOT NULL,
  `naziv` varchar(20) NOT NULL,
  `datum` date NOT NULL,
  `vreme` time NOT NULL,
  `mesto` varchar(30) NOT NULL,
  `izvodjac` int(11) NOT NULL,
  `menadzer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `koncert`
--

INSERT INTO `koncert` (`id`, `naziv`, `datum`, `vreme`, `mesto`, `izvodjac`, `menadzer`) VALUES
(1, 'Koncert Emine Jahovi', '2021-01-15', '20:00:00', 'Kragujevac', 1, 1),
(2, 'Koncert Dine Merlina', '2020-02-20', '19:30:00', 'Zajecar', 2, 2),
(3, 'Koncert Željka Joksi', '2023-03-10', '00:00:00', 'Beograd', 3, 1),
(4, 'Koncert Nine Badrić', '2020-06-05', '00:00:00', 'Nis', 5, 4),
(5, 'Koncert Aleksandre P', '2019-05-20', '00:00:00', 'Zajecar', 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `menadzer`
--

CREATE TABLE `menadzer` (
  `id` int(11) NOT NULL,
  `ime` varchar(20) DEFAULT NULL,
  `prezime` varchar(20) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `menadzer`
--

INSERT INTO `menadzer` (`id`, `ime`, `prezime`, `telefon`) VALUES
(1, 'Marko', 'Marković', '4123125'),
(2, 'Jovan', 'Jovanović', '789-012'),
(3, 'Ana', 'Nikolić', '345-678'),
(4, 'Ivana', 'Marković', '987-654'),
(5, 'Stefan', 'Stefanović', '567-890');

-- --------------------------------------------------------

--
-- Table structure for table `pesma`
--

CREATE TABLE `pesma` (
  `id` int(11) NOT NULL,
  `naziv` varchar(20) DEFAULT NULL,
  `trajanje` time DEFAULT NULL,
  `album` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pesma`
--

INSERT INTO `pesma` (`id`, `naziv`, `trajanje`, `album`) VALUES
(1, 'Posle mene', '03:30:00', 1),
(2, 'Hotel Nacional', '04:15:00', 2),
(3, 'Lane moje', '02:45:00', 3),
(4, 'Carobno jutro', '03:00:00', 4),
(5, 'Koje to vino sad lju', '04:10:00', 5);

-- --------------------------------------------------------

--
-- Stand-in structure for view `pregledkoncerata`
-- (See below for the actual view)
--
CREATE TABLE `pregledkoncerata` (
`naziv_koncerta` varchar(20)
,`datum_koncerta` date
,`naziv_izvodjaca` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `pregledpesama`
-- (See below for the actual view)
--
CREATE TABLE `pregledpesama` (
`pesma_id` int(11)
,`naziv_pesme` varchar(20)
,`naziv_izvodjaca` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `ugovor`
--

CREATE TABLE `ugovor` (
  `id` int(11) NOT NULL,
  `broj_ugovora` int(11) NOT NULL,
  `procenat_prihoda` double NOT NULL,
  `datum_vazenja` date DEFAULT NULL,
  `menadzer` int(11) NOT NULL,
  `izvodjac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ugovor`
--

INSERT INTO `ugovor` (`id`, `broj_ugovora`, `procenat_prihoda`, `datum_vazenja`, `menadzer`, `izvodjac`) VALUES
(1, 123456, 10.5, '2023-01-01', 2, 1),
(2, 789012, 12, '2023-02-01', 2, 2),
(3, 345678, 11.2, '2023-03-01', 3, 3),
(4, 987654, 9.8, '2023-04-01', 5, 4),
(5, 567890, 10, '2023-05-01', 3, 5);

-- --------------------------------------------------------

--
-- Structure for view `pregledkoncerata`
--
DROP TABLE IF EXISTS `pregledkoncerata`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pregledkoncerata`  AS SELECT `koncert`.`naziv` AS `naziv_koncerta`, `koncert`.`datum` AS `datum_koncerta`, `izvodjac`.`naziv` AS `naziv_izvodjaca` FROM (`koncert` left join `izvodjac` on(`koncert`.`izvodjac` = `izvodjac`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `pregledpesama`
--
DROP TABLE IF EXISTS `pregledpesama`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pregledpesama`  AS SELECT `pesma`.`id` AS `pesma_id`, `pesma`.`naziv` AS `naziv_pesme`, `izvodjac`.`naziv` AS `naziv_izvodjaca` FROM ((`pesma` left join `izvodjac_pesma` on(`pesma`.`id` = `izvodjac_pesma`.`pesma`)) left join `izvodjac` on(`izvodjac_pesma`.`izvodjac` = `izvodjac`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `izvodjac` (`izvodjac`);

--
-- Indexes for table `humanitarini`
--
ALTER TABLE `humanitarini`
  ADD PRIMARY KEY (`id`),
  ADD KEY `koncert` (`koncert`);

--
-- Indexes for table `izvodjac`
--
ALTER TABLE `izvodjac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `izvodjac_pesma`
--
ALTER TABLE `izvodjac_pesma`
  ADD PRIMARY KEY (`id`),
  ADD KEY `izvodjac` (`izvodjac`),
  ADD KEY `pesma` (`pesma`);

--
-- Indexes for table `komercijalni`
--
ALTER TABLE `komercijalni`
  ADD PRIMARY KEY (`id`),
  ADD KEY `koncert` (`koncert`);

--
-- Indexes for table `koncert`
--
ALTER TABLE `koncert`
  ADD PRIMARY KEY (`id`),
  ADD KEY `izvodjac` (`izvodjac`),
  ADD KEY `menadzer` (`menadzer`);

--
-- Indexes for table `menadzer`
--
ALTER TABLE `menadzer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesma`
--
ALTER TABLE `pesma`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album` (`album`);

--
-- Indexes for table `ugovor`
--
ALTER TABLE `ugovor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menadzer` (`menadzer`),
  ADD KEY `izvodjac` (`izvodjac`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `koncert`
--
ALTER TABLE `koncert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`izvodjac`) REFERENCES `izvodjac` (`id`);

--
-- Constraints for table `humanitarini`
--
ALTER TABLE `humanitarini`
  ADD CONSTRAINT `humanitarini_ibfk_1` FOREIGN KEY (`koncert`) REFERENCES `koncert` (`id`);

--
-- Constraints for table `izvodjac_pesma`
--
ALTER TABLE `izvodjac_pesma`
  ADD CONSTRAINT `izvodjac_pesma_ibfk_1` FOREIGN KEY (`izvodjac`) REFERENCES `izvodjac` (`id`),
  ADD CONSTRAINT `izvodjac_pesma_ibfk_2` FOREIGN KEY (`pesma`) REFERENCES `pesma` (`id`);

--
-- Constraints for table `komercijalni`
--
ALTER TABLE `komercijalni`
  ADD CONSTRAINT `komercijalni_ibfk_1` FOREIGN KEY (`koncert`) REFERENCES `koncert` (`id`);

--
-- Constraints for table `koncert`
--
ALTER TABLE `koncert`
  ADD CONSTRAINT `koncert_ibfk_1` FOREIGN KEY (`izvodjac`) REFERENCES `izvodjac` (`id`),
  ADD CONSTRAINT `koncert_ibfk_2` FOREIGN KEY (`menadzer`) REFERENCES `menadzer` (`id`);

--
-- Constraints for table `pesma`
--
ALTER TABLE `pesma`
  ADD CONSTRAINT `pesma_ibfk_1` FOREIGN KEY (`album`) REFERENCES `album` (`id`);

--
-- Constraints for table `ugovor`
--
ALTER TABLE `ugovor`
  ADD CONSTRAINT `ugovor_ibfk_1` FOREIGN KEY (`menadzer`) REFERENCES `menadzer` (`id`),
  ADD CONSTRAINT `ugovor_ibfk_2` FOREIGN KEY (`izvodjac`) REFERENCES `izvodjac` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
