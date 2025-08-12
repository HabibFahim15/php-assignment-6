-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 08, 2025 at 04:17 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `business`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ACCOUNT_ID` int NOT NULL,
  `AVAIL_BALANCE` float DEFAULT NULL,
  `CLOSE_DATE` date DEFAULT NULL,
  `LAST_ACTIVITY_DATE` date DEFAULT NULL,
  `OPEN_DATE` date NOT NULL,
  `PENDING_BALANCE` float DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `CUST_ID` int DEFAULT NULL,
  `OPEN_BRANCH_ID` int NOT NULL,
  `OPEN_EMP_ID` int NOT NULL,
  `PRODUCT_CD` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ACCOUNT_ID`, `AVAIL_BALANCE`, `CLOSE_DATE`, `LAST_ACTIVITY_DATE`, `OPEN_DATE`, `PENDING_BALANCE`, `STATUS`, `CUST_ID`, `OPEN_BRANCH_ID`, `OPEN_EMP_ID`, `PRODUCT_CD`) VALUES
(1, 1057.75, NULL, '2005-01-04', '2000-01-15', 1057.75, 'FREDGE', 1, 2, 10, 'CHK'),
(2, 500, NULL, '2004-12-19', '2000-01-15', 500, 'ACTIVE', 1, 3, 10, 'SAV'),
(3, 3000, NULL, '2004-06-30', '2004-06-30', 3000, 'ACTIVE', 1, 2, 10, 'CD'),
(4, 2258.02, NULL, '2004-12-27', '2001-03-12', 2258.02, 'ACTIVE', 2, 2, 10, 'CHK'),
(5, 200000, NULL, '2004-12-11', '2001-03-12', 200, 'ACTIVE', 2, 2, 10, 'SAV'),
(6, 200, NULL, '2004-12-11', '2001-03-12', 200, 'ACTIVE', 2, 2, 10, 'SAV'),
(7, 1057.75, NULL, '2004-11-30', '2002-11-23', 1057.75, 'ACTIVE', 3, 3, 13, 'CHK'),
(8, 2212.5, NULL, '2004-12-05', '2002-12-15', 2212.5, 'ACTIVE', 3, 3, 13, 'MM'),
(10, 534.12, NULL, '2005-01-03', '2003-09-12', 534.12, 'ACTIVE', 4, 1, 1, 'CHK'),
(11, 767.77, NULL, '2004-10-24', '2000-01-15', 767.77, 'ACTIVE', 4, 1, 1, 'SAV'),
(12, 5487.09, NULL, '2004-11-11', '2004-09-30', 5487.09, 'ACTIVE', 4, 1, 1, 'MM'),
(13, 2237.97, NULL, '2005-01-05', '2004-01-27', 2897.97, 'ACTIVE', 5, 4, 16, 'CHK'),
(14, 122.37, NULL, '2004-11-29', '2002-08-24', 122.37, 'ACTIVE', 6, 1, 1, 'CHK'),
(15, 10000, NULL, '2004-12-28', '2004-12-28', 10000, 'ACTIVE', 6, 1, 1, 'CD'),
(17, 5000, NULL, '2004-01-12', '2004-01-12', 5000, 'ACTIVE', 7, 2, 10, 'CD'),
(18, 3487.19, NULL, '2005-01-03', '2001-05-23', 3487.19, 'ACTIVE', 8, 4, 16, 'CHK'),
(19, 387.99, NULL, '2004-10-12', '2001-05-23', 387.99, 'ACTIVE', 8, 4, 16, 'SAV'),
(21, 125.67, NULL, '2004-12-15', '2003-07-30', 125.67, 'ACTIVE', 9, 1, 1, 'CHK'),
(22, 9345.55, NULL, '2004-10-28', '2004-10-28', 9845.55, 'ACTIVE', 9, 1, 1, 'MM'),
(23, 1500, NULL, '2004-06-30', '2004-06-30', 1500, 'ACTIVE', 9, 1, 1, 'CD'),
(24, 23575.1, NULL, '2004-12-15', '2002-09-30', 23575.1, 'ACTIVE', 10, 4, 16, 'CHK'),
(25, 52000, NULL, '2004-08-28', '2002-10-01', 0, 'ACTIVE', 18, 4, 16, 'BUS'),
(27, 9345.55, NULL, '2004-11-14', '2004-03-22', 9345.55, 'ACTIVE', 11, 2, 10, 'BUS'),
(28, 38552.1, NULL, '2004-12-15', '2003-07-30', 38552.1, 'ACTIVE', 12, 4, 16, 'CHK'),
(29, 50000, NULL, '2004-12-17', '2004-02-22', 50000, 'ACTIVE', 13, 3, 13, 'SBL');

