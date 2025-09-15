-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/

-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2023 at 12:29 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `regis`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `cart_qty` int(11) NOT NULL,
  `cart_stock_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cart_uniqid` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expired`
--

CREATE TABLE `expired` (
  `exp_id` int(11) NOT NULL,
  `exp_itemName` varchar(50) NOT NULL,
  `exp_itemPrice` float NOT NULL,
  `exp_itemQty` int(11) NOT NULL,
  `exp_expiredDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expired`
--

INSERT INTO `expired` (`exp_id`, `exp_itemName`, `exp_itemPrice`, `exp_itemQty`, `exp_expiredDate`) VALUES
(1, 'haha', 5.6, 7, '2017-08-18'),
(2, 'haha', 5.6, 12, '2017-03-23'),
(3, 'sipons', 3.5, 3, '2017-03-31'),
(4, '111', 7.5, 34, '2017-04-14'),
(5, '111', 7.5, 13, '2017-04-21'),
(6, 'haha', 5.6, 23, '2017-04-12'),
(7, 'sipons', 3.5, 123, '2017-04-08'),
(8, '111', 7.5, 123, '2017-04-08'),
(9, '111', 7.5, 23, '2017-05-04'),
(10, '111', 7.5, 11, '2017-04-22'),
(11, 'Pen', 20, 5, '2023-07-14'),
(12, 'sipons', 3.5, 450, '2023-07-29'),
(13, 'casePen', 20, 500, '2023-07-14'),
(14, 'White Crush', 10, 1000, '2023-10-09'),
(15, 'Redbull', 120, 500, '2023-12-01'),
(16, 'casePen', 20, 190, '2023-07-15'),
(17, 'Redbull', 120, 500, '2023-12-01'),
(18, 'Colors', 200, 300, '2023-12-01'),
(19, 'Book', 50, 500, '2024-01-25');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_price` double NOT NULL,
  `item_type_id` int(11) NOT NULL,
  `item_code` varchar(35) NOT NULL,
  `item_brand` varchar(50) NOT NULL,
  `item_grams` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_price`, `item_type_id`, `item_code`, `item_brand`, `item_grams`) VALUES
(3, 'Pen', 10, 1, 'Pen123', 'cello', '5'),
(4, 'Besan', 40, 4, 'be1', 'Besan', '1000'),
(5, 'casePen', 20, 3, 'Pen1234', 'Cello', '15'),
(6, 'Colors', 200, 1, 'Clr1', 'Camal', '100'),
(7, 'Book', 50, 1, 'b1', 'Classmate', '500'),
(8, 'Pen', 50, 1, '101', 'Test', '10'),
(10, 'Laptop', 20000, 3, '100', 'Dell', '1500'),
(11, 'Redbull', 120, 2, '070', 'Soft Drink', '250'),
(12, 'Ltk-h', 50, 3, 'Lt-50', 'Netsol', '10');

-- --------------------------------------------------------

--
-- Table structure for table `item_type`
--

CREATE TABLE `item_type` (
  `item_type_id` int(11) NOT NULL,
  `item_type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_type`
--

INSERT INTO `item_type` (`item_type_id`, `item_type_desc`) VALUES
(1, 'Stationary'),
(2, 'Food'),
(3, 'Medicines'),
(4, 'Grocery');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `item_code` varchar(35) NOT NULL,
  `generic_name` varchar(35) NOT NULL,
  `brand` varchar(35) NOT NULL,
  `gram` varchar(35) NOT NULL,
  `type` varchar(35) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `date_sold` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sales_id`, `item_code`, `generic_name`, `brand`, `gram`, `type`, `qty`, `price`, `date_sold`) VALUES
