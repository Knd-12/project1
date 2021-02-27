-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 26, 2021 at 04:13 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dynamic_checklist`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `year` int(55) NOT NULL,
  `make` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `year`, `make`, `model`, `nickname`) VALUES
(1, 1999, 'Aston Martin', 'DB7', 'Mary'),
(2, 1962, 'Aston Martin', 'DB1', 'Barbara'),
(3, 1999, 'Bentley', 'Arnage', 'Lindsey'),
(4, 1999, 'Bentley', 'Azure', 'Laura'),
(5, 1964, 'Bentley', 'Continental', 'Alma'),
(6, 1959, 'Cadillac', 'El Dorado', 'Madeline'),
(7, 1958, 'Cadillac', 'El Dorado Brougham', 'Patricia'),
(8, 1999, 'Cadillac', 'Escalade', 'Carol'),
(9, 2000, 'Cadillac', 'El Dorado STS', 'Daniela'),
(10, 1957, 'Chevrolet', 'Bel Air Convertible', 'Stefanie'),
(11, 1969, 'Chevrolet', 'Camaro Z28', 'Erin'),
(12, 1953, 'Chevrolet', 'Corvette', 'Pamela'),
(13, 1967, 'Chevrolet', 'Corvette Stingray Big Block', 'Stacey'),
(14, 2000, 'Ford', 'F350 4x4 modified pick-up', 'Anne'),
(15, 1971, 'DeTomaso', 'Pantera', 'Kate'),
(16, 1969, 'Dodge', 'Daytona', 'Vanessa'),
(17, 1998, 'Dodge', 'Viper Coupe GTS', 'Denise'),
(18, 1995, 'Ferrari', '355 B', 'Diane'),
(19, 1997, 'Ferrari', '355 F1', 'Iris'),
(20, 1967, 'Ferrari', '265 GTB4', 'Nadine'),
(21, 1999, 'Ferrari', '550 Maranello', 'Angelina'),
(22, 1987, 'Ferrari', 'Testarosa', 'Rose'),
(23, 1956, 'Ford', 'T-Bird', 'Susan'),
(24, 2000, 'GMC', 'Yukon', 'Megan'),
(25, 1999, 'HumVee', '2-Door Pickup', 'Tracy'),
(26, 1999, 'Infiniti', 'Q45', 'Rachel'),
(27, 1994, 'Jaguar', 'XJ 220', 'Bernadene'),
(28, 1999, 'Jaguar', 'XK8 Coupe', 'Deborah'),
(29, 1990, 'Lamborghini', 'LM SUV', 'Gina'),
(30, 1999, 'Lexus', 'LS 400', 'Hillary'),
(31, 1999, 'Lincoln', 'Navigator', 'Kimberley'),
(32, 1957, 'Mercedes', 'Benz 300 SL/Gullwing', 'Dorothy'),
(33, 1999, 'Mercedes', 'Benz CL 500', 'Donna'),
(34, 1999, 'Mercedes', 'Benz S 600', 'Samantha'),
(35, 1998, 'Mercedes', 'Benz SL 600', 'Ellen'),
(36, 1950, 'Mercury', 'Custom', 'Gabriela'),
(37, 1971, 'Plymouth', 'Hemi Cuda', 'Shannon'),
(38, 1969, 'Plymouth', 'Roadrunner', 'Jessica'),
(39, 1965, 'Pontiac', 'GTO', 'Sharon'),
(40, 1999, 'Porsche', '996', 'Tina'),
(41, 2000, 'Porsche', 'Boxster', 'Marsha'),
(42, 1961, 'Porsche', 'Speedster', 'Natalie'),
(43, 1988, 'Porsche', '959', 'Virginia'),
(44, 1997, 'Porsche', '911 Twin Turbo', 'Tanya'),
(45, 2000, 'Rolls Royce', 'Stretch Limousine', 'Grace'),
(46, 1966, 'Shelby', 'AC Cobra', 'Ashley'),
(47, 1967, 'Shelby', 'Mustang GT 500', 'Eleanor'),
(48, 2000, 'Toyota', 'Landcruiser', 'Cathy'),
(49, 1998, 'Toyota', 'Supra Turbo', 'Lynn'),
(50, 2000, 'Volvo', 'Turbo Wagon R', 'Lisa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
