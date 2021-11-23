-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2021 a las 21:58:34
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
  `categoria` varchar(50) NOT NULL,
  `imagen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `botin`
--

INSERT INTO `botin` (`id_botin`, `modelo`, `talle`, `precio`, `descripcion`, `id_marca_fk`, `categoria`, `imagen`) VALUES
(9, 'dfsfds', 37, 23, ' sdsds ', 4, 'Pasto sintetico', 'img/botines/619d060252f25.jpg'),
(10, 'PHANTOM GT ACADEMY DF NIKE', 39, 25000, ' rerere ', 2, 'Terreno firme', 'img/botines/619d05c551d6a.jpg'),
(18, 'Botines Lotto Stadio', 37, 8.769, ' Su diseño con materiales sintéticos le confieren una mayor resistencia frente al uso y una sensación de ligereza que te permite dar un plus en cada partido. Esta versión monocromática no pierde la mística y son ideales para canchas de césped natural. ', 4, 'Pasto sintetico', 'img/botines/619d0611069a7.jpg'),
(19, 'Botines Lotto Stadio', 38, 8.769, ' Su diseño con materiales sintéticos le confieren una mayor resistencia frente al uso y una sensación de ligereza que te permite dar un plus en cada partido. Esta versión monocromática no pierde la mística y son ideales para canchas de césped natural. ', 4, 'Pasto sintetico', 'img/botines/619d061d3d46c.jpg'),
(20, 'Botines Lotto Stadio', 39, 8.769, ' Su diseño con materiales sintéticos le confieren una mayor resistencia frente al uso y una sensación de ligereza que te permite dar un plus en cada partido. Esta versión monocromática no pierde la mística y son ideales para canchas de césped natural. ', 4, 'Pasto sintetico', 'img/botines/619d06368e235.jpg'),
(21, 'Botines Lotto Stadio', 42, 8.769, ' Su diseño con materiales sintéticos le confieren una mayor resistencia frente al uso y una sensación de ligereza que te permite dar un plus en cada partido. Esta versión monocromática no pierde la mística y son ideales para canchas de césped natural. ', 4, 'Pasto sintetico', 'img/botines/619d0814f11a1.jpg'),
(22, 'Vapor 13 Academy Ic', 40, 18000, '    ', 2, 'Pasto sintetico', 'img/botines/619d06ca95a12.jpg'),
(23, 'Vapor 13 Academy Ic', 40, 19999, ' La parte superior suave del NIKE Mercurial Vapor 13 Academy IC envuelve el pie para brindar un ajuste como una segunda piel, al tiempo que la suela de goma ayuda a sobrecargar la tracción en la cancha o en la calle.\r\n\r\n- El cómodo forro envuelve el pie y brinda un ajuste como una segunda piel.\r\n- El material sintético suave viene texturizado desde el talón hasta la puntera para darte el toque que necesitas y permitirte expresar tu creatividad a altas velocidades.\r\n- La suela de goma, inspirada en el análisis de los movimientos del jugador de NIKE Sports Research Lab, está diseñada para proporcionar tracción multidireccional en superficies de calle y cancha cubierta.\r\n\r\nESPECIFICACIONES\r\n- Capellada: Cuero Sintético\r\n- Interior: Textil, Poliéster\r\n- Suela: Goma ', 2, 'Pasto sintetico', 'img/botines/619d05d70c04f.jpg'),
(24, 'Vapor 13 Academy Ic', 39.5, 19999, '  La parte superior suave del NIKE Mercurial Vapor 13 Academy IC envuelve el pie para brindar un ajuste como una segunda piel, al tiempo que la suela de goma ayuda a sobrecargar la tracción en la cancha o en la calle.\r\n\r\n- El cómodo forro envuelve el pie y brinda un ajuste como una segunda piel.\r\n- El material sintético suave viene texturizado desde el talón hasta la puntera para darte el toque que necesitas y permitirte expresar tu creatividad a altas velocidades.\r\n- La suela de goma, inspirada en el análisis de los movimientos del jugador de NIKE Sports Research Lab, está diseñada para proporcionar tracción multidireccional en superficies de calle y cancha cubierta.\r\n\r\nESPECIFICACIONES\r\n- Capellada: Cuero Sintético\r\n- Interior: Textil, Poliéster\r\n- Suela: Goma  ', 2, 'Pasto sintetico', 'img/botines/619d06d55ec7a.jpg'),
(25, 'Vapor 13 Academy Ic', 43, 19999, ' La parte superior suave del NIKE Mercurial Vapor 13 Academy IC envuelve el pie para brindar un ajuste como una segunda piel, al tiempo que la suela de goma ayuda a sobrecargar la tracción en la cancha o en la calle.\r\n\r\n- El cómodo forro envuelve el pie y brinda un ajuste como una segunda piel.\r\n- El material sintético suave viene texturizado desde el talón hasta la puntera para darte el toque que necesitas y permitirte expresar tu creatividad a altas velocidades.\r\n- La suela de goma, inspirada en el análisis de los movimientos del jugador de NIKE Sports Research Lab, está diseñada para proporcionar tracción multidireccional en superficies de calle y cancha cubierta.\r\n\r\nESPECIFICACIONES\r\n- Capellada: Cuero Sintético\r\n- Interior: Textil, Poliéster\r\n- Suela: Goma ', 2, 'Terreno blando', 'img/botines/619d065f63978.jpg'),
(26, 'Vapor 13 Academy Ic', 41.5, 19999, ' La parte superior suave del NIKE Mercurial Vapor 13 Academy IC envuelve el pie para brindar un ajuste como una segunda piel, al tiempo que la suela de goma ayuda a sobrecargar la tracción en la cancha o en la calle.\r\n\r\n- El cómodo forro envuelve el pie y brinda un ajuste como una segunda piel.\r\n- El material sintético suave viene texturizado desde el talón hasta la puntera para darte el toque que necesitas y permitirte expresar tu creatividad a altas velocidades.\r\n- La suela de goma, inspirada en el análisis de los movimientos del jugador de NIKE Sports Research Lab, está diseñada para proporcionar tracción multidireccional en superficies de calle y cancha cubierta.\r\n\r\nESPECIFICACIONES\r\n- Capellada: Cuero Sintético\r\n- Interior: Textil, Poliéster\r\n- Suela: Goma ', 2, 'Terreno firme', 'img/botines/619d06e024c44.jpg'),
(27, 'Vapor 13 Academy Ic', 37, 19999, ' La parte superior suave del NIKE Mercurial Vapor 13 Academy IC envuelve el pie para brindar un ajuste como una segunda piel, al tiempo que la suela de goma ayuda a sobrecargar la tracción en la cancha o en la calle.\r\n\r\n- El cómodo forro envuelve el pie y brinda un ajuste como una segunda piel.\r\n- El material sintético suave viene texturizado desde el talón hasta la puntera para darte el toque que necesitas y permitirte expresar tu creatividad a altas velocidades.\r\n- La suela de goma, inspirada en el análisis de los movimientos del jugador de NIKE Sports Research Lab, está diseñada para proporcionar tracción multidireccional en superficies de calle y cancha cubierta.\r\n\r\nESPECIFICACIONES\r\n- Capellada: Cuero Sintético\r\n- Interior: Textil, Poliéster\r\n- Suela: Goma ', 2, 'Futsal', 'img/botines/619d06eb8a07c.jpg'),
(28, 'Vapor 13 Academy Ic', 40, 18000, '  ', 2, 'Pasto sintetico', 'img/botines/619d06f50548f.jpg'),
(29, 'Vapor 13 Academy Ic', 40, 19.999, ' La parte superior suave del NIKE Mercurial Vapor 13 Academy IC envuelve el pie para brindar un ajuste como una segunda piel, al tiempo que la suela de goma ayuda a sobrecargar la tracción en la cancha o en la calle.\r\n\r\n- El cómodo forro envuelve el pie y brinda un ajuste como una segunda piel.\r\n- El material sintético suave viene texturizado desde el talón hasta la puntera para darte el toque que necesitas y permitirte expresar tu creatividad a altas velocidades.\r\n- La suela de goma, inspirada en el análisis de los movimientos del jugador de NIKE Sports Research Lab, está diseñada para proporcionar tracción multidireccional en superficies de calle y cancha cubierta.\r\n\r\nESPECIFICACIONES\r\n- Capellada: Cuero Sintético\r\n- Interior: Textil, Poliéster\r\n- Suela: Goma ', 2, 'Pasto sintetico', 'img/botines/619d071539385.jpg'),
(30, 'Vapor 13 Academy Ic', 39.5, 19.999, ' La parte superior suave del NIKE Mercurial Vapor 13 Academy IC envuelve el pie para brindar un ajuste como una segunda piel, al tiempo que la suela de goma ayuda a sobrecargar la tracción en la cancha o en la calle.\r\n\r\n- El cómodo forro envuelve el pie y brinda un ajuste como una segunda piel.\r\n- El material sintético suave viene texturizado desde el talón hasta la puntera para darte el toque que necesitas y permitirte expresar tu creatividad a altas velocidades.\r\n- La suela de goma, inspirada en el análisis de los movimientos del jugador de NIKE Sports Research Lab, está diseñada para proporcionar tracción multidireccional en superficies de calle y cancha cubierta.\r\n\r\nESPECIFICACIONES\r\n- Capellada: Cuero Sintético\r\n- Interior: Textil, Poliéster\r\n- Suela: Goma ', 2, 'Pasto sintetico', 'img/botines/619d0727cbd3e.jpg'),
(31, 'Vapor 13 Academy Ic', 43, 19.999, ' La parte superior suave del NIKE Mercurial Vapor 13 Academy IC envuelve el pie para brindar un ajuste como una segunda piel, al tiempo que la suela de goma ayuda a sobrecargar la tracción en la cancha o en la calle.\r\n\r\n- El cómodo forro envuelve el pie y brinda un ajuste como una segunda piel.\r\n- El material sintético suave viene texturizado desde el talón hasta la puntera para darte el toque que necesitas y permitirte expresar tu creatividad a altas velocidades.\r\n- La suela de goma, inspirada en el análisis de los movimientos del jugador de NIKE Sports Research Lab, está diseñada para proporcionar tracción multidireccional en superficies de calle y cancha cubierta.\r\n\r\nESPECIFICACIONES\r\n- Capellada: Cuero Sintético\r\n- Interior: Textil, Poliéster\r\n- Suela: Goma ', 2, 'Terreno blando', 'img/botines/619d073036b98.jpg'),
(32, 'Vapor 13 Academy Ic', 41.5, 19.999, ' La parte superior suave del NIKE Mercurial Vapor 13 Academy IC envuelve el pie para brindar un ajuste como una segunda piel, al tiempo que la suela de goma ayuda a sobrecargar la tracción en la cancha o en la calle.\r\n\r\n- El cómodo forro envuelve el pie y brinda un ajuste como una segunda piel.\r\n- El material sintético suave viene texturizado desde el talón hasta la puntera para darte el toque que necesitas y permitirte expresar tu creatividad a altas velocidades.\r\n- La suela de goma, inspirada en el análisis de los movimientos del jugador de NIKE Sports Research Lab, está diseñada para proporcionar tracción multidireccional en superficies de calle y cancha cubierta.\r\n\r\nESPECIFICACIONES\r\n- Capellada: Cuero Sintético\r\n- Interior: Textil, Poliéster\r\n- Suela: Goma ', 2, 'Terreno firme', 'img/botines/619d0739e6a81.jpg'),
(33, 'Vapor 13 Academy Ic', 37, 19.999, ' La parte superior suave del NIKE Mercurial Vapor 13 Academy IC envuelve el pie para brindar un ajuste como una segunda piel, al tiempo que la suela de goma ayuda a sobrecargar la tracción en la cancha o en la calle.\r\n\r\n- El cómodo forro envuelve el pie y brinda un ajuste como una segunda piel.\r\n- El material sintético suave viene texturizado desde el talón hasta la puntera para darte el toque que necesitas y permitirte expresar tu creatividad a altas velocidades.\r\n- La suela de goma, inspirada en el análisis de los movimientos del jugador de NIKE Sports Research Lab, está diseñada para proporcionar tracción multidireccional en superficies de calle y cancha cubierta.\r\n\r\nESPECIFICACIONES\r\n- Capellada: Cuero Sintético\r\n- Interior: Textil, Poliéster\r\n- Suela: Goma ', 2, 'Futsal', 'img/botines/619d07b62167c.jpg'),
(34, 'Botines Puma Ultra 1.2 Fg/Ag', 40, 21.999, ' Los botines Puma Ultra 1.2 FG/AG están pensados para los jugadores más veloces del equipo. Cuentan con una suela especial TPU SpeedUnit que optimiza la rapidez en el campo con una suela anti-resbalante y muy confiable. Su cuello tejido mejorado con tecnología MATRYXMESH combinada con GripControl para sentir el control total del balón en pleno ataque. Hechos para césped natural y artificial. ', 3, 'Pasto sintetico', 'img/botines/619d05ecbaa0d.jpg'),
(35, 'Botines Puma Ultra 1.2 Fg/Ag', 39, 21.999, ' Los botines Puma Ultra 1.2 FG/AG están pensados para los jugadores más veloces del equipo. Cuentan con una suela especial TPU SpeedUnit que optimiza la rapidez en el campo con una suela anti-resbalante y muy confiable. Su cuello tejido mejorado con tecnología\r\nMATRYXMESH combinada con GripControl para sentir el control total del balón en pleno ataque. Hechos para césped natural y artificial. ', 3, 'Pasto sintetico', 'img/botines/619d05f878856.jpg'),
(36, 'Botines Puma Ultra 1.2 Fg/Ag', 43, 21.999, ' Los botines Puma Ultra 1.2 FG/AG están pensados para los jugadores más veloces del equipo. Cuentan con una suela especial TPU SpeedUnit que optimiza la rapidez en el campo con una suela anti-resbalante y muy confiable. Su cuello tejido mejorado con tecnología MATRYXMESH combinada con GripControl para sentir el control total del balón en pleno ataque. Hechos para césped natural y artificial. ', 3, 'Pasto sintetico', 'img/botines/619d07d68baf7.jpg'),
(37, 'Botines Puma Ultra 1.2 Fg/Ag', 37, 21.999, ' Los botines Puma Ultra 1.2 FG/AG están pensados para los jugadores más veloces del equipo. Cuentan con una suela especial TPU SpeedUnit que optimiza la rapidez en el campo con una suela anti-resbalante y muy confiable. Su cuello tejido mejorado con tecnología MATRYXMESH combinada con GripControl para sentir el control total del balón en pleno ataque. Hechos para césped natural y artificial. ', 3, 'Pasto sintetico', 'img/botines/619d07e102cc2.jpg'),
(38, 'Botines Puma Ultra 1.2 Fg/Ag', 39.5, 21.999, ' Los botines Puma Ultra 1.2 FG/AG están pensados para los jugadores más veloces del equipo. Cuentan con una suela especial TPU SpeedUnit que optimiza la rapidez en el campo con una suela anti-resbalante y muy confiable. Su cuello tejido mejorado con tecnología MATRYXMESH combinada con GripControl para sentir el control total del balón en pleno ataque. Hechos para césped natural y artificial. ', 3, 'Pasto sintetico', 'img/botines/619d07e9b2107.jpg'),
(39, 'Botines Puma Ultra 1.2 Fg/Ag', 39, 21.999, ' Los botines Puma Ultra 1.2 FG/AG están pensados para los jugadores más veloces del equipo. Cuentan con una suela especial TPU SpeedUnit que optimiza la rapidez en el campo con una suela anti-resbalante y muy confiable. Su cuello tejido mejorado con tecnología\r\nMATRYXMESH combinada con GripControl para sentir el control total del balón en pleno ataque. Hechos para césped natural y artificial. ', 3, 'Pasto sintetico', 'img/botines/619d07f43a78b.jpg'),
(40, 'Botines Puma Ultra 1.2 Fg/Ag', 43, 21.999, ' Los botines Puma Ultra 1.2 FG/AG están pensados para los jugadores más veloces del equipo. Cuentan con una suela especial TPU SpeedUnit que optimiza la rapidez en el campo con una suela anti-resbalante y muy confiable. Su cuello tejido mejorado con tecnología MATRYXMESH combinada con GripControl para sentir el control total del balón en pleno ataque. Hechos para césped natural y artificial. ', 3, 'Pasto sintetico', 'img/botines/619d07fbac3e1.jpg'),
(41, 'Botines Puma Ultra 1.2 Fg/Ag', 37.5, 21.999, ' Los botines Puma Ultra 1.2 FG/AG están pensados para los jugadores más veloces del equipo. Cuentan con una suela especial TPU SpeedUnit que optimiza la rapidez en el campo con una suela anti-resbalante y muy confiable. Su cuello tejido mejorado con tecnología MATRYXMESH combinada con GripControl para sentir el control total del balón en pleno ataque. Hechos para césped natural y artificial. ', 3, 'Pasto sintetico', 'img/botines/619d0805cf46a.jpg'),
(77, 'BOTINES PREDATOR FREAK.3 TERRENO FIRME', 40, 11.999, '  BOTINES DE CORTE MEDIO QUE TE AYUDAN A CONTROLAR LOS PARTIDOS EN CANCHAS DE TERRENO FIRME  ', 1, 'Terreno firme', 'img/botines/619d067a9b871.jpg'),
(78, 'BOTINES PREDATOR FREAK.3 TERRENO FIRME', 38, 11.999, ' BOTINES DE CORTE MEDIO QUE TE AYUDAN A CONTROLAR LOS PARTIDOS EN CANCHAS DE TERRENO FIRME ', 1, 'Terreno firme', 'img/botines/619d04533d3b3.jpg'),
(79, 'BOTINES PREDATOR FREAK.3 TERRENO FIRME', 43, 11.999, '  BOTINES DE CORTE MEDIO QUE TE AYUDAN A CONTROLAR LOS PARTIDOS EN CANCHAS DE TERRENO FIRME  ', 1, 'Terreno firme', 'img/botines/619d067fb3765.jpg'),
(81, 'BOTINES COPA 20.1 TERRENO SUAVE', 39, 32.999, '  BOTINES DE CUERO PARA JUGADAS MAESTRAS SOBRE CANCHAS DE TERRENO SUAVE  ', 1, 'Terreno blando', 'img/botines/619d068669f95.jpg'),
(82, 'BOTINES COPA 20.1 TERRENO SUAVE', 43, 32.999, ' BOTINES DE CUERO PARA JUGADAS MAESTRAS SOBRE CANCHAS DE TERRENO SUAVE ', 1, 'Terreno blando', 'img/botines/619d058be1051.jpg'),
(83, 'Botines Lotto Stadio', 37, 8.769, ' Su diseño con materiales sintéticos le confieren una mayor resistencia frente al uso y una sensación de ligereza que te permite dar un plus en cada partido. Esta versión monocromática no pierde la mística y son ideales para canchas de césped natural. ', 4, 'Pasto sintetico', 'img/botines/619d08205ccd1.jpg'),
(84, 'Botines Lotto Stadio', 38, 8.769, ' Su diseño con materiales sintéticos le confieren una mayor resistencia frente al uso y una sensación de ligereza que te permite dar un plus en cada partido. Esta versión monocromática no pierde la mística y son ideales para canchas de césped natural. ', 4, 'Pasto sintetico', 'img/botines/619d08298c815.jpg'),
(85, 'Botines Lotto Stadio', 39, 8.769, ' Su diseño con materiales sintéticos le confieren una mayor resistencia frente al uso y una sensación de ligereza que te permite dar un plus en cada partido. Esta versión monocromática no pierde la mística y son ideales para canchas de césped natural. ', 4, 'Pasto sintetico', 'img/botines/619d0836b7a08.jpg'),
(86, 'Botines Lotto Stadio', 42, 8.769, ' Su diseño con materiales sintéticos le confieren una mayor resistencia frente al uso y una sensación de ligereza que te permite dar un plus en cada partido. Esta versión monocromática no pierde la mística y son ideales para canchas de césped natural. ', 4, 'Pasto sintetico', 'img/botines/619d062a0ed4b.jpg'),
(89, 'asasa', 38, 15000, 'foto', 3, 'Terreno blando', 'img/botines/618d1b3978428.jpg'),
(91, 'asdasdsa', 37, 12121, ' dsadsa ', 1, 'Pasto sintetico', 'img/botines/619d0694c5b42.jpg'),
(93, 'Tiempo Legend 8 Academy TF', 38, 112121, ' pipa ', 2, 'Pasto sintetico', 'img/botines/619d07c7a0d2d.jpg'),
(94, 'asasa', 37, 121212, ' asasa ', 1, 'Pasto sintetico', 'img/botines/619d06c0a4618.jpg'),
(95, 'asas', 37, 12121, ' asas ', 1, 'Pasto sintetico', 'img/botines/619d06b61caa1.jpg'),
(96, 'topppppppp', 38.5, 23232, 'reeeeeeee', 21, 'Terreno blando', 'img/botines/6199744a968ae.jpg'),
(97, 'topper 2.3', 38.5, 22221, 'los mejores', 21, 'Terreno blando', 'img/botines/619cf7165da0d.jpg'),
(98, 'a', 42, 21111, 'aaaaaaaaaa', 20, 'Terreno blando', 'img/botines/619cf97789494.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `id` int(11) NOT NULL,
  `id_botin_fk` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `comentario` varchar(1000) NOT NULL,
  `puntaje` int(11) NOT NULL,
  `fotoPerfil` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`id`, `id_botin_fk`, `usuario`, `comentario`, `puntaje`, `fotoPerfil`) VALUES
(23, 10, 'cacho', 'buenisimos', 3, 'img/fotosPerfil/61955194546d9.jpg'),
(24, 10, 'pipa9', 'piolas', 4, 'img/fotosPerfil/61955194546d9.jpg'),
(26, 10, 'jfquintero10', 'los mejores', 5, 'img/fotosPerfil/619828c0cb6d1.jpg'),
(27, 77, 'juanperez1', 'muy buenos', 4, 'img\\fotosPerfil\\sinFotoPerfil.jpg'),
(28, 77, 'juanperez1', 'de verdad', 5, 'img\\fotosPerfil\\sinFotoPerfil.jpg'),
(29, 77, 'juanperez1', 'dasdas', 3, 'img\\fotosPerfil\\sinFotoPerfil.jpg'),
(30, 10, 'colorodriguezf', 'muy buenos', 4, 'img\\fotosPerfil\\sinFotoPerfil.jpg'),
(31, 91, 'colorodriguezf', 'muy buenos', 5, 'img\\fotosPerfil\\sinFotoPerfil.jpg'),
(32, 79, 'colorodriguezf', 'asdsadasda', 4, 'img\\fotosPerfil\\sinFotoPerfil.jpg'),
(34, 78, 'juanito', 'malos', 1, 'img/fotosPerfil/61955194546d9.jpg'),
(35, 78, 'colorodriguezf', 'buenisimos', 5, 'img\\fotosPerfil\\sinFotoPerfil.jpg'),
(36, 78, 'colorodriguezf', 'buenos', 4, 'img\\fotosPerfil\\sinFotoPerfil.jpg'),
(38, 77, 'colorodriguezf', 'buenisimos', 5, 'img\\fotosPerfil\\sinFotoPerfil.jpg'),
(39, 97, 'colorodriguezf', 'eweqeqw', 5, 'img\\fotosPerfil\\sinFotoPerfil.jpg'),
(49, 98, 'colorodriguezf', 'wedwad', 2, 'img\\fotosPerfil\\sinFotoPerfil.jpg'),
(50, 98, 'colorodriguezf', 'sfsd', 1, 'img\\fotosPerfil\\sinFotoPerfil.jpg');

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
(4, 'Lotto'),
(20, 'Under armour'),
(21, 'TOPPER');

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
  `nombre_usuario` varchar(50) DEFAULT NULL,
  `administrador` bit(1) NOT NULL,
  `fotoPerfil` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `password`, `nombre`, `apellido`, `nombre_usuario`, `administrador`, `fotoPerfil`) VALUES
(2, 'juanperez@gmail.com', '$2y$10$r3lCWEbvyvgxgot/IX2JJeAy4NWorKgrT9/K1ynkC0MJpKVl6qTq6', 'juan', 'perez', 'juanperez1', b'0', 'img\\fotosPerfil\\sinFotoPerfil.jpg'),
(4, 'juanaperez@gmail.com', '$2y$10$ywSTIdPeBLA8FcY4jYvUbeLevQ9/vpXnIw5/AB71tRy7mkwnEvGuq', 'juana', 'perez', 'juanaperez10', b'0', 'img\\fotosPerfil\\sinFotoPerfil.jpg'),
(6, 'Colitorodriguez97@gmail.com', '$2y$10$HFTleXdOJFzluIV5YZbicutb0Zr.Bmmckj8sFMDf9H/AD97SXXoBi', 'Julian', 'Rodriguez', 'colorodriguezf', b'1', 'img\\fotosPerfil\\sinFotoPerfil.jpg'),
(7, 'valencharlone@gmail.com', '$2y$10$Jbi.ZjEUHMMthAX2LeRk9u.JkaeiDfMa1dU4XiWhZDcnSidSwcKRG', 'Valentin', 'Charlone', 'valenCharlone', b'1', 'img\\fotosPerfil\\sinFotoPerfil.jpg'),
(10, 'pipahiguain@gmail.com', '$2y$10$1vWcjYGLpych/Itn5QxnhOneY4S80iGg8WFHam08gpW/b3dR4CW3u', 'gonzalo', 'higuain', 'pipa9', b'0', 'img/fotosPerfil/61955194546d9.jpg'),
(11, 'a', '$2y$10$SVYTLINf92g5XKFYJlqCYenWCjHd/j4OlDS9OSq5C3vxMB4lpqh0W', 'a', 'a', 'a', b'0', 'img/fotosPerfil/61956440a843a.jpg'),
(12, 'juanferquintero@gmail.com', '$2y$10$wttUjv/4.7ru/TS/.OTswOSy2Nqb97.vuPG654BvvsrwISB9NytpS', 'juan fernando', 'quintero', 'jfquintero10', b'0', 'img/fotosPerfil/619828c0cb6d1.jpg');

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
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_botin_fk` (`id_botin_fk`);

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
  MODIFY `id_botin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `botin`
--
ALTER TABLE `botin`
  ADD CONSTRAINT `botin_ibfk_1` FOREIGN KEY (`id_marca_fk`) REFERENCES `marca` (`id_marca`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`id_botin_fk`) REFERENCES `botin` (`id_botin`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
