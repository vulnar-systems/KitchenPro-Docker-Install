-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 27, 2025 at 02:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kpro_empty_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `accNumber` varchar(20) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `isReceivable` tinyint(1) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`accNumber`, `name`, `isActive`, `isReceivable`, `status`, `type`, `createdBy`, `editedBy`, `createdOn`, `editedOn`) VALUES
('80010', 'Accounts Payable', 1, 0, NULL, NULL, 'homsyadmin', 'homsyadmin', '2021-02-14 13:21:20', '2021-02-14 13:21:20'),
('20000', 'AR City', 1, 1, NULL, NULL, 'homsyadmin', 'homsyadmin', '2015-01-27 18:39:01', '2015-01-27 18:39:01'),
('5678', 'AR Customer', 1, 1, NULL, NULL, 'homsyadmin', 'homsyadmin', '2015-01-27 18:30:55', '2015-01-27 18:30:55'),
('1234', 'Bank', 1, 0, '', NULL, 'homsyadmin', 'homsyadmin', '2015-01-27 18:30:55', '2021-12-18 11:25:21'),
('20100', 'Bar Revenue', 1, 0, NULL, NULL, 'homsyadmin', 'homsyadmin', '2021-01-08 18:14:06', '2021-01-08 18:14:06'),
('60010', 'COGS', 1, 0, NULL, NULL, 'homsyadmin', 'homsyadmin', '2021-01-08 18:56:09', '2021-01-08 18:56:09'),
('70010', 'Deposit Holding', 1, 0, NULL, NULL, 'homsyadmin', 'homsyadmin', '2021-02-14 13:15:16', '2021-02-14 13:15:16'),
('60050', 'Discount', 1, 0, NULL, NULL, 'homsyadmin', 'homsyadmin', '2021-02-14 13:12:36', '2021-02-14 13:12:36'),
('30000', 'Events Revenue', 1, 0, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-07-14 17:03:16', '2022-07-14 17:03:16'),
('4321', 'Expenses', 1, 0, NULL, NULL, 'homsyadmin', 'homsyadmin', '2021-12-17 15:46:37', '2021-12-17 15:46:37'),
('60000', 'Inventory', 1, 0, NULL, NULL, 'homsyadmin', 'homsyadmin', '2021-01-08 18:55:28', '2021-01-08 18:55:28'),
('50000', 'Kitchen Revenue', 1, 0, NULL, NULL, 'homsyadmin', 'sailor', '2015-09-15 22:20:12', '2021-04-21 08:19:35'),
('60020', 'Stock Adjustment', 1, 0, NULL, NULL, 'homsyadmin', 'homsyadmin', '2021-01-08 19:04:17', '2021-01-08 19:04:17'),
('332211', 'Tax', 1, 0, NULL, NULL, 'homsyadmin', 'homsyadmin', '2015-02-03 08:02:07', '2015-02-03 08:02:07'),
('90010', 'Tips', 1, 0, NULL, NULL, 'homsyadmin', 'homsyadmin', '2021-03-30 13:59:18', '2020-09-30 05:18:15');

-- --------------------------------------------------------

--
-- Table structure for table `accounttype`
--

CREATE TABLE `accounttype` (
  `type` varchar(10) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `advertimage`
--

CREATE TABLE `advertimage` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignedglaccounts`
--

CREATE TABLE `assignedglaccounts` (
  `itemCode` varchar(10) NOT NULL,
  `customerDebitAcc` varchar(40) DEFAULT NULL,
  `customerCreditAcc` varchar(40) DEFAULT NULL,
  `cityDebitAcc` varchar(40) DEFAULT NULL,
  `cityCreditAcc` varchar(40) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `assignedglaccounts`
--

INSERT INTO `assignedglaccounts` (`itemCode`, `customerDebitAcc`, `customerCreditAcc`, `cityDebitAcc`, `cityCreditAcc`, `createdBy`, `editedBy`, `createdOn`, `editedOn`) VALUES
('ACC', 'AR City', 'AR Customer', 'AR City', 'AR Customer', 'homsyadmin', 'homsyadmin', '2022-06-15 09:20:06', '2022-06-15 09:20:06'),
('CARD', 'Bank', 'AR Customer', 'Bank', 'AR City', 'homsyadmin', 'homsyadmin', '2022-06-15 09:20:58', '2022-06-15 09:20:58'),
('CASH', 'Bank', 'AR Customer', 'Bank', 'AR City', 'homsyadmin', 'homsyadmin', '2022-03-04 15:04:04', '2022-03-04 15:04:04'),
('COMP', 'Expenses', 'AR Customer', 'Expenses', 'AR City', 'homsyadmin', 'homsyadmin', '2022-03-05 09:23:11', '2022-03-05 09:23:11'),
('DEPOS', 'Deposit Holding', 'Bank', 'Deposit Holding', 'Bank', 'homsyadmin', 'homsyadmin', '2022-03-04 08:41:21', '2022-03-04 08:41:21'),
('DEPOSIT', 'Deposit Holding', 'Bank', 'Deposit Holding', 'Bank', 'homsyadmin', 'homsyadmin', '2022-03-04 08:41:55', '2022-03-04 08:41:55'),
('DISC', 'Discount', 'AR Customer', 'Discount', 'AR City', 'homsyadmin', 'homsyadmin', '2022-03-04 08:38:10', '2022-03-04 08:38:10'),
('EFT', 'Bank', 'AR Customer', 'Bank', 'AR City', 'homsyadmin', 'homsyadmin', '2022-03-04 15:03:28', '2022-03-04 15:03:28'),
('GPO', 'Bank', 'AR Customer', 'Bank', 'AR City', 'homsyadmin', 'homsyadmin', '2022-03-04 15:02:06', '2022-03-04 15:02:06'),
('TIP', 'Tips', 'Bank', 'Tips', 'Bank', 'homsyadmin', 'homsyadmin', '2022-03-04 08:36:40', '2022-03-04 08:36:40'),
('VAT', 'AR Customer', 'Tax', 'AR City', 'Tax', 'homsyadmin', 'homsyadmin', '2025-11-25 12:20:56', '2025-11-25 12:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `code` varchar(10) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buffet`
--

CREATE TABLE `buffet` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `dayID` int(11) DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buffetitem`
--

CREATE TABLE `buffetitem` (
  `id` int(11) NOT NULL,
  `buffetID` int(11) DEFAULT NULL,
  `stockItemCode` varchar(10) DEFAULT NULL,
  `qty` double(10,2) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` varchar(16) DEFAULT NULL,
  `editedOn` timestamp NULL DEFAULT NULL,
  `editedBy` varchar(16) DEFAULT NULL,
  `locationID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `cardNumber` varchar(16) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `expiry` varchar(7) DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cityinvoice`
--

CREATE TABLE `cityinvoice` (
  `invoiceID` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `name` varchar(512) DEFAULT NULL,
  `cityAcc` varchar(10) DEFAULT NULL,
  `purchaseOrder` varchar(64) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cityinvoicesaleitem`
--

CREATE TABLE `cityinvoicesaleitem` (
  `itemID` int(11) NOT NULL,
  `invoiceID` int(11) NOT NULL,
  `saleID` int(11) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `type` varchar(1) DEFAULT NULL,
  `shift` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cityinvoicesaleitemtax`
--

CREATE TABLE `cityinvoicesaleitemtax` (
  `itemID` int(11) NOT NULL,
  `invoiceID` int(11) NOT NULL,
  `taxCode` varchar(10) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cityitemcodeprice`
--

CREATE TABLE `cityitemcodeprice` (
  `itemCode` varchar(10) NOT NULL,
  `cityAcc` varchar(10) NOT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cityledger`
--

CREATE TABLE `cityledger` (
  `code` varchar(10) NOT NULL,
  `accNumber` varchar(20) DEFAULT NULL,
  `contactName` varchar(32) DEFAULT NULL,
  `creditLimit` int(11) DEFAULT NULL,
  `mobile` varchar(16) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `country` varchar(256) DEFAULT NULL,
  `address1` varchar(128) DEFAULT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `accName` varchar(64) DEFAULT NULL,
  `accType` varchar(10) DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL,
  `discount` decimal(4,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `citypaymentcredit`
--

CREATE TABLE `citypaymentcredit` (
  `id` int(11) NOT NULL,
  `invoiceID` int(11) DEFAULT NULL,
  `payCode` varchar(10) DEFAULT NULL,
  `chqNumber` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `cityAcc` varchar(10) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `code` varchar(10) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `tradingName` varchar(128) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `phone2` varchar(16) DEFAULT NULL,
  `mobile` varchar(32) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `website` varchar(256) DEFAULT NULL,
  `country` varchar(256) DEFAULT NULL,
  `address1` varchar(128) DEFAULT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `vatNumber` varchar(30) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL,
  `bankName` varchar(64) DEFAULT NULL,
  `bankAcc` varchar(64) DEFAULT NULL,
  `bankBranchCode` varchar(32) DEFAULT NULL,
  `bankBranchName` varchar(128) DEFAULT NULL,
  `bankSwiftCode` varchar(128) DEFAULT NULL,
  `bankAccName` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`code`, `name`, `tradingName`, `phone`, `phone2`, `mobile`, `fax`, `email`, `website`, `country`, `address1`, `address2`, `vatNumber`, `city`, `zip`, `createdBy`, `editedBy`, `createdOn`, `editedOn`, `bankName`, `bankAcc`, `bankBranchCode`, `bankBranchName`, `bankSwiftCode`, `bankAccName`) VALUES
('HOMSY', 'Name', 'Homsy Kitchen', '+267 653 0004', NULL, NULL, NULL, '', NULL, NULL, NULL, '', '', NULL, '0000', 'homsyadmin', 'homsyadmin', '2025-11-24 20:33:03', '2015-01-26 15:01:52', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `code` varchar(10) NOT NULL,
  `openingCash` int(11) DEFAULT 0,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL,
  `hostName` varchar(64) DEFAULT NULL,
  `location` int(11) DEFAULT NULL,
  `locationFood` int(11) DEFAULT NULL,
  `locationBar` int(11) DEFAULT NULL,
  `locationOther` int(11) DEFAULT NULL,
  `canOpenDrawer` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`code`, `openingCash`, `createdBy`, `editedBy`, `createdOn`, `editedOn`, `hostName`, `location`, `locationFood`, `locationBar`, `locationOther`, `canOpenDrawer`) VALUES
('POS1', 0, 'homsyadmin', 'homsyadmin', '2025-11-26 16:08:13', '2025-11-26 16:08:13', 'fedora', NULL, 2, 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currencyunit`
--

CREATE TABLE `currencyunit` (
  `unit` decimal(5,2) NOT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `currencyunit`
--

INSERT INTO `currencyunit` (`unit`, `createdBy`, `editedBy`, `createdOn`, `editedOn`) VALUES
(0.05, 'homsyadmin', 'homsyadmin', '2015-01-21 08:29:12', '2015-01-21 08:29:12'),
(0.10, 'homsyadmin', 'homsyadmin', '2015-01-21 08:29:13', '2015-01-21 08:29:13'),
(0.25, 'homsyadmin', 'homsyadmin', '2015-01-21 08:29:13', '2015-01-21 08:29:13'),
(0.50, 'homsyadmin', 'homsyadmin', '2015-01-21 08:29:13', '2015-01-21 08:29:13'),
(1.00, 'homsyadmin', 'homsyadmin', '2015-01-21 08:29:13', '2015-01-21 08:29:13'),
(2.00, 'homsyadmin', 'homsyadmin', '2015-01-21 08:29:13', '2015-01-21 08:29:13'),
(5.00, 'homsyadmin', 'homsyadmin', '2015-01-21 08:29:13', '2015-01-21 08:29:13'),
(10.00, 'homsyadmin', 'homsyadmin', '2015-01-21 08:29:13', '2015-01-21 08:29:13'),
(20.00, 'homsyadmin', 'homsyadmin', '2015-01-21 08:29:13', '2015-01-21 08:29:13'),
(50.00, 'homsyadmin', 'homsyadmin', '2015-01-21 08:29:13', '2015-01-21 08:29:13'),
(100.00, 'homsyadmin', 'homsyadmin', '2015-01-21 08:29:14', '2015-01-21 08:29:14'),
(200.00, 'homsyadmin', 'homsyadmin', '2015-01-21 08:29:14', '2015-01-21 08:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `firstName` varchar(128) DEFAULT NULL,
  `lastName` varchar(128) DEFAULT NULL,
  `salutation` varchar(10) DEFAULT NULL,
  `mobile` varchar(16) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `idNumber` varchar(64) DEFAULT NULL,
  `country` varchar(256) DEFAULT NULL,
  `address1` varchar(128) DEFAULT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `company` varchar(32) DEFAULT NULL,
  `contactMethod` varchar(10) DEFAULT NULL,
  `customerType` varchar(10) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL,
  `flag` varchar(10) DEFAULT 'OK'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customerstatus`
--

CREATE TABLE `customerstatus` (
  `code` varchar(10) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `foreColor` varchar(12) DEFAULT NULL,
  `backColor` varchar(12) DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customertype`
--

CREATE TABLE `customertype` (
  `code` varchar(10) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `grouping` varchar(10) DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `isActive` varchar(3) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customertype`
--

INSERT INTO `customertype` (`code`, `name`, `description`, `grouping`, `sortOrder`, `isActive`, `createdBy`, `editedBy`, `createdOn`, `editedOn`) VALUES
('CORP', 'Corporate', 'Companies', NULL, 2, '1', 'homsyadmin', 'homsyadmin', '2015-04-16 16:55:29', '2015-04-16 16:55:30'),
('INDIE', 'Individual', 'Individual', NULL, 1, '1', 'homsyadmin', 'homsyadmin', '2014-12-30 19:33:52', '2014-12-30 19:33:52');

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE `day` (
  `id` int(11) NOT NULL,
  `start` timestamp NOT NULL DEFAULT current_timestamp(),
  `end` datetime DEFAULT NULL,
  `closedBy` varchar(16) DEFAULT NULL,
  `openedBy` varchar(16) DEFAULT NULL,
  `openComment` text DEFAULT NULL,
  `closeComment` text DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dayfund`
--

CREATE TABLE `dayfund` (
  `dayID` int(11) NOT NULL,
  `fundCode` varchar(10) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `code` varchar(10) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `scaleQty` tinyint(4) NOT NULL DEFAULT 0,
  `requireDeposit` tinyint(4) NOT NULL DEFAULT 0,
  `depositPercent` double NOT NULL DEFAULT 0,
  `isolate` tinyint(4) NOT NULL DEFAULT 0,
  `menuColor` varchar(10) DEFAULT NULL,
  `foreColor` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`code`, `name`, `createdBy`, `editedBy`, `createdOn`, `editedOn`, `sortOrder`, `scaleQty`, `requireDeposit`, `depositPercent`, `isolate`, `menuColor`, `foreColor`) VALUES
('BFAST', 'Breakfast Corner', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 22, 0, 0, 0, 0, '#e65100', '#FFFFFF'),
('CAMEL_BAR', 'Camel Bar Snacks', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 2, 0, 0, 0, 0, '#0a6ebd', '#FFFFFF'),
('CAMEL_CCK', 'Camel Cocktails', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 1, 0, 0, 0, 0, '#1a4684', '#FFFFFF'),
('CATERING', 'Catering Corner', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 24, 0, 0, 0, 0, '#2e7d32', '#FFFFFF'),
('CHF_M_DSHS', 'Chef Kebalepiles Main Dishes', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 19, 0, 0, 0, 0, '#ff8f00', '#FFFFFF'),
('CHKN_WINGS', 'Maubelo Chicken Wings', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 18, 0, 0, 0, 0, '#5d4037', '#FFFFFF'),
('CLASSIC_C', 'Classic Ciders 300ml', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 3, 0, 0, 0, 0, '#6a1b9a', '#FFFFFF'),
('CLA_WSKIES', 'Classic Whiskies', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 14, 0, 0, 0, 0, '#004d40', '#FFFFFF'),
('COLD_BEERS', 'Ice Cold Beers 330ml', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 11, 0, 0, 0, 0, '#283593', '#FFFFFF'),
('DSSERTS', 'Desserts', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 25, 0, 0, 0, 0, '#6a1b9a', '#FFFFFF'),
('JUICES', 'Juices 300ml', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 4, 0, 0, 0, 0, '#00897b', '#FFFFFF'),
('LIQUEURS', 'Liqueurs', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 9, 0, 0, 0, 0, '#3949ab', '#FFFFFF'),
('MAUTL_DRKS', 'Mautloelos Finest Drinks', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 22:47:21', 22, 0, 0, 0, 0, '#a9f298', '#FFFFFF'),
('MAU_DRNKS', 'Maubelos Finest Drinks', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 16, 0, 0, 0, 0, '#00695c', '#FFFFFF'),
('M_MIXERS', 'Maleshe Mixers 200ml', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 8, 0, 0, 0, 0, '#4e342e', '#FFFFFF'),
('PREM_BEERS', 'Premium Cold Beers', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 12, 0, 0, 0, 0, '#7b1fa2', '#FFFFFF'),
('RED_WINES', 'Red Wines 750ml', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 5, 0, 0, 0, 0, '#c62828', '#FFFFFF'),
('SIDES', 'Sides', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 20, 0, 0, 0, 0, '#d84315', '#FFFFFF'),
('SM_ST_WNS', 'Semi-Sweet Wines 750ml', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 15, 0, 0, 0, 0, '#512da8', '#FFFFFF'),
('SNDWCHES', 'Sandwiches', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 21, 0, 0, 0, 0, '#1b5e20', '#FFFFFF'),
('SOFT_DRNKS', 'Soft Drinks Fizzy 300ml', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 13, 0, 0, 0, 0, '#1565c0', '#FFFFFF'),
('SP_GINS', 'Special Gins', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 22:47:41', 17, 0, 0, 0, 0, '#c2f4fc', '#FFFFFF'),
('S_SMTHIES', 'Shakes & Smoothies', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 7, 0, 0, 0, 0, '#ef6c00', '#FFFFFF'),
('TIZERS', 'Tizers of Kgalagadi', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 10, 0, 0, 0, 0, '#0277bd', '#FFFFFF'),
('T_COFFEE', 'Tea or Coffee', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 23, 0, 0, 0, 0, '#880e4f', '#FFFFFF'),
('WHIT_WNS', 'White Wines 750ml', 'homsyadmin', 'homsyadmin', '2025-11-24 19:50:15', '2025-11-24 19:50:15', 6, 0, 0, 0, 0, '#ad1457', '#FFFFFF');

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `itemCode` varchar(10) NOT NULL,
  `stockItem` varchar(10) NOT NULL,
  `qty` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `itemcode`
--

CREATE TABLE `itemcode` (
  `code` varchar(10) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `isCard` tinyint(1) DEFAULT NULL,
  `system` int(11) DEFAULT NULL,
  `sortOrder` int(11) DEFAULT 128,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL,
  `price` int(11) DEFAULT 0,
  `department` varchar(10) DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL,
  `pmsCode` varchar(10) DEFAULT NULL,
  `belongsTo` varchar(10) DEFAULT 'bar'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `itemcode`
--

INSERT INTO `itemcode` (`code`, `name`, `type`, `isActive`, `isCard`, `system`, `sortOrder`, `createdBy`, `editedBy`, `createdOn`, `editedOn`, `price`, `department`, `unit`, `pmsCode`, `belongsTo`) VALUES
('ACC', 'Account', 'PAYMENT', 1, 0, NULL, 15, 'homsyadmin', 'homsyadmin', '2022-06-15 09:19:14', '2022-06-15 09:19:14', 0, NULL, '', NULL, 'bar'),
('CARD', 'Card', 'PAYMENT', 1, 1, NULL, 3, 'homsyadmin', 'homsyadmin', '2022-03-04 14:59:09', '2022-03-05 09:22:14', 0, NULL, '', NULL, 'bar'),
('CASH', 'Cash', 'PAYMENT', 1, 0, NULL, 1, 'homsyadmin', 'homsyadmin', '2022-03-04 14:59:23', '2022-03-05 13:40:45', 0, NULL, '', NULL, 'bar'),
('COMP', 'Complimentary', 'PAYMENT', 1, 0, NULL, 5, 'homsyadmin', 'homsyadmin', '2022-03-05 09:22:47', '2022-03-05 09:22:47', 0, NULL, '', NULL, 'bar'),
('DEPOS', 'Deposit', 'SPECIAL', 1, NULL, NULL, 6, 'homsyadmin', 'homsyadmin', '2022-03-04 08:40:27', '2022-03-04 08:40:27', 0, NULL, '', NULL, 'bar'),
('DEPOSIT', 'Deposit', 'SPECIAL', 1, NULL, NULL, 2, 'homsyadmin', 'homsyadmin', '2022-03-04 08:40:45', '2022-03-04 08:40:45', 0, NULL, '', NULL, 'bar'),
('DISC', 'Discount', 'SPECIAL', 1, NULL, NULL, 3, 'homsyadmin', 'homsyadmin', '2022-03-04 08:37:23', '2022-03-04 08:37:23', 0, NULL, '', NULL, 'bar'),
('EFT', 'EFT', 'PAYMENT', 1, 0, NULL, 4, 'homsyadmin', 'homsyadmin', '2022-03-04 14:59:45', '2022-03-04 14:59:45', 0, NULL, '', NULL, 'bar'),
('GPO', 'GPO', 'PAYMENT', 1, 0, NULL, 7, 'homsyadmin', 'homsyadmin', '2022-03-04 15:00:24', '2022-03-04 15:00:24', 0, NULL, '', NULL, 'bar'),
('ITC0001', 'Cosmopolitan', 'CHARGE', 1, NULL, NULL, 1, 'homsyadmin', 'homsyadmin', '2025-11-24 21:52:45', '2025-11-24 21:52:45', 5000, 'CAMEL_CCK', '', 'BEV', 'bar'),
('ITC0002', 'The Camel Kick', 'CHARGE', 1, NULL, NULL, 2, 'homsyadmin', 'homsyadmin', '2025-11-24 21:57:05', '2025-11-24 21:57:05', 5000, 'CAMEL_CCK', '', 'BEV', 'bar'),
('ITC0003', 'Simba chips', 'CHARGE', 1, NULL, NULL, 3, 'homsyadmin', 'homsyadmin', '2025-11-24 21:59:01', '2025-11-25 13:33:52', 600, 'CAMEL_BAR', '', 'BEV', 'bar'),
('ITC0004', 'Peanuts', 'CHARGE', 1, NULL, NULL, 4, 'homsyadmin', 'homsyadmin', '2025-11-24 22:01:21', '2025-11-24 22:01:21', 600, 'CAMEL_BAR', '', 'BEV', 'bar'),
('ITC0005', 'Savanna Dry 330ml', 'CHARGE', 1, NULL, NULL, 5, 'homsyadmin', 'homsyadmin', '2025-11-24 22:02:42', '2025-11-24 22:02:42', 2500, 'CLASSIC_C', '', 'BEV', 'bar'),
('ITC0006', 'Hunters Gold 330ml', 'CHARGE', 1, NULL, NULL, 6, 'homsyadmin', 'homsyadmin', '2025-11-24 22:03:22', '2025-11-24 22:03:22', 2500, 'CLASSIC_C', '', 'BEV', 'bar'),
('ITC0007', 'Hunters Dry 330ml', 'CHARGE', 1, NULL, NULL, 7, 'homsyadmin', 'homsyadmin', '2025-11-24 22:03:50', '2025-11-24 22:03:50', 2500, 'CLASSIC_C', '', 'BEV', 'bar'),
('ITC0008', 'Strongbow Apple Cider 330ml', 'CHARGE', 1, NULL, NULL, 8, 'homsyadmin', 'homsyadmin', '2025-11-24 22:04:35', '2025-11-24 22:04:35', 2500, 'CLASSIC_C', '', 'BEV', 'bar'),
('ITC0009', 'Hunters Export 330ml', 'CHARGE', 1, NULL, NULL, 9, 'homsyadmin', 'homsyadmin', '2025-11-24 22:05:07', '2025-11-24 22:05:07', 2500, 'CLASSIC_C', '', 'BEV', 'bar'),
('ITC0010', 'Mango & Orange 330ml', 'CHARGE', 1, NULL, NULL, 10, 'homsyadmin', 'homsyadmin', '2025-11-24 22:06:00', '2025-11-24 22:06:00', 1200, 'JUICES', '', 'BEV', 'bar'),
('ITC0011', 'Red Grape 330ml', 'CHARGE', 1, NULL, NULL, 11, 'homsyadmin', 'homsyadmin', '2025-11-24 22:06:44', '2025-11-24 22:06:44', 1200, 'JUICES', '', 'BEV', 'bar'),
('ITC0012', 'Berry Blaze 330ml', 'CHARGE', 1, NULL, NULL, 12, 'homsyadmin', 'homsyadmin', '2025-11-24 22:07:23', '2025-11-24 22:07:23', 1200, 'JUICES', '', 'BEV', 'bar'),
('ITC0013', 'Cranberry Cooler 330ml', 'CHARGE', 1, NULL, NULL, 13, 'homsyadmin', 'homsyadmin', '2025-11-24 22:07:49', '2025-11-24 22:07:49', 1200, 'JUICES', '', 'BEV', 'bar'),
('ITC0014', 'Peach & Orange 330ml', 'CHARGE', 1, NULL, NULL, 14, 'homsyadmin', 'homsyadmin', '2025-11-24 22:08:35', '2025-11-24 22:08:35', 1200, 'JUICES', '', 'BEV', 'bar'),
('ITC0015', 'Orange 330ml', 'CHARGE', 1, NULL, NULL, 15, 'homsyadmin', 'homsyadmin', '2025-11-24 22:09:02', '2025-11-24 22:09:02', 1200, 'JUICES', '', 'BEV', 'bar'),
('ITC0016', 'Merlot 750ml', 'CHARGE', 1, NULL, NULL, 16, 'homsyadmin', 'homsyadmin', '2025-11-24 22:09:57', '2025-11-24 22:12:49', 20000, 'RED_WINES', '', 'BEV', 'bar'),
('ITC0017', 'Pinotage   750ml', 'CHARGE', 1, NULL, NULL, 17, 'homsyadmin', 'homsyadmin', '2025-11-24 22:10:27', '2025-11-24 22:13:06', 20000, 'RED_WINES', '', 'BEV', 'bar'),
('ITC0018', 'Cab Sauvignon 750ml', 'CHARGE', 1, NULL, NULL, 18, 'homsyadmin', 'homsyadmin', '2025-11-24 22:11:11', '2025-11-24 22:13:29', 20000, 'RED_WINES', '', 'BEV', 'bar'),
('ITC0019', 'Chardonnay 750ml', 'CHARGE', 1, NULL, NULL, 19, 'homsyadmin', 'homsyadmin', '2025-11-24 22:12:20', '2025-11-24 22:14:01', 15000, 'WHIT_WNS', '', 'BEV', 'bar'),
('ITC0020', 'Sauvignon Blanc 750ml', 'CHARGE', 1, NULL, NULL, 20, 'homsyadmin', 'homsyadmin', '2025-11-24 22:14:32', '2025-11-24 22:14:32', 15000, 'WHIT_WNS', '', 'BEV', 'bar'),
('ITC0021', 'Pinotage   750ml', 'CHARGE', 1, NULL, NULL, 21, 'homsyadmin', 'homsyadmin', '2025-11-24 22:15:03', '2025-11-24 22:15:03', 15000, 'WHIT_WNS', '', 'BEV', 'bar'),
('ITC0022', 'Cortese 750ml', 'CHARGE', 1, NULL, NULL, 22, 'homsyadmin', 'homsyadmin', '2025-11-24 22:15:30', '2025-11-24 22:15:30', 15000, 'WHIT_WNS', '', 'BEV', 'bar'),
('ITC0023', 'Dinnys Tasty Chocolate', 'CHARGE', 1, NULL, NULL, 23, 'homsyadmin', 'homsyadmin', '2025-11-24 22:16:04', '2025-11-24 22:16:04', 5000, 'S_SMTHIES', '', 'BEV', 'bar'),
('ITC0024', 'Strawberry', 'CHARGE', 1, NULL, NULL, 24, 'homsyadmin', 'homsyadmin', '2025-11-24 22:16:39', '2025-11-24 22:16:39', 5000, 'S_SMTHIES', '', 'BEV', 'bar'),
('ITC0025', 'Plain', 'CHARGE', 1, NULL, NULL, 25, 'homsyadmin', 'homsyadmin', '2025-11-24 22:17:16', '2025-11-24 22:17:16', 5000, 'S_SMTHIES', '', 'BEV', 'bar'),
('ITC0026', 'Tonic Water 200ml', 'CHARGE', 1, NULL, NULL, 26, 'homsyadmin', 'homsyadmin', '2025-11-24 22:18:55', '2025-11-24 22:18:55', 1200, 'M_MIXERS', '', 'BEV', 'bar'),
('ITC0027', 'Soda Water 200ml', 'CHARGE', 1, NULL, NULL, 27, 'homsyadmin', 'homsyadmin', '2025-11-24 22:19:30', '2025-11-24 22:19:30', 1200, 'M_MIXERS', '', 'BEV', 'bar'),
('ITC0028', 'Ginger Ale 200ml', 'CHARGE', 1, NULL, NULL, 28, 'homsyadmin', 'homsyadmin', '2025-11-24 22:20:17', '2025-11-24 22:20:17', 1200, 'M_MIXERS', '', 'BEV', 'bar'),
('ITC0029', 'Lemonade 200ml', 'CHARGE', 1, NULL, NULL, 29, 'homsyadmin', 'homsyadmin', '2025-11-24 22:21:14', '2025-11-24 22:21:14', 1200, 'M_MIXERS', '', 'BEV', 'bar'),
('ITC0030', 'Dry Lemon 200ml', 'CHARGE', 1, NULL, NULL, 30, 'homsyadmin', 'homsyadmin', '2025-11-24 22:22:07', '2025-11-24 22:22:07', 1200, 'M_MIXERS', '', 'BEV', 'bar'),
('ITC0031', 'Oudemester', 'CHARGE', 1, NULL, NULL, 31, 'homsyadmin', 'homsyadmin', '2025-11-24 22:22:56', '2025-11-24 22:22:56', 1500, 'LIQUEURS', '', 'BEV', 'bar'),
('ITC0032', 'Creamy Amarula (per tot)', 'CHARGE', 1, NULL, NULL, 32, 'homsyadmin', 'homsyadmin', '2025-11-24 22:23:26', '2025-11-24 22:23:26', 1500, 'LIQUEURS', '', 'BEV', 'bar'),
('ITC0033', 'Grapetizer', 'CHARGE', 1, NULL, NULL, 33, 'homsyadmin', 'homsyadmin', '2025-11-24 22:24:08', '2025-11-24 22:24:08', 1800, 'TIZERS', '', 'BEV', 'bar'),
('ITC0034', 'Appletizer', 'CHARGE', 1, NULL, NULL, 34, 'homsyadmin', 'homsyadmin', '2025-11-24 22:24:48', '2025-11-24 22:24:48', 1800, 'TIZERS', '', 'BEV', 'bar'),
('ITC0035', 'Castle Lite 330ml', 'CHARGE', 1, NULL, NULL, 35, 'homsyadmin', 'homsyadmin', '2025-11-24 22:26:11', '2025-11-24 22:26:11', 2000, 'COLD_BEERS', '', 'BEV', 'bar'),
('ITC0036', 'St Louis 330ml', 'CHARGE', 1, NULL, NULL, 36, 'homsyadmin', 'homsyadmin', '2025-11-24 22:26:58', '2025-11-24 22:26:58', 2000, 'COLD_BEERS', '', 'BEV', 'bar'),
('ITC0037', 'Carling Black Label 330ml', 'CHARGE', 1, NULL, NULL, 37, 'homsyadmin', 'homsyadmin', '2025-11-24 22:27:43', '2025-11-24 22:27:43', 2000, 'COLD_BEERS', '', 'BEV', 'bar'),
('ITC0038', 'Klipdrift & Kola 330ml', 'CHARGE', 1, NULL, NULL, 38, 'homsyadmin', 'homsyadmin', '2025-11-24 22:28:26', '2025-11-25 14:22:27', 2000, 'COLD_BEERS', '', 'BEV', 'bar'),
('ITC0039', 'Amstel Lite 330ml', 'CHARGE', 1, NULL, NULL, 39, 'homsyadmin', 'homsyadmin', '2025-11-24 22:29:06', '2025-11-24 22:29:06', 2000, 'COLD_BEERS', '', 'BEV', 'bar'),
('ITC0040', 'Heineken', 'CHARGE', 1, NULL, NULL, 40, 'homsyadmin', 'homsyadmin', '2025-11-24 22:29:54', '2025-11-24 22:29:54', 2500, 'PREM_BEERS', '', 'BEV', 'bar'),
('ITC0041', 'Windhoek Lager  ', 'CHARGE', 1, NULL, NULL, 41, 'homsyadmin', 'homsyadmin', '2025-11-24 22:30:25', '2025-11-24 22:30:25', 2500, 'PREM_BEERS', '', 'BEV', 'bar'),
('ITC0042', 'Coke 330ml', 'CHARGE', 1, NULL, NULL, 42, 'homsyadmin', 'homsyadmin', '2025-11-24 22:32:56', '2025-11-24 22:32:56', 1200, 'SOFT_DRNKS', '', 'BEV', 'bar'),
('ITC0043', 'Fanta Orange 330ml', 'CHARGE', 1, NULL, NULL, 43, 'homsyadmin', 'homsyadmin', '2025-11-24 22:33:28', '2025-11-24 22:33:28', 1200, 'SOFT_DRNKS', '', 'BEV', 'bar'),
('ITC0044', 'Fanta Grape 330ml', 'CHARGE', 1, NULL, NULL, 44, 'homsyadmin', 'homsyadmin', '2025-11-24 22:34:03', '2025-11-24 22:34:03', 1200, 'SOFT_DRNKS', '', 'BEV', 'bar'),
('ITC0045', 'Sprite 330ml', 'CHARGE', 1, NULL, NULL, 45, 'homsyadmin', 'homsyadmin', '2025-11-24 22:34:33', '2025-11-24 22:34:33', 1200, 'SOFT_DRNKS', '', 'BEV', 'bar'),
('ITC0046', 'Stoney Ginger 330ml', 'CHARGE', 1, NULL, NULL, 46, 'homsyadmin', 'homsyadmin', '2025-11-24 22:35:13', '2025-11-24 22:35:13', 1200, 'SOFT_DRNKS', '', 'BEV', 'bar'),
('ITC0047', 'Iron Brew 330ml', 'CHARGE', 1, NULL, NULL, 47, 'homsyadmin', 'homsyadmin', '2025-11-24 22:35:54', '2025-11-24 22:35:54', 1200, 'SOFT_DRNKS', '', 'BEV', 'bar'),
('ITC0048', 'Pine Nut 330ml', 'CHARGE', 1, NULL, NULL, 48, 'homsyadmin', 'homsyadmin', '2025-11-24 22:36:28', '2025-11-24 22:36:28', 1200, 'SOFT_DRNKS', '', 'BEV', 'bar'),
('ITC0049', 'Jack Daniels', 'CHARGE', 1, NULL, NULL, 49, 'homsyadmin', 'homsyadmin', '2025-11-24 22:37:48', '2025-11-24 22:37:48', 2500, 'CLA_WSKIES', '', 'BEV', 'bar'),
('ITC0050', 'J & B', 'CHARGE', 1, NULL, NULL, 50, 'homsyadmin', 'homsyadmin', '2025-11-24 22:38:55', '2025-11-24 22:38:55', 2500, 'CLA_WSKIES', '', 'BEV', 'bar'),
('ITC0051', 'Bells', 'CHARGE', 1, NULL, NULL, 51, 'homsyadmin', 'homsyadmin', '2025-11-24 22:39:29', '2025-11-24 22:39:29', 2500, 'CLA_WSKIES', '', 'BEV', 'bar'),
('ITC0052', 'Jameson (per tot)', 'CHARGE', 1, NULL, NULL, 52, 'homsyadmin', 'homsyadmin', '2025-11-24 22:40:26', '2025-11-24 22:40:26', 2500, 'CLA_WSKIES', '', 'BEV', 'bar'),
('ITC0053', 'Fourth Street Rose 750ml', 'CHARGE', 1, NULL, NULL, 53, 'homsyadmin', 'homsyadmin', '2025-11-24 22:42:04', '2025-11-24 22:42:04', 15000, 'SM_ST_WNS', '', 'BEV', 'bar'),
('ITC0054', 'Nederburg Rose 750ml', 'CHARGE', 1, NULL, NULL, 54, 'homsyadmin', 'homsyadmin', '2025-11-24 22:42:37', '2025-11-24 22:42:37', 15000, 'SM_ST_WNS', '', 'BEV', 'bar'),
('ITC0055', 'Lyric 750ml', 'CHARGE', 1, NULL, NULL, 55, 'homsyadmin', 'homsyadmin', '2025-11-24 22:43:24', '2025-11-24 22:43:24', 15000, 'SM_ST_WNS', '', 'BEV', 'bar'),
('ITC0057', 'Malawi Shandy', 'CHARGE', 1, NULL, NULL, 57, 'homsyadmin', 'homsyadmin', '2025-11-24 22:48:56', '2025-11-24 22:48:56', 3000, 'MAUTL_DRKS', '', 'BEV', 'bar'),
('ITC0058', 'Rock Shandy', 'CHARGE', 1, NULL, NULL, 58, 'homsyadmin', 'homsyadmin', '2025-11-24 22:49:41', '2025-11-24 22:49:41', 3000, 'MAUTL_DRKS', '', 'BEV', 'bar'),
('ITC0059', 'Maubelo Sunset', 'CHARGE', 1, NULL, NULL, 59, 'homsyadmin', 'homsyadmin', '2025-11-24 22:50:18', '2025-11-24 22:50:18', 3000, 'MAUTL_DRKS', '', 'BEV', 'bar'),
('ITC0060', 'Smirnoff Vodka', 'CHARGE', 1, NULL, NULL, 60, 'homsyadmin', 'homsyadmin', '2025-11-24 22:51:06', '2025-11-24 22:51:06', 1200, 'SP_GINS', '', 'BEV', 'bar'),
('ITC0061', 'Gordonâ€™s Gin (per tot)', 'CHARGE', 1, NULL, NULL, 61, 'homsyadmin', 'homsyadmin', '2025-11-24 22:51:53', '2025-11-24 22:51:53', 1200, 'SP_GINS', '', 'BEV', 'bar'),
('ITC0062', 'Maubelo Chicken Wings', 'CHARGE', 1, NULL, NULL, 62, 'homsyadmin', 'homsyadmin', '2025-11-24 23:00:47', '2025-11-24 23:00:47', 7500, 'CHKN_WINGS', '', 'FOOD', 'kitchen'),
('ITC0063', 'King of the Sea', 'CHARGE', 1, NULL, NULL, 63, 'homsyadmin', 'homsyadmin', '2025-11-25 08:50:51', '2025-11-25 08:50:51', 19900, 'CHF_M_DSHS', '', 'FOOD', 'kitchen'),
('ITC0064', 'Chef Tabeloâ€™s Bolognaise', 'CHARGE', 1, NULL, NULL, 64, 'homsyadmin', 'homsyadmin', '2025-11-25 08:51:17', '2025-11-25 08:51:17', 8000, 'CHF_M_DSHS', '', 'FOOD', 'kitchen'),
('ITC0065', 'Tsabong Special Ribs', 'CHARGE', 1, NULL, NULL, 65, 'homsyadmin', 'homsyadmin', '2025-11-25 08:51:44', '2025-11-25 08:51:44', 12000, 'CHF_M_DSHS', '', 'FOOD', 'kitchen'),
('ITC0066', 'Colonel Gaddafi Special', 'CHARGE', 1, NULL, NULL, 66, 'homsyadmin', 'homsyadmin', '2025-11-25 08:52:10', '2025-11-25 13:18:31', 12000, 'CHF_M_DSHS', '', 'FOOD', 'kitchen'),
('ITC0067', 'Chef Rheo Steak', 'CHARGE', 1, NULL, NULL, 67, 'homsyadmin', 'homsyadmin', '2025-11-25 08:52:36', '2025-11-25 13:19:00', 11000, 'CHF_M_DSHS', '', 'FOOD', 'kitchen'),
('ITC0068', 'Pizzas Large', 'CHARGE', 1, NULL, NULL, 68, 'homsyadmin', 'homsyadmin', '2025-11-25 08:53:23', '2025-11-25 08:53:23', 12000, 'CHF_M_DSHS', '', 'FOOD', 'kitchen'),
('ITC0069', 'Pizzas Medium', 'CHARGE', 1, NULL, NULL, 69, 'homsyadmin', 'homsyadmin', '2025-11-25 08:53:46', '2025-11-25 08:53:46', 9000, 'CHF_M_DSHS', '', 'FOOD', 'kitchen'),
('ITC0070', 'The Park Sea Robber', 'CHARGE', 1, NULL, NULL, 70, 'homsyadmin', 'homsyadmin', '2025-11-25 08:54:16', '2025-11-25 08:54:16', 14000, 'CHF_M_DSHS', '', 'FOOD', 'kitchen'),
('ITC0071', 'Goat or Lamb', 'CHARGE', 1, NULL, NULL, 71, 'homsyadmin', 'homsyadmin', '2025-11-25 08:54:41', '2025-11-25 08:54:41', 11000, 'CHF_M_DSHS', '', 'FOOD', 'kitchen'),
('ITC0072', 'Finger Lickin Platter', 'CHARGE', 1, NULL, NULL, 72, 'homsyadmin', 'homsyadmin', '2025-11-25 08:55:10', '2025-11-25 13:20:26', 100000, 'CHF_M_DSHS', '', 'FOOD', 'kitchen'),
('ITC0073', 'Grilled Chicken', 'CHARGE', 1, NULL, NULL, 73, 'homsyadmin', 'homsyadmin', '2025-11-25 08:55:36', '2025-11-25 08:55:36', 8500, 'CHF_M_DSHS', '', 'FOOD', 'kitchen'),
('ITC0074', 'Famous French Fries', 'CHARGE', 1, NULL, NULL, 74, 'homsyadmin', 'homsyadmin', '2025-11-25 08:56:06', '2025-11-25 08:56:06', 3000, 'SIDES', '', 'FOOD', 'kitchen'),
('ITC0075', 'Greek Salad', 'CHARGE', 1, NULL, NULL, 75, 'homsyadmin', 'homsyadmin', '2025-11-25 08:56:38', '2025-11-25 13:21:19', 6000, 'SIDES', '', 'FOOD', 'kitchen'),
('ITC0076', 'Nomatla Coleslaw', 'CHARGE', 1, NULL, NULL, 76, 'homsyadmin', 'homsyadmin', '2025-11-25 08:57:12', '2025-11-25 08:57:12', 2000, 'SIDES', '', 'FOOD', 'kitchen'),
('ITC0077', 'Chicken & Bacon Salad', 'CHARGE', 1, NULL, NULL, 77, 'homsyadmin', 'homsyadmin', '2025-11-25 08:57:40', '2025-11-25 08:57:40', 8000, 'SIDES', '', 'FOOD', 'kitchen'),
('ITC0078', 'Toasted Cheese & Tomato', 'CHARGE', 1, NULL, NULL, 78, 'homsyadmin', 'homsyadmin', '2025-11-25 08:58:14', '2025-11-25 13:27:03', 5000, 'SNDWCHES', '', 'FOOD', 'kitchen'),
('ITC0079', 'Toasted Ham, Cheese & Tomato', 'CHARGE', 1, NULL, NULL, 79, 'homsyadmin', 'homsyadmin', '2025-11-25 08:58:37', '2025-11-25 08:58:37', 6000, 'SNDWCHES', '', 'FOOD', 'kitchen'),
('ITC0080', 'Toasted Chicken & Mayo', 'CHARGE', 1, NULL, NULL, 80, 'homsyadmin', 'homsyadmin', '2025-11-25 08:59:07', '2025-11-25 13:27:44', 5000, 'SNDWCHES', '', 'FOOD', 'kitchen'),
('ITC0081', 'Continental Breakfast', 'CHARGE', 1, NULL, NULL, 81, 'homsyadmin', 'homsyadmin', '2025-11-25 09:06:40', '2025-11-25 09:06:40', 6000, 'BFAST', '', 'FOOD', 'kitchen'),
('ITC0082', 'Colonel Sadaidi BFST Platter', 'CHARGE', 1, NULL, NULL, 82, 'homsyadmin', 'homsyadmin', '2025-11-25 09:10:39', '2025-11-25 13:28:57', 100000, 'BFAST', '', 'FOOD', 'kitchen'),
('ITC0083', 'Osuvish Breakfast', 'CHARGE', 1, NULL, NULL, 83, 'homsyadmin', 'homsyadmin', '2025-11-25 09:11:10', '2025-11-25 09:11:10', 3000, 'BFAST', '', 'FOOD', 'kitchen'),
('ITC0084', 'Tea or Coffee Pot', 'CHARGE', 1, NULL, NULL, 84, 'homsyadmin', 'homsyadmin', '2025-11-25 09:14:01', '2025-11-25 09:14:01', 3000, 'BFAST', '', 'FOOD', 'kitchen'),
('ITC0085', 'Menu Option 1 (2 stch, 2 meat)', 'CHARGE', 1, NULL, NULL, 85, 'homsyadmin', 'homsyadmin', '2025-11-25 09:16:05', '2025-11-25 09:16:05', 22000, 'CATERING', '', 'FOOD', 'kitchen'),
('ITC0086', 'Menu Option 2  (3 stch, 3 meat)', 'CHARGE', 1, NULL, NULL, 86, 'homsyadmin', 'homsyadmin', '2025-11-25 09:16:56', '2025-11-25 09:16:56', 28000, 'CATERING', '', 'FOOD', 'kitchen'),
('ITC0087', 'Ice Cream', 'CHARGE', 1, NULL, NULL, 87, 'homsyadmin', 'homsyadmin', '2025-11-25 09:17:46', '2025-11-25 09:17:46', 4000, 'DSSERTS', '', 'FOOD', 'kitchen'),
('ITC0088', 'Fruit Salad', 'CHARGE', 1, NULL, NULL, 88, 'homsyadmin', 'homsyadmin', '2025-11-25 09:18:27', '2025-11-25 09:20:04', 4000, 'DSSERTS', '', 'FOOD', 'kitchen'),
('ITC0089', 'Cake', 'CHARGE', 1, NULL, NULL, 89, 'homsyadmin', 'homsyadmin', '2025-11-25 09:19:51', '2025-11-25 09:19:51', 4000, 'DSSERTS', '', 'FOOD', 'kitchen'),
('ITC0090', 'Tsamama Coleslaw', 'CHARGE', 1, NULL, NULL, 90, 'homsyadmin', 'homsyadmin', '2025-11-25 13:23:28', '2025-11-25 13:23:28', 5000, 'SIDES', '', 'FOOD', 'kitchen'),
('ITC0091', 'Green Salad', 'CHARGE', 1, NULL, NULL, 91, 'homsyadmin', 'homsyadmin', '2025-11-25 13:25:26', '2025-11-25 13:25:26', 5000, 'SIDES', '', 'FOOD', 'kitchen'),
('ITC0092', 'English Breakfast', 'CHARGE', 1, NULL, NULL, 92, 'homsyadmin', 'homsyadmin', '2025-11-25 13:29:43', '2025-11-25 13:29:43', 12000, 'BFAST', '', 'FOOD', 'kitchen'),
('PCRED', 'Payment Credit', 'PAYMENT', 1, 0, NULL, 20, 'homsyadmin', 'homsyadmin', '2022-06-29 14:00:26', '2022-06-29 14:00:26', 0, NULL, '', NULL, 'bar'),
('PO', 'PO', 'PAYMENT', 0, 0, NULL, 8, 'homsyadmin', 'homsyadmin', '2022-03-04 15:00:46', '2022-11-29 09:53:32', 0, NULL, '', NULL, 'bar'),
('TIP', 'Tip', 'SPECIAL', 1, NULL, NULL, 1, 'homsyadmin', 'homsyadmin', '2022-03-04 08:36:10', '2022-03-04 08:36:10', 0, NULL, '', NULL, 'bar'),
('VAT', 'VAT', 'TAX', 1, NULL, NULL, 1, 'homsyadmin', 'homsyadmin', '2022-03-04 08:36:10', '2022-03-04 08:36:10', NULL, NULL, NULL, NULL, NULL),
('VISA', 'Visa', 'PAYMENT', 0, 0, NULL, 11, 'homsyadmin', 'homsyadmin', '2022-03-04 15:01:29', '2022-03-04 15:04:34', 0, NULL, '', NULL, 'bar');

-- --------------------------------------------------------

--
-- Table structure for table `itemcodeassoccharge`
--

CREATE TABLE `itemcodeassoccharge` (
  `itemCode` varchar(10) NOT NULL,
  `assocCode` varchar(10) NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `itemcodetax`
--

CREATE TABLE `itemcodetax` (
  `itemCode` varchar(10) NOT NULL,
  `taxCode` varchar(10) NOT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `itemcodetype`
--

CREATE TABLE `itemcodetype` (
  `code` varchar(10) NOT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `itemcodetype`
--

INSERT INTO `itemcodetype` (`code`, `createdBy`, `editedBy`, `createdOn`, `editedOn`, `name`, `sortOrder`, `isActive`, `description`) VALUES
('CHARGE', 'homsyadmin', 'homsyadmin', '2015-02-04 08:12:10', '2015-02-04 08:12:10', 'Charge', 2, 1, 'All Charges'),
('PAYMENT', 'homsyadmin', 'homsyadmin', '2015-01-19 16:42:12', '2015-01-19 16:42:12', 'Payment', 33, 1, 'All payments go here'),
('SPECIAL', 'homsyadmin', 'homsyadmin', '2015-04-26 17:57:29', '2015-04-26 17:57:29', 'Special', 1, 1, 'All special code such as Deposit, Discounts'),
('TAX', 'homsyadmin', 'homsyadmin', '2015-02-04 08:12:10', '2015-02-04 08:12:10', 'Tax', 27, 1, 'Taxes');

-- --------------------------------------------------------

--
-- Table structure for table `itemsupplier`
--

CREATE TABLE `itemsupplier` (
  `supplierCode` varchar(10) NOT NULL DEFAULT '',
  `itemCode` varchar(10) NOT NULL DEFAULT '',
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE `journal` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `reference` varchar(128) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `date` date DEFAULT NULL,
  `credit` int(11) DEFAULT 0,
  `debit` int(11) DEFAULT 0,
  `customerID` int(11) DEFAULT NULL,
  `shift` int(11) DEFAULT NULL,
  `customerName` varchar(64) DEFAULT NULL,
  `saleType` varchar(10) DEFAULT NULL,
  `accountName` varchar(40) DEFAULT NULL,
  `saleID` int(11) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL,
  `customerType` varchar(10) DEFAULT NULL,
  `itemID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lastvaluetracker`
--

CREATE TABLE `lastvaluetracker` (
  `propertyID` int(11) NOT NULL DEFAULT 1,
  `record` varchar(32) NOT NULL,
  `value` int(11) NOT NULL,
  `lastValue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `noteFor` varchar(20) DEFAULT NULL,
  `selector` varchar(20) DEFAULT NULL,
  `subject` varchar(64) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedBy` varchar(16) DEFAULT NULL,
  `editedOn` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nightaudit`
--

CREATE TABLE `nightaudit` (
  `id` int(11) NOT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `note` text DEFAULT NULL,
  `saleID` int(11) NOT NULL,
  `createdBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `itemCode` varchar(10) NOT NULL,
  `name` varchar(64) NOT NULL,
  `sortOrder` int(11) DEFAULT 256,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payterms`
--

CREATE TABLE `payterms` (
  `id` int(11) NOT NULL,
  `daysBeforeDue` int(11) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT 1,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `work` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `name`, `work`) VALUES
(1, 'Tes User', 'IT'),
(2, 'Bogosi Gabonnwe', 'IT'),
(3, 'Bogosi Gabonnwe', 'IT'),
(4, 'Tom', 'IT'),
(5, 'Charlie', 'Sales'),
(6, 'Ben', 'IT'),
(7, 'Tennison', 'Sales');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `groupCode` varchar(10) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`, `name`, `description`, `groupCode`, `createdBy`, `editedBy`, `createdOn`, `editedOn`, `status`) VALUES
(500, 'City Ledger Module', NULL, 'BACK', 'homsyadmin', NULL, '2014-08-26 13:16:20', NULL, 1),
(600, 'Corporate Module', NULL, 'BACK', 'homsyadmin', NULL, '2014-08-26 13:16:20', NULL, 1),
(1000, 'POS Module', NULL, 'FNTDSK', 'homsyadmin', NULL, '2014-08-24 09:38:52', NULL, 1),
(1005, 'Fund Movement', NULL, 'FNTDSK', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(6005, 'Maintain Sales', NULL, 'FNTDSK', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(7000, 'Reporting Module', NULL, 'REPORT', 'homsyadmin', NULL, '2014-08-24 10:16:46', NULL, 1),
(7105, 'Sales in  Date Range', NULL, 'REPORT', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(7110, 'Pending Sales', NULL, 'REPORT', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(7115, 'Completed Sales', NULL, 'REPORT', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(7120, 'Voided Sales', NULL, 'REPORT', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(7305, 'Balances - Customer', NULL, 'REPORT', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(7310, 'Balances - Corp', NULL, 'REPORT', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(7315, 'Journal Entry', NULL, 'REPORT', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(7320, 'AR Recon', NULL, 'REPORT', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(7325, 'All Transactions', NULL, 'REPORT', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(7330, 'Trans Totals', NULL, 'REPORT', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(7335, 'Revenue by Code', NULL, 'REPORT', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(7340, 'Revenue - Food', NULL, 'REPORT', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(7345, 'Revenue - Bev', NULL, 'REPORT', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(7405, 'Cashier - Summary', NULL, 'REPORT', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(7410, 'All Cashier - Summary', NULL, 'REPORT', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(7415, 'Cashier - Detailed', NULL, 'REPORT', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(7420, 'All Cashier Totals', NULL, 'REPORT', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(7505, 'Stock', NULL, 'REPORT', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(7510, 'Stock Sheet', NULL, 'REPORT', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(9000, 'Customer Module', NULL, 'FNTDSK', 'homsyadmin', NULL, '2014-08-24 10:20:31', NULL, 1),
(10000, 'Settings Module', NULL, 'CONF', 'homsyadmin', NULL, '2014-08-24 10:16:46', NULL, 1),
(10005, 'Property Details', NULL, 'CONF', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(10010, 'User Management', NULL, 'CONF', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(10015, 'Tables', NULL, 'CONF', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(10020, 'Inventory', NULL, 'ITEMS', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(10025, 'Menu Groups', NULL, 'ITEMS', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(10030, 'Stock Locations', NULL, 'ITEMS', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(10035, 'Stock Movements', NULL, 'ITEMS', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(10040, 'Stock Take', NULL, 'ITEMS', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(10100, 'GL Accounts Module', NULL, 'BACK', 'homsyadmin', 'homsyadmin', '2015-04-10 16:27:35', '2015-04-10 16:27:35', NULL),
(10200, 'Item Codes Module', NULL, 'ITEMS', 'homsyadmin', 'homsyadmin', '2015-04-10 16:27:36', '2015-04-10 16:27:36', NULL),
(10305, 'Pay Terms', NULL, 'PURCHASE', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(10310, 'Suppliers', NULL, 'PURCHASE', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(10400, 'Departments Module', NULL, 'CONF', 'homsyadmin', 'homsyadmin', '2015-04-10 16:27:36', '2015-04-10 16:27:36', NULL),
(10500, 'Quotation Terms', NULL, 'BACK', 'homsyadmin', NULL, '2014-08-24 10:16:47', NULL, 1),
(10505, 'Quotations', NULL, 'BACK', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
(10600, 'System Defaults Module', NULL, 'CONF', 'homsyadmin', NULL, '2014-08-24 10:16:47', NULL, 1),
(10800, 'Backup & Recovery Module', NULL, 'TOOLS', 'homsyadmin', NULL, '2014-09-16 14:31:09', NULL, 1),
(10805, 'Pos Station', NULL, 'TOOLS', 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissiongroup`
--

CREATE TABLE `permissiongroup` (
  `code` varchar(10) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `permissiongroup`
--

INSERT INTO `permissiongroup` (`code`, `name`, `description`, `createdBy`, `editedBy`, `createdOn`, `editedOn`, `status`) VALUES
('BACK', 'Back Office', NULL, 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
('CONF', 'Configuration', NULL, 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
('FNTDSK', 'POS', NULL, 'homsyadmin', NULL, '2014-08-24 09:19:11', NULL, 1),
('ITEMS', 'Items & Inventory', NULL, 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
('PURCHASE', 'Purchases', NULL, 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1),
('REPORT', 'Reporting', NULL, 'homsyadmin', NULL, '2014-08-24 09:27:17', NULL, 1),
('TOOLS', 'Tools & Utilities', NULL, 'homsyadmin', NULL, '2022-09-13 15:25:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `portions`
--

CREATE TABLE `portions` (
  `id` int(11) NOT NULL,
  `itemCode` varchar(10) NOT NULL,
  `name` varchar(64) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `sortOrder` int(11) DEFAULT 256,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime DEFAULT NULL,
  `proportion` double(10,5) DEFAULT 1.00000
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder`
--

CREATE TABLE `purchaseorder` (
  `poID` int(11) NOT NULL,
  `supplier` varchar(10) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `reference` varchar(64) DEFAULT NULL,
  `requisitionID` varchar(32) DEFAULT NULL,
  `deliveryAddress` varchar(255) DEFAULT NULL,
  `isTaxInclusive` tinyint(1) DEFAULT 0,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime DEFAULT NULL,
  `memo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorderitems`
--

CREATE TABLE `purchaseorderitems` (
  `poID` int(11) NOT NULL DEFAULT 0,
  `itemCode` varchar(10) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `deliveryDate` date DEFAULT NULL,
  `reference` varchar(64) DEFAULT NULL,
  `qtyOrdered` double DEFAULT 0,
  `price` int(11) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorderitemsreceived`
--

CREATE TABLE `purchaseorderitemsreceived` (
  `id` int(11) NOT NULL,
  `poID` int(11) DEFAULT NULL,
  `itemCode` varchar(10) DEFAULT NULL,
  `receivedOn` datetime DEFAULT NULL,
  `qtyReceived` double(10,2) DEFAULT 0.00,
  `qtyInvoiced` double(10,2) DEFAULT 0.00,
  `actualPrice` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `receivedBy` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `reserveID` int(11) NOT NULL,
  `date` date NOT NULL,
  `specialNeeds` text DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `guestID` int(11) DEFAULT NULL,
  `user` varchar(16) DEFAULT NULL,
  `company` varchar(128) DEFAULT NULL,
  `createdOn` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotationstatus`
--

CREATE TABLE `quotationstatus` (
  `code` varchar(10) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `foreColor` varchar(12) NOT NULL,
  `backColor` varchar(12) NOT NULL,
  `createdOn` datetime DEFAULT NULL,
  `user` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotationterm`
--

CREATE TABLE `quotationterm` (
  `id` int(11) NOT NULL,
  `term` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotationtransaction`
--

CREATE TABLE `quotationtransaction` (
  `id` int(11) NOT NULL,
  `reserveID` int(11) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `currencyID` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `shift` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `user` varchar(16) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `associatedTransID` int(11) DEFAULT NULL,
  `moreInfo` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotationtransactiontax`
--

CREATE TABLE `quotationtransactiontax` (
  `transID` int(11) NOT NULL,
  `reserveID` int(11) NOT NULL,
  `taxCode` varchar(10) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `user` varchar(16) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `code` varchar(10) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`code`, `name`, `description`, `createdBy`, `editedBy`, `createdOn`, `editedOn`, `status`) VALUES
('ACC', 'Accountant', NULL, 'homsyadmin', NULL, '2014-08-25 17:25:28', NULL, 1),
('ADMIN', 'Administrator', NULL, 'homsyadmin', 'homsyadmin', '2015-01-02 14:01:45', '2015-01-02 14:01:45', 1),
('CLERK', 'Clerk', NULL, 'homsyadmin', NULL, '2014-08-24 12:41:10', NULL, 1),
('OWNER', 'Owner', NULL, 'homsyadmin', 'homsyadmin', '2015-01-02 14:01:45', '2015-01-02 14:01:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rolepermission`
--

CREATE TABLE `rolepermission` (
  `roleCode` varchar(10) NOT NULL DEFAULT '',
  `permissionID` int(11) NOT NULL DEFAULT 0,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rolepermission`
--

INSERT INTO `rolepermission` (`roleCode`, `permissionID`, `createdBy`, `editedBy`, `createdOn`, `editedOn`) VALUES
('ACC', 1000, 'homsyadmin', NULL, '2014-08-25 17:26:38', NULL),
('ACC', 7000, 'homsyadmin', 'homsyadmin', '2015-04-10 15:36:58', '2015-04-10 15:36:58'),
('ACC', 9000, 'homsyadmin', NULL, '2014-08-25 17:26:39', NULL),
('ACC', 10000, 'homsyadmin', NULL, '2014-08-25 17:26:39', NULL),
('ACC', 10600, 'homsyadmin', NULL, '2014-08-25 17:26:39', NULL),
('ADMIN', 1000, 'homsyadmin', NULL, '2014-08-25 17:23:55', NULL),
('ADMIN', 7000, 'homsyadmin', 'homsyadmin', '2015-04-10 15:38:39', '2015-04-10 15:38:39'),
('ADMIN', 9000, 'homsyadmin', NULL, '2014-08-25 17:23:55', NULL),
('ADMIN', 10000, 'homsyadmin', NULL, '2014-08-25 17:23:55', NULL),
('ADMIN', 10010, 'homsyadmin', NULL, '2014-08-25 17:23:55', NULL),
('ADMIN', 10100, 'homsyadmin', 'homsyadmin', '2015-04-10 16:29:13', '2015-04-10 16:29:13'),
('ADMIN', 10200, 'homsyadmin', 'homsyadmin', '2015-04-10 16:29:13', '2015-04-10 16:29:13'),
('ADMIN', 10400, 'homsyadmin', 'homsyadmin', '2015-04-10 16:29:13', '2015-04-10 16:29:13'),
('ADMIN', 10600, 'homsyadmin', NULL, '2014-08-25 17:23:55', NULL),
('ADMIN', 10800, 'homsyadmin', NULL, '2014-08-25 17:23:55', NULL),
('CLERK', 1000, 'homsyadmin', NULL, '2014-08-25 17:26:24', NULL),
('CLERK', 9000, 'homsyadmin', NULL, '2014-08-25 17:26:24', NULL),
('CLERK', 10000, 'homsyadmin', NULL, '2014-08-25 17:26:24', NULL),
('OWNER', 1000, 'homsyadmin', NULL, '2014-08-25 17:23:55', NULL),
('OWNER', 7000, 'homsyadmin', 'homsyadmin', '2015-04-10 15:38:39', '2015-04-10 15:38:39'),
('OWNER', 9000, 'homsyadmin', NULL, '2014-08-25 17:23:55', NULL),
('OWNER', 10000, 'homsyadmin', NULL, '2014-08-25 17:23:55', NULL),
('OWNER', 10010, 'homsyadmin', NULL, '2014-08-25 17:23:55', NULL),
('OWNER', 10100, 'homsyadmin', 'homsyadmin', '2015-04-10 16:29:13', '2015-04-10 16:29:13'),
('OWNER', 10200, 'homsyadmin', 'homsyadmin', '2015-04-10 16:29:13', '2015-04-10 16:29:13'),
('OWNER', 10400, 'homsyadmin', 'homsyadmin', '2015-04-10 16:29:13', '2015-04-10 16:29:13'),
('OWNER', 10600, 'homsyadmin', NULL, '2014-08-25 17:23:55', NULL),
('OWNER', 10800, 'homsyadmin', NULL, '2014-08-25 17:23:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `saleID` int(11) NOT NULL,
  `dropOffDate` date NOT NULL,
  `collectDate` date DEFAULT NULL,
  `note` text DEFAULT NULL,
  `promoCode` varchar(20) DEFAULT NULL,
  `status` varchar(12) DEFAULT NULL,
  `shift` int(11) NOT NULL,
  `voidReason` text DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL,
  `message` text DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL,
  `tendered` int(11) DEFAULT NULL,
  `tenderType` varchar(10) DEFAULT NULL,
  `changeAmount` int(11) DEFAULT NULL,
  `discount` float NOT NULL DEFAULT 0,
  `discountedBy` varchar(16) DEFAULT NULL,
  `cardName` varchar(32) DEFAULT NULL,
  `cardNumber` varchar(20) DEFAULT NULL,
  `cardExpiry` varchar(5) DEFAULT NULL,
  `cardType` varchar(20) DEFAULT NULL,
  `roomNumber` int(11) DEFAULT NULL,
  `tableID` int(11) DEFAULT NULL,
  `pax` int(11) DEFAULT 1,
  `purchaseOrder` varchar(32) DEFAULT NULL,
  `cityInvoiceID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saleitem`
--

CREATE TABLE `saleitem` (
  `itemID` int(11) NOT NULL,
  `saleID` int(11) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `qty` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `shift` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL,
  `voidReason` text DEFAULT NULL,
  `isolate` tinyint(4) NOT NULL DEFAULT 0,
  `scaleQty` tinyint(4) NOT NULL DEFAULT 0,
  `depositPercent` double NOT NULL DEFAULT 0,
  `department` varchar(10) DEFAULT NULL,
  `requireDeposit` tinyint(4) NOT NULL DEFAULT 0,
  `isDeluxe` tinyint(1) DEFAULT 0,
  `ticket` int(11) DEFAULT NULL,
  `portion` int(11) DEFAULT NULL,
  `seatID` int(11) DEFAULT 1,
  `note` text DEFAULT NULL,
  `deductStatus` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saleitemtax`
--

CREATE TABLE `saleitemtax` (
  `itemID` int(11) NOT NULL,
  `saleID` int(11) NOT NULL,
  `taxCode` varchar(10) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salestatus`
--

CREATE TABLE `salestatus` (
  `code` varchar(10) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `foreColor` varchar(12) NOT NULL,
  `backColor` varchar(12) NOT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saletype`
--

CREATE TABLE `saletype` (
  `code` varchar(10) NOT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('29WzbZAaCyVvUsOrY6Pi7ocSyO3v1SKPsjdGXox8', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVFFWllTYjZONzdrcGZUd1czaFlmUzNQbFFqQk5saXcxSkpWOU4yZyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90ZXN0IjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1764068956),
('8UOR9lPQrCGvhUAAOh8bqC3UpXyPkgOOJ6KlC5dL', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFlXeHh3U1kwYUtITjVDUHlzUWZCOWNnNnZJV2txSTh0NUdUekhGSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1758719468),
('oc7q0sCNg9KrN0tYqarA178ilw8sUy98cltA6vyy', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiODUzbGxjallNZWhFU0gyNEpnVm9yeFMzUm5WaUJTWTNmNUVBNmRhUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1760203075),
('XNChLPatc3Z7DreR3v3qOkpCj6z0Wr5u51f8Do7H', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWNLQlF4ZjdkS0VCM1lqQU1GWlR3UVp4ajFzMTVLSERITERFMzl0cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1758882139);

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `id` int(11) NOT NULL,
  `counter` varchar(10) DEFAULT NULL,
  `openedBy` varchar(16) NOT NULL,
  `closedBy` varchar(16) DEFAULT NULL,
  `openDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `diffReason` text DEFAULT NULL,
  `closeDate` datetime DEFAULT NULL,
  `status` varchar(6) DEFAULT 'open',
  `dayID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shiftcurrencyunit`
--

CREATE TABLE `shiftcurrencyunit` (
  `unit` decimal(5,2) NOT NULL,
  `shiftID` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shiftfunds`
--

CREATE TABLE `shiftfunds` (
  `shiftID` int(11) NOT NULL,
  `fundCode` varchar(10) NOT NULL DEFAULT '',
  `openingAmount` int(11) DEFAULT NULL,
  `closingAmount` int(11) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shiftfundstrans`
--

CREATE TABLE `shiftfundstrans` (
  `transID` int(11) NOT NULL,
  `shiftID` int(11) NOT NULL,
  `fundCode` varchar(10) DEFAULT NULL,
  `transType` varchar(10) NOT NULL,
  `amount` int(11) DEFAULT 0,
  `description` text DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL,
  `authorisedBy` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `hostName` varchar(64) DEFAULT NULL,
  `stationID` int(11) NOT NULL,
  `createdBy` varchar(16) DEFAULT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stockitems`
--

CREATE TABLE `stockitems` (
  `itemCode` varchar(10) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `itemType` varchar(10) DEFAULT NULL,
  `unitOfMeassure` varchar(10) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT 1,
  `saleAcc` varchar(40) DEFAULT NULL,
  `inventoryAcc` varchar(40) DEFAULT NULL,
  `cogsAcc` varchar(40) DEFAULT NULL,
  `adjustAcc` varchar(40) DEFAULT NULL,
  `salePrice` int(11) DEFAULT NULL,
  `actualCost` int(11) DEFAULT NULL,
  `lastCost` int(11) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime DEFAULT NULL,
  `reoderLevel` double DEFAULT NULL,
  `payableAcc` varchar(40) DEFAULT NULL,
  `belongsTo` varchar(10) DEFAULT 'food'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `stockitems`
--

INSERT INTO `stockitems` (`itemCode`, `name`, `description`, `itemType`, `unitOfMeassure`, `isActive`, `saleAcc`, `inventoryAcc`, `cogsAcc`, `adjustAcc`, `salePrice`, `actualCost`, `lastCost`, `createdBy`, `editedBy`, `createdOn`, `editedOn`, `reoderLevel`, `payableAcc`, `belongsTo`) VALUES
('B14575', 'HENKES GIN', 'GIN', 'sale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 585, 'Lame', 'Lame', '2023-02-07 14:29:48', '2023-02-07 14:29:48', 1, 'Bar Revenue', 'bar'),
('BI1071', 'PAPER SERVIETTES', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 17524, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 17:04:45', '2022-04-29 17:04:45', 1, 'Accounts Payable', 'other'),
('BI1879', 'Arabella Cab Sav 750ml', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1450, 'homsyadmin', 'Lillian', '2022-03-02 09:37:22', '2022-06-08 11:11:27', 1, 'Accounts Payable', 'bar'),
('BI2000', 'Appletiser', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 974, 'tim', 'tim', '2022-02-28 15:33:45', '2022-02-28 15:33:45', 1, 'Accounts Payable', 'bar'),
('BI2001', 'Arabella Merlot', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 15:34:08', '2022-02-28 15:34:08', 1, 'Accounts Payable', 'bar'),
('BI2002', 'Arabella 250ml Sav Blanc', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'Tlamelo Mogale', '2022-02-28 15:34:29', '2022-03-18 10:04:24', 1, 'Accounts Payable', 'bar'),
('BI2003', 'Lutzville Cab Sav 250ml', '', 'sale', 'GLASS', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2731, 'tim', 'homsyadmin', '2022-02-28 15:34:51', '2022-05-05 12:47:11', 1, 'Accounts Payable', 'bar'),
('BI2005', 'Arabella Chardonay 250ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 260, 'tim', 'tim', '2022-02-28 15:35:26', '2022-02-28 15:35:26', 1, 'Accounts Payable', 'bar'),
('BI2007', 'Arabella Chenin Blanc 750ml', '', 'sale', 'ML', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 15:35:57', '2022-02-28 15:35:57', 1, 'Accounts Payable', 'bar'),
('BI2008', 'Arabella Shiraz 250ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1298, 'tim', 'tim', '2022-02-28 15:36:27', '2022-02-28 15:36:46', 1, 'Accounts Payable', 'bar'),
('BI2010', 'Aslina 750ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 15:37:39', '2022-02-28 15:37:39', 1, 'Accounts Payable', 'bar'),
('BI2011', 'Bacardi rum 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1285, 'tim', 'tim', '2022-02-28 15:38:19', '2022-02-28 15:38:39', 1, 'Accounts Payable', 'bar'),
('BI2012', 'Bar Limit - Mixed Drinks', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 716, 'tim', 'tim', '2022-02-28 15:39:07', '2022-02-28 15:39:07', 1, 'Accounts Payable', 'bar'),
('BI2013', 'Bells 750ml Bottle', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 800, 'tim', 'tim', '2022-02-28 15:39:27', '2022-02-28 15:39:27', 1, 'Accounts Payable', 'bar'),
('BI2014', 'Belvedere 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1867, 'tim', 'tim', '2022-02-28 15:41:48', '2022-02-28 15:41:48', 1, 'Accounts Payable', 'bar'),
('BI2015', 'Bernini Blush 275ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1616, 'tim', 'Lame', '2022-02-28 15:42:10', '2023-02-09 13:25:26', 1, 'Accounts Payable', 'bar'),
('BI2016', 'Bernini Classic', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1616, 'tim', 'Lame', '2022-02-28 15:42:30', '2023-02-09 13:25:47', 1, 'Accounts Payable', 'bar'),
('BI2017', 'Berry Blaze 330ml', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 716, 'tim', 'tim', '2022-02-28 15:47:47', '2022-02-28 15:47:47', 1, 'Accounts Payable', 'bar'),
('BI2018', 'Black Label 330ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1616, 'tim', 'tim', '2022-02-28 15:48:17', '2022-02-28 15:48:17', 1, 'Accounts Payable', 'bar'),
('BI2019', 'Bombay Sapphire 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1657, 'tim', 'tim', '2022-02-28 15:48:58', '2022-02-28 15:48:58', 1, 'Accounts Payable', 'bar'),
('BI2020', 'Budweiser 330ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1313, 'tim', 'tim', '2022-02-28 15:49:25', '2022-02-28 15:50:05', 1, 'Accounts Payable', 'bar'),
('BI2021', 'Butlers Sherry Liquer 750ml', '', 'noSale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 749, 'tim', 'homsyadmin', '2022-02-28 15:53:56', '2022-03-02 10:48:43', 1, 'Accounts Payable', 'bar'),
('BI2022', 'Butlers Triple Sec Orange 750ml', '', 'noSale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 657, 'tim', 'homsyadmin', '2022-02-28 15:51:23', '2022-03-02 10:48:56', 1, 'Accounts Payable', 'bar'),
('BI2023', 'Butlers peppermint 750ml', '', 'noSale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 657, 'tim', 'homsyadmin', '2022-02-28 15:52:32', '2022-03-02 10:49:10', 1, 'Accounts Payable', 'bar'),
('BI2024', 'Captain Morgan Spice Gold 750ml', '', 'noSale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 600, 'tim', 'homsyadmin', '2022-02-28 15:52:54', '2022-03-02 09:37:41', 1, 'Accounts Payable', 'bar'),
('BI2025', 'Castle Lager', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 15:54:41', '2022-02-28 15:54:41', 1, 'Accounts Payable', 'bar'),
('BI2026', 'Castle Lite 330ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1333, 'tim', 'tim', '2022-02-28 15:55:10', '2022-02-28 15:55:10', 1, 'Accounts Payable', 'bar'),
('BI2027', 'Castle Lite 440ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1164, 'tim', 'tim', '2022-02-28 15:55:56', '2022-02-28 15:55:56', 1, 'Accounts Payable', 'bar'),
('BI2028', 'Castle Milk Stout 330ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 15:56:46', '2022-02-28 15:56:46', 1, 'Accounts Payable', 'bar'),
('BI2029', 'Chateau Del Rei Swet Wte 250', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1458, 'tim', 'tim', '2022-02-28 15:57:24', '2022-02-28 15:57:24', 1, 'Accounts Payable', 'bar'),
('BI2030', 'Chateau Del rei Rose', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1316, 'tim', 'tim', '2022-02-28 15:58:07', '2022-02-28 15:58:07', 1, 'Accounts Payable', 'bar'),
('BI2031', 'Chateau Del  sweet red 250ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1316, 'tim', 'homsyadmin', '2022-02-28 15:58:42', '2022-06-22 14:39:56', 1, 'Accounts Payable', 'bar'),
('BI2032', 'Chivas 12years 750ml Bottle', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1437, 'tim', 'tim', '2022-02-28 15:59:19', '2022-02-28 15:59:19', 1, 'Accounts Payable', 'bar'),
('BI2033', 'Ciroc 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1340, 'tim', 'tim', '2022-02-28 15:59:48', '2022-02-28 15:59:48', 1, 'Accounts Payable', 'bar'),
('BI2034', 'Clark & Son Lemonade', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 300, 'tim', 'tim', '2022-02-28 16:00:10', '2022-02-28 16:00:10', 1, 'Accounts Payable', 'bar'),
('BI2035', 'Clear Apple 300ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 733, 'tim', 'Lame', '2022-02-28 16:00:37', '2023-02-23 14:27:38', 1, 'Accounts Payable', 'bar'),
('BI2036', 'Clear Apple Juice 1L Box', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1698, 'tim', 'Lame', '2022-02-28 16:01:07', '2023-05-13 11:51:49', 1, 'Accounts Payable', 'bar'),
('BI2037', 'Coke', 'Coca Cola', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1895, 'tim', 'homsyadmin', '2022-02-28 16:01:31', '2025-11-24 20:28:34', 1, 'Accounts Payable', 'bar'),
('BI2038', 'Coke 300ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 741, 'tim', 'Lame', '2022-02-28 16:01:50', '2023-03-16 08:34:09', 12, 'Accounts Payable', 'bar'),
('BI2039', 'Coke Zero 300ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 658, 'tim', 'Lame', '2022-02-28 16:02:12', '2023-03-16 08:35:04', 12, 'Accounts Payable', 'bar'),
('BI2040', 'Corona', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1541, 'tim', 'tim', '2022-02-28 16:02:33', '2022-02-28 16:02:33', 1, 'Accounts Payable', 'bar'),
('BI2041', 'Cranberry juice 1lt Box', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1895, 'tim', 'homsyadmin', '2022-02-28 16:03:04', '2022-03-02 10:10:55', 1, 'Accounts Payable', 'bar'),
('BI2042', 'Cranberry juice 330ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 716, 'tim', 'tim', '2022-02-28 16:03:25', '2022-02-28 16:03:25', 1, 'Accounts Payable', 'bar'),
('BI2043', 'Cream Soda 330ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 741, 'tim', 'tim', '2022-02-28 16:03:50', '2022-02-28 16:03:50', 1, 'Accounts Payable', 'bar'),
('BI2044', 'Dias Lime Cordial 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 131, 'tim', 'Lame', '2022-02-28 16:04:23', '2023-03-11 10:40:40', 1, 'Accounts Payable', 'bar'),
('BI2045', 'Dry Lemon 200ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 683, 'tim', 'tim', '2022-02-28 16:04:50', '2022-02-28 16:04:50', 1, 'Accounts Payable', 'bar'),
('BI2046', 'Famous Grouse 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 967, 'tim', 'tim', '2022-02-28 16:05:14', '2022-02-28 16:05:14', 1, 'Accounts Payable', 'bar'),
('BI2047', 'Fanta Orange 300ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 741, 'tim', 'Lame', '2022-02-28 16:05:38', '2023-03-23 12:59:54', 1, 'Accounts Payable', 'bar'),
('BI2048', 'Fat Bastard Chardonnay 750ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10995, 'tim', 'tim', '2022-02-28 16:06:09', '2022-02-28 16:06:09', 1, 'Accounts Payable', 'bar'),
('BI2049', 'Fat Bastard Merlot 750ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 14295, 'tim', 'tim', '2022-02-28 16:06:47', '2022-02-28 16:06:47', 1, 'Accounts Payable', 'bar'),
('BI2050', 'Fat Bastard Sav Blanc 750ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10995, 'tim', 'tim', '2022-02-28 16:07:06', '2022-02-28 16:07:06', 1, 'Accounts Payable', 'bar'),
('BI2051', 'Flavoured water', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 16:07:38', '2022-02-28 16:07:38', 1, 'Accounts Payable', 'bar'),
('BI2052', 'Flying fish 330ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 641, 'tim', 'tim', '2022-02-28 16:08:08', '2022-02-28 16:08:08', 1, 'Accounts Payable', 'bar'),
('BI2053', 'Ginger Ale Fitch', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 16:08:37', '2022-02-28 16:08:37', 1, 'Accounts Payable', 'bar'),
('BI2054', 'Ginger Ale Schweppes 200ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 683, 'tim', 'tim', '2022-02-28 16:09:06', '2022-02-28 16:09:06', 1, 'Accounts Payable', 'bar'),
('BI2055', 'Glass Of Wine', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1600, 'tim', 'tim', '2022-02-28 16:09:23', '2022-02-28 16:09:23', 1, 'Accounts Payable', 'bar'),
('BI2056', 'Glendfiddich 15years 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2640, 'tim', 'tim', '2022-02-28 16:09:47', '2022-02-28 16:09:47', 1, 'Accounts Payable', 'bar'),
('BI2057', 'Glenfiddich 12years 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2201, 'tim', 'tim', '2022-02-28 16:10:30', '2022-02-28 16:10:30', 1, 'Accounts Payable', 'bar'),
('BI2058', 'Gordons 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 617, 'tim', 'tim', '2022-02-28 16:11:52', '2022-02-28 16:11:52', 1, 'Accounts Payable', 'bar'),
('BI2059', 'Grapetizer Red', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1019, 'tim', 'tim', '2022-02-28 16:12:09', '2022-02-28 16:12:09', 1, 'Accounts Payable', 'bar'),
('BI2060', 'Grenadine 750ml', '', 'noSale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 147, 'tim', 'tim', '2022-02-28 16:12:31', '2022-02-28 16:12:31', 1, 'Accounts Payable', 'bar'),
('BI2061', 'Grey Goose 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3091, 'tim', 'tim', '2022-02-28 16:12:55', '2022-02-28 16:12:55', 1, 'Accounts Payable', 'bar'),
('BI2062', 'Heineken', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1433, 'tim', 'tim', '2022-02-28 16:13:41', '2022-02-28 16:13:41', 1, 'Accounts Payable', 'bar'),
('BI2063', 'Hendricks 700ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2250, 'tim', 'Lame', '2022-02-28 16:13:58', '2023-11-28 10:39:48', 1, 'Accounts Payable', 'bar'),
('BI2064', 'Hunter\'s Dry 330ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1533, 'tim', 'T.Masetlhe', '2022-02-28 16:14:30', '2022-06-22 12:57:57', 1, 'Accounts Payable', 'bar'),
('BI2065', 'Hunters Gold 330ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1499, 'tim', 'tim', '2022-02-28 16:15:19', '2022-02-28 16:15:19', 1, 'Accounts Payable', 'bar'),
('BI2066', 'Iron Brew', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 16:15:40', '2022-02-28 16:15:40', 1, 'Accounts Payable', 'bar'),
('BI2067', 'J & B 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 625, 'tim', 'tim', '2022-02-28 16:15:58', '2022-02-28 16:15:58', 1, 'Accounts Payable', 'bar'),
('BI2068', 'Jack Daniels 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1421, 'tim', 'tim', '2022-02-28 16:16:14', '2022-02-28 16:16:14', 1, 'Accounts Payable', 'bar'),
('BI2069', 'Jaggermister 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1020, 'tim', 'tim', '2022-02-28 16:16:34', '2022-02-28 16:16:34', 1, 'Accounts Payable', 'bar'),
('BI2070', 'Jamaican Rum 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 670, 'tim', 'tim', '2022-02-28 16:17:08', '2022-02-28 16:17:08', 1, 'Accounts Payable', 'bar'),
('BI2071', 'Jameson 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1569, 'tim', 'tim', '2022-02-28 16:17:30', '2022-02-28 16:17:30', 1, 'Accounts Payable', 'bar'),
('BI2072', 'Johnie Walker 18 years 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3715, 'tim', 'tim', '2022-02-28 16:17:58', '2022-02-28 16:17:58', 1, 'Accounts Payable', 'bar'),
('BI2073', 'Johnie Walker Blue 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7634, 'tim', 'tim', '2022-02-28 16:18:17', '2022-02-28 16:18:17', 1, 'Accounts Payable', 'bar'),
('BI2074', 'Johnie Walker Red Label 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 738, 'tim', 'tim', '2022-02-28 16:18:38', '2022-02-28 16:18:38', 1, 'Accounts Payable', 'bar'),
('BI2075', 'Johnie walker Black 750ml Bottle', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1273, 'tim', 'tim', '2022-02-28 16:18:58', '2022-02-28 16:18:58', 1, 'Accounts Payable', 'bar'),
('BI2076', 'KWV 10 Years 750ml Bottle', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 980, 'tim', 'tim', '2022-02-28 16:19:22', '2022-02-28 16:19:22', 1, 'Accounts Payable', 'bar'),
('BI2077', 'KWV 10 years 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 763, 'tim', 'tim', '2022-02-28 16:20:04', '2022-02-28 16:20:04', 1, 'Accounts Payable', 'bar'),
('BI2078', 'KWV 3 years 750ml Bottle', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 597, 'tim', 'tim', '2022-02-28 16:20:19', '2022-02-28 16:20:19', 1, 'Accounts Payable', 'bar'),
('BI2079', 'Kahlua 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1100, 'tim', 'tim', '2022-02-28 16:20:52', '2022-02-28 16:20:52', 1, 'Accounts Payable', 'bar'),
('BI2080', 'Kanonkop Kadette 1.5LT', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 27428, 'tim', 'Lame', '2022-02-28 16:21:15', '2023-03-06 13:01:57', 1, 'Accounts Payable', 'bar'),
('BI2081', 'Kanonkop Kadette 750ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 13295, 'tim', 'Lame', '2022-02-28 16:21:37', '2023-03-29 11:56:29', 1, 'Accounts Payable', 'bar'),
('BI2082', 'Klipdrift 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 683, 'tim', 'tim', '2022-02-28 16:21:52', '2022-02-28 16:21:52', 1, 'Accounts Payable', 'bar'),
('BI2083', 'Kola tonic 25ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 16:22:16', '2022-02-28 16:22:16', 1, 'Accounts Payable', 'bar'),
('BI2084', 'Kola tonic 750ml', '', 'noSale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 137, 'tim', 'tim', '2022-02-28 16:22:32', '2022-02-28 16:22:32', 1, 'Accounts Payable', 'bar'),
('BI2085', 'Lemonade Schewppes 200ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 683, 'tim', 'tim', '2022-02-28 16:22:47', '2022-02-28 16:22:47', 1, 'Accounts Payable', 'bar'),
('BI2086', 'Lime Cordial 750ml', '', 'noSale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 137, 'tim', 'tim', '2022-02-28 16:23:04', '2022-02-28 16:23:04', 1, 'Accounts Payable', 'bar'),
('BI2087', 'Lupini Black 750 ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 23695, 'tim', 'tim', '2022-02-28 16:23:21', '2022-02-28 16:23:21', 1, 'Accounts Payable', 'bar'),
('BI2088', 'Lupini Gold 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 728, 'tim', 'T.Masetlhe', '2022-02-28 16:23:39', '2022-06-22 13:17:37', 1, 'Accounts Payable', 'bar'),
('BI2089', 'Malibu 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 767, 'tim', 'T.Masetlhe', '2022-02-28 16:24:00', '2022-06-22 13:17:44', 1, 'Accounts Payable', 'bar'),
('BI2090', 'Meerlust Merlot 750ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 36695, 'tim', 'tim', '2022-02-28 16:24:19', '2022-02-28 16:24:19', 1, 'Accounts Payable', 'bar'),
('BI2091', 'Meerlust Rubicon 750ML', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 44995, 'tim', 'tim', '2022-02-28 16:24:37', '2022-02-28 16:24:37', 1, 'Accounts Payable', 'bar'),
('BI2092', 'Moet brut 750ml Bottle', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 30000, 'tim', 'tim', '2022-02-28 16:24:58', '2022-02-28 16:24:58', 1, 'Accounts Payable', 'bar'),
('BI2093', 'Monin Strawberry 1lt', '', 'noSale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 657, 'tim', 'tim', '2022-02-28 16:25:23', '2022-02-28 16:25:23', 1, 'Accounts Payable', 'bar'),
('BI2094', 'Monin Wild mint 1L', '', 'noSale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 519, 'tim', 'Lame', '2022-02-28 16:26:11', '2023-03-16 08:50:58', 1, 'Accounts Payable', 'bar'),
('BI2095', 'Monin Wild mint 750ml', '', 'noSale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 400, 'tim', 'Lame', '2022-02-28 16:26:32', '2023-03-16 08:51:38', 1, 'Accounts Payable', 'bar'),
('BI2096', 'Monini Mango 1lt', '', 'noSale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 657, 'tim', 'tim', '2022-02-28 16:26:49', '2022-02-28 16:26:49', 1, 'Accounts Payable', 'bar'),
('BI2098', 'Monini Strawberry 1lt', '', 'noSale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 673, 'tim', 'tim', '2022-02-28 16:27:11', '2022-02-28 16:27:11', 1, 'Accounts Payable', 'bar'),
('BI2099', 'Monini coconut 1lt', '', 'noSale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 16:27:39', '2022-02-28 16:27:39', 1, 'Accounts Payable', 'bar'),
('BI2100', 'Olmeca Dark Chocolate 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 992, 'tim', 'tim', '2022-02-28 16:28:02', '2022-02-28 16:28:02', 1, 'Accounts Payable', 'bar'),
('BI2101', 'PIMM\'S 750ml', '', 'noSale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 588, 'tim', 'Lame', '2022-02-28 16:28:22', '2023-03-16 08:52:08', 1, 'Accounts Payable', 'bar'),
('BI2102', 'Passion Fruit 750ml', '', 'noSale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 137, 'tim', 'tim', '2022-02-28 16:28:46', '2022-02-28 16:28:46', 1, 'Accounts Payable', 'bar'),
('BI2103', 'Petit lasir 750ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 22380, 'tim', 'tim', '2022-02-28 16:29:12', '2022-02-28 16:29:12', 1, 'Accounts Payable', 'bar'),
('BI2104', 'Pink Tonic 200ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 666, 'tim', 'tim', '2022-02-28 16:29:38', '2022-02-28 16:29:38', 1, 'Accounts Payable', 'bar'),
('BI2105', 'Plasir De Merle 750ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 17935, 'tim', 'tim', '2022-02-28 16:30:08', '2022-02-28 16:30:08', 1, 'Accounts Payable', 'bar'),
('BI2106', 'Porcupine Ridge Cab Sav', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7995, 'tim', 'tim', '2022-02-28 16:30:28', '2022-02-28 16:30:28', 1, 'Accounts Payable', 'bar'),
('BI2107', 'Porcupine Ridge Chenin Blanc', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 82, 'tim', 'tim', '2022-02-28 16:30:47', '2022-02-28 16:30:47', 1, 'Accounts Payable', 'bar'),
('BI2108', 'Porcupine Ridge Sav Blanc', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-02-28 16:31:07', '2022-02-28 16:31:07', 1, 'Accounts Payable', 'bar'),
('BI2109', 'Proseco Principesa', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 22794, 'tim', 'homsyadmin', '2022-02-28 16:31:38', '2022-06-22 14:22:05', 1, 'Accounts Payable', 'bar'),
('BI2110', 'Pushkin 750ml', '', 'noSale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-02-28 16:35:03', '2022-02-28 16:35:03', 1, 'Accounts Payable', 'bar'),
('BI2111', 'Red Bull', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1299, 'tim', 'tim', '2022-02-28 16:35:53', '2022-02-28 16:35:53', 1, 'Accounts Payable', 'bar'),
('BI2112', 'Red Heart 750ml', '', 'noSale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 865, 'tim', 'homsyadmin', '2022-02-28 16:36:23', '2022-03-01 13:11:33', 1, 'Accounts Payable', 'bar'),
('BI2113', 'Red grape 1Lt box', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1648, 'tim', 'homsyadmin', '2022-02-28 16:36:38', '2022-05-05 14:42:54', 1, 'Accounts Payable', 'bar'),
('BI2114', 'Red grape 330ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 716, 'tim', 'tim', '2022-02-28 16:37:21', '2022-02-28 16:37:21', 1, 'Accounts Payable', 'bar'),
('BI2115', 'Remy Martin 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3600, 'tim', 'tim', '2022-02-28 16:37:50', '2022-02-28 16:37:50', 1, 'Accounts Payable', 'bar'),
('BI2116', 'Richelieu 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1194, 'tim', 'homsyadmin', '2022-02-28 16:38:09', '2022-05-05 14:05:33', 1, 'Accounts Payable', 'bar'),
('BI2117', 'Robertson Chapel Rose 750ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4295, 'tim', 'tim', '2022-02-28 16:38:53', '2022-02-28 16:38:53', 1, 'Accounts Payable', 'bar'),
('BI2118', 'Robertson Natural sweet 3L box', '', 'sale', 'ML', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-02-28 16:39:10', '2022-02-28 16:39:10', 1, 'Accounts Payable', 'bar'),
('BI2119', 'Robertson Sweet Rose 750ml', '', 'sale', 'GLASS', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2300, 'tim', 'homsyadmin', '2022-02-28 16:39:35', '2022-05-05 13:54:23', 1, 'Accounts Payable', 'bar'),
('BI2120', 'Ruper& Rothchild Vinegros 750ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 18595, 'tim', 'tim', '2022-02-28 16:39:53', '2022-02-28 16:39:53', 1, 'Accounts Payable', 'bar'),
('BI2122', 'Savanna Dry', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1696, 'tim', 'Lame', '2022-02-28 16:46:59', '2023-03-23 14:19:06', 1, 'Accounts Payable', 'bar'),
('BI2123', 'Savanah Jean', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1533, 'tim', 'tim', '2022-02-28 16:47:17', '2022-02-28 16:47:17', 1, 'Accounts Payable', 'bar'),
('BI2124', 'Simonsig Savignon Blanc 750ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8790, 'tim', 'tim', '2022-02-28 16:47:47', '2022-02-28 16:47:47', 1, 'Accounts Payable', 'bar'),
('BI2125', 'Smirnoff 1818 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 563, 'tim', 'Lame', '2022-02-28 16:48:09', '2023-08-29 16:47:05', 1, 'Accounts Payable', 'bar'),
('BI2126', 'Soda Water 200ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 733, 'tim', 'tim', '2022-02-28 16:48:34', '2022-02-28 16:48:34', 1, 'Accounts Payable', 'bar'),
('BI2127', 'Southern Comfort 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 786, 'tim', 'tim', '2022-02-28 16:48:49', '2022-02-28 16:48:49', 1, 'Accounts Payable', 'bar'),
('BI2128', 'Sparkling water', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 845, 'tim', 'tim', '2022-02-28 16:49:07', '2022-02-28 16:49:07', 1, 'Accounts Payable', 'bar'),
('BI2129', 'St Louis', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1106, 'tim', 'tim', '2022-02-28 16:49:59', '2022-02-28 16:49:59', 1, 'Accounts Payable', 'bar'),
('BI2130', 'Stella Artois 330ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 16:50:26', '2022-02-28 16:50:26', 1, 'Accounts Payable', 'bar'),
('BI2131', 'Still water 500ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 404, 'tim', 'tim', '2022-02-28 16:50:42', '2022-02-28 16:50:42', 1, 'Accounts Payable', 'bar'),
('BI2132', 'Stoney Ginger Beer', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 741, 'tim', 'tim', '2022-02-28 16:52:05', '2022-02-28 16:52:05', 1, 'Accounts Payable', 'bar'),
('BI2133', 'Strawberry Lips 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 567, 'tim', 'tim', '2022-02-28 16:52:24', '2022-02-28 16:52:24', 1, 'Accounts Payable', 'bar'),
('BI2134', 'Stretton\'s 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 16:52:41', '2022-02-28 16:52:41', 1, 'Accounts Payable', 'bar'),
('BI2135', 'Stroh 750ml Bottle', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1892, 'tim', 'tim', '2022-02-28 16:53:22', '2022-02-28 16:53:22', 1, 'Accounts Payable', 'bar'),
('BI2136', 'Strongbow', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1113, 'tim', 'tim', '2022-02-28 16:53:51', '2022-02-28 16:53:51', 1, 'Accounts Payable', 'bar'),
('BI2137', 'Tanqueray Gin 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1043, 'tim', 'tim', '2022-02-28 16:54:19', '2022-02-28 16:54:19', 1, 'Accounts Payable', 'bar'),
('BI2138', 'Tequilla Chocolate 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1140, 'tim', 'tim', '2022-02-28 16:54:39', '2022-02-28 16:54:39', 1, 'Accounts Payable', 'bar'),
('BI2139', 'Tequilla Gold 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1153, 'tim', 'tim', '2022-02-28 16:54:56', '2022-02-28 16:54:56', 1, 'Accounts Payable', 'bar'),
('BI2140', 'Tequilla Siver 750mi', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1150, 'tim', 'tim', '2022-02-28 16:55:12', '2022-02-28 16:55:12', 1, 'Accounts Payable', 'bar'),
('BI2141', 'Thelema Chardonnay 750ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 20495, 'tim', 'tim', '2022-02-28 16:55:38', '2022-02-28 16:55:38', 1, 'Accounts Payable', 'bar'),
('BI2142', 'Thelema Merlot 750ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 21095, 'tim', 'tim', '2022-02-28 16:55:58', '2022-02-28 16:55:58', 1, 'Accounts Payable', 'bar'),
('BI2143', 'Tonic Water Indian 200ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 749, 'homsyadmin', 'homsyadmin', '2022-02-28 15:35:25', '2022-02-28 15:35:25', 1, 'Accounts Payable', 'bar'),
('BI2144', 'Triple Sec 750ml', '', 'noSale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 703, 'homsyadmin', 'homsyadmin', '2022-02-28 14:33:50', '2022-02-28 15:33:24', 1, 'Accounts Payable', 'bar'),
('BI2145', 'Veuve 750ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 75435, 'homsyadmin', 'homsyadmin', '2022-02-28 14:32:04', '2022-02-28 14:32:04', 1, 'Accounts Payable', 'bar'),
('BI2146', 'Windhoek Draught', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1625, 'homsyadmin', 'homsyadmin', '2022-02-28 14:31:50', '2022-02-28 14:31:50', 1, 'Accounts Payable', 'bar'),
('BI2147', 'Windhoek Lager', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1247, 'homsyadmin', 'homsyadmin', '2022-02-28 14:30:28', '2022-02-28 14:30:28', 1, 'Accounts Payable', 'bar'),
('BI2148', 'Blue Caracao', '', 'sale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 633, 'homsyadmin', 'homsyadmin', '2022-03-01 09:11:05', '2022-03-01 09:11:05', 1, 'Accounts Payable', 'bar'),
('BI2233', 'Hennessy', '', 'sale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2129, 'homsyadmin', 'Tlamelo Mogale', '2022-03-02 12:36:24', '2022-04-19 08:28:44', 1, 'Accounts Payable', 'bar'),
('BI3000', 'Sprite 300ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 741, 'homsyadmin', 'Lame', '2023-01-23 14:23:15', '2023-05-26 09:27:03', 1, 'Accounts Payable', 'bar'),
('BI3001', 'Ice Cubes', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1500, 'homsyadmin', 'homsyadmin', '2023-01-23 14:24:05', '2023-01-23 14:24:05', 1, 'Accounts Payable', 'bar'),
('BI4001', 'Native Gin Honey Bush', '', 'noSale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 547, 'homsyadmin', 'homsyadmin', '2022-03-02 14:54:31', '2022-03-02 14:54:31', 1, 'Accounts Payable', 'bar'),
('BI4002', 'Kulture', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 547, 'homsyadmin', 'homsyadmin', '2022-03-02 14:56:33', '2022-03-02 14:56:33', 1, 'Accounts Payable', 'bar'),
('BI4003', 'Caracara', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 547, 'homsyadmin', 'homsyadmin', '2022-03-02 14:57:00', '2022-03-02 14:57:00', 1, 'Accounts Payable', 'bar'),
('BI4004', 'Liqui Fruit Orange 300ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 895, 'homsyadmin', 'homsyadmin', '2022-03-02 14:58:00', '2022-03-02 14:58:00', 1, 'Accounts Payable', 'bar'),
('BI4007', 'Liqui Fruit Mango &Orange 300ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 716, 'homsyadmin', 'Lame', '2022-03-02 14:59:51', '2023-02-09 17:43:24', 1, 'Accounts Payable', 'bar'),
('BI4008', 'Lutzville Chardonnay', '', 'sale', 'GLASS', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2605, 'homsyadmin', 'homsyadmin', '2022-03-02 15:02:12', '2022-05-05 12:47:25', 1, 'Accounts Payable', 'bar'),
('BI4009', 'Arabella Chardonay 750ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-03-02 15:03:13', '2022-03-02 15:03:13', 1, 'Accounts Payable', 'bar'),
('BI4010', 'Warwick First Lady Chardonay', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10595, 'homsyadmin', 'Lame', '2022-03-02 15:04:06', '2023-02-23 14:53:19', 1, 'Accounts Payable', 'bar'),
('BI4012', 'Simonsig Stellenboch Blanc', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-03-02 15:06:29', '2022-03-02 15:06:29', 1, 'Accounts Payable', 'bar'),
('BI4013', 'Liqui Fruit Cranbery 300ml', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 733, 'homsyadmin', 'homsyadmin', '2022-03-02 15:07:24', '2022-03-02 15:07:24', 1, 'Accounts Payable', 'bar'),
('BI4014', 'Liqui Fruit Cranbery 2l', '', 'sale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1748, 'homsyadmin', 'homsyadmin', '2022-03-02 15:08:25', '2022-03-02 15:08:25', 1, 'Accounts Payable', 'bar'),
('BI4015', 'Amstel lite', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1277, 'homsyadmin', 'homsyadmin', '2022-03-02 15:08:58', '2022-03-02 15:08:58', 1, 'Accounts Payable', 'bar'),
('BI4016', 'Fat Bastard Cabernet Sav 750', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 14095, 'homsyadmin', 'homsyadmin', '2022-03-02 15:10:10', '2022-03-02 15:10:10', 1, 'Accounts Payable', 'bar'),
('BI4018', 'Coffee Bean', '', 'noSale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'homsyadmin', 'homsyadmin', '2022-03-03 10:14:06', '2022-03-03 10:14:06', 1, 'Accounts Payable', 'bar'),
('BI4020', 'Alto Rouge', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 11295, 'homsyadmin', 'homsyadmin', '2022-03-02 15:11:34', '2022-03-02 15:11:34', 1, 'Accounts Payable', 'bar'),
('BI4030', 'Floural Cooster', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 15895, 'homsyadmin', 'homsyadmin', '2022-03-04 16:07:18', '2022-03-04 16:07:18', 1, 'Accounts Payable', 'bar'),
('BI4112', 'Liqui Fruit Orange 1lt', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1895, 'homsyadmin', 'homsyadmin', '2022-03-02 15:13:30', '2022-05-05 14:40:05', 1, 'Accounts Payable', 'bar'),
('BI4543', 'Amarula', '', 'noSale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 500, 'homsyadmin', 'homsyadmin', '2022-03-03 14:52:09', '2022-03-03 14:52:09', 1, 'Accounts Payable', 'bar'),
('BI4544', 'Belgravia Gin', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-09 15:03:26', '2022-03-09 15:07:20', 1, 'Accounts Payable', 'bar'),
('BI4545', 'Olmeca Tequila Reposado', '', 'sale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 990, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 19:10:11', '2022-03-10 19:10:11', 1, 'Accounts Payable', 'bar'),
('BI4546', 'Olmeca Tequila Blanc', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1040, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 19:12:08', '2022-03-10 19:12:08', 1, 'Accounts Payable', 'bar'),
('BI4547', 'Amstel Beer lager', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1275, 'Tlamelo Mogale', 'homsyadmin', '2022-03-10 19:13:42', '2022-05-05 11:08:12', 1, 'Accounts Payable', 'bar'),
('BI4548', 'Lutzville Sav Blanc', '', 'sale', 'GLASS', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2998, 'Tlamelo Mogale', 'Lame', '2022-03-16 12:19:50', '2023-03-30 11:34:17', 2, 'Accounts Payable', 'bar'),
('BI4549', 'Lutzville Cab Sav', '', 'sale', 'GLASS', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3300, 'Tlamelo Mogale', 'Lame', '2022-03-16 12:20:31', '2023-03-30 11:34:04', 2, 'Accounts Payable', 'bar'),
('BI4550', 'Lutzville Merlot', '', 'sale', 'GLASS', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3413, 'Tlamelo Mogale', 'Lame', '2022-03-30 12:49:22', '2023-03-30 11:33:23', 1, 'Accounts Payable', 'bar'),
('BI4551', 'SimonSig Chenin Blanc', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6888, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-30 12:50:23', '2022-03-30 13:39:56', 1, 'Accounts Payable', 'bar'),
('BI4552', 'Monin coconut 1lt', '', 'sale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 295, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-10 11:21:05', '2022-04-10 11:21:05', 1, 'Accounts Payable', 'bar'),
('BI4553', 'Toscello Bitters', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 9160, 'Tlamelo Mogale', 'homsyadmin', '2022-04-10 12:09:03', '2022-06-22 14:33:58', 1, 'Accounts Payable', 'bar'),
('BI4554', 'Porcupine ridge Merlot', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7295, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 17:02:54', '2022-04-29 17:02:54', 1, 'Accounts Payable', 'bar'),
('BI4556', ' Lavazza Coffee Beans', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 38683, 'Tlamelo Mogale', 'Lame', '2022-04-29 17:46:07', '2023-06-02 13:25:26', 1, 'Accounts Payable', 'bar'),
('BI4557', 'Absolut Vodka', '', 'sale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1133, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 18:34:25', '2022-04-29 18:34:25', 1, 'Accounts Payable', 'bar'),
('BI4558', 'St louis Export', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lillian', 'Lillian', '2022-06-08 11:17:29', '2022-06-08 11:17:29', 1, 'Accounts Payable', 'bar'),
('BI4559', 'Glenfiddich 18', '', 'sale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4067, 'Masa', 'Masa', '2022-06-17 10:07:01', '2022-06-17 10:07:01', 1, 'Accounts Payable', 'bar'),
('BI4560', 'Earl Grey Tea', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 92, 'homsyadmin', 'homsyadmin', '2022-06-22 10:52:14', '2022-06-22 10:52:14', 1, 'Accounts Payable', 'bar'),
('BI4561', 'Rupert & Rothschild ', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 18195, 'homsyadmin', 'Lame', '2022-06-22 12:23:56', '2023-04-19 16:35:49', 1, 'Accounts Payable', 'bar'),
('BI4562', 'PIMMS', '', 'noSale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 833, 'T.Masetlhe', 'T.Masetlhe', '2022-06-22 13:19:47', '2022-06-22 13:19:47', 1, 'Accounts Payable', 'bar'),
('BI4563', 'Ice tea lemon', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 738, 'homsyadmin', 'homsyadmin', '2022-06-22 13:53:00', '2022-06-22 13:53:00', 1, 'Accounts Payable', 'bar'),
('BI4564', 'Ice Tea Peach', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 749, 'homsyadmin', 'homsyadmin', '2022-06-22 13:53:35', '2022-06-22 13:53:35', 1, 'Accounts Payable', 'bar'),
('BI4565', 'Tonic water', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 708, 'homsyadmin', 'homsyadmin', '2022-06-22 14:07:35', '2022-06-22 14:07:35', 1, 'Accounts Payable', 'bar'),
('BI4566', 'Processo Rose', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 15000, 'homsyadmin', 'homsyadmin', '2022-06-22 14:26:06', '2022-06-22 14:26:06', 1, 'Accounts Payable', 'bar'),
('BI4567', 'Harolds pinotage', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 15000, 'homsyadmin', 'homsyadmin', '2022-06-22 14:28:03', '2022-06-22 14:28:03', 1, 'Accounts Payable', 'bar'),
('BI4568', 'Bramton Shiraz', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7500, 'homsyadmin', 'Lame', '2022-06-22 14:31:02', '2023-03-23 14:22:36', 1, 'Accounts Payable', 'bar'),
('BI4569', 'Moet & Chandon', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 60000, 'homsyadmin', 'homsyadmin', '2022-06-22 14:32:56', '2022-06-22 14:32:56', 1, 'Accounts Payable', 'bar'),
('BI4570', 'TEQUILA BLACK(750ML)', '', 'sale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1040, 'Lillian', 'Lillian', '2022-06-25 16:14:42', '2022-06-25 16:14:42', 1, 'Accounts Payable', 'bar'),
('BI4571', 'KWV 5years', 'Brandy', 'sale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 600, 'Lillian', 'homsyadmin', '2022-06-25 19:12:53', '2023-01-23 11:18:19', 1, 'Accounts Payable', 'bar'),
('BI4573', 'Caribbean White Rum ', '', 'noSale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 20990, 'Lillian', 'Lillian', '2022-06-27 15:58:41', '2022-06-27 15:58:41', 1, 'Accounts Payable', 'bar'),
('BI4574', 'Johnnie walker red', '', 'sale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2023-01-23 11:16:59', '2023-01-23 11:16:59', 1, 'Accounts Payable', 'bar'),
('BI4575', 'MONIN MANGO SYRUP PUREE', '', 'sale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 657, 'Lame', 'Lame', '2023-02-08 12:13:54', '2023-02-08 12:13:54', 1, 'Bar Revenue', 'bar'),
('BI4576', 'OLMECA SILVER TEQUILA 700ML', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1173, 'Lame', 'Lame', '2023-02-09 17:45:11', '2023-02-09 17:45:11', 1, 'Accounts Payable', 'bar'),
('BI4577', 'OLMECA GOLD TEQUILA 700ML', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1200, 'Lame', 'Lame', '2023-02-09 17:46:07', '2023-02-09 17:46:07', 1, 'Accounts Payable', 'bar'),
('BI4578', 'SCWEPPES SODA WATER 1L', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1150, 'Lame', 'Lame', '2023-02-10 15:40:29', '2023-02-10 15:40:29', 1, 'Accounts Payable', 'bar'),
('BI4579', 'WARWICK FIRST LADY SAV BLANC', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10595, 'Lame', 'Lame', '2023-02-10 16:13:46', '2023-02-10 16:13:46', 1, 'Accounts Payable', 'bar'),
('BI4580', 'CHOCOLATE CAKE', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 36000, 'Lame', 'Lame', '2023-02-13 14:00:52', '2023-02-13 14:00:52', 1, 'Accounts Payable', 'bar'),
('BI4581', 'SEAGRAM\'S GIN', '', 'sale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1047, 'Lame', 'Lame', '2023-02-13 14:48:30', '2023-03-07 11:16:38', 1, 'Accounts Payable', 'bar'),
('BI4582', 'KOLA CORDIAL', '', 'sale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4095, 'Lame', 'Lame', '2023-02-13 16:38:01', '2023-02-13 16:38:01', 1, 'Accounts Payable', 'bar'),
('BI4583', 'LEMON', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 195, 'Lame', 'Lame', '2023-02-13 16:51:10', '2023-02-13 16:51:10', 6, 'Accounts Payable', 'bar'),
('BI4584', 'SPARLETTA GINGER BEER', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 745, 'Lame', 'Lame', '2023-02-15 13:45:57', '2023-02-15 13:45:57', 6, 'Accounts Payable', 'bar'),
('BI4585', 'Apple and Cranberry', '', 'sale', 'LT', 0, NULL, 'Inventory', 'Deposit Holding', 'Stock Adjustment', NULL, NULL, 1795, 'Lame', 'Lame', '2023-02-16 13:21:24', '2023-02-16 13:21:24', 2, 'Accounts Payable', 'bar'),
('BI4586', 'LEMON GREEN TEA', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 58, 'Lame', 'Lame', '2023-02-16 14:02:03', '2023-03-17 10:02:47', 30, 'Accounts Payable', 'bar'),
('BI4588', 'GREEN TEA CARDAMON', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Tax', NULL, NULL, 2950, 'Lame', 'Lame', '2023-02-16 14:04:15', '2023-03-17 10:03:06', 30, 'Accounts Payable', 'bar'),
('BI4589', 'GREEN TEA', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Tax', NULL, NULL, 1750, 'Lame', 'Lame', '2023-02-16 14:17:54', '2023-03-17 10:03:27', 30, 'Accounts Payable', 'bar'),
('BI4590', 'Sparletta Creame Soda 300ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 716, 'Lame', 'Lame', '2023-02-23 15:39:11', '2023-02-23 15:39:11', 6, 'Accounts Payable', 'bar'),
('BI4591', 'Maraschino Cherries', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 11350, 'Lame', 'Lame', '2023-02-24 16:17:46', '2023-03-28 16:55:17', 1, 'Accounts Payable', 'bar'),
('BI4592', 'Ice Block', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1800, 'Lame', 'Lame', '2023-02-25 13:01:07', '2023-02-25 13:01:07', 1, 'Accounts Payable', 'bar'),
('BI4593', 'Stoney Ginger beer (L)', '', 'sale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 997, 'Lame', 'Lame', '2023-02-25 13:53:55', '2023-03-06 12:58:30', 1, 'Accounts Payable', 'bar'),
('BI4594', 'Pineapple Juice', '', 'sale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3390, 'Lame', 'Lame', '2023-03-04 16:45:15', '2023-03-04 16:45:15', 1, 'Accounts Payable', 'bar'),
('BI4595', 'MONIN PEACH', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-03-07 09:08:23', '2023-08-26 16:11:13', 1, 'Accounts Payable', 'bar'),
('BI4596', 'Sedgwick\'s Old Brown 750ml', '', 'sale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 162, 'Lame', 'Lame', '2023-03-07 09:09:34', '2023-03-07 09:14:59', 30, 'Accounts Payable', 'bar'),
('BI4597', 'TANG 750ML', '', 'noSale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-03-07 09:12:17', '2023-03-07 09:12:17', 30, 'Accounts Payable', 'bar'),
('BI4598', 'Cucumber Tonic', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-03-07 09:13:26', '2023-03-07 09:13:26', 6, 'Accounts Payable', 'bar'),
('BI4599', 'Ice Tea Rooibos', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-03-07 09:14:19', '2023-03-07 09:14:19', 6, 'Accounts Payable', 'bar'),
('BI4600', 'Petit Plasir De Merle Red Blend', '', 'sale', 'BOTTLE', 0, NULL, 'Inventory', 'COGS', 'Tips', NULL, NULL, 17935, 'Lame', 'Lame', '2023-03-07 10:34:14', '2023-03-07 10:34:14', 1, 'Accounts Payable', 'bar'),
('BI4601', 'Plasir Red Blend', '', 'sale', 'BOTTLE', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-03-07 10:40:58', '2023-03-07 10:40:58', 1, 'Accounts Payable', 'bar'),
('BI4602', 'JOHNNY WALKER 12 YEARS', '', 'noSale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-03-07 11:01:00', '2023-03-07 11:04:19', 1, 'Accounts Payable', 'bar'),
('BI4603', 'MANGO JUICE', '', 'sale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2950, 'Lame', 'Lame', '2023-03-07 16:40:44', '2023-03-07 16:40:44', 1, 'Accounts Payable', 'bar'),
('BI4604', 'Rooibos Tea Bags', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 217, 'Lame', 'Lame', '2023-03-08 11:04:55', '2023-03-08 11:04:55', 30, 'Accounts Payable', 'bar'),
('BI4605', 'Chateau Del Rei Perle', '', 'sale', 'Each', 0, NULL, 'Inventory', 'Discount', 'Stock Adjustment', NULL, NULL, 1333, 'Lame', 'Lame', '2023-03-11 13:30:19', '2023-03-11 13:30:19', 6, 'Accounts Payable', 'bar'),
('BI4606', 'Butlers Blue Curacao', '', 'sale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 663, 'Lame', 'Lame', '2023-03-11 13:44:12', '2023-03-11 13:44:12', 30, 'Accounts Payable', 'bar'),
('BI4607', 'White Sugar Sachets', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 33, 'Lame', 'Lame', '2023-03-15 16:40:26', '2023-03-15 16:40:26', 1000, 'Accounts Payable', 'bar'),
('BI4608', 'Brown Sugar Sachets', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 37, 'Lame', 'Lame', '2023-03-15 16:41:20', '2023-03-15 16:41:20', 1000, 'Accounts Payable', 'bar'),
('BI4609', 'Tomato Sauce 350ml', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2295, 'Lame', 'Lame', '2023-03-15 16:46:02', '2023-03-15 16:46:02', 2, 'Accounts Payable', 'bar');
INSERT INTO `stockitems` (`itemCode`, `name`, `description`, `itemType`, `unitOfMeassure`, `isActive`, `saleAcc`, `inventoryAcc`, `cogsAcc`, `adjustAcc`, `salePrice`, `actualCost`, `lastCost`, `createdBy`, `editedBy`, `createdOn`, `editedOn`, `reoderLevel`, `payableAcc`, `belongsTo`) VALUES
('BI4610', 'Tropical 300ml', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 895, 'Lame', 'Lame', '2023-03-16 13:23:10', '2023-03-16 13:23:10', 6, 'Accounts Payable', 'bar'),
('BI4611', 'Liquifruit Breakfast Punch', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 716, 'Lame', 'Lame', '2023-03-23 08:44:12', '2023-03-23 08:44:12', 6, 'Accounts Payable', 'bar'),
('BI4612', 'Ginger Ale ', '', 'sale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1150, 'Lame', 'Lame', '2023-03-23 10:16:46', '2023-03-23 10:16:46', 1, 'Accounts Payable', 'bar'),
('BI4613', 'Liquifruit Passion Power', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 733, 'Lame', 'Lame', '2023-03-23 12:56:31', '2023-03-23 12:56:31', 6, 'Accounts Payable', 'bar'),
('BI4614', 'Litchi Juice', '', 'noSale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-03-28 11:55:17', '2023-03-28 11:55:17', 1, 'Accounts Payable', 'bar'),
('BI4615', 'Chivas 15yrs', '', 'sale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1772, 'Lame', 'Lame', '2023-03-28 14:04:33', '2023-03-28 14:07:07', 1, 'Accounts Payable', 'bar'),
('BI4616', 'Black forest Ice Cream', '', 'sale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1340, 'Lame', 'Lame', '2023-04-19 16:43:48', '2023-04-19 16:43:48', 1, 'Accounts Payable', 'bar'),
('BI4617', 'Cocktail Glass', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1138, 'Lame', 'Lame', '2023-04-20 09:03:58', '2023-04-20 09:03:58', 1, 'Accounts Payable', 'bar'),
('BI4618', 'Fridge Jug', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2195, 'Lame', 'Lame', '2023-04-20 09:09:15', '2023-04-20 09:09:15', 1, 'Accounts Payable', 'bar'),
('BI4619', 'Prosecco Black', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 18000, 'Lame', 'Lame', '2023-05-06 16:45:38', '2023-05-06 16:45:38', 1, 'Accounts Payable', 'bar'),
('BI4620', 'Brutal Fruit', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1533, 'Lame', 'Lame', '2023-05-06 17:13:27', '2023-05-06 17:13:27', 1, 'Accounts Payable', 'bar'),
('BI4621', 'Champagne Bucket', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 15068, 'Lame', 'Lame', '2023-05-13 09:58:54', '2023-05-13 09:58:54', 1, 'Accounts Payable', 'other'),
('BI4622', 'Mango and Orange', '', 'noSale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 716, 'Lame', 'Lame', '2023-05-13 12:01:22', '2023-05-13 12:01:22', 1, 'Accounts Payable', 'bar'),
('BI4624', 'Spring Field  Chardonnay', '', 'sale', 'BOTTLE', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 17995, 'Lame', 'Lame', '2023-05-13 12:17:03', '2023-05-13 12:17:03', 1, 'Accounts Payable', 'bar'),
('BI4625', 'Spring Field Life from Stone', '', 'sale', 'BOTTLE', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 14895, 'Lame', 'Lame', '2023-05-13 12:22:21', '2023-05-13 12:22:21', 1, 'Accounts Payable', 'bar'),
('BI4626', 'Okavango Gin', '', 'sale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1014, 'Lame', 'Lame', '2023-05-17 13:41:03', '2023-05-17 13:41:03', 1, 'Accounts Payable', 'bar'),
('BI4627', 'Warwick Merlot', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8395, 'Lame', 'Lame', '2023-05-25 10:27:20', '2023-05-25 10:27:20', 1, 'Accounts Payable', 'bar'),
('BI4629', 'Sprite ', '', 'sale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 898, 'Lame', 'Lame', '2023-05-26 09:25:31', '2023-05-26 09:27:32', 1, 'Accounts Payable', 'bar'),
('BI4630', 'Pine Nut 300ml', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 895, 'Lame', 'Lame', '2023-05-26 09:32:08', '2023-05-26 09:32:08', 1, 'Accounts Payable', 'bar'),
('BI4631', 'Coffee Sticks', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 119, 'Lame', 'Lame', '2023-05-26 16:23:10', '2023-05-26 16:23:10', 1, 'Accounts Payable', 'bar'),
('BI4632', 'Lemon Tea Five Roses', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 115, 'Lame', 'Lame', '2023-06-07 13:24:55', '2023-06-07 13:24:55', 1, 'Accounts Payable', 'bar'),
('BI4633', 'Green Tea Strawberry', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 98, 'Lame', 'Lame', '2023-06-23 12:53:44', '2023-06-23 12:53:44', 1, 'Accounts Payable', 'bar'),
('BI4634', 'Brampton Wine ', '', 'sale', 'BOTTLE', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8695, 'Kemo', 'Lame', '2023-08-10 11:39:31', '2023-08-26 16:10:39', 5, 'Accounts Payable', 'bar'),
('BI4635', 'Robertson\'s Sweet Red', '', 'sale', 'GLASS', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-09-18 15:00:17', '2023-09-18 15:00:17', 1, 'Accounts Payable', 'bar'),
('BI4636', 'Bulldog Gin', '', 'sale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1407, 'Lame', 'Lame', '2023-10-26 13:22:47', '2023-10-26 13:22:47', 5, 'Accounts Payable', 'bar'),
('BI4637', 'Meerlust Chardonnay', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 33995, 'Lame', 'Lame', '2023-11-28 11:39:21', '2023-11-28 11:39:21', 1, 'Bar Revenue', 'bar'),
('BI4638', 'Hunters Dry Lemon', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1596, 'Lame', 'Lame', '2023-12-18 14:25:38', '2023-12-18 14:25:38', 5, 'Accounts Payable', 'bar'),
('BI4639', 'Jameson Black Barrel', '', 'sale', 'TOT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2100, 'Lame', 'Lame', '2023-12-18 15:04:44', '2023-12-18 15:04:44', 10, 'Accounts Payable', 'bar'),
('KI', 'Peach Slices', '', 'noSale', 'TIN/CAN', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2000, 'Lame', 'Lame', '2023-02-23 16:01:54', '2023-02-25 12:49:55', 1, 'Accounts Payable', 'food'),
('KI01165', 'Anchovy', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-05-25 13:00:34', '2023-05-26 16:21:52', 1, 'Accounts Payable', 'food'),
('KI01830', 'LETTUCE MIXED', 'MIXED LEAVES', 'noSale', 'Each', 0, NULL, 'Inventory', 'Inventory', 'Inventory', NULL, NULL, 2595, 'Lame', 'Lame', '2023-02-07 13:22:55', '2023-02-07 13:22:55', 1, 'Inventory', 'food'),
('KI1000', '1INCH TOAST SLICE', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 112, 'homsyadmin', 'Chef', '2022-02-28 11:46:19', '2022-03-16 07:29:01', 1, 'Accounts Payable', 'food'),
('KI1001', 'Chocolate Chip kg', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 11:50:04', '2022-02-28 11:50:04', 1, 'Accounts Payable', 'food'),
('KI1002', 'Croissant Roll', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1195, 'tim', 'tim', '2022-02-28 11:52:00', '2022-02-28 11:52:00', 1, 'Accounts Payable', 'food'),
('KI1003', 'Gluten Free Hamburger Roll', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 11:52:30', '2022-02-28 11:52:30', 1, 'Accounts Payable', 'food'),
('KI1004', 'Grissini', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 11:53:07', '2022-02-28 11:53:07', 1, 'Accounts Payable', 'food'),
('KI1005', 'Ham Burger Roll', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 225, 'tim', 'Lame', '2022-02-28 11:53:33', '2023-02-23 10:36:36', 12, 'Accounts Payable', 'food'),
('KI1006', 'Mini Ham Burger Rolls', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 100, 'tim', 'Lame', '2022-02-28 11:54:12', '2023-02-23 10:37:11', 12, 'Accounts Payable', 'food'),
('KI1008', 'Pita Bread (Brown or White)', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4395, 'tim', 'tim', '2022-02-28 11:57:38', '2022-02-28 12:30:21', 1, 'Accounts Payable', 'food'),
('KI1009', 'Sandwich - Nine Grain Bread', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 12:31:13', '2022-02-28 12:31:13', 1, 'Accounts Payable', 'food'),
('KI1010', 'Sourdough (Round) Slice', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 12:31:47', '2022-02-28 12:31:47', 1, 'Accounts Payable', 'food'),
('KI1011', 'Sourdough Garlic Croutons', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 12:32:24', '2022-02-28 12:32:24', 1, 'Accounts Payable', 'food'),
('KI1012', 'Toast (Sourdough)', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 12:32:53', '2022-02-28 12:32:53', 1, 'Accounts Payable', 'food'),
('KI1013', 'Tortilla Wrap', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 501, 'tim', 'tim', '2022-02-28 12:33:25', '2022-02-28 12:33:25', 1, 'Accounts Payable', 'food'),
('KI1014', 'Milk 500ML', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 860, 'tim', 'Lame', '2022-02-28 12:33:49', '2023-02-10 16:40:12', 1, 'Accounts Payable', 'food'),
('KI1015', 'Black Pepper goat cheese', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 12:34:47', '2022-02-28 12:34:47', 1, 'Accounts Payable', 'food'),
('KI1016', 'Bococcini Balls', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 12:35:35', '2022-02-28 12:35:35', 1, 'Accounts Payable', 'food'),
('KI1017', 'Butter', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3995, 'tim', 'tim', '2022-02-28 12:35:59', '2022-02-28 12:35:59', 1, 'Accounts Payable', 'food'),
('KI1018', 'Cheddar Cheese', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10148, 'tim', 'tim', '2022-02-28 12:44:09', '2022-02-28 12:44:09', 1, 'Accounts Payable', 'food'),
('KI1019', 'Cream Cheese ', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 12396, 'tim', 'Lame', '2022-02-28 12:44:42', '2023-09-23 11:11:01', 1, 'Accounts Payable', 'food'),
('KI1020', 'Double Cream', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 12:45:06', '2022-02-28 12:45:06', 1, 'Accounts Payable', 'food'),
('KI1021', 'Egg Yolks', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 12:45:55', '2022-02-28 12:45:55', 1, 'Accounts Payable', 'food'),
('KI1022', 'Eggs', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 167, 'tim', 'Lame', '2022-02-28 12:46:27', '2024-01-22 11:53:11', 1, 'Accounts Payable', 'food'),
('KI1023', 'Ementhale Cheese', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 12:46:50', '2022-02-28 12:46:50', 1, 'Accounts Payable', 'food'),
('KI1024', 'Feta', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 11238, 'tim', 'tim', '2022-02-28 12:47:18', '2022-02-28 12:47:18', 1, 'Accounts Payable', 'food'),
('KI1025', 'Goat Cheese', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 12:47:58', '2022-02-28 12:47:58', 1, 'Accounts Payable', 'food'),
('KI1026', 'Grated Cheddar Cheese', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10146, 'tim', 'tim', '2022-02-28 12:48:32', '2022-02-28 12:48:32', 1, 'Accounts Payable', 'food'),
('KI1027', 'Haloumi Cheese', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 13750, 'tim', 'tim', '2022-02-28 12:48:51', '2022-02-28 12:48:51', 1, 'Accounts Payable', 'food'),
('KI1028', 'Heavy Cream', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 12:49:20', '2022-02-28 12:49:20', 1, 'Accounts Payable', 'food'),
('KI1029', 'Marscarpone Cheese', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 12:49:39', '2022-02-28 12:49:39', 1, 'Accounts Payable', 'food'),
('KI1030', 'Meadowland Cream', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4826, 'tim', 'homsyadmin', '2022-02-28 12:50:04', '2022-10-13 15:25:48', 1, 'Accounts Payable', 'food'),
('KI1031', 'Mozzarella Cheese', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 24990, 'tim', 'tim', '2022-02-28 12:50:30', '2022-02-28 12:50:30', 1, 'Accounts Payable', 'food'),
('KI1032', 'Pecorino cheese', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 12:50:56', '2022-02-28 12:50:56', 1, 'Accounts Payable', 'food'),
('KI1033', 'Plain Yogurt Double Cream', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3250, 'tim', 'Lame', '2022-02-28 12:54:13', '2023-08-29 12:25:48', 1, 'Accounts Payable', 'food'),
('KI1034', 'Salted Butter', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:10:10', '2022-02-28 13:10:59', 1, 'Accounts Payable', 'food'),
('KI1035', 'Unsalted Butter', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3286, 'tim', 'tim', '2022-02-28 13:10:46', '2022-02-28 13:10:46', 1, 'Accounts Payable', 'food'),
('KI1036', 'Whipped Cream', '', 'noSale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4762, 'tim', 'tim', '2022-02-28 13:12:00', '2022-02-28 13:12:00', 1, 'Accounts Payable', 'food'),
('KI1037', 'Whole Milk', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 9695, 'tim', 'Lame', '2022-02-28 13:12:29', '2024-01-22 11:54:48', 1, 'Accounts Payable', 'food'),
('KI1038', 'Apple', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2195, 'tim', 'tim', '2022-02-28 13:12:47', '2022-02-28 13:12:47', 1, 'Accounts Payable', 'food'),
('KI1039', 'Apples Green', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2895, 'tim', 'tim', '2022-02-28 13:14:22', '2022-02-28 13:14:22', 1, 'Accounts Payable', 'food'),
('KI1040', 'Apples Red', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2923, 'tim', 'tim', '2022-02-28 13:14:45', '2022-02-28 13:14:45', 1, 'Accounts Payable', 'food'),
('KI1042', 'Avocado', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1695, 'tim', 'Tlamelo Mogale', '2022-02-28 13:15:22', '2022-03-16 10:10:57', 1, 'Accounts Payable', 'food'),
('KI1043', 'Avocado Flesh', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 12633, 'tim', 'tim', '2022-02-28 13:15:41', '2022-02-28 13:15:41', 1, 'Accounts Payable', 'food'),
('KI1044', 'Baby Gem Squash', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1876, 'tim', 'tim', '2022-02-28 13:16:03', '2022-02-28 13:16:03', 1, 'Accounts Payable', 'food'),
('KI1045', 'Baby Potatoes', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 670, 'tim', 'tim', '2022-02-28 13:16:30', '2022-02-28 13:16:30', 1, 'Accounts Payable', 'food'),
('KI1046', 'Blueberries', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1495, 'tim', 'homsyadmin', '2022-02-28 13:17:05', '2023-01-23 14:25:13', 1, 'Accounts Payable', 'food'),
('KI1047', 'Brinjal', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1182, 'tim', 'tim', '2022-02-28 13:17:31', '2022-02-28 13:17:31', 1, 'Accounts Payable', 'food'),
('KI1048', 'Butter Lettuce', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1695, 'tim', 'Lame', '2022-02-28 13:17:51', '2023-10-24 09:02:02', 2, 'Accounts Payable', 'food'),
('KI1049', 'Carrots 5kg', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 895, 'tim', 'tim', '2022-02-28 13:18:16', '2022-02-28 13:18:16', 1, 'Accounts Payable', 'food'),
('KI1050', 'Cauliflower', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3795, 'tim', 'tim', '2022-02-28 13:18:33', '2022-02-28 13:18:33', 1, 'Accounts Payable', 'food'),
('KI1051', 'Celery', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1495, 'tim', 'Lame', '2022-02-28 13:18:52', '2023-03-16 13:37:23', 1, 'Accounts Payable', 'food'),
('KI1052', 'Crushed Tomatoes', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:19:20', '2022-02-28 13:19:20', 1, 'Accounts Payable', 'food'),
('KI1053', 'Cucumber', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 995, 'tim', 'homsyadmin', '2022-02-28 13:20:16', '2023-01-23 14:25:48', 1, 'Accounts Payable', 'food'),
('KI1054', 'Dried Bananas', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8140, 'tim', 'tim', '2022-02-28 13:20:37', '2022-02-28 13:20:37', 1, 'Accounts Payable', 'food'),
('KI1055', 'Fennel fresh', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:22:10', '2022-02-28 13:22:10', 1, 'Accounts Payable', 'food'),
('KI1056', 'Fresh Blueberries', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8355, 'tim', 'tim', '2022-02-28 13:22:29', '2022-02-28 13:22:29', 1, 'Accounts Payable', 'food'),
('KI1057', 'Fresh Chives', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1000, 'tim', 'Lame', '2022-02-28 13:22:48', '2023-11-23 11:57:19', 1, 'Accounts Payable', 'food'),
('KI1058', 'Fresh Basil', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 500, 'tim', 'Lame', '2022-02-28 13:23:55', '2023-06-23 12:23:48', 1, 'Accounts Payable', 'food'),
('KI1059', 'Fresh Dill ', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1695, 'tim', 'Lame', '2022-02-28 13:24:17', '2023-06-23 13:41:14', 1, 'Accounts Payable', 'food'),
('KI1060', 'Fresh Spinach', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 551, 'tim', 'tim', '2022-02-28 13:24:33', '2022-02-28 13:24:33', 1, 'Accounts Payable', 'food'),
('KI1061', 'Fruit Coulis', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:24:55', '2022-02-28 13:24:55', 1, 'Accounts Payable', 'food'),
('KI1062', 'Garden Baby Greens', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2000, 'tim', 'tim', '2022-02-28 13:25:46', '2022-02-28 13:25:46', 1, 'Accounts Payable', 'food'),
('KI1063', 'Garlic', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 9995, 'tim', 'tim', '2022-02-28 13:26:13', '2022-02-28 13:26:13', 1, 'Accounts Payable', 'food'),
('KI1064', 'Ginger', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8995, 'tim', 'tim', '2022-02-28 13:27:14', '2022-02-28 13:27:14', 1, 'Accounts Payable', 'food'),
('KI1065', 'Glazed Baby Carrots', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:27:43', '2022-02-28 13:27:43', 1, 'Accounts Payable', 'food'),
('KI1066', 'Black Grapes', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3795, 'tim', 'Lame', '2022-02-28 13:28:03', '2023-09-22 11:27:24', 1, 'Accounts Payable', 'food'),
('KI1067', 'White Grapes', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2175, 'tim', 'homsyadmin', '2022-02-28 13:28:18', '2023-01-23 14:28:02', 1, 'Accounts Payable', 'food'),
('KI1068', 'Green Beans', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5329, 'tim', 'tim', '2022-02-28 13:29:05', '2022-02-28 13:29:05', 1, 'Accounts Payable', 'food'),
('KI1069', 'Green Chillies', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5995, 'tim', 'Lame', '2022-02-28 13:29:58', '2023-09-26 14:34:28', 1, 'Accounts Payable', 'food'),
('KI1070', 'Green Pepper Box', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 15995, 'tim', 'tim', '2022-02-28 13:30:18', '2022-02-28 13:30:18', 1, 'Accounts Payable', 'food'),
('KI1071', 'Green Tomato', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1250, 'tim', 'tim', '2022-02-28 13:30:44', '2022-02-28 13:30:44', 1, 'Accounts Payable', 'food'),
('KI1072', 'Grilled Baby Gem Squash - Long', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:31:06', '2022-02-28 13:31:06', 1, 'Accounts Payable', 'food'),
('KI1073', 'Grilled Eggplant', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:31:35', '2022-02-28 13:31:35', 1, 'Accounts Payable', 'food'),
('KI1074', 'Halved Preserved Figs', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2450, 'tim', 'tim', '2022-02-28 13:31:53', '2022-02-28 13:31:53', 1, 'Accounts Payable', 'food'),
('KI1075', 'Heirloom Tomatoes', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:32:11', '2022-02-28 13:32:11', 1, 'Accounts Payable', 'food'),
('KI1076', 'Herbs', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8333, 'tim', 'tim', '2022-02-28 13:33:07', '2022-02-28 13:33:07', 1, 'Accounts Payable', 'food'),
('KI1077', 'Leek', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1495, 'tim', 'tim', '2022-02-28 13:33:37', '2022-02-28 13:33:37', 1, 'Accounts Payable', 'food'),
('KI1078', 'Lemon Zest', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 996, 'tim', 'tim', '2022-02-28 13:33:56', '2022-02-28 13:33:56', 1, 'Accounts Payable', 'food'),
('KI1079', 'Lemon per kg', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1195, 'tim', 'tim', '2022-02-28 13:34:13', '2022-02-28 13:34:13', 1, 'Accounts Payable', 'food'),
('KI1080', 'Lettuce', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 795, 'tim', 'tim', '2022-02-28 13:34:40', '2022-02-28 13:34:40', 1, 'Accounts Payable', 'food'),
('KI1081', 'Mango', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2199, 'tim', 'Lame', '2022-02-28 13:35:01', '2023-02-13 14:23:17', 1, 'Accounts Payable', 'food'),
('KI1082', 'Mashed Potatoes', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:35:26', '2022-02-28 13:35:26', 1, 'Accounts Payable', 'food'),
('KI1083', 'Minced Garlic', '', 'noSale', 'Gram', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5, 'tim', 'Lame', '2022-02-28 13:35:47', '2023-09-23 12:00:11', 1, 'Accounts Payable', 'food'),
('KI1084', 'Minced Ginger', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:36:08', '2022-02-28 13:36:08', 1, 'Accounts Payable', 'food'),
('KI1085', 'Mini chips', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:36:50', '2022-02-28 13:36:50', 1, 'Accounts Payable', 'food'),
('KI1086', 'Mixed Garden Greens', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:37:15', '2022-02-28 13:37:15', 1, 'Accounts Payable', 'food'),
('KI1087', 'Mixed Lettuce', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10780, 'tim', 'tim', '2022-02-28 13:37:40', '2022-02-28 13:37:40', 1, 'Accounts Payable', 'food'),
('KI1088', 'Mixed Vegetables', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2500, 'tim', 'tim', '2022-02-28 13:38:05', '2022-02-28 13:38:05', 1, 'Accounts Payable', 'food'),
('KI1089', 'Morogo Wa Dinawa', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:38:23', '2022-02-28 13:38:23', 1, 'Accounts Payable', 'food'),
('KI1090', 'Mushrooms', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2695, 'tim', 'Lame', '2022-02-28 13:38:43', '2023-02-07 13:25:55', 1, 'Accounts Payable', 'food'),
('KI1091', 'Naartjie', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2980, 'tim', 'tim', '2022-02-28 13:39:09', '2022-02-28 13:39:09', 1, 'Accounts Payable', 'food'),
('KI1092', 'Olives', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4663, 'tim', 'tim', '2022-02-28 13:39:26', '2022-02-28 13:39:26', 1, 'Accounts Payable', 'food'),
('KI1093', 'Onion', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1000, 'tim', 'tim', '2022-02-28 13:39:48', '2022-02-28 13:39:48', 1, 'Accounts Payable', 'food'),
('KI1094', 'Orange', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1510, 'tim', 'tim', '2022-02-28 13:40:11', '2022-02-28 13:40:11', 1, 'Accounts Payable', 'food'),
('KI1095', 'Orange Wedges (Oranges kg)', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:40:32', '2022-02-28 13:40:32', 1, 'Accounts Payable', 'food'),
('KI1096', 'Pears', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1730, 'tim', 'tim', '2022-02-28 13:40:59', '2022-02-28 13:40:59', 1, 'Accounts Payable', 'food'),
('KI1097', 'Peppadews, Sliced', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4455, 'tim', 'tim', '2022-02-28 13:41:21', '2022-02-28 13:41:21', 1, 'Accounts Payable', 'food'),
('KI1098', 'Peppers', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2395, 'tim', 'tim', '2022-02-28 13:41:46', '2022-02-28 13:41:46', 1, 'Accounts Payable', 'food'),
('KI1099', 'Pickled Wild Mushrooms', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:42:09', '2022-02-28 13:42:09', 1, 'Accounts Payable', 'food'),
('KI1100', 'Potatoes 10kg', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8495, 'tim', 'tim', '2022-02-28 13:42:34', '2022-02-28 13:42:34', 1, 'Accounts Payable', 'food'),
('KI1101', 'Raspberries', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1895, 'tim', 'tim', '2022-02-28 13:43:05', '2022-02-28 13:43:05', 1, 'Accounts Payable', 'food'),
('KI1102', 'Red Onion', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1295, 'tim', 'tim', '2022-02-28 13:43:23', '2022-02-28 13:43:23', 1, 'Accounts Payable', 'food'),
('KI1103', 'Red Plum', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3995, 'tim', 'tim', '2022-02-28 13:43:40', '2022-02-28 13:43:40', 1, 'Accounts Payable', 'food'),
('KI1104', 'Rocket', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1500, 'tim', 'Lame', '2022-02-28 13:44:13', '2023-09-20 14:01:37', 1, 'Accounts Payable', 'food'),
('KI1105', 'Romain Lettuce (Hearts Only)', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:44:30', '2022-02-28 13:44:30', 1, 'Accounts Payable', 'food'),
('KI1106', 'Side Salad', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1985, 'tim', 'tim', '2022-02-28 13:44:51', '2022-02-28 13:44:51', 1, 'Accounts Payable', 'food'),
('KI1107', 'Spinach/Rape', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 395, 'tim', 'Lame', '2022-02-28 13:45:20', '2023-03-07 14:03:00', 1, 'Accounts Payable', 'food'),
('KI1108', 'Spring Onion', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 700, 'tim', 'tim', '2022-02-28 13:45:51', '2022-02-28 13:45:51', 1, 'Accounts Payable', 'food'),
('KI1109', 'Tomato', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1339, 'tim', 'tim', '2022-02-28 13:46:11', '2022-02-28 13:46:11', 1, 'Accounts Payable', 'food'),
('KI1110', 'Cherry Tomatoes', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1495, 'tim', 'homsyadmin', '2022-02-28 13:46:29', '2023-01-23 14:26:52', 1, 'Accounts Payable', 'food'),
('KI1111', 'Tomato Wedges', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:47:01', '2022-02-28 13:47:01', 1, 'Accounts Payable', 'food'),
('KI1112', 'Turnips', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1335, 'tim', 'tim', '2022-02-28 13:47:31', '2022-02-28 13:47:31', 1, 'Accounts Payable', 'food'),
('KI1113', 'Wilted Baby Spinach', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:47:54', '2022-02-28 13:47:54', 1, 'Accounts Payable', 'food'),
('KI1114', 'Activated Charcoal', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3995, 'tim', 'tim', '2022-02-28 13:48:14', '2022-02-28 13:48:14', 1, 'Accounts Payable', 'food'),
('KI1115', 'Active Dry Yeast', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6278, 'tim', 'tim', '2022-02-28 13:48:47', '2022-02-28 13:48:47', 1, 'Accounts Payable', 'food'),
('KI1116', 'All-purpose Flour', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1056, 'tim', 'tim', '2022-02-28 13:49:35', '2022-02-28 13:49:35', 1, 'Accounts Payable', 'food'),
('KI1117', 'Aquafaba Foam', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:49:53', '2022-02-28 13:49:53', 1, 'Accounts Payable', 'food'),
('KI1118', 'Baked Beans', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3146, 'tim', 'tim', '2022-02-28 13:50:31', '2022-02-28 13:50:31', 1, 'Accounts Payable', 'food'),
('KI1119', 'Baking Powder', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 12996, 'tim', 'tim', '2022-02-28 13:50:49', '2022-02-28 13:50:49', 1, 'Accounts Payable', 'food'),
('KI1120', 'Baking Soda', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:51:12', '2022-02-28 13:51:12', 1, 'Accounts Payable', 'food'),
('KI1121', 'Balsamic Reduction', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:51:31', '2022-02-28 13:51:31', 1, 'Accounts Payable', 'food'),
('KI1122', 'Bbq Marinade', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 11784, 'tim', 'tim', '2022-02-28 13:52:02', '2022-02-28 13:52:02', 1, 'Accounts Payable', 'food'),
('KI1123', 'Bbq Sauce', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1258, 'tim', 'tim', '2022-02-28 13:52:19', '2022-02-28 13:52:19', 1, 'Accounts Payable', 'food'),
('KI1124', 'Beef burger Patties', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:53:16', '2022-02-28 13:53:16', 1, 'Accounts Payable', 'food'),
('KI1125', 'Black Forest Filling', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:53:51', '2022-02-28 13:53:51', 1, 'Accounts Payable', 'food'),
('KI1126', 'Black Pepper', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8750, 'tim', 'tim', '2022-02-28 13:54:12', '2022-02-28 13:54:12', 1, 'Accounts Payable', 'food'),
('KI1127', 'Black Sesame Seeds', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 13:57:33', '2022-02-28 13:57:33', 1, 'Accounts Payable', 'food'),
('KI1128', 'Bread Flour', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1016, 'tim', 'tim', '2022-02-28 13:57:56', '2022-02-28 13:57:56', 1, 'Accounts Payable', 'food'),
('KI1129', 'Brown Rice', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3000, 'tim', 'tim', '2022-02-28 13:58:19', '2022-02-28 13:58:19', 1, 'Accounts Payable', 'food'),
('KI1130', 'Brown Rissoto Rice', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4247, 'tim', 'tim', '2022-02-28 13:58:36', '2022-02-28 13:58:36', 1, 'Accounts Payable', 'food'),
('KI1131', 'Cadbury Lunch Bar Chocolate 62g', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 19967, 'tim', 'tim', '2022-02-28 13:59:07', '2022-02-28 13:59:07', 1, 'Accounts Payable', 'food'),
('KI1132', 'Wheat Flour ', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1040, 'tim', 'Lame', '2022-02-28 13:59:55', '2023-08-29 09:16:31', 1, 'Accounts Payable', 'food'),
('KI1133', 'Capers', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5700, 'tim', 'Lame', '2022-02-28 14:00:18', '2023-03-03 09:27:35', 1, 'Accounts Payable', 'food'),
('KI1134', 'Caramel Powder', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 14:00:31', '2022-02-28 14:00:31', 1, 'Accounts Payable', 'food'),
('KI1135', 'Carrot Salsa', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 14:00:51', '2022-02-28 14:00:51', 1, 'Accounts Payable', 'food'),
('KI1136', 'Ceasar Dressing', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 14:01:14', '2022-02-28 14:01:14', 1, 'Accounts Payable', 'food'),
('KI1137', 'Cherries', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3395, 'tim', 'Lame', '2022-02-28 14:01:37', '2023-11-15 13:29:12', 1, 'Accounts Payable', 'food'),
('KI1138', 'Chicken Seasoning', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 16795, 'tim', 'tim', '2022-02-28 14:01:53', '2022-02-28 14:01:53', 1, 'Accounts Payable', 'food'),
('KI1139', 'Chip Seasoning', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4998, 'tim', 'tim', '2022-02-28 14:02:09', '2022-02-28 14:02:09', 1, 'Accounts Payable', 'food'),
('KI1140', 'Frozen Chips', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2666, 'tim', 'Lame', '2022-02-28 14:02:36', '2023-06-29 15:11:02', 1, 'Accounts Payable', 'food'),
('KI1141', 'Chocolate Swirls', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 14:02:57', '2022-02-28 14:02:57', 1, 'Accounts Payable', 'food'),
('KI1142', 'Cinnamon', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10850, 'tim', 'tim', '2022-02-28 14:03:17', '2022-02-28 14:03:17', 1, 'Accounts Payable', 'food'),
('KI1143', 'Cinnamon, Ground', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1150, 'tim', 'Lame', '2022-02-28 14:03:47', '2023-03-16 13:02:03', 1, 'Accounts Payable', 'food'),
('KI1144', 'Clarified Butter', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 14:04:01', '2022-02-28 14:04:01', 1, 'Accounts Payable', 'food'),
('KI1145', 'Coarse Black Peppercorns', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 14:04:17', '2022-02-28 14:04:17', 1, 'Accounts Payable', 'food'),
('KI1146', 'Coarse Salt', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 639, 'tim', 'tim', '2022-02-28 14:04:36', '2022-02-28 14:04:36', 1, 'Accounts Payable', 'food'),
('KI1147', 'Coconut Flakes', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 15091, 'tim', 'tim', '2022-02-28 14:05:12', '2022-02-28 14:05:12', 1, 'Accounts Payable', 'food'),
('KI1148', 'Cooking Oil ', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2235, 'tim', 'Lame', '2022-02-28 14:06:32', '2023-08-26 14:18:51', 1, 'Accounts Payable', 'food'),
('KI1149', 'Creamy Burger Sauce', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 14:07:04', '2022-02-28 14:07:04', 1, 'Accounts Payable', 'food'),
('KI1150', 'Creamy Tartar Sauce', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 14:07:42', '2022-02-28 14:07:42', 1, 'Accounts Payable', 'food'),
('KI1151', 'Curry Powder', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10363, 'tim', 'tim', '2022-02-28 14:11:05', '2022-02-28 14:11:05', 1, 'Accounts Payable', 'food'),
('KI1152', 'Dark Chocolate', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 9900, 'tim', 'tim', '2022-02-28 14:11:38', '2022-02-28 14:12:21', 1, 'Accounts Payable', 'food'),
('KI1153', 'Dark Chocolate almond flour Cake', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-02-28 14:13:38', '2022-02-28 14:13:38', 1, 'Accounts Payable', 'food'),
('KI1154', 'Dijon Mustard', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4070, 'tim', 'Lame', '2022-02-28 14:14:00', '2023-09-23 11:05:10', 1, 'Accounts Payable', 'food'),
('KI1155', 'Double Cream Yogurt', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3050, 'tim', 'tim', '2022-02-28 14:14:25', '2022-02-28 14:15:20', 1, 'Accounts Payable', 'food'),
('KI1156', 'Dried Berries', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 33172, 'tim', 'tim', '2022-02-28 14:14:53', '2022-02-28 14:14:53', 1, 'Accounts Payable', 'food'),
('KI1157', 'Extra Virgin Olive Oil', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6695, 'homsyadmin', 'homsyadmin', '2022-02-28 14:15:35', '2022-02-28 14:15:35', 1, 'Accounts Payable', 'food'),
('KI1158', 'Fish Seasoning', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 14:15:16', '2022-02-28 14:15:16', 1, 'Accounts Payable', 'food'),
('KI1159', 'Fish Spice', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 12715, 'homsyadmin', 'homsyadmin', '2022-02-28 14:14:53', '2022-02-28 14:14:53', 1, 'Accounts Payable', 'food'),
('KI1160', 'Garam Masala', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1995, 'homsyadmin', 'Lame', '2022-02-28 14:14:32', '2023-09-25 10:04:55', 1, 'Accounts Payable', 'food'),
('KI1161', 'Gelatin/ Xanthan Gum', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 20990, 'homsyadmin', 'homsyadmin', '2022-02-28 14:14:11', '2022-02-28 14:14:11', 1, 'Accounts Payable', 'food'),
('KI1162', 'Gherkins', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2960, 'homsyadmin', 'homsyadmin', '2022-02-28 14:13:52', '2022-02-28 14:13:52', 1, 'Accounts Payable', 'food'),
('KI1163', 'Gluten Free Pasta/Tagliatele', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 14:13:27', '2022-02-28 14:13:27', 1, 'Accounts Payable', 'food'),
('KI1164', 'Golden Syrup', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4377, 'homsyadmin', 'homsyadmin', '2022-02-28 14:12:45', '2022-02-28 14:12:45', 1, 'Accounts Payable', 'food'),
('KI1165', 'Granulated Sugar', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 14:12:25', '2022-02-28 14:12:25', 1, 'Accounts Payable', 'food'),
('KI1166', 'Ground Almonds', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6395, 'homsyadmin', 'homsyadmin', '2022-02-28 14:08:42', '2022-02-28 14:08:42', 1, 'Accounts Payable', 'food'),
('KI1167', 'Ground Coriander', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3550, 'homsyadmin', 'homsyadmin', '2022-02-28 14:06:50', '2022-02-28 14:06:50', 1, 'Accounts Payable', 'food'),
('KI1168', 'Ground Cumin', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 14:06:16', '2022-02-28 14:06:16', 1, 'Accounts Payable', 'food'),
('KI1169', 'Hellmans Creamy Mayonaise', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5979, 'homsyadmin', 'homsyadmin', '2022-02-28 14:05:57', '2022-02-28 14:05:57', 1, 'Accounts Payable', 'food'),
('KI1170', 'Hemp Organic', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 14:04:28', '2022-02-28 14:04:28', 1, 'Accounts Payable', 'food'),
('KI1171', 'Herb Oil', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3349, 'homsyadmin', 'homsyadmin', '2022-02-28 14:04:12', '2022-02-28 14:04:12', 1, 'Accounts Payable', 'food'),
('KI1172', 'High-Gluten Flour', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 14:03:47', '2022-02-28 14:03:47', 1, 'Accounts Payable', 'food'),
('KI1173', 'Honey', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 13990, 'homsyadmin', 'homsyadmin', '2022-02-28 14:03:30', '2022-02-28 14:03:30', 1, 'Accounts Payable', 'food'),
('KI1174', 'Icing Sugar', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2250, 'homsyadmin', 'homsyadmin', '2022-02-28 14:03:03', '2022-02-28 14:03:03', 1, 'Accounts Payable', 'food'),
('KI1175', 'Juice by Glass', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2155, 'homsyadmin', 'homsyadmin', '2022-02-28 14:02:39', '2022-02-28 14:02:39', 1, 'Accounts Payable', 'food'),
('KI1177', 'Soy Sauce', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 29420, 'homsyadmin', 'Lame', '2022-02-28 14:02:04', '2023-03-24 15:16:31', 1, 'Accounts Payable', 'food'),
('KI1178', 'Kircsh/cherry liqueur', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 14:01:47', '2022-02-28 14:01:47', 1, 'Accounts Payable', 'food'),
('KI1179', ' Chick Peas 400g', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1470, 'homsyadmin', 'Lame', '2022-02-28 14:01:28', '2023-02-23 15:33:38', 1, 'Accounts Payable', 'food'),
('KI1180', 'Kosher Sea Salt', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 14:00:53', '2022-02-28 14:00:53', 1, 'Accounts Payable', 'food'),
('KI1181', 'Lemon Juice', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1495, 'homsyadmin', 'homsyadmin', '2022-02-28 14:00:39', '2022-02-28 14:00:39', 1, 'Accounts Payable', 'food'),
('KI1182', 'Lentil Falafels', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1795, 'homsyadmin', 'homsyadmin', '2022-02-28 14:00:11', '2022-02-28 14:00:11', 1, 'Accounts Payable', 'food'),
('KI1183', 'Macadamia Nuts', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 11850, 'homsyadmin', 'homsyadmin', '2022-02-28 13:59:53', '2022-02-28 13:59:53', 1, 'Accounts Payable', 'food'),
('KI1184', 'Maize Meal', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 870, 'homsyadmin', 'homsyadmin', '2022-02-28 13:59:34', '2022-02-28 13:59:34', 1, 'Accounts Payable', 'food'),
('KI1185', 'Maple Syrup Dressing', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:59:04', '2022-02-28 13:59:04', 1, 'Accounts Payable', 'food'),
('KI1186', 'Maryland Sauce', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:58:38', '2022-02-28 13:58:38', 1, 'Accounts Payable', 'food'),
('KI1187', 'Mint Jus', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:52:52', '2022-02-28 13:52:52', 1, 'Accounts Payable', 'food'),
('KI1188', 'Mint Sauce 2L', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4775, 'homsyadmin', 'homsyadmin', '2022-02-28 13:50:53', '2022-02-28 13:50:53', 1, 'Accounts Payable', 'food'),
('KI1189', 'Mixed Nuts', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:50:38', '2022-02-28 13:50:38', 1, 'Accounts Payable', 'food'),
('KI1190', 'Morula Jam', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:50:20', '2022-02-28 13:50:20', 1, 'Accounts Payable', 'food'),
('KI1191', 'Nine-Grain Mix', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:49:55', '2022-02-28 13:49:55', 1, 'Accounts Payable', 'food'),
('KI1192', 'Nutmeg', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 52, 'homsyadmin', 'homsyadmin', '2022-02-28 13:49:36', '2022-02-28 13:49:36', 1, 'Accounts Payable', 'food'),
('KI1193', 'Oat Flakes', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2495, 'homsyadmin', 'homsyadmin', '2022-02-28 13:49:10', '2022-02-28 13:49:10', 1, 'Accounts Payable', 'food'),
('KI1194', 'Oil', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1965, 'homsyadmin', 'homsyadmin', '2022-02-28 13:48:42', '2022-02-28 13:48:42', 1, 'Accounts Payable', 'food'),
('KI1195', 'Olive Oil', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6990, 'homsyadmin', 'homsyadmin', '2022-02-28 13:48:16', '2022-02-28 13:48:16', 1, 'Accounts Payable', 'food'),
('KI1196', 'Onion Powder kg', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:47:55', '2022-02-28 13:47:55', 1, 'Accounts Payable', 'food'),
('KI1197', 'Orange Juice - ', '', 'sale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1895, 'homsyadmin', 'Lame', '2022-02-28 13:47:37', '2023-06-23 12:25:40', 1, 'Accounts Payable', 'bar'),
('KI1198', 'Orange Zest', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:47:21', '2022-02-28 13:47:21', 1, 'Accounts Payable', 'food'),
('KI1199', 'Oreo Biscuits', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:46:56', '2022-02-28 13:46:56', 1, 'Accounts Payable', 'food'),
('KI1200', 'Panko Crumbs', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3250, 'homsyadmin', 'homsyadmin', '2022-02-28 13:45:17', '2022-02-28 13:45:17', 1, 'Accounts Payable', 'food'),
('KI1201', 'Pannacota Block', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:44:49', '2022-02-28 13:44:49', 1, 'Accounts Payable', 'food'),
('KI1202', 'Paprika', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1695, 'homsyadmin', 'Lame', '2022-02-28 13:44:31', '2023-09-19 14:29:47', 1, 'Accounts Payable', 'food'),
('KI1203', 'Pepper Sauce - Freddy hirsch', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:42:30', '2022-02-28 13:42:30', 1, 'Accounts Payable', 'food'),
('KI1204', 'Peri Peri Sauce', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2295, 'homsyadmin', 'Lame', '2022-02-28 13:41:56', '2023-03-04 13:09:20', 1, 'Accounts Payable', 'food'),
('KI1205', 'Phyllo Dough', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:37:53', '2022-02-28 13:37:53', 1, 'Accounts Payable', 'food'),
('KI1206', 'Pistachio Nuts', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 12140, 'homsyadmin', 'homsyadmin', '2022-02-28 13:34:19', '2022-02-28 13:34:19', 1, 'Accounts Payable', 'food'),
('KI1207', 'Pistachio Nuts Dukkah', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:32:20', '2022-02-28 13:32:20', 1, 'Accounts Payable', 'food');
INSERT INTO `stockitems` (`itemCode`, `name`, `description`, `itemType`, `unitOfMeassure`, `isActive`, `saleAcc`, `inventoryAcc`, `cogsAcc`, `adjustAcc`, `salePrice`, `actualCost`, `lastCost`, `createdBy`, `editedBy`, `createdOn`, `editedOn`, `reoderLevel`, `payableAcc`, `belongsTo`) VALUES
('KI1208', 'Pizza Base', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:31:49', '2022-02-28 13:31:49', 1, 'Accounts Payable', 'food'),
('KI1209', 'Poppy Seeds / Khus Khus', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2395, 'homsyadmin', 'Lame', '2022-02-28 13:31:28', '2023-06-29 15:12:42', 1, 'Accounts Payable', 'food'),
('KI1210', 'Powdered Parmesan', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 17430, 'homsyadmin', 'homsyadmin', '2022-02-28 13:30:57', '2022-02-28 13:30:57', 1, 'Accounts Payable', 'food'),
('KI1211', 'Pumpkin Seeds', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 11700, 'homsyadmin', 'homsyadmin', '2022-02-28 13:30:36', '2022-02-28 13:30:36', 1, 'Accounts Payable', 'food'),
('KI1212', 'Raisins', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6750, 'homsyadmin', 'homsyadmin', '2022-02-28 13:30:11', '2022-02-28 13:30:11', 1, 'Accounts Payable', 'food'),
('KI1213', 'Red Chili Powder', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1995, 'homsyadmin', 'homsyadmin', '2022-02-28 13:29:05', '2022-02-28 13:29:05', 1, 'Accounts Payable', 'food'),
('KI1214', 'Red Onion Butter', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:28:33', '2022-02-28 13:28:33', 1, 'Accounts Payable', 'food'),
('KI1215', 'Red Pepper flakes, crushed', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:28:13', '2022-02-28 13:28:13', 1, 'Accounts Payable', 'food'),
('KI1216', 'Red Wine Vinegar', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:27:48', '2022-02-28 13:27:48', 1, 'Accounts Payable', 'food'),
('KI1217', 'Red wine', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4139, 'homsyadmin', 'homsyadmin', '2022-02-28 13:27:02', '2022-02-28 13:27:02', 1, 'Accounts Payable', 'food'),
('KI1219', 'Salad Dressing', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2595, 'homsyadmin', 'homsyadmin', '2022-02-28 13:23:48', '2022-02-28 13:23:48', 1, 'Accounts Payable', 'food'),
('KI1220', 'Salt', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1295, 'homsyadmin', 'homsyadmin', '2022-02-28 13:22:43', '2022-02-28 13:22:43', 1, 'Accounts Payable', 'food'),
('KI1221', 'Salt Flakes', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:22:25', '2022-02-28 13:22:25', 1, 'Accounts Payable', 'food'),
('KI1222', 'Sea Salt', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3195, 'homsyadmin', 'homsyadmin', '2022-02-28 13:22:08', '2022-02-28 13:22:08', 1, 'Accounts Payable', 'food'),
('KI1223', 'Sesame Seeds', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:21:50', '2022-02-28 13:21:50', 1, 'Accounts Payable', 'food'),
('KI1224', 'Sourdough', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:21:29', '2022-02-28 13:21:29', 1, 'Accounts Payable', 'food'),
('KI1225', 'Sundried Tomatoes', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 21185, 'homsyadmin', 'homsyadmin', '2022-02-28 13:21:00', '2022-02-28 13:21:00', 1, 'Accounts Payable', 'food'),
('KI1226', 'Sunflower Seeds', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6050, 'homsyadmin', 'homsyadmin', '2022-02-28 13:20:41', '2022-02-28 13:20:41', 1, 'Accounts Payable', 'food'),
('KI1227', 'Tabasco Green Sauce', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3995, 'homsyadmin', 'Lame', '2022-02-28 13:20:22', '2023-05-26 08:58:42', 1, 'Accounts Payable', 'food'),
('KI1228', 'Tagliatele Pasta', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2489, 'homsyadmin', 'homsyadmin', '2022-02-28 13:19:44', '2022-02-28 13:19:44', 1, 'Accounts Payable', 'food'),
('KI1229', 'Sesame Seeds', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4740, 'homsyadmin', 'Lame', '2022-02-28 13:19:13', '2023-09-15 12:06:53', 1, 'Accounts Payable', 'food'),
('KI1230', 'Tomato Paste', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5932, 'homsyadmin', 'homsyadmin', '2022-02-28 13:18:55', '2022-02-28 13:18:55', 1, 'Accounts Payable', 'food'),
('KI1231', 'Tortellini', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:18:34', '2022-02-28 13:18:34', 1, 'Accounts Payable', 'food'),
('KI1232', 'Turmeric Powder', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:18:11', '2022-02-28 13:18:11', 1, 'Accounts Payable', 'food'),
('KI1233', 'Vanilla Bean', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:17:46', '2022-02-28 13:17:46', 1, 'Accounts Payable', 'food'),
('KI1234', 'Vanilla Extract / Essence', '', 'noSale', 'BOTTLE', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3995, 'homsyadmin', 'Lame', '2022-02-28 13:16:50', '2023-03-25 11:55:08', 1, 'Accounts Payable', 'food'),
('KI1235', 'Vegetable Oil', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2402, 'homsyadmin', 'homsyadmin', '2022-02-28 13:16:16', '2022-02-28 13:16:16', 1, 'Accounts Payable', 'food'),
('KI1236', 'Vegetable Seasoning', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 18957, 'homsyadmin', 'homsyadmin', '2022-02-28 13:16:00', '2022-02-28 13:16:00', 1, 'Accounts Payable', 'food'),
('KI1237', 'Vegetable Stock Granules', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 16230, 'homsyadmin', 'homsyadmin', '2022-02-28 13:15:37', '2022-02-28 13:15:37', 1, 'Accounts Payable', 'food'),
('KI1238', 'Vital Wheat gluten', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:15:19', '2022-02-28 13:15:19', 1, 'Accounts Payable', 'food'),
('KI1239', 'Water Room Temperature', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:14:58', '2022-02-28 13:14:58', 1, 'Accounts Payable', 'food'),
('KI1240', 'White Pepper', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:14:12', '2022-02-28 13:14:12', 1, 'Accounts Payable', 'food'),
('KI1241', 'Whole Grain Mustard', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:12:44', '2022-02-28 13:12:44', 1, 'Accounts Payable', 'food'),
('KI1242', 'Whole Wheat-Flour', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1998, 'homsyadmin', 'homsyadmin', '2022-02-28 13:12:24', '2022-02-28 13:12:24', 1, 'Accounts Payable', 'food'),
('KI1243', 'Whole Wheat/Bulgar', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:11:53', '2022-02-28 13:11:53', 1, 'Accounts Payable', 'food'),
('KI1244', 'Whole wheat spagheti', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:11:32', '2022-02-28 13:11:32', 1, 'Accounts Payable', 'food'),
('KI1245', 'Worcester Sauce sauce', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2247, 'homsyadmin', 'homsyadmin', '2022-02-28 13:11:11', '2022-02-28 13:11:11', 1, 'Accounts Payable', 'food'),
('KI1246', 'Yoghurt & Mint Sauce', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:10:29', '2022-02-28 13:10:29', 1, 'Accounts Payable', 'food'),
('KI1247', 'Anchovies', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 26484, 'homsyadmin', 'homsyadmin', '2022-02-28 13:10:10', '2022-02-28 13:10:10', 1, 'Accounts Payable', 'food'),
('KI1248', 'Bacon', '', 'noSale', 'Gram', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 11, 'homsyadmin', 'Lame', '2022-02-28 13:07:34', '2023-03-30 08:52:24', 1, 'Accounts Payable', 'food'),
('KI1249', 'Diced Bacon ', '', 'noSale', 'Gram', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 24, 'homsyadmin', 'Lame', '2022-02-28 13:07:14', '2023-06-23 13:34:06', 1, 'Accounts Payable', 'food'),
('KI1250', 'Beef', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5295, 'homsyadmin', 'homsyadmin', '2022-02-28 13:06:56', '2022-02-28 13:06:56', 1, 'Accounts Payable', 'food'),
('KI1251', 'Beef Mince', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6441, 'homsyadmin', 'homsyadmin', '2022-02-28 13:06:34', '2022-02-28 13:06:34', 1, 'Accounts Payable', 'food'),
('KI1252', 'Beef Patty', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4380, 'homsyadmin', 'homsyadmin', '2022-02-28 13:06:14', '2022-02-28 13:06:14', 1, 'Accounts Payable', 'food'),
('KI1253', 'Beef Shin - Boneless', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 13:05:43', '2022-02-28 13:05:43', 1, 'Accounts Payable', 'food'),
('KI1254', 'Beef Sirloin', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 11595, 'homsyadmin', 'homsyadmin', '2022-02-28 13:05:24', '2022-02-28 13:05:24', 1, 'Accounts Payable', 'food'),
('KI1255', 'Beef Stew', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5871, 'homsyadmin', 'Lame', '2022-02-28 13:02:21', '2024-01-08 12:33:00', 1, 'Accounts Payable', 'food'),
('KI1256', 'Chicken Breast', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 12215, 'homsyadmin', 'homsyadmin', '2022-02-28 13:01:56', '2022-02-28 13:01:56', 1, 'Accounts Payable', 'food'),
('KI1257', 'Chicken Breast Fillet', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8495, 'homsyadmin', 'homsyadmin', '2022-02-28 12:57:34', '2022-02-28 12:57:34', 1, 'Accounts Payable', 'food'),
('KI1258', 'Chicken Chunks', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 12:57:11', '2022-02-28 12:57:11', 1, 'Accounts Payable', 'food'),
('KI1259', 'Chicken Liver', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3595, 'homsyadmin', 'homsyadmin', '2022-02-28 12:56:45', '2022-02-28 12:56:45', 1, 'Accounts Payable', 'food'),
('KI1260', 'Chicken Wings', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7395, 'homsyadmin', 'homsyadmin', '2022-02-28 12:56:00', '2022-02-28 12:56:00', 1, 'Accounts Payable', 'food'),
('KI1261', 'Fish & Chips - Hake Fillet', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7799, 'homsyadmin', 'homsyadmin', '2022-02-28 12:55:10', '2022-02-28 12:55:10', 1, 'Accounts Payable', 'food'),
('KI1262', 'Game Steak (Ostrich)', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7195, 'homsyadmin', 'homsyadmin', '2022-02-28 12:54:37', '2022-02-28 12:54:37', 1, 'Accounts Payable', 'food'),
('KI1263', 'Cornish Chicken', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7500, 'homsyadmin', 'Lame', '2022-02-28 12:54:06', '2023-03-29 08:48:38', 1, 'Accounts Payable', 'food'),
('KI1264', 'Ham', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 14722, 'homsyadmin', 'homsyadmin', '2022-02-28 12:53:41', '2022-02-28 12:53:41', 1, 'Accounts Payable', 'food'),
('KI1265', 'Kabeljou', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6790, 'homsyadmin', 'homsyadmin', '2022-02-28 12:53:05', '2022-02-28 12:53:05', 1, 'Accounts Payable', 'food'),
('KI1266', 'Lamb Chops', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10495, 'homsyadmin', 'homsyadmin', '2022-02-28 12:50:14', '2022-10-13 15:23:33', 1, 'Accounts Payable', 'food'),
('KI1267', 'Lamb Ribs - Marinated', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8595, 'homsyadmin', 'homsyadmin', '2022-02-28 12:49:55', '2022-10-13 15:23:52', 1, 'Accounts Payable', 'food'),
('KI1268', 'Lamb Shank', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 11195, 'homsyadmin', 'homsyadmin', '2022-02-28 12:49:33', '2022-10-13 15:24:13', 1, 'Accounts Payable', 'food'),
('KI1269', 'Oxtail', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 12346, 'homsyadmin', 'Tlamelo Mogale', '2022-02-28 12:49:07', '2022-03-12 07:18:04', 1, 'Accounts Payable', 'food'),
('KI1270', 'Pork Chops 150g', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3495, 'homsyadmin', 'homsyadmin', '2022-02-28 12:48:48', '2022-10-13 15:24:28', 1, 'Accounts Payable', 'food'),
('KI1271', 'Rolled Shoulder Of Lamb', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8795, 'homsyadmin', 'homsyadmin', '2022-02-28 12:48:20', '2022-10-13 15:24:51', 1, 'Accounts Payable', 'food'),
('KI1272', ' BEEF Sausage', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7496, 'homsyadmin', 'Lame', '2022-02-28 12:47:56', '2023-02-18 14:10:21', 1, 'Accounts Payable', 'food'),
('KI1273', 'Smoked Salmon', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 39735, 'homsyadmin', 'homsyadmin', '2022-02-28 12:47:27', '2022-02-28 12:47:27', 1, 'Accounts Payable', 'food'),
('KI1274', 'Smoked peppered Mackarel', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 16000, 'homsyadmin', 'homsyadmin', '2022-02-28 12:47:07', '2022-02-28 12:47:07', 1, 'Accounts Payable', 'food'),
('KI1275', 'Spare Ribs', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 12:46:46', '2022-02-28 12:46:46', 1, 'Accounts Payable', 'food'),
('KI1276', 'Spare Ribs (Marinated)', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8900, 'homsyadmin', 'homsyadmin', '2022-02-28 12:46:11', '2022-02-28 12:46:11', 1, 'Accounts Payable', 'food'),
('KI1277', 'Tiger Prawns', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 31786, 'homsyadmin', 'homsyadmin', '2022-02-28 12:45:50', '2022-02-28 12:45:50', 1, 'Accounts Payable', 'food'),
('KI1278', 'Trout Fillet', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5395, 'homsyadmin', 'homsyadmin', '2022-02-28 12:44:45', '2022-02-28 12:44:45', 1, 'Accounts Payable', 'food'),
('KI1279', 'Whole Biltong (Unsliced)', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3295, 'homsyadmin', 'homsyadmin', '2022-02-28 12:44:17', '2022-02-28 12:44:17', 1, 'Accounts Payable', 'food'),
('KI1280', 'Whole Bream', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3000, 'homsyadmin', 'Lame', '2022-02-28 12:43:52', '2023-06-17 12:58:34', 1, 'Accounts Payable', 'food'),
('KI1281', 'Whole Chicken ', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-02-28 12:42:24', '2022-02-28 12:42:24', 1, 'Accounts Payable', 'food'),
('KI1282', 'Herbs & Spices', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 200, 'homsyadmin', 'homsyadmin', '2022-02-28 12:41:45', '2022-02-28 12:41:45', 1, 'Accounts Payable', 'food'),
('KI1283', 'Golden Syrup', '', 'noSale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-03-01 10:25:19', '2022-03-01 10:25:19', 1, 'Accounts Payable', 'food'),
('KI1284', 'Green Pepper', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2200, 'tim', 'tim', '2022-03-01 10:58:16', '2022-03-01 10:58:16', 1, 'Accounts Payable', 'food'),
('KI1285', 'Micro Herbs', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2493, 'tim', 'tim', '2022-03-01 11:02:31', '2022-03-01 11:02:31', 1, 'Accounts Payable', 'food'),
('KI1286', 'Tomato Green', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-03-01 11:24:11', '2022-03-01 11:24:11', 1, 'Accounts Payable', 'food'),
('KI1287', 'Chip Spice', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4995, 'tim', 'tim', '2022-03-01 11:38:01', '2022-03-01 11:38:01', 1, 'Accounts Payable', 'food'),
('KI1288	', 'T-Bone Steak', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 11595, 'tim', 'tim', '2022-03-01 12:19:58', '2022-03-01 12:19:58', 1, 'Accounts Payable', 'food'),
('KI1288', 'Cajun Spice', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 16795, 'tim', 'tim', '2022-03-01 11:45:52', '2022-03-01 11:45:52', 1, 'Accounts Payable', 'food'),
('KI1289	', 'Demi Glace', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 27088, 'tim', 'tim', '2022-03-01 12:30:20', '2022-03-01 12:30:20', 1, 'Accounts Payable', 'food'),
('KI1290', 'Butter Unsalted', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-03-01 13:33:32', '2022-03-01 13:33:32', 1, 'Accounts Payable', 'food'),
('KI1291', 'Rice Paper 45g', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-03-01 13:37:48', '2022-03-01 13:37:48', 1, 'Accounts Payable', 'food'),
('KI1292', 'Liberty Chick Peas 500g', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-03-01 13:38:40', '2022-03-01 13:38:40', 1, 'Accounts Payable', 'food'),
('KI12927', 'MINUTE STEAK', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7995, 'Lame', 'Lame', '2023-02-22 09:38:02', '2023-02-22 09:38:02', 1, 'Accounts Payable', 'food'),
('KI1293', 'Green Mong 500g', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2295, 'homsyadmin', 'homsyadmin', '2022-03-01 13:39:21', '2022-03-01 13:39:21', 1, 'Accounts Payable', 'food'),
('KI1294', 'Cocoa Powder ', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2795, 'homsyadmin', 'Lame', '2022-03-01 13:40:16', '2023-06-19 15:15:48', 1, 'Accounts Payable', 'food'),
('KI1295', 'Tai Ping Shushi Rice 1kg', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-03-01 13:41:08', '2022-03-01 13:41:08', 1, 'Accounts Payable', 'food'),
('KI1296', 'Thai Black Jasmin Rice 800g', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-03-01 13:44:42', '2022-03-01 13:44:42', 1, 'Accounts Payable', 'food'),
('KI1297', 'Hot Chocolate 500g', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 12590, 'homsyadmin', 'homsyadmin', '2022-03-01 13:47:25', '2022-03-01 13:47:25', 1, 'Accounts Payable', 'food'),
('KI1390', 'Matcha Instant Green Tea', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-03-01 13:49:30', '2022-03-01 13:49:30', 1, 'Accounts Payable', 'food'),
('KI1391', 'Balsamic Vinegar', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3195, 'homsyadmin', 'Tlamelo Mogale', '2022-03-01 13:51:44', '2022-03-10 11:01:35', 1, 'Accounts Payable', 'food'),
('KI1393', 'Food Colouring', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-03-01 13:52:45', '2022-03-01 13:52:45', 1, 'Accounts Payable', 'food'),
('KI1395', 'Mustard Powder 1kg', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-03-01 13:53:30', '2022-03-01 13:53:30', 1, 'Accounts Payable', 'food'),
('KI1397', 'Hellmans French dressing', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10491, 'homsyadmin', 'homsyadmin', '2022-03-01 13:54:50', '2022-03-01 13:54:50', 1, 'Accounts Payable', 'food'),
('KI1398', 'F&M Fusilli Pasta Screws', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2790, 'homsyadmin', 'homsyadmin', '2022-03-01 13:56:46', '2022-03-01 13:56:46', 1, 'Accounts Payable', 'food'),
('KI1399', 'Basil dry', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1595, 'tim', 'Lame', '2022-03-01 13:56:54', '2023-06-23 13:33:04', 1, 'Accounts Payable', 'food'),
('KI1400', 'Bread Crumbs', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3250, 'homsyadmin', 'homsyadmin', '2022-03-01 13:57:29', '2022-03-01 13:57:29', 1, 'Accounts Payable', 'food'),
('KI1401', 'Artichokes (Grilled Arti )', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-03-01 13:58:28', '2022-03-01 13:58:28', 1, 'Accounts Payable', 'food'),
('KI1402', 'Black pepper corn', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 20000, 'homsyadmin', 'homsyadmin', '2022-03-01 14:00:03', '2022-03-01 14:00:03', 1, 'Accounts Payable', 'food'),
('KI1403', 'Tobasco Red Pepper 125ml', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3795, 'homsyadmin', 'Lame', '2022-03-01 14:02:31', '2023-05-26 08:59:38', 1, 'Accounts Payable', 'food'),
('KI1404', 'Corn Flakes', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4395, 'homsyadmin', 'homsyadmin', '2022-03-01 14:00:42', '2022-03-01 14:00:42', 1, 'Accounts Payable', 'food'),
('KI1405', 'Kasoori Methi/Fenugrk LVS Dried', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-03-01 14:05:26', '2022-03-01 14:05:26', 1, 'Accounts Payable', 'food'),
('KI1406', 'Dried Coriander', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1695, 'tim', 'Lame', '2022-03-01 14:13:52', '2023-06-23 12:44:19', 1, 'Accounts Payable', 'food'),
('KI1407', 'Fresh Coriander', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 595, 'tim', 'Lame', '2022-03-01 14:14:27', '2023-06-23 12:43:40', 1, 'Accounts Payable', 'food'),
('KI1410', 'Vanilla Ice Cream', '', 'noSale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1300, 'homsyadmin', 'Lame', '2022-03-01 14:49:38', '2023-04-19 16:41:24', 1, 'Accounts Payable', 'food'),
('KI1444', 'Thickened Cherries', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-03-01 16:27:17', '2022-03-01 16:27:17', 1, 'Accounts Payable', 'food'),
('KI1500', 'Cake flour', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1120, 'homsyadmin', 'homsyadmin', '2022-03-01 15:18:21', '2022-03-01 15:18:21', 1, 'Accounts Payable', 'food'),
('KI1501', 'Crispy Grilled Haloumi', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-03-01 16:19:52', '2022-03-01 16:19:52', 1, 'Accounts Payable', 'food'),
('KI1503', 'Puree', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3218, 'homsyadmin', 'homsyadmin', '2022-03-02 15:16:49', '2022-03-02 15:16:49', 1, 'Accounts Payable', 'food'),
('KI1504', 'Overhead', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-03-02 15:18:10', '2022-03-02 15:18:10', 1, 'Accounts Payable', 'food'),
('KI1505', 'Tenderstem', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-03-02 15:19:26', '2022-03-02 15:19:26', 1, 'Accounts Payable', 'food'),
('KI1506', 'Brocoli', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2750, 'homsyadmin', 'homsyadmin', '2022-03-02 15:20:05', '2022-03-02 15:20:05', 1, 'Accounts Payable', 'food'),
('KI1507', 'Red Pepper', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7754, 'homsyadmin', 'homsyadmin', '2022-03-02 15:20:40', '2022-03-02 15:20:40', 1, 'Accounts Payable', 'food'),
('KI1509', 'Boy Choy', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-03-02 15:22:41', '2022-03-02 15:22:41', 1, 'Accounts Payable', 'food'),
('KI1510', 'Forbidden Rice', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-03-02 15:23:11', '2022-03-02 15:23:11', 1, 'Accounts Payable', 'food'),
('KI1511', 'Black Rice', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6695, 'homsyadmin', 'homsyadmin', '2022-03-02 15:23:33', '2022-03-02 15:23:33', 1, 'Accounts Payable', 'food'),
('KI1512', 'White Rice', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1250, 'homsyadmin', 'homsyadmin', '2022-03-02 15:24:08', '2022-03-02 15:24:08', 1, 'Accounts Payable', 'food'),
('KI1650', 'Cherry Sorbet', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-03-01 16:26:09', '2022-03-01 16:26:09', 1, 'Accounts Payable', 'food'),
('KI1651', 'Chick Peas', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-03-01 16:39:58', '2022-03-01 16:39:58', 1, 'Accounts Payable', 'food'),
('KI1652', 'Chimichuri Sauce', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-03-01 16:47:38', '2022-03-01 16:47:38', 1, 'Accounts Payable', 'food'),
('KI1653', 'Pickled Wild Mushrooms', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-03-01 17:02:11', '2022-03-01 17:02:11', 1, 'Accounts Payable', 'food'),
('KI1654', 'Garlic - Minced', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3196, 'tim', 'tim', '2022-03-01 17:12:23', '2022-03-01 17:12:23', 1, 'Accounts Payable', 'food'),
('KI1655', 'Cream', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3255, 'tim', 'homsyadmin', '2022-03-01 17:12:56', '2022-10-13 15:25:25', 1, 'Accounts Payable', 'food'),
('KI1666', 'Frying Oil', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-03-01 17:19:16', '2022-03-01 17:19:16', 1, 'Accounts Payable', 'food'),
('KI1700', 'Masea Spice', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'homsyadmin', 'homsyadmin', '2022-03-03 14:22:30', '2022-03-03 14:22:30', 1, 'Accounts Payable', 'food'),
('KI1701', 'Sourghum', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 773, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-09 14:37:39', '2022-03-09 14:37:39', 10, 'Accounts Payable', 'food'),
('KI1702', 'Baby Pak Choi', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10800, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-09 15:36:12', '2022-03-09 15:36:12', 1, 'Accounts Payable', 'food'),
('KI1703', 'Beef Liver', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 24925, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-09 15:37:26', '2022-03-09 15:37:26', 1, 'Accounts Payable', 'food'),
('KI1705', 'Strawberries', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2795, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 10:40:46', '2022-03-10 10:40:46', 2, 'Accounts Payable', 'food'),
('KI1706', 'Frozen Berries', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6990, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 10:41:41', '2022-03-10 10:41:41', 1, 'Accounts Payable', 'food'),
('KI1707', 'Black Berries', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1495, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 10:43:43', '2022-03-10 10:43:43', 1, 'Accounts Payable', 'food'),
('KI1708', 'Apple Cider Vinegar', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 10:44:38', '2022-03-10 10:44:38', 1, 'Accounts Payable', 'food'),
('KI1709', 'Puff Pastry', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3165, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 10:46:29', '2022-03-10 10:46:29', 2, 'Accounts Payable', 'food'),
('KI1710', 'Bread Rolls Cocktail', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 900, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 10:48:21', '2022-03-10 10:48:21', 30, 'Accounts Payable', 'food'),
('KI1711', 'Black Chicken', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 10:49:04', '2022-03-10 10:49:04', 2, 'Accounts Payable', 'food'),
('KI1712', 'Black Beans Sauce', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 10:50:56', '2022-03-10 10:50:56', 1, 'Accounts Payable', 'food'),
('KI1713', 'Sesame Oil', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 9995, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 10:51:32', '2022-03-10 10:51:32', 1, 'Accounts Payable', 'food'),
('KI1714', 'Avocado Oil', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 10:52:05', '2022-03-10 10:52:05', 1, 'Accounts Payable', 'food'),
('KI1715', 'White Chocolate', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4995, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 10:52:37', '2022-03-10 10:52:37', 1, 'Accounts Payable', 'food'),
('KI1716', 'Waffle', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 10:54:00', '2022-03-10 10:54:00', 1, 'Accounts Payable', 'food'),
('KI1717', 'Vegetarian Burger', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 10:54:49', '2022-03-10 10:54:49', 5, 'Accounts Payable', 'food'),
('KI1718', 'Calamarized Onion', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 10:56:17', '2022-03-10 10:56:17', 1, 'Accounts Payable', 'food'),
('KI1719', 'Sweet Corn', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3295, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 10:57:39', '2022-03-10 10:57:39', 3, 'Accounts Payable', 'food'),
('KI1720', 'Bread Crotons', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 10:59:06', '2022-03-10 10:59:06', 2, 'Accounts Payable', 'food'),
('KI1721', 'Chai Tea', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 11:05:22', '2022-03-10 11:05:22', 10, 'Accounts Payable', 'food'),
('KI1722', 'Frozen Peas', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3995, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 14:37:11', '2022-03-10 14:37:11', 1, 'Accounts Payable', 'food'),
('KI1723', 'Mint', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1000, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 14:51:22', '2022-04-10 10:51:59', 1, 'Accounts Payable', 'food'),
('KI1724', 'Chicken Stew', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4995, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 15:15:41', '2022-03-10 15:15:41', 1, 'Accounts Payable', 'food'),
('KI1725', 'Chicken Stock Granules', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 17017, 'Tlamelo Mogale', 'Lame', '2022-03-10 15:16:46', '2023-08-26 16:17:53', 1, 'Accounts Payable', 'food'),
('KI1726', 'All Gold Tomato Sauce', '', 'sale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4550, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 15:18:26', '2022-03-10 15:18:26', 1, 'Accounts Payable', 'food'),
('KI1727', 'Sugar', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1200, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 18:50:46', '2022-03-10 18:50:46', 1, 'Accounts Payable', 'food'),
('KI1728', 'Potatoes Sweet', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1169, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 18:52:33', '2022-03-10 18:52:33', 1, 'Accounts Payable', 'food'),
('KI1729', 'Radish Microgreens', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1095, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 19:39:03', '2022-03-10 19:39:03', 1, 'Accounts Payable', 'food'),
('KI1730', ' microgreens', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2000, 'Tlamelo Mogale', 'Lame', '2022-03-10 19:40:04', '2023-10-07 10:15:24', 1, 'Accounts Payable', 'food'),
('KI1731', 'Feta Cheese', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5995, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 19:41:23', '2022-03-10 19:41:23', 1, 'Accounts Payable', 'food'),
('KI1732', 'L/WOOD Mozarella Ball', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8894, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-11 18:35:05', '2022-03-11 18:35:05', 1, 'Accounts Payable', 'food'),
('KI1733', 'Spanspek', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1995, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-11 18:36:00', '2022-03-11 18:36:00', 1, 'Accounts Payable', 'food'),
('KI1734', 'Sweet Melon / Honeydew', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1995, 'Tlamelo Mogale', 'Lame', '2022-03-11 18:36:32', '2023-05-13 12:57:01', 1, 'Accounts Payable', 'food'),
('KI1735', 'Baby Marrow', '', 'sale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1195, 'Tlamelo Mogale', 'Lame', '2022-03-11 18:39:20', '2023-02-10 16:44:14', 1, 'Accounts Payable', 'food'),
('KI1736', 'Carrot Loose', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1195, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-11 18:42:29', '2022-03-11 18:42:29', 1, 'Accounts Payable', 'food'),
('KI1737    ', 'Chicken Thighs', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6195, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-11 18:53:49', '2022-03-11 18:53:49', 1, 'Accounts Payable', 'food'),
('KI1738', 'Chuck', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6995, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-11 19:26:47', '2022-03-11 19:26:47', 1, 'Accounts Payable', 'food'),
('KI1739', 'Lettuce Butter', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1395, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-11 19:34:59', '2022-03-11 19:34:59', 1, 'Accounts Payable', 'food'),
('KI1740', 'Walnuts', '', 'noSale', 'Packet', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 15700, 'Tlamelo Mogale', 'Lame', '2022-03-11 19:37:25', '2023-06-13 11:31:42', 1, 'Accounts Payable', 'food'),
('KI1741', 'Quinoa', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5795, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-11 19:41:44', '2022-03-11 19:41:44', 1, 'Accounts Payable', 'food'),
('KI1742', 'N/ Choice Charcoal', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-11 19:44:17', '2022-03-11 19:44:17', 1, 'Accounts Payable', 'food'),
('KI1743', 'Platter 2', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2995, 'Tshiamo Mmapeta', 'Tshiamo Mmapeta', '2022-03-11 20:52:55', '2022-03-11 20:52:55', 1, 'Accounts Payable', 'food'),
('KI1744', 'Parsley', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 995, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-16 09:50:19', '2022-03-16 10:02:52', 2, 'Accounts Payable', 'food'),
('KI1745', 'Apricot yoghurt', '', 'sale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2995, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-17 14:47:13', '2022-03-17 14:47:40', 1, 'Accounts Payable', 'food'),
('KI1746', 'F&M Pasta Spaghetti', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2689, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-18 18:09:50', '2022-03-18 18:09:50', 1, 'Accounts Payable', 'food'),
('KI1747', 'Mustard Sauce', '', 'sale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1518, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-18 18:12:14', '2022-03-18 18:12:36', 1, 'Accounts Payable', 'food'),
('KI1748', 'Custard powder Vanilla', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5370, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-18 18:13:41', '2022-03-18 18:13:41', 1, 'Accounts Payable', 'food'),
('KI1749', 'Rape microgreens', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2500, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-20 09:16:48', '2022-03-21 14:49:57', 1, 'Accounts Payable', 'food'),
('KI1750', 'Ralish Greens', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2000, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-20 09:17:14', '2022-03-21 14:50:29', 1, 'Accounts Payable', 'food'),
('KI1751', 'Pineapple', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1095, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-20 09:23:48', '2022-03-21 14:55:46', 1, 'Accounts Payable', 'food'),
('KI1752', 'Banana', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 945, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-23 14:17:52', '2022-03-23 14:17:52', 1, 'Accounts Payable', 'food'),
('KI1753', 'Margarine', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3895, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-25 15:41:00', '2022-03-25 15:41:00', 1, 'Accounts Payable', 'food'),
('KI1754', 'Black Pepper Powder', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1880, 'Tlamelo Mogale', 'Lame', '2022-03-25 16:26:12', '2023-06-07 14:36:54', 1, 'Accounts Payable', 'food'),
('KI1755', 'Strawberry yog 1kg', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2694, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-25 17:17:35', '2022-03-25 17:17:35', 1, 'Accounts Payable', 'food'),
('KI1756', 'Braii Wors', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4995, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-25 17:40:20', '2022-03-25 17:40:20', 1, 'Accounts Payable', 'food'),
('KI1757', 'Chutney Sauce', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6990, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-25 17:43:35', '2022-03-25 17:43:35', 1, 'Accounts Payable', 'food'),
('KI1758', 'Beef stock Granules', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 17017, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-25 17:44:08', '2022-03-25 17:44:08', 1, 'Accounts Payable', 'food'),
('KI1759', 'Brisket', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5995, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-03 13:38:00', '2022-04-03 13:38:00', 1, 'Accounts Payable', 'food'),
('KI1761', 'Pizza Base T/Sauce', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1260, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-03 13:56:02', '2022-04-03 13:56:02', 1, 'Accounts Payable', 'food'),
('KI1762', 'Beans', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 11995, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-03 14:03:59', '2022-04-03 14:03:59', 1, 'Accounts Payable', 'food'),
('KI1763', 'Baby Corn', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2995, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-03 14:04:34', '2022-04-03 14:05:02', 1, 'Accounts Payable', 'food'),
('KI1764', 'Butternut', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2021, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-10 11:45:35', '2022-04-10 11:45:35', 1, 'Accounts Payable', 'food'),
('KI1765', 'Cabbage', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1495, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-10 11:46:19', '2022-04-10 11:46:19', 1, 'Accounts Payable', 'food'),
('KI1766', 'Pattypan Yellow', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1395, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-10 11:47:02', '2022-04-10 11:48:07', 1, 'Accounts Payable', 'food'),
('KI1767', 'Pattypan Green', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1995, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-10 11:47:42', '2022-04-10 11:47:42', 1, 'Accounts Payable', 'food'),
('KI1768', 'Game Stew', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5594, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-10 11:58:37', '2022-04-10 11:58:37', 1, 'Accounts Payable', 'food'),
('KI1769', 'Game Sirloin', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7756, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-10 11:59:25', '2022-04-10 11:59:25', 1, 'Accounts Payable', 'food'),
('KI1770', 'Gold star Yeast', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 254, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 17:06:40', '2022-04-29 17:06:40', 1, 'Accounts Payable', 'food'),
('KI1771', 'Five Roses', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3295, 'Tlamelo Mogale', 'Lame', '2022-04-29 17:07:41', '2023-02-13 14:18:12', 1, 'Accounts Payable', 'bar'),
('KI1773', 'Frozen Corn', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2645, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 17:54:48', '2022-04-29 18:58:58', 1, 'Accounts Payable', 'food'),
('KI1774', 'Peri Peri Marinade', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 12652, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 17:55:30', '2022-04-29 17:55:30', 1, 'Accounts Payable', 'food'),
('KI1775', 'Carrot cake', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 39000, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 18:06:51', '2022-04-29 18:06:51', 1, 'Accounts Payable', 'food'),
('KI1776', 'Cooking Spray', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5023, 'Tlamelo Mogale', 'Lame', '2022-04-29 18:26:40', '2023-02-21 13:34:30', 1, 'Accounts Payable', 'food'),
('KI1777', 'Drum Stick', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4965, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 18:50:10', '2022-04-29 18:50:10', 1, 'Accounts Payable', 'food'),
('KI1778', 'Milk Almond', '', 'sale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3295, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 18:52:21', '2022-04-29 18:52:21', 1, 'Accounts Payable', 'food'),
('KI1779', 'Milk Soya', '', 'sale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2644, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 18:52:55', '2022-04-29 18:52:55', 1, 'Accounts Payable', 'food'),
('KI1780', 'Tennis Biscuits', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1595, 'Tshiamo Mmapeta', 'Tshiamo Mmapeta', '2022-05-11 15:55:15', '2022-05-11 15:55:15', 1, 'Accounts Payable', 'food'),
('KI1781', 'WARTHOG', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3306, 'Masa', 'Masa', '2022-06-15 11:19:20', '2022-06-15 11:19:20', 1, 'Accounts Payable', 'food'),
('KI1782', 'Beignets-Plain', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Masa', 'Masa', '2022-06-15 11:50:29', '2022-06-15 11:50:29', 1, 'Accounts Payable', 'food'),
('KI1783', 'Crackers Sticks-Hand Crafted', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Masa', 'Masa', '2022-06-15 11:52:25', '2022-06-15 11:52:25', 1, 'Accounts Payable', 'food'),
('KI1784', 'Packaging-Cracker sticks', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Masa', 'Masa', '2022-06-15 11:54:01', '2022-06-15 11:54:01', 1, 'Accounts Payable', 'food'),
('KI1785', 'Begniets Packaging', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Masa', 'Masa', '2022-06-15 11:55:48', '2022-06-15 11:55:48', 1, 'Accounts Payable', 'food'),
('KI1786', 'Chicken Nine Piece Cut ', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3499, 'Masa', 'Masa', '2022-06-15 11:57:50', '2022-06-15 11:57:50', 1, 'Accounts Payable', 'food'),
('KI1787', 'Beetroot ', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 795, 'Masa', 'Masa', '2022-06-15 12:13:37', '2022-06-15 12:13:37', 1, 'Accounts Payable', 'food'),
('KI1788', 'Goat Stewing', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7500, 'Masa', 'Masa', '2022-06-15 13:04:03', '2022-06-15 13:04:03', 1, 'Accounts Payable', 'food'),
('KI1789', 'Tgliatelle (500g)', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Masa', 'Masa', '2022-06-15 13:45:07', '2022-06-15 13:45:07', 1, 'Accounts Payable', 'food'),
('KI1790', 'Tagliatelle (500g)', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3990, 'Masa', 'Masa', '2022-06-15 14:01:29', '2022-06-15 14:01:29', 1, 'Accounts Payable', 'food'),
('KI1791', 'Cream cheese (1kg)', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 12152, 'Masa', 'Masa', '2022-06-15 14:15:28', '2022-06-15 14:15:28', 1, 'Accounts Payable', 'food'),
('KI1792', 'Gas', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2500, 'Masa', 'homsyadmin', '2022-06-15 15:06:50', '2022-10-13 15:46:16', 1, 'Accounts Payable', 'food'),
('KI1793', 'Gas (9kg)', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 27000, 'Masa', 'Masa', '2022-06-15 15:09:34', '2022-06-15 15:09:34', 1, 'Accounts Payable', 'other'),
('KI1794', 'Hake fillet ', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 11000, 'Masa', 'homsyadmin', '2022-06-15 16:15:23', '2022-10-13 15:46:49', 1, 'Accounts Payable', 'food'),
('KI1795', 'Jam mixed fruit (600)', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2895, 'Masa', 'Masa', '2022-06-16 14:00:11', '2022-06-16 14:00:11', 1, 'Accounts Payable', 'food'),
('KI1796', 'Lettuce ', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1895, 'Masa', 'Masa', '2022-06-16 14:05:45', '2022-06-16 14:05:45', 1, 'Accounts Payable', 'food'),
('KI1798', 'spinach', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 495, 'Masa', 'Masa', '2022-06-16 14:07:23', '2022-06-16 14:07:23', 1, 'Accounts Payable', 'food'),
('KI1799', 'cream cheese (120g)', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2995, 'Masa', 'Masa', '2022-06-16 14:12:18', '2022-06-16 14:12:18', 1, 'Accounts Payable', 'food'),
('KI1801', 'Laapsi', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1648, 'Masa', 'Masa', '2022-06-16 14:18:05', '2022-06-16 14:18:05', 1, 'Accounts Payable', 'food'),
('KI1802', 'Beans sprout', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1295, 'Masa', 'Masa', '2022-06-16 14:19:26', '2022-06-16 14:19:26', 1, 'Accounts Payable', 'food'),
('KI1803', 'Chicken Baby', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8595, 'Masa', 'Masa', '2022-06-16 14:45:10', '2022-06-16 14:45:10', 1, 'Accounts Payable', 'food');
INSERT INTO `stockitems` (`itemCode`, `name`, `description`, `itemType`, `unitOfMeassure`, `isActive`, `saleAcc`, `inventoryAcc`, `cogsAcc`, `adjustAcc`, `salePrice`, `actualCost`, `lastCost`, `createdBy`, `editedBy`, `createdOn`, `editedOn`, `reoderLevel`, `payableAcc`, `belongsTo`) VALUES
('KI1804', 'Brocolli pp', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2595, 'Masa', 'Masa', '2022-06-16 15:06:19', '2022-06-16 15:06:19', 1, 'Accounts Payable', 'food'),
('KI1805', 'Cauliflower', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2795, 'Masa', 'Masa', '2022-06-16 15:23:26', '2022-06-16 15:23:26', 1, 'Accounts Payable', 'food'),
('KI1806', 'Carrots', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1050, 'Masa', 'Masa', '2022-06-16 15:27:05', '2022-06-16 15:27:05', 1, 'Accounts Payable', 'food'),
('KI1807', 'Broccoli leave', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1300, 'Masa', 'Masa', '2022-06-16 15:38:04', '2022-06-16 15:38:04', 1, 'Accounts Payable', 'food'),
('KI1808', 'Cake Slice', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4833, 'homsyadmin', 'homsyadmin', '2022-06-22 09:55:39', '2022-06-22 09:55:39', 1, 'Accounts Payable', 'food'),
('KI1810', 'Strawberry Puree', '', 'noSale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 753, 'homsyadmin', 'homsyadmin', '2022-10-13 15:33:41', '2022-10-13 15:33:41', 1, 'Accounts Payable', 'food'),
('KI1811', 'Mango Puree', '', 'noSale', 'TOT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 579, 'homsyadmin', 'homsyadmin', '2022-10-13 15:44:39', '2022-10-13 15:44:39', 1, 'Accounts Payable', 'food'),
('KI1812', 'Basmati', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2799, 'homsyadmin', 'homsyadmin', '2022-10-13 15:45:38', '2022-10-13 15:45:38', 1, 'Accounts Payable', 'food'),
('KI1813', 'Candles', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 458, 'homsyadmin', 'homsyadmin', '2022-10-13 15:47:42', '2022-10-13 15:47:42', 1, 'Accounts Payable', 'other'),
('KI1820', 'Kingklip ', '', 'noSale', 'Portions', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5290, 'homsyadmin', 'homsyadmin', '2023-01-23 14:16:21', '2023-01-23 14:16:21', 1, 'Accounts Payable', 'food'),
('KI1822', 'Curry Paste', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8790, 'homsyadmin', 'homsyadmin', '2023-01-23 14:16:57', '2023-01-23 14:16:57', 1, 'Accounts Payable', 'food'),
('KI1823', 'Avocado Pulp', '', 'noSale', 'Gram', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1790, 'homsyadmin', 'homsyadmin', '2023-01-23 14:18:00', '2023-01-23 14:18:00', 1, 'Accounts Payable', 'food'),
('KI1824', 'Lasagna Sheet 500g', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1822, 'homsyadmin', 'Lame', '2023-01-23 14:18:51', '2023-06-08 08:11:59', 1, 'Accounts Payable', 'food'),
('KI1825', 'Canneloni', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2695, 'homsyadmin', 'Lame', '2023-01-23 14:19:21', '2023-03-24 15:12:57', 1, 'Accounts Payable', 'food'),
('KI1826', 'Apricot Jam', '', 'noSale', 'Gram', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4, 'homsyadmin', 'homsyadmin', '2023-01-23 14:20:39', '2023-01-23 14:20:39', 1, 'Accounts Payable', 'food'),
('KI1827', 'Marinated Pork Ribs', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10195, 'homsyadmin', 'Lame', '2023-01-23 14:22:03', '2023-06-23 13:22:52', 1, 'Accounts Payable', 'food'),
('KI1828', 'mixed herbs', '', 'noSale', 'Packet', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1395, 'homsyadmin', 'Lame', '2023-01-23 14:22:36', '2023-06-23 13:27:47', 1, 'Accounts Payable', 'food'),
('KI1829', 'Red Grapes', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3995, 'homsyadmin', 'homsyadmin', '2023-01-23 14:31:54', '2023-01-23 14:31:54', 1, 'Accounts Payable', 'food'),
('KI1831', 'PALM OIL  20L', 'COOKING OIL', 'noSale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2400, 'Lame', 'Lame', '2023-02-07 13:47:44', '2023-02-07 13:50:03', 1, 'Inventory', 'food'),
('KI1832', 'C&B MAYONNAISE', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3632, 'Lame', 'Lame', '2023-02-07 14:38:23', '2023-02-07 14:38:23', 1, 'Inventory', 'food'),
('KI1833', 'C&B MAYONNAISE', '', 'noSale', 'Gram', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3, 'Lame', 'Lame', '2023-02-07 14:39:40', '2023-02-07 14:39:40', 1, 'Inventory', 'food'),
('KI1834', 'COW HOOVES', 'STAFF MEAL', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2395, 'Lame', 'Lame', '2023-02-07 14:42:14', '2023-02-07 14:42:14', 1, 'Staff Meals Account', 'food'),
('KI1835', 'SCHWEPPES LEMONADE', '', 'sale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1150, 'Lame', 'Lame', '2023-02-07 14:43:43', '2023-02-07 14:43:43', 1, 'Bar Revenue', 'bar'),
('KI1836', 'SORGHUM MEAL', 'MABELE', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 990, 'Lame', 'Lame', '2023-02-07 14:44:49', '2023-02-07 14:44:49', 1, 'Kitchen Revenue', 'food'),
('KI1837', 'SEA FOOD BASKET', 'SEA FOOD', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 92676, 'Lame', 'Lame', '2023-02-07 15:00:09', '2023-03-16 13:51:57', 1, 'Kitchen Revenue', 'food'),
('KI1838', 'STEAK', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5040, 'Lame', 'Lame', '2023-02-07 15:14:27', '2023-02-07 15:14:27', 1, 'Kitchen Revenue', 'food'),
('KI1839', 'YORGHUT STRAWBERRIES AND CREAM', '', 'noSale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3120, 'Lame', 'Lame', '2023-02-07 15:31:54', '2023-02-07 15:31:54', 1, 'Inventory', 'food'),
('KI1840', 'YORGHUT', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2795, 'Lame', 'Lame', '2023-02-07 15:33:54', '2023-02-07 15:33:54', 1, 'Inventory', 'food'),
('KI1841', 'PEACH', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4995, 'Lame', 'Lame', '2023-02-07 16:22:01', '2023-02-07 16:22:01', 1, 'Kitchen Revenue', 'food'),
('KI1842', 'RUBBER BAND', '', 'noSale', 'Packet', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 505, 'Lame', 'Lame', '2023-02-07 16:23:33', '2023-02-07 16:23:33', 1, 'Kitchen Revenue', 'other'),
('KI1843', 'CASTOR SUGAR', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5390, 'Lame', 'Lame', '2023-02-07 17:11:27', '2023-02-07 17:11:27', 1, 'Inventory', 'food'),
('KI1844', 'QUINOA WHITE', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6500, 'Lame', 'Lame', '2023-02-07 17:19:50', '2023-02-07 17:19:50', 1, 'Kitchen Revenue', 'food'),
('KI1845', 'QUINOA RED', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 9815, 'Lame', 'Lame', '2023-02-07 17:20:33', '2023-02-07 17:20:33', 1, 'Kitchen Revenue', 'food'),
('KI1846', 'CAMEBERT WEDGES GRANDE', '', 'sale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3795, 'Lame', 'Lame', '2023-02-07 17:24:33', '2023-02-07 17:24:33', 1, 'Kitchen Revenue', 'food'),
('KI1847', 'PEPPERONI SALAMI', '', 'sale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4065, 'Lame', 'Lame', '2023-02-07 17:28:44', '2023-02-07 17:28:44', 1, 'Kitchen Revenue', 'food'),
('KI1848', 'BEEF WORS', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7390, 'Lame', 'Lame', '2023-02-08 09:04:05', '2023-02-08 09:04:05', 1, 'Inventory', 'food'),
('KI1849', 'PEACHES (YELLOW)', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2495, 'Lame', 'Lame', '2023-02-08 09:16:22', '2023-02-08 09:16:22', 1, 'Kitchen Revenue', 'food'),
('KI1850', 'DISH WASHING LIQUID', '', 'noSale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1077, 'Lame', 'Lame', '2023-02-08 10:28:37', '2023-02-08 10:28:37', 1, 'Inventory', 'other'),
('KI1851', 'ARABELLA RED WINE PINOTAGE 750ML', '', 'sale', 'BOTTLE', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4606, 'Lame', 'Lame', '2023-02-08 10:34:45', '2023-02-08 12:02:44', 1, 'Bar Revenue', 'bar'),
('KI1852', 'MAIZE COUSCOUS', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2445, 'Lame', 'Lame', '2023-02-08 12:06:50', '2023-02-08 12:06:50', 1, 'Kitchen Revenue', 'food'),
('KI1853', 'CHICKEN MIXED PORTIONS/CUTS', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 452, 'Lame', 'Lame', '2023-02-08 12:20:37', '2023-02-08 12:20:37', 1, 'Bar Revenue', 'food'),
('KI1854', 'CHOCOLATE BISCUITS', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-02-08 15:28:46', '2023-02-08 15:28:46', 1, 'Kitchen Revenue', 'food'),
('KI1855', 'LAMB MINCE', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10195, 'Lame', 'Lame', '2023-02-08 16:13:20', '2023-02-08 16:13:20', 1, 'Kitchen Revenue', 'food'),
('KI1856', 'STREAKY BACON', '', 'sale', 'Gram', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 13, 'Lame', 'Lame', '2023-02-08 16:29:42', '2023-03-28 11:45:37', 1, 'Kitchen Revenue', 'food'),
('KI1857', 'IMPALA WORS', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6187, 'Lame', 'Lame', '2023-02-08 16:35:08', '2023-02-08 16:35:08', 1, 'Kitchen Revenue', 'food'),
('KI1858', 'BREAM FILLET ( BONELESS)', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10285, 'Lame', 'Lame', '2023-02-08 16:40:06', '2023-02-08 16:40:06', 1, 'Kitchen Revenue', 'food'),
('KI1860', 'SALMON (CANADIAN)', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 22990, 'Lame', 'Lame', '2023-02-08 16:43:23', '2023-02-08 16:43:23', 1, 'Kitchen Revenue', 'food'),
('KI1861', 'MARVELLO BUTTER', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1981, 'Lame', 'Lame', '2023-02-09 08:25:54', '2023-02-09 08:25:54', 30, 'Kitchen Revenue', 'food'),
('KI1862', 'MOIRS CUSTARD POWDER', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2695, 'Lame', 'Lame', '2023-02-09 08:32:00', '2023-02-09 08:32:00', 1, 'Kitchen Revenue', 'food'),
('KI1863', 'PEAR HALVES', '', 'noSale', '3KG CAN', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 13146, 'Lame', 'Lame', '2023-02-09 08:40:58', '2023-02-09 08:44:56', 1, 'Kitchen Revenue', 'food'),
('KI1864', 'HONEY ', '', 'noSale', 'BOTTLE', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3995, 'Lame', 'Lame', '2023-02-09 08:49:17', '2023-02-09 08:49:17', 1, 'Kitchen Revenue', 'food'),
('KI1865', 'WATERMELON', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8335, 'Lame', 'Lame', '2023-02-09 08:57:22', '2023-02-09 08:57:22', 1, 'Kitchen Revenue', 'food'),
('KI1866', 'PINEAPPLE BOX', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2500, 'Lame', 'Lame', '2023-02-09 10:01:31', '2023-02-09 10:01:31', 1, 'Kitchen Revenue', 'food'),
('KI1867', 'BABY MARROW BOX', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 995, 'Lame', 'Lame', '2023-02-09 10:03:51', '2023-02-09 10:03:51', 1, 'Kitchen Revenue', 'food'),
('KI1868', 'LEROTSE (KGODU)', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1750, 'Lame', 'Lame', '2023-02-09 10:29:54', '2023-02-09 10:29:54', 2, 'Kitchen Revenue', 'food'),
('KI1869', 'GAME (Wildebeest)', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6000, 'Lame', 'Lame', '2023-02-09 10:33:20', '2023-02-09 10:33:20', 1, 'Kitchen Revenue', 'food'),
('KI1870', 'YELLOW PEPPER', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2975, 'Lame', 'Lame', '2023-02-09 12:53:39', '2023-02-09 12:53:39', 1, 'Kitchen Revenue', 'food'),
('KI1871', 'RED PEPPER', '', 'sale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3650, 'Lame', 'Lame', '2023-02-09 13:04:12', '2023-02-09 13:04:12', 1, 'Kitchen Revenue', 'food'),
('KI1872', 'Butter Beans 400g', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1895, 'Lame', 'Lame', '2023-02-10 08:40:23', '2023-08-26 16:05:53', 2, 'Accounts Payable', 'food'),
('KI1873', 'KIDNEY BEANS (RED)', '', 'sale', 'TIN/CAN', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10495, 'Lame', 'Lame', '2023-02-10 09:28:50', '2023-02-10 09:28:50', 2, 'Accounts Payable', 'food'),
('KI1874', 'OSTRICH CARPACIO', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3876, 'Lame', 'Lame', '2023-02-10 11:29:10', '2023-02-10 11:29:10', 2, 'Accounts Payable', 'food'),
('KI1875', 'RED VELVET  CAKE SLICE', '', 'sale', 'Portions', 0, NULL, 'Inventory', 'Events Revenue', 'Stock Adjustment', NULL, NULL, 565, 'Lame', 'Lame', '2023-02-10 15:19:44', '2023-02-10 15:19:44', 2, 'Accounts Payable', 'bar'),
('KI1876', 'CARROT CAKE SLICE', '', 'sale', 'Portions', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1595, 'Lame', 'Lame', '2023-02-10 15:24:41', '2023-02-10 15:24:41', 1, 'Accounts Payable', 'food'),
('KI1878', 'BLACK FOREST CAKE', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6995, 'Lame', 'Lame', '2023-02-10 15:28:20', '2023-02-10 15:28:20', 1, 'Accounts Payable', 'food'),
('KI1879', 'SWISS ROLL', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5488, 'Lame', 'Lame', '2023-02-10 15:29:11', '2023-02-10 15:29:11', 1, 'Accounts Payable', 'food'),
('KI1880', 'POTATO', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2295, 'Lame', 'Lame', '2023-02-10 16:25:00', '2023-02-10 16:25:00', 1, 'Accounts Payable', 'food'),
('KI1881', 'MILK 1L', '', 'noSale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1616, 'Lame', 'Lame', '2023-02-10 16:35:31', '2023-02-10 16:35:31', 1, 'Accounts Payable', 'food'),
('KI1882', 'FETA CHEESE', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 9372, 'Lame', 'Lame', '2023-02-10 16:50:17', '2023-02-10 16:50:17', 1, 'Accounts Payable', 'food'),
('KI1883', 'Ranch Salad Dressing', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2095, 'Lame', 'Lame', '2023-02-13 12:09:35', '2023-02-13 12:09:35', 1, 'Accounts Payable', 'food'),
('KI1884', 'WHITE BREAD', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1595, 'Lame', 'Lame', '2023-02-13 13:51:45', '2023-02-13 13:51:45', 1, 'Accounts Payable', 'food'),
('KI1885', 'BROWN BREAD', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1695, 'Lame', 'Lame', '2023-02-13 13:52:18', '2023-02-13 13:52:18', 1, 'Accounts Payable', 'food'),
('KI1886', 'SPAGHETTI', 'STAFF MEAL', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2495, 'Lame', 'Lame', '2023-02-13 14:42:25', '2023-02-13 14:42:25', 1, 'Accounts Payable', 'food'),
('KI1887', 'TUNA', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1550, 'Lame', 'Lame', '2023-02-13 14:45:13', '2023-02-13 14:45:13', 1, 'Accounts Payable', 'food'),
('KI1888', 'BROWN ROLL', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 225, 'Lame', 'Lame', '2023-02-13 15:01:07', '2023-02-13 15:01:07', 1, 'Accounts Payable', 'food'),
('KI1889', 'BROWN SUGAR', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Tax', NULL, NULL, 1545, 'Lame', 'Lame', '2023-02-13 16:53:34', '2023-02-13 16:53:34', 1, 'Accounts Payable', 'food'),
('KI1890', 'BREAM FILLET', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-02-13 16:57:39', '2023-02-13 16:57:39', 5, 'Accounts Payable', 'food'),
('KI1891', 'PORK SAUSAGE', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7195, 'Lame', 'Lame', '2023-02-13 17:05:48', '2023-02-13 17:05:48', 2, 'Accounts Payable', 'food'),
('KI1892', 'SUSHI GINGER PINK', '', 'noSale', 'BOTTLE', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2936, 'Lame', 'Lame', '2023-02-14 12:07:55', '2023-02-14 12:07:55', 1, 'Accounts Payable', 'food'),
('KI1893', 'COUS COUS', '', 'sale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2800, 'Lame', 'Lame', '2023-02-14 12:13:00', '2023-02-14 12:13:00', 1, 'Accounts Payable', 'food'),
('KI1894', 'POPPADUM', '', 'sale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3367, 'Lame', 'Lame', '2023-02-14 12:17:50', '2023-02-14 12:17:50', 1, 'Accounts Payable', 'food'),
('KI1896', 'COCONUT MILK', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1884, 'Lame', 'Lame', '2023-02-14 12:21:59', '2023-02-14 12:21:59', 2, 'Accounts Payable', 'food'),
('KI1897', 'JAPANESE MAYO', '', 'noSale', 'BOTTLE', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8170, 'Lame', 'Lame', '2023-02-14 12:25:19', '2023-02-14 12:25:54', 1, 'Accounts Payable', 'food'),
('KI1898', 'CAVIAR (LUMPFISH RED)', '', 'sale', 'TUB', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 31500, 'Lame', 'Lame', '2023-02-14 12:29:51', '2023-02-14 12:29:51', 1, 'Accounts Payable', 'food'),
('KI1899', 'BLACK THILL', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1995, 'Lame', 'Lame', '2023-02-14 12:39:27', '2023-02-14 12:39:27', 1, 'Accounts Payable', 'food'),
('KI1900', 'MUSTARD SEEDS (YELLOW)', '', 'noSale', 'Packet', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 995, 'Lame', 'Lame', '2023-02-14 12:40:25', '2023-02-14 12:49:39', 1, 'Accounts Payable', 'food'),
('KI1901', 'MAXI SEEDED BUNS', '', 'sale', 'Packet', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1265, 'Lame', 'Lame', '2023-02-14 12:41:30', '2023-02-14 12:41:30', 2, 'Accounts Payable', 'food'),
('KI1902', 'RAINBOW PEPPERS', '', 'noSale', 'Packet', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2595, 'Lame', 'Lame', '2023-02-14 12:42:28', '2023-02-14 12:42:28', 1, 'Accounts Payable', 'food'),
('KI1903', 'KOO BEANS', '', 'sale', 'TIN/CAN', 0, NULL, 'Inventory', 'Deposit Holding', 'Tips', NULL, NULL, 995, 'Lame', 'Lame', '2023-02-14 13:26:20', '2023-02-14 13:26:20', 1, 'Accounts Payable', 'food'),
('KI1904', 'GARLIC', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1000, 'Lame', 'Lame', '2023-02-14 14:27:31', '2023-02-14 14:27:31', 1, 'Accounts Payable', 'food'),
('KI1905', 'RED FOOD COLOURING', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 695, 'Lame', 'Lame', '2023-02-14 16:19:22', '2023-02-14 16:19:22', 1, 'Accounts Payable', 'food'),
('KI1906', 'DESSERT CREAM', '', 'noSale', 'TIN/CAN', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2565, 'Lame', 'Lame', '2023-02-15 09:11:08', '2023-02-15 09:11:08', 2, 'Accounts Payable', 'food'),
('KI1907', 'RED CHILLIES', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1450, 'Lame', 'Lame', '2023-02-15 09:31:22', '2023-02-15 09:31:22', 1, 'Accounts Payable', 'food'),
('KI1908', 'ROSEMARY', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1695, 'Lame', 'Lame', '2023-02-15 09:33:58', '2023-02-15 09:33:58', 1, 'Accounts Payable', 'food'),
('KI1909', 'MUFFINS BRAN', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3465, 'Lame', 'Lame', '2023-02-16 12:18:30', '2023-02-16 12:18:30', 6, 'Accounts Payable', 'bar'),
('KI1910', 'MUFFINS POPPY SEED', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 401, 'Lame', 'Lame', '2023-02-16 12:19:16', '2023-02-16 12:19:16', 6, 'Accounts Payable', 'bar'),
('KI1911', 'CUP CAKES', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3030, 'Lame', 'Lame', '2023-02-16 13:10:20', '2023-02-16 13:10:20', 2, 'Accounts Payable', 'bar'),
('KI1912', 'MUFFIN', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 560, 'Lame', 'Lame', '2023-02-16 13:11:08', '2023-02-16 13:11:08', 2, 'Accounts Payable', 'bar'),
('KI1913', 'ASPARAGUS', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3985, 'Lame', 'Lame', '2023-02-16 13:36:05', '2023-02-16 13:36:05', 1, 'Accounts Payable', 'food'),
('KI1914', 'Thai Green Curry', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4469, 'Lame', 'Lame', '2023-02-16 13:52:10', '2023-02-16 13:52:10', 1, 'Accounts Payable', 'food'),
('KI1915', 'PORK LOIN CHOPS', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 9195, 'Lame', 'Lame', '2023-02-18 09:23:44', '2023-02-18 09:23:44', 10, 'Accounts Payable', 'food'),
('KI1916', ' OLIVES', '', 'noSale', 'TIN/CAN', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1785, 'Lame', 'Lame', '2023-02-18 13:51:24', '2023-02-18 13:51:24', 1, 'Accounts Payable', 'food'),
('KI1917', 'GHERKINS', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4450, 'Lame', 'Lame', '2023-02-18 13:56:11', '2023-02-18 13:56:11', 1, 'Accounts Payable', 'food'),
('KI1918', 'STRAWBERRY JELLY', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 583, 'Lame', 'Lame', '2023-02-18 13:59:34', '2023-02-18 13:59:34', 1, 'Accounts Payable', 'food'),
('KI1919', 'RICOFFFY TIN', '', 'noSale', 'TIN/CAN', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7095, 'Lame', 'Lame', '2023-02-18 14:06:14', '2023-02-18 14:06:14', 1, 'Accounts Payable', 'food'),
('KI1920', 'Beef Sausage', '', 'sale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3295, 'Lame', 'Lame', '2023-02-18 14:13:39', '2023-02-18 14:13:39', 2, 'Accounts Payable', 'food'),
('KI1921', 'Cocktail Ribs', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6696, 'Lame', 'Lame', '2023-02-18 14:25:24', '2023-11-28 12:17:57', 2, 'Accounts Payable', 'food'),
('KI1922', 'CARAMEL TREAT', '', 'noSale', 'TIN/CAN', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-02-20 09:27:44', '2023-02-20 09:27:44', 6, 'Accounts Payable', 'food'),
('KI1923', 'Chicken Samoosa', '', 'sale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2590, 'Lame', 'Lame', '2023-02-21 14:50:58', '2023-11-28 12:18:57', 2, 'Accounts Payable', 'food'),
('KI1924', 'Veg Samoosa', '', 'sale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2590, 'Lame', 'Lame', '2023-02-22 08:27:54', '2023-11-28 12:19:41', 2, 'Accounts Payable', 'food'),
('KI1925', 'Italian Salami', '', 'sale', 'Packet', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4065, 'Lame', 'Lame', '2023-02-22 08:29:37', '2023-11-28 12:20:28', 2, 'Accounts Payable', 'food'),
('KI1926', 'SKEWERS', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 987, 'Lame', 'Lame', '2023-02-22 08:31:16', '2023-02-22 08:31:16', 2, 'Accounts Payable', 'food'),
('KI1928', 'STEWING STEAK', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10784, 'Lame', 'Lame', '2023-02-22 09:38:38', '2023-02-22 09:38:38', 1, 'Accounts Payable', 'food'),
('KI1929', 'HOLAND STEAK', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6420, 'Lame', 'Lame', '2023-02-22 09:39:32', '2023-02-22 09:39:32', 1, 'Accounts Payable', 'food'),
('KI1930', 'French Loaf', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 990, 'Lame', 'Lame', '2023-02-22 10:05:16', '2023-09-28 16:11:56', 1, 'Accounts Payable', 'food'),
('KI1931', 'SPRINGBOK CARPACIO', '', 'sale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2197, 'Lame', 'Lame', '2023-02-22 15:49:49', '2023-02-22 15:49:49', 1, 'Accounts Payable', 'food'),
('KI1932', 'BABYBEL CHEESE', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4995, 'Lame', 'Lame', '2023-02-22 15:51:57', '2023-02-22 15:51:57', 1, 'Accounts Payable', 'food'),
('KI1933', 'BEEF KIDNEY', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2550, 'Lame', 'Lame', '2023-02-23 09:05:05', '2023-02-23 09:05:05', 1, 'Accounts Payable', 'food'),
('KI1934', 'S/ MIL CHEESE', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2395, 'Lame', 'Lame', '2023-02-23 10:34:54', '2023-02-23 10:34:54', 1, 'Accounts Payable', 'food'),
('KI1935', 'GOUDA CHEESE', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2665, 'Lame', 'Lame', '2023-02-23 10:36:00', '2023-02-23 10:36:00', 1, 'Accounts Payable', 'food'),
('KI1936', 'MIXED POLONY SLICES', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1795, 'Lame', 'Lame', '2023-02-23 10:53:18', '2023-02-23 10:53:18', 1, 'Accounts Payable', 'food'),
('KI1937', 'MADILA', '', 'noSale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1548, 'Lame', 'Lame', '2023-02-23 11:03:40', '2023-02-23 11:03:40', 1, 'Accounts Payable', 'food'),
('KI1938', 'SAUSAGE SPECIALITY', '', 'sale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 465, 'Lame', 'Lame', '2023-02-23 12:17:13', '2023-02-23 12:17:13', 1, 'Accounts Payable', 'food'),
('KI1939', 'Mixed Berry Yoghurt', '', 'noSale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2994, 'Lame', 'Lame', '2023-02-23 14:34:37', '2023-02-23 14:34:37', 1, 'Accounts Payable', 'food'),
('KI1940', 'Strawberry Yoghurt', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5990, 'Lame', 'Lame', '2023-02-23 14:35:30', '2023-02-23 14:35:30', 1, 'Accounts Payable', 'food'),
('KI1941', 'PlainYoghurt', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3595, 'Lame', 'Lame', '2023-02-23 14:36:24', '2023-02-23 14:36:24', 1, 'Accounts Payable', 'food'),
('KI1942', 'Apricot Yoghurt', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-02-23 14:37:31', '2023-02-23 14:37:31', 1, 'Accounts Payable', 'food'),
('KI1943', 'Custard Yorghut', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2295, 'Lame', 'Lame', '2023-02-23 14:38:25', '2023-02-23 14:38:25', 1, 'Accounts Payable', 'food'),
('KI1944', 'Whole Wheat Bread', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 805, 'Lame', 'Lame', '2023-02-23 15:54:02', '2023-02-23 15:54:02', 1, 'Accounts Payable', 'food'),
('KI1945', 'Avocado Packet/ Bag', '', 'sale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 895, 'Lame', 'Lame', '2023-02-23 15:58:28', '2023-02-23 15:58:28', 1, 'Accounts Payable', 'food'),
('KI1946', 'Hot and Spicy tomato sauce', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'Staff Meals Account', 'Tax', NULL, NULL, 2065, 'Lame', 'Lame', '2023-02-23 16:09:24', '2023-02-23 16:09:24', 1, 'Accounts Payable', 'food'),
('KI1947', 'SLAB CHOCOLATE CAKE SLICE', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2505, 'Lame', 'Lame', '2023-02-23 16:15:12', '2023-02-23 16:19:09', 1, 'Accounts Payable', 'food'),
('KI1948', 'CHOC SWISS ROLL', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2505, 'Lame', 'Lame', '2023-02-23 16:18:31', '2023-02-23 16:18:31', 1, 'Accounts Payable', 'food'),
('KI1949', 'Swiss Roll Vanilla', '', 'sale', 'Each', 0, NULL, 'Inventory', 'Deposit Holding', 'Stock Adjustment', NULL, NULL, 2195, 'Lame', 'Lame', '2023-02-23 16:20:38', '2023-02-23 16:20:38', 1, 'Accounts Payable', 'food'),
('KI1950', 'Beef Samoosa', '', 'sale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4290, 'Lame', 'Lame', '2023-02-24 08:58:58', '2023-02-24 08:58:58', 1, 'Accounts Payable', 'food'),
('KI1952 ', 'SCONES', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 500, 'Lame', 'Lame', '2023-02-25 12:55:02', '2023-02-25 12:55:02', 10, 'Accounts Payable', 'food'),
('KI1953', 'Smoked Ham', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2640, 'Lame', 'Lame', '2023-03-01 09:28:20', '2023-03-01 09:28:20', 2, 'Accounts Payable', 'food'),
('KI1954', 'MOZZARELLA ', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 9795, 'Lame', 'Lame', '2023-03-01 15:36:13', '2023-11-15 13:49:38', 1, 'Accounts Payable', 'food'),
('KI1955', 'Baking Powder', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3995, 'Lame', 'Lame', '2023-03-01 16:15:24', '2023-03-01 16:15:24', 2, 'Accounts Payable', 'food'),
('KI1956', 'Pumpkin', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 994, 'Lame', 'Lame', '2023-03-02 09:24:38', '2023-03-02 09:24:38', 1, 'Accounts Payable', 'food'),
('KI1957', 'Hake Fillet', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-03-02 09:30:48', '2023-03-02 09:30:48', 10, 'Accounts Payable', 'food'),
('KI1958', 'Butternut', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1250, 'Lame', 'Lame', '2023-03-02 10:39:26', '2023-03-02 10:39:26', 2, 'Accounts Payable', 'food'),
('KI1960', 'Veggie Rolls', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2500, 'Lame', 'Lame', '2023-03-03 08:31:00', '2023-03-03 08:31:00', 6, 'Accounts Payable', 'food'),
('KI1961', 'Salad Mix', '', 'sale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1999, 'Lame', 'Lame', '2023-03-03 08:34:01', '2023-03-03 08:34:01', 2, 'Accounts Payable', 'food'),
('KI1962', 'Capers', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7150, 'Lame', 'Lame', '2023-03-03 09:45:37', '2023-03-03 09:45:37', 1, 'Accounts Payable', 'food'),
('KI1963', 'Watermelom Halves', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2995, 'Lame', 'Lame', '2023-03-03 09:48:55', '2023-03-03 09:48:55', 1, 'Accounts Payable', 'food'),
('KI1964', 'Prawn Meat', '', 'sale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 12723, 'Lame', 'Lame', '2023-03-03 10:05:07', '2023-03-03 10:07:16', 1, 'Accounts Payable', 'food'),
('KI1965', 'BEEF Cocktail Samoosa ', '', 'sale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2590, 'Lame', 'Lame', '2023-03-03 10:11:40', '2023-03-03 10:12:13', 1, 'Accounts Payable', 'food'),
('KI1966', 'CHICKEN Samoosa', '', 'sale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4290, 'Lame', 'Lame', '2023-03-03 10:15:41', '2023-03-03 10:15:41', 1, 'Accounts Payable', 'food'),
('KI1967', 'Muesli', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3025, 'Lame', 'Lame', '2023-03-03 11:49:11', '2023-03-03 11:49:11', 1, 'Accounts Payable', 'food'),
('KI1968', 'Pecan Nuts Mix', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 23990, 'Lame', 'Lame', '2023-03-03 11:50:30', '2023-03-03 11:50:30', 1, 'Accounts Payable', 'food'),
('KI1969', 'Hot Sauce', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2295, 'Lame', 'Lame', '2023-03-04 12:50:11', '2023-03-04 12:52:12', 1, 'Accounts Payable', 'food'),
('KI197', 'Rape Morogo', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 971, 'Masa', 'Lame', '2022-06-16 14:06:47', '2023-02-15 09:35:40', 1, 'Accounts Payable', 'food'),
('KI1970', 'Vanilla Cake', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 36000, 'Lame', 'Lame', '2023-03-04 15:19:14', '2023-03-04 15:19:14', 1, 'Accounts Payable', 'bar'),
('KI1971', 'Jacobs Kronung Coffee', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8495, 'Lame', 'Lame', '2023-03-06 09:17:41', '2023-03-06 09:17:41', 1, 'Accounts Payable', 'other'),
('KI1974', 'White Vinegar', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2533, 'Lame', 'Lame', '2023-03-07 14:07:39', '2023-03-07 14:07:39', 1, 'Accounts Payable', 'food'),
('KI1978', 'Grapefruit', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 595, 'Lame', 'Lame', '2023-03-08 11:34:36', '2023-03-08 11:34:36', 2, 'Accounts Payable', 'food'),
('KI1979', 'CauliBroc', '', 'sale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2995, 'Lame', 'Lame', '2023-03-09 13:15:53', '2023-03-09 13:15:53', 1, 'Accounts Payable', 'food'),
('KI1980', 'Butter Chicken', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10590, 'Lame', 'Lame', '2023-03-09 15:01:27', '2023-03-09 15:01:27', 1, 'Accounts Payable', 'food'),
('KI1981', 'Butter Naan', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5475, 'Lame', 'Lame', '2023-03-09 15:02:23', '2023-03-09 15:02:23', 1, 'Accounts Payable', 'food'),
('KI1982', 'Cottage Cheese', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2865, 'Lame', 'Lame', '2023-03-14 12:04:37', '2023-03-14 12:04:37', 1, 'Accounts Payable', 'food'),
('KI1983', 'Balsamic and Onion Dip', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2865, 'Lame', 'Lame', '2023-03-14 12:05:48', '2023-03-14 12:05:48', 1, 'Accounts Payable', 'food'),
('KI1984', 'Cheese Slices', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2150, 'Lame', 'Lame', '2023-03-16 08:57:19', '2023-03-16 08:57:19', 1, 'Accounts Payable', 'food'),
('KI1985', 'Beef Fillet', '', 'sale', 'KG', 0, NULL, 'Inventory', 'Deposit Holding', 'Stock Adjustment', NULL, NULL, 13855, 'Lame', 'Lame', '2023-03-16 12:40:44', '2023-03-16 12:40:44', 2, 'Accounts Payable', 'food'),
('KI1986', 'Wrapped Takeaway Cutlery', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 125, 'Lame', 'Lame', '2023-03-16 14:01:14', '2024-01-22 11:57:08', 50, 'Accounts Payable', 'other'),
('KI1987', 'Chia Seeds', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 11187, 'Lame', 'Lame', '2023-03-17 10:07:26', '2023-03-17 10:07:26', 1, 'Accounts Payable', 'food'),
('KI1988', 'Deli Bites/ Cocktail Pies', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3895, 'Lame', 'Lame', '2023-03-23 12:47:07', '2024-01-22 11:58:45', 2, 'Accounts Payable', 'food'),
('KI1989', 'Spring Roll', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 661, 'Lame', 'Lame', '2023-03-24 09:25:27', '2023-03-24 09:25:27', 2, 'Accounts Payable', 'food'),
('KI1990', 'White Pepper Sachets', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 375, 'Lame', 'Lame', '2023-03-24 09:38:23', '2023-03-24 09:38:23', 1, 'Accounts Payable', 'food'),
('KI1991', 'Fish Sauce', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3399, 'Lame', 'Lame', '2023-03-24 15:19:29', '2023-03-24 15:19:29', 1, 'Accounts Payable', 'food'),
('KI1992', 'Lime Juice', '', 'noSale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5079, 'Lame', 'Lame', '2023-03-24 15:22:37', '2023-03-24 15:22:37', 1, 'Accounts Payable', 'food'),
('KI1993', 'Hellmanns Greek Salad Dressing', '', 'noSale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 9660, 'Lame', 'Lame', '2023-03-24 17:14:10', '2023-03-24 17:14:10', 1, 'Accounts Payable', 'food'),
('KI1994', 'Pumpkin Seeds', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4250, 'Lame', 'Lame', '2023-03-25 11:30:49', '2023-03-25 11:30:49', 1, 'Accounts Payable', 'food'),
('KI1995', 'Sunflower Seeds', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1210, 'Lame', 'Lame', '2023-03-25 11:31:30', '2023-03-25 11:31:30', 1, 'Accounts Payable', 'food'),
('KI1996', 'Strainer Basket', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6133, 'Lame', 'Lame', '2023-03-25 11:32:42', '2023-03-25 11:32:42', 1, 'Accounts Payable', 'other'),
('KI1997', 'Greek Yoghurt', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3485, 'Lame', 'Lame', '2023-03-28 11:56:56', '2023-03-28 11:56:56', 1, 'Accounts Payable', 'food'),
('KI1998', 'Provita ', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3060, 'Lame', 'Lame', '2023-03-28 11:58:11', '2023-03-28 11:58:11', 1, 'Accounts Payable', 'food'),
('KI1999', 'Black Pepper Grinder ', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6695, 'Lame', 'Lame', '2023-03-28 12:06:16', '2023-09-12 14:54:26', 1, 'Accounts Payable', 'bar'),
('KI2000', 'Parmesan cheese', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 36501, 'Lame', 'Lame', '2023-03-30 09:24:20', '2023-03-30 09:24:20', 1, 'Accounts Payable', 'food'),
('KI2001', 'Chicken Stock', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 15756, 'Lame', 'Lame', '2023-04-17 14:08:22', '2023-04-17 14:08:22', 1, 'Accounts Payable', 'food'),
('KI2002', 'Curry Chicken', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5195, 'Lame', 'Lame', '2023-04-20 09:25:18', '2023-04-20 09:25:18', 1, 'Accounts Payable', 'food'),
('KI2004', 'Kiwi Punnet', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 495, 'Lame', 'Lame', '2023-04-20 09:26:27', '2023-04-20 09:26:27', 1, 'Accounts Payable', 'food'),
('KI2005', 'Smoked Chicken', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3195, 'Lame', 'Lame', '2023-04-20 09:27:06', '2023-04-20 09:27:06', 1, 'Accounts Payable', 'food'),
('KI2006', 'Carrot Celery Finger', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2495, 'Lame', 'Lame', '2023-04-20 09:27:55', '2023-04-20 09:27:55', 1, 'Accounts Payable', 'food'),
('KI2007', 'Fruit Salad', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 15995, 'Lame', 'Lame', '2023-04-20 09:28:45', '2023-04-20 09:28:45', 1, 'Accounts Payable', 'food'),
('KI2008', 'POLENTA', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3995, 'Lame', 'Lame', '2023-04-20 14:57:19', '2023-04-20 14:57:19', 1, 'Accounts Payable', 'food'),
('KI2009', 'CRANBERRY FRUIT', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3095, 'Lame', 'Lame', '2023-04-22 13:35:25', '2023-04-22 13:35:25', 1, 'Accounts Payable', 'food'),
('KI2010', 'BAYLEAVES', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 850, 'Lame', 'Lame', '2023-04-24 12:19:31', '2023-04-24 12:19:31', 1, 'Accounts Payable', 'food'),
('KI2011', 'Mustard Sauce', '', 'noSale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1748, 'Lame', 'Lame', '2023-04-24 13:42:48', '2023-04-24 13:42:48', 1, 'Accounts Payable', 'food'),
('KI2012', 'Sweet Chilli Sauce', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3995, 'Lame', 'Lame', '2023-04-24 13:43:43', '2023-04-24 13:43:43', 1, 'Accounts Payable', 'food'),
('KI2013', 'Pink Coarse Salt Grinder', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2695, 'Lame', 'Lame', '2023-09-12 14:46:47', '2023-09-12 14:46:47', 1, 'Accounts Payable', 'bar'),
('KI2014', 'Cutting Board', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 23495, 'Lame', 'Lame', '2023-04-26 10:30:47', '2023-04-26 10:30:47', 1, 'Accounts Payable', 'food'),
('KI2015', 'Cream Cheese', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Tax', NULL, NULL, 2495, 'Lame', 'Lame', '2023-04-26 12:45:38', '2023-04-26 12:45:38', 1, 'Accounts Payable', 'food'),
('KI2016', 'Bicarbonate of Soda', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1895, 'Lame', 'Lame', '2023-04-26 12:47:59', '2023-04-26 12:47:59', 1, 'Accounts Payable', 'food'),
('KI2017', 'Swiss Cheese', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2195, 'Lame', 'Lame', '2023-04-26 12:52:04', '2023-04-26 12:52:04', 1, 'Accounts Payable', 'food'),
('KI2018', 'Edam Cheese', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5065, 'Lame', 'Lame', '2023-04-26 13:16:14', '2023-04-26 13:16:14', 1, 'Accounts Payable', 'food'),
('KI2019', 'Blue Cheese', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3795, 'Lame', 'Lame', '2023-04-26 15:23:30', '2023-04-26 15:23:30', 1, 'Accounts Payable', 'food'),
('KI2020', 'DATES', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1765, 'Lame', 'Lame', '2023-04-27 08:25:24', '2023-04-27 08:25:24', 1, 'Accounts Payable', 'food'),
('KI2021', 'FIGS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2450, 'Lame', 'Lame', '2023-04-27 08:25:55', '2023-04-27 08:25:55', 1, 'Accounts Payable', 'food'),
('KI2022', 'Ginger breadman', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1095, 'Lame', 'Lame', '2023-04-27 08:32:41', '2023-04-27 08:32:41', 1, 'Accounts Payable', 'food'),
('KI2023', 'Pomegranate', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2860, 'Lame', 'Lame', '2023-04-27 08:34:12', '2023-04-27 08:34:12', 1, 'Accounts Payable', 'food'),
('KI2024', 'Frozen Berries', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'Discount', 'Stock Adjustment', NULL, NULL, 6990, 'Lame', 'Lame', '2023-04-27 13:52:27', '2023-04-27 13:52:27', 1, 'Accounts Payable', 'food'),
('KI2025', 'Muffin Tray/ Pan', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7195, 'Lame', 'Lame', '2023-04-27 15:32:06', '2023-04-27 15:32:06', 1, 'Accounts Payable', 'food'),
('KI2026', 'Onion Bun', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 695, 'Lame', 'Lame', '2023-04-28 13:53:25', '2023-04-28 13:53:25', 1, 'Accounts Payable', 'food'),
('KI2027', 'Mini Steak', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 15, 'Lame', 'Lame', '2023-05-11 08:22:31', '2023-05-11 08:22:31', 1, 'Accounts Payable', 'food'),
('KI2028', 'Lamb Shoulder', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 15286, 'Lame', 'Lame', '2023-05-11 08:23:22', '2023-05-11 08:23:22', 1, 'Accounts Payable', 'food'),
('KI2029', 'Dried Fruits', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4950, 'Lame', 'Lame', '2023-05-12 17:10:28', '2023-05-12 17:10:28', 1, 'Accounts Payable', 'food'),
('KI2030', 'Laughing Cow Cheese', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2495, 'Lame', 'Lame', '2023-05-13 09:57:44', '2023-05-13 09:57:44', 1, 'Accounts Payable', 'food'),
('KI2031', 'Chilli Bite Spice', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 30115, 'Lame', 'Lame', '2023-05-13 12:50:46', '2023-05-13 12:54:45', 1, 'Accounts Payable', 'food'),
('KI2032', 'Raspberry Jelly', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 683, 'Lame', 'Lame', '2023-05-13 13:08:24', '2023-05-13 13:08:24', 1, 'Accounts Payable', 'food'),
('KI2033', 'Papaya/ Pawpaw', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1295, 'Lame', 'Lame', '2023-05-13 14:14:32', '2023-05-13 14:14:32', 1, 'Accounts Payable', 'food'),
('KI2034', 'Chocolate Chip Yoghurt', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3595, 'Lame', 'Lame', '2023-05-13 14:18:57', '2023-05-13 14:18:57', 1, 'Accounts Payable', 'food'),
('KI2035', 'Fresh Green Beans', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 895, 'Lame', 'Lame', '2023-05-25 10:35:26', '2023-08-26 16:11:03', 1, 'Accounts Payable', 'food'),
('KI2036', 'Cream Cheese Salmon', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'Deposit Holding', 'Stock Adjustment', NULL, NULL, 4195, 'Lame', 'Lame', '2023-05-25 14:47:18', '2023-05-25 14:47:18', 1, 'Accounts Payable', 'food'),
('KI2037', 'Red Cabbage', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1495, 'Lame', 'Lame', '2023-05-26 09:52:43', '2024-01-22 11:57:37', 1, 'Accounts Payable', 'food'),
('KI2038', 'Rogan Josh Curry', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1895, 'Lame', 'Lame', '2023-06-02 13:45:42', '2023-06-02 13:45:42', 1, 'Accounts Payable', 'food'),
('KI2039', 'Milk POD', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 147, 'Lame', 'Lame', '2023-05-26 16:19:09', '2023-05-26 16:19:09', 1, 'Accounts Payable', 'bar'),
('KI2040', 'Cloves', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 745, 'Lame', 'Lame', '2023-06-02 13:51:27', '2023-06-02 13:51:27', 1, 'Accounts Payable', 'food'),
('KI2041', 'Butter Bread', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1075, 'Lame', 'Lame', '2023-06-07 10:02:19', '2023-06-07 10:02:19', 1, 'Accounts Payable', 'food'),
('KI2042', 'Coconut Cream', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2025, 'Lame', 'Lame', '2023-06-08 14:29:26', '2023-06-08 14:29:26', 1, 'Accounts Payable', 'food'),
('KI2043', 'Almonds', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2952, 'Lame', 'Lame', '2023-06-12 15:25:06', '2023-06-12 15:25:06', 1, 'Accounts Payable', 'food'),
('KI2044', 'Plain Biltong', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 26459, 'Lame', 'Lame', '2023-06-13 09:58:23', '2023-06-13 09:58:23', 1, 'Accounts Payable', 'food'),
('KI2045', 'Chillie Biltong', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 21689, 'Lame', 'Lame', '2023-06-13 10:01:32', '2023-06-13 10:01:32', 1, 'Accounts Payable', 'food'),
('KI2046', 'Atchar hot', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2295, 'Lame', 'Lame', '2023-06-13 13:13:10', '2023-06-13 13:13:10', 1, 'Accounts Payable', 'food'),
('KI2047', 'Cow Peas', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3595, 'Lame', 'Lame', '2023-06-16 13:20:30', '2023-06-16 13:20:30', 1, 'Accounts Payable', 'food'),
('KI2048', 'Red Rice', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1799, 'Lame', 'Lame', '2023-06-19 08:40:12', '2023-06-19 08:40:12', 1, 'Accounts Payable', 'food'),
('KI2049', 'Portioned Salmon Fillet', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 35591, 'Lame', 'Lame', '2023-06-19 09:05:22', '2023-06-19 09:05:22', 1, 'Accounts Payable', 'food'),
('KI2050', 'Pastrami Beef', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3395, 'Lame', 'Lame', '2023-06-19 09:13:57', '2023-06-19 09:13:57', 1, 'Accounts Payable', 'food'),
('KI2051', 'Granadila', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1895, 'Lame', 'Lame', '2023-06-19 09:25:36', '2023-06-19 09:25:36', 1, 'Accounts Payable', 'food'),
('KI2052', 'Thyme', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1895, 'Lame', 'Lame', '2023-06-19 09:26:14', '2023-06-19 09:26:14', 1, 'Accounts Payable', 'food'),
('KI2053', 'Mixed Grapes', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5000, 'Lame', 'Lame', '2023-06-21 09:40:46', '2023-06-21 09:40:46', 1, 'Accounts Payable', 'food'),
('KI2054', 'Black Eye Beans', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3550, 'Lame', 'Lame', '2023-06-23 09:24:49', '2023-06-23 09:24:49', 1, 'Accounts Payable', 'food'),
('KI2055', 'Pizza Sauce', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3795, 'Lame', 'Lame', '2023-06-23 09:31:21', '2023-06-23 09:31:21', 1, 'Accounts Payable', 'food'),
('KI2056', 'Biscuits', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2880, 'Lame', 'Lame', '2023-06-23 11:06:54', '2023-06-23 11:07:28', 1, 'Accounts Payable', 'food'),
('KI2057', 'Lemon Jelly', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 665, 'Lame', 'Lame', '2023-06-23 13:57:57', '2023-06-23 13:57:57', 1, 'Accounts Payable', 'food'),
('KI2058', 'Red Apple', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4195, 'Lame', 'Lame', '2023-06-23 14:01:26', '2023-06-23 14:01:26', 1, 'Accounts Payable', 'food'),
('KI2059', 'Lemon Essence', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 795, 'Lame', 'Lame', '2023-06-26 16:43:52', '2023-06-26 16:43:52', 1, 'Accounts Payable', 'food');
INSERT INTO `stockitems` (`itemCode`, `name`, `description`, `itemType`, `unitOfMeassure`, `isActive`, `saleAcc`, `inventoryAcc`, `cogsAcc`, `adjustAcc`, `salePrice`, `actualCost`, `lastCost`, `createdBy`, `editedBy`, `createdOn`, `editedOn`, `reoderLevel`, `payableAcc`, `belongsTo`) VALUES
('KI2060', 'Papino/ Pepino', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2795, 'Lame', 'Lame', '2023-06-26 16:50:20', '2023-06-26 16:50:20', 1, 'Accounts Payable', 'food'),
('KI2061', 'Meatloaf', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'Discount', 'Stock Adjustment', NULL, NULL, 1995, 'Lame', 'Lame', '2023-06-26 16:51:55', '2023-06-26 16:51:55', 1, 'Accounts Payable', 'food'),
('KI2062', 'Grease Proof Sheet', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10868, 'Lame', 'Lame', '2023-06-30 12:18:18', '2023-06-30 12:18:18', 1, 'Accounts Payable', 'food'),
('KI2063', 'Mosutlhwane', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2636, 'Lame', 'Lame', '2023-07-01 13:20:22', '2023-07-01 13:22:29', 1, 'Accounts Payable', 'food'),
('KI2064', 'Rib Eye Steak', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 13994, 'Lame', 'Lame', '2023-07-01 13:26:43', '2023-07-01 13:26:43', 1, 'Accounts Payable', 'food'),
('KI2065', 'Caramel Cake', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 12995, 'Lame', 'Lame', '2023-07-01 13:48:05', '2023-07-01 13:48:05', 1, 'Accounts Payable', 'food'),
('KI2066', 'Whole Lamb Leg', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 11195, 'Lame', 'Lame', '2023-07-01 13:50:28', '2023-07-01 13:50:28', 1, 'Accounts Payable', 'food'),
('KI2067', 'Watercress', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-07-01 14:44:08', '2023-07-01 14:44:08', 1, 'Accounts Payable', 'food'),
('KI2068', 'Hot (spicy)Beans', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', '', NULL, NULL, NULL, 'Lame', 'Lame', '2023-07-05 12:16:40', '2023-07-05 12:16:40', 1, 'Accounts Payable', 'food'),
('KI2069', 'Chakalaka', '', 'sale', 'BOX', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-07-05 12:18:37', '2023-08-26 16:11:27', 1, 'Accounts Payable', 'food'),
('KI2070', 'Chakalaka', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1850, 'Lame', 'Lame', '2023-07-05 12:21:14', '2023-07-05 12:21:14', 1, 'Accounts Payable', 'food'),
('KI2071', 'Samp', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Staff Meals Account', NULL, NULL, 859, 'Lame', 'Lame', '2023-07-05 12:27:34', '2023-07-05 12:27:34', 1, 'Accounts Payable', 'food'),
('KI2072', 'Peach Jelly', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 665, 'Lame', 'Lame', '2023-07-06 12:34:05', '2023-07-06 12:34:05', 1, 'Accounts Payable', 'food'),
('KI2073', 'Mabele', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1020, 'Lame', 'Lame', '2023-08-03 11:46:30', '2023-08-03 11:46:30', 1, 'Accounts Payable', 'food'),
('KI2074', 'Blueberry Burst', '', 'sale', 'LT', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1895, 'Kemo', 'Kemo', '2023-08-09 09:09:31', '2023-08-09 09:09:31', 5, 'Accounts Payable', 'bar'),
('KI2076', 'BLOCK OIL', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3190, 'Kemo', 'Kemo', '2023-08-09 10:40:46', '2023-08-09 10:40:46', 5, 'Accounts Payable', 'other'),
('KI2077', 'Chourico', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4725, 'Kemo', 'Kemo', '2023-08-09 10:41:42', '2023-08-09 10:41:42', 5, 'Accounts Payable', 'food'),
('KI2078', 'Players', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 795, 'Kemo', 'Kemo', '2023-08-09 10:43:16', '2023-08-09 10:43:16', 5, 'Accounts Payable', 'other'),
('KI2079', 'Washing Powder', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1148, 'Kemo', 'Kemo', '2023-08-09 11:08:55', '2023-08-09 11:08:55', 5, 'Accounts Payable', 'other'),
('KI2080', 'TIME SQUARE GIN', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 14095, 'Lame', 'Lame', '2023-08-25 14:50:48', '2023-08-25 14:50:48', 1, 'Accounts Payable', 'bar'),
('KI2081', 'Apple Sauce', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4470, 'Lame', 'Lame', '2023-08-26 11:08:15', '2023-08-26 11:08:15', 1, 'Accounts Payable', 'food'),
('KI2082', 'CABBAGE', '', 'sale', 'BAG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7995, 'Lame', 'Lame', '2023-08-26 11:50:56', '2023-08-26 11:50:56', 1, 'Accounts Payable', 'food'),
('KI2083', 'TOFU', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6995, 'Lame', 'Lame', '2023-08-26 12:01:05', '2023-08-26 12:01:05', 1, 'Accounts Payable', 'food'),
('KI2084', 'JELLY GREENGAGE', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 650, 'Lame', 'Lame', '2023-08-26 14:53:04', '2023-08-26 14:53:50', 1, 'Accounts Payable', 'food'),
('KI2086', 'Hollandaise Sauce', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7495, 'Lame', 'Lame', '2023-08-26 16:00:11', '2023-08-26 16:00:11', 1, 'Accounts Payable', 'food'),
('KI2088', 'Butter Beans', '', 'sale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3688, 'Lame', 'Lame', '2023-08-26 16:12:30', '2023-08-26 16:12:30', 1, 'Accounts Payable', 'food'),
('KI2089', 'Chafing Dish', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 73995, 'Lame', 'Lame', '2023-08-26 16:42:18', '2023-08-26 16:42:18', 1, 'Accounts Payable', 'bar'),
('KI2090', 'Food Tray', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4195, 'Lame', 'Lame', '2023-08-28 08:47:36', '2023-08-28 08:47:36', 1, 'Accounts Payable', 'bar'),
('KI2091', 'Egg Poacher', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 18930, 'Lame', 'Lame', '2023-08-28 08:48:21', '2023-08-28 08:48:21', 1, 'Accounts Payable', 'food'),
('KI2092', 'Guava Halves', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2895, 'Lame', 'Lame', '2023-08-28 10:05:40', '2023-08-28 10:05:40', 1, 'Accounts Payable', 'food'),
('KI2093', 'Serving Spoon', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2295, 'Lame', 'Lame', '2023-08-28 10:20:47', '2023-08-28 10:20:47', 1, 'Accounts Payable', 'food'),
('KI2094', 'Maple Syrup', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2495, 'Lame', 'Lame', '2023-08-28 11:14:07', '2023-08-28 11:14:07', 1, 'Accounts Payable', 'food'),
('KI2095', 'Six Gun BBQ Spice', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2095, 'Lame', 'Lame', '2023-08-28 12:09:19', '2023-08-28 12:09:19', 1, 'Accounts Payable', 'food'),
('KI2096', 'Dredge/ salt &spice shaker', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Staff Meals Account', NULL, NULL, 9195, 'Lame', 'Lame', '2023-08-29 08:25:44', '2023-08-29 08:25:44', 1, 'Accounts Payable', 'other'),
('KI2097', 'BBQ FORK', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2495, 'Lame', 'Lame', '2023-08-29 08:30:37', '2023-08-29 08:30:37', 1, 'Accounts Payable', 'other'),
('KI2099', 'Grater', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4495, 'Lame', 'Lame', '2023-08-29 09:00:10', '2023-08-29 09:00:10', 1, 'Accounts Payable', 'food'),
('KI2100', 'Spoon/fork (spork)', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2095, 'Lame', 'Lame', '2023-08-29 09:01:25', '2023-08-29 09:01:25', 1, 'Accounts Payable', 'food'),
('KI2101', 'Dishcloth', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1895, 'Lame', 'Lame', '2023-08-29 09:05:54', '2023-08-29 09:05:54', 1, 'Accounts Payable', 'other'),
('KI2102', 'Salad Tong', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1395, 'Lame', 'Lame', '2023-08-29 09:08:43', '2023-08-29 09:08:43', 1, 'Accounts Payable', 'other'),
('KI2103', 'Brown Flour', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1056, 'Lame', 'Lame', '2023-08-29 09:20:20', '2023-08-29 09:20:20', 1, 'Accounts Payable', 'food'),
('KI2104', 'Ginger Powder', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1295, 'Lame', 'Lame', '2023-08-29 09:34:38', '2023-08-29 09:34:38', 1, 'Accounts Payable', 'food'),
('KI2105', 'BBQ Spice', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 200, 'Lame', 'Lame', '2023-08-29 12:39:10', '2023-08-29 12:39:10', 1, 'Accounts Payable', 'food'),
('KI2106', 'Chicken Gizzards', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8095, 'Lame', 'Lame', '2023-08-31 16:03:51', '2023-08-31 16:03:51', 1, 'Accounts Payable', 'food'),
('KI2107', 'Banana', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1295, 'Lame', 'Lame', '2023-08-31 16:42:32', '2023-08-31 16:42:32', 1, 'Accounts Payable', 'food'),
('KI2108', 'Tomato Paste', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 13001, 'Lame', 'Lame', '2023-09-12 09:56:31', '2023-09-12 09:56:31', 1, 'Accounts Payable', 'food'),
('KI2109', 'Coarse Salt Grinder', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2495, 'Lame', 'Lame', '2023-09-12 14:50:49', '2023-09-12 14:50:49', 1, 'Accounts Payable', 'bar'),
('KI2111', 'Napolitana Sauce', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4495, 'Lame', 'Lame', '2023-09-12 15:15:48', '2023-09-12 15:15:48', 1, 'Accounts Payable', 'food'),
('KI2112', 'Tumeric', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1995, 'Lame', 'Lame', '2023-09-14 14:25:35', '2023-09-14 14:25:35', 1, 'Accounts Payable', 'food'),
('KI2113', 'Cashew Nuts', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 15165, 'Lame', 'Lame', '2023-09-14 14:33:23', '2023-09-14 14:33:23', 1, 'Accounts Payable', 'food'),
('KI2114', 'Biryani spice', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3095, 'Lame', 'Lame', '2023-09-14 14:43:07', '2023-09-14 14:43:07', 1, 'Accounts Payable', 'food'),
('KI2115', 'Cheddar', '', 'sale', 'Gram', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10, 'Lame', 'Lame', '2023-09-15 10:21:41', '2023-09-15 10:21:41', 1, 'Accounts Payable', 'food'),
('KI2116', 'Sugar Snap Peas', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2920, 'Lame', 'Lame', '2023-09-15 11:52:57', '2023-09-15 11:52:57', 1, 'Accounts Payable', 'food'),
('KI2117', 'Mangetout Pea', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2630, 'Lame', 'Lame', '2023-09-15 11:56:15', '2023-09-15 11:56:15', 1, 'Accounts Payable', 'food'),
('KI2118', 'Cracker Mix', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4295, 'Lame', 'Lame', '2023-09-15 12:10:59', '2023-09-15 12:10:59', 1, 'Accounts Payable', 'food'),
('KI2119', 'Jalapeno', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Kitchen Revenue', NULL, NULL, 7601, 'Lame', 'Lame', '2023-09-15 12:16:42', '2023-09-15 12:16:42', 1, 'Accounts Payable', 'food'),
('KI2120', 'Fruit Rolls', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Tax', NULL, NULL, 4795, 'Lame', 'Lame', '2023-09-15 12:28:30', '2023-09-15 12:28:30', 1, 'Accounts Payable', 'food'),
('KI2121', 'Lamb Stew', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-09-15 16:27:39', '2023-09-15 16:27:39', 10, 'Accounts Payable', 'food'),
('KI2122', 'Gammon', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-09-15 16:28:54', '2023-09-15 16:28:54', 2, 'Accounts Payable', 'food'),
('KI2123', 'Egg Noodle', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6000, 'Lame', 'Lame', '2023-09-16 11:15:51', '2023-09-16 11:15:51', 1, 'Accounts Payable', 'food'),
('KI2124', 'Pizza Cutter', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-09-16 13:33:41', '2023-09-16 13:33:41', 1, 'Accounts Payable', 'food'),
('KI2125', 'Litter Bag / Trash Bag', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 99, 'Lame', 'Lame', '2023-09-16 13:47:23', '2023-09-16 13:47:23', 1, 'Accounts Payable', 'other'),
('KI2127', 'Greek salad dressing', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2595, 'Lame', 'Lame', '2023-09-16 15:46:45', '2023-09-16 15:48:20', 1, 'Accounts Payable', 'food'),
('KI2128', 'Italian Salad Dressing', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2595, 'Lame', 'Lame', '2023-09-16 15:51:30', '2023-09-16 15:51:30', 1, 'Accounts Payable', 'food'),
('KI2129', 'Chicken Spice', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4295, 'Lame', 'Lame', '2023-09-19 14:16:05', '2023-09-19 14:16:05', 1, 'Accounts Payable', 'food'),
('KI2130', 'Garlic Powder', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 725, 'Lame', 'Lame', '2023-09-19 14:46:45', '2023-09-19 14:46:45', 1, 'Accounts Payable', 'food'),
('KI2131', 'Ginger (loose)', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 430, 'Lame', 'Lame', '2023-09-19 14:49:40', '2023-09-19 14:49:40', 1, 'Accounts Payable', 'food'),
('KI2132', 'Onion Powder', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2480, 'Lame', 'Lame', '2023-09-19 14:59:03', '2023-09-19 14:59:03', 1, 'Accounts Payable', 'food'),
('KI2134', 'Canderel Sugar Sweetner', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 21, 'Lame', 'Lame', '2023-09-20 16:26:02', '2023-09-20 16:26:02', 1, 'Accounts Payable', 'food'),
('KI2135', 'Fish Spice', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1095, 'Lame', 'Lame', '2023-09-21 08:50:33', '2023-09-21 08:50:33', 1, 'Accounts Payable', 'food'),
('KI2136', 'Crushed Garlic+ Ginger', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2695, 'Lame', 'Lame', '2023-09-22 12:53:22', '2023-09-22 12:53:22', 1, 'Accounts Payable', 'food'),
('KI2137', 'Lobster', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7937, 'Lame', 'Lame', '2023-09-23 10:49:39', '2023-09-23 10:49:39', 1, 'Accounts Payable', 'food'),
('KI2138', 'Mussels', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8990, 'Lame', 'Lame', '2023-09-23 10:54:29', '2023-09-23 10:54:29', 1, 'Accounts Payable', 'food'),
('KI2139', 'Sriraja / Siracha', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5600, 'Lame', 'Lame', '2023-09-23 11:08:31', '2023-09-23 11:08:31', 1, 'Accounts Payable', 'food'),
('KI2140', 'Moroccan Mint', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 58, 'Lame', 'Lame', '2023-09-28 12:24:26', '2023-09-28 12:24:26', 1, 'Accounts Payable', 'bar'),
('KI2141', 'Portuguese Bread', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 865, 'Lame', 'Lame', '2023-09-28 14:20:32', '2023-09-28 14:20:32', 1, 'Accounts Payable', 'food'),
('KI2142', 'Red Curry Paste', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1295, 'Lame', 'Lame', '2023-09-28 14:42:49', '2023-09-28 14:42:49', 1, 'Accounts Payable', 'food'),
('KI2143', 'Orange', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 295, 'Lame', 'Lame', '2023-10-04 10:46:33', '2023-10-04 10:46:33', 1, 'Accounts Payable', 'food'),
('KI2144', 'Chutney', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5595, 'Lame', 'Lame', '2023-10-07 10:07:50', '2023-10-07 10:07:50', 1, 'Accounts Payable', 'food'),
('KI2145', 'Saffron spice', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3650, 'Lame', 'Lame', '2023-10-09 11:31:28', '2023-10-09 11:31:28', 1, 'Accounts Payable', 'food'),
('KI2146', 'Penne Pasta', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2350, 'Lame', 'Lame', '2023-10-12 16:54:35', '2023-10-12 16:54:35', 5, 'Accounts Payable', 'food'),
('KI2147', 'Gravy Container', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-10-09 12:10:46', '2023-10-09 12:10:46', 10, 'Accounts Payable', 'other'),
('KI2148', 'Pork Belly', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8895, 'Lame', 'Lame', '2023-11-10 12:20:31', '2023-11-10 12:20:31', 2, 'Accounts Payable', 'food'),
('KI2149', 'Freezer Bags', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 130, 'Lame', 'Lame', '2023-11-15 13:03:24', '2023-11-15 13:03:24', 1, 'Accounts Payable', 'other'),
('KI2150', 'Lime packet', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1995, 'Lame', 'Lame', '2023-11-16 09:01:53', '2023-11-16 09:01:53', 2, 'Accounts Payable', 'food'),
('KI2152', 'Biltong', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3557, 'Lame', 'Lame', '2023-11-27 13:20:10', '2024-01-22 11:58:13', 2, 'Accounts Payable', 'food'),
('KI2153', 'Kiri Cheese', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2695, 'Lame', 'Lame', '2023-11-27 13:26:12', '2023-11-27 13:26:12', 2, 'Accounts Payable', 'food'),
('KI2154', 'Granadilla Pulp', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1595, 'Lame', 'Lame', '2023-11-27 13:29:30', '2023-11-27 13:29:30', 1, 'Accounts Payable', 'food'),
('KI2155', 'Beef Sirloin (175g portions)', '', 'sale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 11595, 'Lame', 'Lame', '2024-01-12 10:34:56', '2024-01-12 10:36:50', 5, 'Accounts Payable', 'food'),
('KI4100', 'Roobios Tea', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 34, 'homsyadmin', 'homsyadmin', '2022-03-03 10:26:10', '2022-03-03 10:26:10', 1, 'Accounts Payable', 'bar'),
('KI4101', 'Warwick Chardonnay(750)', '', 'sale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 31785, 'Masa', 'Masa', '2022-06-17 15:06:09', '2022-06-17 15:06:09', 1, 'Accounts Payable', 'bar'),
('KI4102', 'Warwick sauvignon blanc(750)', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10470, 'Masa', 'Masa', '2022-06-17 15:07:36', '2022-06-17 15:07:36', 1, 'Accounts Payable', 'bar'),
('KI4103', 'Warwick cabernet (750ml)', '', 'sale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 11410, 'Masa', 'Masa', '2022-06-17 15:08:58', '2022-06-17 15:08:58', 1, 'Accounts Payable', 'bar'),
('OI1000', 'TEA POTS', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:33:24', '2022-03-02 17:33:55', 1, 'Accounts Payable', 'other'),
('OI1001', 'TEA CUPS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3000, 'tim', 'tim', '2022-03-02 17:34:26', '2022-03-02 17:34:26', 1, 'Accounts Payable', 'other'),
('OI1002', 'LAVAZZA COFFEE CUP ', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:35:17', '2022-03-02 17:35:17', 1, 'Accounts Payable', 'other'),
('OI1003', 'LAZAZZA ESPRESSO CUP', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'Chef', '2022-03-02 17:35:40', '2022-05-14 15:48:43', 1, 'Accounts Payable', 'other'),
('OI1004', 'MILK JUGS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 28495, 'tim', 'tim', '2022-03-02 17:35:59', '2022-03-02 17:35:59', 1, 'Accounts Payable', 'other'),
('OI1005', 'LAVAZZA LATTE CUPS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:36:22', '2022-03-02 17:36:22', 1, 'Accounts Payable', 'other'),
('OI1006', 'LATTE CUPS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:36:54', '2022-03-02 17:36:54', 1, 'Accounts Payable', 'other'),
('OI1007', 'SILVER ICE BUCKETS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:37:16', '2022-03-02 17:37:16', 1, 'Accounts Payable', 'other'),
('OI1008', 'CORONA ICE BUCKETS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:37:41', '2022-03-02 17:37:41', 1, 'Accounts Payable', 'other'),
('OI1009', 'HEINEKEN ICE BUCKETS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:38:04', '2022-03-02 17:38:04', 1, 'Accounts Payable', 'other'),
('OI1010', 'HUNTERS DRY ICE BUCKETS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:38:41', '2022-03-02 17:38:41', 1, 'Accounts Payable', 'other'),
('OI1011', 'MARTIN GLASSE', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:39:06', '2022-03-02 17:39:06', 1, 'Accounts Payable', 'other'),
('OI1012', 'MOJITO GLASS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 92, 'tim', 'tim', '2022-03-02 17:39:27', '2022-03-02 17:39:27', 1, 'Accounts Payable', 'other'),
('OI1013', 'GIN GLASS ', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:40:17', '2022-03-02 17:40:17', 1, 'Accounts Payable', 'other'),
('OI1014', 'SMALL WATER GLASSES', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 695, 'tim', 'tim', '2022-03-02 17:40:51', '2022-03-02 17:40:51', 1, 'Accounts Payable', 'other'),
('OI1015', 'BIG WATER GLASSES', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:41:20', '2022-03-02 17:41:20', 1, 'Accounts Payable', 'other'),
('OI1016', 'BEER GLASSES', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:41:49', '2022-03-02 17:41:49', 1, 'Accounts Payable', 'other'),
('OI1017', 'HURRICANE GLASSES', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:42:24', '2022-03-02 17:42:24', 1, 'Accounts Payable', 'other'),
('OI1018', 'WHISKEY GLASSES', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1333, 'tim', 'tim', '2022-03-02 17:42:48', '2022-03-02 17:42:48', 1, 'Accounts Payable', 'other'),
('OI1019', 'RED WINE GLASSES', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:43:08', '2022-03-02 17:43:08', 1, 'Accounts Payable', 'other'),
('OI1020', 'WHITE WINE GLASSES', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:43:32', '2022-03-02 17:43:32', 1, 'Accounts Payable', 'other'),
('OI1021', 'SAUCER (WHITE)', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-03-02 17:44:02', '2022-03-02 17:44:02', 1, 'Accounts Payable', 'other'),
('OI1022', 'SUGAR POTS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'tim', 'tim', '2022-03-02 17:44:34', '2022-03-02 17:44:34', 1, 'Accounts Payable', 'other'),
('OI1023', 'BIG SPOONS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 700, 'tim', 'tim', '2022-03-02 17:45:04', '2022-03-02 17:45:04', 1, 'Accounts Payable', 'other'),
('OI1024', 'DESSERT SPOONS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:45:31', '2022-03-02 17:45:31', 1, 'Accounts Payable', 'other'),
('OI1025', 'TEA SPOONS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 916, 'tim', 'tim', '2022-03-02 17:45:59', '2022-03-02 17:45:59', 1, 'Accounts Payable', 'other'),
('OI1026', 'TABLE KNIVES', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4800, 'tim', 'tim', '2022-03-02 17:46:26', '2022-03-02 17:46:26', 1, 'Accounts Payable', 'other'),
('OI1027', 'STEAK KNIVES', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3500, 'tim', 'tim', '2022-03-02 17:46:46', '2022-03-02 17:46:46', 1, 'Accounts Payable', 'other'),
('OI1028', 'FORKS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 600, 'tim', 'tim', '2022-03-02 17:47:18', '2022-03-02 17:47:18', 1, 'Accounts Payable', 'other'),
('OI1029', 'SIDE PLATES BLACK', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:47:45', '2022-03-02 17:47:45', 1, 'Accounts Payable', 'other'),
('OI1030', 'SAUCER ', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:50:32', '2022-03-02 17:50:32', 1, 'Accounts Payable', 'other'),
('OI1031', 'DINNER PLATES BLACK', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:51:09', '2022-03-02 17:51:09', 1, 'Accounts Payable', 'other'),
('OI1032', 'TANGIN BOWL LARGE', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:51:48', '2022-03-02 17:51:48', 1, 'Accounts Payable', 'other'),
('OI1033', 'TANGIN BOWL MEDIUM', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3495, 'tim', 'tim', '2022-03-02 17:52:12', '2022-03-02 17:52:12', 1, 'Accounts Payable', 'other'),
('OI1034', 'TANGIN BOWL SMALL ', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:52:42', '2022-03-02 17:52:42', 1, 'Accounts Payable', 'other'),
('OI1035', 'SAUCE BOWL', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1295, 'tim', 'tim', '2022-03-02 17:53:05', '2022-03-02 17:53:05', 1, 'Accounts Payable', 'other'),
('OI1036', 'DESSERT BOWL', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3495, 'tim', 'tim', '2022-03-02 17:53:33', '2022-03-02 17:53:33', 1, 'Accounts Payable', 'other'),
('OI1037', 'WHITE DINNER PLATE', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3995, 'tim', 'tim', '2022-03-02 17:53:57', '2022-03-02 17:53:57', 1, 'Accounts Payable', 'other'),
('OI1038', 'WHITE TONGS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2375, 'tim', 'tim', '2022-03-02 17:54:40', '2022-03-02 17:54:40', 1, 'Accounts Payable', 'other'),
('OI1039', 'WOODEN SPOOM', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 0, 'tim', 'tim', '2022-03-02 17:55:06', '2022-03-02 17:55:06', 1, 'Accounts Payable', 'other'),
('OI1040', 'A4 PLAIN PAPERS', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7495, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-07 14:55:50', '2022-03-07 14:55:50', 1, 'Accounts Payable', 'other'),
('OI1041', 'SAUCE BOTTLE', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1650, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 19:16:39', '2022-03-10 19:16:39', 1, 'Accounts Payable', 'other'),
('OI1042', 'CONDIMENT SET', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 9495, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 19:17:23', '2022-03-10 19:17:23', 1, 'Accounts Payable', 'other'),
('OI1043', 'CONSOL JAR', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1195, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 19:18:03', '2022-03-10 19:18:03', 1, 'Accounts Payable', 'other'),
('OI1044', 'GLASS CARAFE', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1895, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 19:18:35', '2022-03-10 19:18:35', 1, 'Accounts Payable', 'other'),
('OI1045', 'PASTE LAVENDER', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8095, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 19:19:49', '2022-03-10 19:19:49', 1, 'Accounts Payable', 'other'),
('OI1046', 'T TISSUE', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3695, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 19:22:28', '2022-03-10 19:22:28', 1, 'Accounts Payable', 'other'),
('OI1047', 'FOIL CONTAINERS + LID', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4368, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 19:23:38', '2022-03-10 19:23:38', 1, 'Accounts Payable', 'other'),
('OI1048', 'COFFEE CUP', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 210, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 19:24:51', '2022-03-10 19:24:51', 1, 'Accounts Payable', 'other'),
('OI1049', 'COFFEE CUP LID', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 94, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 19:25:27', '2022-03-10 19:25:27', 1, 'Accounts Payable', 'other'),
('OI1050', 'CORK COASTER', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4999, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 19:26:22', '2022-03-10 19:26:22', 1, 'Accounts Payable', 'other'),
('OI1051', 'ZIG ZAG CRATE ', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 12999, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 19:27:02', '2022-03-10 19:27:02', 1, 'Accounts Payable', 'other'),
('OI1052', 'GAS', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 126000, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-10 19:30:27', '2022-03-10 19:30:27', 1, 'Accounts Payable', 'other'),
('OI1053', 'FOMO CUP', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2596, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-11 18:27:04', '2022-03-11 18:27:04', 1, 'Accounts Payable', 'other'),
('OI1054', 'PIZZA BOX', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 112, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-11 18:27:37', '2022-03-11 18:27:37', 1, 'Accounts Payable', 'other'),
('OI1055', 'LUNCH BOX', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 140, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-11 18:28:05', '2022-03-11 18:28:05', 1, 'Accounts Payable', 'other'),
('OI1056', 'BEER GLASSES FUN', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1595, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-11 18:28:53', '2022-03-11 18:28:53', 1, 'Accounts Payable', 'other'),
('OI1057', 'PRECISION MEASURING JAR', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1695, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-11 18:30:14', '2022-03-11 18:30:14', 1, 'Accounts Payable', 'other'),
('OI1058', 'FILE ACCESSIBLE', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2565, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-11 18:31:53', '2022-03-11 18:31:53', 1, 'Accounts Payable', 'other'),
('OI1059', 'BAGS ICE POP CLEAR', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10597, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-11 19:35:56', '2022-03-11 19:35:56', 1, 'Accounts Payable', 'other'),
('OI1060', 'AIR FRESHNER', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1450, 'Tlamelo Mogale', 'Lame', '2022-03-11 19:40:27', '2023-02-21 13:26:44', 1, 'Accounts Payable', 'other'),
('OI1061', 'LION MATCHES', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 495, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-11 19:45:22', '2022-03-11 19:45:22', 1, 'Accounts Payable', 'other'),
('OI1062', 'SPAR MATCHES', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 37, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-11 19:45:48', '2022-03-11 19:45:48', 1, 'Accounts Payable', 'other'),
('OI1063', 'CURVED DINNER PLATE', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-11 20:10:51', '2022-03-11 20:10:51', 1, 'Accounts Payable', 'other'),
('OI1064', 'HANDY ANDY CLEANER', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1895, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-15 14:04:29', '2022-03-15 14:04:29', 1, 'Accounts Payable', 'other'),
('OI1065', 'BLEACH', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2150, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-15 14:05:05', '2022-03-15 14:05:05', 1, 'Accounts Payable', 'other'),
('OI1066', 'SUNLIGHT DISH WASH LIQ', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3193, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-15 14:05:55', '2022-03-15 14:05:55', 1, 'Accounts Payable', 'other'),
('OI1067', 'SCOURER', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 508, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-15 19:36:00', '2022-03-15 19:36:00', 1, 'Accounts Payable', 'other'),
('OI1068', 'WHIP/LISS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 7195, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-15 19:36:48', '2022-03-15 19:36:48', 1, 'Accounts Payable', 'other'),
('OI1069', 'STRAWS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-15 19:37:41', '2022-03-15 19:37:41', 1, 'Accounts Payable', 'other'),
('OI1070', 'SUPA WIPES', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 9465, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-03-15 19:39:09', '2022-03-15 19:39:09', 1, 'Accounts Payable', 'other'),
('OI1071', 'TOILET PAPER', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 499, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 17:09:20', '2022-04-29 17:09:20', 1, 'Accounts Payable', 'other'),
('OI1072', 'WRAP', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 42795, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 17:10:05', '2022-04-29 17:10:05', 1, 'Accounts Payable', 'other'),
('OI1073', 'EMPAGEIN VITAFILM', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 42795, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 17:10:38', '2022-04-29 17:10:38', 1, 'Accounts Payable', 'other'),
('OI1074', 'FOIL', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1975, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 17:10:59', '2022-04-29 17:10:59', 1, 'Accounts Payable', 'other'),
('OI1075', 'MW FORKS WHITE', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2650, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 17:11:33', '2022-04-29 17:11:33', 1, 'Accounts Payable', 'other'),
('OI1076', 'MW TOOTH PICKS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 17:12:34', '2022-04-29 17:12:34', 1, 'Accounts Payable', 'other'),
('OI1077', 'FOAM CUPS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 625, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 17:13:09', '2022-04-29 17:13:09', 1, 'Accounts Payable', 'other'),
('OI1078', 'PLASTIC SPOON', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3475, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 17:13:32', '2022-04-29 17:13:32', 1, 'Accounts Payable', 'other'),
('OI1079', 'MUTTON CLOTH', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 640, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 17:13:54', '2022-04-29 17:13:54', 1, 'Accounts Payable', 'other'),
('OI1080', 'REFUSE BAGS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 60, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 17:14:16', '2022-04-29 17:14:16', 1, 'Accounts Payable', 'other'),
('OI1081', 'PAPER TOWEL ROLL ', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 9295, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 17:54:08', '2022-04-29 17:54:08', 1, 'Accounts Payable', 'other'),
('OI1082', 'MOP CAPS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4995, 'Tlamelo Mogale', 'Lame', '2022-04-29 18:27:26', '2023-05-25 12:52:29', 1, 'Accounts Payable', 'other'),
('OI1083', 'DISPOSABLE APRONS', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5930, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 18:28:06', '2022-04-29 18:28:06', 1, 'Accounts Payable', 'other'),
('OI1084', 'REFRESHER TOWELS', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 51, 'Tlamelo Mogale', 'Tlamelo Mogale', '2022-04-29 18:39:08', '2022-04-29 18:39:08', 1, 'Accounts Payable', 'other'),
('OI1085', 'BAKING PAPER', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2195, 'Masa', 'Masa', '2022-06-22 11:55:23', '2022-06-22 11:55:23', 1, 'Accounts Payable', 'other'),
('OI1086', 'SPIRIT GEL', 'CHAFING GEL', 'noSale', 'KG', 0, NULL, 'Inventory', 'Inventory', 'Inventory', NULL, NULL, 3039, 'Lame', 'Lame', '2023-02-07 13:09:31', '2023-02-07 13:10:02', 1, 'Inventory', 'other'),
('OI1087', 'ICE BAGS', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6695, 'Lame', 'Lame', '2023-02-08 16:07:17', '2023-02-08 16:07:17', 1, 'Inventory', 'bar'),
('OI1088', 'WIPES', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'Deposit Holding', 'Stock Adjustment', NULL, NULL, 9295, 'Lame', 'Lame', '2023-02-14 13:30:03', '2023-02-14 13:30:03', 1, 'Accounts Payable', 'other'),
('OI1089', 'Individually Wrapped TOOTHPICKS', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3813, 'Lame', 'Lame', '2023-02-14 14:21:28', '2023-02-14 14:21:28', 1, 'Accounts Payable', 'other'),
('OI1090', 'BIODEGRADABLE  PLAIN CONTAINER', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 27, 'Lame', 'Lame', '2023-02-14 16:03:17', '2023-02-14 16:03:17', 50, 'Accounts Payable', 'other'),
('OI1091', 'PAPER SERVIETTES 1000S', '', 'noSale', 'BOX', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 19595, 'Lame', 'Lame', '2023-02-15 09:20:46', '2023-02-15 09:20:46', 1, 'Accounts Payable', 'other'),
('OI1092', 'CLEAR PACKAGING TUBS', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 79, 'Lame', 'Lame', '2023-02-15 10:05:45', '2023-04-13 14:12:41', 1, 'Accounts Payable', 'food'),
('OI1093', 'CLEAR PACKAGING TUB-LIDS', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 47, 'Lame', 'Lame', '2023-02-15 10:07:39', '2023-04-13 14:08:44', 1, 'Accounts Payable', 'other'),
('OI1094', 'BROWN PAPER BAGS', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 30146, 'Lame', 'Lame', '2023-02-15 10:13:49', '2023-03-01 09:23:39', 1, 'Accounts Payable', 'other'),
('OI1095', 'CLEANING DEO BLOCKS', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2150, 'Lame', 'Lame', '2023-02-15 11:43:42', '2023-02-15 11:43:42', 1, 'Accounts Payable', 'other'),
('OI1096', 'BALLOON', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2417, 'Lame', 'Lame', '2023-02-16 14:22:48', '2023-02-16 14:22:48', 1, 'Accounts Payable', 'other'),
('OI1097', 'COUNTER BOOK', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1595, 'Lame', 'Lame', '2023-02-16 14:27:15', '2023-02-16 14:27:15', 1, 'Accounts Payable', 'other'),
('OI1098', 'Clamshell Bagase', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 760, 'Lame', 'Lame', '2023-02-24 08:46:39', '2023-02-24 08:46:39', 25, 'Accounts Payable', 'other'),
('OI1099', 'CLING WRAP', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 42795, 'Lame', 'Lame', '2023-02-21 14:04:26', '2023-02-21 14:04:26', 1, 'Accounts Payable', 'other'),
('OI1100', 'FOMO PACK', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 68, 'Lame', 'Lame', '2023-02-21 14:31:24', '2023-02-21 14:31:24', 30, 'Accounts Payable', 'other'),
('OI1101', 'Hot Cup\\ Earth Cup 350ml', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 194, 'Lame', 'Lame', '2023-02-24 08:48:21', '2023-02-24 08:48:21', 25, 'Accounts Payable', 'other'),
('OI1102', 'Power Light Film', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 36892, 'Lame', 'Lame', '2023-02-24 08:53:38', '2023-02-24 08:53:38', 1, 'Accounts Payable', 'other'),
('OI1103', 'Chopsticks', '', 'noSale', 'Packet', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4898, 'Lame', 'Lame', '2023-03-01 09:56:01', '2023-03-01 09:56:01', 1, 'Accounts Payable', 'food'),
('OI1104', 'Peaceful Sleep | Insect Spray', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6750, 'Lame', 'Lame', '2023-03-07 13:33:55', '2023-03-07 13:33:55', 1, 'Accounts Payable', 'other'),
('OI1105', 'Popsickle \\ Ice Cream Stick', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1320, 'Lame', 'Lame', '2023-03-25 11:33:44', '2023-03-25 11:34:15', 10, 'Accounts Payable', 'other'),
('OI1106', 'Pine Gel', '', 'noSale', 'KG', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1925, 'Lame', 'Lame', '2023-03-28 12:31:53', '2023-06-07 12:39:42', 1, 'Accounts Payable', 'other'),
('OI1107', 'Mr Min Furniture Polish', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2750, 'Lame', 'Lame', '2023-03-28 12:34:49', '2023-03-28 12:34:49', 1, 'Accounts Payable', 'other'),
('OI1108', 'Cake Box', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 295, 'Lame', 'Lame', '2023-03-30 09:12:06', '2023-03-30 09:12:06', 1, 'Accounts Payable', 'bar'),
('OI1109', 'Odourless Insect Spray', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2845, 'Lame', 'Lame', '2023-04-24 11:41:25', '2023-04-24 11:41:25', 1, 'Accounts Payable', 'other'),
('OI1110', 'Storage Container', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 33500, 'Lame', 'Lame', '2023-04-24 13:54:00', '2023-04-24 13:54:00', 1, 'Accounts Payable', 'other'),
('OI1111', 'Vegetable Peeler', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1395, 'Lame', 'Lame', '2023-04-24 13:57:31', '2023-04-24 13:57:31', 1, 'Accounts Payable', 'food'),
('OI1113', 'TRAY', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', '', NULL, NULL, 11000, 'Lame', 'Lame', '2023-04-24 16:07:54', '2023-04-24 16:07:54', 1, 'Accounts Payable', 'other'),
('OI1114', 'MEAT KNIFE', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3354, 'Lame', 'Lame', '2023-04-24 16:10:37', '2023-04-24 16:10:37', 1, 'Accounts Payable', 'food'),
('OI1115', 'Kitchen Knife', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5200, 'Lame', 'Lame', '2023-04-26 10:26:04', '2023-04-26 10:26:04', 1, 'Accounts Payable', 'food'),
('OI1116', 'Cutlery Set', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 22858, 'Lame', 'Lame', '2023-04-27 14:16:53', '2023-04-27 14:16:53', 1, 'Accounts Payable', 'other'),
('OI1118', 'Spray Paint', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2900, 'Lame', 'Lame', '2023-04-28 15:47:31', '2023-04-28 15:47:31', 1, 'Accounts Payable', 'other'),
('OI1119', 'Side Plate (6 inch)', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 700, 'Lame', 'Lame', '2023-05-13 10:45:05', '2023-05-13 10:45:05', 1, 'Accounts Payable', 'other'),
('OI1120', 'Dust Bin', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 8140, 'Lame', 'Lame', '2023-05-15 13:04:02', '2023-05-15 13:04:02', 1, 'Accounts Payable', 'other'),
('OI1121', 'Bamboo Tray', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5495, 'Lame', 'Lame', '2023-05-22 09:32:03', '2023-05-22 09:32:03', 1, 'Accounts Payable', 'other'),
('OI1123', 'Mop', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 3595, 'Lame', 'Lame', '2023-05-25 12:53:18', '2023-05-25 12:53:18', 1, 'Accounts Payable', 'other'),
('OI1124', 'SMALL Wooden Tea Box ', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 9541, 'Lame', 'Lame', '2023-06-02 13:33:22', '2023-06-02 13:33:22', 1, 'Accounts Payable', 'other'),
('OI1125', 'LARGE Wooden Tea Box', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 16073, 'Lame', 'Lame', '2023-06-02 13:33:56', '2023-06-02 13:33:56', 1, 'Accounts Payable', 'other'),
('OI1126', 'Lamp Chimney', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1795, 'Lame', 'Lame', '2023-06-02 13:35:24', '2023-06-02 13:35:24', 1, 'Accounts Payable', 'other'),
('OI1127', 'Lamp Base', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2495, 'Lame', 'Lame', '2023-06-02 13:36:44', '2023-06-02 13:36:44', 1, 'Accounts Payable', 'other'),
('OI1128', 'Oil Bottle', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4845, 'Lame', 'Lame', '2023-06-02 13:37:44', '2023-06-02 13:37:44', 1, 'Accounts Payable', 'other'),
('OI1129', 'Vinegar Bottle', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2035, 'Lame', 'Lame', '2023-06-02 13:38:25', '2023-06-02 13:38:25', 1, 'Accounts Payable', 'other'),
('OI1130', 'Latex Yellow Gloves', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 595, 'Lame', 'Lame', '2023-06-07 12:47:32', '2023-06-07 12:48:51', 1, 'Accounts Payable', 'other'),
('OI1131', 'Small Fomo Pack', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 32, 'Lame', 'Lame', '2023-06-21 09:09:05', '2023-06-21 09:09:05', 1, 'Accounts Payable', 'other'),
('OI1132', 'Shower Hand', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 9500, 'Kemo', 'Kemo', '2023-08-10 11:33:00', '2023-08-10 11:33:00', 5, 'Accounts Payable', 'other'),
('OI1133', 'Basin Mixer', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 34175, 'Kemo', 'Kemo', '2023-08-10 11:33:54', '2023-08-10 11:33:54', 4, 'Accounts Payable', 'other'),
('OI1134', 'Disposable Gloves', '', 'noSale', 'Packet', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 9495, 'Kemo', 'Kemo', '2023-08-10 11:36:37', '2023-08-10 11:36:37', 5, 'Accounts Payable', 'other'),
('OI1135', 'Tape Clear', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1895, 'Kemo', 'Kemo', '2023-08-10 11:37:43', '2023-08-10 11:37:43', 5, 'Accounts Payable', 'other'),
('OI1136', 'Electricity', '', 'noSale', 'kwh', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 186, 'Kemo', 'Kemo', '2023-08-11 08:29:46', '2023-08-11 08:29:46', 5, 'Accounts Payable', 'other'),
('OI1137', 'Petrol', '', 'noSale', 'LT', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1426, 'Kemo', 'Kemo', '2023-08-11 08:31:38', '2023-08-11 08:31:38', 5, 'Accounts Payable', 'other'),
('OI1138', 'Airtime', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10000, 'Kemo', 'Kemo', '2023-08-11 08:38:04', '2023-08-11 08:38:04', 1, 'Accounts Payable', 'other'),
('OI1139', 'Paint Brush', '', 'noSale', 'Each', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 5000, 'Kemo', 'Kemo', '2023-08-11 08:38:57', '2023-08-11 08:38:57', 2, 'Accounts Payable', 'other'),
('OI1140', 'TILL ROLL', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1280, 'Kemo', 'Kemo', '2023-08-12 11:01:54', '2023-08-12 11:01:54', 5, 'Accounts Payable', 'other'),
('OI1141', 'Tropical Munch', '', 'noSale', 'KG', 1, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 10197, 'Kemo', 'Kemo', '2023-08-12 11:03:11', '2023-08-12 11:03:11', 5, 'Accounts Payable', 'food'),
('OI1142', 'Steel Basin', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6611, 'Lame', 'Lame', '2023-08-28 09:43:26', '2023-08-28 09:43:26', 1, 'Accounts Payable', 'other');
INSERT INTO `stockitems` (`itemCode`, `name`, `description`, `itemType`, `unitOfMeassure`, `isActive`, `saleAcc`, `inventoryAcc`, `cogsAcc`, `adjustAcc`, `salePrice`, `actualCost`, `lastCost`, `createdBy`, `editedBy`, `createdOn`, `editedOn`, `reoderLevel`, `payableAcc`, `belongsTo`) VALUES
('OI1143', 'TUB AND LID', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 140, 'Lame', 'Lame', '2023-08-28 09:48:55', '2023-08-28 09:48:55', 1, 'Accounts Payable', 'food'),
('OI1144', 'Frying Pan', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 16748, 'Lame', 'Lame', '2023-08-28 10:12:54', '2023-08-28 10:12:54', 1, 'Accounts Payable', 'food'),
('OI1145', 'Kitchen Sponge', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 1495, 'Lame', 'Lame', '2023-09-07 09:21:44', '2023-09-07 09:21:44', 1, 'Accounts Payable', 'other'),
('OI1146', 'Windolene', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, NULL, 'Lame', 'Lame', '2023-09-12 15:23:23', '2023-09-12 15:23:23', 1, 'Accounts Payable', 'other'),
('OI116', 'Paint thinner', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 4800, 'Lame', 'Lame', '2023-04-28 15:46:39', '2023-04-28 15:46:39', 1, 'Accounts Payable', 'other'),
('OI198', 'HAND WASH', '', 'noSale', 'BOTTLE', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 2495, 'Lame', 'Lame', '2023-02-21 13:30:10', '2023-02-21 13:30:10', 3, 'Accounts Payable', 'other'),
('QI1145', 'BROOM', '', 'noSale', 'Each', 0, NULL, 'Inventory', 'COGS', 'Stock Adjustment', NULL, NULL, 6295, 'Kemo', 'Kemo', '2023-09-18 12:22:27', '2023-09-18 12:22:27', 5, 'Accounts Payable', 'other');

-- --------------------------------------------------------

--
-- Table structure for table `stockitemsunitcost`
--

CREATE TABLE `stockitemsunitcost` (
  `stockItemCode` varchar(10) NOT NULL,
  `locationID` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `stockitemsunitcost`
--

INSERT INTO `stockitemsunitcost` (`stockItemCode`, `locationID`, `cost`, `createdOn`, `createdBy`) VALUES
('', 1, 2083, '2025-09-25 09:59:53', 'homsyadmin');

-- --------------------------------------------------------

--
-- Table structure for table `stocklocation`
--

CREATE TABLE `stocklocation` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `stocklocation`
--

INSERT INTO `stocklocation` (`id`, `name`) VALUES
(1, 'Main Store'),
(2, 'Kitchen'),
(3, 'Bar');

-- --------------------------------------------------------

--
-- Table structure for table `stockmoves`
--

CREATE TABLE `stockmoves` (
  `transID` int(11) NOT NULL,
  `itemID` int(11) DEFAULT NULL,
  `itemCode` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `moveType` varchar(10) DEFAULT NULL,
  `transDate` date DEFAULT NULL,
  `reference` text DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime DEFAULT NULL,
  `location` int(11) DEFAULT NULL,
  `saleID` int(11) DEFAULT NULL,
  `poID` int(11) DEFAULT NULL,
  `receivedItemID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocktake`
--

CREATE TABLE `stocktake` (
  `stockTakeID` int(11) NOT NULL,
  `takenOn` date DEFAULT NULL,
  `createdBy` varchar(16) DEFAULT NULL,
  `isComplete` tinyint(1) DEFAULT 0,
  `createdOn` datetime DEFAULT NULL,
  `belongsTo` varchar(10) DEFAULT 'food',
  `location` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `isOpenningStock` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocktakeitems`
--

CREATE TABLE `stocktakeitems` (
  `stockTakeID` int(11) NOT NULL,
  `itemCode` varchar(10) NOT NULL,
  `qty` double DEFAULT NULL,
  `prevAmount` int(11) DEFAULT NULL,
  `currAmount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocktype`
--

CREATE TABLE `stocktype` (
  `code` varchar(10) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `stocktype`
--

INSERT INTO `stocktype` (`code`, `name`, `createdBy`, `editedBy`, `createdOn`, `editedOn`) VALUES
('noSale', 'Not sold', 'homsyadmin', NULL, '2021-01-08 15:25:00', NULL),
('sale', 'Can be sold', 'homsyadmin', NULL, '2021-01-08 15:25:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `code` varchar(10) NOT NULL,
  `ourCustomerID` varchar(64) DEFAULT NULL,
  `contactName` varchar(32) DEFAULT NULL,
  `creditLimit` int(11) DEFAULT NULL,
  `mailAddress` varchar(255) DEFAULT NULL,
  `mobile` varchar(16) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `country` varchar(256) DEFAULT NULL,
  `address1` varchar(128) DEFAULT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `supplierName` varchar(64) DEFAULT NULL,
  `isTaxable` tinyint(1) DEFAULT 0,
  `payTerms` int(11) DEFAULT NULL,
  `purchaseAcc` varchar(40) DEFAULT NULL,
  `purchaseDiscAcc` varchar(40) DEFAULT NULL,
  `discount` double DEFAULT 0,
  `status` varchar(6) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime DEFAULT NULL,
  `payableAcc` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tablelocation`
--

CREATE TABLE `tablelocation` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tablelocation`
--

INSERT INTO `tablelocation` (`id`, `name`, `sortOrder`, `isActive`) VALUES
(6, 'Inside', NULL, 1),
(7, 'Outside', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `tableID` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `location` varchar(128) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT 1,
  `locationID` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`tableID`, `name`, `location`, `createdBy`, `editedBy`, `createdOn`, `editedOn`, `isActive`, `locationID`) VALUES
(106, 'TABLE 1', NULL, 'homsyadmin', 'homsyadmin', '2022-03-05 09:59:09', '2022-03-05 09:59:09', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `tagID` varchar(10) DEFAULT NULL,
  `saleID` int(11) NOT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `code` varchar(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `isCompound` tinyint(1) DEFAULT NULL,
  `isPercent` tinyint(1) DEFAULT NULL,
  `sortOrder` int(11) DEFAULT 128,
  `isActive` tinyint(1) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL,
  `department` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`code`, `name`, `isCompound`, `isPercent`, `sortOrder`, `isActive`, `createdBy`, `editedBy`, `createdOn`, `editedOn`, `department`) VALUES
('VAT', 'VAT', 0, 1, 1, 1, 'homsyadmin', 'homsyadmin', '2025-11-25 11:44:54', '2025-11-25 11:44:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taxrate`
--

CREATE TABLE `taxrate` (
  `code` varchar(10) NOT NULL,
  `rate` decimal(10,2) DEFAULT 0.00,
  `fromDate` date NOT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `taxrate`
--

INSERT INTO `taxrate` (`code`, `rate`, `fromDate`, `createdBy`, `editedBy`, `createdOn`, `editedOn`) VALUES
('VAT', 14.00, '2025-11-25', 'homsyadmin', 'homsyadmin', '2025-11-25 12:17:09', '2025-11-25 12:17:09');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `saleID` int(11) NOT NULL,
  `ticketID` int(11) NOT NULL,
  `openingTime` time DEFAULT NULL,
  `submitted` tinyint(1) DEFAULT 0,
  `createdBy` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unitofmeassure`
--

CREATE TABLE `unitofmeassure` (
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `unitofmeassure`
--

INSERT INTO `unitofmeassure` (`name`) VALUES
('3KG CAN'),
('BAG'),
('BOTTLE'),
('BOX'),
('Each'),
('GLASS'),
('Gram'),
('KG'),
('kwh'),
('LT'),
('ML'),
('Packet'),
('Portions'),
('TIN/CAN'),
('TOT'),
('TUB');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` varchar(16) NOT NULL,
  `password` varchar(256) DEFAULT NULL,
  `firstName` varchar(32) DEFAULT NULL,
  `lastName` varchar(32) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `password`, `firstName`, `lastName`, `role`, `phone`, `mobile`, `email`, `status`, `createdBy`, `editedBy`, `createdOn`, `editedOn`) VALUES
('homsyadmin', 'kiBxNf3C74/WQ', 'Homsy', 'Admin', 'ADMIN', '', '', '', 1, 'homsyadmin', 'homsyadmin', '2015-01-02 14:02:30', '2024-01-22 13:10:14'),
('Test', 'ki63LYHa34Fj6', 'Test', 'Test', 'OWNER', '1234', '1234', '', 1, 'homsyadmin', 'homsyadmin', '2022-03-04 20:39:15', '2025-11-26 16:27:50');

-- --------------------------------------------------------

--
-- Table structure for table `useriprestrict`
--

CREATE TABLE `useriprestrict` (
  `userID` varchar(16) NOT NULL DEFAULT '',
  `ip` varchar(11) NOT NULL DEFAULT '',
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) NOT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermission`
--

CREATE TABLE `userpermission` (
  `userID` varchar(16) NOT NULL DEFAULT '',
  `permissionID` int(11) NOT NULL DEFAULT 0,
  `createdBy` varchar(16) NOT NULL,
  `editedBy` varchar(16) DEFAULT NULL,
  `createdOn` datetime NOT NULL,
  `editedOn` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `userpermission`
--

INSERT INTO `userpermission` (`userID`, `permissionID`, `createdBy`, `editedBy`, `createdOn`, `editedOn`) VALUES
('homsyadmin', 500, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 600, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 1000, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 1005, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 6005, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 7000, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 7105, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 7110, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 7115, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 7120, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 7305, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 7310, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 7315, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 7320, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 7325, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 7330, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 7335, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 7340, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 7345, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 7405, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 7410, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 7415, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 7420, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 7505, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 7510, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 9000, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 10000, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 10005, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 10010, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 10015, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 10020, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 10025, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 10030, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 10035, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 10040, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 10100, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 10200, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 10305, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 10310, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 10400, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 10500, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 10505, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 10600, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 10800, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('homsyadmin', 10805, 'homsyadmin', 'homsyadmin', '2024-01-22 13:10:14', '2024-01-22 13:10:14'),
('Test', 500, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 600, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 1000, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 1005, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 6005, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 7000, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 7105, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 7110, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 7115, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 7120, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 7305, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 7310, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 7315, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 7320, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 7325, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 7330, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 7335, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 7340, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 7345, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 7405, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 7410, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 7415, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 7420, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 7505, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 7510, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 9000, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 10000, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 10010, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 10015, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 10020, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 10025, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 10030, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 10035, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 10040, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 10100, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 10200, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 10305, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 10310, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 10400, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 10500, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50'),
('Test', 10505, 'homsyadmin', 'homsyadmin', '2025-11-26 16:27:50', '2025-11-26 16:27:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `accounttype`
--
ALTER TABLE `accounttype`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `advertimage`
--
ALTER TABLE `advertimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignedglaccounts`
--
ALTER TABLE `assignedglaccounts`
  ADD PRIMARY KEY (`itemCode`),
  ADD KEY `customerDebitAcc` (`customerDebitAcc`),
  ADD KEY `customerCreditAcc` (`customerCreditAcc`),
  ADD KEY `cityDebitAcc` (`cityDebitAcc`),
  ADD KEY `cityCreditAcc` (`cityCreditAcc`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `buffet`
--
ALTER TABLE `buffet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dayID` (`dayID`);

--
-- Indexes for table `buffetitem`
--
ALTER TABLE `buffetitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buffetID` (`buffetID`),
  ADD KEY `stockItemCode` (`stockItemCode`),
  ADD KEY `locationID` (`locationID`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`cardNumber`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `cityinvoice`
--
ALTER TABLE `cityinvoice`
  ADD PRIMARY KEY (`invoiceID`),
  ADD KEY `cityAcc` (`cityAcc`);

--
-- Indexes for table `cityinvoicesaleitem`
--
ALTER TABLE `cityinvoicesaleitem`
  ADD PRIMARY KEY (`itemID`,`invoiceID`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `cityinvoicesaleitemtax`
--
ALTER TABLE `cityinvoicesaleitemtax`
  ADD PRIMARY KEY (`itemID`,`invoiceID`,`taxCode`),
  ADD KEY `taxCode` (`taxCode`),
  ADD KEY `invoiceID` (`invoiceID`);

--
-- Indexes for table `cityitemcodeprice`
--
ALTER TABLE `cityitemcodeprice`
  ADD PRIMARY KEY (`cityAcc`,`itemCode`),
  ADD KEY `itemCode` (`itemCode`);

--
-- Indexes for table `cityledger`
--
ALTER TABLE `cityledger`
  ADD PRIMARY KEY (`code`),
  ADD UNIQUE KEY `accNumber` (`accNumber`);

--
-- Indexes for table `citypaymentcredit`
--
ALTER TABLE `citypaymentcredit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceID` (`invoiceID`),
  ADD KEY `payCode` (`payCode`),
  ADD KEY `cityAcc` (`cityAcc`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`code`),
  ADD UNIQUE KEY `hostName` (`hostName`);

--
-- Indexes for table `currencyunit`
--
ALTER TABLE `currencyunit`
  ADD PRIMARY KEY (`unit`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`),
  ADD KEY `customerType` (`customerType`);

--
-- Indexes for table `customerstatus`
--
ALTER TABLE `customerstatus`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `customertype`
--
ALTER TABLE `customertype`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `day`
--
ALTER TABLE `day`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dayfund`
--
ALTER TABLE `dayfund`
  ADD KEY `dayID` (`dayID`),
  ADD KEY `fundCode` (`fundCode`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`itemCode`,`stockItem`),
  ADD KEY `ingredients_ibfk_3` (`stockItem`);

--
-- Indexes for table `itemcode`
--
ALTER TABLE `itemcode`
  ADD PRIMARY KEY (`code`),
  ADD KEY `itemCode_ibfk_1` (`type`),
  ADD KEY `itemCode_ibfk_2` (`department`);

--
-- Indexes for table `itemcodeassoccharge`
--
ALTER TABLE `itemcodeassoccharge`
  ADD PRIMARY KEY (`itemCode`,`assocCode`),
  ADD KEY `assocCode` (`assocCode`);

--
-- Indexes for table `itemcodetax`
--
ALTER TABLE `itemcodetax`
  ADD PRIMARY KEY (`itemCode`,`taxCode`),
  ADD KEY `taxCode` (`taxCode`);

--
-- Indexes for table `itemcodetype`
--
ALTER TABLE `itemcodetype`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `itemsupplier`
--
ALTER TABLE `itemsupplier`
  ADD PRIMARY KEY (`itemCode`,`supplierCode`),
  ADD KEY `supplierCode` (`supplierCode`);

--
-- Indexes for table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `journal_ibfk_1` (`accountName`);

--
-- Indexes for table `lastvaluetracker`
--
ALTER TABLE `lastvaluetracker`
  ADD PRIMARY KEY (`propertyID`,`record`,`value`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nightaudit`
--
ALTER TABLE `nightaudit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD KEY `saleID` (`saleID`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemCode` (`itemCode`);

--
-- Indexes for table `payterms`
--
ALTER TABLE `payterms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupCode` (`groupCode`);

--
-- Indexes for table `permissiongroup`
--
ALTER TABLE `permissiongroup`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `portions`
--
ALTER TABLE `portions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemCode` (`itemCode`);

--
-- Indexes for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD PRIMARY KEY (`poID`),
  ADD KEY `supplier` (`supplier`);

--
-- Indexes for table `purchaseorderitems`
--
ALTER TABLE `purchaseorderitems`
  ADD PRIMARY KEY (`poID`,`itemCode`),
  ADD KEY `itemCode` (`itemCode`);

--
-- Indexes for table `purchaseorderitemsreceived`
--
ALTER TABLE `purchaseorderitemsreceived`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemCode` (`itemCode`),
  ADD KEY `poID` (`poID`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`reserveID`);

--
-- Indexes for table `quotationstatus`
--
ALTER TABLE `quotationstatus`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `quotationterm`
--
ALTER TABLE `quotationterm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotationtransaction`
--
ALTER TABLE `quotationtransaction`
  ADD PRIMARY KEY (`id`,`reserveID`);

--
-- Indexes for table `quotationtransactiontax`
--
ALTER TABLE `quotationtransactiontax`
  ADD PRIMARY KEY (`transID`,`reserveID`,`taxCode`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `rolepermission`
--
ALTER TABLE `rolepermission`
  ADD PRIMARY KEY (`roleCode`,`permissionID`),
  ADD KEY `permissionID` (`permissionID`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`saleID`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `shift` (`shift`),
  ADD KEY `sale_ibfk_3` (`tableID`);

--
-- Indexes for table `saleitem`
--
ALTER TABLE `saleitem`
  ADD PRIMARY KEY (`itemID`,`saleID`),
  ADD KEY `saleitem_ibfk_1` (`saleID`),
  ADD KEY `saleitem_ibfk_2` (`code`);

--
-- Indexes for table `saleitemtax`
--
ALTER TABLE `saleitemtax`
  ADD PRIMARY KEY (`itemID`,`saleID`,`taxCode`);

--
-- Indexes for table `salestatus`
--
ALTER TABLE `salestatus`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `saletype`
--
ALTER TABLE `saletype`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`id`),
  ADD KEY `openedBy` (`openedBy`),
  ADD KEY `counter` (`counter`),
  ADD KEY `closedBy` (`closedBy`),
  ADD KEY `shift_ibfk_5` (`dayID`);

--
-- Indexes for table `shiftcurrencyunit`
--
ALTER TABLE `shiftcurrencyunit`
  ADD PRIMARY KEY (`shiftID`,`unit`),
  ADD KEY `unit` (`unit`);

--
-- Indexes for table `shiftfunds`
--
ALTER TABLE `shiftfunds`
  ADD PRIMARY KEY (`shiftID`,`fundCode`),
  ADD KEY `fundCode` (`fundCode`);

--
-- Indexes for table `shiftfundstrans`
--
ALTER TABLE `shiftfundstrans`
  ADD PRIMARY KEY (`transID`),
  ADD KEY `shiftID` (`shiftID`),
  ADD KEY `fundCode` (`fundCode`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`stationID`),
  ADD UNIQUE KEY `hostName` (`hostName`);

--
-- Indexes for table `stockitems`
--
ALTER TABLE `stockitems`
  ADD PRIMARY KEY (`itemCode`),
  ADD KEY `itemType` (`itemType`);

--
-- Indexes for table `stockitemsunitcost`
--
ALTER TABLE `stockitemsunitcost`
  ADD PRIMARY KEY (`stockItemCode`,`locationID`),
  ADD KEY `locationID` (`locationID`);

--
-- Indexes for table `stocklocation`
--
ALTER TABLE `stocklocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockmoves`
--
ALTER TABLE `stockmoves`
  ADD PRIMARY KEY (`transID`),
  ADD KEY `itemCode` (`itemCode`);

--
-- Indexes for table `stocktake`
--
ALTER TABLE `stocktake`
  ADD PRIMARY KEY (`stockTakeID`);

--
-- Indexes for table `stocktakeitems`
--
ALTER TABLE `stocktakeitems`
  ADD PRIMARY KEY (`stockTakeID`,`itemCode`),
  ADD KEY `itemCode` (`itemCode`);

--
-- Indexes for table `stocktype`
--
ALTER TABLE `stocktype`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`code`),
  ADD UNIQUE KEY `ourCustomerID` (`ourCustomerID`);

--
-- Indexes for table `tablelocation`
--
ALTER TABLE `tablelocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`tableID`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD KEY `saleID` (`saleID`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `taxrate`
--
ALTER TABLE `taxrate`
  ADD PRIMARY KEY (`code`,`fromDate`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticketID`);

--
-- Indexes for table `unitofmeassure`
--
ALTER TABLE `unitofmeassure`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `useriprestrict`
--
ALTER TABLE `useriprestrict`
  ADD PRIMARY KEY (`userID`,`ip`);

--
-- Indexes for table `userpermission`
--
ALTER TABLE `userpermission`
  ADD PRIMARY KEY (`userID`,`permissionID`),
  ADD KEY `permissionID` (`permissionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertimage`
--
ALTER TABLE `advertimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buffet`
--
ALTER TABLE `buffet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buffetitem`
--
ALTER TABLE `buffetitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cityinvoice`
--
ALTER TABLE `cityinvoice`
  MODIFY `invoiceID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `citypaymentcredit`
--
ALTER TABLE `citypaymentcredit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `day`
--
ALTER TABLE `day`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `journal`
--
ALTER TABLE `journal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nightaudit`
--
ALTER TABLE `nightaudit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payterms`
--
ALTER TABLE `payterms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `portions`
--
ALTER TABLE `portions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  MODIFY `poID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchaseorderitemsreceived`
--
ALTER TABLE `purchaseorderitemsreceived`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotationterm`
--
ALTER TABLE `quotationterm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `saleID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shiftfundstrans`
--
ALTER TABLE `shiftfundstrans`
  MODIFY `transID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `stationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocklocation`
--
ALTER TABLE `stocklocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stockmoves`
--
ALTER TABLE `stockmoves`
  MODIFY `transID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocktake`
--
ALTER TABLE `stocktake`
  MODIFY `stockTakeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tablelocation`
--
ALTER TABLE `tablelocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `tableID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticketID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`type`) REFERENCES `accounttype` (`type`);

--
-- Constraints for table `assignedglaccounts`
--
ALTER TABLE `assignedglaccounts`
  ADD CONSTRAINT `assignedglaccounts_ibfk_2` FOREIGN KEY (`customerDebitAcc`) REFERENCES `account` (`name`),
  ADD CONSTRAINT `assignedglaccounts_ibfk_3` FOREIGN KEY (`customerCreditAcc`) REFERENCES `account` (`name`),
  ADD CONSTRAINT `assignedglaccounts_ibfk_4` FOREIGN KEY (`cityDebitAcc`) REFERENCES `account` (`name`),
  ADD CONSTRAINT `assignedglaccounts_ibfk_5` FOREIGN KEY (`cityCreditAcc`) REFERENCES `account` (`name`),
  ADD CONSTRAINT `assignedglaccounts_ibfk_6` FOREIGN KEY (`itemCode`) REFERENCES `itemcode` (`code`);

--
-- Constraints for table `buffet`
--
ALTER TABLE `buffet`
  ADD CONSTRAINT `buffet_ibfk_1` FOREIGN KEY (`dayID`) REFERENCES `day` (`id`);

--
-- Constraints for table `buffetitem`
--
ALTER TABLE `buffetitem`
  ADD CONSTRAINT `buffetitem_ibfk_1` FOREIGN KEY (`buffetID`) REFERENCES `buffet` (`id`),
  ADD CONSTRAINT `buffetitem_ibfk_2` FOREIGN KEY (`stockItemCode`) REFERENCES `stockitems` (`itemCode`),
  ADD CONSTRAINT `buffetitem_ibfk_3` FOREIGN KEY (`locationID`) REFERENCES `stocklocation` (`id`);

--
-- Constraints for table `card`
--
ALTER TABLE `card`
  ADD CONSTRAINT `card_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`);

--
-- Constraints for table `cityinvoice`
--
ALTER TABLE `cityinvoice`
  ADD CONSTRAINT `cityinvoice_ibfk_1` FOREIGN KEY (`cityAcc`) REFERENCES `cityledger` (`code`);

--
-- Constraints for table `cityinvoicesaleitem`
--
ALTER TABLE `cityinvoicesaleitem`
  ADD CONSTRAINT `cityinvoicesaleitem_ibfk_1` FOREIGN KEY (`code`) REFERENCES `itemcode` (`code`);

--
-- Constraints for table `cityinvoicesaleitemtax`
--
ALTER TABLE `cityinvoicesaleitemtax`
  ADD CONSTRAINT `cityinvoicesaleitemtax_ibfk_1` FOREIGN KEY (`taxCode`) REFERENCES `tax` (`code`),
  ADD CONSTRAINT `cityinvoicesaleitemtax_ibfk_2` FOREIGN KEY (`invoiceID`) REFERENCES `cityinvoice` (`invoiceID`),
  ADD CONSTRAINT `cityinvoicesaleitemtax_ibfk_3` FOREIGN KEY (`itemID`) REFERENCES `cityinvoicesaleitem` (`itemID`);

--
-- Constraints for table `cityitemcodeprice`
--
ALTER TABLE `cityitemcodeprice`
  ADD CONSTRAINT `cityitemcodeprice_ibfk_1` FOREIGN KEY (`itemCode`) REFERENCES `itemcode` (`code`),
  ADD CONSTRAINT `cityitemcodeprice_ibfk_2` FOREIGN KEY (`cityAcc`) REFERENCES `cityledger` (`code`);

--
-- Constraints for table `citypaymentcredit`
--
ALTER TABLE `citypaymentcredit`
  ADD CONSTRAINT `citypaymentcredit_ibfk_1` FOREIGN KEY (`invoiceID`) REFERENCES `cityinvoice` (`invoiceID`),
  ADD CONSTRAINT `citypaymentcredit_ibfk_2` FOREIGN KEY (`payCode`) REFERENCES `itemcode` (`code`),
  ADD CONSTRAINT `citypaymentcredit_ibfk_3` FOREIGN KEY (`cityAcc`) REFERENCES `cityledger` (`code`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`customerType`) REFERENCES `customertype` (`code`);

--
-- Constraints for table `dayfund`
--
ALTER TABLE `dayfund`
  ADD CONSTRAINT `dayfund_ibfk_1` FOREIGN KEY (`dayID`) REFERENCES `day` (`id`),
  ADD CONSTRAINT `dayfund_ibfk_2` FOREIGN KEY (`fundCode`) REFERENCES `itemcode` (`code`);

--
-- Constraints for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_ibfk_3` FOREIGN KEY (`stockItem`) REFERENCES `stockitems` (`itemCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ingredients_ibfk_4` FOREIGN KEY (`itemCode`) REFERENCES `itemcode` (`code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `itemcode`
--
ALTER TABLE `itemcode`
  ADD CONSTRAINT `itemCode_ibfk_1` FOREIGN KEY (`type`) REFERENCES `itemcodetype` (`code`),
  ADD CONSTRAINT `itemCode_ibfk_2` FOREIGN KEY (`department`) REFERENCES `department` (`code`);

--
-- Constraints for table `itemcodeassoccharge`
--
ALTER TABLE `itemcodeassoccharge`
  ADD CONSTRAINT `itemcodeassoccharge_ibfk_1` FOREIGN KEY (`itemCode`) REFERENCES `itemcode` (`code`),
  ADD CONSTRAINT `itemcodeassoccharge_ibfk_2` FOREIGN KEY (`assocCode`) REFERENCES `itemcode` (`code`);

--
-- Constraints for table `itemcodetax`
--
ALTER TABLE `itemcodetax`
  ADD CONSTRAINT `itemcodetax_ibfk_1` FOREIGN KEY (`itemCode`) REFERENCES `itemcode` (`code`),
  ADD CONSTRAINT `itemcodetax_ibfk_2` FOREIGN KEY (`taxCode`) REFERENCES `tax` (`code`);

--
-- Constraints for table `itemsupplier`
--
ALTER TABLE `itemsupplier`
  ADD CONSTRAINT `itemsupplier_ibfk_1` FOREIGN KEY (`supplierCode`) REFERENCES `supplier` (`code`),
  ADD CONSTRAINT `itemsupplier_ibfk_2` FOREIGN KEY (`itemCode`) REFERENCES `stockitems` (`itemCode`);

--
-- Constraints for table `journal`
--
ALTER TABLE `journal`
  ADD CONSTRAINT `journal_ibfk_1` FOREIGN KEY (`accountName`) REFERENCES `account` (`name`);

--
-- Constraints for table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`saleID`) REFERENCES `sale` (`saleID`);

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`itemCode`) REFERENCES `itemcode` (`code`);

--
-- Constraints for table `permission`
--
ALTER TABLE `permission`
  ADD CONSTRAINT `permission_ibfk_1` FOREIGN KEY (`groupCode`) REFERENCES `permissiongroup` (`code`);

--
-- Constraints for table `portions`
--
ALTER TABLE `portions`
  ADD CONSTRAINT `portions_ibfk_1` FOREIGN KEY (`itemCode`) REFERENCES `itemcode` (`code`);

--
-- Constraints for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD CONSTRAINT `purchaseorder_ibfk_1` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`code`);

--
-- Constraints for table `purchaseorderitems`
--
ALTER TABLE `purchaseorderitems`
  ADD CONSTRAINT `purchaseorderitems_ibfk_1` FOREIGN KEY (`poID`) REFERENCES `purchaseorder` (`poID`),
  ADD CONSTRAINT `purchaseorderitems_ibfk_2` FOREIGN KEY (`itemCode`) REFERENCES `stockitems` (`itemCode`);

--
-- Constraints for table `purchaseorderitemsreceived`
--
ALTER TABLE `purchaseorderitemsreceived`
  ADD CONSTRAINT `purchaseorderitemsreceived_ibfk_1` FOREIGN KEY (`itemCode`) REFERENCES `stockitems` (`itemCode`),
  ADD CONSTRAINT `purchaseorderitemsreceived_ibfk_2` FOREIGN KEY (`poID`) REFERENCES `purchaseorder` (`poID`);

--
-- Constraints for table `rolepermission`
--
ALTER TABLE `rolepermission`
  ADD CONSTRAINT `rolepermission_ibfk_1` FOREIGN KEY (`roleCode`) REFERENCES `role` (`code`),
  ADD CONSTRAINT `rolepermission_ibfk_2` FOREIGN KEY (`permissionID`) REFERENCES `permission` (`id`);

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  ADD CONSTRAINT `sale_ibfk_2` FOREIGN KEY (`shift`) REFERENCES `shift` (`id`),
  ADD CONSTRAINT `sale_ibfk_3` FOREIGN KEY (`tableID`) REFERENCES `tables` (`tableID`);

--
-- Constraints for table `saleitem`
--
ALTER TABLE `saleitem`
  ADD CONSTRAINT `saleitem_ibfk_1` FOREIGN KEY (`saleID`) REFERENCES `sale` (`saleID`),
  ADD CONSTRAINT `saleitem_ibfk_2` FOREIGN KEY (`code`) REFERENCES `itemcode` (`code`);

--
-- Constraints for table `saleitemtax`
--
ALTER TABLE `saleitemtax`
  ADD CONSTRAINT `saleitemtax_ibfk_1` FOREIGN KEY (`itemID`) REFERENCES `saleitem` (`itemID`) ON DELETE CASCADE;

--
-- Constraints for table `shift`
--
ALTER TABLE `shift`
  ADD CONSTRAINT `shift_ibfk_1` FOREIGN KEY (`openedBy`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `shift_ibfk_2` FOREIGN KEY (`counter`) REFERENCES `counter` (`code`),
  ADD CONSTRAINT `shift_ibfk_3` FOREIGN KEY (`closedBy`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `shift_ibfk_5` FOREIGN KEY (`dayID`) REFERENCES `day` (`id`);

--
-- Constraints for table `shiftcurrencyunit`
--
ALTER TABLE `shiftcurrencyunit`
  ADD CONSTRAINT `shiftcurrencyunit_ibfk_1` FOREIGN KEY (`unit`) REFERENCES `currencyunit` (`unit`),
  ADD CONSTRAINT `shiftcurrencyunit_ibfk_2` FOREIGN KEY (`shiftID`) REFERENCES `shift` (`id`);

--
-- Constraints for table `shiftfunds`
--
ALTER TABLE `shiftfunds`
  ADD CONSTRAINT `shiftfunds_ibfk_1` FOREIGN KEY (`shiftID`) REFERENCES `shift` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shiftfunds_ibfk_2` FOREIGN KEY (`fundCode`) REFERENCES `itemcode` (`code`);

--
-- Constraints for table `shiftfundstrans`
--
ALTER TABLE `shiftfundstrans`
  ADD CONSTRAINT `shiftfundstrans_ibfk_1` FOREIGN KEY (`shiftID`) REFERENCES `shift` (`id`),
  ADD CONSTRAINT `shiftfundstrans_ibfk_2` FOREIGN KEY (`fundCode`) REFERENCES `itemcode` (`code`);

--
-- Constraints for table `stockitems`
--
ALTER TABLE `stockitems`
  ADD CONSTRAINT `stockitems_ibfk_1` FOREIGN KEY (`itemType`) REFERENCES `stocktype` (`code`);

--
-- Constraints for table `stockmoves`
--
ALTER TABLE `stockmoves`
  ADD CONSTRAINT `stockmoves_ibfk_1` FOREIGN KEY (`itemCode`) REFERENCES `stockitems` (`itemCode`);

--
-- Constraints for table `stocktakeitems`
--
ALTER TABLE `stocktakeitems`
  ADD CONSTRAINT `stocktakeitems_ibfk_1` FOREIGN KEY (`stockTakeID`) REFERENCES `stocktake` (`stockTakeID`),
  ADD CONSTRAINT `stocktakeitems_ibfk_2` FOREIGN KEY (`itemCode`) REFERENCES `stockitems` (`itemCode`);

--
-- Constraints for table `tag`
--
ALTER TABLE `tag`
  ADD CONSTRAINT `tag_ibfk_1` FOREIGN KEY (`saleID`) REFERENCES `sale` (`saleID`);

--
-- Constraints for table `taxrate`
--
ALTER TABLE `taxrate`
  ADD CONSTRAINT `taxrate_ibfk_1` FOREIGN KEY (`code`) REFERENCES `tax` (`code`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`code`);

--
-- Constraints for table `useriprestrict`
--
ALTER TABLE `useriprestrict`
  ADD CONSTRAINT `useriprestrict_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `userpermission`
--
ALTER TABLE `userpermission`
  ADD CONSTRAINT `userpermission_ibfk_1` FOREIGN KEY (`permissionID`) REFERENCES `permission` (`id`),
  ADD CONSTRAINT `userpermission_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
