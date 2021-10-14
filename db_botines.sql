-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-10-2021 a las 21:33:24
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_botines`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `botin`
--

CREATE TABLE `botin` (
  `id_botin` int(11) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `talle` float NOT NULL,
  `precio` float NOT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `id_marca_fk` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `botin`
--

INSERT INTO `botin` (`id_botin`, `modelo`, `talle`, `precio`, `descripcion`, `id_marca_fk`, `categoria`) VALUES
(9, 'dfsfds', 2, 23, 'sdsds', 4, 'cancha dura'),
(10, 'PHANTOM GT ACADEMY DF NIKE', 39, 25000, 'rerere', 2, 'Terreno firme'),
(11, 'BOTINES PREDATOR FREAK.3 TERRENO FIRME', 37, 11.999, 'BOTINES DE CORTE MEDIO QUE TE AYUDAN A CONTROLAR LOS PARTIDOS EN CANCHAS DE TERRENO FIRME\r\nCada vez que cruzás esa línea blanca, entrás en un mundo completamente nuevo. Una realidad alterna en la que vos escribís las reglas. La cancha es tuya para co', 1, 'Terreno firme'),
(12, 'BOTINES PREDATOR FREAK.3 TERRENO FIRME', 40, 11.999, 'BOTINES DE CORTE MEDIO QUE TE AYUDAN A CONTROLAR LOS PARTIDOS EN CANCHAS DE TERRENO FIRME', 1, 'Terreno firme'),
(13, 'BOTINES PREDATOR FREAK.3 TERRENO FIRME', 38, 11.999, 'BOTINES DE CORTE MEDIO QUE TE AYUDAN A CONTROLAR LOS PARTIDOS EN CANCHAS DE TERRENO FIRME', 1, 'Terreno firme'),
(14, 'BOTINES PREDATOR FREAK.3 TERRENO FIRME', 43, 11.999, 'BOTINES DE CORTE MEDIO QUE TE AYUDAN A CONTROLAR LOS PARTIDOS EN CANCHAS DE TERRENO FIRME', 1, 'Terreno firme'),
(15, 'BOTINES COPA 20.1 TERRENO SUAVE', 38, 32.999, 'BOTINES DE CUERO PARA JUGADAS MAESTRAS SOBRE CANCHAS DE TERRENO SUAVE', 1, 'Terreno blando'),
(16, 'BOTINES COPA 20.1 TERRENO SUAVE', 39, 32.999, 'BOTINES DE CUERO PARA JUGADAS MAESTRAS SOBRE CANCHAS DE TERRENO SUAVE', 1, 'Terreno blando'),
(17, 'BOTINES COPA 20.1 TERRENO SUAVE', 43, 32.999, 'BOTINES DE CUERO PARA JUGADAS MAESTRAS SOBRE CANCHAS DE TERRENO SUAVE', 1, 'Terreno blando'),
(18, 'Botines Lotto Stadio', 37, 8.769, 'Su diseño con materiales sintéticos le confieren una mayor resistencia frente al uso y una sensación de ligereza que te permite dar un plus en cada partido. Esta versión monocromática no pierde la mística y son ideales para canchas de césped natural.', 4, 'Pasto sintetico'),
(19, 'Botines Lotto Stadio', 38, 8.769, 'Su diseño con materiales sintéticos le confieren una mayor resistencia frente al uso y una sensación de ligereza que te permite dar un plus en cada partido. Esta versión monocromática no pierde la mística y son ideales para canchas de césped natural.', 4, 'Pasto sintetico'),
(20, 'Botines Lotto Stadio', 39, 8.769, 'Su diseño con materiales sintéticos le confieren una mayor resistencia frente al uso y una sensación de ligereza que te permite dar un plus en cada partido. Esta versión monocromática no pierde la mística y son ideales para canchas de césped natural.', 4, 'Pasto sintetico'),
(21, 'Botines Lotto Stadio', 42, 8.769, 'Su diseño con materiales sintéticos le confieren una mayor resistencia frente al uso y una sensación de ligereza que te permite dar un plus en cada partido. Esta versión monocromática no pierde la mística y son ideales para canchas de césped natural.', 4, 'Pasto sintetico'),
(22, 'Vapor 13 Academy Ic', 40, 18000, NULL, 2, 'cancha dura'),
(23, 'Vapor 13 Academy Ic', 40, 19999, 'La parte superior suave del NIKE Mercurial Vapor 13 Academy IC envuelve el pie para brindar un ajuste como una segunda piel, al tiempo que la suela de goma ayuda a sobrecargar la tracción en la cancha o en la calle.\r\n\r\n- El cómodo forro envuelve el pie y brinda un ajuste como una segunda piel.\r\n- El material sintético suave viene texturizado desde el talón hasta la puntera para darte el toque que necesitas y permitirte expresar tu creatividad a altas velocidades.\r\n- La suela de goma, inspirada en el análisis de los movimientos del jugador de NIKE Sports Research Lab, está diseñada para proporcionar tracción multidireccional en superficies de calle y cancha cubierta.\r\n\r\nESPECIFICACIONES\r\n- Capellada: Cuero Sintético\r\n- Interior: Textil, Poliéster\r\n- Suela: Goma', 2, 'Pasto sintetico'),
(24, 'Vapor 13 Academy Ic', 39.5, 19999, 'La parte superior suave del NIKE Mercurial Vapor 13 Academy IC envuelve el pie para brindar un ajuste como una segunda piel, al tiempo que la suela de goma ayuda a sobrecargar la tracción en la cancha o en la calle.\r\n\r\n- El cómodo forro envuelve el pie y brinda un ajuste como una segunda piel.\r\n- El material sintético suave viene texturizado desde el talón hasta la puntera para darte el toque que necesitas y permitirte expresar tu creatividad a altas velocidades.\r\n- La suela de goma, inspirada en el análisis de los movimientos del jugador de NIKE Sports Research Lab, está diseñada para proporcionar tracción multidireccional en superficies de calle y cancha cubierta.\r\n\r\nESPECIFICACIONES\r\n- Capellada: Cuero Sintético\r\n- Interior: Textil, Poliéster\r\n- Suela: Goma', 2, 'Pasto sintetico'),
(25, 'Vapor 13 Academy Ic', 43, 19999, 'La parte superior suave del NIKE Mercurial Vapor 13 Academy IC envuelve el pie para brindar un ajuste como una segunda piel, al tiempo que la suela de goma ayuda a sobrecargar la tracción en la cancha o en la calle.\r\n\r\n- El cómodo forro envuelve el pie y brinda un ajuste como una segunda piel.\r\n- El material sintético suave viene texturizado desde el talón hasta la puntera para darte el toque que necesitas y permitirte expresar tu creatividad a altas velocidades.\r\n- La suela de goma, inspirada en el análisis de los movimientos del jugador de NIKE Sports Research Lab, está diseñada para proporcionar tracción multidireccional en superficies de calle y cancha cubierta.\r\n\r\nESPECIFICACIONES\r\n- Capellada: Cuero Sintético\r\n- Interior: Textil, Poliéster\r\n- Suela: Goma', 2, 'Terreno blando'),
(26, 'Vapor 13 Academy Ic', 41.5, 19999, 'La parte superior suave del NIKE Mercurial Vapor 13 Academy IC envuelve el pie para brindar un ajuste como una segunda piel, al tiempo que la suela de goma ayuda a sobrecargar la tracción en la cancha o en la calle.\r\n\r\n- El cómodo forro envuelve el pie y brinda un ajuste como una segunda piel.\r\n- El material sintético suave viene texturizado desde el talón hasta la puntera para darte el toque que necesitas y permitirte expresar tu creatividad a altas velocidades.\r\n- La suela de goma, inspirada en el análisis de los movimientos del jugador de NIKE Sports Research Lab, está diseñada para proporcionar tracción multidireccional en superficies de calle y cancha cubierta.\r\n\r\nESPECIFICACIONES\r\n- Capellada: Cuero Sintético\r\n- Interior: Textil, Poliéster\r\n- Suela: Goma', 2, 'Terreno firme'),
(27, 'Vapor 13 Academy Ic', 37, 19999, 'La parte superior suave del NIKE Mercurial Vapor 13 Academy IC envuelve el pie para brindar un ajuste como una segunda piel, al tiempo que la suela de goma ayuda a sobrecargar la tracción en la cancha o en la calle.\r\n\r\n- El cómodo forro envuelve el pie y brinda un ajuste como una segunda piel.\r\n- El material sintético suave viene texturizado desde el talón hasta la puntera para darte el toque que necesitas y permitirte expresar tu creatividad a altas velocidades.\r\n- La suela de goma, inspirada en el análisis de los movimientos del jugador de NIKE Sports Research Lab, está diseñada para proporcionar tracción multidireccional en superficies de calle y cancha cubierta.\r\n\r\nESPECIFICACIONES\r\n- Capellada: Cuero Sintético\r\n- Interior: Textil, Poliéster\r\n- Suela: Goma', 2, 'Futsal'),
(28, 'Vapor 13 Academy Ic', 40, 18000, NULL, 2, 'cancha dura'),
(29, 'Vapor 13 Academy Ic', 40, 19.999, 'La parte superior suave del NIKE Mercurial Vapor 13 Academy IC envuelve el pie para brindar un ajuste como una segunda piel, al tiempo que la suela de goma ayuda a sobrecargar la tracción en la cancha o en la calle.\r\n\r\n- El cómodo forro envuelve el pie y brinda un ajuste como una segunda piel.\r\n- El material sintético suave viene texturizado desde el talón hasta la puntera para darte el toque que necesitas y permitirte expresar tu creatividad a altas velocidades.\r\n- La suela de goma, inspirada en el análisis de los movimientos del jugador de NIKE Sports Research Lab, está diseñada para proporcionar tracción multidireccional en superficies de calle y cancha cubierta.\r\n\r\nESPECIFICACIONES\r\n- Capellada: Cuero Sintético\r\n- Interior: Textil, Poliéster\r\n- Suela: Goma', 2, 'Pasto sintetico'),
(30, 'Vapor 13 Academy Ic', 39.5, 19.999, 'La parte superior suave del NIKE Mercurial Vapor 13 Academy IC envuelve el pie para brindar un ajuste como una segunda piel, al tiempo que la suela de goma ayuda a sobrecargar la tracción en la cancha o en la calle.\r\n\r\n- El cómodo forro envuelve el pie y brinda un ajuste como una segunda piel.\r\n- El material sintético suave viene texturizado desde el talón hasta la puntera para darte el toque que necesitas y permitirte expresar tu creatividad a altas velocidades.\r\n- La suela de goma, inspirada en el análisis de los movimientos del jugador de NIKE Sports Research Lab, está diseñada para proporcionar tracción multidireccional en superficies de calle y cancha cubierta.\r\n\r\nESPECIFICACIONES\r\n- Capellada: Cuero Sintético\r\n- Interior: Textil, Poliéster\r\n- Suela: Goma', 2, 'Pasto sintetico'),
(31, 'Vapor 13 Academy Ic', 43, 19.999, 'La parte superior suave del NIKE Mercurial Vapor 13 Academy IC envuelve el pie para brindar un ajuste como una segunda piel, al tiempo que la suela de goma ayuda a sobrecargar la tracción en la cancha o en la calle.\r\n\r\n- El cómodo forro envuelve el pie y brinda un ajuste como una segunda piel.\r\n- El material sintético suave viene texturizado desde el talón hasta la puntera para darte el toque que necesitas y permitirte expresar tu creatividad a altas velocidades.\r\n- La suela de goma, inspirada en el análisis de los movimientos del jugador de NIKE Sports Research Lab, está diseñada para proporcionar tracción multidireccional en superficies de calle y cancha cubierta.\r\n\r\nESPECIFICACIONES\r\n- Capellada: Cuero Sintético\r\n- Interior: Textil, Poliéster\r\n- Suela: Goma', 2, 'Terreno blando'),
(32, 'Vapor 13 Academy Ic', 41.5, 19.999, 'La parte superior suave del NIKE Mercurial Vapor 13 Academy IC envuelve el pie para brindar un ajuste como una segunda piel, al tiempo que la suela de goma ayuda a sobrecargar la tracción en la cancha o en la calle.\r\n\r\n- El cómodo forro envuelve el pie y brinda un ajuste como una segunda piel.\r\n- El material sintético suave viene texturizado desde el talón hasta la puntera para darte el toque que necesitas y permitirte expresar tu creatividad a altas velocidades.\r\n- La suela de goma, inspirada en el análisis de los movimientos del jugador de NIKE Sports Research Lab, está diseñada para proporcionar tracción multidireccional en superficies de calle y cancha cubierta.\r\n\r\nESPECIFICACIONES\r\n- Capellada: Cuero Sintético\r\n- Interior: Textil, Poliéster\r\n- Suela: Goma', 2, 'Terreno firme'),
(33, 'Vapor 13 Academy Ic', 37, 19.999, 'La parte superior suave del NIKE Mercurial Vapor 13 Academy IC envuelve el pie para brindar un ajuste como una segunda piel, al tiempo que la suela de goma ayuda a sobrecargar la tracción en la cancha o en la calle.\r\n\r\n- El cómodo forro envuelve el pie y brinda un ajuste como una segunda piel.\r\n- El material sintético suave viene texturizado desde el talón hasta la puntera para darte el toque que necesitas y permitirte expresar tu creatividad a altas velocidades.\r\n- La suela de goma, inspirada en el análisis de los movimientos del jugador de NIKE Sports Research Lab, está diseñada para proporcionar tracción multidireccional en superficies de calle y cancha cubierta.\r\n\r\nESPECIFICACIONES\r\n- Capellada: Cuero Sintético\r\n- Interior: Textil, Poliéster\r\n- Suela: Goma', 2, 'Futsal'),
(34, 'Botines Puma Ultra 1.2 Fg/Ag', 40, 21.999, 'Los botines Puma Ultra 1.2 FG/AG están pensados para los jugadores más veloces del equipo. Cuentan con una suela especial TPU SpeedUnit que optimiza la rapidez en el campo con una suela anti-resbalante y muy confiable. Su cuello tejido mejorado con tecnología MATRYXMESH combinada con GripControl para sentir el control total del balón en pleno ataque. Hechos para césped natural y artificial.', 3, 'Pasto sintetico'),
(35, 'Botines Puma Ultra 1.2 Fg/Ag', 39, 21.999, 'Los botines Puma Ultra 1.2 FG/AG están pensados para los jugadores más veloces del equipo. Cuentan con una suela especial TPU SpeedUnit que optimiza la rapidez en el campo con una suela anti-resbalante y muy confiable. Su cuello tejido mejorado con tecnología\r\nMATRYXMESH combinada con GripControl para sentir el control total del balón en pleno ataque. Hechos para césped natural y artificial.', 3, 'Pasto sintetico'),
(36, 'Botines Puma Ultra 1.2 Fg/Ag', 43, 21.999, 'Los botines Puma Ultra 1.2 FG/AG están pensados para los jugadores más veloces del equipo. Cuentan con una suela especial TPU SpeedUnit que optimiza la rapidez en el campo con una suela anti-resbalante y muy confiable. Su cuello tejido mejorado con tecnología MATRYXMESH combinada con GripControl para sentir el control total del balón en pleno ataque. Hechos para césped natural y artificial.', 3, 'Pasto sintetico'),
(37, 'Botines Puma Ultra 1.2 Fg/Ag', 37, 21.999, 'Los botines Puma Ultra 1.2 FG/AG están pensados para los jugadores más veloces del equipo. Cuentan con una suela especial TPU SpeedUnit que optimiza la rapidez en el campo con una suela anti-resbalante y muy confiable. Su cuello tejido mejorado con tecnología MATRYXMESH combinada con GripControl para sentir el control total del balón en pleno ataque. Hechos para césped natural y artificial.', 3, 'Pasto sintetico'),
(38, 'Botines Puma Ultra 1.2 Fg/Ag', 39.5, 21.999, 'Los botines Puma Ultra 1.2 FG/AG están pensados para los jugadores más veloces del equipo. Cuentan con una suela especial TPU SpeedUnit que optimiza la rapidez en el campo con una suela anti-resbalante y muy confiable. Su cuello tejido mejorado con tecnología MATRYXMESH combinada con GripControl para sentir el control total del balón en pleno ataque. Hechos para césped natural y artificial.', 3, 'Pasto sintetico'),
(39, 'Botines Puma Ultra 1.2 Fg/Ag', 39, 21.999, 'Los botines Puma Ultra 1.2 FG/AG están pensados para los jugadores más veloces del equipo. Cuentan con una suela especial TPU SpeedUnit que optimiza la rapidez en el campo con una suela anti-resbalante y muy confiable. Su cuello tejido mejorado con tecnología\r\nMATRYXMESH combinada con GripControl para sentir el control total del balón en pleno ataque. Hechos para césped natural y artificial.', 3, 'Pasto sintetico'),
(40, 'Botines Puma Ultra 1.2 Fg/Ag', 43, 21.999, 'Los botines Puma Ultra 1.2 FG/AG están pensados para los jugadores más veloces del equipo. Cuentan con una suela especial TPU SpeedUnit que optimiza la rapidez en el campo con una suela anti-resbalante y muy confiable. Su cuello tejido mejorado con tecnología MATRYXMESH combinada con GripControl para sentir el control total del balón en pleno ataque. Hechos para césped natural y artificial.', 3, 'Pasto sintetico'),
(41, 'Botines Puma Ultra 1.2 Fg/Ag', 37.5, 21.999, 'Los botines Puma Ultra 1.2 FG/AG están pensados para los jugadores más veloces del equipo. Cuentan con una suela especial TPU SpeedUnit que optimiza la rapidez en el campo con una suela anti-resbalante y muy confiable. Su cuello tejido mejorado con tecnología MATRYXMESH combinada con GripControl para sentir el control total del balón en pleno ataque. Hechos para césped natural y artificial.', 3, 'Pasto sintetico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id_marca`, `nombre`) VALUES
(1, 'Adidas'),
(2, 'Nike'),
(3, 'Puma'),
(4, 'Lotto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `nombre_usuario` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `password`, `nombre`, `apellido`, `nombre_usuario`) VALUES
(2, 'juanperez@gmail.com', '$2y$10$r3lCWEbvyvgxgot/IX2JJeAy4NWorKgrT9/K1ynkC0MJpKVl6qTq6', 'juan', 'perez', 'juanperez1'),
(4, 'juanaperez@gmail.com', '$2y$10$ywSTIdPeBLA8FcY4jYvUbeLevQ9/vpXnIw5/AB71tRy7mkwnEvGuq', 'juana', 'perez', 'juanaperez10'),
(5, 'leomessi@gmail.com', '$2y$10$fuInyZCbo2AGwBL44Kn4Vu8/X9xfv9q0djszzQ92XkZEefnPi1cu6', 'leo', 'messi', 'leomessi10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `botin`
--
ALTER TABLE `botin`
  ADD PRIMARY KEY (`id_botin`),
  ADD KEY `id_marca_fk` (`id_marca_fk`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `botin`
--
ALTER TABLE `botin`
  MODIFY `id_botin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `botin`
--
ALTER TABLE `botin`
  ADD CONSTRAINT `botin_ibfk_1` FOREIGN KEY (`id_marca_fk`) REFERENCES `marca` (`id_marca`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
