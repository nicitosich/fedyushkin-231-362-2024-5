-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 13 2024 г., 00:55
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lab_5db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `term` varchar(255) NOT NULL,
  `definition` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `terms`
--

INSERT INTO `terms` (`id`, `term`, `definition`) VALUES
(1, 'API (Application Programming Interface)', 'Интерфейс, предоставляющий набор функций для взаимодействия программных приложений.'),
(2, 'DNS (Domain Name System)', 'Система, преобразующая доменные имена в IP-адреса.'),
(3, 'HTTP (HyperText Transfer Protocol)', 'Протокол передачи данных, используемый для связи между веб-браузерами и серверами.'),
(4, 'CSS (Cascading Style Sheets)', 'Язык описания стилей, используемый для оформления веб-страниц.'),
(5, 'JavaScript', 'Язык программирования, который используется для создания интерактивности на веб-страницах.'),
(6, 'Cloud Computing', 'Технология предоставления вычислительных ресурсов через интернет.'),
(7, 'Version Control (Контроль версий)', 'Система, позволяющая управлять изменениями в коде и других файлах проекта.'),
(8, 'Database', 'Организованная коллекция данных, доступная для хранения, поиска и управления.'),
(9, 'Encryption (Шифрование)', 'Процесс преобразования данных в форму, защищающую их от несанкционированного доступа.'),
(10, 'Machine Learning', 'Подраздел искусственного интеллекта, связанный с обучением систем на основе данных.');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
