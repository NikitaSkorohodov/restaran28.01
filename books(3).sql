-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 28 2023 г., 22:44
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `books`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'salat'),
(2, 'drink'),
(3, 'y'),
(4, 'dissert'),
(5, 'soup'),
(6, 'cream'),
(7, 'a');

-- --------------------------------------------------------

--
-- Структура таблицы `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `publishedDate` date DEFAULT NULL,
  `thumbnailUrl` varchar(255) DEFAULT NULL,
  `shortDescription` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `food`
--

INSERT INTO `food` (`id`, `title`, `publishedDate`, `thumbnailUrl`, `shortDescription`) VALUES
(3, 'orange pey', '0000-00-00', 'apny', 'apny'),
(4, 'orange jelly', '0000-00-00', 'any', 'any'),
(5, 'bob soup', '0000-00-00', 'any', 'soup with bobs'),
(6, 'fish soup', '0000-00-00', 'https://www.simplyrecipes.com/recipes/dads_fish_stew/', 'One of our favorite family recipes of all time is this simple and easy fish stew. It takes fewer than 30 minutes from start to finish, and is absolutely delicious! '),
(7, 'apple juse', '2023-11-26', 'https://example.com/thumbnail.jpg', 'Краткое описание вашей книги'),
(8, 'apple jelly', '2023-11-26', 'https://example.com/thumbnail.jpg', 'aj'),
(9, 'orange ise cream', '0000-00-00', 'any', 'any'),
(10, 'fruit cacke', '2023-11-27', 'https://example.com/thumbnail.jpg', 'Краткое описание'),
(11, 'fruit ice', '2023-11-27', 'https://example.com/thumbnail.jpg', 'Краткое описание вашей книги'),
(12, 'fruit ice', '2023-11-27', 'https://example.com/thumbnail.jpg', 'Краткое описание вашей книги'),
(13, 'fruit ice cream', '0000-00-00', 'any', 'any'),
(20, 'fish salat', '0000-00-00', 'https://www.kosher.com/recipe/fish-salad-4678', 'Creamy white fish salad is a protein-packed matza topper or starter. Does not take long at all to make this recipe. Courtesy of the Women’s Branch of the OU.');

-- --------------------------------------------------------

--
-- Структура таблицы `foodcategory`
--

CREATE TABLE `foodcategory` (
  `BookId` int(11) NOT NULL,
  `CategoryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `foodcategory`
--

INSERT INTO `foodcategory` (`BookId`, `CategoryId`) VALUES
(3, 4),
(4, 4),
(5, 5),
(6, 5),
(9, 4),
(20, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`) VALUES
(1, 'apple'),
(2, 'n'),
(3, 'y'),
(4, 'orange'),
(5, 'bobs'),
(6, 'fish'),
(7, 'cream'),
(8, 'a');

-- --------------------------------------------------------

--
-- Структура таблицы `recipe`
--

CREATE TABLE `recipe` (
  `BookId` int(11) NOT NULL,
  `AuthorId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `recipe`
--

INSERT INTO `recipe` (`BookId`, `AuthorId`) VALUES
(3, 4),
(4, 4),
(5, 5),
(6, 6),
(7, 1),
(8, 1),
(9, 4),
(9, 7),
(20, 5),
(20, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `RoleID` int(11) NOT NULL,
  `RoleName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`RoleID`, `RoleName`) VALUES
(1, 'user'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `userroles`
--

CREATE TABLE `userroles` (
  `UserRoleID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `RoleID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `userroles`
--

INSERT INTO `userroles` (`UserRoleID`, `UserID`, `RoleID`) VALUES
(2, 4, 1),
(3, 5, 1),
(4, 6, 1),
(5, 7, 2),
(6, 8, 1),
(7, 9, 2),
(8, 10, 1),
(9, 11, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`UserID`, `UserName`, `Email`, `PasswordHash`) VALUES
(2, 'kikгы', 'kikгы@gmail.com', '$2b$10$.voEA0qIcdnkqZOy2x1YZuLq5MkHwg65QO0qZ.IvBZKhfQ6wruG8.'),
(4, 'n', 'n@example.com', '$2b$10$A8XKo.reKpv0lI/w06POwuYPLRGkIMk6ZElgUinpYUNqrrHE0dCPy'),
(5, 'an', 'an@example.com', '$2b$10$A/NcI3CXc2J0FqDDeiPUAOxuTmAx4JWIjG30hKp4rjdJ9UFjUGVrO'),
(6, 'ana', 'ana@example.com', '$2b$10$fGQY0Ad2RD9dlrYlyehipOyPrLsTR5Q.CeVmT4bf40LnoXoDLOaRu'),
(7, 'nana', 'nana@example.com', '$2b$10$/7NgRd7Db0c7DluiBNQVe.zBS73kB.Blc2tSSXkYvKEoDN5TYqqcG'),
(8, 'justuser', 'bj@example.com', '$2b$10$qKzSKBNKodhtXq/.xP6eFuTOc0DRELomjvQK3FUB8GtIC0JNUdFTi'),
(9, 'admin', 'admin@example.com', '$2b$10$ZoizTReCHFsRsAulx2kes.2ghGhbZRNJhew2bZCBDYnQjqA0axVp6'),
(10, 'mynew crrrect', 'user@example.com', '$2b$10$mUurYXFSutLHkuV7avvcOemM24twh9U2d6WGc/46/PSMCqYkbnMkO'),
(11, 'us', 'us@example.com', '$2b$10$hDs85jbjduYm6cONGaMhhe0uH27kG5cLDNO67BAI3h2juiHb.M3E2');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `foodcategory`
--
ALTER TABLE `foodcategory`
  ADD PRIMARY KEY (`BookId`,`CategoryId`),
  ADD KEY `CategoryId` (`CategoryId`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`BookId`,`AuthorId`),
  ADD KEY `AuthorId` (`AuthorId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `foodcategory`
--
ALTER TABLE `foodcategory`
  ADD CONSTRAINT `foodcategory_ibfk_1` FOREIGN KEY (`BookId`) REFERENCES `food` (`id`),
  ADD CONSTRAINT `foodcategory_ibfk_2` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`id`);

--
-- Ограничения внешнего ключа таблицы `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `recipe_ibfk_1` FOREIGN KEY (`BookId`) REFERENCES `food` (`id`),
  ADD CONSTRAINT `recipe_ibfk_2` FOREIGN KEY (`AuthorId`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
