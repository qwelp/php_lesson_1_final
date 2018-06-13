-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 14 2018 г., 00:21
-- Версия сервера: 5.6.38
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lesson1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ordering`
--

CREATE TABLE `ordering` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `address` text,
  `comment` text,
  `home` int(11) DEFAULT NULL,
  `part` int(11) DEFAULT NULL,
  `appt` int(11) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `payment` tinyint(1) DEFAULT NULL,
  `callback` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ordering`
--

INSERT INTO `ordering` (`id`, `id_user`, `address`, `comment`, `home`, `part`, `appt`, `floor`, `payment`, `callback`) VALUES
(1, 5, 'Улица', 'Комментарий', 1, 0, 2, 3, 1, 1),
(2, 5, 'Улица', 'Комментарий', 1, 0, 2, 3, 1, 0),
(3, 33, '', '', 0, 0, 0, 0, 0, 0),
(4, 33, '', '', 0, 0, 0, 0, 0, 0),
(5, 33, '', '', 0, 0, 0, 0, 0, 0),
(6, 33, '', '', 0, 0, 0, 0, 0, 0),
(7, 3, '', 'dsfsdf', 1, 2, 3, 4, 0, 1),
(8, 3, '', '', 0, 0, 0, 0, 0, 0),
(9, 3, '', '', 0, 0, 0, 0, 0, 0),
(10, 3, '', '', 0, 0, 0, 0, 0, 0),
(11, 3, 'sdf', 'dsf', 34, 34, 34, 234, 1, 1),
(12, 3, 'sdf', 'dsf', 34, 34, 34, 234, 1, 1),
(13, 3, 'sdf', 'dsf', 34, 34, 34, 234, 1, 1),
(14, 3, 'sdf', 'dsf', 34, 34, 34, 234, 1, 1),
(15, 3, 'sdf', 'dsf', 34, 34, 34, 234, 1, 1),
(16, 3, 'sdf', 'dsf', 34, 34, 34, 234, 1, 1),
(17, 3, 'sdf', 'dsf', 34, 34, 34, 234, 1, 1),
(18, 3, 'sdf', 'dsf', 34, 34, 34, 234, 1, 1),
(19, 3, 'sdf', 'dsf', 34, 34, 34, 234, 1, 1),
(20, 3, 'sdf', 'dsf', 34, 34, 34, 234, 1, 1),
(21, 3, 'sdf', 'dsf', 34, 34, 34, 234, 1, 1),
(22, 3, 'sdf', 'dsf', 34, 34, 34, 234, 1, 1),
(23, 3, 'sdf', 'dsf', 34, 34, 34, 234, 1, 1),
(24, 3, 'sdf', 'dsf', 34, 34, 34, 234, 1, 1),
(25, 3, 'sdf', 'dsf', 34, 34, 34, 234, 1, 1),
(26, 3, 'sdf', 'dsf', 34, 34, 34, 234, 1, 1),
(27, 3, 'sdf', 'dsf', 34, 34, 34, 234, 1, 1),
(28, 3, 'sdf', 'dsf', 34, 34, 34, 234, 1, 1),
(29, 3, 'sdf', 'dsf', 34, 34, 34, 234, 1, 1),
(30, 3, 'sdf', 'dsf', 34, 34, 34, 234, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`) VALUES
(1, 'Имя ', 'емаил', '1234567'),
(2, 'Bob', 'Desaunois', '18'),
(3, 'dd', 'qwelp@mail.ru', '7'),
(5, 'dd', 'qwelp@mdail.ru', '7'),
(6, NULL, NULL, NULL),
(33, '', '', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ordering`
--
ALTER TABLE `ordering`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_uindex` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ordering`
--
ALTER TABLE `ordering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
