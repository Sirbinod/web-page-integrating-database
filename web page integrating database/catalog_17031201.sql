-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2019 at 04:28 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catalog_17031201`
--

-- --------------------------------------------------------

--
-- Table structure for table `comp_info`
--

CREATE TABLE `comp_info` (
  `Name` varchar(20) NOT NULL,
  `Description1` varchar(255) NOT NULL,
  `Description2` varchar(255) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Mobile` int(15) NOT NULL,
  `Tel` int(15) NOT NULL,
  `Fax` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Web` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comp_info`
--

INSERT INTO `comp_info` (`Name`, `Description1`, `Description2`, `Address`, `Mobile`, `Tel`, `Fax`, `Email`, `Web`) VALUES
('ASGARD Technology', 'World class digital platform for your organization.', 'Take a look at few of our several projects that have successfully grown. We put our heart and soul into every project that we undertake and measure our efforts by the results we drive for our clients.', 'Putalisadak, Kathmandu', 986053631, 15689785, 'CXS567856', 'as99gard@gmail.com', 'www.asgard.com');

-- --------------------------------------------------------

--
-- Table structure for table `comp_staffs`
--

CREATE TABLE `comp_staffs` (
  `Staff_ID` varchar(5) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Staff_Name` varchar(50) NOT NULL,
  `Staff_Email` varchar(50) NOT NULL,
  `Post` varchar(50) NOT NULL,
  `staff_department` varchar(50) NOT NULL,
  `Staff_Phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comp_staffs`
--

INSERT INTO `comp_staffs` (`Staff_ID`, `Title`, `Staff_Name`, `Staff_Email`, `Post`, `staff_department`, `Staff_Phone`) VALUES
('S1', 'Mr', 'Resham Shrestha', 'resham01@gmail.com', 'Manager', 'D1;D2', 986254123),
('S2', 'Mrs', 'Reshu KC', 'kc02@gmail.com', 'Junior Developer', 'D2', 986421367),
('S3', 'Mr', 'Sanjog Maharjan', 'sanjog03@gmail.com', 'Sr. Developer', 'D3', 986412364),
('S4', 'Mr', 'Ushal Ghimire', 'ushal04@gmail.com', 'Chief Executive', '', 6164846),
('S5', 'Mrs', 'Rosy gurung', 'rozz@ymail.com', 'Manager', 'D3', 135677554),
('S6', 'Mr', 'MIlan oandey', 'oanday@gmail.com', 'Tester', 'D2', 12648655);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `Dept_ID` varchar(5) NOT NULL,
  `Dept_Name` varchar(50) NOT NULL,
  `Detail_Dept` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`Dept_ID`, `Dept_Name`, `Detail_Dept`) VALUES
('D1', 'Software Application', 'Our skill in application improvement is transformation and at-standard with cutting edge programming applications. Endow us to configuration, create and improve your product items so you can stay concentrated on your center business.'),
('D2', 'Mobile Application', 'We convey the universe of the web to your Android and Apple, so you are completely prepared for work or play wherever you go.We take a shot at practical versatile application undertakings of all size and make visual, movement and intuitive structure involvement crosswise over stages and gadgets.'),
('D3', 'Web Application', 'We have the web secured. Regardless of whether you need a website to share your thoughts or an intricate web stage with an instinctive data framework to help your business, look no more remote than Asgard advanced arrangements.');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `Category` varchar(50) NOT NULL,
  `Proj_Name` varchar(50) NOT NULL,
  `Details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`Category`, `Proj_Name`, `Details`) VALUES
('Mobile Apps', 'Touch', 'Touch is the new, simple video calling app that brings you face-to-face with all the people that matter most.'),
('News Protals', 'Setopati', 'Digital newspaper of Nepal, online destination for Nepal news, views, reviews, features, blogs and audio video content covering Nepali politics, society, market, sport and movie.'),
('Web Sites', 'Match', 'There was no way we could discuss the best dating web apps without mentioning the granddaddy of them all. Match was at the top of the dating game long before web apps existed, and its experience shows.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comp_info`
--
ALTER TABLE `comp_info`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `comp_staffs`
--
ALTER TABLE `comp_staffs`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`Dept_ID`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`Category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
