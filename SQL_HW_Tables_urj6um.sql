-- phpMyAdmin SQL Dump
-- version 5.2.1-1.el9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 16, 2024 at 09:13 PM
-- Server version: 8.0.36
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `urj6um`
--

-- --------------------------------------------------------

--
-- Table structure for table `Bakery`
--

CREATE TABLE `Bakery` (
  `DessertID` int NOT NULL,
  `Dessert` char(80) DEFAULT NULL,
  `Quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Bakery`
--

INSERT INTO `Bakery` (`DessertID`, `Dessert`, `Quantity`) VALUES
(1, 'Cookie', 100),
(2, 'brownie', 200),
(3, 'cake', 60),
(4, 'pastry', 150),
(5, 'pie', 50);

-- --------------------------------------------------------

--
-- Table structure for table `DessertType`
--

CREATE TABLE `DessertType` (
  `DessertID` int DEFAULT NULL,
  `Type` varchar(80) NOT NULL,
  `Quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `DessertType`
--

INSERT INTO `DessertType` (`DessertID`, `Type`, `Quantity`) VALUES
(1, 'ChocolateChip', 60),
(1, 'sugar', 30),
(2, 'doublechocolate', 100),
(3, 'caramel', 100),
(3, 'vanilla', 40),
(4, 'cheese', 90),
(4, 'tart', 60),
(5, 'cherry', 30),
(5, 'apple', 20);

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeAssignments`
--

CREATE TABLE `EmployeeAssignments` (
  `DessertID` int NOT NULL,
  `Name` varchar(80) NOT NULL,
  `Quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `EmployeeAssignments`
--

INSERT INTO `EmployeeAssignments` (`DessertID`, `Name`, `Quantity`) VALUES
(1, 'Jane', 100),
(2, 'John', 100),
(2, 'Carly', 100),
(3, 'Steve', 30),
(3, 'Sarah', 30),
(4, 'Jenny', 150),
(5, 'Carl', 30),
(5, 'Alex', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Bakery`
--
ALTER TABLE `Bakery`
  ADD PRIMARY KEY (`DessertID`);

--
-- Indexes for table `DessertType`
--
ALTER TABLE `DessertType`
  ADD KEY `idx_DessertID` (`DessertID`);

--
-- Indexes for table `EmployeeAssignments`
--
ALTER TABLE `EmployeeAssignments`
  ADD KEY `idx_DessertID` (`DessertID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `DessertType`
--
ALTER TABLE `DessertType`
  ADD CONSTRAINT `DessertType_ibfk_1` FOREIGN KEY (`DessertID`) REFERENCES `Bakery` (`DessertID`);

--
-- Constraints for table `EmployeeAssignments`
--
ALTER TABLE `EmployeeAssignments`
  ADD CONSTRAINT `EmployeeAssignments_ibfk_1` FOREIGN KEY (`DessertID`) REFERENCES `Bakery` (`DessertID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
