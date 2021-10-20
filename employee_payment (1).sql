-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2021 at 12:22 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_payment`
--

-- --------------------------------------------------------

--
-- Table structure for table `advance_master`
--

CREATE TABLE `advance_master` (
  `Advance_id` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `Advance_Date` date DEFAULT NULL,
  `Advance_Amt` float DEFAULT NULL,
  `Advance_Due_Amt` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advance_master`
--

INSERT INTO `advance_master` (`Advance_id`, `emp_id`, `Advance_Date`, `Advance_Amt`, `Advance_Due_Amt`) VALUES
(1, 1, '2020-02-04', 3333, 8888);

-- --------------------------------------------------------

--
-- Table structure for table `attendence_details`
--

CREATE TABLE `attendence_details` (
  `Attend_Id` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `Attend_Date` date DEFAULT NULL,
  `No_of_Hours` varchar(30) DEFAULT NULL,
  `Attend_status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendence_details`
--

INSERT INTO `attendence_details` (`Attend_Id`, `emp_id`, `Attend_Date`, `No_of_Hours`, `Attend_status`) VALUES
(3, 1, '0000-00-00', '76', 'good'),
(4, 1, '6767-08-07', '3333  ', 'good'),
(5, 1, '2020-02-04', '8765', 'chan');

-- --------------------------------------------------------

--
-- Table structure for table `city_details`
--

CREATE TABLE `city_details` (
  `city_id` int(11) DEFAULT NULL,
  `city_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city_details`
--

INSERT INTO `city_details` (`city_id`, `city_name`) VALUES
(2, 'pune'),
(4, 'kol'),
(3, 'kolkata'),
(3, 'kolkata');

-- --------------------------------------------------------

--
-- Table structure for table `employee_master`
--

CREATE TABLE `employee_master` (
  `emp_id` int(11) DEFAULT NULL,
  `emp_name` varchar(30) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `emp_addr` varchar(50) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `emp_phno` varchar(30) DEFAULT NULL,
  `emp_email` varchar(30) DEFAULT NULL,
  `emp_dob` varchar(30) DEFAULT NULL,
  `emp_doj` varchar(30) DEFAULT NULL,
  `emp_basic_salary` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_master`
--

INSERT INTO `employee_master` (`emp_id`, `emp_name`, `post_id`, `emp_addr`, `city_id`, `emp_phno`, `emp_email`, `emp_dob`, `emp_doj`, `emp_basic_salary`) VALUES
(31, 'None', 3, 'None', 2, 'None', 'None', 'None', 'None', 0),
(38, 'pune', 3, '8888', 2, '88888', 'None', 'None', 'None', 0),
(53, 'pravin', 3, 'kok', 2, '3344556688', 'pra12@gmail.com', '1995/8/15', '3030/3/3', 500000);

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `Payment_id` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `Payment_Date` date DEFAULT NULL,
  `Payment_Work_Day` varchar(30) DEFAULT NULL,
  `Payment_Present_Day` varchar(30) DEFAULT NULL,
  `Payment_Emp_Basic_Sal` float DEFAULT NULL,
  `Payment_Emp_DA` float DEFAULT NULL,
  `Payment_Emp_HRA` float DEFAULT NULL,
  `Payment_Emp_PF` float DEFAULT NULL,
  `Payment_leave_days` varchar(30) DEFAULT NULL,
  `Payment_Advance_Amt` float DEFAULT NULL,
  `Payment_Cash_Paid` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`Payment_id`, `emp_id`, `Payment_Date`, `Payment_Work_Day`, `Payment_Present_Day`, `Payment_Emp_Basic_Sal`, `Payment_Emp_DA`, `Payment_Emp_HRA`, `Payment_Emp_PF`, `Payment_leave_days`, `Payment_Advance_Amt`, `Payment_Cash_Paid`) VALUES
(3, 3, '2020-02-04', '7777 ', '77 ', 7, 764, 777, 7777, '656 ', 767, 7777),
(3, 3, '2020-02-04', '7777 ', '77 ', 7, 764, 777, 7777, '656 ', 767, 7777),
(3, 3, '2020-02-04', '7777 ', '77 ', 7, 764, 777, 7777, '656 ', 767, 7777),
(3, 3, '2020-02-04', '7777 ', '77 ', 7, 764, 777, 7777, '656 ', 767, 7777),
(5, 1, '2020-02-04', '7777', '222222', 33445600, 333, 333, 333, '3333', 3333, 333),
(5, 1, '2020-02-04', '7777', '222222', 33445600, 333, 333, 333, '3333', 3333, 333),
(6, 1, '2020-02-04', '3333', '222222', 33445600, 333, 2020, 333, '3333', 9, 7777),
(6, 1, '2020-02-04', '3333', '222222', 33445600, 333, 2020, 333, '3333', 9, 7777);

-- --------------------------------------------------------

--
-- Table structure for table `post_details`
--

CREATE TABLE `post_details` (
  `post_id` int(11) DEFAULT NULL,
  `post_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_details`
--

INSERT INTO `post_details` (`post_id`, `post_name`) VALUES
(3, 'kol'),
(4, 'pune');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
