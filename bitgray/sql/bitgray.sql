-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2015 a las 06:00:26
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bitgray`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add producto', 7, 'add_producto'),
(20, 'Can change producto', 7, 'change_producto'),
(21, 'Can delete producto', 7, 'delete_producto'),
(22, 'Can add cliente', 8, 'add_cliente'),
(23, 'Can change cliente', 8, 'change_cliente'),
(24, 'Can delete cliente', 8, 'delete_cliente'),
(25, 'Can add sede', 9, 'add_sede'),
(26, 'Can change sede', 9, 'change_sede'),
(27, 'Can delete sede', 9, 'delete_sede'),
(28, 'Can add compra', 10, 'add_compra'),
(29, 'Can change compra', 10, 'change_compra'),
(30, 'Can delete compra', 10, 'delete_compra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$20000$oTvPjjeRiX8r$RVmt9wqckWOxBfhR9QiOaMvaCoMyswTBYnN14RiGabk=', '2015-11-10 04:21:53.529000', 1, 'admin', '', '', 'admin@bitgray.co', 1, 1, '2015-11-10 04:21:10.653000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(8, 'tienda', 'cliente'),
(10, 'tienda', 'compra'),
(7, 'tienda', 'producto'),
(9, 'tienda', 'sede');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2015-11-10 04:19:55.121000'),
(2, 'auth', '0001_initial', '2015-11-10 04:20:05.401000'),
(3, 'admin', '0001_initial', '2015-11-10 04:20:08.309000'),
(4, 'contenttypes', '0002_remove_content_type_name', '2015-11-10 04:20:09.700000'),
(5, 'auth', '0002_alter_permission_name_max_length', '2015-11-10 04:20:11.126000'),
(6, 'auth', '0003_alter_user_email_max_length', '2015-11-10 04:20:12.297000'),
(7, 'auth', '0004_alter_user_username_opts', '2015-11-10 04:20:12.357000'),
(8, 'auth', '0005_alter_user_last_login_null', '2015-11-10 04:20:13.907000'),
(9, 'auth', '0006_require_contenttypes_0002', '2015-11-10 04:20:14.040000'),
(10, 'sessions', '0001_initial', '2015-11-10 04:20:14.763000'),
(11, 'tienda', '0001_initial', '2015-11-10 04:20:22.474000'),
(12, 'tienda', '0002_auto_20151107_2002', '2015-11-10 04:20:23.268000'),
(13, 'tienda', '0003_auto_20151108_0055', '2015-11-10 04:20:23.637000'),
(14, 'tienda', '0004_auto_20151109_2324', '2015-11-10 04:24:21.682000'),
(15, 'tienda', '0005_auto_20151109_2333', '2015-11-10 04:33:58.530000'),
(16, 'tienda', '0006_auto_20151109_2337', '2015-11-10 04:37:36.396000'),
(17, 'tienda', '0007_auto_20151109_2339', '2015-11-10 04:39:13.680000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('dnif2umeziwdh0qnxkirc35r91or5qjc', 'NmVkNWFjZTdmMTcxODM5OGEwYTViOWU3NGNiNDJiMGY1YTA0YTk5Yzp7Il9hdXRoX3VzZXJfaGFzaCI6ImEzOTM2M2E0MmM4ZDY0MjkyNTdhMGQ1NzJhZmJmZTAzZmI0MzM5OGYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-11-24 04:21:53.634000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda_cliente`
--

