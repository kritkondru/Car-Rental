-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2018 at 06:05 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_info`
--

CREATE TABLE `car_info` (
  `id` int(5) NOT NULL,
  `car_name` varchar(10) NOT NULL,
  `car_mileage` int(3) NOT NULL,
  `car_number` varchar(8) NOT NULL,
  `company_name` varchar(10) NOT NULL,
  `year` int(5) NOT NULL,
  `availability` int(2) NOT NULL,
  `rate` int(10) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_info`
--

INSERT INTO `car_info` (`id`, `car_name`, `car_mileage`, `car_number`, `company_name`, `year`, `availability`, `rate`, `type`) VALUES
(1, 'Patriot', 18, 'NJ5515C1', 'Jeep', 2017, 0, 150, 'SUV'),
(2, 'CRV', 13, 'BX154CE', 'Honda', 2018, 0, 85, 'SUV'),
(3, 'RS3', 17, 'FD5647', 'Audi', 2017, 0, 75, 'Sedan'),
(4, 'M4', 12, 'DF125X5', 'BMW', 2016, 0, 95, 'Convertibl'),
(10, 'CRV', 0, 'BX144CE', '', 2018, 1, 85, 'SUV'),
(11, 'Ciaz', 12, 'AB457VC3', 'Maruti', 2017, 0, 55, 'Sedan'),
(12, 'Ciaz', 12, 'RD15ABX2', 'Maruti', 2017, 0, 55, 'Sedan'),
(13, 'City', 12, 'AB45YVFB', 'Honda', 2018, 1, 50, 'Sedan'),
(14, 'Altima', 21, 'L8M 2V4', 'Seat', 2018, 1, 136, 'Crossover'),
(15, 'passat', 15, 'H7W 5C5', 'GMC', 2014, 0, 142, 'Hatchback'),
(16, 'Clarity', 18, 'R7H 0F3', 'Volkswagen', 2010, 0, 145, 'Sedan'),
(17, 'Corolla', 24, 'E8U 9N5', 'Dacia', 2010, 0, 179, 'Sedan'),
(18, 'passat', 16, 'X7X 5A2', 'Mitsubishi', 2005, 0, 154, 'Hatchback'),
(19, 'Clarity', 19, 'F8P 7P7', 'Ford', 2008, 0, 174, 'SUV'),
(20, 'Elantra', 20, 'A0S 6E3', 'Mitsubishi', 2008, 0, 176, 'Crossover'),
(21, 'Corolla', 18, 'L7M 8Y2', 'Lexus', 2008, 1, 99, 'Hatchback'),
(22, 'Civic', 22, 'E5X 9V2', 'Ferrari', 2008, 0, 116, 'SUV'),
(23, 'sentra', 24, 'O2E 1X5', 'Dacia', 2015, 1, 189, 'Coupe'),
(24, 'accord', 23, 'X0J 6C1', 'General Mo', 2017, 0, 142, 'Coupe'),
(25, 'accord', 23, 'R4P 1C7', 'Chevrolet', 2010, 0, 157, 'Hatchback'),
(26, 'Camry', 22, 'Z8S 0B3', 'Toyota', 2012, 1, 136, 'SUV'),
(27, 'Elantra', 24, 'O5U 9S6', 'Cadillac', 2005, 0, 113, 'SUV'),
(28, 'Altima', 22, 'V9Z 7L4', 'Maruti Suz', 2012, 0, 124, 'Coupe'),
(29, 'accord', 15, 'X0C 1K5', 'Mazda', 2010, 1, 194, 'Crossover'),
(30, 'Cruze', 17, 'H0D 9H9', 'Subaru', 2014, 0, 80, 'Hatchback'),
(31, 'Camry', 24, 'C9A 0I2', 'Cadillac', 2015, 0, 128, 'SUV'),
(32, 'Clarity', 18, 'C5H 8L6', 'Volkswagen', 2016, 0, 136, 'Sedan'),
(33, 'Camry', 21, 'U8R 5Y7', 'Audi', 2013, 0, 88, 'Crossover'),
(34, 'sentra', 21, 'D2T 8V7', 'Tata Motor', 2017, 1, 109, 'Coupe'),
(35, 'sentra', 22, 'E2Z 4Y7', 'Mitsubishi', 2008, 0, 135, 'Coupe'),
(36, 'Elantra', 25, 'H7G 9V3', 'Seat', 2006, 1, 193, 'Hatchback'),
(37, 'Civic', 20, 'E9K 4B5', 'Ferrari', 2010, 1, 102, 'Hatchback'),
(38, 'Cruze', 18, 'S8O 2E3', 'Lexus', 2018, 1, 146, 'Coupe'),
(39, 'Altima', 18, 'N7D 6Z8', 'Lexus', 2015, 0, 177, 'Hatchback'),
(40, 'passat', 24, 'P4C 0L7', 'Mahindra a', 2008, 0, 91, 'SUV'),
(41, 'Malibu', 22, 'Y7C 9F2', 'Mazda', 2011, 1, 196, 'Crossover'),
(42, 'polo', 24, 'O0N 7Z8', 'Renault', 2011, 0, 99, 'SUV'),
(43, 'polo', 23, 'O0F 9X6', 'Acura', 2016, 1, 108, 'Crossover'),
(44, 'sentra', 15, 'U3H 4H9', 'Nissan', 2006, 1, 190, 'SUV'),
(45, 'Altima', 20, 'M9J 4E7', 'Jeep', 2018, 0, 103, 'Coupe'),
(46, 'Elantra', 23, 'G1J 4T4', 'Chevrolet', 2012, 0, 100, 'Coupe'),
(47, 'Clarity', 22, 'X7O 1Q9', 'Citroën', 2009, 0, 191, 'SUV'),
(48, 'Clarity', 19, 'W9E 1S9', 'BMW', 2016, 1, 198, 'SUV'),
(49, 'sentra', 17, 'H9K 9N3', 'Volvo', 2008, 1, 151, 'Hatchback'),
(50, 'Clarity', 25, 'W9P 1V2', 'Mercedes-B', 2008, 1, 144, 'Sedan'),
(51, 'Civic', 18, 'E7B 9E5', 'Ferrari', 2015, 0, 112, 'Hatchback'),
(52, 'Cruze', 20, 'S3X 8I0', 'JLR', 2016, 1, 154, 'Sedan'),
(53, 'Malibu', 24, 'O8O 1X9', 'Volkswagen', 2005, 0, 147, 'Crossover'),
(54, 'Altima', 23, 'U0X 5G8', 'Seat', 2015, 1, 98, 'Crossover'),
(55, 'Malibu', 18, 'O2B 7U1', 'Dacia', 2013, 0, 114, 'Hatchback'),
(56, 'Malibu', 19, 'O9P 5I8', 'Lincoln', 2013, 0, 160, 'Coupe'),
(57, 'Corolla', 24, 'Z6I 6X5', 'Skoda', 2015, 1, 178, 'SUV'),
(58, 'Corolla', 15, 'E3V 9W9', 'Toyota', 2006, 1, 86, 'Sedan'),
(59, 'Cruze', 21, 'E1S 1H1', 'Smart', 2009, 0, 196, 'SUV'),
(60, 'Insight', 20, 'I5X 9X0', 'Smart', 2014, 1, 182, 'Coupe'),
(61, 'Cruze', 22, 'R3M 9D7', 'Audi', 2010, 1, 169, 'Sedan'),
(62, 'Corolla', 20, 'P4P 9S8', 'Infiniti', 2008, 1, 135, 'SUV'),
(63, 'Civic', 23, 'B5O 2O1', 'Dodge', 2016, 0, 161, 'Coupe'),
(64, 'sentra', 17, 'D3X 1W5', 'Daimler', 2018, 0, 95, 'Coupe'),
(65, 'Civic', 24, 'E5X 7D8', 'Lexus', 2006, 1, 174, 'Hatchback'),
(66, 'Cruze', 17, 'Z0P 8W4', 'Ferrari', 2009, 1, 169, 'SUV'),
(67, 'Elantra', 15, 'K5D 5Q5', 'FAW', 2011, 1, 96, 'SUV'),
(68, 'accord', 19, 'Y4F 6Y7', 'GMC', 2009, 1, 200, 'Crossover'),
(69, 'Civic', 15, 'X6R 9K3', 'Suzuki', 2014, 1, 108, 'Crossover'),
(70, 'Clarity', 16, 'K2N 1I4', 'Mercedes-B', 2006, 0, 115, 'Coupe'),
(71, 'Elantra', 16, 'O0M 0I5', 'Mazda', 2006, 0, 189, 'Hatchback'),
(72, 'Corolla', 20, 'E3V 4L9', 'Ferrari', 2016, 1, 158, 'Hatchback'),
(73, 'Altima', 15, 'U7Z 4R5', 'Lexus', 2015, 0, 169, 'Coupe'),
(74, 'Camry', 19, 'S1H 5V0', 'Ferrari', 2013, 1, 166, 'Crossover'),
(75, 'Malibu', 25, 'C0E 7O4', 'Mercedes-B', 2011, 0, 109, 'Hatchback'),
(76, 'passat', 15, 'A6M 2D4', 'Ferrari', 2011, 0, 110, 'Coupe'),
(77, 'Clarity', 24, 'Q6M 9F6', 'Volvo', 2008, 1, 187, 'Sedan'),
(78, 'sentra', 15, 'A5G 3P1', 'Suzuki', 2013, 0, 100, 'Crossover'),
(79, 'passat', 20, 'L5N 9N0', 'Ford', 2013, 0, 168, 'Crossover'),
(80, 'Cruze', 23, 'Z1W 5J1', 'Mazda', 2012, 0, 84, 'SUV'),
(81, 'polo', 19, 'A7F 5W0', 'Peugeot', 2007, 1, 123, 'Coupe'),
(82, 'Insight', 19, 'U4N 2Y4', 'Chevrolet', 2006, 0, 131, 'Hatchback'),
(83, 'sentra', 16, 'D5Y 3X5', 'Vauxhall', 2012, 1, 140, 'SUV'),
(84, 'Elantra', 17, 'A1Y 3J7', 'JLR', 2006, 1, 126, 'SUV'),
(85, 'Civic', 25, 'Y2C 7I4', 'Volkswagen', 2015, 0, 143, 'Crossover'),
(86, 'Corolla', 21, 'I4N 6G2', 'MINI', 2015, 1, 164, 'Sedan'),
(87, 'Clarity', 18, 'Q6T 8T2', 'Tata Motor', 2008, 0, 197, 'Crossover'),
(88, 'polo', 16, 'M1D 0X2', 'Smart', 2008, 0, 126, 'Hatchback'),
(89, 'Corolla', 15, 'O3O 1J2', 'Buick', 2017, 1, 153, 'SUV'),
(90, 'passat', 19, 'G9J 6J9', 'MINI', 2015, 1, 84, 'Sedan'),
(91, 'Altima', 19, 'Q9G 0Q5', 'Fiat', 2009, 0, 144, 'Hatchback'),
(92, 'Insight', 20, 'N9N 9U7', 'Fiat', 2017, 0, 196, 'Sedan'),
(93, 'Cruze', 18, 'P0J 2J5', 'Suzuki', 2017, 0, 86, 'Sedan'),
(94, 'Altima', 21, 'U3S 8F4', 'JLR', 2012, 1, 156, 'Crossover'),
(95, 'sentra', 20, 'Q0V 7S7', 'Seat', 2013, 0, 97, 'Sedan'),
(96, 'sentra', 23, 'K8Y 2C1', 'Hyundai Mo', 2015, 1, 185, 'SUV'),
(97, 'accord', 25, 'Z2I 9H8', 'Cadillac', 2007, 1, 107, 'SUV'),
(98, 'Insight', 19, 'B7F 7B6', 'Infiniti', 2016, 1, 169, 'Coupe'),
(99, 'Altima', 25, 'E7N 8I7', 'Tata Motor', 2014, 0, 99, 'Coupe'),
(100, 'Elantra', 24, 'I9X 1R6', 'Suzuki', 2009, 1, 110, 'Sedan'),
(101, 'Clarity', 18, 'Z5V 8P5', 'Dongfeng M', 2006, 1, 172, 'Sedan'),
(102, 'Clarity', 15, 'E4K 7K6', 'Honda', 2012, 0, 93, 'Sedan'),
(103, 'sentra', 16, 'Q7L 7Z0', 'Chevrolet', 2005, 1, 151, 'Sedan'),
(104, 'Cruze', 21, 'K1V 9J1', 'Skoda', 2008, 1, 129, 'SUV'),
(105, 'sentra', 15, 'U6W 1S5', 'General Mo', 2017, 1, 130, 'Coupe'),
(106, 'accord', 23, 'T3S 6T7', 'Dodge', 2008, 0, 186, 'Crossover'),
(107, 'passat', 16, 'C3W 8W7', 'Daimler', 2012, 0, 140, 'SUV'),
(108, 'Insight', 17, 'W6L 9Y3', 'Maruti Suz', 2010, 0, 168, 'Coupe'),
(109, 'Insight', 21, 'G4D 5H0', 'Ferrari', 2006, 0, 188, 'Hatchback'),
(110, 'Civic', 17, 'C9V 3J8', 'Peugeot', 2009, 1, 167, 'Hatchback'),
(111, 'Camry', 25, 'S4L 9Y7', 'Subaru', 2013, 1, 124, 'Coupe'),
(112, 'Altima', 19, 'X7M 1B7', 'Daihatsu', 2014, 1, 166, 'Coupe'),
(113, 'passat', 19, 'I1B 1M7', 'Toyota', 2010, 1, 138, 'Crossover');

