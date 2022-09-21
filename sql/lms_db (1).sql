-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2022 at 05:16 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `admin_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `admin_pass` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'Admin ', 'admin@gmail.com', 'admin'),
(2, 'naqiyah miyaji', 'naqiyah@gmail.com', 'naqiyah11');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8_bin NOT NULL,
  `course_desc` text COLLATE utf8_bin NOT NULL,
  `course_author` varchar(255) COLLATE utf8_bin NOT NULL,
  `course_img` text COLLATE utf8_bin NOT NULL,
  `course_duration` text COLLATE utf8_bin NOT NULL,
  `course_price` int(11) NOT NULL,
  `course_original_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_author`, `course_img`, `course_duration`, `course_price`, `course_original_price`) VALUES
(9, 'Complete PHP Bootcamp', 'This course will help you get all the Object Oriented PHP, MYSQLi and ending the course by building a CMS system.', 'Rajesh Kumar', '../image/courseimg/php.jpg', '3 Months', 700, 1700),
(10, 'Learn Python A-Z', 'This is the most comprehensive, yet straight-forward, course for the Python programming language.', 'Rahul Kumar', '../image/courseimg/Python.jpg', '4 Months', 800, 1800),
(11, 'Hands-on Artificial Intelligence', 'Learn and Master how AI works and how it is changing our lives in this Course.\r\nlives in this Course.', 'Jay Veeru', '../image/courseimg/ai.jpg', '6 Months', 900, 1900),
(12, 'Learn Vue JS', 'The skills you will learn from this course is applicable to the real world, so you can go ahead and build similar app.', 'Jay Shukla', '../image/courseimg/vue.jpg', '2 Months', 100, 1000),
(13, 'Angular JS', 'Angular is one of the most popular frameworks for building client apps with HTML, CSS and TypeScript.', 'Sonam Gupta', '../image/courseimg/angular.jpg', '4 Month', 800, 1600),
(16, 'Python Complete', 'This is complete Python COurse', 'RK', '../image/courseimg/Python.jpg', '4 hours', 500, 4000),
(17, 'Learn React Native', 'THis is react native for android and iso app development', 'GeekyShows', '../image/courseimg/Machine.jpg', '2 months', 200, 3000),
(18, 'Internet Of Things', 'The Internet of things describes physical objects with sensors, processing ability, software, and other technologies that connect and exchange data with other devices and systems over the Internet or other communications networks', 'Mrs. Shalini Mathur', '../image/Iot-cover-image.gif', '5 months', 5600, 7500),
(19, 'C Programming', 'C programming is a general-purpose, procedural, imperative computer programming language developed in 1972 by Dennis M. Ritchie at the Bell Telephone Laboratories to develop the UNIX operating system. C is the most widely used computer language.', 'Mr. Ashutosh Verma', '../image/2460146_bc81_4.jpg', '2 Months', 3550, 5000),
(20, 'Web development ', 'Web development is the work involved in developing a website for the Internet or an intranet. Web development can range from developing a simple single static page of plain text to complex web applications, electronic businesses, and social network services.', 'Ms. Hira Salman', '../image/course-web1.png', '3.5 Months', 4400, 6500),
(21, 'Java (Full Advance Course)', 'Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible.', 'Mr. Jayesh Pathak', '../image/java.jpg', '6 Months', 6500, 7500),
(22, 'Cyber Security', 'Cyber security is the application of technologies, processes and controls to protect systems, networks, programs, devices and data from cyber attacks. It aims to reduce the risk of cyber attacks and protect against the unauthorised exploitation of systems, networks and technologies.', 'Mr. Maria D\'Souza', '../image/cyber.png', '6 Months', 5000, 7000),
(23, 'Android Development', 'Android software development is the process by which applications are created for devices running the Android operating system. Google states that \"Android apps can be written using Kotlin, Java, and C++ languages\" using the Android software development kit, while using other languages is also possible.', 'Mr. Aaryan D\'Mello', '../image/and.png', '3 Months', 3550, 4400);

-- --------------------------------------------------------

--
-- Table structure for table `courseorder`
--

CREATE TABLE `courseorder` (
  `co_id` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_bin NOT NULL,
  `respmsg` text COLLATE utf8_bin NOT NULL,
  `amount` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `courseorder`
--

INSERT INTO `courseorder` (`co_id`, `order_id`, `stu_email`, `course_id`, `status`, `respmsg`, `amount`, `order_date`) VALUES
(3, 'ORDS98956453', 'ant@example.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2019-09-12'),
(7, 'ORDS57717951', 'jay@ischool.com', 14, 'TXN_SUCCESS', 'Txn Success', 400, '2019-09-13'),
(8, 'ORDS22968322', 'mario@ischool.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2019-09-13'),
(9, 'ORDS78666589', 'ignou@ischool.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2019-09-19'),
(10, 'ORDS59885531', 'sonam@gmail.com', 10, 'TXN_SUCCESS', 'Txn Success', 800, '2020-07-04'),
(11, 'ORDS64545773', 'naqiyahmiyaji52@gmail.com', 10, 'Success', 'Done', 800, '2009-05-22'),
(12, 'ORDS13059594', 'naqiyahmiyaji52@gmail.com', 9, 'Success', 'Done', 700, '2016-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_content` text COLLATE utf8_bin NOT NULL,
  `stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_content`, `stu_id`) VALUES
