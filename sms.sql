-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 30, 2017 at 07:43 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Sno` int(10) NOT NULL AUTO_INCREMENT,
  `Rollno` varchar(9) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

	CREATE TABLE `course` (
	  `courseID` int(11) NOT NULL,
	  `courseName` varchar(45) NOT NULL,
	  `classroom` varchar(45) NOT NULL,
	  `slot` enum('A','B','C','D','E','F','G','H') NOT NULL,
	  `totalClasses` int(11) NOT NULL DEFAULT '0',
	  `possibleLeaves` int(11) DEFAULT '0',
	  `credits` enum('3','4','1','2') NOT NULL,
	  `considerInCGPA` enum('Y','N') DEFAULT 'N',
	  `teacherID` int(11) DEFAULT NULL
	) ENGINE=InnoDB DEFAULT CHARSET=latin1;

	--
	-- Dumping data for table `course`
	--

	INSERT INTO `course` (`courseID`, `courseName`, `classroom`, `slot`, `totalClasses`, `possibleLeaves`, `credits`, `considerInCGPA`, `teacherID`) VALUES
	(1, 'LGD', 'NLHC304', 'H', 45, 9, '1', 'N', 3),
	(2, 'Financial Audits', 'NLHC304', 'G', 45, 9, '1', 'N', 31),
	(3, 'OEM Management', 'ELHC401', 'H', 30, 6, '4', 'N', 33),
	(4, 'UV coating', 'NLHC203', 'H', 15, 3, '3', 'Y', 18),
	(5, 'Access', 'ELHC203', 'H', 30, 6, '4', 'Y', 84),
	(6, 'Zinc', 'ELHC304', 'G', 45, 9, '1', 'Y', 1),
	(7, 'Data Modeling', 'ELHC401', 'G', 30, 6, '4', 'Y', 27),
	(8, 'QPST', 'ELHC401', 'E', 45, 9, '1', 'Y', 90),
	(9, 'Spring Framework', 'ELHC401', 'H', 45, 9, '1', 'Y', 58),
	(10, 'Epistemology', 'ELHC401', 'H', 45, 9, '1', 'Y', 67),
	(11, 'ETABS', 'NLHC203', 'H', 15, 3, '3', 'N', 56),
	(12, 'UIKit', 'ELHC401', 'G', 30, 6, '4', 'Y', 5),
	(13, 'Operations Management', 'ELHC304', 'F', 15, 3, '3', 'Y', 19),
	(14, 'Creative Strategy', 'NLHC304', 'G', 30, 6, '4', 'Y', 72),
	(15, 'Editorial Illustrations', 'ELHC401', 'F', 15, 3, '3', 'Y', 85),
	(16, 'Comic Book Illustration', 'NLHC401', 'H', 30, 6, '4', 'Y', 80),
	(17, 'Interior Design', 'NLHC401', 'G', 30, 6, '4', 'Y', 96),
	(18, 'Non-compete Agreements', 'ELHC102', 'H', 30, 6, '4', 'Y', 40),
	(19, 'Online Gaming', 'NLHC304', 'G', 15, 3, '3', 'Y', 42),
	(20, 'Test Planning', 'ELHC203', 'H', 30, 6, '4', 'N', 99),
	(21, 'Flight Planning', 'ELHC304', 'E', 15, 3, '3', 'Y', 97),
	(22, 'NT 4.0', 'ELHC401', 'H', 45, 9, '1', 'N', 90),
	(23, 'MW', 'NLHC401', 'H', 30, 6, '4', 'N', 63),
	(24, 'TCD', 'NLHC203', 'H', 15, 3, '3', 'Y', 2),
	(25, 'OO Software Development', 'NLHC401', 'H', 30, 6, '4', 'Y', 57),
	(26, 'GMPLS', 'NLHC401', 'G', 45, 9, '1', 'Y', 2),
	(27, 'Rig', 'NLHC401', 'A', 60, 12, '2', 'N', 29),
	(28, 'Workers Compensation', 'ELHC401', 'H', 45, 9, '1', 'Y', 41),
	(29, 'OSHA', 'NLHC203', 'H', 15, 3, '3', 'Y', 87),
	(30, 'Nikon DSLR', 'ELHC401', 'H', 30, 6, '4', 'N', 50),
	(31, 'Sales Operations', 'NLHC401', 'H', 45, 9, '1', 'Y', 43),
	(32, 'XATA', 'NLHC304', 'E', 30, 6, '4', 'Y', 47),
	(33, 'R&amp;TTE', 'NLHC401', 'G', 30, 6, '4', 'N', 28),
	(34, 'Static Timing Analysis', 'NLHC401', 'C', 45, 9, '1', 'N', 56),
	(35, 'Data Center', 'NLHC203', 'G', 30, 6, '4', 'N', 33),
	(36, 'Mobile Technology', 'ELHC304', 'G', 30, 6, '4', 'Y', 47),
	(37, 'McAfee Antivirus', 'NLHC304', 'H', 15, 3, '3', 'Y', 94),
	(38, 'Sage ERP X3', 'NLHC102', 'H', 45, 9, '1', 'Y', 69),
	(39, 'Waterfall', 'NLHC304', 'H', 30, 6, '4', 'N', 78),
	(40, 'Ultrasonic Welding', 'NLHC401', 'D', 30, 6, '4', 'N', 92),
	(41, 'SOA BPEL', 'ELHC401', 'H', 45, 9, '1', 'N', 20),
	(42, 'Hypertension', 'NLHC401', 'G', 30, 6, '4', 'Y', 3),
	(43, 'HTTPS', 'ELHC304', 'H', 15, 3, '3', 'Y', 29),
	(44, 'HR Transformation', 'NLHC401', 'G', 30, 6, '4', 'Y', 28),
	(45, 'KCS', 'ELHC102', 'F', 45, 9, '1', 'Y', 24),
	(46, 'Ignatian Spirituality', 'ELHC401', 'E', 30, 6, '4', 'Y', 43),
	(47, 'Ocular Disease', 'ELHC401', 'G', 30, 6, '4', 'Y', 59),
	(48, 'Jewish Studies', 'NLHC401', 'H', 15, 3, '3', 'N', 94),
	(49, 'Zabbix', 'NLHC102', 'E', 30, 6, '4', 'Y', 11),
	(50, 'UEFI', 'NLHC203', 'F', 45, 9, '1', 'N', 64),
	(51, 'First Time Home Buyers', 'NLHC304', 'H', 45, 9, '1', 'N', 37),
	(52, 'SFP', 'ELHC401', 'H', 30, 6, '4', 'Y', 65),
	(53, 'Utility Locating', 'NLHC401', 'F', 30, 6, '4', 'N', 56),
	(54, 'Hospitality', 'NLHC203', 'F', 30, 6, '4', 'Y', 32),
	(55, 'Family Therapy', 'ELHC401', 'E', 45, 9, '1', 'N', 42),
	(56, 'Titration', 'ELHC304', 'H', 15, 3, '3', 'Y', 34),
	(57, 'WGA', 'ELHC401', 'E', 30, 6, '4', 'N', 24),
	(58, 'Sleep Medicine', 'NLHC304', 'H', 15, 3, '3', 'Y', 93),
	(59, 'IEEE', 'ELHC401', 'H', 15, 3, '3', 'N', 64),
	(60, 'Uniform Combined State Law', 'ELHC401', 'H', 45, 9, '1', 'N', 63),
	(61, 'OKI', 'ELHC102', 'F', 45, 9, '1', 'Y', 64),
	(62, 'Floor Plans', 'ELHC304', 'D', 45, 9, '1', 'Y', 9),
	(63, 'MBTI', 'ELHC401', 'H', 15, 3, '3', 'Y', 24),
	(64, 'HSSE', 'NLHC401', 'F', 30, 6, '4', 'Y', 71),
	(65, 'PPAP', 'ELHC401', 'H', 45, 9, '1', 'Y', 66),
	(66, 'EELS', 'ELHC304', 'H', 15, 3, '3', 'N', 29),
	(67, 'NAS', 'NLHC203', 'G', 30, 6, '4', 'Y', 68),
	(68, 'HP Blade', 'ELHC401', 'F', 45, 9, '1', 'N', 45),
	(69, 'VPLS', 'ELHC401', 'H', 30, 6, '4', 'Y', 17),
	(70, 'ESRI', 'NLHC401', 'F', 30, 6, '4', 'N', 42),
	(71, 'Failure Analysis', 'ELHC203', 'F', 30, 6, '4', 'Y', 31),
	(72, 'IFE', 'ELHC401', 'H', 45, 9, '1', 'N', 72),
	(73, 'QS1', 'ELHC102', 'G', 15, 3, '3', 'Y', 52),
	(74, 'Behavioral Health', 'NLHC401', 'H', 45, 9, '1', 'Y', 43),
	(75, 'Interviewing Skills', 'NLHC401', 'H', 30, 6, '4', 'N', 58),
	(76, 'CSRs', 'NLHC401', 'H', 30, 6, '4', 'Y', 14),
	(77, 'GFAAS', 'ELHC203', 'H', 30, 6, '4', 'Y', 51),
	(78, 'Young People', 'NLHC401', 'H', 45, 9, '1', 'Y', 81),
	(79, 'Beauty Industry', 'ELHC304', 'G', 30, 6, '4', 'N', 91),
	(80, 'Elementary Education', 'ELHC401', 'H', 30, 6, '4', 'N', 8),
	(81, 'PDM', 'ELHC401', 'G', 30, 6, '4', 'Y', 81),
	(82, 'MLD', 'ELHC203', 'G', 45, 9, '1', 'N', 7),
	(83, 'Talent Booking', 'ELHC401', 'H', 15, 3, '3', 'Y', 37),
	(84, 'RIP', 'ELHC203', 'G', 30, 6, '4', 'N', 23),
	(85, 'University Teaching', 'ELHC203', 'H', 30, 6, '4', 'N', 3),
	(86, 'Dual Diagnosis', 'ELHC401', 'H', 45, 9, '1', 'Y', 77),
	(87, 'Store Management', 'NLHC401', 'D', 15, 3, '3', 'Y', 89),
	(88, 'MDRs', 'ELHC304', 'F', 30, 6, '4', 'Y', 21),
	(89, 'Sony HDV', 'NLHC401', 'H', 45, 9, '1', 'N', 7),
	(90, 'AKTA', 'ELHC304', 'H', 30, 6, '4', 'Y', 96),
	(91, 'TMJ Treatment', 'NLHC401', 'G', 15, 3, '3', 'N', 18),
	(92, 'Software Implementation', 'NLHC304', 'H', 45, 9, '1', 'N', 74),
	(93, 'TV Distribution', 'NLHC401', 'G', 45, 9, '1', 'Y', 18),
	(94, 'Web TV', 'ELHC304', 'G', 15, 3, '3', 'N', 69),
	(95, 'Gymnastics', 'ELHC304', 'F', 30, 6, '4', 'N', 5),
	(96, 'Foreign Affairs', 'NLHC401', 'G', 45, 9, '1', 'Y', 69),
	(97, 'DFX', 'NLHC102', 'E', 30, 6, '4', 'Y', 21),
	(98, 'NCAA Compliance', 'NLHC401', 'H', 30, 6, '4', 'N', 7),
	(99, 'Carrier Ethernet', 'NLHC401', 'H', 30, 6, '4', 'Y', 40),
	(100, 'Escrow', 'NLHC304', 'F', 45, 9, '1', 'Y', 40);

-- --------------------------------------------------------

--
-- Table structure for table `loginAttempts`
--

CREATE TABLE `loginAttempts` (
  `IP` varchar(20) NOT NULL,
  `Attempts` int(11) NOT NULL,
  `LastLogin` datetime NOT NULL,
  `Username` varchar(65) DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` char(23) NOT NULL,
  `username` varchar(65) NOT NULL DEFAULT '',
  `password` varchar(65) NOT NULL DEFAULT '',
  `email` varchar(65) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `mod_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mess`
