-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-07-2020 a las 11:49:38
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boleta`
--

CREATE TABLE `boleta` (
  `id_boleta` int(11) NOT NULL,
  `id_mesa` int(11) NOT NULL,
  `id_carta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `boleta`
--

INSERT INTO `boleta` (`id_boleta`, `id_mesa`, `id_carta`) VALUES
(1, 1, 1),
(2, 3, 3),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carta`
--

CREATE TABLE `carta` (
  `id_carta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carta`
--

INSERT INTO `carta` (`id_carta`) VALUES
(1),
(2),
(3),
(4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `id_pais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `nombre`, `id_pais`) VALUES
(1, 'Arica', 1),
(2, 'Santiago', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comida`
--

CREATE TABLE `comida` (
  `id_comida` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comida`
--

INSERT INTO `comida` (`id_comida`, `tipo`) VALUES
(1, 'lacteos'),
(2, 'carnes'),
(3, 'legumbres'),
(4, 'verduras'),
(5, 'frutas'),
(6, 'cereales'),
(7, 'grasas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consumo`
--

CREATE TABLE `consumo` (
  `id_boleta` int(11) NOT NULL,
  `id_plato` int(11) NOT NULL,
  `cant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `consumo`
--

INSERT INTO `consumo` (`id_boleta`, `id_plato`, `cant`) VALUES
(1, 1, 3),
(2, 2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery`
--

CREATE TABLE `delivery` (
  `id_delivery` int(11) NOT NULL,
  `nombre_delivery` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `delivery`
--

INSERT INTO `delivery` (`id_delivery`, `nombre_delivery`) VALUES
(1, 'Delivery & House'),
(2, 'Chef delivery');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distribuidores`
--

CREATE TABLE `distribuidores` (
  `id_distribuidores` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `distribuidores`
--

INSERT INTO `distribuidores` (`id_distribuidores`, `nombre`) VALUES
(1, 'Ariztia'),
(2, 'Carnes Arauco'),
(3, 'Santa Elvira');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eletrodomestico`
--

CREATE TABLE `eletrodomestico` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eletrodomestico`
--

INSERT INTO `eletrodomestico` (`id`, `nombre`) VALUES
(1, 'horno'),
(2, 'batidora'),
(3, 'licuadora'),
(4, 'hervidor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_persona` int(11) NOT NULL,
  `id_tipo_empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_persona`, `id_tipo_empleado`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `implemento`
--

CREATE TABLE `implemento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `implemento`
--

INSERT INTO `implemento` (`id`, `nombre`) VALUES
(1, 'utencilios'),
(2, 'vestimenta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `limpieza`
--

CREATE TABLE `limpieza` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa`
--

CREATE TABLE `mesa` (
  `id_mesa` int(11) NOT NULL,
  `id_carta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mesa`
--

INSERT INTO `mesa` (`id_mesa`, `id_carta`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id_pais` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id_pais`, `nombre`) VALUES
(1, 'Chile');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `nombres` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `dni`, `nombres`) VALUES
(1, '181422742', 'franco'),
(2, '193536549', 'alvaro'),
(3, '5478161k', 'Shopan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plato`
--

CREATE TABLE `plato` (
  `id_plato` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `plato`
--

INSERT INTO `plato` (`id_plato`, `precio`, `nombre`) VALUES
(1, 2400, 'pure con huevo'),
(2, 3000, 'arroz con pollo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedores` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedores`, `nombre`) VALUES
(1, 'foodsupply');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recurrencia_c_p`
--

CREATE TABLE `recurrencia_c_p` (
  `id_carta` int(11) NOT NULL,
  `id_plato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `recurrencia_c_p`
--

INSERT INTO `recurrencia_c_p` (`id_carta`, `id_plato`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recurrencia_p_tc`
--

CREATE TABLE `recurrencia_p_tc` (
  `id_plato` int(11) NOT NULL,
  `id_tipo_comida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `recurrencia_p_tc`
--

INSERT INTO `recurrencia_p_tc` (`id_plato`, `id_tipo_comida`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios_basicos`
--

CREATE TABLE `servicios_basicos` (
  `id_servicio` int(11) NOT NULL,
  `nombre_empresa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `servicios_basicos`
--

INSERT INTO `servicios_basicos` (`id_servicio`, `nombre_empresa`) VALUES
(1, 'aguas altiplano'),
(2, 'CGE'),
(3, 'lipigas'),
(4, 'movistar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_comida`
--

CREATE TABLE `tipo_comida` (
  `id_tipo_comida` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `id_comida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_comida`
--

INSERT INTO `tipo_comida` (`id_tipo_comida`, `nombre`, `id_comida`) VALUES
(1, 'pure', 3),
(2, 'huevo', 2),
(3, 'arroz', 6),
(4, 'pollo', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_empleado`
--

CREATE TABLE `tipo_empleado` (
  `id_tipo_empleado` int(11) NOT NULL,
  `cargo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_empleado`
--

INSERT INTO `tipo_empleado` (`id_tipo_empleado`, `cargo`) VALUES
(1, 'chef'),
(2, 'garzon'),
(3, 'cajero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_implemento`
--

CREATE TABLE `tipo_implemento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `id_implemento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `boleta`
--
ALTER TABLE `boleta`
  ADD PRIMARY KEY (`id_boleta`);

--
-- Indices de la tabla `carta`
--
ALTER TABLE `carta`
  ADD PRIMARY KEY (`id_carta`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`),
  ADD KEY `fk_ciudad_pais` (`id_pais`);

--
-- Indices de la tabla `comida`
--
ALTER TABLE `comida`
  ADD PRIMARY KEY (`id_comida`);

--
-- Indices de la tabla `consumo`
--
ALTER TABLE `consumo`
  ADD KEY `fk_consumo_boleta` (`id_boleta`),
  ADD KEY `fk_consumo_plato` (`id_plato`);

--
-- Indices de la tabla `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id_delivery`);

--
-- Indices de la tabla `distribuidores`
--
ALTER TABLE `distribuidores`
  ADD PRIMARY KEY (`id_distribuidores`);

--
-- Indices de la tabla `eletrodomestico`
--
ALTER TABLE `eletrodomestico`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_persona`);

--
-- Indices de la tabla `implemento`
--
ALTER TABLE `implemento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `limpieza`
--
ALTER TABLE `limpieza`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`id_mesa`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id_pais`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plato`
--
ALTER TABLE `plato`
  ADD PRIMARY KEY (`id_plato`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedores`);

--
-- Indices de la tabla `recurrencia_c_p`
--
ALTER TABLE `recurrencia_c_p`
  ADD KEY `fk_rrecurrencia_c_p_carta` (`id_carta`),
  ADD KEY `fk_recurrencia_c_p_plato` (`id_plato`);

--
-- Indices de la tabla `recurrencia_p_tc`
--
ALTER TABLE `recurrencia_p_tc`
  ADD KEY `fk_rrecurrencia_p_tc_plato` (`id_plato`),
  ADD KEY `fk_recurrencia_p_tc_tipo_comida` (`id_tipo_comida`);

--
-- Indices de la tabla `servicios_basicos`
--
ALTER TABLE `servicios_basicos`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `tipo_comida`
--
ALTER TABLE `tipo_comida`
  ADD PRIMARY KEY (`id_tipo_comida`),
  ADD KEY `fk_tipo_comida_comida` (`id_comida`);

--
-- Indices de la tabla `tipo_empleado`
--
ALTER TABLE `tipo_empleado`
  ADD PRIMARY KEY (`id_tipo_empleado`);

--
-- Indices de la tabla `tipo_implemento`
--
ALTER TABLE `tipo_implemento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tipo_implemento_implemento` (`id_implemento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `boleta`
--
ALTER TABLE `boleta`
  MODIFY `id_boleta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `limpieza`
--
ALTER TABLE `limpieza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_implemento`
--
ALTER TABLE `tipo_implemento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `fk_ciudad_pais` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`) ON DELETE CASCADE;

--
-- Filtros para la tabla `consumo`
--
ALTER TABLE `consumo`
  ADD CONSTRAINT `fk_consumo_boleta` FOREIGN KEY (`id_boleta`) REFERENCES `boleta` (`id_boleta`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_consumo_plato` FOREIGN KEY (`id_plato`) REFERENCES `plato` (`id_plato`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `fk_empleado_persona` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `recurrencia_c_p`
--
ALTER TABLE `recurrencia_c_p`
  ADD CONSTRAINT `fk_recurrencia_c_p_plato` FOREIGN KEY (`id_plato`) REFERENCES `plato` (`id_plato`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rrecurrencia_c_p_carta` FOREIGN KEY (`id_carta`) REFERENCES `carta` (`id_carta`) ON DELETE CASCADE;

--
-- Filtros para la tabla `recurrencia_p_tc`
--
ALTER TABLE `recurrencia_p_tc`
  ADD CONSTRAINT `fk_recurrencia_p_tc_tipo_comida` FOREIGN KEY (`id_tipo_comida`) REFERENCES `tipo_comida` (`id_tipo_comida`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rrecurrencia_p_tc_plato` FOREIGN KEY (`id_plato`) REFERENCES `plato` (`id_plato`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tipo_comida`
--
ALTER TABLE `tipo_comida`
  ADD CONSTRAINT `fk_tipo_comida_comida` FOREIGN KEY (`id_comida`) REFERENCES `comida` (`id_comida`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tipo_implemento`
--
ALTER TABLE `tipo_implemento`
  ADD CONSTRAINT `fk_tipo_implemento_implemento` FOREIGN KEY (`id_implemento`) REFERENCES `implemento` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
