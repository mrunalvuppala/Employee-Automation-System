-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 28, 2013 at 09:33 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cewn`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `ename` varchar(200) NOT NULL,
  `edescription` varchar(200) NOT NULL,
  `eplace` varchar(200) NOT NULL,
  `eby` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`ename`, `edescription`, `eplace`, `eby`) VALUES
('e name', ' e description', 'e place', 'e address'),
('iuh', 'h ', 'jh', 'jh'),
('aaaa', ' aaaa', 'aaa', 'aaaa'),
('project', ' s;flg', 'dflg', ';fl,');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `imgname` varchar(200) NOT NULL,
  `imgfile` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`imgname`, `imgfile`) VALUES
('fdhgsdfhgdfhdsfhds', 'Desert.jpg'),
('bsfvbdbhrfht\r\ndgbfbfghgf', 'Desert.jpg'),
('vishu', 'Hydrangeas.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ideas`
--

CREATE TABLE IF NOT EXISTS `ideas` (
  `description` varchar(500) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ideas`
--

INSERT INTO `ideas` (`description`, `cname`, `username`, `email`) VALUES
('sdfsd', 'fsdfsdfs', 'sdfsd', 'fsdfsdf'),
('idea', 'idea', 'idea', 'idea'),
('idea dfgd', 'idea', 'idea', 'idea');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `cname` varchar(40) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `url` varchar(300) NOT NULL,
  `location` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`cname`, `designation`, `url`, `location`) VALUES
('Coign', 'Developer', 'www.coign.net', 'Hyderabad'),
('dsfsd', 'sdfs', 'fsdfsd', 'sdfsdf'),
('accenture', 'team manager', 'www.accenture.com', 'CANADA'),
('coign', 'software programmer', 'ww.coign.in', 'hyd');

-- --------------------------------------------------------

--
-- Table structure for table `personaldetails`
--

CREATE TABLE IF NOT EXISTS `personaldetails` (
  `eid` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass1` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gen` varchar(10) NOT NULL,
  `dob` varchar(12) NOT NULL,
  `phn` bigint(20) NOT NULL,
  `seqque` varchar(100) NOT NULL,
  `seqans` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `cname` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personaldetails`
--

INSERT INTO `personaldetails` (`eid`, `name`, `username`, `pass1`, `email`, `gen`, `dob`, `phn`, `seqque`, `seqans`, `address`, `cname`, `location`, `status`) VALUES
('434', 'gh', 'g', 'g', 'dfgdfg', 'male', '3/12/12', 535345, 'what is yor pet name', 'dgfdf', ' sdfds', 'fgdg', 'dfgd', 'accepted'),
('n', 'n', 'n', 'n', 'n', 'male', 'n', 0, 'what is yor pet name', 'n', ' n', '', '', 'accepted'),
('w', 'w', 'w', 'w', 'w', 'male', 'w', 0, 'what is yor pet name', 'w', ' w', '', '', 'accepted'),
('1234', 'bhagya', 'admin', 'admin', 'bhagyacs1@gmail.com', 'female', '1/6/1993', 123, 'what is yor pet name', '', ' ', '', '', 'accepted'),
('1234', 'bhagya', 'admin', 'admin', '', 'female', '1/2/1993', 123456, 'who is your ideal person', '', 'abcde', 'coign', 'hyd', 'accepted'),
('1', 'a', 'a', 'a', '1', 'male', 'a', 1, 'what is yor pet name', 'a', ' a', 'a', 'a', 'accepted'),
('hjhfkshfk', 'monica', 'monica', 'sai', 'hj', 'female', '16/11/1992', 9247346398, 'who is your favourite teacher', 'sujata', ' hinderance behind', 'IBM', 'Delhi', 'accepted'),
('123', 'lsdk', 'keshav', 'keshav', 'kush@gmail.com', 'male', '20/02/2012', 1234567890, 'who is your favourite teacher', 'asfa', ' sfgsg', 'coign', 'hyd', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE IF NOT EXISTS `property` (
  `property` varchar(200) NOT NULL,
  `property_address` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`property`, `property_address`, `description`) VALUES
('cgn', 'df', 'df');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE IF NOT EXISTS `query` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `query` text NOT NULL,
  `answer` varchar(200) NOT NULL DEFAULT 'un answered',
  `answerby` varchar(200) NOT NULL DEFAULT 'un answered',
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`qid`, `query`, `answer`, `answerby`, `username`) VALUES
(3, 'what is the latest version of java', '1.7', 'sridhar', 'manikanta'),
(4, 'dfgsdfgsdfgdsfgsdfgsdfgd', 'hgyudf', 'mani', 'fdgsdfgsdfgsdfg'),
(8, 'this is my query', 'this is m answer', 'vishu', 'manikanta'),
(6, 'safdsfsdfsdf', 'un answered', 'un answered', 'sdfs'),
(9, 'null', 'un answered', 'un answered', 'null'),
(10, '', 'un answered', 'un answered', '');