-- --------------------------------------------------------

--
-- Table structure for table `orderhistory`
--

CREATE TABLE `orderhistory` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `carname` varchar(50) NOT NULL,
  `carnumber` varchar(50) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `cartype` varchar(50) NOT NULL,
  `noofdays` varchar(50) NOT NULL,
  `paymentname` varchar(50) NOT NULL,
  `cardnumber` varchar(50) NOT NULL,
  `payment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderhistory`
--

INSERT INTO `orderhistory` (`id`, `username`, `carname`, `carnumber`, `companyname`, `cartype`, `noofdays`, `paymentname`, `cardnumber`, `payment`) VALUES
(1, 'Akhil', 'CRV', 'BX154CE', 'Honda', 'SUV', '3', 'jagini akhil kumar', '354588', '255'),
(2, 'Akhil', 'RS3', 'FD5647', 'Audi', 'Sedan', '3', 'jagini akhil kumar', '56465', '225'),
(3, 'Akhil', 'M4', 'DF125X5', 'BMW', 'Convertibl', '2', 'akhil kumar', '66', '190'),
(4, 'Akhil', 'Ciaz', 'RD15ABX2', 'Maruti', 'Sedan', '3', 'wef', '315135', '165'),
(5, 'Akhil', 'Ciaz', 'AB457VC3', 'Maruti', 'Sedan', '10', 'akhil kumar', '6567697', '550'),
(6, 'karan', 'Cruze', 'H0D 9H9', 'Subaru', 'Hatchback', '7', 'karan thakur', '77777777', '560');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `UserID` varchar(120) NOT NULL,
  `UserName` varchar(150) NOT NULL,
  `FirstName` varchar(150) DEFAULT NULL,
  `LastName` varchar(150) DEFAULT NULL,
  `Email` varchar(150) NOT NULL,
  `Password` varchar(1000) DEFAULT NULL,
  `Active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`UserID`, `UserName`, `FirstName`, `LastName`, `Email`, `Password`, `Active`) VALUES
('nc0kf6', 'admin', 'admin', 'admin', 'admin@eastcoastrentals.com', '7d4bcdddbfe6039764cb53782016db491c1bdcb1388421519046a9efbb938ae34', 1),
('2lft6a', 'Akhil', 'Akhil', 'Jagini', 'jaginiakhil6598@gmail.com', '34d603e2d7d81b3c823cb52d2182bf0f614d00b29c812ae11f0d16fe8c068643c', 1),
('g1edqm', 'Akhil', 'Akhil', 'Jagini', 'jaginiakhil@gmail.com', 'd740535bd46a2e8973b76e77bb2d222a75f17556a8a5bc04f427ea98014cbb7c2', 1),
('db68yk', 'karan', 'karan', 'thakur', 'karanthakur@gmail.com', '2767d13c952c6a512cbf8f3a50d02b6324082f57994c77277a1cd928b30d4f1bb', 1),
('xlrieq', 'kritin', 'krit', 'k', 'krit@gmail.com', '4925dde1c3a33590526ba4ad8361a92e296c8acf8eefdd4a24fd2002f31fd435c', 1),
('02x1c2', 'Rohan', 'Rohan', 'Naik', 'rohan@g.vom', 'b9409771de24775a001e8b78b6f871bd4cff45538236994d9b38deac20e3bab98', 1),
('kxp80y', 'romit', 'romit', 'zunjarrao', 'romi', '89efb33c6fdc8bc6e1bb1eb76f7a53b6323f6479505782357c2b9b241e3df9961', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_info`
--
ALTER TABLE `car_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `car_number` (`car_number`);

--
-- Indexes for table `orderhistory`
--
ALTER TABLE `orderhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`UserName`,`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_info`
--
ALTER TABLE `car_info`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `orderhistory`
--
ALTER TABLE `orderhistory`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