(1, '131313', 'sipons', 'Brand Ni Siya', '500ml', 'Tablet', 4, 3.5, '2017-03-22 22:03:36'),
(2, '12321', 'haha', '12321321', '1232213', 'Syrup', 2, 5.6, '2017-03-22 22:03:36'),
(3, '131313', 'sipons', 'Brand Ni Siya', '500ml', 'Tablet', 3, 3.5, '2017-03-22 22:07:38'),
(4, '131313', 'sipons', 'Brand Ni Siya', '500ml', 'Tablet', 1, 3.5, '2017-03-22 22:08:09'),
(5, '12321', 'haha', '12321321', '1232213', 'Syrup', 2, 5.6, '2017-03-22 22:08:09'),
(6, '12321', 'haha', '12321321', '1232213', 'Syrup', 1, 5.6, '2017-03-22 22:09:47'),
(7, '12321', 'haha', '12321321', '1232213', 'Syrup', 1, 5.6, '2017-03-22 22:09:47'),
(8, '131313', 'sipons', 'Brand Ni Siya', '500ml', 'Tablet', 1, 3.5, '2017-03-22 22:09:47'),
(9, '131313', 'sipons', 'Brand Ni Siya', '500ml', 'Tablet', 2, 3.5, '2017-03-22 22:10:11'),
(10, '12321', 'haha', '12321321', '1232213', 'Syrup', 1, 5.6, '2017-03-22 22:10:11'),
(11, '12321', 'Lala', '12321321', '1232213', 'Syrup', 1, 15, '2017-03-28 07:04:50'),
(12, '111', '111', '111', '11', 'Tablet', 2, 7.5, '2023-07-10 11:57:24'),
(13, '111', '111', '111', '11', 'Tablet', 10, 7.5, '2023-07-10 11:57:24'),
(14, 'Pen123', 'Pen', 'Cello', '15', 'Test', 10, 20, '2023-07-10 12:02:21'),
(15, 'Pen123', 'Pen', 'Cello', '15', 'Test', 5, 20, '2023-07-10 12:03:10'),
(16, 'Pen1234', 'casePen', 'Cello', '15', 'Test', 200, 20, '2023-07-12 13:22:42'),
(17, '12321', 'Lala', '12321321', '1232213', 'Syrup', 10, 15, '2023-07-12 13:22:42'),
(18, '12321', 'Lala', '12321321', '1232213', 'Syrup', 10, 15, '2023-07-19 12:00:37'),
(19, 'Pen1234', 'casePen', 'Cello', '15', 'Machinery', 10, 20, '2023-08-11 11:42:26'),
(20, 'T2', 'Test2', 'Test_b2', '500', 'Machinery', 100, 400, '2023-08-11 11:47:24'),
(21, 'Clr1', 'Colors', 'Camal', '100', 'Stationary', 20, 200, '2023-09-08 06:40:54'),
(22, 'Clr1', 'Colors', 'Camal', '100', 'Stationary', 7, 200, '2023-09-09 05:52:05'),
(23, 'Pen1234', 'casePen', 'Cello', '15', 'Machinery', 100, 20, '2023-09-10 14:44:02'),
(24, 'Clr1', 'Colors', 'Camal', '100', 'Stationary', 20, 200, '2023-09-10 14:44:02'),
(25, 'T2', 'Test2', 'Test_b2', '500', 'Machinery', 100, 400, '2023-09-10 14:44:02'),
(26, 'Clr1', 'Colors', 'Camal', '100', 'Stationary', 1, 200, '2023-09-12 13:09:04'),
(27, 'T2', 'Test2', 'Test_b2', '500', 'Machinery', 150, 400, '2023-09-12 13:09:04'),
(28, '070', 'Redbull', 'Soft Drink', '250', 'Food', 200, 120, '2023-09-12 13:09:04'),
(29, 'T2', 'Test2', 'Test_b2', '500', 'Machinery', 20, 400, '2023-09-12 15:01:24'),
(30, '070', 'Redbull', 'Soft Drink', '250', 'Food', 20, 120, '2023-09-12 15:01:24'),
(31, 'T2', 'Test2', 'Test_b2', '500', 'Machinery', 30, 400, '2023-09-12 15:03:53'),
(32, '070', 'Redbull', 'Soft Drink', '250', 'Food', 30, 120, '2023-09-12 15:03:53'),
(33, '070', 'Redbull', 'Soft Drink', '250', 'Food', 20, 120, '2023-09-15 04:04:44'),
(34, 'Lt-50', 'Ltk-h', 'Netsol', '10', 'Medicines', 200, 50, '2023-09-15 04:04:44'),
(35, 'be1', 'Besan', 'Besan', '1000', 'Grocery', 100, 40, '2023-09-15 04:53:56'),
(36, '070', 'Redbull', 'Soft Drink', '250', 'Food', 80, 120, '2023-09-15 04:53:56'),
(37, 'be1', 'Besan', 'Besan', '1000', 'Grocery', 100, 40, '2023-09-15 04:53:56'),
(38, 'Pen1234', 'casePen', 'Cello', '15', 'Medicines', 20, 20, '2023-09-15 04:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `stock_qty` int(11) NOT NULL,
  `stock_expiry` date NOT NULL,
  `stock_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stock_manufactured` date NOT NULL,
  `stock_purchased` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `item_id`, `stock_qty`, `stock_expiry`, `stock_added`, `stock_manufactured`, `stock_purchased`) VALUES
(12, 4, 0, '2023-07-06', '2023-07-19 12:00:34', '2023-07-15', '2023-07-20'),
(13, 6, 2, '2023-08-13', '2023-09-10 14:48:07', '2023-08-04', '2023-08-11'),
(14, 7, 100, '2023-08-18', '2023-09-12 15:07:24', '2023-08-04', '2023-08-11'),
(17, 11, 200, '2023-09-30', '2023-09-15 04:53:39', '2023-09-01', '2023-09-02'),
(18, 12, 0, '2023-09-14', '2023-09-15 04:04:40', '2023-08-15', '2023-08-18'),
(19, 4, 400, '2023-11-15', '2023-09-15 04:53:45', '2023-09-01', '2023-09-18'),
(21, 5, 180, '2023-11-15', '2023-09-15 04:53:52', '2023-08-30', '2023-09-08');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_account` varchar(50) NOT NULL,
  `user_pass` varchar(35) NOT NULL,
  `user_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_account`, `user_pass`, `user_type`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(2, 'admin2', '827ccb0eea8a706c4c34a16891f84e7b', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `expired`
--
ALTER TABLE `expired`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_type_id` (`item_type_id`);

--
-- Indexes for table `item_type`
--
ALTER TABLE `item_type`
  ADD PRIMARY KEY (`item_type_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expired`
--
ALTER TABLE `expired`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `item_type`
--
ALTER TABLE `item_type`
  MODIFY `item_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`item_type_id`) REFERENCES `item_type` (`item_type_id`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