-- --------------------------------------------------------

--
-- Table structure for table `acc_transaction`
--

CREATE TABLE `acc_transaction` (
  `TXN_ID` bigint NOT NULL,
  `AMOUNT` float NOT NULL,
  `FUNDS_AVAIL_DATE` datetime NOT NULL,
  `TXN_DATE` datetime NOT NULL,
  `TXN_TYPE_CD` varchar(10) DEFAULT NULL,
  `ACCOUNT_ID` int DEFAULT NULL,
  `EXECUTION_BRANCH_ID` int DEFAULT NULL,
  `TELLER_EMP_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `BRANCH_ID` int NOT NULL,
  `ADDRESS` varchar(30) DEFAULT NULL,
  `CITY` varchar(20) DEFAULT NULL,
  `NAME` varchar(20) NOT NULL,
  `STATE` varchar(10) DEFAULT NULL,
  `ZIP_CODE` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`BRANCH_ID`, `ADDRESS`, `CITY`, `NAME`, `STATE`, `ZIP_CODE`) VALUES
(1, '3882 Main St.', 'Waltham', 'Headquarters', 'MA', '02451'),
(2, '422 Maple St.', 'Woburn', 'Woburn Branch', 'MA', '01801'),
(3, '125 Presidential Way', 'Quincy', 'Quincy Branch', 'MA', '02169'),
(4, '378 Maynard Ln.', 'Salem', 'So. NH Branch', 'NH', '03079');

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `INCORP_DATE` date DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `STATE_ID` varchar(10) NOT NULL,
  `CUST_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`INCORP_DATE`, `NAME`, `STATE_ID`, `CUST_ID`) VALUES
('1999-05-01', 'BBC  Inc.', '45-678-901', 1),
('1995-05-01', 'Chilton Engineering', '12-345-678', 10),
('2001-01-01', 'Northeast Cooling Inc.', '23-456-789', 11),
('2002-06-30', 'Superior Auto Body', '34-567-890', 12),
('1999-05-01', 'AAA Insurance Inc.', '45-678-901', 13),
('1999-05-01', 'DARAZ  Inc.', '45-678-901', 100);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` int NOT NULL,
  `ADDRESS` varchar(30) DEFAULT NULL,
  `CITY` varchar(20) DEFAULT NULL,
  `FED_ID` varchar(12) NOT NULL,
  `POSTAL_CODE` varchar(10) DEFAULT NULL,
  `STATE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `ADDRESS`, `CITY`, `FED_ID`, `POSTAL_CODE`, `STATE`) VALUES
(1, '47 Mockingbird Ln', 'Lynnfield', '111-11-1111', '01940', 'Rajshahi'),
(2, '372 Clearwater Blvd', 'Woburn', '222-22-2222', '01801', 'Rajshahi'),
(3, '18 Jessup Rd', 'Quincy', '333-33-3333', '02169', 'Rajshahi'),
(4, '12 Buchanan Ln', 'Waltham', '444-44-4444', '02451', 'Rajshahi'),
(5, '2341 Main St', 'Salem', '555-55-5555', '03079', 'Dhaka'),
(6, '12 Blaylock Ln', 'Waltham', '666-66-6666', '02451', 'Rajshahi'),
(7, '29 Admiral Ln', 'Wilmington', '777-77-7777', '01887', 'Rajshahi'),
(8, '472 Freedom Rd', 'Salem', '888-88-8888', '03079', 'Dhaka'),
(9, '29 Maple St', 'Newton', '999-99-9999', '02458', 'Rajshahi'),
(10, '7 Industrial Way', 'Salem', '04-1111111', '03079', 'Dhaka'),
(11, '287A Corporate Ave', 'Wilmington', '04-2222222', '01887', 'Rajshahi'),
(12, '789 Main St', 'Salem', '04-3333333', '03079', 'Dhaka'),
(13, '4772 Presidential Way', 'Quincy', '04-4444444', '02169', 'Rajshahi'),
(14, '4772 Presidential Way', 'Quincy', '04-4444444', '02169', 'Sylhet');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPT_ID` int NOT NULL,
  `NAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPT_ID`, `NAME`) VALUES
(1, 'Operations'),
(2, 'Loans'),
(3, 'Administration'),
(4, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMP_ID` int NOT NULL,
  `END_DATE` date DEFAULT NULL,
  `ManagerID` int DEFAULT NULL,
  `FIRST_NAME` varchar(20) NOT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  `START_DATE` date NOT NULL,
  `TITLE` varchar(20) DEFAULT NULL,
  `salary` int NOT NULL,
  `ASSIGNED_BRANCH_ID` int DEFAULT NULL,
  `DEPT_ID` int DEFAULT NULL,
  `SUPERIOR_EMP_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMP_ID`, `END_DATE`, `ManagerID`, `FIRST_NAME`, `LAST_NAME`, `START_DATE`, `TITLE`, `salary`, `ASSIGNED_BRANCH_ID`, `DEPT_ID`, `SUPERIOR_EMP_ID`) VALUES
