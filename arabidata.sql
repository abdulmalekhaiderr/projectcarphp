--
-- Database: `arabidata`
--
CREATE DATABASE IF NOT EXISTS `arabidata` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `arabidata`;

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator` (
  `Id` int(4) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`Id`, `User_Name`, `Password`) VALUES
(1, 'ali', '1234'),
(2, 'abood', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `Id` int(15) NOT NULL,
  `name_car` varchar(50) NOT NULL,
  `type_car` varchar(50) NOT NULL,
  `company` varchar(20) NOT NULL,
  `model` varchar(30) NOT NULL,
  `machine` varchar(30) NOT NULL,
  `Oil-type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`Id`, `name_car`, `type_car`, `company`, `model`, `machine`, `Oil-type`) VALUES
(1, 'lAND_CRSER', 'r', 'ie', '2013', 'v', 'oil');

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
CREATE TABLE `card` (
  `card_id` int(20) NOT NULL,
  `cus_id` int(10) NOT NULL,
  `st_date` date NOT NULL,
  `ex-date` date NOT NULL,
  `company` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `Id` int(20) NOT NULL,
  `cust_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `p_no` int(50) NOT NULL,
  `nationalty` varchar(30) NOT NULL,
  `id_no` int(30) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `Id` int(20) NOT NULL,
  `reg_id` int(20) NOT NULL,
  `cost` date NOT NULL,
  `pe_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE `reservation` (
  `reg_id` int(20) NOT NULL,
  `cus_id` int(10) NOT NULL,
  `car_id` int(10) NOT NULL,
  `madein` date NOT NULL,
  `model` date NOT NULL,
  `machine` varchar(30) NOT NULL,
  `chasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`card_id`),
  ADD UNIQUE KEY `cus_id` (`cus_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `reg_id` (`reg_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reg_id`),
  ADD UNIQUE KEY `cus_id` (`cus_id`),
  ADD KEY `car_id` (`car_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `card`
--
ALTER TABLE `card`
  ADD CONSTRAINT `card_ibfk_1` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`Id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`reg_id`) REFERENCES `reservation` (`reg_id`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`Id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `car` (`Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
