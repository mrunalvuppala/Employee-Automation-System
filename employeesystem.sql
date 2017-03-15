-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 29, 2013 at 10:22 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `employeesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `empreg`
--

CREATE TABLE IF NOT EXISTS `empreg` (
  `empid` varchar(30) NOT NULL,
  `fname` varchar(60) NOT NULL,
  `lname` varchar(60) NOT NULL,
  `frname` varchar(60) NOT NULL,
  `gender` varchar(60) NOT NULL,
  `dob` varbinary(30) NOT NULL,
  `eduq` varchar(60) NOT NULL,
  `addr` varchar(80) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phno` varchar(11) NOT NULL,
  `empdept` varchar(60) NOT NULL,
  `empsalary` varchar(50) NOT NULL,
  `pwd` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empreg`
--

INSERT INTO `empreg` (`empid`, `fname`, `lname`, `frname`, `gender`, `dob`, `eduq`, `addr`, `email`, `phno`, `empdept`, `empsalary`, `pwd`) VALUES
('1', 'q', 'q', 'q', 'male', '1/1/2012', 'btech', 'a', 'abdul@gmail.com', '1234567890', 'a', '1234', 'd'),
('44140da', 'moiz', 'sayyed', 'majeed', 'Male', '1/1/1989', 'B.Tech.', 'a', 'as@df.vv', '1234567890', '1', '1234', 'h');

-- --------------------------------------------------------

--
-- Table structure for table `emprelievinginfo`
--

CREATE TABLE IF NOT EXISTS `emprelievinginfo` (
  `empid` int(30) NOT NULL,
  `empname` varchar(60) NOT NULL,
  `empdept` varchar(60) NOT NULL,
  `projectmng` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emprelievinginfo`
--

INSERT INTO `emprelievinginfo` (`empid`, `empname`, `empdept`, `projectmng`) VALUES
(1, 'fsgf', 'fsgfdg', 'fgsdfg'),
(1, 'moiz', 'it', 'moiz'),
(2, 'a', 'v', 'x'),
(1, 'rfed', 'twr', 'yet');

-- --------------------------------------------------------

--
-- Table structure for table `infotohr`
--

CREATE TABLE IF NOT EXISTS `infotohr` (
  `empid` int(30) NOT NULL,
  `empname` varchar(60) NOT NULL,
  `empdept` varchar(50) NOT NULL,
  `role` varchar(60) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `infotohr`
--

INSERT INTO `infotohr` (`empid`, `empname`, `empdept`, `role`, `time`) VALUES
(1, 'fvdsf', 'h', 'project leader', 'gfhdg'),
(2, 'dfgfg', 'grtfg', 'project leader', 'ghsdfh'),
(1, 'a', 'a', 'team member', '12 months');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `empid` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`empid`, `username`, `password`) VALUES
('Admin', 'admin', '12345'),
('HR', 'hr', '12345'),
('Project Manager', 'pm', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `title` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `body` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`title`, `date`, `body`) VALUES
(' cvb', 'vbxcvb', NULL),
('fgfhfgh', 'gfbhgfs', NULL),
('fgfhfgh', 'gfbhgfs', NULL),
('gfbhd', 'hgf', NULL),
('gfdh', 'ghd', NULL),
('bhvn cv', 'bncv', 'ncbc'),
('ghfhd', 'gfhd', 'hdgdhgh'),
('ghfhd', 'gfhd', 'hdgdhgh'),
('hi', '1/1/2013', 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `projectdetails`
--

CREATE TABLE IF NOT EXISTS `projectdetails` (
  `empid` int(20) NOT NULL,
  `projname` varchar(50) NOT NULL,
  `projduration` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `performance` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectdetails`
--

INSERT INTO `projectdetails` (`empid`, `projname`, `projduration`, `role`, `performance`) VALUES
(1, 'abcd', '3 month', 'project member', 'better'),
(2, 'd', '6 month', 'project leader', 'good'),
(3, 'w', '6 month', 'project member', 'average');

-- --------------------------------------------------------

--
-- Table structure for table `termination`
--

CREATE TABLE IF NOT EXISTS `termination` (
  `empid` int(30) NOT NULL,
  `empname` varchar(60) NOT NULL,
  `empdept` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `termination`
--

INSERT INTO `termination` (`empid`, `empname`, `empdept`) VALUES
(1, 'moiz', 'IT'),
(1, 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE IF NOT EXISTS `upload` (
  `empid` int(10) NOT NULL,
  `doc` longblob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