--
/*
CREATE TABLE `mess` (
  `messName` varchar(1) NOT NULL,
  `messType` enum('veg','non-veg') NOT NULL,
  `dailyCharges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mess`
--

INSERT INTO `mess` (`messName`, `messType`, `dailyCharges`) VALUES
('A', 'veg', 59),
('B', 'non-veg', 79);
*/
-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Rollno` varchar(9) NOT NULL PRIMARY KEY,
  `studentName` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `department` varchar(45) NOT NULL,
  `birthDate` varchar(14) NOT NULL,
  `batch` varchar(45) NOT NULL,
  `CGPA` int(11) DEFAULT NULL,					--NEEDED?
  'address' varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

--INSERT INTO `student` (`studentID`, `studentName`, `email`, `department`, `birthDate`, `batch`, `registeredMess`, `CGPA`) VALUES
--(150020, 'Kiran', 'k@k.com', 'CSE', '221197', 'J', 'A', 7);

-- --------------------------------------------------------

--
-- Table structure for table `student_has_course`
--

CREATE TABLE `preregistration` (
  `Sno` int(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `studentID` varchar(9) NOT NULL FOREIGN KEY REFERENCES `student`(`Rollno`)
  `courseID` varchar(5) NOT NULL FOREIGN KEY REFERENCES `course`(`courseID`),
  `leavesTaken` int(11) DEFAULT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

--
-- Dumping data for table `student_has_course`
--
/*
INSERT INTO `student_has_course` (`studentID`, `teacherID`, `courseID`, `leavesTaken`, `grade`) VALUES
(150020, 1, 1, 3, 'S');
*/
-- --------------------------------------------------------

--
-- Table structure for table `student_taken_mess`
--
/*
CREATE TABLE `student_taken_mess` (
  `studentID` int(11) NOT NULL,
  `messName` varchar(1) DEFAULT NULL,
  `month` enum('1','2','3','4','5','6','7','8','9','10','11','12') NOT NULL,
  `year` varchar(4) NOT NULL,
  `extraAmount` int(11) NOT NULL,
  `totalAmount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_taken_mess`
--

INSERT INTO `student_taken_mess` (`studentID`, `messName`, `month`, `year`, `extraAmount`, `totalAmount`) VALUES
(150020, 'A', '1', '2017', 500, 2500);
*/
-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacherID` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `teacherName` varchar(45) NOT NULL,
  `startDate` varchar(14) NOT NULL,
  `birthDate` varchar(14) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacherID`, `username`, `email`, `password`, `teacherName`, `startDate`, `birthDate`, `department`, `designation`) VALUES
(1, 'teach', 'dbranwhite0@columbia.edu', '1234', 'Dennis Branwhite', '2006-09-13', '1964-09-26', 'ECE', 'Assistant Professor'),
(2, 'aonowlan1', 'aonowlan1@wsj.com', 'idPVZ1aSsz6', 'Adan O\'Nowlan', '2007-11-15', '1977-09-25', 'MECH', 'Professor'),
(3, 'igabbott2', 'igabbott2@wordpress.org', 'PPRrUiW4p5', 'Ingaborg Gabbott', '1983-06-28', '1983-03-29', 'BT', 'HOD'),
(4, 'bgumm3', 'bgumm3@guardian.co.uk', 'H1ebxNN0wrGy', 'Bambie Gumm', '1996-02-29', '1968-07-04', 'EEE', 'Professor'),
(5, 'chennington4', 'chennington4@feedburner.com', 'oUVbpO', 'Carlo Hennington', '2013-05-10', '1981-06-09', 'ECE', 'Assistant Professor'),
(6, 'telletson5', 'telletson5@livejournal.com', '15NyADxz', 'Tierney Elletson', '2017-07-20', '1983-09-02', 'CSE', 'Assistant Professor'),
(7, 'ghearty6', 'ghearty6@redcross.org', 'N7jZ7GyXIlkI', 'Ginny Hearty', '2014-08-09', '1977-01-11', 'MECH', 'Professor'),
(8, 'tcarlyon7', 'tcarlyon7@ycombinator.com', 'ZA99SeVWN', 'Theodosia Carlyon', '1980-01-14', '1963-10-02', 'ECE', 'Professor'),
(9, 'vbuckles8', 'vbuckles8@economist.com', 'pfHjzBX', 'Vikky Buckles', '2011-07-16', '1961-03-02', 'BT', 'Assistant Professor'),
(10, 'iriggeard9', 'iriggeard9@simplemachines.org', 'GpOlCxc8', 'Ilka Riggeard', '1996-02-06', '1962-10-27', 'BT', 'Professor'),
(11, 'cdykesa', 'cdykesa@netlog.com', '57spmQ56c', 'Calypso Dykes', '1995-09-12', '1983-03-26', 'ECE', 'HOD'),
(12, 'daylingb', 'daylingb@telegraph.co.uk', 'rSNaJTsg3J', 'Dexter Ayling', '1993-03-09', '1972-02-04', 'EEE', 'Professor'),
(13, 'pbradderc', 'pbradderc@forbes.com', 'BWQMPEMvwFkW', 'Priscilla Bradder', '2016-01-23', '1961-12-17', 'EEE', 'Assistant Professor'),
(14, 'eduinbletond', 'eduinbletond@usnews.com', 'v4T4poFbQBlB', 'Elton Duinbleton', '2009-03-31', '1964-03-05', 'ECE', 'Assistant Professor'),
(15, 'cwaude', 'cwaude@accuweather.com', 'tXtEtZrMC', 'Carny Waud', '2013-04-04', '1983-11-12', 'ECE', 'Assistant Professor'),
(16, 'acharlef', 'acharlef@cdbaby.com', 'VDM4fzyrk', 'Agneta Charle', '2001-10-24', '1974-07-14', 'MECH', 'Assistant Professor'),
(17, 'hglovesg', 'hglovesg@lycos.com', 'hmDvfbjg', 'Huey Gloves', '1983-08-19', '1985-08-07', 'CSE', 'HOD'),
(18, 'kculpinh', 'kculpinh@cafepress.com', 'tdM2qst', 'Karole Culpin', '1994-03-31', '1963-10-26', 'ECE', 'HOD'),
(19, 'zalleryi', 'zalleryi@jigsy.com', 'vmyTKGUL', 'Zachariah Allery', '1992-09-15', '1982-07-11', 'ECE', 'Professor'),
(20, 'zslydej', 'zslydej@vistaprint.com', 'GSqBAk4m3f', 'Zackariah Slyde', '1993-03-17', '1963-11-24', 'EEE', 'Professor'),
(21, 'egordgek', 'egordgek@yellowbook.com', '2C7nM3exhPH8', 'Elmo Gordge', '2007-10-04', '1976-12-14', 'MECH', 'Assistant Professor'),
(22, 'snewcomel', 'snewcomel@trellian.com', 'NCw24zI', 'Shir Newcome', '1981-11-10', '1977-10-20', 'ECE', 'HOD'),
(23, 'theminsleym', 'theminsleym@noaa.gov', 'YHLGY9qZOva', 'Tilda Heminsley', '1998-06-04', '1975-04-10', 'ECE', 'Professor'),
(24, 'spetkovicn', 'spetkovicn@howstuffworks.com', 'TmKWuCyK', 'Silvester Petkovic', '2003-10-28', '1978-08-14', 'ECE', 'Assistant Professor'),
(25, 'rforstallo', 'rforstallo@disqus.com', 'VIipUdiOUB', 'Rita Forstall', '1989-09-11', '1964-04-13', 'BT', 'Professor'),
(26, 'ocainp', 'ocainp@cisco.com', 'L6QSLjiaSGK', 'Odele Cain', '1990-11-01', '1978-08-28', 'MECH', 'HOD'),
(27, 'dtinemanq', 'dtinemanq@cbsnews.com', 'MwrEuQ8', 'Danny Tineman', '2006-12-25', '1982-07-30', 'MECH', 'Professor'),
(28, 'kpolakr', 'kpolakr@ning.com', 'Zfi35npjEo6', 'Kincaid Polak', '1988-10-24', '1978-07-04', 'BT', 'Professor'),
(29, 'lvickarmans', 'lvickarmans@reference.com', 'XzmJfrLO99BH', 'Layne Vickarman', '1984-03-27', '1973-08-29', 'ECE', 'Professor'),
(30, 'csigfridt', 'csigfridt@scribd.com', 'rFObCq5', 'Charil Sigfrid', '2013-03-01', '1974-01-20', 'BT', 'Assistant Professor'),
(31, 'hjumontu', 'hjumontu@wufoo.com', 'b0iiYqwNw1SV', 'Helenka Jumont', '2010-04-20', '1964-05-21', 'ECE', 'Assistant Professor'),
(32, 'acutbushv', 'acutbushv@ucoz.ru', 'njmeb31H5zY', 'Astrid Cutbush', '2011-11-18', '1964-11-15', 'CSE', 'Assistant Professor'),
(33, 'aaultonw', 'aaultonw@myspace.com', 'ooVILjAdzdNd', 'Ada Aulton', '1984-03-06', '1984-06-03', 'MECH', 'Professor'),
(34, 'nlathayex', 'nlathayex@about.me', 'x2k9r0AYBjiZ', 'Nico Lathaye', '1980-12-07', '1973-06-08', 'ECE', 'Professor'),
(35, 'goolahany', 'goolahany@digg.com', 'NwphugA1dldi', 'Gena Oolahan', '1997-08-20', '1967-11-20', 'BT', 'Professor'),
(36, 'ldunningz', 'ldunningz@nsw.gov.au', '15ZZo72fYW', 'Lynne Dunning', '1994-01-05', '1969-12-26', 'CSE', 'Professor'),
(37, 'hkinghorne10', 'hkinghorne10@dailymail.co.uk', 'fvCTb0', 'Haleigh Kinghorne', '1992-06-05', '1965-10-16', 'ECE', 'Professor'),
(38, 'scrosetto11', 'scrosetto11@npr.org', 'NHlNY3UHX', 'Saloma Crosetto', '2008-01-30', '1971-07-07', 'EEE', 'Assistant Professor'),
(39, 'glambeth12', 'glambeth12@elegantthemes.com', 'gHq70109', 'Gipsy Lambeth', '1988-02-25', '1978-10-02', 'ECE', 'Professor'),
(40, 'lastlet13', 'lastlet13@youtube.com', 'ZjnZ6JqqA', 'Lacie Astlet', '2016-11-23', '1960-09-30', 'CSE', 'Assistant Professor'),
(41, 'sjacomb14', 'sjacomb14@discuz.net', 'jLQCnGyG', 'Spike Jacomb', '2004-05-26', '1980-10-22', 'MECH', 'Assistant Professor'),
(42, 'kiwanczyk15', 'kiwanczyk15@yellowpages.com', 'QZjtn0w9wp', 'Kessia Iwanczyk', '1990-05-20', '1967-10-18', 'CSE', 'HOD'),
(43, 'winger16', 'winger16@wikipedia.org', 'RZ68nxYcgys', 'Winonah Inger', '1982-11-08', '1977-12-12', 'MECH', 'HOD'),
(44, 'cboddy17', 'cboddy17@apache.org', 'cb0fLjK', 'Correy Boddy', '2004-04-11', '1972-04-24', 'BT', 'Professor'),
(45, 'afranseco18', 'afranseco18@paypal.com', 'NLJY8dX', 'Antoinette Franseco', '2000-10-12', '1968-06-06', 'ECE', 'Assistant Professor'),
(46, 'brounsefell19', 'brounsefell19@google.pl', 'NPVxMtH', 'Bale Rounsefell', '1985-05-29', '1977-09-19', 'BT', 'HOD'),
(47, 'gcatterick1a', 'gcatterick1a@illinois.edu', 'WWsOSypF', 'Giffer Catterick', '2000-10-30', '1970-06-16', 'BT', 'Assistant Professor'),
(48, 'egladyer1b', 'egladyer1b@state.tx.us', 'TZVnImvrPCgV', 'Eliza Gladyer', '2016-10-10', '1971-06-15', 'ECE', 'Assistant Professor'),
(49, 'mtaylorson1c', 'mtaylorson1c@vinaora.com', 'QzqqRMfZxs', 'Marilee Taylorson', '1983-01-31', '1961-03-16', 'EEE', 'Professor'),
(50, 'gciccarello1d', 'gciccarello1d@ovh.net', '8vtI5hBmAvOS', 'Galvan Ciccarello', '2011-03-22', '1973-04-05', 'EEE', 'Assistant Professor'),
(51, 'jbriamo1e', 'jbriamo1e@yandex.ru', 'RtxWLMpth7Y', 'Joby Briamo', '1985-01-20', '1961-03-24', 'CSE', 'Professor'),
(52, 'fbellenger1f', 'fbellenger1f@51.la', 'sW8MgCdf', 'Felice Bellenger', '1998-03-31', '1974-11-08', 'CSE', 'Professor'),
(53, 'oburtwistle1g', 'oburtwistle1g@istockphoto.com', 'jOywE7n', 'Ole Burtwistle', '2010-01-12', '1977-11-17', 'ECE', 'Assistant Professor'),
(54, 'adorant1h', 'adorant1h@hexun.com', 'j3f60MUBFyr', 'Athene Dorant', '1981-09-26', '1960-07-09', 'BT', 'Professor'),
(55, 'mstichel1i', 'mstichel1i@ovh.net', 'nPsc12fURW6c', 'Mathe Stichel', '2017-02-14', '1960-05-10', 'ECE', 'Professor'),
(56, 'cflorio1j', 'cflorio1j@multiply.com', '7IgqaBBJqQ', 'Clayson Florio', '2014-11-14', '1978-12-06', 'ECE', 'Assistant Professor'),
(57, 'gshepley1k', 'gshepley1k@parallels.com', 'KjVisaQje', 'Guilbert Shepley', '2013-11-02', '1980-07-18', 'MECH', 'Assistant Professor'),
(58, 'oschoular1l', 'oschoular1l@dyndns.org', 'zIPiLYtBAxAw', 'Olympie Schoular', '2017-09-22', '1960-12-11', 'BT', 'Assistant Professor'),
(59, 'jhumphries1m', 'jhumphries1m@mapy.cz', 'PT3mLbj3dyjX', 'Jake Humphries', '1982-03-28', '1981-06-26', 'BT', 'Professor'),
(60, 'jnairy1n', 'jnairy1n@army.mil', '6gTKUaqTPHb', 'Jandy Nairy', '2009-11-04', '1982-05-09', 'BT', 'Assistant Professor'),
(61, 'maldhouse1o', 'maldhouse1o@gizmodo.com', 'vf4JZj9', 'Marquita Aldhouse', '1989-05-02', '1966-02-10', 'BT', 'Professor'),
(62, 'bdodding1p', 'bdodding1p@youtu.be', '7yzOFBfG', 'Barty Dodding', '2016-02-24', '1979-10-17', 'BT', 'Assistant Professor'),
(63, 'alapslie1q', 'alapslie1q@xing.com', '0e1cufNx', 'Arda Lapslie', '2004-07-30', '1980-04-03', 'ECE', 'Professor'),
(64, 'jundrill1r', 'jundrill1r@timesonline.co.uk', 'xR94I1zSAwP', 'Jarid Undrill', '1986-06-25', '1973-09-04', 'BT', 'Professor'),
(65, 'ecavalier1s', 'ecavalier1s@who.int', '9ji6lJ', 'Emelina Cavalier', '2001-07-20', '1975-12-08', 'MECH', 'Assistant Professor'),
(66, 'drozea1t', 'drozea1t@samsung.com', 'rUvX4rib', 'Dorella Rozea', '1983-05-25', '1985-10-29', 'ECE', 'Professor'),
(67, 'ssaxon1u', 'ssaxon1u@pagesperso-orange.fr', 'nxqoXe', 'Sharron Saxon', '1987-01-19', '1961-08-05', 'MECH', 'Professor'),
(68, 'fgleadle1v', 'fgleadle1v@virginia.edu', '0VJN2J', 'Far Gleadle', '2014-09-15', '1977-04-02', 'MECH', 'Professor'),
(69, 'lartingstall1w', 'lartingstall1w@state.tx.us', '2Po3uaFNa4', 'Lenard Artingstall', '1990-01-25', '1960-05-19', 'CSE', 'Professor'),
(70, 'cwitty1x', 'cwitty1x@nba.com', 'qtpjkZvNOz', 'Cordy Witty', '1990-10-30', '1968-08-31', 'EEE', 'Professor'),
(71, 'gegentan1y', 'gegentan1y@theatlantic.com', 'Gnn9CP9F265', 'Gussi Egentan', '2014-03-24', '1968-01-12', 'MECH', 'Assistant Professor'),
(72, 'blugsdin1z', 'blugsdin1z@wordpress.com', 'ZNSGx4', 'Buiron Lugsdin', '1991-04-27', '1966-03-03', 'BT', 'Professor'),
(73, 'jgoldthorp20', 'jgoldthorp20@woothemes.com', 'QPpRC0TBpj', 'Jourdan Goldthorp', '1985-09-26', '1982-02-16', 'ECE', 'Professor'),
(74, 'abenardet21', 'abenardet21@last.fm', 'SDc3oSve', 'Arlyne Benardet', '1996-09-20', '1978-02-15', 'ECE', 'Professor'),
(75, 'amcarthur22', 'amcarthur22@amazon.co.jp', 'fOOThUT2', 'Arlene McArthur', '2011-06-25', '1970-06-11', 'MECH', 'Assistant Professor'),
(76, 'npulfer23', 'npulfer23@tripod.com', 'Un72Jul', 'Niki Pulfer', '2012-04-09', '1969-07-04', 'MECH', 'Assistant Professor'),
(77, 'cfeckey24', 'cfeckey24@nsw.gov.au', 'omjQN6OIL', 'Chelsea Feckey', '1994-10-02', '1979-05-19', 'EEE', 'Professor'),
(78, 'cwoolforde25', 'cwoolforde25@github.io', 'MnjOAINz', 'Cecilius Woolforde', '1985-05-08', '1979-10-19', 'MECH', 'Professor'),
(79, 'llantry26', 'llantry26@unc.edu', '400elQ49SbaD', 'Lavena Lantry', '1987-08-18', '1966-09-06', 'EEE', 'HOD'),
(80, 'abruinemann27', 'abruinemann27@e-recht24.de', 'NuYHWQCGIv', 'Allyce Bruinemann', '1987-04-10', '1979-03-07', 'EEE', 'Professor'),
(81, 'gchiverton28', 'gchiverton28@youtube.com', 'tkXpoE6XH', 'Gwendolin Chiverton', '2000-05-19', '1969-05-25', 'CSE', 'Assistant Professor'),
(82, 'nhamblett29', 'nhamblett29@baidu.com', 'VjCXX2', 'Nealon Hamblett', '1982-05-07', '1964-10-01', 'EEE', 'HOD'),
(83, 'cgilbard2a', 'cgilbard2a@imageshack.us', 'zlprlAvzREx', 'Caitrin Gilbard', '2010-11-10', '1967-06-15', 'BT', 'Assistant Professor'),
(84, 'skarlqvist2b', 'skarlqvist2b@tmall.com', 'EMfBmQlSfRIi', 'Shara Karlqvist', '1988-08-24', '1961-03-27', 'ECE', 'Professor'),
(85, 'mowlner2c', 'mowlner2c@home.pl', 'TpiIFFiu', 'Maris Owlner', '2012-08-19', '1976-02-14', 'MECH', 'Assistant Professor'),
(86, 'lherreran2d', 'lherreran2d@yellowpages.com', 'avUi4C', 'Loella Herreran', '1984-11-01', '1977-03-03', 'CSE', 'Professor'),
(87, 'cpennick2e', 'cpennick2e@amazon.com', 'qP2SzOSf45W2', 'Conant Pennick', '2001-09-18', '1985-04-02', 'ECE', 'Professor'),
(88, 'klorraine2f', 'klorraine2f@apache.org', 'ueo1npC6Y', 'Katey Lorraine', '2014-01-28', '1961-09-18', 'BT', 'Professor'),
(89, 'gschmuhl2g', 'gschmuhl2g@tinyurl.com', 'fQoTjD8n', 'Griff Schmuhl', '1981-07-05', '1967-03-18', 'EEE', 'Professor'),
(90, 'cilyuchyov2h', 'cilyuchyov2h@ustream.tv', 'FmLzpII', 'Clyde Ilyuchyov', '1991-04-13', '1970-10-07', 'CSE', 'HOD'),
(91, 'epaddle2i', 'epaddle2i@cpanel.net', 'RYZ6NGDHlT', 'Ellette Paddle', '2000-12-29', '1971-04-04', 'BT', 'Assistant Professor'),
(92, 'vstanier2j', 'vstanier2j@ucoz.com', 'AOSFfu4e', 'Vilhelmina Stanier', '1993-06-07', '1981-01-01', 'MECH', 'Professor'),
(93, 'schippendale2k', 'schippendale2k@google.com', 'n2PdtOMHQ', 'Steffane Chippendale', '2011-11-22', '1961-03-08', 'MECH', 'Assistant Professor'),
(94, 'bbeevens2l', 'bbeevens2l@oaic.gov.au', 'nVhesCM', 'Byron Beevens', '1989-06-11', '1976-07-15', 'ECE', 'HOD'),
(95, 'amerioth2m', 'amerioth2m@stumbleupon.com', 'xg1rWZXsNt', 'Alfie Merioth', '1997-02-09', '1964-06-28', 'MECH', 'Professor'),
(96, 'sburkill2n', 'sburkill2n@studiopress.com', 'jnBqZ0b7dGuB', 'Savina Burkill', '1987-04-24', '1984-03-04', 'BT', 'Professor'),
(97, 'alindenfeld2o', 'alindenfeld2o@nationalgeographic.com', 'HYnBjSY9I', 'Andrey Lindenfeld', '1997-07-25', '1984-05-02', 'CSE', 'Professor'),
(98, 'eraybould2p', 'eraybould2p@weather.com', 'mkHCycqnnPsR', 'Erena Raybould', '1982-01-04', '1978-12-11', 'ECE', 'Professor'),
(99, 'ctoft2q', 'ctoft2q@techcrunch.com', 'k9PUOwc', 'Camilla Toft', '1983-06-22', '1963-07-23', 'BT', 'Professor'),
(100, 'eguerrin2r', 'eguerrin2r@jalbum.net', 'BxekloAHU', 'Ester Guerrin', '2016-06-02', '1978-05-08', 'CSE', 'Assistant Professor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`),
  ADD UNIQUE KEY `adminID` (`adminID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseID`),
  ADD KEY `teacherID` (`teacherID`);

