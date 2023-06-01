-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 01 2023 г., 17:49
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_wsr`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `category` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`category_id`, `category`) VALUES
(1, 'Лазерный принтер'),
(2, 'Струйный принтер'),
(3, 'Термопринтер');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `number` int DEFAULT NULL,
  `count` int DEFAULT NULL,
  `status` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`order_id`, `product_id`, `user_id`, `number`, `count`, `status`, `reason`, `created_at`, `updated_at`) VALUES
(17, 0, 2, 1387869029, 1, 'Новый', NULL, '2022-02-17 10:15:08', '2022-02-17 10:15:08');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `country` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int NOT NULL,
  `model` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int NOT NULL,
  `path` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`product_id`, `name`, `price`, `country`, `year`, `model`, `category`, `count`, `path`, `created_at`) VALUES
(1, 'Обычный принтер', 345, 'Япония', 2023, 'Обычный', 'Лазерный принтер', 0, 'images/N4K99C.jpg', '2023-06-02 00:38:58'),
(3, 'Необычный принтер', 4000, 'Швеция', 2022, 'Необычный', 'Лазерный принтер', 48, 'images/N4K99C.jpg', '2023-06-02 00:38:58'),
(4, 'Уникальный принтер', 500, 'Италия', 2022, 'Обычный', 'Струйный принтер', 0, 'images/N4K99C.jpg', '2023-06-02 00:38:58'),
(5, 'Принтер принтер', 532, 'Голландия', 2021, 'Необычный', 'Лазерный принтер', 57, 'images/N4K99C.jpg', '2023-06-02 00:38:58'),
(6, 'Квалиф принтер', 40643, 'Россия', 2021, 'Обычный', 'Термопринтер', 11, 'images/N4K99C.jpg', '2023-06-02 00:38:58'),
(7, 'Рубцовый принтер', 41210, 'Россия', 2021, 'Необычный', 'Лазерный принтер', 647, 'images/N4K99C.jpg', '2023-06-02 00:38:58'),
(8, 'Словесный принтер', 110, 'Колечия', 2020, 'Обычный', 'Термопринтер', 55, 'images/N4K99C.jpg', '2023-06-02 00:38:58'),
(9, 'Первый принтер', 5320, 'Арстоцка', 2020, 'Необычный', 'Лазерный принтер', 4, 'images/N4K99C.jpg', '2023-06-02 00:38:58'),
(10, 'Второй принтер', 564, 'Арстоцка', 2020, 'Обычный', 'Струйный принтер', 32, 'images/N4K99C.jpg', '2023-06-02 00:38:58'),
(11, 'Десятый принтер', 927, 'Колечия', 2019, 'Необычный', 'Лазерный принтер', 1, 'images/N4K99C.jpg', '2023-06-02 00:38:58'),
(12, 'Кашерный принтер', 624, 'СССР', 2019, 'Обычный', 'Струйный принтер', 87, 'images/N4K99C.jpg', '2023-06-02 00:38:58'),
(13, 'Дефор принтер', 912, 'Германия', 2019, 'Необычный', 'Лазерный принтер', 24, 'images/N4K99C.jpg', '2023-06-02 00:38:58'),
(14, 'Пригодный принтер', 9673, 'Италия', 2018, 'Обычный', 'Термопринтер', 32, 'images/N4K99C.jpg', '2023-06-02 00:38:58'),
(15, 'Принтер принтеров', 5715, 'Швеция', 2018, 'Необычный', 'Лазерный принтер', 95, 'images/N4K99C.jpg', '2023-06-02 00:38:58'),
(16, 'Да принтер', 4324, 'Япония', 2018, 'Обычный', 'Термопринтер', 117, 'images/N4K99C.jpg', '2023-06-02 00:38:58'),
(17, 'Нет принтер', 1321, 'Россия', 2017, 'Необычный', 'Лазерный принтер', 7, 'images/N4K99C.jpg', '2023-06-02 00:38:58'),
(18, 'Выбор принтер', 551, 'СССР', 2017, 'Обычный', 'Струйный принтер', 2, 'images/N4K99C.jpg', '2023-06-02 00:38:58'),
(19, 'Ключ принтер', 2135, 'Голландия', 2017, 'Необычный', 'Лазерный принтер', 3, 'images/N4K99C.jpg', '2023-06-02 00:38:58'),
(20, 'Умозаключ принтер', 6463, 'Германия', 2016, 'Обычный', 'Термопринтер', 4, 'images/N4K99C.jpg', '2023-06-02 00:38:58'),
(21, 'Обычный обычный', 431, 'Bruh', 2016, 'Необычный', 'Лазерный принтер', 5, 'images/N4K99C.jpg', '2023-06-02 00:38:58');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `name`, `surname`, `patronymic`, `login`, `email`, `password`, `role`) VALUES
(1, 'Админ', 'Админ', 'Админ', 'admin', '1@1', 'admin11', 'admin'),
(2, 'Пользователь', 'Пользователь', 'Пользователь', 'user', '1@1', 'user11', 'client');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
