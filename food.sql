-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 27 2024 г., 20:54
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
(3, 'vegan'),
(4, 'dissert'),
(5, 'soup'),
(6, 'cream'),
(7, 'italian'),
(9, 'diet'),
(10, 'fresh'),
(14, 'japanis'),
(15, 'german'),
(20, 'france'),
(21, 'estonian'),
(28, 'british'),
(29, 'american'),
(30, 'Category1'),
(33, 'an33y');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `foodId` int(11) NOT NULL,
  `commentText` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `userId`, `foodId`, `commentText`, `createdAt`) VALUES
(1, 4, 3, 'Ваш комментарий здесь', '2023-12-25 18:55:25'),
(2, 11, 3, 'morm', '2023-12-25 20:33:22'),
(10, 9, 48, 'nice', '2023-12-29 14:24:53'),
(14, 13, 48, 'nnnnow', '2023-12-29 17:06:51'),
(17, 14, 20, 'this no so bad', '2024-01-06 17:25:04'),
(21, 9, 61, 'sooo ok', '2024-01-19 21:16:41'),
(22, 9, 62, 'sooo ok', '2024-01-19 21:17:19'),
(24, 9, 3, 'an33y', '2024-01-27 18:43:35');

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
(3, 'orange pey', '2024-01-15', 'https://example.com/food.jpg', 'Description of the food'),
(4, 'orange jelly', '0000-00-00', 'any', 'any'),
(5, 'bob soup', '2023-01-11', 'any', 'soup with bobs'),
(7, 'apple juse', '2023-11-26', 'https://example.com/thumbnail.jpg', 'Краткое описание вашей книги'),
(8, 'apple jelly', '2023-11-26', 'https://example.com/thumbnail.jpg', 'aj'),
(9, 'orange ise cream', '2023-02-11', 'any', 'any'),
(10, 'fruit cacke', '2023-11-27', 'https://example.com/thumbnail.jpg', 'Краткое описание'),
(11, 'fruit ice', '2023-11-27', 'https://example.com/thumbnail.jpg', 'Краткое описание вашей книги'),
(20, 'fish salat', '0000-00-00', 'https://www.kosher.com/recipe/fish-salad-4678', 'Creamy white fish salad is a protein-packed matza topper or starter. Does not take long at all to make this recipe. Courtesy of the Women’s Branch of the OU.'),
(22, 'fruit salat', '0000-00-00', 'any', 'any'),
(25, 'orange pizza', '2023-12-10', 'https://libararyelementor.hathor.ee/wp-content/uploads/2023/11/Group-33587.png', 'italian delishes food + oranges'),
(26, 'apple pizza', '2023-12-10', 'https://libararyelementor.hathor.ee/wp-content/uploads/2023/11/Group-33587.png', 'italian delishes food + apples'),
(28, 'any', '0000-00-00', 'any', 'any'),
(29, 'any', '0000-00-00', 'any', 'apple'),
(30, 'any', '0000-00-00', 'any', 'apple'),
(37, 'sharlotka', '2024-01-20', 'https://example.com/updated_food.jpg', 'Updated description'),
(38, 'apple jelly', '2023-12-19', 'any', 'any'),
(39, 'cheez cace', '2024-01-20', 'https://example.com/updated_food.jpg', 'Updated description'),
(48, 'chicken kung pao', '0000-00-00', 'any', 'any'),
(51, 'apple drink', '2024-01-20', 'https://example.com/updated_food.jpg', 'Updated description'),
(52, 'napoleon', '2024-01-20', 'https://example.com/updated_food.jpg', 'Updated description'),
(53, 'takajaki', '2024-06-01', 'any', 'any'),
(60, 'any', '0000-00-00', 'any', 'any'),
(61, 'milk shake with cherry', '0000-00-00', 'any', 'any'),
(62, 'milk shake with cherry', '2024-01-19', 'any', 'any'),
(63, 'milk shake with orange', '2024-01-19', 'any', 'any');

-- --------------------------------------------------------

--
-- Структура таблицы `foodcategory`
--

