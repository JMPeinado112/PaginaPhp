-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 22-12-2021 a las 22:52:24
-- Versión del servidor: 5.6.34
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `daw2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombreprod` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(40) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `foto` longtext COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombreprod`, `descripcion`, `precio`, `foto`) VALUES
(1, 'Llaves', 'Llaves', 10, 'X196aG9uZ2xpX2FuZF9odV90YW9fZ2Vuc2hpbl9pbXBhY3RfZHJhd25fYnlfaGF5YXJvYl9fMjBhOWNiOTNjNWFjMjIzYTMyZjAxOTEzYWExZDVlOTkuanBn'),
(3, 'Creeper', 'Cuidado', 0, 'MGI1ZTFkODJiOWNlYmQ1OTM0ZDk0MTA0YmJkYWYxM2MuanBn'),
(4, 'a', 'a', 2, ''),
(5, '2', '2', 2, 'MzJmOGVlMWY2ODQ5NTIzMTQ1MjQ1MWEyZWRmZTliN2IuZ2lm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `contraseña` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `foto` longtext COLLATE utf8_spanish_ci NOT NULL,
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `contraseña`, `foto`, `rol`) VALUES
(23, 'admin', 'adLOVfC6BVOeQ', 'NGY5ZWNkMzBlYjc4MzQ2NTIzYzZjOTg0ZmZiNzJlNWEucG5n', 2),
(24, 'prueba', 'pr4obk8hrw7hc', 'MmE4MGJhNGI1ZWU2YWI4MWMxNWMyN2RkM2Y1OTQ5ZDIzNzYxZTMxM3IxLTI4NC0yODR2Ml91aHEuanBn', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
