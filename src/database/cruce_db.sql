-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 04-09-2022 a las 18:53:40
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cruce_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(1, 'toys'),
(2, 'backpacks');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price_promo` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `promo` tinyint(1) DEFAULT NULL,
  `category_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `price_promo`, `price`, `promo`, `category_id`) VALUES
(3, 'Funko', 'Funko POP | Game Of Thrones - Daenerys 25', 'daenerys.png', 2000, 2500, 1, 1),
(4, 'Funko', 'Funko POP | Game Of Thrones - Davos Seaworth 62', 'davos.png', 1000, 1500, 0, 1),
(5, 'Funko', 'Funko POP | Game Of Thrones - Tormund Giantsbane 53', 'tormund.png', 1200, 1400, 0, 1),
(6, 'Funko', 'Funko POP | Game Of Thrones - Tyrion Lannister 50', 'tyrion.png', 1900, 2400, 1, 1),
(7, 'Funko', 'Funko POP | Game Of Thrones - Jon Snow 49', 'jon.png', 2200, 2700, 0, 1),
(8, 'Funko', 'Funko POP | Game Of Thrones - Night King 44', 'night.png', 1800, 2300, 0, 1),
(9, 'Funko', 'Funko POP | Game Of Thrones - Brienne Of Tarth 13', 'brienne.png', 1600, 2200, 1, 1),
(10, 'Funko', 'Funko POP | Game Of Thrones - Ghost 19', 'ghost.png', 1700, 2100, 0, 1),
(11, 'Jansport', 'Mochila Madalyn Floral', 'floral.png', 5000, 6500, 0, 2),
(12, 'Jansport', 'Mochila Hombre Escolar', 'jansport3.png', 6500, 8200, 0, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category` (`category_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