CREATE TABLE IF NOT EXISTS `tienda_cliente` (
  `id` int(11) NOT NULL,
  `documento` int(11) NOT NULL,
  `nombres` varchar(80) NOT NULL,
  `detalles` longtext
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tienda_cliente`
--

INSERT INTO `tienda_cliente` (`id`, `documento`, `nombres`, `detalles`) VALUES
(1, 123456, 'Arturo Lopez', NULL),
(2, 234567, 'Carlos Rodriguez', NULL),
(3, 345678, 'Daniel Acosta', NULL),
(4, 456789, 'Jason Martinez', NULL),
(5, 567890, 'Felipe Salazar', NULL),
(6, 987654, 'Alejandra Rodriguez', NULL),
(7, 876543, 'Daniela Arias', NULL),
(8, 765432, 'Haroll Cuervo', NULL),
(9, 654321, 'Jenny Perez', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda_compra`
--

CREATE TABLE IF NOT EXISTS `tienda_compra` (
  `id` int(11) NOT NULL,
  `precio` int(11) DEFAULT NULL,
  `descripcion` longtext,
  `fecha` datetime(6) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `sede_id` int(11)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tienda_compra`
--

INSERT INTO `tienda_compra` (`id`, `precio`, `descripcion`, `fecha`, `cliente_id`, `producto_id`, `sede_id`) VALUES
(19, 1000, NULL, '2015-08-01 15:07:30.000000', 1, 2, 1),
(20, NULL, NULL, '2015-08-02 15:07:30.000000', 2, 2, 1),
(21, NULL, NULL, '2015-08-02 15:07:30.000000', 3, 1, 1),
(22, 10000, NULL, '2015-08-03 15:07:30.000000', 4, 4, 2),
(23, NULL, NULL, '2015-08-03 15:07:30.000000', 5, 3, 2),
(24, NULL, NULL, '2015-08-03 15:07:30.000000', 6, 5, 3),
(25, NULL, NULL, '2015-08-03 15:07:30.000000', 7, 1, 1),
(26, 30000, NULL, '2015-08-03 15:07:30.000000', 8, 2, 1),
(27, NULL, NULL, '2015-08-03 15:07:30.000000', 9, 5, 1),
(28, 1000, NULL, '2015-08-03 15:07:30.000000', 2, 4, 2),
(29, NULL, 'dañado', '2015-08-03 15:07:30.000000', 2, 2, NULL),
(30, NULL, NULL, '2015-08-03 15:07:30.000000', 2, 1, NULL),
(31, NULL, NULL, '2015-08-03 15:07:30.000000', 1, NULL, NULL),
(32, NULL, NULL, '2015-08-03 15:07:30.000000', 1, NULL, NULL),
(33, NULL, NULL, '2015-08-03 15:07:30.000000', 1, NULL, NULL),
(34, NULL, NULL, '2015-08-03 15:07:30.000000', 1, NULL, NULL),
(35, 9999, NULL, '2015-08-03 15:07:30.000000', NULL, 3, NULL),
(36, 9999, NULL, '2015-08-03 15:07:30.000000', NULL, 1, NULL),
(37, NULL, NULL, '2015-08-03 15:07:30.000000', NULL, 5, NULL),
(38, NULL, NULL, '2015-08-03 15:07:30.000000', 3, 2, NULL),
(39, 1000, NULL, '2015-08-03 15:07:30.000000', 3, NULL, NULL),
(40, NULL, NULL, '2015-08-03 15:07:30.000000', 4, 2, NULL),
(41, NULL, NULL, '2015-08-03 15:07:30.000000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda_producto`
--

CREATE TABLE IF NOT EXISTS `tienda_producto` (
  `id` int(11) NOT NULL,
  `producto` varchar(40) NOT NULL,
  `precio` int(11) NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tienda_producto`
--

INSERT INTO `tienda_producto` (`id`, `producto`, `precio`, `descripcion`) VALUES
(1, 'Producto1', 100000, 'DProducto1'),
(2, 'Producto2', 32000, 'DProducto2'),
(3, 'Producto3', 2000, 'DProducto3'),
(4, 'Producto4', 30000, 'DProducto4'),
(5, 'Producto5', 140500, 'DProducto5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda_sede`
--

CREATE TABLE IF NOT EXISTS `tienda_sede` (
  `id` int(11) NOT NULL,
  `sede` varchar(40) NOT NULL,
  `direccion` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tienda_sede`
--

INSERT INTO `tienda_sede` (`id`, `sede`, `direccion`) VALUES
(1, 'Sur', 'Cll 1 # 6 23'),
(2, 'Norte', 'Cll 100 # 19 31'),
(3, 'Centro', 'Cll 12 # 4 2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `group_id` (`group_id`,`permission_id`), ADD KEY `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `content_type_id` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`group_id`), ADD KEY `auth_user_groups_group_id_30a071c9_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`permission_id`), ADD KEY `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`), ADD KEY `django_admin__content_type_id_5151027a_fk_django_content_type_id` (`content_type_id`), ADD KEY `django_admin_log_user_id_1c5f563_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indices de la tabla `tienda_cliente`
--
ALTER TABLE `tienda_cliente`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `tienda_cliente_documento_3cc99b5e_uniq` (`documento`);

--
-- Indices de la tabla `tienda_compra`
--
ALTER TABLE `tienda_compra`
  ADD PRIMARY KEY (`id`), ADD KEY `tienda_compra_bb91903a` (`producto_id`), ADD KEY `tienda_compra_0687f864` (`sede_id`), ADD KEY `tienda_compra_cliente_id_5bfa5e40_fk_tienda_cliente_id` (`cliente_id`);

--
-- Indices de la tabla `tienda_producto`
--
ALTER TABLE `tienda_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tienda_sede`
--
ALTER TABLE `tienda_sede`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `tienda_cliente`
--
ALTER TABLE `tienda_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `tienda_compra`
--
ALTER TABLE `tienda_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT de la tabla `tienda_producto`
--
ALTER TABLE `tienda_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tienda_sede`
--
ALTER TABLE `tienda_sede`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
ADD CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `tienda_compra`
--
ALTER TABLE `tienda_compra`
ADD CONSTRAINT `tienda_compra_cliente_id_5bfa5e40_fk_tienda_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `tienda_cliente` (`id`),
ADD CONSTRAINT `tienda_compra_producto_id_2673556d_fk_tienda_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `tienda_producto` (`id`),
ADD CONSTRAINT `tienda_compra_sede_id_5028ed48_fk_tienda_sede_id` FOREIGN KEY (`sede_id`) REFERENCES `tienda_sede` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
