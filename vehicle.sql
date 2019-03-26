-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2019 at 04:33 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `chasisno` varchar(30) NOT NULL,
  `icompany` varchar(30) NOT NULL,
  `coverno` varchar(30) NOT NULL,
  `itype` varchar(30) NOT NULL,
  `istart` varchar(30) NOT NULL,
  `iend` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`chasisno`, `icompany`, `coverno`, `itype`, `istart`, `iend`) VALUES
('BCAEWQR1234', 'The New India Assurance', '123456', 'Theft and third party', '2019-03-12', '2019-03-13'),
('BCAEWQR1234', 'The New India Assurance', '123456', 'Theft and third party', '2019-03-12', '2019-03-13'),
('BCAEWQR1234', 'The New India Assurance', '123456', 'Theft and third party', '2019-03-12', '2019-03-13'),
('bc12345asd', 'The Oriental Insurance', '12345678', 'Third party', '2019-03-21', '1992-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `ownername` varchar(30) NOT NULL,
  `panno` varchar(30) DEFAULT NULL,
  `caddress` varchar(100) NOT NULL,
  `ccity` varchar(30) NOT NULL,
  `cpincode` varchar(30) NOT NULL,
  `dname` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mobno` varchar(13) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `pcity` varchar(30) NOT NULL,
  `ppincode` varchar(30) NOT NULL,
  `chasisno` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`ownername`, `panno`, `caddress`, `ccity`, `cpincode`, `dname`, `fname`, `mobno`, `paddress`, `pcity`, `ppincode`, `chasisno`) VALUES
('ankit kumar', 'pa645789', 'LIG 125B, T C KAUSHIK, Sonagiri, piplani', 'BHOPAL', '462022', '3-wheeler', 'amod kumar', '9644152980', 'C/o-amod Kumar, vill-shyama pachrukhi, po-kuhila, ps-akbarpur, dist-nawada, bihar', 'Nawada', '805126', 'BCAEWQR1234'),
('ankit kumar', 'pa645789', 'LIG 125B, T C KAUSHIK, Sonagiri, piplani', 'BHOPAL', '462022', '3-wheeler', 'amod kumar', '9644152980', 'C/o-amod Kumar, vill-shyama pachrukhi, po-kuhila, ps-akbarpur, dist-nawada, bihar', 'Nawada', '805126', 'BCAEWQR1234'),
('ankit kumar', 'pa645789', 'LIG 125B, T C KAUSHIK, Sonagiri, piplani', 'BHOPAL', '462022', '3-wheeler', 'amod kumar', '9644152980', 'C/o-amod Kumar, vill-shyama pachrukhi, po-kuhila, ps-akbarpur, dist-nawada, bihar', 'Nawada', '805126', 'BCAEWQR1234'),
('pawan roy', '12345678', '101 arera colony ', 'Nawada', '805126', '4-wheeler', 'manoj rai', '8521792128', 'patna', 'BHOPAL', '462022', 'bc12345asd');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobilenumber` varchar(12) NOT NULL,
  `vehicletype` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `password1` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `mobilenumber`, `vehicletype`, `password`, `password1`) VALUES
(1, 'user', 'Ankitmailbox10@gmail.com', '09644152980', '2-wheeler', '123', '123'),
(2, 'abhi', 'abhubab@gmail.com', '8109854123', '3-wheeler', '12345', '12345'),
(3, 'adarsh', 'thisisadarshsingh@gmail.com', '987456123', '2-wheeler', '123', '123'),
(4, 'abhi', 'thisisadarshsingh@gmail.com', '123456', '2-wheeler', '123', '123'),
(5, 'geet', 'Ankitmailbox10@gmail.com', '09644152980', '2-wheeler', '123', '123'),
(6, 'geet', 'Ankitmailbox10@gmail.com', '09644152980', '2-wheeler', '123', '123'),
(7, 'geetu', 'Ankitmailbox10@gmail.com', '96441526', 'other', '1234', '1234'),
(8, 'pawan', 'pawanroy@gmail.com', '9874596', '3-wheeler', '123', '123'),
(9, 'aditya', 'Ankitmailbox10@gmail.com', '09644152980', '2-wheeler', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `rno`
--

CREATE TABLE `rno` (
  `rnumber` varchar(30) NOT NULL,
  `chasisno` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rno`
--

INSERT INTO `rno` (`rnumber`, `chasisno`) VALUES
('123', 'bc12345asd');

-- --------------------------------------------------------

--
-- Table structure for table `v`
--

CREATE TABLE `v` (
  `rtoname` varchar(30) NOT NULL,
  `chasisno` varchar(30) NOT NULL,
  `engineno` varchar(30) NOT NULL,
  `ownership` varchar(30) NOT NULL,
  `vtype` varchar(30) NOT NULL,
  `vclass` varchar(30) NOT NULL,
  `btype` varchar(30) NOT NULL,
  `maker` varchar(30) NOT NULL,
  `mdate` varchar(30) NOT NULL,
  `pdate` varchar(30) NOT NULL,
  `saleamount` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `v`
--

INSERT INTO `v` (`rtoname`, `chasisno`, `engineno`, `ownership`, `vtype`, `vclass`, `btype`, `maker`, `mdate`, `pdate`, `saleamount`) VALUES
('4', 'BCAEWQR1234', '456714aZ2', 'charitable trust', 'Non-Transport', 'Three tier Rickshaw', 'Flat Bed(truck)', 'Hyundai', '2019-03-13', '2019-03-12', '42500'),
('4', 'BCAEWQR1234', '456714aZ2', 'charitable trust', 'Non-Transport', 'Three tier Rickshaw', 'Flat Bed(truck)', 'Hyundai', '2019-03-13', '2019-03-12', '42500'),
('4', 'BCAEWQR1234', '456714aZ2', 'charitable trust', 'Non-Transport', 'Three tier Rickshaw', 'Flat Bed(truck)', 'Hyundai', '2019-03-13', '2019-03-12', '42500'),
('3', 'bc12345asd', '448', 'charitable trust', 'Non-Transport', 'Motorcycle', 'Sedan', 'Hyundai', '2019-03-07', '2019-03-13', '900000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
