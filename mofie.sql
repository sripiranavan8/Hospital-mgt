-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2019 at 06:50 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mofie`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `Bill_No` double DEFAULT NULL,
  `Doctor_Fees` double DEFAULT NULL,
  `Laboratory_Service_Charge` double DEFAULT NULL,
  `Service_Charge` double DEFAULT NULL,
  `Hospital_Charge` double DEFAULT NULL,
  `Medicine_Charge` double DEFAULT NULL,
  `Total_Discount` decimal(15,0) NOT NULL,
  `Patient_ID` varchar(10) NOT NULL,
  `Guardian_No` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `channeling`
--

CREATE TABLE `channeling` (
  `Channeling_ID` varchar(15) NOT NULL,
  `Patient_ID` varchar(10) NOT NULL,
  `Channeling_Type` varchar(50) NOT NULL,
  `Doctor_Name` varchar(50) NOT NULL,
  `Channeling_Date` date NOT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Doctor_ID` varchar(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Licence_No` int(10) NOT NULL,
  `Specialization` varchar(50) NOT NULL,
  `NIC_No` varchar(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Date_Of_Birth` date DEFAULT NULL,
  `Gender` varchar(20) NOT NULL,
  `Maritial_status` varchar(20) NOT NULL,
  `Workplace` varchar(30) DEFAULT NULL,
  `E_mail` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Doctor_ID`, `Name`, `Licence_No`, `Specialization`, `NIC_No`, `Address`, `Date_Of_Birth`, `Gender`, `Maritial_status`, `Workplace`, `E_mail`) VALUES
('125', 'Pirana', 254, 'Surgeon', '935877102V', 'Test RoadKodikamamJaffn', NULL, 'Female', 'Single', 'Peradeniya', 'priya@gmail.com'),
('555', 'Sripiranavan Y', 58875, 'Surgeon', '922822409V', 'Vanniyasingam LaneAvarangal West PutturJaffna', NULL, 'Male', 'Single', 'Peradeniya', 'sripiranavan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `doctor contact`
--

CREATE TABLE `doctor contact` (
  `Doctor_ID` varchar(15) NOT NULL,
  `Contact_No` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor contact`
--

INSERT INTO `doctor contact` (`Doctor_ID`, `Contact_No`) VALUES
('125', 76587693),
('555', 770724058);

-- --------------------------------------------------------

--
-- Table structure for table `doctor schedule`
--

CREATE TABLE `doctor schedule` (
  `Doctor_ID` varchar(15) NOT NULL,
  `Day` varchar(15) NOT NULL,
  `Start_Time` time NOT NULL,
  `End_Time` time NOT NULL,
  `Duration` varchar(25) DEFAULT NULL,
  `Maximum_Patients` int(15) NOT NULL,
  `Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor schedule`
--

INSERT INTO `doctor schedule` (`Doctor_ID`, `Day`, `Start_Time`, `End_Time`, `Duration`, `Maximum_Patients`, `Description`) VALUES
('125', '12/15/18', '00:58:10', '05:50:10', '17520000', 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `guardian`
--

CREATE TABLE `guardian` (
  `Guardian_ID` int(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `NIC_No` varchar(10) DEFAULT NULL,
  `Date_Of_Birth` date DEFAULT NULL,
  `Gender` varchar(20) NOT NULL,
  `Contact_No` int(25) NOT NULL,
  `Relationship` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guardian`
--

INSERT INTO `guardian` (`Guardian_ID`, `Name`, `Address`, `NIC_No`, `Date_Of_Birth`, `Gender`, `Contact_No`, `Relationship`) VALUES
(1, 'piranavan', 'avarangal', '922822409V', '1992-10-08', 'Male', 770724058, 'guard'),
(2, 'test', 'jaffna', '934569745V', '1993-11-05', 'Male', 770724047, 'Guardian'),
(3, 'tt', 'ttt', '922824087V', '2019-01-08', 'Male', 770724058, 'guardian'),
(4, 'ttt', 'asd', '924566302V', '2019-01-02', 'Select Sex', 778596478, 'guardian'),
(5, 'fasdf', 'asdf', '922822409V', '2017-08-24', 'Male', 770757458, 'asdfdsf'),
(6, 'fasdf', 'asdf', '922822409V', '2017-08-24', 'Male', 770757458, 'asdfdsf'),
(7, 'fasdf', 'asdf', '922822409V', '2017-08-24', 'Male', 770757458, 'asdfdsf'),
(8, 'asdf', 'asdf', '123456789V', '2018-01-09', 'Male', 770724058, 'gd');

-- --------------------------------------------------------

--
-- Table structure for table `in-patient`
--

CREATE TABLE `in-patient` (
  `In-Patient_ID` int(10) NOT NULL,
  `Patient_ID` varchar(10) NOT NULL,
  `Admitted_Date` date NOT NULL,
  `Admitted_Time` time NOT NULL,
  `Discharge_Date` date DEFAULT NULL,
  `Remarks` varchar(100) DEFAULT NULL,
  `Guardian_ID` varchar(15) NOT NULL,
  `Room_No` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `in-patient`
--

INSERT INTO `in-patient` (`In-Patient_ID`, `Patient_ID`, `Admitted_Date`, `Admitted_Time`, `Discharge_Date`, `Remarks`, `Guardian_ID`, `Room_No`) VALUES
(1, '12', '2018-01-09', '19:40:18', NULL, NULL, '8', '10');

-- --------------------------------------------------------

--
-- Table structure for table `in-patient laboratory service`
--

CREATE TABLE `in-patient laboratory service` (
  `In-Patient_ID` varchar(10) NOT NULL,
  `Service_ID` varchar(15) NOT NULL,
  `Requeted_Date` date NOT NULL,
  `Issued_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `in-patient meals`
--

CREATE TABLE `in-patient meals` (
  `ID` int(11) NOT NULL,
  `In-Patient_ID` varchar(10) NOT NULL,
  `Meal_ID` varchar(15) NOT NULL,
  `Quantity` varchar(50) NOT NULL,
  `Issued_Date` date DEFAULT NULL,
  `Issued_Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `in-patient meals`
--

INSERT INTO `in-patient meals` (`ID`, `In-Patient_ID`, `Meal_ID`, `Quantity`, `Issued_Date`, `Issued_Time`) VALUES
(1, '12', '2', '2', '2019-01-01', '22:51:25'),
(2, '12', '1', '1', '2019-01-02', '22:52:48');

-- --------------------------------------------------------

--
-- Table structure for table `in-patient medicine`
--

CREATE TABLE `in-patient medicine` (
  `ID` int(11) NOT NULL,
  `In-Patient_ID` varchar(10) NOT NULL,
  `Medicine_ID` varchar(15) NOT NULL,
  `Quantity` varchar(50) NOT NULL,
  `Issued_Date` date NOT NULL,
  `Issued_Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `in-patient medicine`
--

INSERT INTO `in-patient medicine` (`ID`, `In-Patient_ID`, `Medicine_ID`, `Quantity`, `Issued_Date`, `Issued_Time`) VALUES
(1, '12', '1', '2', '2019-01-08', '22:40:56'),
(2, '12', '1', '5', '2019-01-08', '22:41:07'),
(3, '12', '2', '5', '2019-01-04', '22:46:16');

-- --------------------------------------------------------

--
-- Table structure for table `in-patient prescription`
--

CREATE TABLE `in-patient prescription` (
  `Admit_No` varchar(15) NOT NULL,
  `Med_No` varchar(15) NOT NULL,
  `Quantity` varchar(50) DEFAULT NULL,
  `Amount` double DEFAULT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `in-patient rooms`
--

CREATE TABLE `in-patient rooms` (
  `In-Patient_ID` varchar(10) NOT NULL,
  `Room_No` varchar(15) NOT NULL,
  `Issued_Date` date NOT NULL,
  `Issued_Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laboratory service`
--

CREATE TABLE `laboratory service` (
  `Service_ID` varchar(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `Meals_ID` varchar(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Unit` varchar(50) NOT NULL,
  `Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`Meals_ID`, `Name`, `Unit`, `Description`) VALUES
('01', 'Dhal', '15', 'Dhal Curry			'),
('02', 'Rice', '30', 'White and Red RIce'),
('03', 'Potato', '10', 'Potato Curry');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `Medicine_ID` varchar(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Unit` varchar(50) NOT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Dosage` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`Medicine_ID`, `Name`, `Unit`, `Description`, `Dosage`) VALUES
('1', 'panadol', '100', 'dd', '1'),
('2', 'Asprin', '12', 'asd', '1');

-- --------------------------------------------------------

--
-- Table structure for table `opd`
--

CREATE TABLE `opd` (
  `OPD_ID` varchar(15) NOT NULL,
  `Patient_ID` varchar(10) NOT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `out patient laboratory service`
--

CREATE TABLE `out patient laboratory service` (
  `Patient_ID` varchar(10) NOT NULL,
  `Service_ID` varchar(15) NOT NULL,
  `Requeted_Date` date NOT NULL,
  `Issued_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Patient_ID` varchar(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address_Home_town` varchar(100) NOT NULL,
  `Streen_Name` varchar(40) NOT NULL,
  `City/Town` varchar(40) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `NIC_No` varchar(10) NOT NULL,
  `Maritial _status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Patient_ID`, `Name`, `Address_Home_town`, `Streen_Name`, `City/Town`, `Date_of_Birth`, `Gender`, `NIC_No`, `Maritial _status`) VALUES
('12', 'asfaf', 'a12', 'asdf', 'asdfasdf', '2018-12-08', 'Male', '2541639874', 'Single'),
('47', 'asdf', 'sdf5', 'asdf', 'asdf', '2018-12-12', 'Male', '1254789633', 'Single'),
('5', 'sdf', 'asdf', 'asf', 'asdf', '2014-01-12', 'Male', '4566456454', 'Single');

-- --------------------------------------------------------

--
-- Table structure for table `patient contact`
--

CREATE TABLE `patient contact` (
  `Patient_ID` varchar(10) NOT NULL,
  `Contact_No` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient contact`
--

INSERT INTO `patient contact` (`Patient_ID`, `Contact_No`) VALUES
('12', 1478523609),
('47', 788956451),
('5', 5445656);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `Room_No` varchar(15) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Availability` varchar(15) NOT NULL,
  `Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user details`
--

CREATE TABLE `user details` (
  `User_ID` varchar(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `NIC_NO` varchar(15) NOT NULL,
  `Create_Password` varchar(20) NOT NULL,
  `Conform_Password` varchar(20) NOT NULL,
  `Password_Hint` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user details`
--

INSERT INTO `user details` (`User_ID`, `Name`, `User_Name`, `NIC_NO`, `Create_Password`, `Conform_Password`, `Password_Hint`) VALUES
('', 'theivendram thanuan', 'thanu', '952532197v', 'adf1234', 'adf1234', 'adf');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `User_ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `User_Name` varchar(30) NOT NULL,
  `NIC_NO` varchar(15) NOT NULL,
  `Create_Password` varchar(20) NOT NULL,
  `Conform_Password` varchar(20) NOT NULL,
  `Password_Hint` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`User_ID`, `Name`, `User_Name`, `NIC_NO`, `Create_Password`, `Conform_Password`, `Password_Hint`) VALUES
(1, 'piranavan', 'pirana', '922822409V', '123456', '123456', 'num'),
(2, 'Sripiranavan', 'sri', '925888740V', '123456', '123456', 'num');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channeling`
--
ALTER TABLE `channeling`
  ADD PRIMARY KEY (`Channeling_ID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Doctor_ID`);

--
-- Indexes for table `doctor contact`
--
ALTER TABLE `doctor contact`
  ADD PRIMARY KEY (`Doctor_ID`);

--
-- Indexes for table `doctor schedule`
--
ALTER TABLE `doctor schedule`
  ADD PRIMARY KEY (`Doctor_ID`);

--
-- Indexes for table `guardian`
--
ALTER TABLE `guardian`
  ADD PRIMARY KEY (`Guardian_ID`);

--
-- Indexes for table `in-patient`
--
ALTER TABLE `in-patient`
  ADD PRIMARY KEY (`In-Patient_ID`),
  ADD UNIQUE KEY `Room_No` (`Room_No`);

--
-- Indexes for table `in-patient laboratory service`
--
ALTER TABLE `in-patient laboratory service`
  ADD PRIMARY KEY (`In-Patient_ID`);

--
-- Indexes for table `in-patient meals`
--
ALTER TABLE `in-patient meals`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `in-patient medicine`
--
ALTER TABLE `in-patient medicine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `in-patient prescription`
--
ALTER TABLE `in-patient prescription`
  ADD PRIMARY KEY (`Admit_No`);

--
-- Indexes for table `in-patient rooms`
--
ALTER TABLE `in-patient rooms`
  ADD PRIMARY KEY (`In-Patient_ID`);

--
-- Indexes for table `laboratory service`
--
ALTER TABLE `laboratory service`
  ADD PRIMARY KEY (`Service_ID`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`Meals_ID`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`Medicine_ID`);

--
-- Indexes for table `opd`
--
ALTER TABLE `opd`
  ADD PRIMARY KEY (`OPD_ID`);

--
-- Indexes for table `out patient laboratory service`
--
ALTER TABLE `out patient laboratory service`
  ADD PRIMARY KEY (`Patient_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Patient_ID`);

--
-- Indexes for table `patient contact`
--
ALTER TABLE `patient contact`
  ADD PRIMARY KEY (`Patient_ID`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`Room_No`);

--
-- Indexes for table `user details`
--
ALTER TABLE `user details`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guardian`
--
ALTER TABLE `guardian`
  MODIFY `Guardian_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `in-patient`
--
ALTER TABLE `in-patient`
  MODIFY `In-Patient_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `in-patient meals`
--
ALTER TABLE `in-patient meals`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `in-patient medicine`
--
ALTER TABLE `in-patient medicine`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
