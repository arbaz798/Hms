

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(4, 1, 'Kashan', 'Latif', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ghani', 550, '2020-02-14', '10:00:00', 1, 0),
(4, 2, 'Kashan', 'Latif', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Danish', 700, '2020-02-28', '10:00:00', 0, 1),
(4, 3, 'Kashan', 'Latif', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Amjad', 1000, '2020-02-19', '03:00:00', 0, 1),
(11, 4, 'Shazia', 'Kamil', 'Female', 'shraddha@gmail.com', '9768946252', 'Ashraf', 500, '2020-02-29', '20:00:00', 1, 1),
(4, 5, 'Kashan', 'Latif', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Danish', 700, '2020-02-28', '12:00:00', 1, 1),
(4, 6, 'Kashan', 'Latif', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ghani', 550, '2020-02-26', '15:00:00', 0, 1),
(2, 8, 'Alia', 'Butt', 'Female', 'alia@gmail.com', '8976897689', 'Ghani', 550, '2020-03-21', '10:00:00', 1, 1),
(5, 9, 'Ghulam', 'Shabbir', 'Male', 'gautam@gmail.com', '9070897653', 'Ghani', 550, '2020-03-19', '20:00:00', 1, 0),
(4, 10, 'Kashan', 'Latif', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ghani', 550, '0000-00-00', '14:00:00', 1, 0),
(4, 11, 'Kashan', 'Latif', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Danish', 700, '2020-03-27', '15:00:00', 1, 1),
(9, 12, 'Waleed', 'Baloch', 'Male', 'william@gmail.com', '8683619153', 'Kalim', 800, '2020-03-26', '12:00:00', 1, 1),
(9, 13, 'Waleed', 'Baloch', 'Male', 'william@gmail.com', '8683619153', 'Tariq', 450, '2020-03-26', '14:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Amina', 'anu@gmail.com', '7896677554', 'Hey Admin'),
('Waqas', 'viki@gmail.com', '9899778865', 'Good Job, Pal'),
('Anam', 'ananya@gmail.com', '9997888879', 'How can I reach you?'),
('Aqeel', 'aakash@gmail.com', '8788979967', 'Love your site'),
('Mair', 'mani@gmail.com', '8977768978', 'Want some coffee?'),
('Kamran', 'karthi@gmail.com', '9898989898', 'Good service'),
('Abid', 'abbis@gmail.com', '8979776868', 'Love your service'),
('Asif', 'asiq@gmail.com', '9087897564', 'Love your service. Thank you!'),
('Jannat', 'jane@gmail.com', '7869869757', 'I love your service!');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('Ashraf', 'ashok123', 'ashok@gmail.com', 'General', 500),
('Arif', 'arun123', 'arun@gmail.com', 'Cardiologist', 600),
('Danish', 'dinesh123', 'dinesh@gmail.com', 'General', 700),
('Ghani', 'ganesh123', 'ganesh@gmail.com', 'Pediatrician', 550),
('Kalim', 'kumar123', 'kumar@gmail.com', 'Pediatrician', 800),
('Amjad', 'amit123', 'amit@gmail.com', 'Cardiologist', 1000),
('Abid', 'abbis123', 'abbis@gmail.com', 'Neurologist', 1500),
('Tariq', 'tiwary123', 'tiwary@gmail.com', 'Pediatrician', 450);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Raza', 'Ahmed', 'Male', 'ram@gmail.com', '9876543210', 'ram123', 'ram123'),
(2, 'Alia', 'Butt', 'Female', 'alia@gmail.com', '8976897689', 'alia123', 'alia123'),
(3, 'Shahzad', 'Khan', 'Male', 'shahrukh@gmail.com', '8976898463', 'shahrukh123', 'shahrukh123'),
(4, 'Kashan', 'Latif', 'Male', 'kishansmart0@gmail.com', '8838489464', 'kishan123', 'kishan123'),
(5, 'Ghulam', 'Shabbir', 'Male', 'gautam@gmail.com', '9070897653', 'gautam123', 'gautam123'),
(6, 'Suhail', 'Asghar', 'Male', 'sushant@gmail.com', '9059986865', 'sushant123', 'sushant123'),
(7, 'Nazia', 'Daud', 'Female', 'nancy@gmail.com', '9128972454', 'nancy123', 'nancy123'),
(8, 'Kamran', 'Saeed', 'Male', 'kenny@gmail.com', '9809879868', 'kenny123', 'kenny123'),
(9, 'Waleed', 'Baloch', 'Male', 'william@gmail.com', '8683619153', 'william123', 'william123'),
(10, 'Parvez', 'Noor', 'Male', 'peter@gmail.com', '9609362815', 'peter123', 'peter123'),
(11, 'Shazia', 'Kamil', 'Female', 'shraddha@gmail.com', '9768946252', 'shraddha123', 'shraddha123');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Danish', 4, 11, 'Kashan', 'Latif', '2020-03-27', '15:00:00', 'Cough', 'Nothing', 'Just take a teaspoon of Benadryl every night'),
('Ghani', 2, 8, 'Alia', 'Butt', '2020-03-21', '10:00:00', 'Severe Fever', 'Nothing', 'Take bed rest'),
('Kalim', 9, 12, 'Waleed', 'Baloch', '2020-03-26', '12:00:00', 'Sever fever', 'nothing', 'Paracetamol -> 1 every morning and night'),
('Tariq', 9, 13, 'Waleed', 'Baloch', '2020-03-26', '14:00:00', 'Cough', 'Skin dryness', 'Intake fruits with more water content');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
