-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 02:23 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acrsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Regdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `Regdate`) VALUES
(1, 'Test', 'admin', 4654664564, 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2020-06-14 11:29:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrand`
--

CREATE TABLE `tblbrand` (
  `ID` int(10) NOT NULL,
  `BrandName` varchar(200) DEFAULT NULL,
  `BrandLogo` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbrand`
--

INSERT INTO `tblbrand` (`ID`, `BrandName`, `BrandLogo`, `CreationDate`) VALUES
(1, 'LG(Life Good)', '8b7029a2a97c7df455dfb110aa75285c1592202199.jpg', '2020-06-15 06:23:19'),
(2, 'Lloyd', '99c6911037be58e026a13bd0d4e068931592202284.jpg', '2020-06-15 06:24:44'),
(3, 'Voltas', 'e01e7d10da4a69f5cfd5a882d37044521592202390.png', '2020-06-15 06:26:30'),
(4, 'Daikin', 'c92248b824fbaaeb96ecacdb99ce52e21592202437.png', '2020-06-15 06:27:17'),
(5, 'Mitsubishi ELectric.', '2cc8a155d9f8c633538f6128bf6428841592202491.png', '2020-06-15 06:28:11'),
(6, 'Blue Star', '1dd21cd7e265585a3171aeb9df9581df1592291547.png', '2020-06-15 06:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '<span style=\"color: rgb(25, 25, 25); font-family: &quot;open sans&quot;, sans-serif; font-size: 14px;\">Our AC&nbsp;service&nbsp;is dedicated to being performed with the use of genuine spare parts so there will be dignity to AC&nbsp;repair without compromising the quality of work at an affordable cost.&nbsp;Fixed-price, We don\'t have any hidden charges. Whether you\'re searching for an air conditioner&nbsp;service&nbsp;in India, faulty parts replacement, or gas charging, ProOne professionals can fix it.&nbsp;With a remarkably trained &amp; specialize group of expert service technicians team near you for all residential &amp; commercial air conditioner&nbsp;repair and service,&nbsp;we have been providing services&nbsp;in all over India.​</span>', NULL, NULL, '2020-06-21 13:18:58'),
(2, 'contactus', 'Contact Us', '#890 CFG Apartment, Mayur Vihar, Delhi-India.', 'info@gmail.com', 8797979789, '2020-06-21 13:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `tblrequest`
--

CREATE TABLE `tblrequest` (
  `ID` int(10) NOT NULL,
  `UserID` int(5) DEFAULT NULL,
  `ServiceNumber` varchar(10) DEFAULT NULL,
  `BrandName` varchar(50) DEFAULT NULL,
  `ACtype` varchar(100) DEFAULT NULL,
  `ACcapcity` varchar(50) DEFAULT NULL,
  `Problem` varchar(200) DEFAULT NULL,
  `ProblemDesc` mediumtext DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `DateofService` varchar(200) DEFAULT NULL,
  `SuitableTime` varchar(200) DEFAULT NULL,
  `ReqDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` varchar(50) DEFAULT NULL,
  `AssignTo` varchar(120) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `ServiceCharge` decimal(10,2) DEFAULT NULL,
  `PartCharge` decimal(10,2) DEFAULT NULL,
  `OtherCharge` decimal(10,2) DEFAULT NULL,
  `ResponseDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblrequest`
--

INSERT INTO `tblrequest` (`ID`, `UserID`, `ServiceNumber`, `BrandName`, `ACtype`, `ACcapcity`, `Problem`, `ProblemDesc`, `Address`, `DateofService`, `SuitableTime`, `ReqDate`, `Status`, `AssignTo`, `Remark`, `ServiceCharge`, `PartCharge`, `OtherCharge`, `ResponseDate`) VALUES
(1, 1, '608624570', 'LG(Life Good)', 'Split AC', '1.5 ton', 'Service', ' AC Service needs', ' K-908 Laxmi Nagar, New Delhi-110098, Near reliance fresh', '2019-06-25', '13:00', '2020-06-17 06:07:30', 'Completed', 'Tech101', 'Request has been completed', '99.00', '99.00', '99.00', '2020-06-23 06:05:14'),
(2, 1, '853376934', 'Lloyd', 'Window AC', '2 ton', 'Installation', ' Window ac intallation', ' L-678 Laxmi Nagar New Delhi-110098', '2020-06-20', '07:00', '2020-06-17 06:08:51', 'Request Cancelled', '', 'Technician not available', NULL, NULL, NULL, '2020-06-23 06:05:48'),
(3, 1, '618119209', 'Lloyd', 'Window AC', '2 ton', 'Installation', ' Window ac intallation', ' L-678 Laxmi Nagar New Delhi-110098', '2020-06-27', '14:30', '2020-06-17 06:34:03', 'Approved', 'Tech101', 'Your request has been approved', NULL, NULL, NULL, '2020-06-23 06:06:41'),
(4, 1, '242792788', 'LG(Life Good)', 'Window AC', '1 ton', 'Service', ' gjhgjhgjhgjhg', 'ggjgjhgjhgj ', '2020-06-25', '12:30', '2020-06-20 06:58:07', 'Request Cancelled', NULL, 'I want to cancel this request', NULL, NULL, NULL, '2020-06-23 06:06:30'),
(5, 2, '253051923', 'Voltas', 'Split AC', '2 ton', 'Faulty AC', ' Some leakage occurs in the ac', ' Q-880, HVIP apartment near hera sweets Ghaziabad', '2020-06-24', '11:30', '2020-06-22 06:19:46', 'Request Cancelled', NULL, 'Cancel', NULL, NULL, NULL, '2020-06-23 06:06:23'),
(6, 2, '939366164', 'Mitsubishi ELectric.', 'Split AC', '1.5 ton', 'Installation', ' Installation and uninstallation of ac', ' L-890, Gore Gao East Delhi 221001', '2020-06-27', '09:30', '2020-06-22 06:21:10', 'Request Cancelled', '', 'Cancelled due to insufficient data', NULL, NULL, NULL, '2020-06-23 06:06:11'),
(7, 2, '372023717', 'Mitsubishi ELectric.', 'Split AC', '1.5 ton', 'Installation', ' Installation and uninstallation of ac', ' L-890, Gore Gao East Delhi 221001', '2020-06-28', '08:30', '2020-06-22 06:22:48', 'Completed', 'Tech102', 'Service has been completed', '890.00', '850.00', '0.00', '2020-06-23 11:34:41'),
(8, 2, '514345404', 'Daikin', 'Window AC', '1.5 ton', 'Service', ' Service of ac', ' J-567, J&K Laxmi Nagar New Delhi', '2020-06-25', '16:00', '2020-06-23 06:03:04', 'Approved', 'Tech102', 'Your request has been approved', NULL, NULL, NULL, '2020-06-23 11:20:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbltechnician`
--

CREATE TABLE `tbltechnician` (
  `ID` int(10) NOT NULL,
  `TechnicianID` varchar(50) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address` varchar(200) NOT NULL,
  `ProfilePic` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `JoiningDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltechnician`
--

INSERT INTO `tbltechnician` (`ID`, `TechnicianID`, `Name`, `MobileNumber`, `Email`, `Address`, `ProfilePic`, `Password`, `JoiningDate`) VALUES
(1, 'Tech101', 'Harish Singh', 4987798756, 'harish@gmail.com', 'j&k block j-125 laxmi nagar', 'b9fb9d37bdf15a699bc071ce49baea531592309556.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2020-06-16 12:12:36'),
(2, 'Tech102', 'John', 9788798789, 'john@gmail.com', 'j&k block K-890 laxmi nagar New Delhi-110097', 'b9fb9d37bdf15a699bc071ce49baea531592309917.jpg', '202cb962ac59075b964b07152d234b70', '2020-06-16 12:18:37'),
(3, 'Tech103', 'Mohan Rao', 7464713871, 'mohan@gmail.com', 'L-0345, Nehru Nagar Ghaziabad-201017', 'b9fb9d37bdf15a699bc071ce49baea531592310080.jpg', '202cb962ac59075b964b07152d234b70', '2020-06-16 12:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbltracking`
--

CREATE TABLE `tbltracking` (
  `ID` int(10) NOT NULL,
  `ServiceNumber` varchar(200) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `OrderCanclledByUser` int(2) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltracking`
--

INSERT INTO `tbltracking` (`ID`, `ServiceNumber`, `Remark`, `Status`, `OrderCanclledByUser`, `UpdationDate`) VALUES
(1, '608624570', 'Assign to technician', 'Approved', NULL, NULL),
(2, '853376934', 'Technician not available', 'Unapproved', NULL, NULL),
(9, '608624570', 'Request has been completed', 'Completed', NULL, NULL),
(10, '618119209', 'Your request has been approved', 'Approved', NULL, '2020-06-19 11:44:33'),
(11, '618119209', 'Your request has been approved', 'Approved', NULL, '2020-06-19 11:59:53'),
(14, '242792788', 'I want to cancel this request', 'Request Cancelled', 1, '2020-06-20 07:22:30'),
(15, '253051923', 'Cancel', 'Request Cancelled', 1, '2020-06-22 06:32:33'),
(16, '939366164', 'Cancelled due to insufficient data', 'Request Cancelled', NULL, '2020-06-22 06:48:28'),
(17, '372023717', 'Your request has been approved', 'Approved', NULL, '2020-06-23 06:32:43'),
(18, '514345404', 'Your request has been approved', 'Approved', NULL, '2020-06-23 11:20:18'),
(19, '372023717', 'Service has been completed', 'Completed', NULL, '2020-06-23 11:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Kiran', 'Mukherji', 6789797979, 'kiran@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-06-16 14:50:21'),
(2, 'Test', 'Sample', 6546454654, 'test@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-06-16 14:52:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbrand`
--
ALTER TABLE `tblbrand`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BrandName` (`BrandName`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblrequest`
--
ALTER TABLE `tblrequest`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ServiceNumber` (`ServiceNumber`);

--
-- Indexes for table `tbltechnician`
--
ALTER TABLE `tbltechnician`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TechnicianID` (`TechnicianID`);

--
-- Indexes for table `tbltracking`
--
ALTER TABLE `tbltracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbrand`
--
ALTER TABLE `tblbrand`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblrequest`
--
ALTER TABLE `tblrequest`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbltechnician`
--
ALTER TABLE `tbltechnician`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbltracking`
--
ALTER TABLE `tbltracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
