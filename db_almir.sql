-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 22-07-2013 a las 00:15:08
-- Versión del servidor: 5.5.25a
-- Versión de PHP: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `db_almir`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivo`
--

CREATE TABLE IF NOT EXISTS `archivo` (
  `archivo_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `ruta` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`archivo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `archivo`
--

INSERT INTO `archivo` (`archivo_id`, `nombre`, `tipo`, `ruta`) VALUES
(1, 'dddd', '0', 'barra_body1.png'),
(2, 'Otro', '.png', 'C:/Users/Jonas/Desktop/xampp/htdocs/code-web/uploads/barra_enlaces.png'),
(3, 'Pruerbas', '.pdf', 'C:/Users/Jonas/Desktop/xampp/htdocs/code-web/uploads/esquema_paneles.pdf'),
(4, 'Lol', '.pdf', 'C:/Users/Jonas/Desktop/xampp/htdocs/code-web/uploads/Chat_transcript.pdf'),
(5, 'fghfghf', '.pdf', 'C:/Users/Jonas/Desktop/xampp/htdocs/code-web/uploads/archivo/Restaurantes_070113.pdf'),
(6, 'Imagen para galeria', '.png', 'C:/Users/Jonas/Desktop/xampp/htdocs/code-web/uploads/thumb/eusumo.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivo_cliente`
--

