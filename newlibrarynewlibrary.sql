-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 24, 2017 at 05:36 AM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newlibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_details`
--

CREATE TABLE `book_details` (
  `id` int(50) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `pages` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `isbn` varchar(200) DEFAULT NULL,
  `edition` varchar(200) DEFAULT NULL,
  `publication` varchar(200) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_details`
--

INSERT INTO `book_details` (`id`, `name`, `pages`, `category`, `price`, `isbn`, `edition`, `publication`, `author`) VALUES
(1, 'ANCI C', '543', 'Text Book', '500', '9884858702', '2nd', 'TATA Mecrawhill', 'Balagurusamy'),
(2, 'abc', '123', 'fun', '566', '1234567891234', '2nd', 'me', 'me'),
(1000, 'New Book', '600', 'Fun', '7000', '1234567876545', '5th', 'SR Publications', 'Roy Sagar'),
(1014, 'Algorithms', '44444', 'Computer Science', '4000', '874678497388', '5th', 'Wiley', 'Cormen');

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `uname` varchar(45) NOT NULL,
  `reg_no` varchar(45) NOT NULL,
  `book_id` varchar(200) NOT NULL,
  `issue_date` varchar(200) NOT NULL,
  `renual_date` varchar(200) NOT NULL,
  `fine` int(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`uname`, `reg_no`, `book_id`, `issue_date`, `renual_date`, `fine`) VALUES
('', '', '', '02/12/2016', '17/12/2016', 0),
('prateek662', '13311313', '131313', '02/12/2016', '17/12/2016', 0),
('Mandy', '761313313', '1000', '02/12/2016', '17/12/2016', 0),
('asdas', '121222122', '1000', '02/12/2016', '17/12/2016', 0),
('sdaasd', '223', '323', '02/12/2016', '17/12/2016', 0),
('asdas', '12121', '111111', '02/12/2016', '17/12/2016', 0),
('ora', '333333', '21121', '02/12/2016', '17/12/2016', 0),
('kkkk', '12121', '121212', '02/12/2016', '17/12/2016', 0),
('dgds', '2444', '2424', '02/12/2016', '17/12/2016', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `pwd` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_details`
--
ALTER TABLE `book_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_book`
--
ALTER TABLE `issue_book`
  ADD PRIMARY KEY (`uname`,`reg_no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_details`
--
ALTER TABLE `book_details`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1015;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
