-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 13 2021 г., 12:06
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dhl_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `orderdhl`
--

CREATE TABLE `orderdhl` (
  `id` int NOT NULL,
  `fio` varchar(256) DEFAULT NULL,
  `email` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ct` varchar(25) DEFAULT NULL,
  `vp` varchar(23) DEFAULT NULL,
  `so` varchar(12) DEFAULT NULL,
  `gotp` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sp` varchar(12) DEFAULT NULL,
  `gp` varchar(100) DEFAULT NULL,
  `massage` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `orderdhl`
--

INSERT INTO `orderdhl` (`id`, `fio`, `email`, `ct`, `vp`, `so`, `gotp`, `sp`, `gp`, `massage`) VALUES
(1, 'Кирей Александр Евгеньевич', 'asasdasda@asdasa', '+375447947765', 'Перевозка свыше 3.5 т.', 'Беларусь', 'Могилёв', 'Россия', 'Москва', 'ыфвфывфывфывфв'),
(2, 'Андрюшин Владислав Игоревич', 'andrushin@mail.ru', '+375291111111', '1', '3', 'Минск', '1', 'Баку', '\r\ncxzcxzxczxczxczczczczczczxc                                        '),
(3, 'Андрюшин Владислав Игоревич', 'andrushin@mail.ru', '+375291111111', '1', '3', 'Минск', '1', 'Баку', '\r\ncxzcxzxczxczxczczczczczczxc                                        '),
(4, 'Пэун Кирилл Александрович', 'peun@yandex.ru', '+375291111111', '1', 'Азербайджан', 'Баку', 'Украина', 'Киев', 'ывфывфвфывфывфвыфыв\r\n                                        '),
(5, 'Пэун Кирилл Александрович', 'peun@yandex.ru', '+375291111111', '1', 'Азербайджан', 'Баку', 'Украина', 'Киев', 'ывфывфвфывфывфвыфыв\r\n                                        ');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `orderdhl`
--
ALTER TABLE `orderdhl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orderdhl`
--
ALTER TABLE `orderdhl`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
