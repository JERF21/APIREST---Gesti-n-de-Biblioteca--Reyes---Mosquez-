-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2024 a las 15:24:38
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(3) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  `fecha_nacimiento` varchar(30) NOT NULL,
  `biografia` varchar(500) NOT NULL,
  `imagen_autor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id_autor`, `nombre`, `apellido`, `nacionalidad`, `fecha_nacimiento`, `biografia`, `imagen_autor`) VALUES
(1, 'Albert', 'Camus', 'Francés', '1973-11-07', 'Albert Camus fue un novelista, ensayista, dramaturgo, filósofo y periodista francés nacido en la Argelia francesa. Su pensamiento se desarrolla bajo el influjo de los razonamientos filosóficos de Schopenhauer, Nietzsche y el existencialismo alemán.', 'RESEG8772camus.jpg'),
(4, 'Homero', '(desconocido)', 'Griego', '', 'Homero es uno de los poetas más importantes de la antigua Grecia y el autor de dos de las obras más influyentes de la literatura: La Ilíada y La Odisea. Se cree que nació en alguna de las ciudades de Asia Menor, como Esmirna o Quíos. Su vida está rodeada de misterio y la mayoría de los detalles sobre su existencia provienen de leyendas. Se dice que era ciego, aunque esto es incierto. Sus poemas épicos, transmitidos oralmente durante siglos antes de ser escritos, relatan historias de héroes, dios', 'homero.jpg'),
(5, 'Howard Phillips', 'Lovecraft', 'Estadounidense', '1890-08-20', 'H.P. Lovecraft fue un escritor estadounidense conocido por su contribución a la literatura de terror, especialmente a través de sus relatos de horror cósmico. Nació en Providence, Rhode Island, donde vivió la mayor parte de su vida. Su obra explora lo desconocido y lo sobrenatural, creando un universo de entidades antiguas y poderosas como Cthulhu, que habitan los límites del conocimiento humano. Lovecraft escribió muchos de sus relatos en revistas pulp, sin alcanzar gran fama en vida. Sin embar', 'lovecraft.jpg'),
(6, 'Clive', 'Cussler', 'Estadounidense', '1931-07-15', 'Clive Cussler fue un autor y explorador estadounidense, conocido por sus novelas de aventura y thriller, particularmente las que protagonizan al personaje Dirk Pitt. Nació en Aurora, Illinois, y creció en una familia que fomentó su amor por la escritura y la exploración. Cussler publicó su primera novela, Pacific Vortex!, en 1976, y rápidamente ganó popularidad con su mezcla de acción, historia y elementos de misterio. Además de su carrera como escritor, fue un apasionado explorador marítimo y f', 'clive.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(3) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` int(15) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `imagen_cliente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellido`, `email`, `telefono`, `direccion`, `imagen_cliente`) VALUES
(7, 'Juan', 'Perez', 'juan.perez@gmail.com', 65784563, '123 Calle Principal, Ciudad ABC, CP 10001', 'persona1.jpg'),
(8, 'María', 'Gonzalez', 'maria.gonzalez@hotmail.com', 76890893, '456 Avenida Central, Ciudad XYZ, CP 20002', 'persona2.jpg'),
(9, 'Carlos', 'Martinez', 'carlos.martinez@yahoo.com', 70864829, '789 Camino Real, Ciudad DEF, CP 30003', 'persona3.jpg'),
(10, 'Ana', 'Lopez', 'ana.lopez@gmail.com', 76482910, '321 Boulevard Norte, Ciudad GHI, CP 40004', 'persona4.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(3) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `nombre`, `descripcion`) VALUES
(6, 'Ficción', 'Narraciones inventadas que reflejan la imaginación del autor, explorando diversas realidades y experiencias humanas.'),
(7, 'Fantasía', 'Historias que incluyen elementos mágicos y mundos imaginarios, donde lo sobrenatural y lo extraordinario son parte integral de la trama.'),
(8, 'Misterio', 'Género que se centra en la resolución de un crimen o en desentrañar secretos, manteniendo la intriga y el suspenso hasta el final.'),
(9, 'Romance', 'Historias que se centran en relaciones amorosas, explorando la conexión emocional entre los personajes y sus desafíos.'),
(10, 'Horror', 'Obras diseñadas para provocar miedo y suspense, utilizando elementos sobrenaturales o situaciones inquietantes para impactar al lector'),
(11, 'Aventura', 'Narrativas que siguen a personajes en sus travesías emocionantes y arriesgadas, a menudo explorando nuevos lugares y enfrentando desafíos.'),
(12, 'Psicológico', 'Narrativas que profundizan en la mente y emociones de los personajes, explorando conflictos internos, traumas y complejidades humanas.'),
(13, 'Acción', 'Se caracteriza por narrativas dinámicas que incluyen aventuras emocionantes, enfrentamientos físicos y conflictos intensos, manteniendo al lector al borde de su asiento.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id_libro` int(3) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `sinopsis` varchar(500) NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `editorial` varchar(50) NOT NULL,
  `numero_paginas` int(5) NOT NULL,
  `stock` int(3) NOT NULL,
  `imagen_libro` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id_libro`, `titulo`, `autor`, `genero`, `sinopsis`, `fecha_publicacion`, `editorial`, `numero_paginas`, `stock`, `imagen_libro`) VALUES
(14, 'El extranjero', 'Albert Camus', 'Psicológico', 'Esta es la historia de Meursault, un hombre indiferente y emocionalmente desapegado que vive en Argelia. La trama comienza con la noticia de la muerte de su madre, a la que él reacciona con una sorprendente frialdad. Poco después, se involucra en una relación casual y se ve envuelto en un conflicto con un vecino, que lo lleva a matar a un árabe en la playa, aparentemente sin motivo alguno. Durante su juicio, su comportamiento y falta de emoción durante el funeral de su madre pesan más que el cri', '1942-07-22', 'Gallimard', 120, 3, 'extranjero.jpg'),
(15, 'La illiada', 'Homero (desconocido)', 'Ficción', 'La Ilíada, atribuida a Homero, es una épica que narra los eventos de la Guerra de Troya, centrándose en la cólera del héroe griego Aquiles. La historia comienza con el conflicto entre Aquiles y Agamemnón, quien le quita a su amante Briseida. Este acto desata la furia de Aquiles, llevándolo a retirarse del combate, lo que cambia el rumbo de la guerra. A medida que la batalla se intensifica, la obra explora temas de honor, destino, y la naturaleza de la gloria en la guerra. A través de la interacc', '0000-00-00', 'Akal Editions', 500, 6, 'illiada.jpeg'),
(16, 'El llamado de Cthulu', 'Howard Phillips Lovecraft', 'Horror', 'Esta historia narra el descubrimiento de un antiguo culto que rinde homenaje a Cthulhu, una deidad monstruosa que duerme en las profundidades del océano. El relato está estructurado a través de la investigación de un académico que, tras descubrir una serie de documentos y relatos inquietantes, se adentra en un mundo de locura y terror. A medida que investiga, se revela la existencia de criaturas cósmicas y fuerzas más allá de la comprensión humana, planteando preguntas sobre la insignificancia d', '1928-06-22', 'Valdemar', 170, 2, 'cthulu.png'),
(17, 'Sahara', 'Clive Cussler', 'Acción', 'En Sahara, el explorador y cazador de tesoros Dirk Pitt se embarca en una peligrosa aventura en el desierto africano. Al investigar un misterioso barco que aparece en un río seco, descubre una conspiración que involucra una amenaza biológica y la codicia de poderosos enemigos. A medida que Pitt y su equipo enfrentan adversidades y enemigos mortales, deben desentrañar el misterio detrás del naufragio y salvar a miles de vidas. La novela combina acción trepidante, intriga y la inconfundible habili', '1990-07-05', 'Penguin Random House', 550, 4, 'sahara.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `id_prestamo` int(3) NOT NULL,
  `cliente` varchar(50) NOT NULL,
  `libro` varchar(50) NOT NULL,
  `fecha_prestamo` date NOT NULL,
  `fecha_devolucion` date NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `prestamo` (`id_prestamo`, `cliente`, `libro`, `fecha_prestamo`, `fecha_devolucion`, `estado`) VALUES
(4, 'Juan Perez', 'El extranjero', '2024-10-08', '2024-10-31', 0),
(5, 'María Gonzalez', 'La illiada', '2024-10-10', '2024-10-30', 0),
(6, 'Carlos Martinez', 'El llamado de Cthulu', '2024-10-01', '2024-10-09', 1),
(7, 'Ana Lopez', 'Sahara', '2024-10-01', '2024-10-16', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `login_usuario` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `perfil` varchar(30) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `ultimo_login` datetime NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `login_usuario`, `password`, `perfil`, `estado`, `ultimo_login`, `fecha_registro`) VALUES
(1, 'DIR', 'admin123', 'Director', 1, '2024-10-15 10:54:47', '2024-08-13 19:39:50'),
(20, 'abc', '12345678', 'Tecnico', 0, '2024-10-21 22:47:44', '2024-10-17 03:14:33');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autor`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id_libro`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`id_prestamo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `id_autor` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id_libro` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  MODIFY `id_prestamo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