(3, 'My life at Learnster made me stronger and took me a step ahead for being an independent women. I am thankful to all the teachers who supported us and corrected us throughout our career. I am very grateful to the Learnster for providing us the best of placement opportunities and finally I got placed in DC Marvel.', 171),
(8, 'I am grateful to Learnster - both the faculty and the Training & Placement Department. They have made efforts ensuring maximum number of placed students. Due to the efforts made by the faculty and placement cell. I was able to bag a job in the second company.', 172),
(9, 'Learnster is a place of learning, fun, culture, lore, literature and many such life preaching activities. Studying at the Learnster brought an added value to my life.', 173),
(10, 'Think Magical, that is one thing that Learnster urges in and to far extent succeed in teaching to its students which invariably helps to achieve what you need.', 174),
(12, 'Knowledge is power. Information is liberating. Education is the premise of progress, in every society, in every family.', 180);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text COLLATE utf8_bin NOT NULL,
  `lesson_desc` text COLLATE utf8_bin NOT NULL,
  `lesson_link` text COLLATE utf8_bin NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`, `course_name`) VALUES
(32, 'Introduction to Python ', 'Introduction to Python Desc', '../lessonvid/pyvid1.mp4', 10, 'Learn Python A-Z'),
(33, 'How Python Works', 'How Python Works Descc', '../lessonvid/vid1.mp4', 10, 'Learn Python A-Z'),
(34, 'Why Python is powerful', 'Why Python is powerful Desc', '../lessonvid/pyvid1.mp4', 10, 'Learn Python A-Z'),
(35, 'Everyone should learn Python ', 'Everyone should learn Python  Desccc', '../lessonvid/vid1.mp4', 10, 'Learn Python A-Z'),
(36, 'Introduction to PHP', 'Introduction to PHP Desc', '../lessonvid/php.mp4', 9, 'Complete PHP Bootcamp'),
(37, 'How PHP works', 'How PHP works Desc', '../lessonvid/php.mp4', 9, 'Complete PHP Bootcamp'),
(38, 'is PHP really easy ?', 'is PHP really easy ? desc', '../lessonvid/php.mp4', 9, 'Complete PHP Bootcamp'),
(41, 'Intro Hands-on Artificial Intelligence', 'Intro Hands-on Artificial Intelligence desc', '../lessonvid/AI.mp4', 11, 'Hands-on Artificial Intelligence'),
(42, 'How it works', 'How it works descccccc', '../lessonvid/AI.mp4', 11, 'Hands-on Artificial Intelligence'),
(43, 'Inro Learn Vue JS', 'Inro Learn Vue JS desc', '../lessonvid/vue.mp4', 12, 'Learn Vue JS'),
(44, 'intro Angular JS', 'intro Angular JS desc', '../lessonvid/vue.mp4', 13, 'Angular JS'),
(48, 'Intro to Python Complete', 'This is lesson number 1', '../lessonvid/pyvid2.mp4', 16, 'Python Complete'),
(49, 'Introduction to React Native', 'This intro video of React native', '../lessonvid/vue.mp4', 17, 'Learn React Native');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_pass` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_occ` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_img` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_email`, `stu_pass`, `stu_occ`, `stu_img`) VALUES
(171, 'karan joshi', 'cap@example.com', '123456', ' android developer', '../image/stu/student2.jpg'),
(172, 'Anant Mahajan\r\n', 'ant@example.com', '123456', ' Web Developer', '../image/stu/student4.jpg'),
(173, ' Suresh pathak', 'suresh@example.com', '123456', ' Web Developer', '../image/stu/student1.jpg'),
(174, 'Scarlet Gary', 'gary@example.com', '123456', 'Web Designer', '../image/stu/student3.jpg'),
(176, ' Shakti thakur', 'shaktit@ischool.com', '123456', 'Software ENgg', '../image/stu/shaktiman.jpg'),
(178, ' mukesh singh', 'mukesh@ischool.com', '1234567', ' Web Dev', '../image/stu/super-mario-2690254_1280.jpg'),
(182, ' sonam', 'sonam@gmail.com', '123456', ' Web Dev', '../image/stu/student2.jpg'),
(183, ' Naqiyah Miyaji', 'naqiyahmiyaji52@gmail.com', 'naqiyah', ' Student', '../image/stu/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `courseorder`
--
ALTER TABLE `courseorder`
  ADD PRIMARY KEY (`co_id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `courseorder`
--
ALTER TABLE `courseorder`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
