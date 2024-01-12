-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 12, 2024 at 03:31 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizz`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int NOT NULL,
  `id_questions` int NOT NULL,
  `content` varchar(255) NOT NULL,
  `good_answer` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `id_questions`, `content`, `good_answer`) VALUES
(1, 1, 'Barcelone', 0),
(2, 1, 'Lisbonne', 0),
(3, 1, 'Séville', 0),
(4, 1, 'Madrid', 1),
(5, 3, 'Sydney', 0),
(6, 3, 'Melbourne', 0),
(7, 3, 'Canberra', 1),
(8, 3, 'Brisbane', 0),
(9, 5, 'Berlin', 1),
(10, 5, 'Munich', 0),
(11, 5, 'Hambourg', 0),
(12, 5, 'Francfort', 0),
(13, 7, 'Saint-Pétersbourg', 0),
(14, 7, 'Moscou', 1),
(15, 7, 'Kiev', 0),
(16, 7, 'Minsk', 0),
(17, 9, 'Kaboul', 1),
(18, 9, 'Islamabad', 0),
(19, 9, 'Téhéran', 0),
(20, 9, 'Bagdad', 0),
(21, 12, 'Alexandrie', 0),
(22, 12, 'Gizeh', 0),
(23, 12, 'Le Caire', 1),
(24, 12, 'Louxor', 0),
(25, 13, 'Thessalonique', 0),
(26, 13, 'Athènes', 1),
(27, 13, 'Patras', 0),
(28, 13, 'Heraklion', 0),
(29, 15, 'Almaty', 0),
(30, 15, 'Astana', 1),
(31, 15, 'Karaganda', 0),
(32, 15, 'Atyrau', 0),
(33, 16, 'Thimphu', 1),
(34, 16, 'Katmandou', 0),
(35, 16, 'Dacca', 0),
(36, 16, 'Colombo', 0),
(37, 17, 'Paramaribo', 1),
(38, 17, 'Cayenne', 0),
(39, 17, 'Georgetown', 0),
(40, 17, 'Willemstad', 0);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `question` varchar(255) NOT NULL,
  `difficulty` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `difficulty`) VALUES
(1, 'Quelle est la capitale de l\'Espagne ?', 1),
(3, 'Quelle est la capitale de l\'Australie ?', 1),
(5, 'Quelle est la capitale de l\'Allemagne ?', 1),
(7, 'Quelle est la capitale de la Russie ?', 2),
(9, 'Quelle est la capitale de l\'Afghanistan ?', 2),
(12, 'Quelle est la capitale de l\'Égypte ?', 2),
(13, 'Quelle est la capitale de la Grèce ?', 2),
(15, 'Quelle est la capitale du Kazakhstan ?', 3),
(16, 'Quelle est la capitale du Bhoutan ?', 3),
(17, 'Quelle est la capitale du Suriname ?', 3);

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int NOT NULL,
  `score` int NOT NULL,
  `id_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `score`, `id_user`) VALUES
(1, 7, 1),
(2, 5, 2),
(3, 6, 3),
(4, 0, 1),
(5, 0, 1),
(6, 9, 6),
(7, 0, 6),
(8, 0, 7),
(9, 6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `pseudo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `pseudo`) VALUES
(1, 'test'),
(2, 'test 1'),
(3, 'test 2'),
(4, 'test2'),
(5, 'biloute'),
(6, 'Vincent'),
(7, 'Kamel'),
(8, 'alexis');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_questions` (`id_questions`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`id_questions`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
