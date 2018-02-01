-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 01 feb 2018 om 11:59
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dc-heroes`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `hero`
--

CREATE TABLE `hero` (
  `carId` int(3) NOT NULL,
  `carName` varchar(100) NOT NULL,
  `carDescription` text NOT NULL,
  `carImage` varchar(100) NOT NULL,
  `teamId` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `hero`
--

INSERT INTO `hero` (`carId`, `carName`, `carDescription`, `carImage`, `teamId`) VALUES
(1, 'Porsche Cayenne', 'Vijf deuren die open staan voor elk avontuur. Met een nieuw, dynamisch design en nieuwe efficiente turbomotoren. Met een uitstekend digitaal netwerk waarmee de hele wereld binnen handbereik is. Met veelzijdigheid, kwaliteit en nieuwe toonaangevende hulpsystemen die de bestuurder en de passagiers buitengewoon veel comfort bieden.', './images/porsche_cayenne.jpg', 6),
(2, 'Porsche Macan', 'Wie liever zijn eigen sporen nalaat, hoeft die van anderen niet te volgen. Zo en niet anders denken wij ook over voertuigen in de categorie compacte SUV: 5-deurs, 5 zitplaatsen, vierwielaandrijving en natuurlijk een hoge zitpositie.', './images/porsche_macan.jpg', 6),
(3, 'Porsche Panamera', 'Met het Panamera idee tonen onze ingenieurs lef. Door dingen steeds weer aan te pakken en opnieuw uit te vinden. Door schijnbare tegenstellingen te verbinden: performance en comfort, dynamiek en efficiency, werk en gezin. En daarbij trouw te blijven aan onze roots, bijvoorbeeld met het contactslot links en de toerenteller in het midden kortom, met het typische Porsche DNA. Het resultaat? Uniek. Op de Porsche manier.', './images/porsche_panamera.jpg', 6),
(4, 'Mercedes CLA Coupe', 'De Mercedes-Benz CLA Coupe legt nieuwe maatstaven aan. Comfortabeler en meer \'connected\' dan ooit ongekend krachtig en efficient. De sportieve proporties en dynamische belijning maken van de CLA Coupe een ware blikvanger en leveren een belangrijke bijdrage aan de toonaangevende aerodynamica van het model.\r\n', './images/mercedes_cla_coupe_amg.jpg', 7),
(5, 'Mercedes GLE Coupe', 'Tijdens de spits, tijdens lange nachtritten of op onbekende trajecten uw GLE Coupe zorgt ervoor dat u, vooral in stressvolle situaties, wordt ontlast. Het concept daarachter is Mercedes-Benz Intelligent Drive, waarmee elke rit in een Mercedes-Benz niet alleen veilig is maar ook uniek. De tijd die u namelijk achter het stuurwiel doorbrengt, is uw eigen tijd. Tijd om te ontspannen. Tijd om energie op te doen. Zodat u niet alleen veilig op uw bestemming aankomt, maar ook ontspannen.', './images/mercedes_gle_coupe_amg.jpg', 7),
(6, 'Mercedes GLE SUV', 'Asfalt, terrein, zomer of winter, de GLE beheerst alle disciplines perfect. Vanwege zijn doorzettingsvermogen is hij perfect geschikt om als trekker te worden gebruikt. Zijn onafhankelijkheid is aanstekelijk. U kunt zich alvast verheugen op kleine uitstapjes en grote avonturen en alle momenten daartussen.', './images/mercedes_gle_suv_amg.jpg', 7),
(7, 'Audi Q5', 'Laat niets aan het toeval over. Deze premium SUV weet meteen te overtuigen met zijn comfort, stijl en dynamiek. Het is een karaktervolle verschijning met een krachtige aandrijflijn en toonaangevende technologieen. Dat biedt veel mogelijkheden, elke dag weer. De Audi Q5. Now is calling! Deze SUV zelf ervaren? Maak dan direct een afspraak voor een proefrit en laat u overtuigen.', './images/audi_q5.jpg', 8),
(8, 'Audi Q7', 'De Audi Q7 is het resultaat van een voortdurend streven om het beste te bieden. Deze SUV oogt gespierd zonder zwaar over te komen. Het interieur biedt topklasse comfort. Met de 3.0 TDI-motor en vijfzits configuratie accelereert de Q7 in een indrukwekkende 6,3 seconden van 0 naar 100 km/h.', './images/AUDI_Q7.png', 8),
(9, 'Audi R8', 'De Audi R8 Coupe V10 is een supercar met een eigen gezicht. Hij combineert topprestaties met een strak design en een bouwkwaliteit van topniveau. Bovendien is hij in hoge mate te personaliseren. De 5.2 V10 FSI-motor levert 397 kW/540 pk en 540 Nm en maakt een acceleratie van 0 naar 100 km/h in 3,5 seconden mogelijk. De topsnelheid bedraagt 320 km/h.', './images/audi_r8.jpg', 8),
(10, 'Volkswagen Golf', 'Hatchback onder de hatchbacks. Innovatief, zuinig en sportief.\r\nMet state-of-the-art technologie, gestroomlijnd design en ultiem comfort. De Golf zit vol innovaties en nieuwste technieken die het dagelijks leven vergemakkelijken. Daarbij horen infotainment-, veiligheids- en connectiviteitssystemen.', './images/volkswagen_golf.jpg', 9),
(11, 'Volkswagen Beetle', 'Klassieker met de gemakken van nu. Stijlvol. Eigenzinnig. Legendarisch.\r\nMaak kennis met de kleinzoon van een van de meest iconische autos aller tijden: de Volkswagen Kever. Opgegroeid in de 21ste eeuw, maar minstens zo eigenzinnig als zijn voorgangers.', './images/volkswagen_beetle.jpg', 9),
(12, 'Volkswagen Touareg', 'Stijlvolle, overtuigende SUV. On-road en off-road. De Touareg is een bonk kracht en klasse. On en off road. Stijlvol en overtuigend. Comfortabel en ruig. Speels en serieus. De tegenstellingen maken deze SUV tot wat hij is: woest aantrekkelijk.', './images/volkswagen_touareg.jpg', 9),
(13, 'Jaguar XE', 'De essentie van de XE. Baanbrekende technologie, bestuurdergerichte prestaties, pure Jaguar verfijning.', './images/jaguar_xe.jpg', 10),
(14, 'Jaguar F-PACE', 'Onze luxe performance SUV combineert sportieve handling en prachtig design met praktische functionaliteit en efficiency.', './images/jaguar_fpace.jpg', 10),
(15, 'Jaguar F-TYPE', 'Krachtig, wendbaar en onmiskenbaar onderscheidend. Een echte Jaguar sportauto.', './images/jaguar_ftype.jpg', 10);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rating`
--

CREATE TABLE `rating` (
  `ratingId` int(3) NOT NULL,
  `carId` int(3) NOT NULL,
  `rating` int(3) NOT NULL,
  `ratingDate` int(5) NOT NULL,
  `ratingReview` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `team`
--

CREATE TABLE `team` (
  `teamId` int(3) NOT NULL,
  `teamName` varchar(50) NOT NULL,
  `teamDescription` text NOT NULL,
  `teamImage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `team`
--

INSERT INTO `team` (`teamId`, `teamName`, `teamDescription`, `teamImage`) VALUES
(6, 'Porsche', '', './images/porsche_logo.png'),
(7, 'Mercedes', '', './images/mercedes_logo.png'),
(8, 'Audi', '', './images/audi_logo.png'),
(9, 'Volkswagen', '', './images/volkswagen_logo.png'),
(10, 'Jaguar', '', './images/jaguar_logo.png');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`carId`);

--
-- Indexen voor tabel `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`ratingId`);

--
-- Indexen voor tabel `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `hero`
--
ALTER TABLE `hero`
  MODIFY `carId` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT voor een tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `ratingId` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `team`
--
ALTER TABLE `team`
  MODIFY `teamId` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
