-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 26, 2019 at 06:43 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `priya_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `kart_product`
--

CREATE TABLE IF NOT EXISTS `kart_product` (
  `kart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kart_product`
--


-- --------------------------------------------------------

--
-- Table structure for table `kart_tbl`
--

CREATE TABLE IF NOT EXISTS `kart_tbl` (
  `kart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`kart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kart_tbl`
--


-- --------------------------------------------------------

--
-- Table structure for table `past_order_tbl`
--

CREATE TABLE IF NOT EXISTS `past_order_tbl` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `order_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `past_order_tbl`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_cat`
--

CREATE TABLE IF NOT EXISTS `product_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(40) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `product_cat`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_tbl`
--

CREATE TABLE IF NOT EXISTS `product_tbl` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `product_desc` varchar(1000) NOT NULL,
  `fk_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `product_tbl`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE IF NOT EXISTS `user_tbl` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_company_name` varchar(50) NOT NULL,
  `user_contact` varchar(15) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_otp` int(11) NOT NULL,
  `user_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`user_id`, `user_email`, `user_name`, `user_company_name`, `user_contact`, `user_password`, `user_otp`, `user_timestamp`) VALUES
(1, 'parth44@gmail.com', 'parth', 'mcq', '124112', '123456', 12, '0000-00-00 00:00:00'),
(2, 'babu11@gmail.com', 'babu', 'mm', '12121266', '123457', 11, '0000-00-00 00:00:00'),
(5, 'll12@gmail.com', 'll', 'mmm', '3252325', '$1$Jw5.e61.$ZL27VFHuESpZGT0QppIu/0', 13, '0000-00-00 00:00:00'),
(6, 'malav12@gmail.com', 'malav', 'google', '12121212', '$1$Q11.ZL..$tOD5C0GUMq37v6wapMTR70', 11, '0000-00-00 00:00:00'),
(7, 'matho12@gmail.com', 'matho', 'mmm', '1212122121', '$1$uW5.fB2.$XBD3VXF5QFZYuMUS6ircD0', 111, '0000-00-00 00:00:00'),
(8, 'pari11@gmail.com', 'pari', 'papa', '12121212', '$1$6v5.Vh/.$X0B/mwpFx04K4YgXw9jKf0', 11, '0000-00-00 00:00:00');
