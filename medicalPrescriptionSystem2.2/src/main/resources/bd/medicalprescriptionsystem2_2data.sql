-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Июл 20 2021 г., 18:19
-- Версия сервера: 5.7.24
-- Версия PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `medicalprescriptionsystem2.2data`
--

-- --------------------------------------------------------

--
-- Структура таблицы `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(8);

-- --------------------------------------------------------

--
-- Структура таблицы `patient_code`
--

CREATE TABLE `patient_code` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `patient_code`
--

INSERT INTO `patient_code` (`id`, `code`, `user_id`) VALUES
(5, '111Yuu78', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `patient_prescription`
--

CREATE TABLE `patient_prescription` (
  `id` int(11) NOT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `doctor_name` varchar(255) DEFAULT NULL,
  `drug_name` varchar(255) DEFAULT NULL,
  `enddate` varchar(255) DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `code_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `patient_prescription`
--

INSERT INTO `patient_prescription` (`id`, `birthday`, `doctor_name`, `drug_name`, `enddate`, `place_of_birth`, `start_date`, `user_id`, `code_id`) VALUES
(6, '1994-02-20', 'Иванчук Светлана Петровна', 'аспирин', '2021-07-31', 'Саратов, Московская улица, дом 10, кв 5', '2021-07-20', 4, 5),
(7, '2021-07-09', 'Иванчук Светлана Петровна', 'Активированный уголь', '2021-07-31', 'Саратов, Московская улица, дом 10, кв 5', '2021-07-20', 4, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `active` bit(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `active`, `password`, `username`) VALUES
(1, b'1', 'qwerty', 'Петров Дмитрий Петрович'),
(2, b'1', 'qqq', 'Иванчук Светлана Петровна'),
(3, b'1', 'ццццц', 'Павлова Елена Тимофеевна'),
(4, b'1', 'ууу', 'Кранов Георгий Дмитриевич');

-- --------------------------------------------------------

--
-- Структура таблицы `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `roles` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_role`
--

INSERT INTO `user_role` (`user_id`, `roles`) VALUES
(1, 'ADMIN'),
(2, 'DOCTOR'),
(3, 'PHARMACIST'),
(4, 'PATIENT');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `patient_code`
--
ALTER TABLE `patient_code`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3k5cnhh7w9fpqol93jgp2inrx` (`user_id`);

--
-- Индексы таблицы `patient_prescription`
--
ALTER TABLE `patient_prescription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK894til533ep9mk0c82gb7d346` (`user_id`),
  ADD KEY `FK454mdrsg9095v4tb08krh0qxd` (`code_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `FK859n2jvi8ivhui0rl0esws6o` (`user_id`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `patient_code`
--
ALTER TABLE `patient_code`
  ADD CONSTRAINT `FK3k5cnhh7w9fpqol93jgp2inrx` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `patient_prescription`
--
ALTER TABLE `patient_prescription`
  ADD CONSTRAINT `FK454mdrsg9095v4tb08krh0qxd` FOREIGN KEY (`code_id`) REFERENCES `patient_code` (`id`),
  ADD CONSTRAINT `FK894til533ep9mk0c82gb7d346` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