(1, NULL, NULL, 'John Doe', 'Smith', '2001-06-22', 'President', 25000, 1, 3, NULL),
(2, NULL, 1, 'Jane Smith', 'Barker', '2002-09-12', 'Vice President', 21000, 1, 3, 1),
(3, NULL, 1, 'Emily Jones', 'Tyler', '2000-02-09', 'Treasurer', 36500, 1, 3, 1),
(4, NULL, 2, 'Eric Johnson', 'Hawthorne', '2002-04-24', 'Operations Manager', 20000, 1, 1, 3),
(5, NULL, 4, 'John', 'Gooding', '2003-11-14', 'Loan Manager', 10000, 1, 2, 4),
(6, NULL, 5, 'Helen', 'Fleming', '2004-03-17', 'Head Teller', 12000, 1, 5, 4),
(7, NULL, 6, 'Chris', 'Tucker', '2004-09-15', 'Teller', 16000, 1, 1, 6),
(8, NULL, 0, 'Sarah', 'Parker', '2002-12-02', 'Teller', 17000, 1, 1, 6),
(9, NULL, 0, 'Jane', 'Grossman', '2002-05-03', 'Teller', 18000, 1, 1, 6),
(10, NULL, 0, 'Paula', 'Roberts', '2002-07-27', 'Head Teller', 9000, 2, 1, 4),
(11, NULL, 0, 'Thomas', 'Ziegler', '2000-10-23', 'Teller', 8000, 2, 1, 10),
(13, NULL, 0, 'John', 'Blake', '2000-05-11', 'Head Teller', 5500, 3, 1, 4),
(14, NULL, 0, 'Cindy', 'Mason', '2002-08-09', 'Teller', 8900, 3, 1, 13),
(15, NULL, 0, 'Frank', 'Portman', '2003-04-01', 'Teller', 6900, 3, 1, 13),
(16, NULL, 0, 'Theresa', 'Markham', '2001-03-15', 'Head Teller', 55000, 4, 1, 4),
(17, NULL, 0, 'Beth', 'Fowler', '2002-06-29', 'Teller', 25800, 4, 1, 16),
(18, NULL, 0, 'Rick', 'Tulman', '2002-12-12', 'Teller', 15200, 4, 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `individual`
--

CREATE TABLE `individual` (
  `BIRTH_DATE` date DEFAULT NULL,
  `FIRST_NAME` varchar(30) NOT NULL,
  `LAST_NAME` varchar(30) NOT NULL,
  `CUST_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `individual`
--

INSERT INTO `individual` (`BIRTH_DATE`, `FIRST_NAME`, `LAST_NAME`, `CUST_ID`) VALUES
('1972-04-22', 'James', 'Hadley', 1),
('1968-08-15', 'Susan', 'Tingley', 2),
('1958-02-06', 'Frank', 'Tucker', 3),
('1966-12-22', 'John', 'Hayward', 4),
('1971-08-25', 'Charles', 'Frasier', 5),
('1962-09-14', 'John', 'Spencer', 6),
('1947-03-19', 'Margaret', 'Young', 7),
('1977-07-01', 'Louis', 'Blake', 8),
('1968-06-16', 'Richard', 'Farley', 9),
('1972-10-14', 'Danny', 'Jones', 10),
('1956-01-12', 'Steven', 'Thorp', 11),
('1975-11-10', 'Bret', 'Albert', 12),
('1967-03-23', 'Richard', 'Morris', 13);

-- --------------------------------------------------------

--
-- Table structure for table `officer`
--

CREATE TABLE `officer` (
  `OFFICER_ID` int NOT NULL,
  `END_DATE` date DEFAULT NULL,
  `FIRST_NAME` varchar(30) NOT NULL,
  `LAST_NAME` varchar(30) NOT NULL,
  `START_DATE` date NOT NULL,
  `TITLE` varchar(20) DEFAULT NULL,
  `CUST_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `officer`
--

INSERT INTO `officer` (`OFFICER_ID`, `END_DATE`, `FIRST_NAME`, `LAST_NAME`, `START_DATE`, `TITLE`, `CUST_ID`) VALUES
(1, NULL, 'John', 'Chilton', '1995-05-01', 'President', 10),
(2, NULL, 'Paul', 'Hardy', '2001-01-01', 'President', 11),
(3, NULL, 'Carl', 'Lutz', '2002-06-30', 'President', 12),
(4, NULL, 'Stanley', 'Cheswick', '1999-05-01', 'President', 13);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRODUCT_CD` varchar(10) NOT NULL,
  `DATE_OFFERED` date DEFAULT NULL,
  `DATE_RETIRED` date DEFAULT NULL,
  `NAME` varchar(50) NOT NULL,
  `PRODUCT_TYPE_CD` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_CD`, `DATE_OFFERED`, `DATE_RETIRED`, `NAME`, `PRODUCT_TYPE_CD`) VALUES
('AUT', '2000-01-01', NULL, 'auto loan', 'LOAN'),
('BUS', '2000-01-01', NULL, 'business line of credit', 'LOAN'),
('CD', '2000-01-01', NULL, 'certificate of deposit', 'ACCOUNT'),
('CHK', '2000-01-01', NULL, 'checking account', 'ACCOUNT'),
('MM', '2000-01-01', NULL, 'money market account', 'ACCOUNT'),
('MRT', '2000-01-01', NULL, 'home mortgage', 'LOAN'),
('SAV', '2000-01-01', NULL, 'savings account', 'ACCOUNT'),
('SBL', '2000-01-01', NULL, 'small business loan', 'LOAN');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `PRODUCT_TYPE_CD` varchar(255) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`PRODUCT_TYPE_CD`, `NAME`) VALUES
('ACCOUNT', 'Customer Accounts'),
('INSURANCE', 'Insurance Offerings'),
('LOAN', 'Individual and Business Loans');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ACCOUNT_ID`),
  ADD KEY `ACCOUNT_CUSTOMER_FK` (`CUST_ID`),
  ADD KEY `ACCOUNT_BRANCH_FK` (`OPEN_BRANCH_ID`),
  ADD KEY `ACCOUNT_EMPLOYEE_FK` (`OPEN_EMP_ID`),
  ADD KEY `ACCOUNT_PRODUCT_FK` (`PRODUCT_CD`);

--
-- Indexes for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  ADD PRIMARY KEY (`TXN_ID`),
  ADD KEY `ACC_TRANSACTION_ACCOUNT_FK` (`ACCOUNT_ID`),
  ADD KEY `ACC_TRANSACTION_BRANCH_FK` (`EXECUTION_BRANCH_ID`),
  ADD KEY `ACC_TRANSACTION_EMPLOYEE_FK` (`TELLER_EMP_ID`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`BRANCH_ID`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPT_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMP_ID`),
  ADD KEY `EMPLOYEE_BRANCH_FK` (`ASSIGNED_BRANCH_ID`),
  ADD KEY `EMPLOYEE_DEPARTMENT_FK` (`DEPT_ID`),
  ADD KEY `EMPLOYEE_EMPLOYEE_FK` (`SUPERIOR_EMP_ID`);

--
-- Indexes for table `individual`
--
ALTER TABLE `individual`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `officer`
--
ALTER TABLE `officer`
  ADD PRIMARY KEY (`OFFICER_ID`),
  ADD KEY `OFFICER_CUSTOMER_FK` (`CUST_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRODUCT_CD`),
  ADD KEY `PRODUCT_PRODUCT_TYPE_FK` (`PRODUCT_TYPE_CD`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`PRODUCT_TYPE_CD`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ACCOUNT_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  MODIFY `TXN_ID` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `BRANCH_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUST_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DEPT_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMP_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `officer`
--
ALTER TABLE `officer`
  MODIFY `OFFICER_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
