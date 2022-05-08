-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 08 2022 г., 03:09
-- Версия сервера: 5.6.43
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `marlin`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(10) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(4) NOT NULL,
  `avatar` blob NOT NULL,
  `vk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telegram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `username`, `phone`, `address`, `job`, `status`, `avatar`, `vk`, `telegram`, `instagram`) VALUES
(1, 'you@site.ru', '123', 'user', '', 0, '', '', 0, '', '', '', ''),
(2, 'you@site.ru', '123', 'user', '', 0, '', '', 0, '', '', '', ''),
(3, 'you@site.ru', '123', 'user', '', 0, '', '', 0, '', '', '', ''),
(4, 'you@site.ru', '5555', 'user', '', 0, '', '', 0, '', '', '', ''),
(5, 'you@site.ru', '777', 'user', '', 0, '', '', 0, '', '', '', ''),
(6, 'you@site.ru', '123', 'user', '', 0, '', '', 0, '', '', '', ''),
(7, 'you@site.ru', '123', 'user', '', 0, '', '', 0, '', '', '', ''),
(8, 'you@site.ru', '123', 'user', '', 0, '', '', 0, '', '', '', ''),
(9, 'you@site.ru', '123', 'user', '', 0, '', '', 0, '', '', '', ''),
(10, 'you@site.ru', '123', 'user', '', 0, '', '', 0, '', '', '', ''),
(11, 'you@site.ru', '123', 'user', '', 0, '', '', 0, '', '', '', ''),
(12, 'you@site.ru', '123', 'user', '', 0, '', '', 0, '', '', '', ''),
(13, 'you@site.ru1212', '12312', 'user', '', 0, '', '', 0, '', '', '', ''),
(14, 'you@site.ru', '123', 'user', '', 0, '', '', 0, '', '', '', ''),
(15, 'you@site.ru', '12', 'user', '', 0, '', '', 0, '', '', '', ''),
(16, 'you@site.ru', '123', 'user', '', 0, '', '', 0, '', '', '', ''),
(17, 'you@site.ru', '123', 'user', '', 0, '', '', 0, '', '', '', ''),
(18, 'you@site.ru55', '123123', 'user', '', 0, '', '', 0, '', '', '', ''),
(19, 'you@site.ru56', '12414', 'user', '', 0, '', '', 0, '', '', '', ''),
(20, 'you@site.ru57', '45', 'user', '', 0, '', '', 0, '', '', '', ''),
(21, 'you@site.ru676767', '676767', 'user', '', 0, '', '', 0, '', '', '', ''),
(22, 'you@site.ru11111111', '12', 'user', '', 0, '', '', 0, '', '', '', ''),
(23, 'you@site.ru4343', '43434', 'user', '', 0, '', '', 0, '', '', '', ''),
(24, 'you@site.ru111', '123', 'user', '', 0, '', '', 0, '', '', '', ''),
(25, 'you@site.ruet3t34', '3434', 'user', '', 0, '', '', 0, '', '', '', ''),
(26, 'you@site.ruet3t344334', '343434', 'user', '', 0, '', '', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `workers`
--

CREATE TABLE `workers` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `workers`
--

INSERT INTO `workers` (`id`, `photo`, `login`, `role`, `gender`, `password`, `email`) VALUES
(1, '../uploads/6275964617341.jpg', 'Mark_9090', 'Администратор', '@mdo', '123456', 'ivan_11@example.com'),
(2, 'img/demo/authors/jovanni.png', 'Jacob', 'Thornton', '@fat', '', ''),
(3, 'img/demo/authors/roberto.png', 'Larry', 'the Bird', '@twitter', '', ''),
(4, 'img/demo/authors/sunny.png', 'Larry the Bird', 'Bird', '@twitter', '', ''),
(5, '../uploads/6275962495a3d.jpg', '777', 'Контент-менеджер', '', '123', 'you@site.ru'),
(27, '../uploads/6275995516cba.jpg', '14', 'Обычный пользователь', '', '14', 'you@site.ru'),
(28, '../uploads/62759bb680e7e.jpg', 'Джон', 'Контент-менеджер', '', '2123', 'you@site.ru'),
(35, '../uploads/6276075a2bff6.jpg', 'Петрович', 'Администратор', '', '', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `workers`
--
ALTER TABLE `workers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
