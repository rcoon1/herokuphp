-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: sql.freedb.tech
-- Generation Time: Feb 05, 2024 at 12:17 AM
-- Server version: 8.0.36-0ubuntu0.22.04.1
-- PHP Version: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freedb_jokesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `Jokes_table`
--

CREATE TABLE `Jokes_table` (
  `JokeID` int NOT NULL,
  `Joke_question` varchar(500) NOT NULL,
  `Joke_answer` varchar(500) NOT NULL,
  `user_id` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Jokes_table`
--

INSERT INTO `Jokes_table` (`JokeID`, `Joke_question`, `Joke_answer`, `user_id`) VALUES
(1, 'What time is it when an elephant sits on your fence?', 'It\'s time to buy a new fence.', '13'),
(3, 'Why did the chicken cross the road?', 'To get to the other side.', '15'),
(4, 'What did the mother buffalo say to her son when she dropped him off at school?', 'Bison', '16'),
(5, 'Why did the chicken cross the playground?', 'To get to the other slide.', '13'),
(6, 'What happens to a frog\'s car when it breaks down?', 'It gets toad.', '15'),
(7, 'How does a frog start his car when the battery is dead?', 'He gets a jump start.', '16'),
(10, 'what to hear a joke?', 'Your life', '13'),
(17, 'Why can\'t you trust an atom?', 'They make up everything.', '15'),
(18, 'My sister bet me $100 that I couldn\'t make a car out of spagetti', 'You should have seen the look on her face when I drove pasta.', '16'),
(19, 'Where do animals go when their tail falls off?', 'The retail store.', '23'),
(22, 'Why couldn\'t the sunflower ride its bike?', 'It lost its petals.', '24'),
(23, 'rgui', 'sdfg', ''),
(24, 'Why couldn\'t the sunflower ride its bike?', 'It lost its petals.', '25'),
(25, 'Why couldn\'t the sunflower ride its bike?', 'It lost its petals.', '25'),
(26, 'sdf', 'sadf', '25'),
(27, 'Why did the chicken cross the road?', 'To get to the other side.', '25'),
(28, 'dsgbh', 'gh', '26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `google_id` varchar(200) NOT NULL,
  `google_name` varchar(200) NOT NULL,
  `google_email` varchar(200) NOT NULL,
  `google_picture_link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`, `google_id`, `google_name`, `google_email`, `google_picture_link`) VALUES
(13, 'bill', 'password', '', '', '', ''),
(15, 'kim', 'password', '', '', '', ''),
(16, '   don   ', 'don', '', '', '', ''),
(17, 'bob', ' bob ', '', '', '', ''),
(18, ' melinda ', 'm', '', '', '', ''),
(19, 'jim', 'jim', '', '', '', ''),
(23, 'obama', 'password', '', '', '', ''),
(24, 'rcoon', '!@#$%^&*()1', '', '', '', ''),
(25, 'ryan', 'abc', '', '', '', ''),
(26, '', '', '100349383032692503865', 'Ryan Coon', 'coonr353@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocJ2okV4QHU2f-x1NmktiwPsBjmsh5LpBJV7XjgSWSNC=s96-c'),
(27, '', '', '100349383032692503865', 'Ryan Coon', 'coonr353@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocJ2okV4QHU2f-x1NmktiwPsBjmsh5LpBJV7XjgSWSNC=s96-c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Jokes_table`
--
ALTER TABLE `Jokes_table`
  ADD PRIMARY KEY (`JokeID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Jokes_table`
--
ALTER TABLE `Jokes_table`
  MODIFY `JokeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
