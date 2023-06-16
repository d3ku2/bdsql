-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 16 2023 г., 08:06
-- Версия сервера: 10.4.25-MariaDB
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lib_bd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `administration`
--

CREATE TABLE `administration` (
  `issuance of books` date DEFAULT NULL,
  `Deadlines for the delivery of books` date DEFAULT NULL,
  `penalties` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `department`
--

CREATE TABLE `department` (
  `id` int(5) DEFAULT NULL,
  `department_name` varchar(25) DEFAULT NULL,
  `faculty_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `faculties`
--

CREATE TABLE `faculties` (
  `id` int(5) DEFAULT NULL,
  `faculty_name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `file cabinet`
--

CREATE TABLE `file cabinet` (
  `New editions` varchar(256) NOT NULL,
  `number of books` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `id` int(5) DEFAULT NULL,
  `id_faculty` int(5) DEFAULT NULL,
  `course` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `reader categories`
--

CREATE TABLE `reader categories` (
  `studens` int(5) NOT NULL,
  `Teachers` int(5) DEFAULT NULL,
  `Graduate students` int(5) DEFAULT NULL,
  `Assistants` int(5) DEFAULT NULL,
  `FPC listeners` int(5) DEFAULT NULL,
  `Interns` int(5) DEFAULT NULL,
  `Applicants` int(5) DEFAULT NULL,
  `One- time readers` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `reading rooms`
--

CREATE TABLE `reading rooms` (
  `Point of issue` text NOT NULL,
  `number of books` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `season tickets`
--

CREATE TABLE `season tickets` (
  `Point of issue` text NOT NULL,
  `interlibrary subscription` text DEFAULT NULL,
  `Number of books` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` int(5) DEFAULT NULL,
  `lastname` varchar(25) DEFAULT NULL,
  `firstname` varchar(25) DEFAULT NULL,
  `patronymic` varchar(25) NOT NULL,
  `group_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

CREATE TABLE `teachers` (
  `id` int(5) DEFAULT NULL,
  `lastname` varchar(25) DEFAULT NULL,
  `firstname` varchar(25) DEFAULT NULL,
  `patronymic` varchar(25) NOT NULL,
  `grade` varchar(25) NOT NULL,
  `department_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `reader categories`
--
ALTER TABLE `reader categories`
  ADD PRIMARY KEY (`studens`);

--
-- Индексы таблицы `reading rooms`
--
ALTER TABLE `reading rooms`
  ADD PRIMARY KEY (`Point of issue`(1));

--
-- Индексы таблицы `season tickets`
--
ALTER TABLE `season tickets`
  ADD PRIMARY KEY (`Point of issue`(1));

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`group_id`,`patronymic`(1));

--
-- Индексы таблицы `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`patronymic`,`grade`(1));
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