--
-- Indexes for table `loginAttempts`
--
ALTER TABLE `loginAttempts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indexes for table `mess`
--
ALTER TABLE `mess`
  ADD PRIMARY KEY (`messName`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `student_has_course`
--
ALTER TABLE `student_has_course`
  ADD KEY `studentID` (`studentID`),
  ADD KEY `teacherID` (`teacherID`),
  ADD KEY `courseID` (`courseID`);

--
-- Indexes for table `student_taken_mess`
--
ALTER TABLE `student_taken_mess`
  ADD KEY `messName` (`messName`),
  ADD KEY `studentID` (`studentID`),
  ADD KEY `studentID_2` (`studentID`),
  ADD KEY `studentID_3` (`studentID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacherID`),
  ADD UNIQUE KEY `teacherID` (`teacherID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loginAttempts`
--
ALTER TABLE `loginAttempts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `fk_teacherID` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`teacherID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `student_has_course`
--
ALTER TABLE `student_has_course`
  ADD CONSTRAINT `fk_` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`teacherID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_courseID` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_studentID` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`);

--
-- Constraints for table `student_taken_mess`
--
ALTER TABLE `student_taken_mess`
  ADD CONSTRAINT `fk_messname` FOREIGN KEY (`messName`) REFERENCES `mess` (`messName`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_student` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON UPDATE CASCADE;
*/