CREATE TABLE IF NOT EXISTS `archivo_cliente` (
  `archivo_cliente_id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) NOT NULL,
  `archivo_id` int(11) NOT NULL,
  PRIMARY KEY (`archivo_cliente_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=55 ;

--
-- Volcado de datos para la tabla `archivo_cliente`
--

INSERT INTO `archivo_cliente` (`archivo_cliente_id`, `cliente_id`, `archivo_id`) VALUES
(42, 1, 2),
(43, 2, 1),
(44, 2, 2),
(45, 2, 3),
(46, 5, 1),
(47, 5, 2),
(48, 5, 3),
(49, 6, 1),
(50, 6, 2),
(51, 6, 3),
(52, 6, 4),
(53, 6, 5),
(54, 6, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE IF NOT EXISTS `articulo` (
  `articulo_id` tinyint(100) NOT NULL AUTO_INCREMENT,
  `ref` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `precio` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `familia` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`articulo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`articulo_id`, `ref`, `nombre`, `precio`, `cantidad`, `familia`) VALUES
(1, 'APPTV', 'Apple Tv', '250.65', '2', '1'),
(2, 'IPHN', 'Iphone 5', '456.56', '3', '2'),
(3, 'PER286', 'Samsung G', '325', '2', '3'),
(4, 'ESW3745', 'Nokia Lumia', '255', '3', '4'),
(5, 'APPL45', 'Sony Experia', '567', '3', '3'),
(6, 'ASF334', 'Acer Plus', '540.80', '3', '2'),
(7, 'APPL455', 'Sony Experia Play', '600', '3', '4'),
(8, 'ASF334', 'Acer Plus Ultra', '940.80', '3', '3'),
(9, '0', '0', '0', '0', ''),
(10, '0', '0', '0', '0', ''),
(11, 'WW', 'Flash CC', '2234234', '2', ''),
(12, 'WW', 'Flash CC', '2234234', '2', ''),
(13, 'WW', 'Flash CCC', '2234234', '2', ''),
(14, 'AASSS', 'NOOOTE2', '234', '3', '1'),
(15, 'AASSS', 'NOOOTE2', '234', '3', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cesta`
--

CREATE TABLE IF NOT EXISTS `cesta` (
  `cesta_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `cliente` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `linea_cesta` int(100) NOT NULL,
  `total` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`cesta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('003a70c00dcfbc11f3b48ce0f2eac1f1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363135, ''),
('00e57536e06846aa66de59c8e8c5e633', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361351, 'a:3:{s:9:"user_data";s:0:"";s:7:"usuario";s:5:"jonas";s:8:"login_ok";b:1;}'),
('052b3b92ff844a643ab70143c0014ca1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361284, ''),
('06c3a19bfb3196f1554109f9c3ee48d2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363288, ''),
('0790f0638346623121d02c693d7c2339', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361281, ''),
('07c24cd2b2d26d56de89f90a3c6ecbec', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365710, ''),
('08b057d99840954653ace93e13193290', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370367499, ''),
('08caae5ee17bc5432c07cf8afca12e48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363359, ''),
('0cdaef21e889dfabf23361835776825e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360496, ''),
('0de9b2fcfd619b1ccf738034612a2365', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361417, ''),
('0e23ff3adc198f487dbbf593637e25aa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361646, ''),
('0ea7e4cd6efc4e60de33d123e18c7ad6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363285, 'a:3:{s:9:"user_data";s:0:"";s:7:"usuario";s:5:"jonas";s:8:"login_ok";b:1;}'),
('10a63978d43b8fe96ad814ef19139315', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370366313, ''),
('1118736c20446c7f5cb96ac9d5b768c0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361328, ''),
('122abcc6958bfd979a5d6543cf5665cb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370367515, ''),
('1697adc4dda0d287539886d0c8e6b439', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370367493, ''),
('1c0f941d6cf9bef375a95aa0a32dd5c1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361281, ''),
('1d2f16a35182ea544163e46d5bc3c20e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361322, ''),
('1e3f302e5a5218d84391aca2f906fae4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365962, ''),
('1f7427688536c970485b03b0016d5d5a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361097, ''),
('2079653e3fd7d7facf7e8101ecd31637', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361011, ''),
('21fc625b74589f13fdeebcd2dfde8072', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361419, ''),
('226c65cd3dfd0336c8dfdd3dffe550e8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363452, ''),
('22d6fe57572c03c45bef84464cac8024', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361196, ''),
('237c179c28c04214ec19e626fe7e87a9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370366330, ''),
('27a54b5fc4f7460ad36091c2ef795c13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363276, ''),
('285dee8dd88319c09fc57a740b6a14b0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370367516, ''),
('28abb5b53e322dfcc35262d87832de1b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363075, ''),
('2996ed5ab3b5ad6037f21043bf5ef6d7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363140, ''),
('328fd7308bcd44185c8c2ef9f1db6025', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365990, ''),
('32a0858e2b8181f4e4114ac6567625bb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360419, ''),
('32a5e43115c3ee90fc182ec3dfe3b31c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363126, ''),
('382f83d6d5d12e87f322ba31687179d1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365843, ''),
('3a2f3ec8e21a6fa51595ba49ca987bd8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361352, ''),
('3a41d700b2962b8de3aa5d1aa063888a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363464, 'a:3:{s:9:"user_data";s:0:"";s:7:"usuario";s:5:"jonas";s:8:"login_ok";b:1;}'),
('3a5460c31bee39556843b9792cd35f57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361602, ''),
('3b28a8ad0701685d7ad7b7b35df57f76', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365846, ''),
('3d2172bb715d38cd8e5469f6aa9b275f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360442, ''),
('402a2a686f42433b25d86eb17d7b4cd1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370367304, ''),
('40d539ccd2588dd13b66154846245b5e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365742, ''),
('41dece985cd3f53ab2074d8d079dba40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363139, ''),
('46d6b91c4793fb2d2201fbc094b61e2f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361688, 'a:1:{s:9:"user_data";s:0:"";}'),
('49ce958761d2ea8df39db0bcb8638578', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363467, ''),
('4b143611cbd28a47583e0f2755727ec7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363448, ''),
('4e97791cea5b27670dca8364cdd0a9c7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365725, ''),
('4f6759cddbccb6ca5a7a52b075248547', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360366, ''),
('511be01ea7fa7eb6a75606ab07007b95', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363134, 'a:3:{s:9:"user_data";s:0:"";s:7:"usuario";s:5:"jonas";s:8:"login_ok";b:1;}'),
('518716cf638d168dc4db0b74ea77657a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361329, ''),
('539858241e0e3f45f2ec4dd8a5601f1a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361281, 'a:3:{s:9:"user_data";s:0:"";s:7:"usuario";s:5:"jonas";s:8:"login_ok";b:1;}'),
('53e25602153a5f5b06dd07ccfb25b397', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370366341, ''),
('57fdc5cd94dc14182eac234c90029964', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361129, ''),
('5850f197e90b8e351d46da81a4a68164', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365699, ''),
('58eb28b8721c0a66bd8110c8c0a5dcc5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370367509, ''),
('5a0d0fd3e6df98eac10d3deb80d04873', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361595, 'a:3:{s:9:"user_data";s:0:"";s:7:"usuario";s:5:"jonas";s:8:"login_ok";b:1;}'),
('5ad17712e90815c9d2f79e702cc2804d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360331, ''),
('5ad28e8a038db343558f455c20360ade', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361012, ''),
('5bae7cd664718b99adf5f058b432421b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361326, ''),
('5c5675230165af75cf75b62d6628d6ba', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363465, ''),
('5d31e54fa64405789e5a82565ca31084', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360744, 'a:2:{s:9:"user_data";s:0:"";s:15:"flash:new:error";s:46:"El usuario o contraseña son incorrectos lala.";}'),
('5ea23663a4a589e2428e4d0c911d9f3f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365744, ''),
('5eb778af7de4f93100ae4844ea31178b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361636, ''),
('5f1240fc56255b943e11e975d3bfef4b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361609, ''),
('5faca5f43b3943774b9211ecfd6f277d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361126, 'a:3:{s:9:"user_data";s:0:"";s:7:"usuario";s:5:"jonas";s:8:"login_ok";b:1;}'),
('60580aec1616a26d845078de9abfa405', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365987, ''),
('66280a774ebeec03260edf8bc7f8b949', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360379, ''),
('6b528b07e08d0899b1ea7b3a5236812f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360620, 'a:2:{s:9:"user_data";s:0:"";s:15:"flash:new:error";s:46:"El usuario o contraseña son incorrectos lala.";}'),
('6f133b5a693a8da4a754eb1dafe038fd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370367262, ''),
('70fdec380f7d25ec4a3a867884d8e5e0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365988, ''),
('7234af9fbbad6a6a4a73985739d2d367', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370367261, ''),
('73003945d274ebb860b9642bfcca682e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370366316, ''),
('750fd67cdd2d3c83b4aebe987f7bd711', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360423, ''),
('769f1032d3b00ebb91724ea41b84f289', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365680, ''),
('78386e645814223d863859fbef711618', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370366338, ''),
('7c1ea9698c99a31fa4f5dfe68b9188cc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361649, ''),
('7e461fb31e62085ed1d1c492ef2e9b2f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361193, ''),
('809eb23cdbd5ca1732f5faa3e9a354a1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363344, ''),
('83d4dc51854cb919b51dddc725217b0d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360422, ''),
('85906cadb5536ff6d5cdff0f870d5642', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361005, ''),
('85d708dd7834a4cd92c0c63340bf5d9b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365769, ''),
('8620e170c5418c61aa444ca6c2662a6f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370367303, ''),
('89bd7d307959aa1d091f3b9277b39203', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363172, ''),
('8a4c6419ce140cbcba398553ce0ddc68', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365772, ''),
('8a67b79cdbb9ee30cd7df145754e49ea', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365959, ''),
('8bd38da7974ab6f32232eb78028bdb38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361412, ''),
('8ce37d2aca3f7d691ed35f513638daca', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361323, ''),
('8d8253c00c5aafa769b5844d0487f53f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363286, ''),
('8ea07fbfecb12ed79f8d6f1a9f8441e5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361047, ''),
('8feffe1b6f77c2a133562403d2b7fa2b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361654, ''),
('90d567581ed3922c99c540edcf054935', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370366317, ''),
('94ad82ca526586840f5a61e45281b968', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361150, ''),
('962a8df5c649f62a49e2518065e69a09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360745, ''),
('96a5cea776dff5a9fa668b681cf99d40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370367303, ''),
('96d8b6cee812ea47720668d1dcb92dce', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365741, 'a:3:{s:9:"user_data";s:0:"";s:7:"usuario";s:5:"jonas";s:8:"login_ok";b:1;}'),
('992ea15caeece5103eecf07a06743cc3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361331, ''),
('9a6b8bf7df4ebd370111c6209c184506', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361205, ''),
('9a95aded7ed581c3a2c9d8080b21b294', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360442, ''),
('9bbbbf20cd6549171bbe33ea4bd108d7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360621, ''),
('9c3b9b8986b3f85dac9a3f992bd710b7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365692, ''),
('9d29e2ba59d8834021252c5aa2d1112b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361040, ''),
('9f02bcfcf2c700033274751d7a02ee6b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361270, ''),
('9ff198f857cd85ab233b470992c748b7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365727, ''),
('a54af8ba317c2ea9f34141d4586e1869', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360738, ''),
('a5a7f943d4a7c8ed346fcf4bcc7a6234', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361646, 'a:3:{s:9:"user_data";s:0:"";s:7:"usuario";s:5:"jonas";s:8:"login_ok";b:1;}'),
('a686a728df8c6b9c2732f165cc6989a5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361343, ''),
('aba19c4bc6ac1a5aa5555e3250458f13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370367492, ''),
('ac2677ec1a6ec8a4ba893c16399aafd4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360419, ''),
('afb49e2ee257e7cfc92e76aa472aeccf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370367303, ''),
('afc7ce8858ab057a3790b2645b2140ba', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360366, ''),
('b4663cdb7d048484aad094bd6ab18e60', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360375, ''),
('b4b822e63ca11613eb21bedf7d24533f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363449, ''),
('b551be2927e69d277f91ded7d2e125fa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365724, ''),
('bd37d0be9f778fd7def06cf205a4b902', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361106, ''),
('c2e5838155c72254b2844af989f6113d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360379, ''),
('c899a120a6d35a879e99be249a5c6fd2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363472, ''),
('ccaf595c02fb8162d0c154f5d34073b6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363347, ''),
('cd1b0988b045c9da538eff2c27a2bcfb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363171, ''),
('ce0ab95dbcece20a955bbdd0adb393ae', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365731, ''),
('cf98ba6c8eda2bbaf17905ec2d1043d2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363443, ''),
('d1a6b5c2da2f05879c5911562fcfd3a3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360510, ''),
('d1f6a42c739c97e27cfd3904bf350c41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365770, ''),
('d2caa4d7cf07b9925d8b3043ee8e51c3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370366329, 'a:3:{s:9:"user_data";s:0:"";s:7:"usuario";s:5:"jonas";s:8:"login_ok";b:1;}'),
('d4180ff7750d841bced94c5bc9c4a053', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363174, ''),
('d5ad5e748981b7cc57f0adc895d11c83', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363343, 'a:3:{s:9:"user_data";s:0:"";s:7:"usuario";s:5:"jonas";s:8:"login_ok";b:1;}'),
('d61d58e2976eb34743ceb50d34dcbe17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370366332, ''),
('da81ee52394b4c242d701ea41a25bcca', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363066, ''),
('dc3b6d128461b5ec2b14b9042e0af701', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360558, ''),
('dde77ccba6ab3a30113685e592aa62c6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361354, ''),
('dec2d5528e3e62734645a1283b42c200', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360331, ''),
('e0319d1ffd60298f8f2ba1abcc8f6aea', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361599, ''),
('e06ca1d91e8dcb32e245e5f842a82bc3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360610, ''),
('ebbf6b43a5f0f57a71605e92e1d75ae7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370366312, ''),
('ed1acdee5905cbdb33ea1707bfd61804', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360446, ''),
('ed5d2ee5885ede1302b24a06a049b429', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363268, ''),
('edb36488c91fe3fedeebd8193d152aa7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361596, ''),
('ee03e8e0217fa85f337bcba2595dec18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365842, ''),
('f08f14bae9e67a03b742348f3a41e359', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360375, ''),
('f32cea0baae1de1eb4f094a8110dcdd0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370365960, ''),
('f3d2c23c6556be8b89cad415d099fce9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370361127, ''),
('f412b7baaa7def4826d5fe69329eee75', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363138, ''),
('f4a55da61f0039df6eed4531730b2d3d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370367508, 'a:3:{s:9:"user_data";s:0:"";s:7:"usuario";s:5:"jonas";s:8:"login_ok";b:1;}'),
('f5384b054d4dd12f1e728b688f146f25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363455, ''),
('f91988cbf4aa5b6030e9d6826eb8d22a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360810, ''),
('f93c2532d76b8e2b98938592c8c3a472', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360366, ''),
('f9ed60bbdefb5a00a73ade11d207619a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370366339, ''),
('fa6e6e4c99dfd3babc9bd4846762a621', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370363143, ''),
('facdf39d0eb60de24995984d742a3a9d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko', 1370360379, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `cliente_id` tinyint(100) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `mail` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `pass` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `movil` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `sexo` int(11) NOT NULL,
  `activo` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `admin` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_alta` int(11) NOT NULL,
  `desc` longtext COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`cliente_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cliente_id`, `nombre`, `apellido`, `mail`, `pass`, `movil`, `edad`, `sexo`, `activo`, `admin`, `fecha_alta`, `desc`) VALUES
(1, 'Jonas', '', 'tecnico@meigasoft.es', '27011983', 0, 0, 0, '', '', 0, ''),
(2, 'Paula', '', 'jonasgr@jonasgr.com.es', '27011983', 0, 0, 0, '', '', 0, ''),
(3, 'Papa Juan', 'df', 'dfdfdfddf', '1234', 600007777, 0, 0, '1', '0', 0, ''),
(4, 'Emilio ', 'Botin', 'dfdfdfddf', '1234', 600007777, 0, 0, '1', '0', 0, ''),
(5, 'Sandro', 'Rosell', 'dfdfdfddf', '1234', 600007777, 0, 0, '1', '0', 0, ''),
(6, 'Roland', 'Macdonal', '345634534534534', '345345345345', 34345345, 0, 0, '1', '0', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familia`
--

CREATE TABLE IF NOT EXISTS `familia` (
  `familia_id` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `padre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `nivel` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`familia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `familia`
--

INSERT INTO `familia` (`familia_id`, `nombre`, `padre`, `nivel`) VALUES
('1', 'Movil', '', '0'),
('10', 'Soft', '', '0'),
('2', 'Media', '', '0'),
('3', 'Tablet', '', '0'),
('4', 'Bases', '', '0'),
('9', 'Itunes', '', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE IF NOT EXISTS `galeria` (
  `galeria_id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_id` int(11) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`galeria_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`galeria_id`, `categoria_id`, `nombre`, `descripcion`) VALUES
(3, 0, 'Galeria prueba ', ''),
(4, 0, 'Galeria antojos', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linea_cesta`
--

CREATE TABLE IF NOT EXISTS `linea_cesta` (
  `linea_cesta_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `articulo_id` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `articulo_nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `articulo_precio` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `articulo_cantidad` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`linea_cesta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `thumb`
--

CREATE TABLE IF NOT EXISTS `thumb` (
  `thumb_id` int(11) NOT NULL AUTO_INCREMENT,
  `galeria_id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `ruta` longtext COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `desc` longtext COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`thumb_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=69 ;

--
-- Volcado de datos para la tabla `thumb`
--

INSERT INTO `thumb` (`thumb_id`, `galeria_id`, `nombre`, `ruta`, `tipo`, `desc`) VALUES
(60, 0, '0', 'http://localhost/code-web/uploads/thumb/24_12.jpg', '.jpg', ''),
(61, 0, '0', 'http://localhost/code-web/uploads/thumb/Boda_Ana_y_Daniel_3_074_13.jpg', '.jpg', ''),
(62, 0, '0', 'http://localhost/code-web/uploads/thumb/Boda_Ana_y_Daniel_3_074_14.jpg', '.jpg', ''),
(63, 0, '0', 'http://localhost/code-web/uploads/thumb/Boda_Ana_y_Daniel_3_074_15.jpg', '.jpg', ''),
(64, 0, '0', 'http://localhost/code-web/uploads/thumb/Boda_Ana_y_Daniel_3_074_16.jpg', '.jpg', ''),
(65, 3, '0', 'http://localhost/code-web/uploads/thumb/13_1.jpg', '.jpg', ''),
(66, 0, '0', 'http://localhost/code-web/uploads/thumb/24_13.jpg', '.jpg', ''),
(67, 0, '0', 'http://localhost/code-web/uploads/thumb/13_13.jpg', '.jpg', ''),
(68, 0, '0', 'http://localhost/code-web/uploads/thumb/Boda_Ana_y_Daniel_3_074_17.jpg', '.jpg', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usuario_id` tinyint(100) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `mail` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `pass` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
