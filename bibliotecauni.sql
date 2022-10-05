-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2022 a las 15:22:35
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bibliotecauni`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador_biblioteca`
--

CREATE TABLE `administrador_biblioteca` (
  `id_bibliotecario` int(10) NOT NULL,
  `user` varchar(40) NOT NULL,
  `pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador_biblioteca`
--

INSERT INTO `administrador_biblioteca` (`id_bibliotecario`, `user`, `pass`) VALUES
(8, 'tino', 'd1e8365476be1246ece1e8089f835c3f62b41843'),
(9, 'nagata', 'd1e8365476be1246ece1e8089f835c3f62b41843');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(10) NOT NULL,
  `nombre_categoria` varchar(50) NOT NULL,
  `id_subcategoria` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre_categoria`, `id_subcategoria`) VALUES
(1, 'Programacion Avanzada II', 3),
(2, 'Aplicaciones web', 2),
(4, 'Estadisticas', 2),
(8, 'Python 3', 2),
(9, 'PHP avanzado', 4),
(10, 'HTML 5', 3),
(11, 'Base de datos', 2),
(12, 'Ingenieria de Sistemas', 3),
(13, 'Informatica', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentario` int(10) NOT NULL,
  `remitente` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `asunto` varchar(50) NOT NULL,
  `mensaje` varchar(250) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id_libro` int(10) NOT NULL,
  `foto` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `nombre` varchar(255) CHARACTER SET latin1 NOT NULL,
  `descripcion` varchar(255) CHARACTER SET latin1 NOT NULL,
  `disponible` varchar(2) CHARACTER SET latin1 NOT NULL,
  `id_categoria` int(10) NOT NULL,
  `id_subcategoria` int(10) NOT NULL,
  `id_proveedor` int(10) NOT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `url_descarga` varchar(250) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id_libro`, `foto`, `nombre`, `descripcion`, `disponible`, `id_categoria`, `id_subcategoria`, `id_proveedor`, `fecha_ingreso`, `url_descarga`) VALUES
