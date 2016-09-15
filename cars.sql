-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2016 at 11:28 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cars`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` decimal(9,2) UNSIGNED DEFAULT NULL,
  `car_type` enum('new','used') DEFAULT NULL,
  `make` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `year` int(10) DEFAULT NULL,
  `mileage` int(10) DEFAULT NULL,
  `power` int(10) DEFAULT NULL,
  `top_speed` varchar(10) NOT NULL,
  `emission_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `doors` varchar(255) DEFAULT NULL,
  `fuel` varchar(255) DEFAULT NULL,
  `gearbox` varchar(255) DEFAULT NULL,
  `number_of_seats` varchar(255) DEFAULT NULL,
  `vehicle` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `title`, `price`, `car_type`, `make`, `model`, `year`, `mileage`, `power`, `top_speed`, `emission_class`, `color`, `doors`, `fuel`, `gearbox`, `number_of_seats`, `vehicle`, `photo`) VALUES
(1, 'Bentley Continental', '130000.00', 'new', 'Bentley', 'Continental', 2011, 0, 350, '320', 'EURO 4', 'Silver', '2', 'petrol', 'automatic', '2', 'Sport Car', 'car_1.jpg'),
(2, 'Aston Martin DB9', '99000.00', 'used', 'Aston Martin', 'DB9', 2014, 12000, 320, '290', 'EURO 5', 'Silver', '2', 'petrol', 'manual', '2', 'Sport Car', 'car_2.jpg'),
(3, 'Lamborghini Huracan', '250000.00', 'used', 'Lamborghini', 'Huracan', 2012, 10500, 540, '350', 'EURO 6', 'Yellow', '2', 'petrol', 'automatic', '2', 'Sport Car', 'car_3.jpg'),
(4, 'Volvo S60', '38000.00', 'new', 'Volvo', 'S60', 2008, 0, 130, '220', 'EURO 4', 'Orange', '4/5', 'hybrid', 'automatic', '4+1', 'Family Car', 'car_4.jpg'),
(5, 'BMW 3 Series 335i', '41000.00', 'used', 'BMW', '3', 2008, 9800, 190, '210', 'EURO 5', 'Red', '4/5', 'hybrid', 'manual', '4+1', 'Family Car', 'car_5.jpg'),
(6, 'Mercedes Benz BLS', '124000.00', 'new', 'Mercedes Benz', 'BLS', 2014, 0, 210, '250', 'EURO 6', 'Silver', '4/5', 'petrol', 'automatic', '4+1', 'Luxury', 'car_6.jpg'),
(7, 'Audi RS2', '1500000.00', 'new', 'Audi', 'RS2', 1994, 0, 319, '262', 'EURO 4', 'Red', '4/5', 'Petrol', 'Manual', '4+1', 'Luxury', ''),
(8, 'Toyota Prius', '65000.00', 'new', 'Toyota', 'Prius', 2004, 0, 72, '160', 'EURO 2', 'Black', '5', 'petrol', 'variable transmission', '4/5', 'hatchback', NULL),
(9, 'Vauxhall Ampera', '3200000.00', 'new', 'Opel', 'Ampera', 2011, 0, 111, '161', 'EURO 5', 'Red', '5', 'Hybrid', 'Automatic', '5', 'Electric', NULL),
(10, 'Bugatti Veyron', '9200000.00', 'new', 'Volkswagen', 'Veyron', 2005, 0, 883, '408', 'EURO 5', 'BLACK', '2', 'Gasoline', 'Automatic', '2', 'sports', NULL),
(11, 'Rolls Royce Phantom', '100000.00', 'new', 'Rolls-Royce', 'Phantom', 2003, 0, 453, '230', 'EURO 5', 'Silver', '4', 'Gasoline', '8-spd automatic', '5', 'Luxury', NULL),
(12, 'Ferrari 458', '200000.00', 'new', 'Ferrari', '458', 2009, 0, 570, '325', 'EURO 5', 'yellow', '2', 'gasoline', '7 spd-automatic', '2', 'sports', NULL),
(13, 'Lancia Delta Integrale Evo III', '274000.00', 'new', 'Lancia', 'Delta Integrale Evo III', 1993, 0, 215, '220', 'EURO 3', 'Black', '5', 'petrol', '5 speed manual', '4/5', 'hatchback', NULL),
(14, 'Porsche Boxster', '2300000.00', 'new', 'Porsche', 'Boxster', 1996, 0, 204, '245', 'EURO 5', 'Yellow', '2', 'petrol', '5 spd Manual', '2', 'convertible', NULL),
(15, 'Mini Cooper', '130000.00', 'new', 'Mini', 'Mini Cooper', 2001, 0, 116, '201', 'EURO 6', 'yellow', '3', 'petrol', '5 spd Manual', '4/5', 'hatchback', NULL),
(16, 'Nissan GT-R', '340000.00', 'new', 'Nissan', 'GT-R', 2008, 0, 485, '310', 'EURO 4', 'Silver', '2', 'Petrol', '6 spd Automatic', '4', 'fixed-head coupé', NULL),
(17, 'Ford Fiesta ST', '650000.00', 'new', 'Ford', 'Fiesta ST', 2012, 0, 200, '210', 'euro 5', 'Red', '5', 'Petrol', '6 spd Manual', '4/5', 'hatchback', NULL),
(18, 'Mitsubishi Evo VI Makinen', '45000.00', 'new', 'Mitsubishi', 'Evo VI Makinen', 2000, 765, 280, '250', 'EURO 6', 'Greay', '4', 'Petrol', '5 speed manual', '4/5', 'sedan/saloon', NULL),
(19, 'Pagani Zonda', '1900000.00', 'new', 'Pagani', 'Zonda', 1999, 456, 394, '297', 'EURO 9', 'Black', '2', 'Gasoline', '6-Speed Manual ', '2', 'Sports', NULL),
(20, 'Dacia Duster', '24000.00', 'new', 'Dacia', 'Duster', 2010, 0, 109, '168', 'EURO 1', 'Brown', '5', 'diesel', '6 speed manual', '4/5', 'suv/sports', NULL),
(21, 'Land Rover Range Rover Sport 3.0 TDV6 ', '344000.00', 'new', 'Land Rover', '3.0 TDV6 ', 2012, 334, 256, '200', 'EURO 7', 'Silver', '5', 'Diesel', '8 speed automatic', '4/5', 'off-road vehicle', ''),
(22, 'Lamborghini Murcielago LP-670SV', '635000.00', 'new', 'Lamborghini', 'Murcielago LP-670SV', 2009, 0, 670, '337', 'EURO 3', 'Red', '2', 'petrol', '6 speed automatic', '2', 'fixed-head coupé', NULL),
(23, 'Honda S2000', '5678000.00', 'new', 'Honda', 'S2000', 1999, 0, 243, '241', 'EURO 7', 'Red', '2', 'petrol', '6 speed manual', '2', 'convertible/cabriolet', NULL),
(24, 'Toyota Hilux', '6100000.00', 'new', 'Toyota', 'Hilux', 1997, 0, 95, '143', 'EURO 9', 'Silver', '4', 'petrol', '5 speed manual', '4/5', 'delivery vehicle', ''),
(25, 'Audi A2', '1200000.00', 'new', 'Audi', 'A2', 1999, 42, 61, '168', 'EURO 3', 'Red', '5', 'diesel', '5 speed manual', '4/5', 'hatchback', NULL),
(26, 'Audi TT', '134000.00', 'new', 'Audi', 'TT', 1998, 0, 560, '319', 'EURO 5', 'RED', '2', 'petrol', '6 speed automatic', '2', 'fixed-head coupé', NULL),
(27, 'Mercedes-Benz S-Class', '200000.00', 'new', 'Mercedes', 'S-Class', 2005, 0, 235, '250', 'EURO 8', 'Silver', '4', 'diesel', '7 speed automatic', '4/5', 'sedan/saloon', NULL),
(28, 'McLaren 12C Spider', '45600.00', 'new', 'McLaren', '12C Spider', 2012, 0, 625, '328', 'EURO 2', 'Red', '2', 'Petrol', '7 speed sequential manual', '2', 'convertible/cabriolet', NULL),
(29, 'Fiat 500', '25400.00', 'used', 'Fiat', '500', 2007, 67, 69, '160', 'EURO 4', 'Yellow', '3', 'Petrol', '5 speed manual', '4', 'hatchback', NULL),
(30, 'Land Rover Discovery', '234000.00', 'new', 'Land Rover', 'Discovery', 2004, 42, 191, '180', 'EURO 5', 'Silver', '5', 'diesel\r\n', '6 speed manual', '4/5', 'off-road vehicle', ''),
(31, 'Aston Martin V12 Vantage', '34000.00', 'new', 'Aston Martin', 'V12 Vantage', 2009, 0, 570, '305', 'EURO 8', 'Black', '2', 'petrol', '6 speed manual', '2', 'fixed-head coupé', NULL),
(32, 'Ferrari Enzo', '30000.00', 'new', 'Ferrari', 'Enzo', 2002, 0, 659, '350', 'EURO 9', 'Red', '2', 'petrol', '6 speed manual', '2', 'fixed-head coupé', NULL),
(33, 'Porsche Carrera GT', '12000.00', 'new', 'Porsche', 'Carrera GT', 2004, 0, 611, '330', 'EURO 3', 'Greay', '2', 'petrol', '6 speed manual', '2', 'roadster', NULL),
(34, 'Lotus Elise', '250000.00', 'new', 'Lotus', 'Elise', 1996, 9, 120, '200', 'EURO 6', 'Red', '2', 'petrol', '5 speed manual', '2', 'convertible/cabriolet', NULL),
(35, 'Toyota GT86', '240000.00', 'new', 'Toyota', 'GT86', 2012, 60, 220, '226', 'EURO 8', 'Red', '2', 'petrol', '6 speed manual', '4', 'fixed-head coupé', NULL),
(36, 'Jaguar F-Type V6S', '250000.00', 'new', 'Jaguar ', 'F-Type V6S', 2013, 20, 340, '260', 'EURO 7', 'Silver', '2', 'petrol', '8 speed automatic', '2', 'fixed-head coupé', NULL),
(37, 'Alfa Romeo 8C Spider', '234000.00', 'new', 'Alfa Romeo', '8C Spider', 2009, 0, 450, '293', 'EURO 1', 'Silver', '2', 'petrol', '6 speed manual', '2', 'fixed-head coupé', NULL),
(38, 'Mazda MX-5', '230000.00', 'new', 'Mazda', 'MX-5', 2005, 0, 160, '209', 'EURO 12', 'Black', '2', 'petrol', '6 speed manual', '2', 'convertible/cabriolet', NULL),
(39, 'Fiat Multipla', '2126000.00', 'new', 'Fiat', 'Multipla', 1998, 0, 105, '170', 'EURO 6', 'Black', '5', 'diesel', '5 speed manual', '5/6', 'multi-purpose vehicle', NULL),
(40, 'Lamborghini Gallardo', '9900099.00', 'new', 'Lamborghini', 'Gallardo', 2003, 0, 500, '309', 'EURO 8', 'Yellow', '2', 'petrol', '6 speed manual', '2', 'fixed-head coupé', NULL),
(41, 'BMW X5', '139999.00', 'new', 'BMW', 'X5', 1999, 0, 286, '207', 'EURO 5', 'Black', '5', 'petrol', '5 speed automatic', '4/5', 'off-road vehicle', NULL),
(42, 'Ferrari FF', '93800.00', 'new', 'Ferrari', 'FF', 2011, 0, 660, '335', 'EURO 3', 'Black', '2', 'petrol', '7 speed automatic', '4', 'fixed-head coupé', NULL),
(43, 'Ford GT', '2993000.00', 'new', 'Ford', 'GT', 2004, 0, 558, '330', 'EURO 4', 'Silver', '2', 'petrol', '6 speed manual', '2', 'fixed-head coupé', NULL),
(44, 'Ferrari 550', '9897000.00', 'new', 'Ferrari', '550', 1996, 0, 492, '320', 'EURO 6', 'Black', '2', 'Petrol', '6 speed manual', '2', 'fixed-head coupé', NULL),
(45, 'Ford Focus', '240000.00', 'new', 'Ford', 'Focus', 1998, 0, 101, '185', 'EURO 3', 'Silver', '5', 'petrol', '5 speed manual', '4/5', 'hatchback', NULL),
(46, 'VW Golf GTI', '666000.00', 'new', 'Volkswagen', 'Golf GTI', 2005, 0, 200, '235', 'EURO 6', 'Red', '3', 'petrol', '6 speed manual', '4/5', 'hatchback', NULL),
(47, 'BMW 320d', '90004.00', 'new', 'BMW', '320d', 1999, 0, 136, '207', 'EURO 3', 'Black', '5', 'diesel', '5 speed manual', '4/5', 'estate/station wagon', NULL),
(48, 'Porsche 911 993', '120000.00', 'new', 'Porsche', '911 993', 1993, 0, 101, '185', 'EURO 5', 'Greay', '5', 'petrol', '5 speed manual', '4/5', 'hatchback', NULL),
(49, 'Renault Clio Williams', '760000.00', 'new', 'Renault', 'Clio Williams', 1993, 0, 147, '215', 'EURO 3', 'Black', '3', 'petrol', '5 speed manual', '4/5', 'hatchback', NULL),
(50, 'Lexus LFA', '1233000.00', 'new', 'Lexus', 'LFA', 2010, 0, 560, '325', 'EURO 1', 'Black', '2', 'petrol', '6 speed automatic', '2', 'fixed-head coupé', NULL),
(51, 'Subaru Impreza P1', '20000.00', 'new', 'Subaru', 'Impreza P1', 1999, 0, 280, '250', 'EURO 1', 'Blue', '2', 'petrol', '5 speed manual', '4/5', 'sedan/saloon', NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
