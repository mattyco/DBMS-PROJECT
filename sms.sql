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
-- Database: `dss`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Sno` int(10) NOT NULL AUTO_INCREMENT,
  `AdminID` varchar(9) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`AdminID`)
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
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `RollNo` mediumint,
  `studentName` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `department` varchar(255) default NULL,
  `birthDate` varchar(255),
  `batch` varchar(255) default NULL,
  `CGPA` mediumint default NULL,
  `address` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (1,"Petra F. Workman","purus@eu.edu","ECE","1998-04-01","J",5,"P.O. Box 102, 8768 Velit. Street");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (2,"Stacey C. Munoz","arcu@luctusCurabitur.org","EEE","2001-03-21","G",7,"2213 Ut St.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (3,"Echo K. Robbins","tellus.eu@enim.org","ECE","1996-12-20","D",5,"4006 Risus. Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (4,"Katelyn Castillo","Nunc.ullamcorper@sitamet.ca","CIVIL","1997-07-07","M",7,"P.O. Box 515, 8444 Montes, Av.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (5,"TaShya R. Browning","felis.orci.adipiscing@enimmi.net","EEE","1998-09-04","F",7,"221 Nunc Av.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (6,"Vielka Morris","Duis.sit@estmauris.edu","MECH","2000-07-08","K",7,"P.O. Box 723, 2284 At Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (7,"Riley Slater","Suspendisse@nisi.edu","EEE","2000-05-05","G",8,"2867 Dictum Road");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (8,"Kieran Moss","purus.ac.tellus@molestie.com","CIVIL","1999-06-22","D",10,"5145 Mauris Ave");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (9,"Lawrence Z. Rich","In.tincidunt@erosturpis.ca","MECH","1996-05-17","H",10,"Ap #301-8538 Ac Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (10,"Aurelia Lane","dui.Cum@Nuncsollicitudin.net","EEE","1998-09-29","A",8,"P.O. Box 914, 2401 Libero. Ave");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (11,"Howard P. Franks","malesuada@Pellentesqueultriciesdignissim.org","ECE","1997-11-26","N",9,"P.O. Box 599, 4114 Congue. Ave");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (12,"Eleanor N. Donovan","leo.Morbi.neque@dui.com","CIVIL","1997-04-19","H",7,"P.O. Box 963, 8258 Lacus. Street");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (13,"Evan Moore","consectetuer.adipiscing@ipsum.org","EEE","1997-01-27","C",9,"P.O. Box 270, 8592 Lacus Av.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (14,"Latifah N. Benjamin","malesuada.ut@dignissim.com","ECE","1995-12-17","C",5,"Ap #778-8322 Et Road");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (15,"Taylor Lawrence","Donec@consectetuer.net","EEE","1997-09-03","M",7,"Ap #840-2275 Nullam Road");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (16,"Whitney Stephens","quam@euduiCum.com","CIVIL","1996-09-01","J",8,"P.O. Box 153, 5287 Augue Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (17,"Charissa B. Dillon","pede@adipiscingfringilla.edu","EEE","2001-09-23","K",7,"Ap #948-3502 Imperdiet Road");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (18,"Russell Mayer","sit.amet.ultricies@rutrumloremac.edu","EEE","1995-11-25","K",7,"7602 Aenean Avenue");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (19,"Lawrence Ford","vitae@tellusnon.ca","CSE","2001-05-15","G",9,"2612 Lobortis. Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (20,"Chantale Phelps","Cras.sed.leo@feugiattellus.org","CSE","2001-06-18","I",8,"3538 Cras Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (21,"Erasmus Downs","ornare.Fusce.mollis@nibhvulputatemauris.org","ECE","2000-04-17","D",5,"3668 Lacus. St.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (22,"Dustin Gordon","aliquet.lobortis@malesuadafringillaest.org","ECE","2000-07-24","A",5,"849-1015 Quam. Ave");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (23,"Gray Owen","Sed.molestie.Sed@quis.ca","ECE","1996-07-09","I",10,"5574 Nam Ave");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (24,"Rafael Dennis","Phasellus.nulla.Integer@tortor.net","ECE","1998-03-08","N",6,"P.O. Box 849, 5862 Orci. Ave");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (25,"Kyle F. Gilmore","nec.luctus.felis@blanditmattis.com","MECH","2000-06-30","E",6,"Ap #213-6527 Ultrices. Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (26,"Alvin Medina","dolor.Quisque@vulputate.org","CIVIL","2001-07-16","E",8,"P.O. Box 384, 1450 Dictum St.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (27,"Ocean Snider","imperdiet.erat.nonummy@nisisem.com","CSE","1997-05-13","J",6,"4806 Odio St.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (28,"Yoshio Lee","risus.Quisque.libero@gravidanunc.com","EEE","1998-09-06","L",7,"Ap #544-3721 Nunc St.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (29,"Cailin T. Harrell","velit.Quisque.varius@afeugiattellus.org","MECH","1997-09-22","K",5,"3938 Dolor. St.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (30,"Emmanuel B. Gilliam","tincidunt.nunc.ac@dictum.net","CSE","2000-06-07","M",7,"2008 Suspendisse Av.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (31,"Chanda Parker","dui.Suspendisse.ac@nisiCum.ca","EEE","2000-08-17","L",5,"P.O. Box 362, 8982 Penatibus Av.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (32,"Justin Marks","ultrices.mauris.ipsum@nec.co.uk","CSE","1999-10-24","F",7,"Ap #436-2302 Accumsan Ave");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (33,"Anne Griffin","eu.eleifend.nec@diam.org","MECH","2000-07-25","J",6,"Ap #345-4823 Nec, Avenue");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (34,"Calvin D. Maldonado","vulputate.lacus@penatibuset.edu","CSE","1995-10-05","I",7,"P.O. Box 915, 1636 Cubilia St.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (35,"Tyrone Buckner","magna.Lorem@nislQuisque.net","MECH","2000-01-24","A",8,"602-3556 Donec Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (36,"Lars Delgado","lobortis@facilisisloremtristique.ca","MECH","1998-09-29","B",7,"P.O. Box 667, 2530 Justo Av.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (37,"Kelly Joseph","Praesent.eu.dui@Maecenasiaculisaliquet.net","CIVIL","1999-05-14","K",5,"398-9925 Donec Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (38,"Ignacia X. Shields","dictum.cursus.Nunc@Integermollis.co.uk","MECH","2001-04-11","I",10,"P.O. Box 526, 5654 Vulputate, Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (39,"Latifah E. English","ut.odio.vel@justo.com","EEE","2000-11-10","J",5,"792-9402 Interdum Avenue");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (40,"Hasad Z. Padilla","tincidunt.nunc.ac@blanditNamnulla.org","ECE","1998-07-18","K",8,"Ap #267-7153 Erat Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (41,"Aquila P. Fitzpatrick","nonummy.ipsum@eu.ca","EEE","1996-08-23","G",7,"3692 Nec Avenue");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (42,"Adena J. Skinner","dis.parturient.montes@Craspellentesque.com","ECE","1996-06-18","M",10,"9415 Sed Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (43,"Griffith Bird","In.mi@amet.com","EEE","1998-05-15","I",5,"P.O. Box 295, 187 Iaculis Av.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (44,"Patricia E. Wagner","ligula.Aenean.euismod@Donecconsectetuermauris.net","ECE","2000-05-12","G",10,"529-9843 Consectetuer Av.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (45,"Graham Wheeler","nascetur.ridiculus.mus@lobortisnisi.net","EEE","2001-04-21","I",6,"3718 Posuere St.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (46,"Carl K. Zamora","sagittis@Incondimentum.edu","CSE","1996-03-07","I",6,"437-4873 Magna St.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (47,"Iliana Trevino","Phasellus.ornare@interdumenimnon.net","MECH","1996-03-30","I",6,"771-2523 Sed St.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (48,"Harrison Russo","velit.eget.laoreet@nonummy.co.uk","CSE","1997-03-14","J",5,"P.O. Box 203, 393 Sollicitudin Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (49,"Lael Bell","Phasellus.libero@est.org","MECH","2001-04-17","A",9,"7281 Rhoncus. Road");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (50,"Oliver K. Hood","Pellentesque.ultricies.dignissim@risus.net","CIVIL","1996-04-07","L",10,"Ap #155-4665 Ante, Av.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (51,"Sonia D. Holt","amet.luctus@etmagnisdis.edu","ECE","1998-12-04","B",6,"P.O. Box 789, 1476 Pharetra. Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (52,"Xena Clark","sapien.Cras@posuereatvelit.org","EEE","1996-02-19","B",7,"9345 Vel Street");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (53,"Ursula Green","arcu.vel@odiosempercursus.org","CIVIL","1998-11-24","B",5,"Ap #902-6198 Ac Road");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (54,"Micah T. Duke","posuere.at.velit@auctor.net","CIVIL","2001-09-24","E",6,"P.O. Box 278, 3540 Curabitur Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (55,"Charles Buchanan","et@apurus.edu","CIVIL","1997-08-21","E",10,"Ap #948-2127 Faucibus Avenue");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (56,"George Pate","Aliquam@risus.co.uk","CIVIL","1998-02-24","H",6,"131-357 Suspendisse St.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (57,"Martena M. Cook","Duis@inaliquet.com","ECE","1997-05-21","K",9,"245-4677 Torquent Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (58,"Grady Bush","Praesent.eu@nislsemconsequat.co.uk","CSE","2000-06-21","F",6,"920-8633 Malesuada Road");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (59,"Adele W. Yang","nisl@arcuetpede.net","ECE","1999-02-03","E",7,"8982 Arcu Street");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (60,"Slade Guzman","fringilla@egettincidunt.org","ECE","1996-04-02","B",8,"7806 Imperdiet Avenue");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (61,"Odysseus Buchanan","Duis@Sed.edu","CIVIL","1995-10-20","G",5,"5988 Commodo Road");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (62,"Nolan H. Patton","dictum.magna@pulvinar.co.uk","EEE","2001-08-27","G",7,"127 Amet Avenue");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (63,"Reagan E. Hood","Proin@vitaerisus.ca","MECH","1996-01-29","E",9,"P.O. Box 292, 6344 Nostra, Avenue");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (64,"Craig Gentry","Sed.et.libero@et.edu","CIVIL","1999-05-14","G",5,"277-5409 Auctor Road");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (65,"Nelle P. Tillman","mauris.aliquam.eu@risusquis.com","CSE","1996-08-17","E",9,"P.O. Box 963, 8997 Feugiat. Av.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (66,"Uriah Baird","adipiscing@sapienNunc.edu","ECE","1998-12-31","G",10,"P.O. Box 472, 2805 Nec Road");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (67,"Ivy E. Jacobson","neque.Morbi@pede.net","CSE","1998-08-18","K",10,"7498 Dui. St.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (68,"Caldwell Morse","tempor@necquam.co.uk","EEE","1997-07-13","E",10,"Ap #950-2932 Cursus Ave");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (69,"Hasad E. Lucas","eget.laoreet@euismodmauris.ca","ECE","1998-12-09","F",8,"Ap #368-818 Tellus. Road");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (70,"Quinlan M. Moses","cubilia.Curae@rhoncusDonecest.net","EEE","1996-03-03","J",9,"P.O. Box 990, 5709 Ac Ave");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (71,"Simon T. Harper","commodo.tincidunt@lacinia.net","EEE","1995-11-18","B",5,"Ap #304-7433 Congue, Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (72,"Merritt Robertson","interdum.Curabitur@nonbibendum.org","EEE","2001-04-22","E",6,"542-2298 Quisque Av.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (73,"Armand B. Stone","risus.quis.diam@cursus.org","MECH","2001-03-01","K",8,"P.O. Box 189, 7247 Habitant St.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (74,"Guy Holland","tristique.aliquet.Phasellus@mauris.edu","CIVIL","1998-03-15","L",6,"P.O. Box 459, 7376 Dui Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (75,"Hasad Z. Mathews","nonummy.ac@massaMauris.ca","CSE","2000-01-14","D",7,"Ap #871-1241 Duis Street");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (76,"Gray Mckinney","nec.eleifend.non@infelisNulla.net","EEE","1997-01-19","B",5,"6925 Arcu. Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (77,"Caesar V. Pena","arcu.Sed@Nam.edu","MECH","1996-01-15","G",10,"994-1307 Magna. Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (78,"Micah Z. Schmidt","eu.nibh.vulputate@ornaresagittisfelis.net","EEE","1998-07-08","K",6,"P.O. Box 927, 6394 Ac Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (79,"Clementine R. Delacruz","lobortis.nisi.nibh@sodalespurusin.edu","MECH","1998-12-29","L",5,"5607 Sem, Road");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (80,"Gisela O. Bridges","facilisis.lorem.tristique@ut.co.uk","CIVIL","1995-10-10","K",5,"P.O. Box 363, 3329 Euismod St.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (81,"Cara Herrera","In.mi.pede@lacinia.ca","EEE","2000-08-22","F",9,"P.O. Box 415, 4521 Enim Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (82,"Xerxes Johns","nulla.ante@rhoncusNullam.edu","CSE","1998-05-29","C",7,"968-4242 Purus, Av.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (83,"Reuben X. Huff","vitae@pellentesque.co.uk","ECE","1999-07-31","C",6,"2867 Ligula. St.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (84,"Zephania P. Snow","id.erat.Etiam@Proinnonmassa.ca","EEE","1999-02-26","N",10,"Ap #568-6947 Ac, Road");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (85,"Nichole Burris","turpis.non.enim@feugiatnec.ca","MECH","2000-03-23","G",7,"3016 Turpis. St.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (86,"Hayes O. Maddox","tempus.non@necenim.co.uk","CSE","1996-12-22","A",5,"Ap #488-6937 Nec St.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (87,"Castor U. Bell","eu.dui.Cum@sit.com","CIVIL","2000-10-13","K",6,"P.O. Box 789, 9961 Ac Av.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (88,"Channing W. Leonard","magna.nec.quam@velitPellentesque.ca","MECH","2000-10-07","C",5,"Ap #683-7581 Eget St.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (89,"Kadeem G. Armstrong","nisi@quam.net","MECH","1999-04-01","N",5,"810-8544 Phasellus St.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (90,"Castor Vega","blandit.enim.consequat@eratvitae.ca","EEE","1996-01-04","H",7,"6700 Lorem Av.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (91,"Carly U. Frost","arcu.Morbi@volutpatNulla.co.uk","CSE","1996-03-31","J",9,"P.O. Box 727, 7409 Eget Avenue");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (92,"Sasha Stuart","vulputate@acmetusvitae.org","CIVIL","1997-06-25","C",9,"106-7782 Velit. Avenue");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (93,"Gloria Mcknight","quis.pede.Praesent@Nullamlobortisquam.net","CIVIL","2001-07-11","J",5,"670-1555 Tortor Road");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (94,"Samson Kirkland","Cras.lorem.lorem@eget.com","ECE","1998-09-28","F",9,"8723 Dictum Rd.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (95,"Arden J. Foley","consectetuer.mauris@aliquetdiamSed.org","EEE","1996-04-29","A",7,"Ap #450-118 Libero St.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (96,"Leo R. Holland","lacinia.vitae@seddictumeleifend.org","MECH","1997-10-16","I",5,"490-7070 Id, Av.");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (97,"Yvonne Francis","turpis.egestas@euarcu.net","ECE","1999-06-25","F",8,"191-8635 Scelerisque Ave");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (98,"Fatima Higgins","ac@quam.org","CSE","1996-03-02","E",8,"Ap #209-8184 Eget Street");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (99,"Beverly X. Barnes","ut@sagittisplaceratCras.com","MECH","1998-07-04","G",6,"827 Dui Road");
INSERT INTO `student` (`RollNo`,`studentName`,`email`,`department`,`birthDate`,`batch`,`CGPA`,`address`) VALUES (100,"Michelle F. Sharpe","placerat@Sedet.ca","MECH","1996-02-10","N",9,"P.O. Box 657, 2366 Euismod Av.");
-- --------------------------------------------------------

--
-- Table structure for table `student_has_course`
--

CREATE TABLE `student_has_course` (
  `Sno` int(10) NOT NULL,
  `studentID` varchar(9) NOT NULL,
  `teacherID` varchar(9) NOT NULL,
  `courseID` varchar(5) NOT NULL,
  `leavesTaken` int(11) DEFAULT NULL,
  `grade` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_has_course`
