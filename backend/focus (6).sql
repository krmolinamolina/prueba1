-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-01-2020 a las 23:09:18
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `focus`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda_asesoria`
--

CREATE TABLE `agenda_asesoria` (
  `id_asesoria` int(11) NOT NULL,
  `id_asesor` int(11) NOT NULL,
  `id_tecnico_asesoria` int(11) NOT NULL,
  `fecha_asesoria` int(11) NOT NULL,
  `hora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arl`
--

CREATE TABLE `arl` (
  `codArl` int(2) NOT NULL,
  `nomArl` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargodependencia`
--

CREATE TABLE `cargodependencia` (
  `codCargo` int(3) NOT NULL,
  `nomCargo` text COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo`
--

CREATE TABLE `catalogo` (
  `codCatalogo` int(11) NOT NULL,
  `codMarCatalogo` int(3) NOT NULL,
  `codRefCatalogo` int(3) NOT NULL,
  `codTipCatalogo` int(3) NOT NULL,
  `codClaCatalogo` int(2) NOT NULL,
  `nomCatalogo` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `desCatalogo` text COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificacion_catalogo`
--

CREATE TABLE `clasificacion_catalogo` (
  `codClaCatalogo` int(2) NOT NULL,
  `nomClaCatalogo` varchar(45) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `clasificacion_catalogo`
--

INSERT INTO `clasificacion_catalogo` (`codClaCatalogo`, `nomClaCatalogo`) VALUES
(1, 'Nuevo'),
(2, 'Usado'),
(3, 'Maquinaria'),
(4, 'Recambio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `codDepartamento` int(2) NOT NULL,
  `nomDepartamento` mediumtext COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`codDepartamento`, `nomDepartamento`) VALUES
(5, 'ANTIOQUIA'),
(8, 'ATLÁNTICO'),
(11, 'BOGOTÁ, D.C.'),
(13, 'BOLÍVAR'),
(15, 'BOYACÁ'),
(17, 'CALDAS'),
(18, 'CAQUETÁ'),
(19, 'CAUCA'),
(20, 'CESAR'),
(23, 'CÓRDOBA'),
(25, 'CUNDINAMARCA'),
(27, 'CHOCÓ'),
(41, 'HUILA'),
(44, 'LA GUAJIRA'),
(47, 'MAGDALENA'),
(50, 'META'),
(52, 'NARIÑO'),
(54, 'NORTE DE SANTANDER'),
(63, 'QUINDIO'),
(66, 'RISARALDA'),
(68, 'SANTANDER'),
(70, 'SUCRE'),
(73, 'TOLIMA'),
(76, 'VALLE DEL CAUCA'),
(81, 'ARAUCA'),
(85, 'CASANARE'),
(86, 'PUTUMAYO'),
(88, 'ARCHIPIÉLAGO DE SAN ANDRÉS, PROVIDENCIA '),
(91, 'AMAZONAS'),
(94, 'GUAINÍA'),
(95, 'GUAVIARE'),
(97, 'VAUPÉS'),
(99, 'VICHADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_maquina`
--

CREATE TABLE `detalle_maquina` (
  `codDetalle` int(11) NOT NULL,
  `codMaquina` int(11) NOT NULL,
  `nomDetalle` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `rutaDetalle` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `nitEmpresa` varchar(12) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nomEmpresa` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `telEmpresa` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `dirEmpresa` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_maquina`
--

CREATE TABLE `empresa_maquina` (
  `codMatMaquina` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `codEmpresa` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `codMaquina` int(11) NOT NULL,
  `fecComMaquina` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `EstComMaquina` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `codEstado` int(2) NOT NULL,
  `nomEstado` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`codEstado`, `nomEstado`) VALUES
(1, 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `codEvento` int(11) NOT NULL,
  `desEvento` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecIniEvento` date NOT NULL,
  `fecFinEvento` date NOT NULL,
  `imgEvento` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `titEvento` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ubiEvento` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `porEvento` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`codEvento`, `desEvento`, `fecIniEvento`, `fecFinEvento`, `imgEvento`, `titEvento`, `ubiEvento`, `porEvento`) VALUES
(3, 'ffdfdgffffffg', '2019-12-01', '2019-12-10', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'fffhmj', 'img/eventos/punzonado.jpg'),
(4, 'este evento es de gran impacto por todos ', '2019-12-03', '2019-12-05', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'acacac', 'img/eventos/punzonado.jpg'),
(5, 'ghghg', '2019-12-17', '2019-12-11', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'fffhmj', 'img/eventos/punzonado.jpg'),
(6, 'este evento es de gran impacto por todos ', '2019-12-03', '2019-12-05', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'acacac', 'img/eventos/punzonado.jpg'),
(7, 'djfjhghk', '2019-12-17', '2019-12-27', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'hkg,bbn', 'img/eventos/punzonado.jpg'),
(8, 'kgjvvhjhj', '2019-12-17', '2019-12-26', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'jjhmn', 'img/eventos/punzonado.jpg'),
(9, 'jdhkdhskjd', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'fffhmj', 'img/eventos/punzonado.jpg'),
(10, 'este evento es de gran impacto por todos ', '2019-12-03', '2019-12-05', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'acacac', 'img/eventos/punzonado.jpg'),
(11, 'ggbnbb', '2019-12-17', '2019-12-27', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'bbnbnmmn ', 'img/eventos/punzonado.jpg'),
(12, 'kgjvvhjhj', '2019-12-17', '2019-12-25', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'jjhmn', 'img/eventos/punzonado.jpg'),
(13, 'ghhgmj', '2019-12-23', '2019-12-25', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'nbnn ', 'img/eventos/punzonado.jpg'),
(14, 'feria empresarial', '2019-12-25', '2019-12-25', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(15, 'feria empresarial', '2019-12-03', '2019-12-05', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(16, 'feria empresarial', '2019-12-10', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(17, 'feria empresarial', '2019-12-10', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(18, 'feria empresarial', '2019-12-10', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(19, 'feria empresarial', '2019-12-10', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(20, 'feria empresarial', '2019-12-10', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(21, 'feria empresarial', '2019-12-10', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(22, 'feria empresarial', '2019-12-10', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(23, 'feria empresarial', '2019-12-10', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(24, 'feria empresarial', '2019-12-10', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(25, 'feria empresarial', '2019-12-10', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(26, 'feria empresarial', '2019-12-10', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(27, 'feria empresarial', '2019-12-10', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(28, 'feria empresarial', '2019-12-10', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(29, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(30, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(31, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(32, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(33, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(34, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(35, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(36, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(37, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(38, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(39, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(40, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(41, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(42, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(43, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(44, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(45, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(46, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(47, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(48, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(49, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(50, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(51, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(52, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(53, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(54, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(55, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(56, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(57, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(58, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(59, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(60, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(61, 'feria empresarial', '2019-12-24', '2019-12-24', 'img/eventos/default/banerevento.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(62, 'feria empresarial', '2019-12-24', '2019-12-24', '../view/img/eventos/91/157.jpg', 'feria empresarial de bogota', 'feria empresarial', 'img/eventos/punzonado.jpg'),
(91, '<ul class=\"lista\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin-top: 15px; vertical-align: baseline; outline: 0px; list-style-position: inside;\"><li style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; vertical-align: baseline; outline: 0px; list-style: none; margin-bottom: 10px !important;\"><span class=\"fas fa-check\" style=\"color: rgb(245, 193, 51); font-family: &quot;Font Awesome 5 Free&quot;; font-size: 12px; background: 0px 0px; border: 0px; margin: 0px; padding: 0px 10px 0px 0px; vertical-align: baseline; outline: 0px;\" aria-hidden=\"true\"></span>Porque es una vivencia con escenarios de reflexión sobre el individuo y su relación con el Otro como seres sistémicos e interconectados generadores de conocimientos y nuevas realidades.</li><li style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; vertical-align: baseline; outline: 0px; list-style: none; margin-bottom: 10px !important;\"><span class=\"fas fa-check\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px 10px 0px 0px; vertical-align: baseline; outline: 0px;\" aria-hidden=\"true\"></span>Porque es un encuentro intercultural con líderes inspiradores de diversos sectores, nacionales e internacionales.</li><li style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; vertical-align: baseline; outline: 0px; list-style: none; margin-bottom: 10px !important;\"><span class=\"fas fa-check\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px 10px 0px 0px; vertical-align: baseline; outline: 0px;\" aria-hidden=\"true\"></span>Porque es una experiencia que procura la reflexión profunda sobre el Ser y la construcción con el Otro, movilizando el conocimiento entre la teoría y la narración hacia la acción y lo vital.</li><li style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; vertical-align: baseline; outline: 0px; list-style: none; margin-bottom: 10px !important;\"><span class=\"fas fa-check\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px 10px 0px 0px; vertical-align: baseline; outline: 0px;\" aria-hidden=\"true\"></span>Porque es una apuesta por la transformación individual y social, con experiencias sensibles, académicas, críticas que te conectan con otros Seres Humanos comprometidos consigo y con su entorno.</li><li style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; outline: 0px; list-style: none;\"><span class=\"fas fa-check\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; margin: 0px; padding: 0px 10px 0px 0px; vertical-align: baseline; outline: 0px;\" aria-hidden=\"true\"></span>Porque es una oportunidad para propiciar reflexiones orientadas a la transformación personal y organizacional compartiendo experiencias y posturas que evidencian que sí es posible construir desde el reconocimiento de tu propio potencial, y a partir de allí, admirarse por la diferencia.</li></ul><hr id=\"null\">', '2020-01-22', '2020-01-23', '../view/img/eventos/91/157.jpg', 'Congreso de investigacion e innovacion fusagasuga', 'Edificio call center fusagasuga', 'img/eventos/punzonado.jpg'),
(92, '<div style=\"text-align: center;\"><span style=\"font-weight: bold; font-size: x-large;\">Congreso Internacional de investigación e innovación</span></div><div style=\"text-align: center;\"><span style=\"font-size: large;\">FICED una empresa internacional que quiere hacer historia en colombia blaalalallalalalalallalalalllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll</span></div><div style=\"text-align: center;\"><span style=\"font-size: large;\">para ver mas <a href=\"https://www.google.com/search?safe=active&amp;rlz=1C1CHBF_esCO879CO879&amp;biw=1536&amp;bih=754&amp;tbm=isch&amp;sxsrf=ACYBGNQznn7T7fJGOUuabpltsNDjMhbtGg%3A1577985460692&amp;sa=1&amp;ei=tCUOXo31KaTf5gLvlYtQ&amp;q=eventos+corporativos&amp;oq=eventos+co&amp;gs_l=img.3.0.0l10.2990.5859..7660...1.0..0.360.1408.0j3j1j2......0....1..gws-wiz-img.......35i39j0i67j0i8i30j0i24._95VnqQTPa4#imgrc=8xMah_jjJlU2IM:\" target=\"_blank\">FICED 2020</a></span></div>', '2020-01-02', '2020-01-04', '../view/img/eventos/92/323.jpg', 'Congreso Internacional de investigacion FICED', 'Edificio manila Centro fusagasuga', '../view/img/eventos/92/330.jpg'),
(93, '<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"\"><span style=\"line-height: 26px; font-weight: bold;\">La agenda de la reflexión epistemológica desde el sur y de la&nbsp; investigación social y educativa latinoamericana, encuentra en las ruralidades de América Latina un campo de discusión que requiere de un análisis profundo porque guarda en su interior diversos significados y procesos de resignificación en torno a temas como: la pluriactividad rural, la multifuncionalidad, los desplazamientos y movilidad social, el trabajo femenino en territorios rurales, los ingresos no agrícolas, los movimientos de defensa por el territorio, el agua, los recursos naturales, el narcotráfico y la industria agropecuaria transnacional. Explicar tensiones, conflictos y los cambios en el contexto de las ruralidades latinoamericanas requiere ampliar las miradas, que desde una episteme del sur sean capaces de interpelar el cuerpo teórico unificado y eurocéntrico desde donde se ha venido leyendo la ruralidad latinoamericana.</span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"line-height: 26px; font-weight: bold;\">&nbsp;​</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\"><span style=\"line-height: 26px;\">O</span><span style=\"line-height: 26px;\">BJETIVO GENERAL:</span><span style=\"line-height: 26px;\"></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"line-height: 26px; font-weight: bold;\">Dialogar a partir de reflexiones, investigaciones, prácticas y experiencias de actores, organizaciones y movimientos sociales en torno a las formas de construir conocimiento, prácticas y de desarrollar epistemologías. Otras relacionadas con educaciones y ruralidades latinoamericanas; las epistemologías del sur, los procesos y metodologías participativas; y, los procesos sociales: prácticas, saberes y narrativas presentes en los territorios</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\"><span style=\"line-height: 26px;\">O</span><span style=\"line-height: 26px;\">BJETIVOS ESPECÍFICOS:</span></span></p><ul style=\"\"><li style=\"\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"line-height: 26px; font-weight: bold;\">Reconocer las condiciones iniciales de problematización en relación educaciones y ruralidades latinoamericanas; las epistemologías del sur, los procesos y metodologías participativas; y los procesos sociales: prácticas, saberes y narrativas presentes en los territorios</span></li><li style=\"\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"line-height: 26px; font-weight: bold;\">Reflexionar en torno a los problemas emergentes identificados a partir de los saberes, experiencias, prácticas sociales y pedagógicas socializadas.</span></li><li style=\"\"><div style=\"\"><span style=\"font-weight: bold;\">Promover la participación activa de actores sociales en espacios de disertación crítica y de diálogo desde las problemáticas abordadas que permitan nuevas comprensiones y miradas a las epistemologías del sur y las ruralidades latinoamericanas orientadas a la acción transformadora.</span></div><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\"><div style=\"\">&nbsp;</div><div style=\"\"><br></div><span style=\"line-height: 26px;\"><div style=\"\"><span style=\"line-height: 26px;\">D</span><span style=\"line-height: 26px;\">irigido a:</span></div></span></span></li></ul><ul style=\"\"><li style=\"\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"line-height: 26px; font-weight: bold;\">Maestros, investigadores y directivos docentes de educación inicial, básica, media y universitaria del sector oficial y privado.</span></li><li style=\"\"><div style=\"\"><span style=\"font-weight: bold;\">Activistas, líderes y actores de procesos sociales, organizaciones gubernamentales y no gubernamentales, dedicadas al campo de la educación y la intervención social y cultural.</span></div><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\"><div style=\"\"><br></div><div style=\"\"><br></div><span style=\"line-height: 26px;\"><div style=\"\"><span style=\"line-height: 26px;\">C</span><span style=\"line-height: 26px;\">ONCEPTOS ASOCIADOS:</span></div></span></span></li></ul><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\"><div style=\"\">Epistemologías del sur, ruralidades latinoamericanas, praxis, saberes, prácticas, experiencias, narrativas, procesos sociales, procesos y metodologías participativas, territorio, educaciones rurales, otras educaciones.</div></span>', '2020-01-07', '2020-01-09', '../view/img/eventos/93/232.jpg', 'Reunión de empresarios FICED ES EL FUTURO', 'ALCALDIA DE FUSAGASUGA', '../view/img/eventos/93/894.jpg'),
(94, '<div style=\"text-align: center;\"><span style=\"font-weight: bold; font-size: x-large;\">este es el titulo</span></div><div style=\"text-align: center;\"><span style=\"font-weight: bold; font-size: x-large;\">este even toes genial</span></div><div style=\"text-align: center;\"><span style=\"font-weight: bold; font-size: x-large;\"><a href=\"https://www.udemy.com/course/crea-sistemas-ecommerce-con-php-y-con-pagos-de-paypal-y-payulatam/learn/lecture/9697224#overview\" target=\"_blank\">ver mas</a></span></div><div style=\"text-align: center;\"><span style=\"font-weight: bold; font-size: x-large;\"><br></span></div>', '2020-01-15', '2020-01-25', '../view/img/eventos/94/463.jpg', 'Nuevas tecnologías en fustigara', 'valle 7 noete 1016', '../view/img/eventos/94/373.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_laboral`
--

CREATE TABLE `experiencia_laboral` (
  `codExperiencia` int(3) NOT NULL,
  `carExperiencia` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `nomEmpExperiencia` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `tieLaborado` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL,
  `desFunExperiencia` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcionario_empresa`
--

CREATE TABLE `funcionario_empresa` (
  `codFuncionario` int(3) NOT NULL,
  `codUsuario` int(11) NOT NULL,
  `nitEmpresa` varchar(12) COLLATE utf8mb4_spanish_ci NOT NULL,
  `codEstFuncionario` int(2) NOT NULL,
  `codCargo` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria_catalogo`
--

CREATE TABLE `galeria_catalogo` (
  `codImagen` int(11) NOT NULL,
  `rutImagen` varchar(50) NOT NULL,
  `codCatalogo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria_novedad`
--

CREATE TABLE `galeria_novedad` (
  `codImagen` int(11) NOT NULL,
  `rutImagen` varchar(50) NOT NULL,
  `codNovedad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_maquina`
--

CREATE TABLE `historial_maquina` (
  `codHisMaquina` int(11) NOT NULL,
  `codMatMaquina` varchar(18) COLLATE utf8mb4_spanish_ci NOT NULL,
  `codServicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE `idioma` (
  `codIdioma` varchar(2) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nomIdioma` varchar(35) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `idioma`
--

INSERT INTO `idioma` (`codIdioma`, `nomIdioma`) VALUES
('en', 'English'),
('es', 'Spanish'),
('fr', 'French');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maquinaria`
--

CREATE TABLE `maquinaria` (
  `codMaquina` int(11) NOT NULL,
  `codMarca` int(3) NOT NULL,
  `codReferencia` int(4) NOT NULL,
  `codTipMaquina` int(4) NOT NULL,
  `nomMaquina` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `modMaquina` text COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `maquinaria`
--

INSERT INTO `maquinaria` (`codMaquina`, `codMarca`, `codReferencia`, `codTipMaquina`, `nomMaquina`, `modMaquina`) VALUES
(1, 1, 1, 1, 'liberty-taladrado', '1203-DDE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `codMarca` int(3) NOT NULL,
  `nomMarca` mediumtext COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`codMarca`, `nomMarca`) VALUES
(1, 'FICEP');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca_catalogo`
--

CREATE TABLE `marca_catalogo` (
  `codMarCatalogo` int(3) NOT NULL,
  `nomMarCatalogo` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `codMunicipio` int(4) NOT NULL,
  `nomMunicipio` mediumtext COLLATE utf8mb4_spanish_ci NOT NULL,
  `codDepartamento` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`codMunicipio`, `nomMunicipio`, `codDepartamento`) VALUES
(1, 'Abriaquí', 5),
(2, 'Acacías', 50),
(3, 'Acandí', 27),
(4, 'Acevedo', 41),
(5, 'Achí', 13),
(6, 'Agrado', 41),
(7, 'Agua de Dios', 25),
(8, 'Aguachica', 20),
(9, 'Aguada', 68),
(10, 'Aguadas', 17),
(11, 'Aguazul', 85),
(12, 'Agustín Codazzi', 20),
(13, 'Aipe', 41),
(14, 'Albania', 18),
(15, 'Albania', 44),
(16, 'Albania', 68),
(17, 'Albán', 25),
(18, 'Albán (San José)', 52),
(19, 'Alcalá', 76),
(20, 'Alejandria', 5),
(21, 'Algarrobo', 47),
(22, 'Algeciras', 41),
(23, 'Almaguer', 19),
(24, 'Almeida', 15),
(25, 'Alpujarra', 73),
(26, 'Altamira', 41),
(27, 'Alto Baudó (Pie de Pato)', 27),
(28, 'Altos del Rosario', 13),
(29, 'Alvarado', 73),
(30, 'Amagá', 5),
(31, 'Amalfi', 5),
(32, 'Ambalema', 73),
(33, 'Anapoima', 25),
(34, 'Ancuya', 52),
(35, 'Andalucía', 76),
(36, 'Andes', 5),
(37, 'Angelópolis', 5),
(38, 'Angostura', 5),
(39, 'Anolaima', 25),
(40, 'Anorí', 5),
(41, 'Anserma', 17),
(42, 'Ansermanuevo', 76),
(43, 'Anzoátegui', 73),
(44, 'Anzá', 5),
(45, 'Apartadó', 5),
(46, 'Apulo', 25),
(47, 'Apía', 66),
(48, 'Aquitania', 15),
(49, 'Aracataca', 47),
(50, 'Aranzazu', 17),
(51, 'Aratoca', 68),
(52, 'Arauca', 81),
(53, 'Arauquita', 81),
(54, 'Arbeláez', 25),
(55, 'Arboleda (Berruecos)', 52),
(56, 'Arboledas', 54),
(57, 'Arboletes', 5),
(58, 'Arcabuco', 15),
(59, 'Arenal', 13),
(60, 'Argelia', 5),
(61, 'Argelia', 19),
(62, 'Argelia', 76),
(63, 'Ariguaní (El Difícil)', 47),
(64, 'Arjona', 13),
(65, 'Armenia', 5),
(66, 'Armenia', 63),
(67, 'Armero (Guayabal)', 73),
(68, 'Arroyohondo', 13),
(69, 'Astrea', 20),
(70, 'Ataco', 73),
(71, 'Atrato (Yuto)', 27),
(72, 'Ayapel', 23),
(73, 'Bagadó', 27),
(74, 'Bahía Solano (Mútis)', 27),
(75, 'Bajo Baudó (Pizarro)', 27),
(76, 'Balboa', 19),
(77, 'Balboa', 66),
(78, 'Baranoa', 8),
(79, 'Baraya', 41),
(80, 'Barbacoas', 52),
(81, 'Barbosa', 5),
(82, 'Barbosa', 68),
(83, 'Barichara', 68),
(84, 'Barranca de Upía', 50),
(85, 'Barrancabermeja', 68),
(86, 'Barrancas', 44),
(87, 'Barranco de Loba', 13),
(88, 'Barranquilla', 8),
(89, 'Becerríl', 20),
(90, 'Belalcázar', 17),
(91, 'Bello', 5),
(92, 'Belmira', 5),
(93, 'Beltrán', 25),
(94, 'Belén', 15),
(95, 'Belén', 52),
(96, 'Belén de Bajirá', 27),
(97, 'Belén de Umbría', 66),
(98, 'Belén de los Andaquíes', 18),
(99, 'Berbeo', 15),
(100, 'Betania', 5),
(101, 'Beteitiva', 15),
(102, 'Betulia', 5),
(103, 'Betulia', 68),
(104, 'Bituima', 25),
(105, 'Boavita', 15),
(106, 'Bochalema', 54),
(107, 'Bogotá D.C.', 11),
(108, 'Bojacá', 25),
(109, 'Bojayá (Bellavista)', 27),
(110, 'Bolívar', 5),
(111, 'Bolívar', 19),
(112, 'Bolívar', 68),
(113, 'Bolívar', 76),
(114, 'Bosconia', 20),
(115, 'Boyacá', 15),
(116, 'Briceño', 5),
(117, 'Briceño', 15),
(118, 'Bucaramanga', 68),
(119, 'Bucarasica', 54),
(120, 'Buenaventura', 76),
(121, 'Buenavista', 15),
(122, 'Buenavista', 23),
(123, 'Buenavista', 63),
(124, 'Buenavista', 70),
(125, 'Buenos Aires', 19),
(126, 'Buesaco', 52),
(127, 'Buga', 76),
(128, 'Bugalagrande', 76),
(129, 'Burítica', 5),
(130, 'Busbanza', 15),
(131, 'Cabrera', 25),
(132, 'Cabrera', 68),
(133, 'Cabuyaro', 50),
(134, 'Cachipay', 25),
(135, 'Caicedo', 5),
(136, 'Caicedonia', 76),
(137, 'Caimito', 70),
(138, 'Cajamarca', 73),
(139, 'Cajibío', 19),
(140, 'Cajicá', 25),
(141, 'Calamar', 13),
(142, 'Calamar', 95),
(143, 'Calarcá', 63),
(144, 'Caldas', 5),
(145, 'Caldas', 15),
(146, 'Caldono', 19),
(147, 'California', 68),
(148, 'Calima (Darién)', 76),
(149, 'Caloto', 19),
(150, 'Calí', 76),
(151, 'Campamento', 5),
(152, 'Campo de la Cruz', 8),
(153, 'Campoalegre', 41),
(154, 'Campohermoso', 15),
(155, 'Canalete', 23),
(156, 'Candelaria', 8),
(157, 'Candelaria', 76),
(158, 'Cantagallo', 13),
(159, 'Cantón de San Pablo', 27),
(160, 'Caparrapí', 25),
(161, 'Capitanejo', 68),
(162, 'Caracolí', 5),
(163, 'Caramanta', 5),
(164, 'Carcasí', 68),
(165, 'Carepa', 5),
(166, 'Carmen de Apicalá', 73),
(167, 'Carmen de Carupa', 25),
(168, 'Carmen de Viboral', 5),
(169, 'Carmen del Darién (CURBARADÓ)', 27),
(170, 'Carolina', 5),
(171, 'Cartagena', 13),
(172, 'Cartagena del Chairá', 18),
(173, 'Cartago', 76),
(174, 'Carurú', 97),
(175, 'Casabianca', 73),
(176, 'Castilla la Nueva', 50),
(177, 'Caucasia', 5),
(178, 'Cañasgordas', 5),
(179, 'Cepita', 68),
(180, 'Cereté', 23),
(181, 'Cerinza', 15),
(182, 'Cerrito', 68),
(183, 'Cerro San Antonio', 47),
(184, 'Chachaguí', 52),
(185, 'Chaguaní', 25),
(186, 'Chalán', 70),
(187, 'Chaparral', 73),
(188, 'Charalá', 68),
(189, 'Charta', 68),
(190, 'Chigorodó', 5),
(191, 'Chima', 68),
(192, 'Chimichagua', 20),
(193, 'Chimá', 23),
(194, 'Chinavita', 15),
(195, 'Chinchiná', 17),
(196, 'Chinácota', 54),
(197, 'Chinú', 23),
(198, 'Chipaque', 25),
(199, 'Chipatá', 68),
(200, 'Chiquinquirá', 15),
(201, 'Chiriguaná', 20),
(202, 'Chiscas', 15),
(203, 'Chita', 15),
(204, 'Chitagá', 54),
(205, 'Chitaraque', 15),
(206, 'Chivatá', 15),
(207, 'Chivolo', 47),
(208, 'Choachí', 25),
(209, 'Chocontá', 25),
(210, 'Chámeza', 85),
(211, 'Chía', 25),
(212, 'Chíquiza', 15),
(213, 'Chívor', 15),
(214, 'Cicuco', 13),
(215, 'Cimitarra', 68),
(216, 'Circasia', 63),
(217, 'Cisneros', 5),
(218, 'Ciénaga', 15),
(219, 'Ciénaga', 47),
(220, 'Ciénaga de Oro', 23),
(221, 'Clemencia', 13),
(222, 'Cocorná', 5),
(223, 'Coello', 73),
(224, 'Cogua', 25),
(225, 'Colombia', 41),
(226, 'Colosó (Ricaurte)', 70),
(227, 'Colón', 86),
(228, 'Colón (Génova)', 52),
(229, 'Concepción', 5),
(230, 'Concepción', 68),
(231, 'Concordia', 5),
(232, 'Concordia', 47),
(233, 'Condoto', 27),
(234, 'Confines', 68),
(235, 'Consaca', 52),
(236, 'Contadero', 52),
(237, 'Contratación', 68),
(238, 'Convención', 54),
(239, 'Copacabana', 5),
(240, 'Coper', 15),
(241, 'Cordobá', 63),
(242, 'Corinto', 19),
(243, 'Coromoro', 68),
(244, 'Corozal', 70),
(245, 'Corrales', 15),
(246, 'Cota', 25),
(247, 'Cotorra', 23),
(248, 'Covarachía', 15),
(249, 'Coveñas', 70),
(250, 'Coyaima', 73),
(251, 'Cravo Norte', 81),
(252, 'Cuaspud (Carlosama)', 52),
(253, 'Cubarral', 50),
(254, 'Cubará', 15),
(255, 'Cucaita', 15),
(256, 'Cucunubá', 25),
(257, 'Cucutilla', 54),
(258, 'Cuitiva', 15),
(259, 'Cumaral', 50),
(260, 'Cumaribo', 99),
(261, 'Cumbal', 52),
(262, 'Cumbitara', 52),
(263, 'Cunday', 73),
(264, 'Curillo', 18),
(265, 'Curití', 68),
(266, 'Curumaní', 20),
(267, 'Cáceres', 5),
(268, 'Cáchira', 54),
(269, 'Cácota', 54),
(270, 'Cáqueza', 25),
(271, 'Cértegui', 27),
(272, 'Cómbita', 15),
(273, 'Córdoba', 13),
(274, 'Córdoba', 52),
(275, 'Cúcuta', 54),
(276, 'Dabeiba', 5),
(277, 'Dagua', 76),
(278, 'Dibulla', 44),
(279, 'Distracción', 44),
(280, 'Dolores', 73),
(281, 'Don Matías', 5),
(282, 'Dos Quebradas', 66),
(283, 'Duitama', 15),
(284, 'Durania', 54),
(285, 'Ebéjico', 5),
(286, 'El Bagre', 5),
(287, 'El Banco', 47),
(288, 'El Cairo', 76),
(289, 'El Calvario', 50),
(290, 'El Carmen', 54),
(291, 'El Carmen', 68),
(292, 'El Carmen de Atrato', 27),
(293, 'El Carmen de Bolívar', 13),
(294, 'El Castillo', 50),
(295, 'El Cerrito', 76),
(296, 'El Charco', 52),
(297, 'El Cocuy', 15),
(298, 'El Colegio', 25),
(299, 'El Copey', 20),
(300, 'El Doncello', 18),
(301, 'El Dorado', 50),
(302, 'El Dovio', 76),
(303, 'El Espino', 15),
(304, 'El Guacamayo', 68),
(305, 'El Guamo', 13),
(306, 'El Molino', 44),
(307, 'El Paso', 20),
(308, 'El Paujil', 18),
(309, 'El Peñol', 52),
(310, 'El Peñon', 13),
(311, 'El Peñon', 68),
(312, 'El Peñón', 25),
(313, 'El Piñon', 47),
(314, 'El Playón', 68),
(315, 'El Retorno', 95),
(316, 'El Retén', 47),
(317, 'El Roble', 70),
(318, 'El Rosal', 25),
(319, 'El Rosario', 52),
(320, 'El Tablón de Gómez', 52),
(321, 'El Tambo', 19),
(322, 'El Tambo', 52),
(323, 'El Tarra', 54),
(324, 'El Zulia', 54),
(325, 'El Águila', 76),
(326, 'Elías', 41),
(327, 'Encino', 68),
(328, 'Enciso', 68),
(329, 'Entrerríos', 5),
(330, 'Envigado', 5),
(331, 'Espinal', 73),
(332, 'Facatativá', 25),
(333, 'Falan', 73),
(334, 'Filadelfia', 17),
(335, 'Filandia', 63),
(336, 'Firavitoba', 15),
(337, 'Flandes', 73),
(338, 'Florencia', 18),
(339, 'Florencia', 19),
(340, 'Floresta', 15),
(341, 'Florida', 76),
(342, 'Floridablanca', 68),
(343, 'Florián', 68),
(344, 'Fonseca', 44),
(345, 'Fortúl', 81),
(346, 'Fosca', 25),
(347, 'Francisco Pizarro', 52),
(348, 'Fredonia', 5),
(349, 'Fresno', 73),
(350, 'Frontino', 5),
(351, 'Fuente de Oro', 50),
(352, 'Fundación', 47),
(353, 'Funes', 52),
(354, 'Funza', 25),
(355, 'Fusagasugá', 25),
(356, 'Fómeque', 25),
(357, 'Fúquene', 25),
(358, 'Gachalá', 25),
(359, 'Gachancipá', 25),
(360, 'Gachantivá', 15),
(361, 'Gachetá', 25),
(362, 'Galapa', 8),
(363, 'Galeras (Nueva Granada)', 70),
(364, 'Galán', 68),
(365, 'Gama', 25),
(366, 'Gamarra', 20),
(367, 'Garagoa', 15),
(368, 'Garzón', 41),
(369, 'Gigante', 41),
(370, 'Ginebra', 76),
(371, 'Giraldo', 5),
(372, 'Girardot', 25),
(373, 'Girardota', 5),
(374, 'Girón', 68),
(375, 'Gonzalez', 20),
(376, 'Gramalote', 54),
(377, 'Granada', 5),
(378, 'Granada', 25),
(379, 'Granada', 50),
(380, 'Guaca', 68),
(381, 'Guacamayas', 15),
(382, 'Guacarí', 76),
(383, 'Guachavés', 52),
(384, 'Guachené', 19),
(385, 'Guachetá', 25),
(386, 'Guachucal', 52),
(387, 'Guadalupe', 5),
(388, 'Guadalupe', 41),
(389, 'Guadalupe', 68),
(390, 'Guaduas', 25),
(391, 'Guaitarilla', 52),
(392, 'Gualmatán', 52),
(393, 'Guamal', 47),
(394, 'Guamal', 50),
(395, 'Guamo', 73),
(396, 'Guapota', 68),
(397, 'Guapí', 19),
(398, 'Guaranda', 70),
(399, 'Guarne', 5),
(400, 'Guasca', 25),
(401, 'Guatapé', 5),
(402, 'Guataquí', 25),
(403, 'Guatavita', 25),
(404, 'Guateque', 15),
(405, 'Guavatá', 68),
(406, 'Guayabal de Siquima', 25),
(407, 'Guayabetal', 25),
(408, 'Guayatá', 15),
(409, 'Guepsa', 68),
(410, 'Guicán', 15),
(411, 'Gutiérrez', 25),
(412, 'Guática', 66),
(413, 'Gámbita', 68),
(414, 'Gámeza', 15),
(415, 'Génova', 63),
(416, 'Gómez Plata', 5),
(417, 'Hacarí', 54),
(418, 'Hatillo de Loba', 13),
(419, 'Hato', 68),
(420, 'Hato Corozal', 85),
(421, 'Hatonuevo', 44),
(422, 'Heliconia', 5),
(423, 'Herrán', 54),
(424, 'Herveo', 73),
(425, 'Hispania', 5),
(426, 'Hobo', 41),
(427, 'Honda', 73),
(428, 'Ibagué', 73),
(429, 'Icononzo', 73),
(430, 'Iles', 52),
(431, 'Imúes', 52),
(432, 'Inzá', 19),
(433, 'Inírida', 94),
(434, 'Ipiales', 52),
(435, 'Isnos', 41),
(436, 'Istmina', 27),
(437, 'Itagüí', 5),
(438, 'Ituango', 5),
(439, 'Izá', 15),
(440, 'Jambaló', 19),
(441, 'Jamundí', 76),
(442, 'Jardín', 5),
(443, 'Jenesano', 15),
(444, 'Jericó', 5),
(445, 'Jericó', 15),
(446, 'Jerusalén', 25),
(447, 'Jesús María', 68),
(448, 'Jordán', 68),
(449, 'Juan de Acosta', 8),
(450, 'Junín', 25),
(451, 'Juradó', 27),
(452, 'La Apartada y La Frontera', 23),
(453, 'La Argentina', 41),
(454, 'La Belleza', 68),
(455, 'La Calera', 25),
(456, 'La Capilla', 15),
(457, 'La Ceja', 5),
(458, 'La Celia', 66),
(459, 'La Cruz', 52),
(460, 'La Cumbre', 76),
(461, 'La Dorada', 17),
(462, 'La Esperanza', 54),
(463, 'La Estrella', 5),
(464, 'La Florida', 52),
(465, 'La Gloria', 20),
(466, 'La Jagua de Ibirico', 20),
(467, 'La Jagua del Pilar', 44),
(468, 'La Llanada', 52),
(469, 'La Macarena', 50),
(470, 'La Merced', 17),
(471, 'La Mesa', 25),
(472, 'La Montañita', 18),
(473, 'La Palma', 25),
(474, 'La Paz', 68),
(475, 'La Paz (Robles)', 20),
(476, 'La Peña', 25),
(477, 'La Pintada', 5),
(478, 'La Plata', 41),
(479, 'La Playa', 54),
(480, 'La Primavera', 99),
(481, 'La Salina', 85),
(482, 'La Sierra', 19),
(483, 'La Tebaida', 63),
(484, 'La Tola', 52),
(485, 'La Unión', 5),
(486, 'La Unión', 52),
(487, 'La Unión', 70),
(488, 'La Unión', 76),
(489, 'La Uvita', 15),
(490, 'La Vega', 19),
(491, 'La Vega', 25),
(492, 'La Victoria', 15),
(493, 'La Victoria', 17),
(494, 'La Victoria', 76),
(495, 'La Virginia', 66),
(496, 'Labateca', 54),
(497, 'Labranzagrande', 15),
(498, 'Landázuri', 68),
(499, 'Lebrija', 68),
(500, 'Leiva', 52),
(501, 'Lejanías', 50),
(502, 'Lenguazaque', 25),
(503, 'Leticia', 91),
(504, 'Liborina', 5),
(505, 'Linares', 52),
(506, 'Lloró', 27),
(507, 'Lorica', 23),
(508, 'Los Córdobas', 23),
(509, 'Los Palmitos', 70),
(510, 'Los Patios', 54),
(511, 'Los Santos', 68),
(512, 'Lourdes', 54),
(513, 'Luruaco', 8),
(514, 'Lérida', 73),
(515, 'Líbano', 73),
(516, 'López (Micay)', 19),
(517, 'Macanal', 15),
(518, 'Macaravita', 68),
(519, 'Maceo', 5),
(520, 'Machetá', 25),
(521, 'Madrid', 25),
(522, 'Magangué', 13),
(523, 'Magüi (Payán)', 52),
(524, 'Mahates', 13),
(525, 'Maicao', 44),
(526, 'Majagual', 70),
(527, 'Malambo', 8),
(528, 'Mallama (Piedrancha)', 52),
(529, 'Manatí', 8),
(530, 'Manaure', 44),
(531, 'Manaure Balcón del Cesar', 20),
(532, 'Manizales', 17),
(533, 'Manta', 25),
(534, 'Manzanares', 17),
(535, 'Maní', 85),
(536, 'Mapiripan', 50),
(537, 'Margarita', 13),
(538, 'Marinilla', 5),
(539, 'Maripí', 15),
(540, 'Mariquita', 73),
(541, 'Marmato', 17),
(542, 'Marquetalia', 17),
(543, 'Marsella', 66),
(544, 'Marulanda', 17),
(545, 'María la Baja', 13),
(546, 'Matanza', 68),
(547, 'Medellín', 5),
(548, 'Medina', 25),
(549, 'Medio Atrato', 27),
(550, 'Medio Baudó', 27),
(551, 'Medio San Juan (ANDAGOYA)', 27),
(552, 'Melgar', 73),
(553, 'Mercaderes', 19),
(554, 'Mesetas', 50),
(555, 'Milán', 18),
(556, 'Miraflores', 15),
(557, 'Miraflores', 95),
(558, 'Miranda', 19),
(559, 'Mistrató', 66),
(560, 'Mitú', 97),
(561, 'Mocoa', 86),
(562, 'Mogotes', 68),
(563, 'Molagavita', 68),
(564, 'Momil', 23),
(565, 'Mompós', 13),
(566, 'Mongua', 15),
(567, 'Monguí', 15),
(568, 'Moniquirá', 15),
(569, 'Montebello', 5),
(570, 'Montecristo', 13),
(571, 'Montelíbano', 23),
(572, 'Montenegro', 63),
(573, 'Monteria', 23),
(574, 'Monterrey', 85),
(575, 'Morales', 13),
(576, 'Morales', 19),
(577, 'Morelia', 18),
(578, 'Morroa', 70),
(579, 'Mosquera', 25),
(580, 'Mosquera', 52),
(581, 'Motavita', 15),
(582, 'Moñitos', 23),
(583, 'Murillo', 73),
(584, 'Murindó', 5),
(585, 'Mutatá', 5),
(586, 'Mutiscua', 54),
(587, 'Muzo', 15),
(588, 'Málaga', 68),
(589, 'Nariño', 5),
(590, 'Nariño', 25),
(591, 'Nariño', 52),
(592, 'Natagaima', 73),
(593, 'Nechí', 5),
(594, 'Necoclí', 5),
(595, 'Neira', 17),
(596, 'Neiva', 41),
(597, 'Nemocón', 25),
(598, 'Nilo', 25),
(599, 'Nimaima', 25),
(600, 'Nobsa', 15),
(601, 'Nocaima', 25),
(602, 'Norcasia', 17),
(603, 'Norosí', 13),
(604, 'Novita', 27),
(605, 'Nueva Granada', 47),
(606, 'Nuevo Colón', 15),
(607, 'Nunchía', 85),
(608, 'Nuquí', 27),
(609, 'Nátaga', 41),
(610, 'Obando', 76),
(611, 'Ocamonte', 68),
(612, 'Ocaña', 54),
(613, 'Oiba', 68),
(614, 'Oicatá', 15),
(615, 'Olaya', 5),
(616, 'Olaya Herrera', 52),
(617, 'Onzaga', 68),
(618, 'Oporapa', 41),
(619, 'Orito', 86),
(620, 'Orocué', 85),
(621, 'Ortega', 73),
(622, 'Ospina', 52),
(623, 'Otanche', 15),
(624, 'Ovejas', 70),
(625, 'Pachavita', 15),
(626, 'Pacho', 25),
(627, 'Padilla', 19),
(628, 'Paicol', 41),
(629, 'Pailitas', 20),
(630, 'Paime', 25),
(631, 'Paipa', 15),
(632, 'Pajarito', 15),
(633, 'Palermo', 41),
(634, 'Palestina', 17),
(635, 'Palestina', 41),
(636, 'Palmar', 68),
(637, 'Palmar de Varela', 8),
(638, 'Palmas del Socorro', 68),
(639, 'Palmira', 76),
(640, 'Palmito', 70),
(641, 'Palocabildo', 73),
(642, 'Pamplona', 54),
(643, 'Pamplonita', 54),
(644, 'Pandi', 25),
(645, 'Panqueba', 15),
(646, 'Paratebueno', 25),
(647, 'Pasca', 25),
(648, 'Patía (El Bordo)', 19),
(649, 'Pauna', 15),
(650, 'Paya', 15),
(651, 'Paz de Ariporo', 85),
(652, 'Paz de Río', 15),
(653, 'Pedraza', 47),
(654, 'Pelaya', 20),
(655, 'Pensilvania', 17),
(656, 'Peque', 5),
(657, 'Pereira', 66),
(658, 'Pesca', 15),
(659, 'Peñol', 5),
(660, 'Piamonte', 19),
(661, 'Pie de Cuesta', 68),
(662, 'Piedras', 73),
(663, 'Piendamó', 19),
(664, 'Pijao', 63),
(665, 'Pijiño', 47),
(666, 'Pinchote', 68),
(667, 'Pinillos', 13),
(668, 'Piojo', 8),
(669, 'Pisva', 15),
(670, 'Pital', 41),
(671, 'Pitalito', 41),
(672, 'Pivijay', 47),
(673, 'Planadas', 73),
(674, 'Planeta Rica', 23),
(675, 'Plato', 47),
(676, 'Policarpa', 52),
(677, 'Polonuevo', 8),
(678, 'Ponedera', 8),
(679, 'Popayán', 19),
(680, 'Pore', 85),
(681, 'Potosí', 52),
(682, 'Pradera', 76),
(683, 'Prado', 73),
(684, 'Providencia', 52),
(685, 'Providencia', 88),
(686, 'Pueblo Bello', 20),
(687, 'Pueblo Nuevo', 23),
(688, 'Pueblo Rico', 66),
(689, 'Pueblorrico', 5),
(690, 'Puebloviejo', 47),
(691, 'Puente Nacional', 68),
(692, 'Puerres', 52),
(693, 'Puerto Asís', 86),
(694, 'Puerto Berrío', 5),
(695, 'Puerto Boyacá', 15),
(696, 'Puerto Caicedo', 86),
(697, 'Puerto Carreño', 99),
(698, 'Puerto Colombia', 8),
(699, 'Puerto Concordia', 50),
(700, 'Puerto Escondido', 23),
(701, 'Puerto Gaitán', 50),
(702, 'Puerto Guzmán', 86),
(703, 'Puerto Leguízamo', 86),
(704, 'Puerto Libertador', 23),
(705, 'Puerto Lleras', 50),
(706, 'Puerto López', 50),
(707, 'Puerto Nare', 5),
(708, 'Puerto Nariño', 91),
(709, 'Puerto Parra', 68),
(710, 'Puerto Rico', 18),
(711, 'Puerto Rico', 50),
(712, 'Puerto Rondón', 81),
(713, 'Puerto Salgar', 25),
(714, 'Puerto Santander', 54),
(715, 'Puerto Tejada', 19),
(716, 'Puerto Triunfo', 5),
(717, 'Puerto Wilches', 68),
(718, 'Pulí', 25),
(719, 'Pupiales', 52),
(720, 'Puracé (Coconuco)', 19),
(721, 'Purificación', 73),
(722, 'Purísima', 23),
(723, 'Pácora', 17),
(724, 'Páez', 15),
(725, 'Páez (Belalcazar)', 19),
(726, 'Páramo', 68),
(727, 'Quebradanegra', 25),
(728, 'Quetame', 25),
(729, 'Quibdó', 27),
(730, 'Quimbaya', 63),
(731, 'Quinchía', 66),
(732, 'Quipama', 15),
(733, 'Quipile', 25),
(734, 'Ragonvalia', 54),
(735, 'Ramiriquí', 15),
(736, 'Recetor', 85),
(737, 'Regidor', 13),
(738, 'Remedios', 5),
(739, 'Remolino', 47),
(740, 'Repelón', 8),
(741, 'Restrepo', 50),
(742, 'Restrepo', 76),
(743, 'Retiro', 5),
(744, 'Ricaurte', 25),
(745, 'Ricaurte', 52),
(746, 'Rio Negro', 68),
(747, 'Rioblanco', 73),
(748, 'Riofrío', 76),
(749, 'Riohacha', 44),
(750, 'Risaralda', 17),
(751, 'Rivera', 41),
(752, 'Roberto Payán (San José)', 52),
(753, 'Roldanillo', 76),
(754, 'Roncesvalles', 73),
(755, 'Rondón', 15),
(756, 'Rosas', 19),
(757, 'Rovira', 73),
(758, 'Ráquira', 15),
(759, 'Río Iró', 27),
(760, 'Río Quito', 27),
(761, 'Río Sucio', 17),
(762, 'Río Viejo', 13),
(763, 'Río de oro', 20),
(764, 'Ríonegro', 5),
(765, 'Ríosucio', 27),
(766, 'Sabana de Torres', 68),
(767, 'Sabanagrande', 8),
(768, 'Sabanalarga', 5),
(769, 'Sabanalarga', 8),
(770, 'Sabanalarga', 85),
(771, 'Sabanas de San Angel (SAN ANGEL)', 47),
(772, 'Sabaneta', 5),
(773, 'Saboyá', 15),
(774, 'Sahagún', 23),
(775, 'Saladoblanco', 41),
(776, 'Salamina', 17),
(777, 'Salamina', 47),
(778, 'Salazar', 54),
(779, 'Saldaña', 73),
(780, 'Salento', 63),
(781, 'Salgar', 5),
(782, 'Samacá', 15),
(783, 'Samaniego', 52),
(784, 'Samaná', 17),
(785, 'Sampués', 70),
(786, 'San Agustín', 41),
(787, 'San Alberto', 20),
(788, 'San Andrés', 68),
(789, 'San Andrés Sotavento', 23),
(790, 'San Andrés de Cuerquía', 5),
(791, 'San Antero', 23),
(792, 'San Antonio', 73),
(793, 'San Antonio de Tequendama', 25),
(794, 'San Benito', 68),
(795, 'San Benito Abad', 70),
(796, 'San Bernardo', 25),
(797, 'San Bernardo', 52),
(798, 'San Bernardo del Viento', 23),
(799, 'San Calixto', 54),
(800, 'San Carlos', 5),
(801, 'San Carlos', 23),
(802, 'San Carlos de Guaroa', 50),
(803, 'San Cayetano', 25),
(804, 'San Cayetano', 54),
(805, 'San Cristobal', 13),
(806, 'San Diego', 20),
(807, 'San Eduardo', 15),
(808, 'San Estanislao', 13),
(809, 'San Fernando', 13),
(810, 'San Francisco', 5),
(811, 'San Francisco', 25),
(812, 'San Francisco', 86),
(813, 'San Gíl', 68),
(814, 'San Jacinto', 13),
(815, 'San Jacinto del Cauca', 13),
(816, 'San Jerónimo', 5),
(817, 'San Joaquín', 68),
(818, 'San José', 17),
(819, 'San José de Miranda', 68),
(820, 'San José de Montaña', 5),
(821, 'San José de Pare', 15),
(822, 'San José de Uré', 23),
(823, 'San José del Fragua', 18),
(824, 'San José del Guaviare', 95),
(825, 'San José del Palmar', 27),
(826, 'San Juan de Arama', 50),
(827, 'San Juan de Betulia', 70),
(828, 'San Juan de Nepomuceno', 13),
(829, 'San Juan de Pasto', 52),
(830, 'San Juan de Río Seco', 25),
(831, 'San Juan de Urabá', 5),
(832, 'San Juan del Cesar', 44),
(833, 'San Juanito', 50),
(834, 'San Lorenzo', 52),
(835, 'San Luis', 73),
(836, 'San Luís', 5),
(837, 'San Luís de Gaceno', 15),
(838, 'San Luís de Palenque', 85),
(839, 'San Marcos', 70),
(840, 'San Martín', 20),
(841, 'San Martín', 50),
(842, 'San Martín de Loba', 13),
(843, 'San Mateo', 15),
(844, 'San Miguel', 68),
(845, 'San Miguel', 86),
(846, 'San Miguel de Sema', 15),
(847, 'San Onofre', 70),
(848, 'San Pablo', 13),
(849, 'San Pablo', 52),
(850, 'San Pablo de Borbur', 15),
(851, 'San Pedro', 5),
(852, 'San Pedro', 70),
(853, 'San Pedro', 76),
(854, 'San Pedro de Cartago', 52),
(855, 'San Pedro de Urabá', 5),
(856, 'San Pelayo', 23),
(857, 'San Rafael', 5),
(858, 'San Roque', 5),
(859, 'San Sebastián', 19),
(860, 'San Sebastián de Buenavista', 47),
(861, 'San Vicente', 5),
(862, 'San Vicente del Caguán', 18),
(863, 'San Vicente del Chucurí', 68),
(864, 'San Zenón', 47),
(865, 'Sandoná', 52),
(866, 'Santa Ana', 47),
(867, 'Santa Bárbara', 5),
(868, 'Santa Bárbara', 68),
(869, 'Santa Bárbara (Iscuandé)', 52),
(870, 'Santa Bárbara de Pinto', 47),
(871, 'Santa Catalina', 13),
(872, 'Santa Fé de Antioquia', 5),
(873, 'Santa Genoveva de Docorodó', 27),
(874, 'Santa Helena del Opón', 68),
(875, 'Santa Isabel', 73),
(876, 'Santa Lucía', 8),
(877, 'Santa Marta', 47),
(878, 'Santa María', 15),
(879, 'Santa María', 41),
(880, 'Santa Rosa', 13),
(881, 'Santa Rosa', 19),
(882, 'Santa Rosa de Cabal', 66),
(883, 'Santa Rosa de Osos', 5),
(884, 'Santa Rosa de Viterbo', 15),
(885, 'Santa Rosa del Sur', 13),
(886, 'Santa Rosalía', 99),
(887, 'Santa Sofía', 15),
(888, 'Santana', 15),
(889, 'Santander de Quilichao', 19),
(890, 'Santiago', 54),
(891, 'Santiago', 86),
(892, 'Santo Domingo', 5),
(893, 'Santo Tomás', 8),
(894, 'Santuario', 5),
(895, 'Santuario', 66),
(896, 'Sapuyes', 52),
(897, 'Saravena', 81),
(898, 'Sardinata', 54),
(899, 'Sasaima', 25),
(900, 'Sativanorte', 15),
(901, 'Sativasur', 15),
(902, 'Segovia', 5),
(903, 'Sesquilé', 25),
(904, 'Sevilla', 76),
(905, 'Siachoque', 15),
(906, 'Sibaté', 25),
(907, 'Sibundoy', 86),
(908, 'Silos', 54),
(909, 'Silvania', 25),
(910, 'Silvia', 19),
(911, 'Simacota', 68),
(912, 'Simijaca', 25),
(913, 'Simití', 13),
(914, 'Sincelejo', 70),
(915, 'Sincé', 70),
(916, 'Sipí', 27),
(917, 'Sitionuevo', 47),
(918, 'Soacha', 25),
(919, 'Soatá', 15),
(920, 'Socha', 15),
(921, 'Socorro', 68),
(922, 'Socotá', 15),
(923, 'Sogamoso', 15),
(924, 'Solano', 18),
(925, 'Soledad', 8),
(926, 'Solita', 18),
(927, 'Somondoco', 15),
(928, 'Sonsón', 5),
(929, 'Sopetrán', 5),
(930, 'Soplaviento', 13),
(931, 'Sopó', 25),
(932, 'Sora', 15),
(933, 'Soracá', 15),
(934, 'Sotaquirá', 15),
(935, 'Sotara (Paispamba)', 19),
(936, 'Sotomayor (Los Andes)', 52),
(937, 'Suaita', 68),
(938, 'Suan', 8),
(939, 'Suaza', 41),
(940, 'Subachoque', 25),
(941, 'Sucre', 19),
(942, 'Sucre', 68),
(943, 'Sucre', 70),
(944, 'Suesca', 25),
(945, 'Supatá', 25),
(946, 'Supía', 17),
(947, 'Suratá', 68),
(948, 'Susa', 25),
(949, 'Susacón', 15),
(950, 'Sutamarchán', 15),
(951, 'Sutatausa', 25),
(952, 'Sutatenza', 15),
(953, 'Suárez', 19),
(954, 'Suárez', 73),
(955, 'Sácama', 85),
(956, 'Sáchica', 15),
(957, 'Tabio', 25),
(958, 'Tadó', 27),
(959, 'Talaigua Nuevo', 13),
(960, 'Tamalameque', 20),
(961, 'Tame', 81),
(962, 'Taminango', 52),
(963, 'Tangua', 52),
(964, 'Taraira', 97),
(965, 'Tarazá', 5),
(966, 'Tarqui', 41),
(967, 'Tarso', 5),
(968, 'Tasco', 15),
(969, 'Tauramena', 85),
(970, 'Tausa', 25),
(971, 'Tello', 41),
(972, 'Tena', 25),
(973, 'Tenerife', 47),
(974, 'Tenjo', 25),
(975, 'Tenza', 15),
(976, 'Teorama', 54),
(977, 'Teruel', 41),
(978, 'Tesalia', 41),
(979, 'Tibacuy', 25),
(980, 'Tibaná', 15),
(981, 'Tibasosa', 15),
(982, 'Tibirita', 25),
(983, 'Tibú', 54),
(984, 'Tierralta', 23),
(985, 'Timaná', 41),
(986, 'Timbiquí', 19),
(987, 'Timbío', 19),
(988, 'Tinjacá', 15),
(989, 'Tipacoque', 15),
(990, 'Tiquisio (Puerto Rico)', 13),
(991, 'Titiribí', 5),
(992, 'Toca', 15),
(993, 'Tocaima', 25),
(994, 'Tocancipá', 25),
(995, 'Toguí', 15),
(996, 'Toledo', 5),
(997, 'Toledo', 54),
(998, 'Tolú', 70),
(999, 'Tolú Viejo', 70),
(1000, 'Tona', 68),
(1001, 'Topagá', 15),
(1002, 'Topaipí', 25),
(1003, 'Toribío', 19),
(1004, 'Toro', 76),
(1005, 'Tota', 15),
(1006, 'Totoró', 19),
(1007, 'Trinidad', 85),
(1008, 'Trujillo', 76),
(1009, 'Tubará', 8),
(1010, 'Tuchín', 23),
(1011, 'Tulúa', 76),
(1012, 'Tumaco', 52),
(1013, 'Tunja', 15),
(1014, 'Tunungua', 15),
(1015, 'Turbaco', 13),
(1016, 'Turbaná', 13),
(1017, 'Turbo', 5),
(1018, 'Turmequé', 15),
(1019, 'Tuta', 15),
(1020, 'Tutasá', 15),
(1021, 'Támara', 85),
(1022, 'Támesis', 5),
(1023, 'Túquerres', 52),
(1024, 'Ubalá', 25),
(1025, 'Ubaque', 25),
(1026, 'Ubaté', 25),
(1027, 'Ulloa', 76),
(1028, 'Une', 25),
(1029, 'Unguía', 27),
(1030, 'Unión Panamericana (ÁNIMAS)', 27),
(1031, 'Uramita', 5),
(1032, 'Uribe', 50),
(1033, 'Uribia', 44),
(1034, 'Urrao', 5),
(1035, 'Urumita', 44),
(1036, 'Usiacuri', 8),
(1037, 'Valdivia', 5),
(1038, 'Valencia', 23),
(1039, 'Valle de San José', 68),
(1040, 'Valle de San Juan', 73),
(1041, 'Valle del Guamuez', 86),
(1042, 'Valledupar', 20),
(1043, 'Valparaiso', 5),
(1044, 'Valparaiso', 18),
(1045, 'Vegachí', 5),
(1046, 'Venadillo', 73),
(1047, 'Venecia', 5),
(1048, 'Venecia (Ospina Pérez)', 25),
(1049, 'Ventaquemada', 15),
(1050, 'Vergara', 25),
(1051, 'Versalles', 76),
(1052, 'Vetas', 68),
(1053, 'Viani', 25),
(1054, 'Vigía del Fuerte', 5),
(1055, 'Vijes', 76),
(1056, 'Villa Caro', 54),
(1057, 'Villa Rica', 19),
(1058, 'Villa de Leiva', 15),
(1059, 'Villa del Rosario', 54),
(1060, 'Villagarzón', 86),
(1061, 'Villagómez', 25),
(1062, 'Villahermosa', 73),
(1063, 'Villamaría', 17),
(1064, 'Villanueva', 13),
(1065, 'Villanueva', 44),
(1066, 'Villanueva', 68),
(1067, 'Villanueva', 85),
(1068, 'Villapinzón', 25),
(1069, 'Villarrica', 73),
(1070, 'Villavicencio', 50),
(1071, 'Villavieja', 41),
(1072, 'Villeta', 25),
(1073, 'Viotá', 25),
(1074, 'Viracachá', 15),
(1075, 'Vista Hermosa', 50),
(1076, 'Viterbo', 17),
(1077, 'Vélez', 68),
(1078, 'Yacopí', 25),
(1079, 'Yacuanquer', 52),
(1080, 'Yaguará', 41),
(1081, 'Yalí', 5),
(1082, 'Yarumal', 5),
(1083, 'Yolombó', 5),
(1084, 'Yondó (Casabe)', 5),
(1085, 'Yopal', 85),
(1086, 'Yotoco', 76),
(1087, 'Yumbo', 76),
(1088, 'Zambrano', 13),
(1089, 'Zapatoca', 68),
(1090, 'Zapayán (PUNTA DE PIEDRAS)', 47),
(1091, 'Zaragoza', 5),
(1092, 'Zarzal', 76),
(1093, 'Zetaquirá', 15),
(1094, 'Zipacón', 25),
(1095, 'Zipaquirá', 25),
(1096, 'Zona Bananera (PRADO - SEVILLA)', 47),
(1097, 'Ábrego', 54),
(1098, 'Íquira', 41),
(1099, 'Úmbita', 15),
(1100, 'Útica', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

CREATE TABLE `noticia` (
  `codNoticia` int(11) NOT NULL,
  `titNoticia` varchar(50) NOT NULL,
  `desNoticia` text NOT NULL,
  `imgNoticia` varchar(50) NOT NULL,
  `fecPubNoticia` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `noticia`
--

INSERT INTO `noticia` (`codNoticia`, `titNoticia`, `desNoticia`, `imgNoticia`, `fecPubNoticia`) VALUES
(1, 'ULTIMAS NOTICIAS 2020', '<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"\"><span style=\"line-height: 26px; font-weight: bold;\">La agenda de la reflexión epistemológica desde el sur y de la&nbsp; investigación social y educativa latinoamericana, encuentra en las ruralidades de América Latina un campo de discusión que requiere de un análisis profundo porque guarda en su interior diversos significados y procesos de resignificación en torno a temas como: la pluriactividad rural, la multifuncionalidad, los desplazamientos y movilidad social, el trabajo femenino en territorios rurales, los ingresos no agrícolas, los movimientos de defensa por el territorio, el agua, los recursos naturales, el narcotráfico y la industria agropecuaria transnacional. Explicar tensiones, conflictos y los cambios en el contexto de las ruralidades latinoamericanas requiere ampliar las miradas, que desde una episteme del sur sean capaces de interpelar el cuerpo teórico unificado y eurocéntrico desde donde se ha venido leyendo la ruralidad latinoamericana.</span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"line-height: 26px; font-weight: bold;\">&nbsp;​</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\"><span style=\"line-height: 26px;\">O</span><span style=\"line-height: 26px;\">BJETIVO GENERAL:</span><span style=\"line-height: 26px;\"></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"line-height: 26px; font-weight: bold;\">Dialogar a partir de reflexiones, investigaciones, prácticas y experiencias de actores, organizaciones y movimientos sociales en torno a las formas de construir conocimiento, prácticas y de desarrollar epistemologías. Otras relacionadas con educaciones y ruralidades latinoamericanas; las epistemologías del sur, los procesos y metodologías participativas; y, los procesos sociales: prácticas, saberes y narrativas presentes en los territorios</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\"><span style=\"line-height: 26px;\">O</span><span style=\"line-height: 26px;\">BJETIVOS ESPECÍFICOS:</span></span></p><ul style=\"\"><li style=\"\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"line-height: 26px; font-weight: bold;\">Reconocer las condiciones iniciales de problematización en relación educaciones y ruralidades latinoamericanas; las epistemologías del sur, los procesos y metodologías participativas; y los procesos sociales: prácticas, saberes y narrativas presentes en los territorios</span></li><li style=\"\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"line-height: 26px; font-weight: bold;\">Reflexionar en torno a los problemas emergentes identificados a partir de los saberes, experiencias, prácticas sociales y pedagógicas socializadas.</span></li><li style=\"\"><div style=\"\"><span style=\"font-weight: bold;\">Promover la participación activa de actores sociales en espacios de disertación crítica y de diálogo desde las problemáticas abordadas que permitan nuevas comprensiones y miradas a las epistemologías del sur y las ruralidades latinoamericanas orientadas a la acción transformadora.</span></div><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\"><div style=\"\">&nbsp;</div><div style=\"\"><br></div><span style=\"line-height: 26px;\"><div style=\"\"><span style=\"line-height: 26px;\">D</span><span style=\"line-height: 26px;\">irigido a:</span></div></span></span></li></ul><ul style=\"\"><li style=\"\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"line-height: 26px; font-weight: bold;\">Maestros, investigadores y directivos docentes de educación inicial, básica, media y universitaria del sector oficial y privado.</span></li><li style=\"\"><div style=\"\"><span style=\"font-weight: bold;\">Activistas, líderes y actores de procesos sociales, organizaciones gubernamentales y no gubernamentales, dedicadas al campo de la educación y la intervención social y cultural.</span></div><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\"><div style=\"\"><br></div><div style=\"\"><br></div><span style=\"line-height: 26px;\"><div style=\"\"><span style=\"line-height: 26px;\">C</span><span style=\"line-height: 26px;\">ONCEPTOS ASOCIADOS:</span></div></span></span></li></ul><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\"><div style=\"\">Epistemologías del sur, ruralidades latinoamericanas, praxis, saberes, prácticas, experiencias, narrativas, procesos sociales, procesos y metodologías participativas, territorio, educaciones rurales, otras educaciones.</div></span>', '../view/img/noticias/punzonado.jpg', '2020-01-08 16:37:53'),
(2, 'EL DOLAR ETSA EN ESTE 2020', '<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"\"><span style=\"line-height: 26px; font-weight: bold;\">La agenda de la reflexión epistemológica desde el sur y de la&nbsp; investigación social y educativa latinoamericana, encuentra en las ruralidades de América Latina un campo de discusión que requiere de un análisis profundo porque guarda en su interior diversos significados y procesos de resignificación en torno a temas como: la pluriactividad rural, la multifuncionalidad, los desplazamientos y movilidad social, el trabajo femenino en territorios rurales, los ingresos no agrícolas, los movimientos de defensa por el territorio, el agua, los recursos naturales, el narcotráfico y la industria agropecuaria transnacional. Explicar tensiones, conflictos y los cambios en el contexto de las ruralidades latinoamericanas requiere ampliar las miradas, que desde una episteme del sur sean capaces de interpelar el cuerpo teórico unificado y eurocéntrico desde donde se ha venido leyendo la ruralidad latinoamericana.</span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"line-height: 26px; font-weight: bold;\">&nbsp;​</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\"><span style=\"line-height: 26px;\">O</span><span style=\"line-height: 26px;\">BJETIVO GENERAL:</span><span style=\"line-height: 26px;\"></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"line-height: 26px; font-weight: bold;\">Dialogar a partir de reflexiones, investigaciones, prácticas y experiencias de actores, organizaciones y movimientos sociales en torno a las formas de construir conocimiento, prácticas y de desarrollar epistemologías. Otras relacionadas con educaciones y ruralidades latinoamericanas; las epistemologías del sur, los procesos y metodologías participativas; y, los procesos sociales: prácticas, saberes y narrativas presentes en los territorios</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\"><span style=\"line-height: 26px;\">O</span><span style=\"line-height: 26px;\">BJETIVOS ESPECÍFICOS:</span></span></p><ul style=\"\"><li style=\"\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"line-height: 26px; font-weight: bold;\">Reconocer las condiciones iniciales de problematización en relación educaciones y ruralidades latinoamericanas; las epistemologías del sur, los procesos y metodologías participativas; y los procesos sociales: prácticas, saberes y narrativas presentes en los territorios</span></li><li style=\"\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"line-height: 26px; font-weight: bold;\">Reflexionar en torno a los problemas emergentes identificados a partir de los saberes, experiencias, prácticas sociales y pedagógicas socializadas.</span></li><li style=\"\"><div style=\"\"><span style=\"font-weight: bold;\">Promover la participación activa de actores sociales en espacios de disertación crítica y de diálogo desde las problemáticas abordadas que permitan nuevas comprensiones y miradas a las epistemologías del sur y las ruralidades latinoamericanas orientadas a la acción transformadora.</span></div><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\"><div style=\"\">&nbsp;</div><div style=\"\"><br></div><span style=\"line-height: 26px;\"><div style=\"\"><span style=\"line-height: 26px;\">D</span><span style=\"line-height: 26px;\">irigido a:</span></div></span></span></li></ul><ul style=\"\"><li style=\"\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"line-height: 26px; font-weight: bold;\">Maestros, investigadores y directivos docentes de educación inicial, básica, media y universitaria del sector oficial y privado.</span></li><li style=\"\"><div style=\"\"><span style=\"font-weight: bold;\">Activistas, líderes y actores de procesos sociales, organizaciones gubernamentales y no gubernamentales, dedicadas al campo de la educación y la intervención social y cultural.</span></div><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\"><div style=\"\"><br></div><div style=\"\"><br></div><span style=\"line-height: 26px;\"><div style=\"\"><span style=\"line-height: 26px;\">C</span><span style=\"line-height: 26px;\">ONCEPTOS ASOCIADOS:</span></div></span></span></li></ul><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\"><div style=\"\">Epistemologías del sur, ruralidades latinoamericanas, praxis, saberes, prácticas, experiencias, narrativas, procesos sociales, procesos y metodologías participativas, territorio, educaciones rurales, otras educaciones.</div></span>', '../view/img/noticias/punzonado.jpg', '2020-01-03 21:30:48'),
(3, 'EL DOLAR ETSA EN ESTE 2020', 'ESTE ADSNMBBBBBB  .VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVKS', '../view/img/noticias/punzonado.jpg', '2020-01-03 17:46:29'),
(4, 'EL DOLAR ETSA EN ESTE 2020', 'ESTE ADSNMBBBBBB  .VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVKS', '../view/img/noticias/punzonado.jpg', '2020-01-03 17:46:31'),
(5, 'EL DOLAR ETSA EN ESTE 2020', 'ESTE ADSNMBBBBBB  .VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVKS', '../view/img/noticias/punzonado.jpg', '2020-01-03 17:46:34'),
(6, 'EL DOLAR ETSA EN ESTE 2020', 'ESTE ADSNMBBBBBB  .VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVKS', '../view/img/noticias/punzonado.jpg', '2020-01-03 17:46:36'),
(7, 'EL DOLAR ETSA EN ESTE 2020', 'ESTE ADSNMBBBBBB  .VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVKS', '../view/img/noticias/punzonado.jpg', '2020-01-03 17:46:37'),
(8, 'EL DOLAR ETSA EN ESTE 2020', 'ESTE ADSNMBBBBBB  .VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVKS', '../view/img/noticias/punzonado.jpg', '2020-01-03 17:46:38'),
(9, 'EL DOLAR ETSA EN ESTE 2020', 'ESTE ADSNMBBBBBB  .VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVKS', '../view/img/noticias/punzonado.jpg', '2020-01-03 17:46:39'),
(10, 'EL DOLAR ETSA EN ESTE 2020', 'ESTE ADSNMBBBBBB  .VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVKS', '../view/img/noticias/punzonado.jpg', '2020-01-03 17:46:42'),
(11, 'EL DOLAR ETSA EN ESTE 2020', 'ESTE ADSNMBBBBBB  .VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVKS', '../view/img/noticias/punzonado.jpg', '2020-01-03 17:46:43'),
(12, 'EL DOLAR ETSA EN ESTE 2020', 'ESTE ADSNMBBBBBB  .VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVKS', '../view/img/noticias/punzonado.jpg', '2020-01-03 17:46:44'),
(13, 'EL DOLAR ETSA EN ESTE 2020', 'ESTE ADSNMBBBBBB  .VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVKS', '../view/img/noticias/punzonado.jpg', '2020-01-03 17:46:46'),
(14, 'EL DOLAR ETSA EN ESTE 2020', '<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"\"><span style=\"line-height: 26px; font-weight: bold;\">La agenda de la reflexión epistemológica desde el sur y de la&nbsp; investigación social y educativa latinoamericana, encuentra en las ruralidades de América Latina un campo de discusión que requiere de un análisis profundo porque guarda en su interior diversos significados y procesos de resignificación en torno a temas como: la pluriactividad rural, la multifuncionalidad, los desplazamientos y movilidad social, el trabajo femenino en territorios rurales, los ingresos no agrícolas, los movimientos de defensa por el territorio, el agua, los recursos naturales, el narcotráfico y la industria agropecuaria transnacional. Explicar tensiones, conflictos y los cambios en el contexto de las ruralidades latinoamericanas requiere ampliar las miradas, que desde una episteme del sur sean capaces de interpelar el cuerpo teórico unificado y eurocéntrico desde donde se ha venido leyendo la ruralidad latinoamericana.</span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"line-height: 26px; font-weight: bold;\">&nbsp;​</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\"><span style=\"line-height: 26px;\">O</span><span style=\"line-height: 26px;\">BJETIVO GENERAL:</span><span style=\"line-height: 26px;\"></span></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"line-height: 26px; font-weight: bold;\">Dialogar a partir de reflexiones, investigaciones, prácticas y experiencias de actores, organizaciones y movimientos sociales en torno a las formas de construir conocimiento, prácticas y de desarrollar epistemologías. Otras relacionadas con educaciones y ruralidades latinoamericanas; las epistemologías del sur, los procesos y metodologías participativas; y, los procesos sociales: prácticas, saberes y narrativas presentes en los territorios</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\">&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 21px;\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\"><span style=\"line-height: 26px;\">O</span><span style=\"line-height: 26px;\">BJETIVOS ESPECÍFICOS:</span></span></p><ul style=\"\"><li style=\"\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"line-height: 26px; font-weight: bold;\">Reconocer las condiciones iniciales de problematización en relación educaciones y ruralidades latinoamericanas; las epistemologías del sur, los procesos y metodologías participativas; y los procesos sociales: prácticas, saberes y narrativas presentes en los territorios</span></li><li style=\"\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"line-height: 26px; font-weight: bold;\">Reflexionar en torno a los problemas emergentes identificados a partir de los saberes, experiencias, prácticas sociales y pedagógicas socializadas.</span></li><li style=\"\"><div style=\"\"><span style=\"font-weight: bold;\">Promover la participación activa de actores sociales en espacios de disertación crítica y de diálogo desde las problemáticas abordadas que permitan nuevas comprensiones y miradas a las epistemologías del sur y las ruralidades latinoamericanas orientadas a la acción transformadora.</span></div><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\"><div style=\"\">&nbsp;</div><div style=\"\"><br></div><span style=\"line-height: 26px;\"><div style=\"\"><span style=\"line-height: 26px;\">D</span><span style=\"line-height: 26px;\">irigido a:</span></div></span></span></li></ul><ul style=\"\"><li style=\"\"><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"line-height: 26px; font-weight: bold;\">Maestros, investigadores y directivos docentes de educación inicial, básica, media y universitaria del sector oficial y privado.</span></li><li style=\"\"><div style=\"\"><span style=\"font-weight: bold;\">Activistas, líderes y actores de procesos sociales, organizaciones gubernamentales y no gubernamentales, dedicadas al campo de la educación y la intervención social y cultural.</span></div><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\"><div style=\"\"><br></div><div style=\"\"><br></div><span style=\"line-height: 26px;\"><div style=\"\"><span style=\"line-height: 26px;\">C</span><span style=\"line-height: 26px;\">ONCEPTOS ASOCIADOS:</span></div></span></span></li></ul><span class=\"ms-rteFontSize-3 ms-rteFontFace-12\" style=\"font-weight: bold;\"><div style=\"\">Epistemologías del sur, ruralidades latinoamericanas, praxis, saberes, prácticas, experiencias, narrativas, procesos sociales, procesos y metodologías participativas, territorio, educaciones rurales, otras educaciones.</div></span>', '../view/img/noticias/punzonado.jpg', '2020-01-03 21:30:54'),
(15, 'esta era mi primer noticia', 'hola como estas', '../view/img/noticias/15/326.jpg', '2020-01-14 20:14:39'),
(17, 'una nueva noticia', '<blockquote style=\"text-align: center;\"><span style=\"font-weight: bold;\">lhhjsakdjkajadj</span></blockquote>', '../view/img/noticias/17/638.jpg', '2020-01-14 20:16:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedad`
--

CREATE TABLE `novedad` (
  `codNovedad` int(11) NOT NULL,
  `titNovedad` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `imgNovedad` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `desNovedad` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecNovedad` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `novedad`
--

INSERT INTO `novedad` (`codNovedad`, `titNovedad`, `imgNovedad`, `desNovedad`, `fecNovedad`) VALUES
(1, 'nuevas muestras', '../view/img/novedades/punzonado.jpg', 'la ultima tendencia', '2020-01-15 15:40:17'),
(2, 'nueva maquina dobladora 2020', '../view/img/novedades/2/534.jpg', '<blockquote style=\"text-align: center; margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(34, 34, 34); font-family: sans-serif;\"><span style=\"font-size: xx-large; font-weight: bold;\">Colombia</span></blockquote><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(34, 34, 34); font-family: sans-serif;\">oficialmente&nbsp;<b>República de Colombia</b>, es un&nbsp;<a href=\"https://es.wikipedia.org/wiki/Estado\" title=\"Estado\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">país soberano</a>&nbsp;situado en la región noroccidental de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Am%C3%A9rica_del_Sur\" title=\"América del Sur\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">América del Sur</a>, que se constituye en un&nbsp;<a href=\"https://es.wikipedia.org/wiki/Estado_unitario\" title=\"Estado unitario\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">estado unitario</a>,&nbsp;<a href=\"https://es.wikipedia.org/wiki/Estado_social\" title=\"Estado social\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">social</a>&nbsp;y&nbsp;<a href=\"https://es.wikipedia.org/wiki/Democracia\" title=\"Democracia\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">democrático</a>&nbsp;de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Estado_de_derecho\" title=\"Estado de derecho\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">derecho</a>&nbsp;cuya forma de gobierno es&nbsp;<a href=\"https://es.wikipedia.org/wiki/Presidencialismo\" title=\"Presidencialismo\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">presidencialista</a>. Es una república organizada políticamente en&nbsp;<a href=\"https://es.wikipedia.org/wiki/Departamentos_de_Colombia\" title=\"Departamentos de Colombia\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">32 departamentos</a>&nbsp;descentralizados y el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Distrito_capital\" title=\"Distrito capital\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Distrito capital</a>&nbsp;de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Bogot%C3%A1\" title=\"Bogotá\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Bogotá</a>, sede del gobierno nacional.<sup id=\"cite_ref-:2_11-0\" class=\"reference separada\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; margin-right: 0.6ch;\"><a href=\"https://es.wikipedia.org/wiki/Colombia#cite_note-:2-11\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">11</a></sup>​</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(34, 34, 34); font-family: sans-serif;\">Incluyendo la&nbsp;<a href=\"https://es.wikipedia.org/wiki/Isla_de_Malpelo\" title=\"Isla de Malpelo\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">isla de Malpelo</a>, el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Cayo_Roncador\" class=\"mw-redirect\" title=\"Cayo Roncador\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">cayo Roncador</a>&nbsp;y el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Banco_Serrana\" title=\"Banco Serrana\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">banco Serrana</a>, el país abarca una superficie de&nbsp;<span style=\"white-space: nowrap;\">1 141 748 km²</span>,<sup id=\"cite_ref-superficie2_3-1\" class=\"reference separada\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; margin-right: 0.6ch;\"><a href=\"https://es.wikipedia.org/wiki/Colombia#cite_note-superficie2-3\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">3</a></sup>​ por lo que es el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Anexo:Pa%C3%ADses_por_superficie\" title=\"Anexo:Países por superficie\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">vigesimosexto</a>&nbsp;país más grande del mundo y el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Anexo:Pa%C3%ADses_de_Am%C3%A9rica_por_superficie\" title=\"Anexo:Países de América por superficie\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">séptimo</a>&nbsp;más grande de América. Reclama como mar territorial el área hasta las 12 millas náuticas de distancia,<sup id=\"cite_ref-superficie_4-2\" class=\"reference separada\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; margin-right: 0.6ch;\"><a href=\"https://es.wikipedia.org/wiki/Colombia#cite_note-superficie-4\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">4</a></sup>​ manteniendo un diferendo limítrofe al respecto con&nbsp;<a href=\"https://es.wikipedia.org/wiki/Venezuela\" title=\"Venezuela\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Venezuela</a>&nbsp;y&nbsp;<a href=\"https://es.wikipedia.org/wiki/Nicaragua\" title=\"Nicaragua\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Nicaragua</a>.<sup id=\"cite_ref-12\" class=\"reference separada\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; margin-right: 0.6ch;\"><a href=\"https://es.wikipedia.org/wiki/Colombia#cite_note-12\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">12</a></sup>​<sup id=\"cite_ref-13\" class=\"reference separada\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; margin-right: 0.6ch;\"><a href=\"https://es.wikipedia.org/wiki/Colombia#cite_note-13\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">13</a></sup>​ Limita al&nbsp;<a href=\"https://es.wikipedia.org/wiki/Oriente\" title=\"Oriente\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Oriente</a>&nbsp;con Venezuela y&nbsp;<a href=\"https://es.wikipedia.org/wiki/Brasil\" title=\"Brasil\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Brasil</a>, al&nbsp;<a href=\"https://es.wikipedia.org/wiki/Sur\" title=\"Sur\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Sur</a>&nbsp;con&nbsp;<a href=\"https://es.wikipedia.org/wiki/Per%C3%BA\" title=\"Perú\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Perú</a>&nbsp;y&nbsp;<a href=\"https://es.wikipedia.org/wiki/Ecuador\" title=\"Ecuador\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Ecuador</a>&nbsp;y al Noroccidente con&nbsp;<a href=\"https://es.wikipedia.org/wiki/Panam%C3%A1\" title=\"Panamá\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Panamá</a>; en cuanto a límites marítimos, colinda con Panamá,&nbsp;<a href=\"https://es.wikipedia.org/wiki/Costa_Rica\" title=\"Costa Rica\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Costa Rica</a>, Nicaragua,&nbsp;<a href=\"https://es.wikipedia.org/wiki/Honduras\" title=\"Honduras\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Honduras</a>,&nbsp;<a href=\"https://es.wikipedia.org/wiki/Jamaica\" title=\"Jamaica\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Jamaica</a>,&nbsp;<a href=\"https://es.wikipedia.org/wiki/Hait%C3%AD\" title=\"Haití\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Haití</a>,&nbsp;<a href=\"https://es.wikipedia.org/wiki/Rep%C3%BAblica_Dominicana\" title=\"República Dominicana\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">República Dominicana</a>&nbsp;y Venezuela en el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Mar_Caribe\" title=\"Mar Caribe\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">mar Caribe</a>, y con Panamá, Costa Rica y Ecuador en el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_Pac%C3%ADfico\" title=\"Océano Pacífico\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">océano Pacífico</a>.<sup id=\"cite_ref-14\" class=\"reference separada\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; margin-right: 0.6ch;\"><a href=\"https://es.wikipedia.org/wiki/Colombia#cite_note-14\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">14</a></sup>​</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(34, 34, 34); font-family: sans-serif;\">Es la única&nbsp;<a href=\"https://es.wikipedia.org/wiki/Naci%C3%B3n\" title=\"Nación\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">nación</a>&nbsp;de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Am%C3%A9rica_del_Sur\" title=\"América del Sur\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">América del Sur</a>&nbsp;que tiene costas en el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_Pac%C3%ADfico\" title=\"Océano Pacífico\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">océano Pacífico</a>&nbsp;y acceso al&nbsp;<a href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_Atl%C3%A1ntico\" title=\"Océano Atlántico\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Atlántico</a>&nbsp;a través del&nbsp;<a href=\"https://es.wikipedia.org/wiki/Mar_Caribe\" title=\"Mar Caribe\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">mar Caribe</a>,<sup id=\"cite_ref-SEMANA-DÍAZ_15-0\" class=\"reference separada\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; margin-right: 0.6ch;\"><a href=\"https://es.wikipedia.org/wiki/Colombia#cite_note-SEMANA-D%C3%8DAZ-15\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">15</a></sup>​ en los que posee&nbsp;<a href=\"https://es.wikipedia.org/wiki/Regi%C3%B3n_Insular_(Colombia)\" class=\"mw-redirect\" title=\"Región Insular (Colombia)\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">diversas islas</a>&nbsp;como el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Archipi%C3%A9lago_de_San_Andr%C3%A9s,_Providencia_y_Santa_Catalina\" title=\"Archipiélago de San Andrés, Providencia y Santa Catalina\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">archipiélago de San Andrés, Providencia y Santa Catalina</a>.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(34, 34, 34); font-family: sans-serif;\">Es el vigesimoctavo&nbsp;<a href=\"https://es.wikipedia.org/wiki/Anexo:Pa%C3%ADses_y_territorios_dependientes_por_poblaci%C3%B3n\" title=\"Anexo:Países y territorios dependientes por población\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">país más poblado del mundo</a>, con una población estimada de 49 millones de habitantes,<sup id=\"cite_ref-16\" class=\"reference separada\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; margin-right: 0.6ch;\"><a href=\"https://es.wikipedia.org/wiki/Colombia#cite_note-16\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">16</a></sup>​ además es la segunda nación con más&nbsp;<a href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol\" title=\"Idioma español\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">hispanohablantes</a>, solo detrás de&nbsp;<a href=\"https://es.wikipedia.org/wiki/M%C3%A9xico\" title=\"México\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">México</a>.<sup id=\"cite_ref-HISPANOHABLANTES_17-0\" class=\"reference separada\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; margin-right: 0.6ch;\"><a href=\"https://es.wikipedia.org/wiki/Colombia#cite_note-HISPANOHABLANTES-17\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">17</a></sup>​ Posee una población multicultural, la cual es, en su mayoría, resultado del mestizaje entre europeos, indígenas y africanos, con minorías de indígenas y afrodescendientes. En el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Regi%C3%B3n_Caribe_(Colombia)\" title=\"Región Caribe (Colombia)\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Caribe colombiano</a>&nbsp;hay una cantidad importante de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Descendencia\" title=\"Descendencia\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">descendientes</a>&nbsp;del&nbsp;<a href=\"https://es.wikipedia.org/wiki/Medio_Oriente\" class=\"mw-redirect\" title=\"Medio Oriente\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Medio Oriente</a>.<sup id=\"cite_ref-Colombia_a_country_study_18-0\" class=\"reference separada\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; margin-right: 0.6ch;\"><a href=\"https://es.wikipedia.org/wiki/Colombia#cite_note-Colombia_a_country_study-18\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">18</a></sup>​ El&nbsp;<a href=\"https://es.wikipedia.org/wiki/Anexo:Pa%C3%ADses_por_PIB_(PPA)\" title=\"Anexo:Países por PIB (PPA)\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">producto interno bruto de paridad de poder adquisitivo</a>&nbsp;de Colombia ocupa el cuarto puesto en América Latina y el puesto 28 a nivel mundial. El&nbsp;<a href=\"https://es.wikipedia.org/wiki/Anexo:Pa%C3%ADses_por_PIB_(nominal)\" title=\"Anexo:Países por PIB (nominal)\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">PIB nominal</a>&nbsp;colombiano es el cuarto más grande de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Am%C3%A9rica_Latina\" title=\"América Latina\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">América Latina</a>&nbsp;y ocupa el puesto 28 a nivel mundial.<sup id=\"cite_ref-Biodiversity_Theme_19-0\" class=\"reference separada\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; margin-right: 0.6ch;\"><a href=\"https://es.wikipedia.org/wiki/Colombia#cite_note-Biodiversity_Theme-19\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">19</a></sup>​</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(34, 34, 34); font-family: sans-serif;\">La presencia humana en Colombia se remonta a más de 10&nbsp;000 años. Después de miles de años de formación cultural, en el actual territorio colombiano surgieron diversas&nbsp;<a href=\"https://es.wikipedia.org/wiki/Colombia_precolombina\" title=\"Colombia precolombina\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">culturas precolombinas</a>&nbsp;como los&nbsp;<a href=\"https://es.wikipedia.org/wiki/Muiscas\" title=\"Muiscas\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">muiscas</a>,&nbsp;<a href=\"https://es.wikipedia.org/wiki/Taironas\" title=\"Taironas\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">taironas</a>,&nbsp;<a href=\"https://es.wikipedia.org/wiki/Quimbaya_(etnia)\" title=\"Quimbaya (etnia)\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">quimbayas</a>&nbsp;y&nbsp;<a href=\"https://es.wikipedia.org/wiki/Zen%C3%BA\" title=\"Zenú\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">zenúes</a>&nbsp;y el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Imperio_incaico\" title=\"Imperio incaico\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Imperio incaico</a>&nbsp;que se extendió hasta el suroeste de Colombia.&nbsp;<a href=\"https://es.wikipedia.org/wiki/Imperio_espa%C3%B1ol\" title=\"Imperio español\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">España</a>&nbsp;creó el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Virreinato_de_la_Nueva_Granada\" class=\"mw-redirect\" title=\"Virreinato de la Nueva Granada\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Virreinato de la Nueva Granada</a>&nbsp;con capital en Bogotá, aunque durante grandes periodos de tiempo formó parte del&nbsp;<a href=\"https://es.wikipedia.org/wiki/Virreinato_del_Per%C3%BA\" title=\"Virreinato del Perú\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Virreinato del Perú</a>. En el año 1810 comenzó la&nbsp;<a href=\"https://es.wikipedia.org/wiki/Independencia_de_Colombia\" title=\"Independencia de Colombia\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Guerra de independencia</a>, tras la cual surgió el país que actualmente se conoce como Colombia. Durante los&nbsp;<a href=\"https://es.wikipedia.org/wiki/Siglo_XIX\" title=\"Siglo XIX\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">siglos XIX</a>&nbsp;y&nbsp;<a href=\"https://es.wikipedia.org/wiki/Siglo_XX\" title=\"Siglo XX\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">XX</a>, el país se caracterizó por su inestabilidad y un gran número de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Guerras_civiles_de_Colombia\" title=\"Guerras civiles de Colombia\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">guerras civiles</a>;<sup id=\"cite_ref-20\" class=\"reference separada\" style=\"line-height: 1em; unicode-bidi: isolate; white-space: nowrap; margin-right: 0.6ch;\"><a href=\"https://es.wikipedia.org/wiki/Colombia#cite_note-20\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">20</a></sup>​ el último de estos conflictos conocido como&nbsp;<a href=\"https://es.wikipedia.org/wiki/Conflicto_armado_interno_en_Colombia\" class=\"mw-redirect\" title=\"Conflicto armado interno en Colombia\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">conflicto armado interno</a>, surgido en 1960. En el año 2012, después de más cincuenta años de conflicto, el gobierno del entonces presidente&nbsp;<a href=\"https://es.wikipedia.org/wiki/Juan_Manuel_Santos\" title=\"Juan Manuel Santos\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Juan Manuel Santos</a>&nbsp;inició conversaciones de paz con las&nbsp;<a href=\"https://es.wikipedia.org/wiki/Fuerzas_Armadas_Revolucionarias_de_Colombia\" title=\"Fuerzas Armadas Revolucionarias de Colombia\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">FARC-EP</a>. En 2016 se alcanzó un&nbsp;<a href=\"https://es.wikipedia.org/wiki/Acuerdos_de_paz_entre_el_gobierno_de_Juan_Manuel_Santos_y_las_FARC\" title=\"Acuerdos de paz entre el gobierno de Juan Manuel Santos y las FARC\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">acuerdo final</a>&nbsp;que a pesar de no ser aprobado en el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Plebiscito_sobre_los_acuerdos_de_paz_de_Colombia_de_2016\" title=\"Plebiscito sobre los acuerdos de paz de Colombia de 2016\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">plebiscito del 2 de octubre</a>&nbsp;del mismo año, fue implementado con modificaciones en 2017. A la fecha, el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Gobierno_de_Colombia\" title=\"Gobierno de Colombia\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Gobierno de Colombia</a>&nbsp;se encuentra adelantando el proceso de implementación de los acuerdos e iniciando nuevas conversaciones con el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Ej%C3%A9rcito_de_Liberaci%C3%B3n_Nacional_(Colombia)\" title=\"Ejército de Liberación Nacional (Colombia)\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">ELN</a>, que ha manifestado la intención de contribuir al final del conflicto.</p>', '2020-01-15 18:14:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_tecnico`
--

CREATE TABLE `perfil_tecnico` (
  `codPerfil` int(11) NOT NULL,
  `codTecnico` varchar(11) COLLATE utf8mb4_spanish_ci NOT NULL,
  `codExperiencia` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `codPersona` varchar(12) COLLATE utf8mb4_spanish_ci NOT NULL,
  `codMunicipio` int(4) NOT NULL,
  `priNomPersona` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `segNomPersona` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `priApePersona` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `segApePersona` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `dirPersona` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecNacPersona` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`codPersona`, `codMunicipio`, `priNomPersona`, `segNomPersona`, `priApePersona`, `segApePersona`, `dirPersona`, `fecNacPersona`) VALUES
('34234432', 1, 'kristian', 'ricar', 'asda', 'addada', 'addadada', '2019-12-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productividad`
--

CREATE TABLE `productividad` (
  `id_productividad` int(11) NOT NULL,
  `nombre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `referencia_catalogo`
--

CREATE TABLE `referencia_catalogo` (
  `codRefCatalogo` int(3) NOT NULL,
  `nomRefCatalogo` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `referencia_maquina`
--

CREATE TABLE `referencia_maquina` (
  `codReferencia` int(4) NOT NULL,
  `nomReferencia` mediumtext COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `referencia_maquina`
--

INSERT INTO `referencia_maquina` (`codReferencia`, `nomReferencia`) VALUES
(1, 'LIBERTY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `codServicio` int(11) NOT NULL,
  `codTipServicio` int(3) NOT NULL,
  `codTecnico` varchar(11) COLLATE utf8mb4_spanish_ci NOT NULL,
  `codFuncionario` int(3) NOT NULL,
  `fecIniServicio` date NOT NULL,
  `horaServicio` datetime NOT NULL,
  `obsServicio` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `eviServicio` blob NOT NULL,
  `fecFinServicio` date NOT NULL,
  `cosServicio` float NOT NULL,
  `ubiServicio` longtext COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `imgFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `tipoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `imgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloImgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloTextoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo1` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo2` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo3` text COLLATE utf8_spanish_ci NOT NULL,
  `boton` text COLLATE utf8_spanish_ci NOT NULL,
  `url` text COLLATE utf8_spanish_ci NOT NULL,
  `orden` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id`, `nombre`, `imgFondo`, `tipoSlide`, `imgProducto`, `estiloImgProducto`, `estiloTextoSlide`, `titulo1`, `titulo2`, `titulo3`, `boton`, `url`, `orden`, `fecha`) VALUES
(1, '', 'vistas/img/slide/maquina2.jpg', 'slideOpcion2', '', '{\"top\": \"5%\" ,\"right\": \"15%\" ,\"width\": \"25%\", \"left\":\"\"}', '{\"top\": \"15%\" ,\"right\": \"15%\" ,\"width\": \"40%\", \"left\":\"\"}', '{\"texto\": \"Lorem Ipsum\" ,\"color\": \"#333\"}', '{\"texto\": \"Lorem ipsum dolor sit\" ,\"color\": \"#777\"}', '{\"texto\": \"Lorem ipsum dolor sit\" ,\"color\": \"#888\"}', '<button class=\"btn btn-default backColor text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>', '#', 1, '2020-01-17 21:11:14'),
(5, '', 'vistas/img/slide/maquina1.jpg', 'slideOpcion1', '', '{\"top\": \"5%\" ,\"right\": \"15%\" ,\"width\": \"25%\", \"left\":\"\"}', '{\"top\": \"20%\" ,\"right\": \"\" ,\"width\": \"40%\", \"left\":\"10%\"}', '{\"texto\": \"Lorem Ipsum\" ,\"color\": \"#333\"}', '{\"texto\": \"Lorem ipsum dolor sit\" ,\"color\": \"#777\"}', '{\"texto\": \"Lorem ipsum dolor sit\" ,\"color\": \"#888\"}', '<button class=\"btn btn-default backColor text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>', '#', 2, '2020-01-17 21:11:18'),
(6, '', 'vistas/img/slide/back_default.jpg', 'slideOpcion1', 'vistas/img/slide/producto.png', '{\"top\": \"5%\" ,\"right\": \"15%\" ,\"width\": \"25%\", \"left\":\"\"}', '{\"top\": \"20%\" ,\"right\": \"\" ,\"width\": \"40%\", \"left\":\"10%\"}', '{\"texto\": \"Lorem Ipsum\" ,\"color\": \"#333\"}', '{\"texto\": \"Lorem ipsum dolor sit\" ,\"color\": \"#777\"}', '{\"texto\": \"Lorem ipsum dolor sit\" ,\"color\": \"#888\"}', '<button class=\"btn btn-default backColor text-uppercase\">							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>							</button>', '#', 3, '2020-01-17 21:11:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnico`
--

CREATE TABLE `tecnico` (
  `codTecnico` varchar(11) COLLATE utf8mb4_spanish_ci NOT NULL,
  `codUsuario` int(11) NOT NULL,
  `codArl` int(2) NOT NULL,
  `fecIngreso` date NOT NULL,
  `imgTecnico` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono_persona`
--

CREATE TABLE `telefono_persona` (
  `codTelefono` int(4) NOT NULL,
  `codPersona` varchar(12) COLLATE utf8mb4_spanish_ci NOT NULL,
  `numTelefono` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `telefono_persona`
--

INSERT INTO `telefono_persona` (`codTelefono`, `codPersona`, `numTelefono`) VALUES
(1, '34234432', '71658982'),
(2, '34234432', '64642332');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_catalogo`
--

CREATE TABLE `tipo_catalogo` (
  `codTipCatalogo` int(3) NOT NULL,
  `nomTipCatalogo` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_maquina`
--

CREATE TABLE `tipo_maquina` (
  `codTipMaquina` int(4) NOT NULL,
  `nomTipMaquina` mediumtext COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_maquina`
--

INSERT INTO `tipo_maquina` (`codTipMaquina`, `nomTipMaquina`) VALUES
(1, 'taladrado'),
(2, 'liberty');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `codTipUsuario` int(3) NOT NULL,
  `nomTipUsuario` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipservicio`
--

CREATE TABLE `tipservicio` (
  `codTipServicio` int(3) NOT NULL,
  `nomTipServicio` text COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `codUsuario` int(11) NOT NULL,
  `codTipUsuario` int(3) NOT NULL,
  `emaUsuario` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `conUsuario` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `codEstado` int(2) NOT NULL,
  `codIdioma` varchar(2) COLLATE utf8mb4_spanish_ci NOT NULL,
  `codPersona` varchar(12) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arl`
--
ALTER TABLE `arl`
  ADD PRIMARY KEY (`codArl`);

--
-- Indices de la tabla `cargodependencia`
--
ALTER TABLE `cargodependencia`
  ADD PRIMARY KEY (`codCargo`);

--
-- Indices de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  ADD PRIMARY KEY (`codCatalogo`,`codMarCatalogo`,`codRefCatalogo`,`codTipCatalogo`,`codClaCatalogo`),
  ADD KEY `id_marca_catalogo` (`codMarCatalogo`,`codRefCatalogo`,`codTipCatalogo`,`codClaCatalogo`),
  ADD KEY `id_referencia_catalogo` (`codRefCatalogo`),
  ADD KEY `id_tipo_catalogo` (`codTipCatalogo`),
  ADD KEY `id_clasificacion_catalogo` (`codClaCatalogo`);

--
-- Indices de la tabla `clasificacion_catalogo`
--
ALTER TABLE `clasificacion_catalogo`
  ADD PRIMARY KEY (`codClaCatalogo`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`codDepartamento`);

--
-- Indices de la tabla `detalle_maquina`
--
ALTER TABLE `detalle_maquina`
  ADD PRIMARY KEY (`codDetalle`),
  ADD KEY `id_maquina` (`codMaquina`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`nitEmpresa`);

--
-- Indices de la tabla `empresa_maquina`
--
ALTER TABLE `empresa_maquina`
  ADD PRIMARY KEY (`codMatMaquina`),
  ADD KEY `empresa_maquina_empresa_fk` (`codEmpresa`),
  ADD KEY `empresa_maquina_maquina_fk` (`codMaquina`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`codEstado`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`codEvento`);

--
-- Indices de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD PRIMARY KEY (`codExperiencia`);

--
-- Indices de la tabla `funcionario_empresa`
--
ALTER TABLE `funcionario_empresa`
  ADD PRIMARY KEY (`codFuncionario`,`codUsuario`,`nitEmpresa`),
  ADD KEY `id_persona` (`codUsuario`,`nitEmpresa`),
  ADD KEY `id_empresa` (`nitEmpresa`),
  ADD KEY `funcionario_estado_fk` (`codEstFuncionario`),
  ADD KEY `funcionario_cargo_fk` (`codCargo`);

--
-- Indices de la tabla `galeria_catalogo`
--
ALTER TABLE `galeria_catalogo`
  ADD PRIMARY KEY (`codImagen`),
  ADD KEY `catalogo_galeria` (`codCatalogo`);

--
-- Indices de la tabla `galeria_novedad`
--
ALTER TABLE `galeria_novedad`
  ADD PRIMARY KEY (`codImagen`),
  ADD KEY `novedad_galeria` (`codNovedad`);

--
-- Indices de la tabla `historial_maquina`
--
ALTER TABLE `historial_maquina`
  ADD PRIMARY KEY (`codHisMaquina`),
  ADD KEY `id_maquinaria_historial` (`codMatMaquina`),
  ADD KEY `id_actividad` (`codServicio`);

--
-- Indices de la tabla `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`codIdioma`);

--
-- Indices de la tabla `maquinaria`
--
ALTER TABLE `maquinaria`
  ADD PRIMARY KEY (`codMaquina`),
  ADD KEY `id_marca_maquina` (`codMarca`),
  ADD KEY `id_referencia` (`codReferencia`),
  ADD KEY `id_tipo_maquina` (`codTipMaquina`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`codMarca`);

--
-- Indices de la tabla `marca_catalogo`
--
ALTER TABLE `marca_catalogo`
  ADD PRIMARY KEY (`codMarCatalogo`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`codMunicipio`),
  ADD KEY `id_departamento` (`codDepartamento`);

--
-- Indices de la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codNoticia`);

--
-- Indices de la tabla `novedad`
--
ALTER TABLE `novedad`
  ADD PRIMARY KEY (`codNovedad`);

--
-- Indices de la tabla `perfil_tecnico`
--
ALTER TABLE `perfil_tecnico`
  ADD PRIMARY KEY (`codPerfil`),
  ADD KEY `id_tecnico` (`codTecnico`),
  ADD KEY `id_experiencia_laboral` (`codExperiencia`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`codPersona`),
  ADD KEY `id_municipio` (`codMunicipio`);

--
-- Indices de la tabla `referencia_catalogo`
--
ALTER TABLE `referencia_catalogo`
  ADD PRIMARY KEY (`codRefCatalogo`);

--
-- Indices de la tabla `referencia_maquina`
--
ALTER TABLE `referencia_maquina`
  ADD PRIMARY KEY (`codReferencia`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`codServicio`),
  ADD KEY `tipo_actividad` (`codTipServicio`),
  ADD KEY `id_cliente` (`codFuncionario`),
  ADD KEY `id_tecnico_actividad` (`codTecnico`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tecnico`
--
ALTER TABLE `tecnico`
  ADD PRIMARY KEY (`codTecnico`),
  ADD KEY `id_persona` (`codUsuario`),
  ADD KEY `id_arl` (`codArl`);

--
-- Indices de la tabla `telefono_persona`
--
ALTER TABLE `telefono_persona`
  ADD PRIMARY KEY (`codTelefono`),
  ADD KEY `id_persona` (`codPersona`);

--
-- Indices de la tabla `tipo_catalogo`
--
ALTER TABLE `tipo_catalogo`
  ADD PRIMARY KEY (`codTipCatalogo`);

--
-- Indices de la tabla `tipo_maquina`
--
ALTER TABLE `tipo_maquina`
  ADD PRIMARY KEY (`codTipMaquina`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`codTipUsuario`);

--
-- Indices de la tabla `tipservicio`
--
ALTER TABLE `tipservicio`
  ADD PRIMARY KEY (`codTipServicio`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`codUsuario`),
  ADD KEY `tipo_usuario` (`codTipUsuario`),
  ADD KEY `usuario_estado_fk` (`codEstado`),
  ADD KEY `usuario_idioma_fk` (`codIdioma`),
  ADD KEY `usuario_persona_fk` (`codPersona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `arl`
--
ALTER TABLE `arl`
  MODIFY `codArl` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargodependencia`
--
ALTER TABLE `cargodependencia`
  MODIFY `codCargo` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `catalogo`
--
ALTER TABLE `catalogo`
  MODIFY `codCatalogo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clasificacion_catalogo`
--
ALTER TABLE `clasificacion_catalogo`
  MODIFY `codClaCatalogo` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `detalle_maquina`
--
ALTER TABLE `detalle_maquina`
  MODIFY `codDetalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `codEstado` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `codEvento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  MODIFY `codExperiencia` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `funcionario_empresa`
--
ALTER TABLE `funcionario_empresa`
  MODIFY `codFuncionario` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `galeria_catalogo`
--
ALTER TABLE `galeria_catalogo`
  MODIFY `codImagen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `galeria_novedad`
--
ALTER TABLE `galeria_novedad`
  MODIFY `codImagen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `maquinaria`
--
ALTER TABLE `maquinaria`
  MODIFY `codMaquina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `codMarca` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `marca_catalogo`
--
ALTER TABLE `marca_catalogo`
  MODIFY `codMarCatalogo` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `novedad`
--
ALTER TABLE `novedad`
  MODIFY `codNovedad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `perfil_tecnico`
--
ALTER TABLE `perfil_tecnico`
  MODIFY `codPerfil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `referencia_catalogo`
--
ALTER TABLE `referencia_catalogo`
  MODIFY `codRefCatalogo` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `referencia_maquina`
--
ALTER TABLE `referencia_maquina`
  MODIFY `codReferencia` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `codServicio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `telefono_persona`
--
ALTER TABLE `telefono_persona`
  MODIFY `codTelefono` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_catalogo`
--
ALTER TABLE `tipo_catalogo`
  MODIFY `codTipCatalogo` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_maquina`
--
ALTER TABLE `tipo_maquina`
  MODIFY `codTipMaquina` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `codTipUsuario` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipservicio`
--
ALTER TABLE `tipservicio`
  MODIFY `codTipServicio` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `codUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `catalogo`
--
ALTER TABLE `catalogo`
  ADD CONSTRAINT `catalogo_ibfk_1` FOREIGN KEY (`codMarCatalogo`) REFERENCES `marca_catalogo` (`codMarCatalogo`),
  ADD CONSTRAINT `catalogo_ibfk_2` FOREIGN KEY (`codRefCatalogo`) REFERENCES `referencia_catalogo` (`codRefCatalogo`),
  ADD CONSTRAINT `catalogo_ibfk_3` FOREIGN KEY (`codTipCatalogo`) REFERENCES `tipo_catalogo` (`codTipCatalogo`),
  ADD CONSTRAINT `catalogo_ibfk_4` FOREIGN KEY (`codClaCatalogo`) REFERENCES `clasificacion_catalogo` (`codClaCatalogo`);

--
-- Filtros para la tabla `detalle_maquina`
--
ALTER TABLE `detalle_maquina`
  ADD CONSTRAINT `detalle_maquina_maquina_fk` FOREIGN KEY (`codMaquina`) REFERENCES `maquinaria` (`codMaquina`);

--
-- Filtros para la tabla `empresa_maquina`
--
ALTER TABLE `empresa_maquina`
  ADD CONSTRAINT `empresa_maquina_empresa_fk` FOREIGN KEY (`codEmpresa`) REFERENCES `empresa` (`nitEmpresa`),
  ADD CONSTRAINT `empresa_maquina_maquina` FOREIGN KEY (`codMaquina`) REFERENCES `maquinaria` (`codMaquina`);

--
-- Filtros para la tabla `funcionario_empresa`
--
ALTER TABLE `funcionario_empresa`
  ADD CONSTRAINT `funcionario_cargo_fk` FOREIGN KEY (`codCargo`) REFERENCES `cargodependencia` (`codCargo`),
  ADD CONSTRAINT `funcionario_empresa_ibfk_1` FOREIGN KEY (`nitEmpresa`) REFERENCES `empresa` (`nitEmpresa`),
  ADD CONSTRAINT `funcionario_estado_fk` FOREIGN KEY (`codEstFuncionario`) REFERENCES `estado` (`codEstado`),
  ADD CONSTRAINT `funcionario_usuario_fk` FOREIGN KEY (`codUsuario`) REFERENCES `usuario` (`codUsuario`);

--
-- Filtros para la tabla `galeria_catalogo`
--
ALTER TABLE `galeria_catalogo`
  ADD CONSTRAINT `catalogo_galeria` FOREIGN KEY (`codCatalogo`) REFERENCES `catalogo` (`codCatalogo`);

--
-- Filtros para la tabla `galeria_novedad`
--
ALTER TABLE `galeria_novedad`
  ADD CONSTRAINT `novedad_galeria` FOREIGN KEY (`codNovedad`) REFERENCES `novedad` (`codNovedad`);

--
-- Filtros para la tabla `historial_maquina`
--
ALTER TABLE `historial_maquina`
  ADD CONSTRAINT `historial_maquina_empresa_fk` FOREIGN KEY (`codMatMaquina`) REFERENCES `empresa_maquina` (`codMatMaquina`),
  ADD CONSTRAINT `historial_maquina_ibfk_1` FOREIGN KEY (`codServicio`) REFERENCES `servicio` (`codServicio`);

--
-- Filtros para la tabla `maquinaria`
--
ALTER TABLE `maquinaria`
  ADD CONSTRAINT `maquinaria_ibfk_1` FOREIGN KEY (`codTipMaquina`) REFERENCES `tipo_maquina` (`codTipMaquina`),
  ADD CONSTRAINT `maquinaria_ibfk_2` FOREIGN KEY (`codReferencia`) REFERENCES `referencia_maquina` (`codReferencia`),
  ADD CONSTRAINT `maquinaria_ibfk_3` FOREIGN KEY (`codMarca`) REFERENCES `marca` (`codMarca`);

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`codDepartamento`) REFERENCES `departamento` (`codDepartamento`);

--
-- Filtros para la tabla `perfil_tecnico`
--
ALTER TABLE `perfil_tecnico`
  ADD CONSTRAINT `perfil_tecnico_ibfk_1` FOREIGN KEY (`codTecnico`) REFERENCES `tecnico` (`codTecnico`),
  ADD CONSTRAINT `perfil_tecnico_ibfk_2` FOREIGN KEY (`codExperiencia`) REFERENCES `experiencia_laboral` (`codExperiencia`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`codMunicipio`) REFERENCES `municipio` (`codMunicipio`);

--
-- Filtros para la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD CONSTRAINT `actividad_funcionario_fk` FOREIGN KEY (`codFuncionario`) REFERENCES `funcionario_empresa` (`codFuncionario`),
  ADD CONSTRAINT `servicio_ibfk_1` FOREIGN KEY (`codTipServicio`) REFERENCES `tipservicio` (`codTipServicio`),
  ADD CONSTRAINT `servicio_ibfk_2` FOREIGN KEY (`codTecnico`) REFERENCES `tecnico` (`codTecnico`);

--
-- Filtros para la tabla `tecnico`
--
ALTER TABLE `tecnico`
  ADD CONSTRAINT `tecnico_ibfk_2` FOREIGN KEY (`codArl`) REFERENCES `arl` (`codArl`),
  ADD CONSTRAINT `tecnico_usuario_fk` FOREIGN KEY (`codUsuario`) REFERENCES `usuario` (`codUsuario`);

--
-- Filtros para la tabla `telefono_persona`
--
ALTER TABLE `telefono_persona`
  ADD CONSTRAINT `telefono_persona_ibfk_1` FOREIGN KEY (`codPersona`) REFERENCES `persona` (`codPersona`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_estado_fk` FOREIGN KEY (`codEstado`) REFERENCES `estado` (`codEstado`),
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`codTipUsuario`) REFERENCES `tipo_usuario` (`codTipUsuario`),
  ADD CONSTRAINT `usuario_idioma_fk` FOREIGN KEY (`codIdioma`) REFERENCES `idioma` (`codIdioma`),
  ADD CONSTRAINT `usuario_persona_fk` FOREIGN KEY (`codPersona`) REFERENCES `persona` (`codPersona`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
