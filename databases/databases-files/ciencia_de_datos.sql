-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-01-2025 a las 18:32:01
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ciencia_de_datos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ca`
--

CREATE TABLE `ca` (
  `id` bigint(20) NOT NULL,
  `nombre` text NOT NULL,
  `codigo` text NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ca`
--

INSERT INTO `ca` (`id`, `nombre`, `codigo`, `descripcion`) VALUES
(1, 'Ninguno', 'NA', 'NA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` bigint(20) NOT NULL,
  `nombre` text NOT NULL,
  `codigo` text NOT NULL,
  `sigla` text NOT NULL,
  `idInstituto` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `nombre`, `codigo`, `sigla`, `idInstituto`) VALUES
(1, 'Ingeniería en Electrónica', '01', 'IE', 1),
(2, 'Ingeniería en Computación', '02', 'IC', 2),
(3, 'Ingeniería en Diseño', '03', 'ID', 3),
(17, 'Ingeniería en Mecatronica', '17', 'IM', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `correo_electronico`, `telefono`, `direccion`, `fecha_registro`) VALUES
(1, 'Juan Pérez', 'juan.perez@example.com', '555-1234', 'Calle Falsa 123', '2024-12-06 01:30:07'),
(2, 'María López', 'maria.lopez@example.com', '555-5678', 'Avenida Siempre Viva 456', '2024-12-06 01:30:07'),
(3, 'Carlos García', 'carlos.garcia@example.com', '555-7890', 'Calle Luna 789', '2024-12-06 01:33:11'),
(4, 'Ana Torres', 'ana.torres@example.com', '555-4567', 'Calle Estrella 321', '2024-12-06 01:33:11'),
(5, 'Luis Fernández', 'luis.fernandez@example.com', '555-9876', 'Avenida Sol 654', '2024-12-06 01:33:11'),
(6, 'Paula Martínez', 'paula.martinez@example.com', '555-6543', 'Calle Nube 987', '2024-12-06 01:33:11'),
(7, 'Ricardo Díaz', 'ricardo.diaz@example.com', '555-1212', 'Calle Palma 45', '2024-12-06 01:35:34'),
(8, 'Sofía Reyes', 'sofia.reyes@example.com', '555-1313', 'Avenida Encina 89', '2024-12-06 01:35:34'),
(9, 'Fernando Ortiz', 'fernando.ortiz@example.com', '555-1414', 'Calle Sauce 32', '2024-12-06 01:35:34'),
(10, 'Gabriela Silva', 'gabriela.silva@example.com', '555-1515', 'Avenida Pino 76', '2024-12-06 01:35:34'),
(11, 'Héctor Guzmán', 'hector.guzman@example.com', '555-1616', 'Calle Roble 54', '2024-12-06 01:35:34'),
(12, 'Claudia Castro', 'claudia.castro@example.com', '555-1717', 'Avenida Fresno 88', '2024-12-06 01:35:34'),
(13, 'David Ramírez', 'david.ramirez@example.com', '555-1818', 'Calle Cedro 12', '2024-12-06 01:35:34'),
(14, 'Laura Peña', 'laura.pena@example.com', '555-1919', 'Avenida Acacia 101', '2024-12-06 01:35:34'),
(15, 'Mario Rojas', 'mario.rojas@example.com', '555-2020', 'Calle Ciprés 67', '2024-12-06 01:35:34'),
(16, 'Elena Vargas', 'elena.vargas@example.com', '555-2121', 'Avenida Haya 55', '2024-12-06 01:35:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id_detalle` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) GENERATED ALWAYS AS (`cantidad` * `precio_unitario`) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedidos`
--

INSERT INTO `detalle_pedidos` (`id_detalle`, `id_pedido`, `id_producto`, `cantidad`, `precio_unitario`) VALUES
(1, 1, 1, 2, 10.00),
(2, 2, 3, 2, 20.75),
(3, 2, 1, 1, 10.00),
(4, 3, 4, 10, 5.00),
(5, 3, 5, 2, 12.99),
(6, 4, 6, 20, 7.50),
(7, 4, 2, 3, 15.50),
(8, 5, 7, 2, 50.00),
(9, 5, 8, 10, 6.50),
(10, 6, 9, 20, 15.00),
(11, 6, 10, 5, 22.00),
(12, 7, 4, 3, 40.00),
(13, 7, 5, 6, 12.99),
(14, 8, 6, 24, 7.50),
(15, 8, 2, 2, 15.50),
(16, 9, 1, 30, 10.00),
(17, 9, 3, 12, 20.75),
(18, 10, 11, 4, 30.00),
(19, 10, 12, 5, 18.50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institutos`
--

CREATE TABLE `institutos` (
  `id` bigint(20) NOT NULL,
  `nombre` text NOT NULL,
  `codigo` text NOT NULL,
  `sigla` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `institutos`
--

INSERT INTO `institutos` (`id`, `nombre`, `codigo`, `sigla`) VALUES
(1, 'Instituto de Electrónica y Mecatrónica', '001', 'IEM'),
(2, 'Instituto de Computación', '002', 'IC'),
(3, 'Instituto de Diseño', '003', 'ID');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha_pedido` timestamp NOT NULL DEFAULT current_timestamp(),
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `id_cliente`, `fecha_pedido`, `total`) VALUES
(1, 1, '2024-12-06 01:30:07', 30.00),
(2, 2, '2024-10-06 01:33:28', 45.50),
(3, 3, '2024-11-06 01:33:28', 99.99),
(4, 4, '2024-11-06 01:33:28', 150.00),
(5, 1, '2024-10-06 01:33:28', 30.00),
(6, 5, '2024-12-06 01:35:48', 120.00),
(7, 6, '2024-03-06 01:35:48', 200.50),
(8, 7, '2024-10-06 01:35:48', 75.00),
(9, 8, '2024-12-06 01:35:48', 180.00),
(10, 9, '2024-11-06 01:35:48', 300.00),
(11, 10, '2024-08-06 01:35:48', 90.00),
(12, 1, '2024-11-06 01:35:48', 150.00),
(13, 2, '2024-11-06 01:35:48', 250.50),
(14, 3, '2024-05-06 01:35:48', 400.00),
(15, 4, '2024-12-06 01:35:48', 110.75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `descripcion`, `precio`, `stock`, `fecha_creacion`) VALUES
(1, 'Producto A', 'Descripción del Producto A', 10.00, 100, '2024-12-06 01:30:07'),
(2, 'Producto B', 'Descripción del Producto B', 15.50, 50, '2024-12-06 01:30:07'),
(3, 'Producto C', 'Descripción del Producto C', 20.75, 150, '2024-12-06 01:32:55'),
(4, 'Producto D', 'Descripción del Producto D', 5.00, 200, '2024-12-06 01:32:55'),
(5, 'Producto E', 'Descripción del Producto E', 12.99, 80, '2024-12-06 01:32:55'),
(6, 'Producto F', 'Descripción del Producto F', 7.50, 300, '2024-12-06 01:32:55'),
(7, 'Producto G', 'Descripción del Producto G', 25.00, 120, '2024-12-06 01:35:22'),
(8, 'Producto H', 'Descripción del Producto H', 30.00, 50, '2024-12-06 01:35:22'),
(9, 'Producto I', 'Descripción del Producto I', 18.50, 60, '2024-12-06 01:35:22'),
(10, 'Producto J', 'Descripción del Producto J', 40.00, 90, '2024-12-06 01:35:22'),
(11, 'Producto K', 'Descripción del Producto K', 9.99, 10, '2024-12-06 01:35:22'),
(12, 'Producto L', 'Descripción del Producto L', 8.75, 300, '2024-12-06 01:35:22'),
(13, 'Producto M', 'Descripción del Producto M', 50.00, 45, '2024-12-06 01:35:22'),
(14, 'Producto N', 'Descripción del Producto N', 6.50, 400, '2024-12-06 01:35:22'),
(15, 'Producto O', 'Descripción del Producto O', 15.00, 500, '2024-12-06 01:35:22'),
(16, 'Producto P', 'Descripción del Producto P', 22.00, 250, '2024-12-06 01:35:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id` bigint(20) NOT NULL,
  `nombre` text NOT NULL,
  `correo` text NOT NULL,
  `idCarrera` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id`, `nombre`, `correo`, `idCarrera`) VALUES
(1, 'Erik Ramos', 'erik@gs.utm.mx', 2),
(2, 'Enrique Guzman', 'enrique@gs.utm.mx', 1),
(3, 'Jorge Barahona', 'jorge@gs.utm.mx', 17);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ca`
--
ALTER TABLE `ca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `correo_electronico` (`correo_electronico`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `institutos`
--
ALTER TABLE `institutos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCarrera` (`idCarrera`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ca`
--
ALTER TABLE `ca`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `institutos`
--
ALTER TABLE `institutos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `detalle_pedidos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`),
  ADD CONSTRAINT `detalle_pedidos_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