CREATE TABLE `foodcategory` (
  `FoodId` int(11) NOT NULL,
  `CategoryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `foodcategory`
--

INSERT INTO `foodcategory` (`FoodId`, `CategoryId`) VALUES
(3, 30),
(4, 4),
(5, 5),
(7, 2),
(9, 4),
(11, 4),
(20, 1),
(22, 3),
(22, 4),
(30, 7),
(37, 4),
(37, 20),
(38, 4),
(39, 4),
(39, 20),
(48, 9),
(51, 4),
(51, 20),
(52, 4),
(52, 20),
(60, 2),
(61, 2),
(61, 4),
(62, 2),
(62, 4),
(62, 29),
(63, 2),
(63, 4),
(63, 14);

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
(2, 'limon'),
(4, 'orange'),
(6, 'fish'),
(7, 'cream'),
(12, 'cheez'),
(13, 'milk'),
(14, 'mango'),
(17, 'banan'),
(18, 'chicken'),
(19, 'chili'),
(22, 'mango'),
(24, 'cherry'),
(25, 'potato'),
(34, 'eggs'),
(35, 'apple');

-- --------------------------------------------------------

--
-- Структура таблицы `recipe`
--

CREATE TABLE `recipe` (
  `FoodId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `recipe`
--

INSERT INTO `recipe` (`FoodId`, `ProductId`, `quantity`, `unit`) VALUES
(3, 4, 2, 'unit'),
(3, 34, 3, 'unit'),
(4, 4, NULL, NULL),
(9, 4, NULL, NULL),
(9, 7, NULL, NULL),
(20, 6, NULL, NULL),
(22, 4, NULL, NULL),
(25, 4, NULL, NULL),
(25, 12, NULL, NULL),
(26, 12, NULL, NULL),
(37, 7, 2, 'liters'),
(37, 13, 5, 'grams'),
(37, 24, 3, 'grams'),
(37, 35, 5, 'grams'),
(39, 7, 2, 'liters'),
(39, 13, 5, 'grams'),
(39, 24, 3, 'grams'),
(39, 34, 5, 'grams'),
(48, 18, NULL, NULL),
(48, 19, NULL, NULL),
(51, 7, 2, 'liters'),
(51, 13, 5, 'grams'),
(51, 24, 3, 'grams'),
(51, 35, 5, 'grams'),
(52, 7, 2, 'liters'),
(52, 24, NULL, NULL),
(52, 34, 5, 'grams'),
(53, 18, NULL, NULL),
(60, 4, 2, NULL),
(60, 7, 2, NULL),
(61, 13, 200, NULL),
(61, 24, 300, NULL),
(62, 13, 200, 'ml'),
(62, 24, 300, 'grams'),
(63, 4, 2, 'units'),
(63, 13, 200, 'ml');

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
(9, 11, 1),
(0, 12, 1),
(0, 13, 1),
(0, 14, 1),
(0, 15, 1),
(0, 16, 1);

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
(0, 'an11y', 'any', '$2b$10$x5rlBeBttY59eqD0HzVPju.viiblFmfSZeMueDAYge/pWqjKq4rIW'),
(2, 'kikгы', 'kikгы@gmail.com', '$2b$10$.voEA0qIcdnkqZOy2x1YZuLq5MkHwg65QO0qZ.IvBZKhfQ6wruG8.'),
(4, 'n', 'n@example.com', '$2b$10$A8XKo.reKpv0lI/w06POwuYPLRGkIMk6ZElgUinpYUNqrrHE0dCPy'),
(5, 'an', 'an@example.com', '$2b$10$A/NcI3CXc2J0FqDDeiPUAOxuTmAx4JWIjG30hKp4rjdJ9UFjUGVrO'),
(6, 'ana', 'ana@example.com', '$2b$10$fGQY0Ad2RD9dlrYlyehipOyPrLsTR5Q.CeVmT4bf40LnoXoDLOaRu'),
(7, 'nana', 'nana@example.com', '$2b$10$/7NgRd7Db0c7DluiBNQVe.zBS73kB.Blc2tSSXkYvKEoDN5TYqqcG'),
(8, 'justuser', 'bj@example.com', '$2b$10$qKzSKBNKodhtXq/.xP6eFuTOc0DRELomjvQK3FUB8GtIC0JNUdFTi'),
(9, 'admin', 'admin@example.com', '$2b$10$ZoizTReCHFsRsAulx2kes.2ghGhbZRNJhew2bZCBDYnQjqA0axVp6'),
(10, 'mynew crrrect', 'user@example.com', '$2b$10$mUurYXFSutLHkuV7avvcOemM24twh9U2d6WGc/46/PSMCqYkbnMkO'),
(11, 'us', 'us@example.com', '$2b$10$hDs85jbjduYm6cONGaMhhe0uH27kG5cLDNO67BAI3h2juiHb.M3E2'),
(12, 'any', 'a12ny', '$2b$10$4mwx9j0StnyOPMSulJjlM.Nwyh2aT9kY7lXeIZqG0ul7yfuV/yPHi'),
(13, 'niki', 'niki@gmail.com', '$2b$10$rxmFxYJWqwWPwEjuEsFs6uxEr4tvFpPVDxz7GfIEY2yT5h19OaNyS'),
(14, 'nkn', 'n15k@gmail.com', '$2b$10$TpaGmvXUi1qulqz3u27JY.XST8vdE8Q9NPLFlg1Xe3mAuctTPN0Le'),
(15, 'nikitot', 'nk@gmail.com', '$2b$10$feZqLzvO5uVZZWXzE3M3IOmV9xhI5RthL0kTucneDymTx/vbbUEAe'),
(16, 'anyrol', 'any@gmail.com', '$2b$10$3qVWlaHSjNbMHbsLb84KKOqT3iTXcepHEyj/cgcIVWRGMtWd8VKKC');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `foodId` (`foodId`);

--
-- Индексы таблицы `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `foodcategory`
--
ALTER TABLE `foodcategory`
  ADD PRIMARY KEY (`FoodId`,`CategoryId`),
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
  ADD PRIMARY KEY (`FoodId`,`ProductId`),
  ADD KEY `AuthorId` (`ProductId`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`foodId`) REFERENCES `food` (`id`);

--
-- Ограничения внешнего ключа таблицы `foodcategory`
--
ALTER TABLE `foodcategory`
  ADD CONSTRAINT `foodcategory_ibfk_1` FOREIGN KEY (`FoodId`) REFERENCES `food` (`id`),
  ADD CONSTRAINT `foodcategory_ibfk_2` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`id`);

--
-- Ограничения внешнего ключа таблицы `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `recipe_ibfk_1` FOREIGN KEY (`FoodId`) REFERENCES `food` (`id`),
  ADD CONSTRAINT `recipe_ibfk_2` FOREIGN KEY (`ProductId`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