(3, 'images/mysql.jpg', 'Mysql Version Avanzada', 'Para crear aplicaciones dinamicas', 'no', 2, 2, 2, '2016-01-07', 'http://mediafire.com/id=203044'),
(4, 'images/product2.jpg', 'HTML5 2da Edicion', 'Para crear aplicaciones dinamicas', 'no', 2, 1, 1, '2016-01-07', 'http://mediafire.com/id=203044'),
(5, 'images/product1.jpg', 'Java 8', 'Libro de Programacion', 'si', 1, 1, 1, '2016-01-06', 'http://mega.co.nz/sldldldlffkf'),
(6, 'images/product5.jpg', 'ASP.NET 2019', 'Crea aplicaciones dinamicas', 'no', 2, 1, 1, '2016-01-07', 'http://mega.co.nz/sldldldlffkf'),
(8, 'images/product6.jpg', 'Ajax', 'lenguaje de programacion', 'si', 2, 1, 1, '2016-01-07', 'http://mediafire.com/id=203044'),
(9, 'images/product4.jpg', 'JQuery 2da Edicion', 'Sincronizacion con la base de datos', 'si', 2, 1, 2, '2016-01-14', 'http://mediafire.com/id=203044'),
(10, 'images/php.jpg', 'PHP', 'Para crear aplicaciones dinamicas', 'no', 2, 1, 1, '2016-01-07', 'http://mediafire.com/id=203044'),
(11, 'images/pyton.jpg', 'Python', 'Para crear aplicaciones dinamicas', 'no', 1, 1, 1, '2016-01-07', 'http://mediafire.com/id=203044'),
(12, 'images/visualbasic.jpg', 'Visual Basic', 'Libro de Programacion', 'no', 1, 1, 1, '2016-01-06', 'http://mega.co.nz/sldldldlffkf'),
(13, 'images/java7.jpg', 'Java 7', 'Crea aplicaciones dinamicas', 'si', 1, 1, 1, '2016-01-07', 'http://mega.co.nz/sldldldlffkf'),
(16, 'images/javascript.jpg', 'JavaScript para principiantes', 'Excelente libro para aprender Javascript', 'si', 2, 8, 2, '2016-02-05', 'http://mega.co.nz/sldldldlffkf'),
(17, 'images/csharp.jpg', 'C# Avanzado', 'para programacion', 'si', 1, 2, 2, '2016-02-05', 'http://mega.co.nz/sldldldlffkf'),
(18, 'images/db1.jpg', 'Postgre Sql', 'Para almacenar datos', 'si', 11, 1, 1, '2016-01-07', 'http://mediafire.com/id=203044'),
(19, 'images/db2.jpg', 'SYBAse', 'Para almacenar datos', 'no', 11, 1, 1, '2016-01-07', 'http://mediafire.com/id=203044'),
(20, 'images/db3.jpg', 'dBASE III', 'Para almacenar datos', 'si', 11, 1, 1, '2016-01-06', 'http://mega.co.nz/sldldldlffkf'),
(21, 'images/db4.jpg', 'IBM Informix', 'Para almacenar datos', 'no', 11, 1, 1, '2016-01-07', 'http://mega.co.nz/sldldldlffkf'),
(22, 'images/db5.jpg', 'SQL Server 2012', 'Para almacenar datos', 'si', 11, 1, 1, '2016-01-07', 'http://mediafire.com/id=203044'),
(23, 'images/db6.jpg', 'Oracle 11g', 'Para almacenar datos', 'si', 11, 1, 2, '2016-01-14', 'http://mediafire.com/id=203044'),
(24, 'images/sistemas1.jpg', 'Libro de Sistemas', 'Para aprender mas', 'si', 12, 1, 1, '2016-01-07', 'http://mediafire.com/id=203044'),
(25, 'images/sistemas2.jpg', 'Libro de Sistemas', 'Para aprender mas', 'no', 12, 1, 1, '2016-01-07', 'http://mediafire.com/id=203044'),
(26, 'images/sistemas3.jpg', 'Libro de Sistemas', 'Para aprender mas', 'si', 12, 1, 1, '2016-01-06', 'http://mega.co.nz/sldldldlffkf'),
(27, 'images/sistemas4.jpg', 'Libro de Sistemas', 'Para aprender mas', 'no', 12, 1, 1, '2016-01-07', 'http://mega.co.nz/sldldldlffkf'),
(28, 'images/sistemas5.jpg', 'Libro de Sistemas', 'Para aprender mas', 'si', 12, 1, 1, '2016-01-07', 'http://mediafire.com/id=203044'),
(29, 'images/sistemas6.jpg', 'Libro de Sistemas', 'Para aprender mas', 'si', 12, 1, 2, '2016-01-14', 'http://mediafire.com/id=203044'),
(30, 'images/informatica1.jpg', 'Libro de informatica', 'Para aprender mas', 'si', 13, 1, 1, '2016-01-07', 'http://mediafire.com/id=203044'),
(31, 'images/informatica2.jpg', 'Libro de informatica', 'Para aprender mas', 'no', 13, 1, 1, '2016-01-07', 'http://mediafire.com/id=203044'),
(32, 'images/informatica3.jpg', 'Libro de informatica', 'Para aprender mas', 'si', 13, 1, 1, '2016-01-06', 'http://mega.co.nz/sldldldlffkf'),
(33, 'images/informatica4.jpg', 'Libro de informatica avanzaa', 'Para aprender mas rapido', 'si', 12, 2, 2, '2016-01-12', 'http://mega.co.nz/sldldldlffkfd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pdf`
--

CREATE TABLE `pdf` (
  `id_pdf` int(10) NOT NULL,
  `id_libro` int(10) NOT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `descripcion` mediumtext DEFAULT NULL,
  `tamanio` int(10) UNSIGNED DEFAULT NULL,
  `tipo` varchar(150) DEFAULT NULL,
  `nombre_archivo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pdf`
--

INSERT INTO `pdf` (`id_pdf`, `id_libro`, `titulo`, `descripcion`, `tamanio`, `tipo`, `nombre_archivo`) VALUES
(1, 5, 'javascript', 'Buen Libro', 13311, 'application/pdf', 'libro.pdf'),
(2, 3, 'Mysql Avanzado', 'Para conectar base de datos', 970475, 'application/pdf', 'libro.pdf'),
(3, 4, 'HTML 5', 'Para aplicaciones web', 635134, 'application/pdf', 'libro.pdf'),
(4, 5, 'Java Enterprise Edition', 'Para aplicaciones moviles y de escritorio', 294261, 'application/pdf', 'libro.pdf'),
(5, 9, 'Jquery', 'Sincronizacion con el servidor', 405398, 'application/pdf', 'libro.pdf'),
(6, 10, 'php', 'Buen Libro', 13311, 'application/pdf', 'libro.pdf'),
(7, 11, 'pyton', 'Para conectar base de datos', 970475, 'application/pdf', 'libro.pdf'),
(8, 12, 'Visual Basic', 'Para aplicaciones web', 635134, 'application/pdf', 'libro.pdf'),
(9, 6, 'Asp. Net', 'Para aplicaciones moviles y de escritorio', 294261, 'application/pdf', 'libro.pdf'),
(10, 17, 'C#', 'Sincronizacion con el servidor', 405398, 'application/pdf', 'libro.pdf'),
(11, 3, 'mysql', 'dkdkff', 171766, 'application/pdf', 'libro.pdf'),
(12, 3, 'mysql', 'dkdkff', 171766, 'application/pdf', 'libro.pdf'),
(13, 3, 'mysql', 'dkdkff', 171766, 'application/pdf', 'libro.pdf'),
(14, 3, 'mysql', 'dkdkff', 171766, 'application/pdf', 'libro.pdf'),
(15, 4, 'HTML 5', 'bueno', 171766, 'application/pdf', 'libro.pdf'),
(16, 17, 'C# Avanzado', 'bueno', 171766, 'application/pdf', 'libro.pdf'),
(17, 30, 'informatica2', 'bueno', 171766, 'application/pdf', 'libro.pdf'),
(18, 31, 'dkfk', 'dkkf', 171766, 'application/pdf', 'libro.pdf'),
(19, 28, 'prueba', 'bueno', 171766, 'application/pdf', 'libro.pdf'),
(20, 8, 'Libro pdf de ajax', 'es bueno', 403835, 'application/pdf', 'art08.pdf'),
(21, 9, 'Libro de Ejemplo para Angel', 'Es de buena calidad', 915929, 'application/pdf', 'slidex.tips_catalogo-de-celulares.pdf'),
(22, 6, 'Prueba de libro con nivel avanzado', 'Es una prueba de nivel avanzado 12 de Noviembre', 98304, 'application/pdf', 'tabla_caracteres-ASCII.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo_libro`
--

CREATE TABLE `prestamo_libro` (
  `id_prestamo` int(100) NOT NULL,
  `fecha_prestamo` date NOT NULL,
  `fecha_entrega` date NOT NULL,
  `id_libro` int(10) NOT NULL,
  `id_usuario_estudiante` int(10) NOT NULL,
  `estado` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(10) NOT NULL,
  `nombre_proveedor` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` int(10) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre_proveedor`, `direccion`, `telefono`, `email`) VALUES
(1, 'Libreria COPASA', 'Managgua', 234955, 'gomper23@gmail.com'),
(2, 'Libreria COPASA', 'Managgua', 234955, 'gomper23@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id_subcategoria` int(10) NOT NULL,
  `nombre_subcategoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id_subcategoria`, `nombre_subcategoria`) VALUES
(1, 'C'),
(2, 'C#'),
(3, 'C++'),
(4, 'php'),
(5, 'java'),
(6, 'python'),
(7, 'html'),
(8, 'Javascript 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscriptores`
--

CREATE TABLE `suscriptores` (
  `id_suscriptor` int(10) NOT NULL,
  `nombre_completo` varchar(30) DEFAULT NULL,
  `correo` varchar(30) NOT NULL,
  `observaciones` varchar(200) DEFAULT NULL,
  `fecha_suscripcion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(9) UNSIGNED NOT NULL,
  `username` varchar(180) DEFAULT NULL,
  `password` varchar(180) DEFAULT NULL,
  `email` varchar(180) DEFAULT NULL,
  `id_extreme` varchar(180) DEFAULT NULL,
  `rol` varchar(15) NOT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `imagen` blob DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `username`, `password`, `email`, `id_extreme`, `rol`, `foto`, `imagen`) VALUES
(10, 'elier', 'elier123', 'elier.aries@gmail.com', NULL, 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_estudiante`
--

CREATE TABLE `usuario_estudiante` (
  `id_usuario_estudiante` int(10) NOT NULL,
  `carnet` varchar(15) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `anio` varchar(10) NOT NULL,
  `carrera` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario_estudiante`
--

INSERT INTO `usuario_estudiante` (`id_usuario_estudiante`, `carnet`, `nombre`, `apellidos`, `email`, `anio`, `carrera`) VALUES
(1, '2012-43355', 'Elier Javier', 'Rocha', 'elier.aries@gmail.com', '2do.', 'Ingenieria de Sistemas'),
(2, '2012-43356', 'Alex ', 'jarquin', 'alexjqr@gmail.com', '5to.', 'Ingenieria Civil'),
(6, '2012-4356', 'Juan Carlos', 'perez', 'juanperez@gmail.com', '4to.', 'Ingenieria Agroindustrial'),
(7, '2012-0394J', 'Carlos Jose', 'Gomez', 'elier.aries@gmail.com', '5to.', 'Ingenieria de Sistemas'),
(8, '2012-0394J', 'Jaime Jose', 'Roa', 'elier.aries@gmail.com', '1ro.', 'Ingenieria de Sistemas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitantes`
--

CREATE TABLE `visitantes` (
  `idvisitante` int(11) NOT NULL,
  `nombreCompleto` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `provincia` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `estadoPais` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `alias` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `edad` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `sexo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `pais` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` varchar(1) COLLATE utf8_spanish2_ci NOT NULL,
  `fechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `visitantes`
--

INSERT INTO `visitantes` (`idvisitante`, `nombreCompleto`, `usuario`, `pass`, `email`, `telefono`, `direccion`, `provincia`, `estadoPais`, `alias`, `edad`, `sexo`, `pais`, `estado`, `fechaRegistro`) VALUES
(9, 'Kevin', 'nagata', 'z43a', 'kevin06092005@gmail.com', '322', 'cra32', '', '', 'nagata', '17', 'Masculino', '', '1', '2022-09-24 23:21:04'),
(10, 'katherin', 'azairito', 'losperros.com', 'kevin06092005@gmail.com', '3226370963', 'crr31', '', '', 'azairito', '100', 'Femenino', '', '1', '2022-09-25 16:37:27'),
(11, 'alex', 'zasori de la arena', 'valencia12345', '123@gmail.com', '3567', 'crr31', '', '', 'zasori de la arena', '26', 'Masculino', '', '1', '2022-09-25 23:48:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE `visitas` (
  `utc` int(10) NOT NULL,
  `fecha_visita` date NOT NULL,
  `ip` varchar(50) NOT NULL,
  `navegador` varchar(255) NOT NULL,
  `pagina` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `visitas`
--

INSERT INTO `visitas` (`utc`, `fecha_visita`, `ip`, `navegador`, `pagina`) VALUES
(1664138366, '2022-09-25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '/biblioteca/inicio.php'),
(1664138384, '2022-09-25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '/biblioteca/libros_programacion.php'),
(1664138390, '2022-09-25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '/biblioteca/libros_informatica.php'),
(1664138440, '2022-09-25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '/biblioteca/libros_informatica.php'),
(1664138454, '2022-09-25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '/biblioteca/libros_programacion.php'),
(1664138461, '2022-09-25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '/biblioteca/contacto.php'),
(1664138648, '2022-09-25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '/biblioteca/contacto.php'),
(1664139130, '2022-09-25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '/biblioteca/inicio.php'),
(1664149775, '2022-09-26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '/biblioteca/inicio.php'),
(1664369837, '2022-09-28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '/biblioteca/inicio.php'),
(1664369851, '2022-09-28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '/biblioteca/busqueda.php'),
(1664369859, '2022-09-28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '/biblioteca/busqueda.php?buscar=java&enviar=Buscar+Libro');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador_biblioteca`
--
ALTER TABLE `administrador_biblioteca`
  ADD PRIMARY KEY (`id_bibliotecario`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`),
  ADD KEY `id_subcategoria` (`id_subcategoria`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentario`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id_libro`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `pdf`
--
ALTER TABLE `pdf`
  ADD PRIMARY KEY (`id_pdf`),
  ADD KEY `id_libro` (`id_libro`);

--
-- Indices de la tabla `prestamo_libro`
--
ALTER TABLE `prestamo_libro`
  ADD PRIMARY KEY (`id_prestamo`),
  ADD KEY `id_libro` (`id_libro`),
  ADD KEY `id_usuario_estudiante` (`id_usuario_estudiante`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id_subcategoria`);

--
-- Indices de la tabla `suscriptores`
--
ALTER TABLE `suscriptores`
  ADD PRIMARY KEY (`id_suscriptor`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuario_estudiante`
--
ALTER TABLE `usuario_estudiante`
  ADD PRIMARY KEY (`id_usuario_estudiante`);

--
-- Indices de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  ADD PRIMARY KEY (`idvisitante`);

--
-- Indices de la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD PRIMARY KEY (`utc`),
  ADD UNIQUE KEY `utc` (`utc`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador_biblioteca`
--
ALTER TABLE `administrador_biblioteca`
  MODIFY `id_bibliotecario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id_libro` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `pdf`
--
ALTER TABLE `pdf`
  MODIFY `id_pdf` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `prestamo_libro`
--
ALTER TABLE `prestamo_libro`
  MODIFY `id_prestamo` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id_subcategoria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `suscriptores`
--
ALTER TABLE `suscriptores`
  MODIFY `id_suscriptor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuario_estudiante`
--
ALTER TABLE `usuario_estudiante`
  MODIFY `id_usuario_estudiante` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  MODIFY `idvisitante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD CONSTRAINT `categorias_ibfk_1` FOREIGN KEY (`id_subcategoria`) REFERENCES `subcategorias` (`id_subcategoria`);

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  ADD CONSTRAINT `libros_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `pdf`
--
ALTER TABLE `pdf`
  ADD CONSTRAINT `pdf_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`);

--
-- Filtros para la tabla `prestamo_libro`
--
ALTER TABLE `prestamo_libro`
  ADD CONSTRAINT `prestamo_libro_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`),
  ADD CONSTRAINT `prestamo_libro_ibfk_2` FOREIGN KEY (`id_usuario_estudiante`) REFERENCES `usuario_estudiante` (`id_usuario_estudiante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