--

INSERT INTO `student_has_course` (`Sno`, `studentID`, `teacherID`, `courseID`, `leavesTaken`, `grade`) VALUES
(1, '9', '88', '51', 13, 'A'),
(2, '20', '58', '57', 2, 'E'),
(3, '95', '98', '93', 10, 'B'),
(4, '12', '12', '15', 15, 'E'),
(5, '44', '66', '76', 14, 'A'),
(6, '93', '94', '1', 0, 'D'),
(7, '58', '72', '30', 2, 'C'),
(8, '94', '54', '82', 15, 'D'),
(9, '67', '16', '64', 7, 'A'),
(10, '98', '14', '34', 1, 'D'),
(11, '55', '1', '6', 7, 'E'),
(12, '25', '42', '86', 20, 'C'),
(13, '61', '91', '58', 10, 'E'),
(14, '27', '25', '21', 19, 'E'),
(15, '21', '64', '98', 18, 'D'),
(16, '24', '20', '81', 10, 'D'),
(17, '73', '60', '55', 9, 'D'),
(18, '25', '2', '24', 1, 'C'),
(19, '89', '90', '49', 14, 'B'),
(20, '85', '4', '53', 16, 'C'),
(21, '56', '2', '24', 20, 'D'),
(22, '3', '5', '99', 16, 'E'),
(23, '60', '100', '3', 17, 'B'),
(24, '52', '17', '48', 10, 'D'),
(25, '36', '66', '43', 11, 'E');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_has_course`
--
ALTER TABLE `student_has_course`
  ADD PRIMARY KEY (`Sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_has_course`
--
ALTER TABLE `student_has_course`
  MODIFY `Sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


--
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