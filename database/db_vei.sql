-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 02, 2019 at 09:26 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_vei`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_veiData`
--

CREATE TABLE `tbl_veiData` (
  `ID` int(11) NOT NULL,
  `Image` varchar(30) NOT NULL,
  `NumberIndex` int(10) NOT NULL,
  `Classification` varchar(50) NOT NULL,
  `Volcano` varchar(100) NOT NULL,
  `Tephra` varchar(30) NOT NULL,
  `HowOften` varchar(20) NOT NULL,
  `DeathToll` varchar(100) NOT NULL,
  `OtherDamages` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_veiData`
--

INSERT INTO `tbl_veiData` (`ID`, `Image`, `NumberIndex`, `Classification`, `Volcano`, `Tephra`, `HowOften`, `DeathToll`, `OtherDamages`) VALUES
(1, 'images/0.svg', 0, 'Non-Explosive', 'Kilauea, Hawaii', '1,000s m3', 'Daily', '400+ in 1790', 'Kīlauea erupted nearly continuously from 1983 to 2018, causing considerable property damage, including the destruction of the towns of Kalapana in 1990, and Vacationland Hawaii and Kapoho in 2018.'),
(2, 'images/1.svg', 1, 'Gentle', 'Stromboli, Italy', '10,000s m3', 'Daily', '1 death in July 2019', 'Marco Giorgianni, the mayor of the island\'s principle town, Lipari, said there was little damage to the residential areas of the island and no need for evacuation, but offered assistance to anyone wishing to leave, according to Italian paper La Repubblica.'),
(3, 'images/2.svg', 2, 'Explosive', 'Galeras, Colombia', '1,000,000s m3', 'Weekly', '9 in 1992', 'Several of the scientists mounted an impromptu expedition on January 14, 1992 to the crater of Galeras. An eruption occurred unexpectedly while they were at the summit, resulting in the deaths of six scientists and three tourists. Today, activity at a low level has continued with small explosions occasionally dusting nearby villages and towns with ash. '),
(4, 'images/3.svg', 3, 'Severe', 'Nevada del Ruiz, Colombia', '10,000,000s m3', 'Yearly', '23,000 in 1985', 'In 1985, one of the lahars virtually erased the town of Armero in Tolima, which lay in the Lagunilla River valley. More than 5,000 homes were destroyed. It is also the deadliest known lahar, and Colombia\'s worst natural disaster.'),
(5, 'images/4.svg', 4, 'Cataclysmic', 'Mt. Galunggung, Indonesia', '100,000,000s m3', '10\'s of years', '18 in 1982', 'This eruption also brought the dangers of volcanic ash to aviation to worldwide attention, after two Boeing 747 passenger jets flying downwind of the eruption suffered temporary engine failures and damage to exterior surfaces, both planes being forced to make emergency landings at Jakarta airport.'),
(6, 'images/5.svg', 5, 'Paroxysmal', 'Mt. St. Helens, USA', '1 km3', '100\'s of years', '57 in 1980', 'Its major eruption on May 18, 1980 is the deadliest and most economically destructive volcanic event in U.S. history. Fifty-seven people were killed; 250 homes, 47 bridges, 15 miles (24 km) of railways, and 185 miles (298 km) of highway were destroyed. More than 1.5 million metric tons of sulfur dioxide were released into the atmosphere.'),
(7, 'images/6.svg', 6, 'Colossal', ' Mt. Pinatubo, Philippines', '10s km3', '100\'s of years', '847 in 1991', 'The effects of Mt. Pinatubo’s eruption in 1991 were felt worldwide. Over the following months, the aerosols formed a global layer of sulfuric acid haze. Global temperatures dropped by about 0.5 °C (0.9 °F) and it injected more particulate into the stratosphere than any eruption since Krakatoa in 1883.'),
(8, 'images/7.svg', 7, 'Super-Colossal', 'Mt. Tambora, Indonesia', '100s km3', '1000\'s of years', '71,000+ in 1815', 'The eruption caused global climate anomalies in the following years, while 1816 became known as the \'Year Without a Summer\' due to the impact on North American and European weather. In the Northern Hemisphere, crops failed and livestock died, resulting in the worst famine of the century.'),
(9, 'images/8.svg', 8, 'Mega-Colossal', 'Yellowstone, USA', '1000s km3', '10000\'s of years', 'It will take 10% of today\'s global population', 'Volcanologists believe a Yellowstone supereruption would bury large swaths of Colorado, Wyoming and Utah in up to three feet of toxic volcanic ash. Crops would be destroyed; pastureland would be contaminated. It would be, according to the European Science Foundation, “the greatest catastrophe since the dawn of civilization.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_veiData`
--
ALTER TABLE `tbl_veiData`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_veiData`
--
ALTER TABLE `tbl_veiData`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
