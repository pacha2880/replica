-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.17-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para awaforo
CREATE DATABASE IF NOT EXISTS `awaforo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `awaforo`;

-- Volcando estructura para tabla awaforo.account_emailaddress
CREATE TABLE IF NOT EXISTS `account_emailaddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `account_emailaddress_user_id_2c513194_fk_app_user_id` (`user_id`),
  CONSTRAINT `account_emailaddress_user_id_2c513194_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.account_emailaddress: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `account_emailaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_emailaddress` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.account_emailconfirmation
CREATE TABLE IF NOT EXISTS `account_emailconfirmation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`),
  KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`),
  CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.account_emailconfirmation: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `account_emailconfirmation` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_emailconfirmation` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.app_comment
CREATE TABLE IF NOT EXISTS `app_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_comment_post_id_9ffeaa47_fk_app_post_id` (`post_id`),
  KEY `app_comment_user_id_693f46cc_fk_app_user_id` (`user_id`),
  CONSTRAINT `app_comment_post_id_9ffeaa47_fk_app_post_id` FOREIGN KEY (`post_id`) REFERENCES `app_post` (`id`),
  CONSTRAINT `app_comment_user_id_693f46cc_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.app_comment: ~29 rows (aproximadamente)
/*!40000 ALTER TABLE `app_comment` DISABLE KEYS */;
INSERT INTO `app_comment` (`id`, `timestamp`, `content`, `post_id`, `user_id`) VALUES
	(10, '2021-04-22 13:34:18.343326', 'Hola me agrada que creen un grupo', 8, 4),
	(12, '2021-04-22 13:50:28.321022', 'Si cierto like', 8, 1),
	(13, '2021-04-30 13:06:22.218711', 'Creo que en realidad es especulaciones del gobierno no existe el cambio climatico.', 10, 11),
	(14, '2021-04-30 13:29:13.884010', 'Porque se creen los mejores en el juego y nel.', 11, 8),
	(15, '2021-04-30 13:29:52.324536', 'Pienso que es demasiado tardio a la hora de una consulta.', 14, 8),
	(16, '2021-04-30 13:30:29.613445', 'El cañon de fotones es una realidad ya se logra tener pruebas desde japon.', 17, 8),
	(17, '2021-04-30 13:31:36.451379', 'Y tambien cobran las consultas que en si deberian ser gratis.', 14, 9),
	(18, '2021-04-30 13:32:14.533904', 'Puede que la fuente de poder no este energizando correctamente.', 20, 9),
	(19, '2021-04-30 13:33:20.740095', 'No podemos darle credito el mark 3 es mas pequeño.', 18, 10),
	(20, '2021-04-30 13:34:13.676483', 'No creo que ironman pueda ser mejor que el cap.', 16, 11),
	(21, '2021-04-30 13:35:19.049201', 'Creo que woody no tenia ya na mas que hacer con Boony por eso creo que fue mejor que se quede con su wafle.', 19, 11),
	(22, '2021-04-30 13:36:45.169110', 'Pienso que fueron los del mismo gobierno, porque realizo movimientos en contra de ellos.', 12, 6),
	(23, '2021-04-30 13:37:27.135074', 'En realidad el aumento de la contaminacion es una realidad que podemos verla en cada pais, no creo que esto sea una invension del gobierno.', 10, 6),
	(24, '2021-04-30 13:37:57.950075', 'Puede que el cable de energia este dañado', 20, 6),
	(25, '2021-04-30 13:38:47.814034', 'Porque existimos', 8, 5),
	(26, '2021-04-30 13:39:09.045149', 'Siempre y toda la vida sera Michael Jordan', 13, 5),
	(27, '2021-04-30 13:39:41.244301', 'A veces tenemos que agacharnos para escuchar a las personas', 15, 5),
	(28, '2021-04-30 13:40:38.458937', 'Ironman toda la vida.', 16, 5),
	(29, '2021-04-30 13:41:24.844226', 'El mark3 esta bien equipado por eso creo que podria ser mejor en ese aspecto', 18, 5),
	(30, '2021-04-30 13:41:49.659317', 'Como es posible que un juguete sea creado de la nada y tenga vida??????', 19, 5),
	(31, '2021-04-30 13:42:17.415539', 'El triste, esa cancion me pone triste XD', 21, 5),
	(32, '2021-04-30 13:43:15.588195', 'Pero tambien los misiles balisticos intercontinentales son una hostia', 17, 4),
	(33, '2021-04-30 13:44:01.973894', 'Pienso que debio ocurrir lo mismo sobre el tema de darles vida en la fabrica, debieron estar asustados', 19, 4),
	(34, '2021-04-30 13:52:09.281849', 'Lo que no fue no sera, T.T', 21, 4),
	(35, '2021-04-30 13:53:15.926489', 'Sin duda alguna entra Magi Jhonson', 13, 3),
	(36, '2021-04-30 13:53:42.881415', 'Tardan hasta en entregarte medicamento.', 14, 3),
	(37, '2021-04-30 13:54:23.953370', 'Porque sus palas creen que pueden hacer todo el trabajo', 11, 2),
	(38, '2021-04-30 13:55:57.103722', 'Incluso la quema de bosques importantes del planeta ocasionan no solo una reduccion de oxigeno para el planeta sino tambien contaminacion.', 10, 2),
	(39, '2021-04-30 13:56:59.052089', 'En respecto a lo medico el tiempo de vida dicen que es mas corto para las personas altas porque tambien tienden a tener fallos en el corazon', 15, 2);
/*!40000 ALTER TABLE `app_comment` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.app_contacto
CREATE TABLE IF NOT EXISTS `app_contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(254) NOT NULL,
  `telefono` int(11) NOT NULL,
  `tipo_consulta` int(11) NOT NULL,
  `mensaje` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.app_contacto: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `app_contacto` DISABLE KEYS */;
INSERT INTO `app_contacto` (`id`, `nombre`, `correo`, `telefono`, `tipo_consulta`, `mensaje`) VALUES
	(1, 'Jose Callejon', 'jose@mail.com', 7885412, 0, 'Solicito un usuario para ingresar al foro'),
	(2, 'Jose', 'jose@mail.com', 7885412, 2, 'no me deja resgitrarme');
/*!40000 ALTER TABLE `app_contacto` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.app_grupo
CREATE TABLE IF NOT EXISTS `app_grupo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.app_grupo: ~17 rows (aproximadamente)
/*!40000 ALTER TABLE `app_grupo` DISABLE KEYS */;
INSERT INTO `app_grupo` (`id`, `nombre`, `descripcion`) VALUES
	(20, 'Foro sobre adoradores de Murkis', 'En este foro hablaremos de los murkis de wow (World of warcraft)'),
	(21, 'chovis', 'son chovis'),
	(22, 'Joel', 'Jhosua'),
	(23, 'Hell Satan', 'Grupo de discusion sobre los simpson y la banda hellsatans'),
	(24, 'Grupo de Green Peas', 'En este grupo hablaremos sobre que piensas del cambio climatico que existe en nuestro planeta.\r\nSe puede prevenir o no?'),
	(25, 'Salutes', 'En este grupo conformara los foros de todo sobre temas de salud'),
	(26, 'La horda', 'Porque somos la horda'),
	(27, 'Admiradores de los Beatles', 'porque son los beatles'),
	(28, 'Grupo de Basketball', 'Trataremos temas de basquet desde noticias hasta dream team'),
	(29, 'Hospitales', 'Grupo donde hablaremos sobre los problemas que conlleva la salud publica y privada.'),
	(30, 'Personas Altas', 'Grupo de personas altas'),
	(31, 'Los Vengadores', 'Los heroes mas poderosos del planeta UNIDOS'),
	(32, 'Tecnológicos Eruditos', 'Grupo de ñoños electronicos'),
	(33, 'Stark Industries', 'Empresa de armas'),
	(34, 'JoseJose', 'somos jose jose'),
	(35, 'Disney World', 'Somos disney somos legion'),
	(36, 'Mantenimiento de Computadoras', 'Grupo de tecnicos');
/*!40000 ALTER TABLE `app_grupo` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.app_like
CREATE TABLE IF NOT EXISTS `app_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comentario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_like_user_id_7eba102b_fk_app_user_id` (`user_id`),
  KEY `app_like_comentario_id_408d251c_fk_app_comment_id` (`comentario_id`),
  CONSTRAINT `app_like_comentario_id_408d251c_fk_app_comment_id` FOREIGN KEY (`comentario_id`) REFERENCES `app_comment` (`id`),
  CONSTRAINT `app_like_user_id_7eba102b_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.app_like: ~35 rows (aproximadamente)
/*!40000 ALTER TABLE `app_like` DISABLE KEYS */;
INSERT INTO `app_like` (`id`, `user_id`, `comentario_id`) VALUES
	(9, 4, 30),
	(10, 4, 21),
	(11, 4, 31),
	(12, 3, 26),
	(13, 3, 17),
	(14, 2, 14),
	(15, 2, 23),
	(16, 2, 27),
	(17, 4, 12),
	(18, 4, 16),
	(19, 5, 12),
	(20, 5, 35),
	(21, 5, 39),
	(22, 5, 33),
	(23, 6, 38),
	(24, 6, 18),
	(25, 8, 37),
	(26, 8, 36),
	(27, 8, 32),
	(28, 8, 21),
	(29, 8, 18),
	(30, 8, 31),
	(31, 8, 34),
	(32, 9, 17),
	(33, 9, 36),
	(34, 9, 28),
	(35, 9, 19),
	(36, 9, 32),
	(37, 9, 24),
	(38, 10, 35),
	(39, 10, 17),
	(40, 10, 27),
	(41, 11, 14),
	(42, 11, 22),
	(43, 11, 30);
/*!40000 ALTER TABLE `app_like` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.app_post
CREATE TABLE IF NOT EXISTS `app_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `contenido` longtext NOT NULL,
  `category` varchar(50) NOT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  `publish_date` datetime(6) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `gru_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_post_author_id_87e1d289_fk_app_user_id` (`author_id`),
  KEY `app_post_gru_id_6f44520a_fk_app_grupo_id` (`gru_id`),
  CONSTRAINT `app_post_author_id_87e1d289_fk_app_user_id` FOREIGN KEY (`author_id`) REFERENCES `app_user` (`id`),
  CONSTRAINT `app_post_gru_id_6f44520a_fk_app_grupo_id` FOREIGN KEY (`gru_id`) REFERENCES `app_grupo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.app_post: ~14 rows (aproximadamente)
/*!40000 ALTER TABLE `app_post` DISABLE KEYS */;
INSERT INTO `app_post` (`id`, `title`, `contenido`, `category`, `thumbnail`, `publish_date`, `last_update`, `author_id`, `gru_id`) VALUES
	(8, 'Foro de conversacion de los chovis', 'hablaremos sobre choverias', 'varios', '', '2021-04-22 13:33:46.961226', '2021-04-22 13:33:46.961226', 4, 21),
	(9, 'Blog 3', 'dddddd', 'Juegos', '', '2021-04-22 13:44:01.484090', '2021-04-22 13:44:01.484090', 4, 21),
	(10, 'Foro sobre el cambio climatico', 'En este foro hablaremos sobre las consecuencias del CO2, efecto invernadero y varios factores que afecta nuestro planeta', 'Medio Ambiente', '', '2021-04-30 13:00:38.130428', '2021-04-30 13:00:38.130428', 11, 24),
	(11, 'Foro de conversacion porque odiamos a los Alis', 'En este foro daremos nuestra opinion de como los alianzas estan destruyendo nuestro juego de Wow', 'videojuegos', '', '2021-04-30 13:01:46.637248', '2021-04-30 13:01:46.637248', 11, 26),
	(12, 'Foro sobre especulaciones de quien mato a Jhon Lenon', 'Podemos creer que solo una persona implicada por esto pero en realidad hablaremos sobre quien estaba detras de todo', 'Conspiracion', '', '2021-04-30 13:05:30.071313', '2021-04-30 13:05:30.071313', 11, 27),
	(13, 'Foro de conversacion "Quien es el mejor jugador de Basketball"', 'Quien cree que por meritos, votos, categoria, mejores jugadas, etc puede ser el mejor jugador de la NBA', 'deportes', '', '2021-04-30 13:12:04.932890', '2021-04-30 13:12:04.932890', 10, 28),
	(14, 'Foro sobre la atencion en el hospital Vietma', 'Que opinan sobre la atencion que el hospital brinda a todo el publico en casos normales o de emergencias.', 'salud', '', '2021-04-30 13:13:25.294365', '2021-04-30 13:13:25.294365', 10, 29),
	(15, 'Foro sobre problemas de personas altas', 'Que inconveniente le vemos a ser altos, desde un problema cotidiano hasta un problema de salud', 'Social', '', '2021-04-30 13:14:45.757848', '2021-04-30 13:14:45.757848', 10, 30),
	(16, 'Foro sobre Ironman', 'Porque ironman es mejor que capitan america', 'Civil War', '', '2021-04-30 13:19:23.512705', '2021-04-30 13:19:23.512705', 9, 31),
	(17, 'Foro sobre revolucion de armas de stark industries', 'Hablemos de como las armas pueden ser revolucionarias a la hora de implementarlas', 'Armas', '', '2021-04-30 13:20:18.515446', '2021-04-30 13:20:18.515446', 9, 33),
	(18, 'Foro sobre el Mark 3', 'El mark 3 puede llegar a ser mejor que el Hulk Buster', 'Tecnologia', '', '2021-04-30 13:22:10.931136', '2021-04-30 13:22:10.931136', 9, 32),
	(19, 'Foro de conversacion sobre Toy storie 4', 'Desde la aparicion de Fruky Hasta porque abandonaron a Woody', 'Peliculas', '', '2021-04-30 13:27:14.502189', '2021-04-30 13:27:14.502189', 8, 35),
	(20, 'Foro sobre Apagones en computadoras repentinos', 'Porque mi maquina siempre tiende a apagarse en momentos menos oportunos', 'Tecnologia', '', '2021-04-30 13:28:09.420188', '2021-04-30 13:28:09.420188', 8, 36),
	(21, 'Foro sobre mejores canciones de Jose Jose', 'Cual creen que impulso su carrera', 'Musica', '', '2021-04-30 13:28:38.748755', '2021-04-30 13:28:38.748755', 8, 34);
/*!40000 ALTER TABLE `app_post` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.app_postview
CREATE TABLE IF NOT EXISTS `app_postview` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime(6) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_postview_post_id_272dcdd2_fk_app_post_id` (`post_id`),
  KEY `app_postview_user_id_64acb23e_fk_app_user_id` (`user_id`),
  CONSTRAINT `app_postview_post_id_272dcdd2_fk_app_post_id` FOREIGN KEY (`post_id`) REFERENCES `app_post` (`id`),
  CONSTRAINT `app_postview_user_id_64acb23e_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.app_postview: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `app_postview` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_postview` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.app_user
CREATE TABLE IF NOT EXISTS `app_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.app_user: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$216000$ld2rtgggLmji$k6ySxvkpEsJ3paJ+yolvOfy4rXUav86SQovxXyZbitI=', '2021-04-30 12:33:30.919228', 1, 'admin', 'Geovanny', '', 'admin@mail.com', 1, 1, '2021-04-14 20:51:26.000000'),
	(2, 'pbkdf2_sha256$216000$qOWX87S2EJjg$lr5rbA0QUvT635GO1Ok3MXQbHWjYdK+eQG+rvURiiPk=', '2021-04-30 13:54:01.452152', 0, 'geovanny2021', 'Geovanny', 'Encinas', 'geoenci@gmail.com', 0, 1, '2021-04-15 14:18:01.633366'),
	(3, 'pbkdf2_sha256$216000$PSDzzuJkjau0$6jON/peAn7POHjJMaG0lgyeINeMc1bLx3JjbaRYhnzc=', '2021-04-30 13:52:39.345366', 0, 'persona1', 'jhon', 'doe', 'jhonDoe@mail.com', 0, 1, '2021-04-15 16:07:55.464836'),
	(4, 'pbkdf2_sha256$216000$hbE8msTCv52j$P1F/Fhv1C1XImRhRyM5nS/IHUUPiMuqOG4vQiSNQ0lY=', '2021-04-30 13:57:19.164193', 0, 'asase', 'Sergio', 'Orgas', 'sergio@mail.com', 0, 1, '2021-04-21 18:44:38.678653'),
	(5, 'pbkdf2_sha256$216000$kaMPMaNRZc9O$oYYq10IC37uZ1zep8gmCZMaqPJv3UlrGEUYXXPTWJKw=', '2021-04-30 13:58:13.203934', 0, 'jreddy', 'freddy', 'delgadillo', 'freddy@mail.com', 0, 1, '2021-04-21 18:49:02.209891'),
	(6, 'pbkdf2_sha256$216000$1zWDf6L6NCB2$Jx/r6Ohx+BRxHJ+lwuASVewrVwv4TDskyvAqat5pKwE=', '2021-04-30 13:59:33.227252', 0, 'chovis', 'Geovanna', 'Ruth', 'geovana@mail.com', 0, 1, '2021-04-30 12:41:55.568488'),
	(7, 'pbkdf2_sha256$216000$nSeOe1kml9e2$c+AlGQ/SYIgO1XHdRNvAmaX52bzyF3s8EKO7NfP03KM=', '2021-04-30 14:00:11.751095', 0, 'Argus', 'Norman', 'Quezada', 'Norman@hotmail.com', 0, 1, '2021-04-30 12:46:04.159812'),
	(8, 'pbkdf2_sha256$216000$cH8P9SfUw5jb$AF411LUh0DrxAmLa0OtVRdpeytIuNbYeznOA+0lPxvA=', '2021-04-30 14:00:25.002547', 0, 'Driller', 'Marcos', 'Jhonson', 'Drill@gmail.com', 0, 1, '2021-04-30 12:47:04.968808'),
	(9, 'pbkdf2_sha256$216000$yK0tRtVJCXwT$V8SoeODBkXiwpIEufN5RDDvCNYhFmoVWC3QVp7iaeLs=', '2021-04-30 14:01:26.249739', 0, 'Stark987', 'Tony', 'Lanister', 'Stark@mail.com', 0, 1, '2021-04-30 12:48:14.194814'),
	(10, 'pbkdf2_sha256$216000$eQAYf2HwKfwm$0FKee/9SQGZ1/AGZ8elMlOXa7yxjr5O65QIR0T6Yzz0=', '2021-04-30 14:02:23.706263', 0, 'Magic1994', 'Dwanje', 'Jhonson', 'Magico@mail.com', 0, 1, '2021-04-30 12:49:05.857113'),
	(11, 'pbkdf2_sha256$216000$YMnvAE107UGB$ROdR8HNpOSPp5046E+0AJWCEqhIp1aKsqFmLYkt4f6g=', '2021-04-30 14:03:02.538208', 0, 'Artemis', 'Chistina', 'Boza', 'Artemis@mail.com', 0, 1, '2021-04-30 12:50:03.127172');
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.app_usergrupo
CREATE TABLE IF NOT EXISTS `app_usergrupo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo_id` int(11) NOT NULL,
  `integrante_id` int(11) NOT NULL,
  `lider` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_usergrupo_grupo_id_dcc6d4da_fk_app_grupo_id` (`grupo_id`),
  KEY `app_usergrupo_integrante_id_7b485416_fk_app_user_id` (`integrante_id`),
  CONSTRAINT `app_usergrupo_grupo_id_dcc6d4da_fk_app_grupo_id` FOREIGN KEY (`grupo_id`) REFERENCES `app_grupo` (`id`),
  CONSTRAINT `app_usergrupo_integrante_id_7b485416_fk_app_user_id` FOREIGN KEY (`integrante_id`) REFERENCES `app_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.app_usergrupo: ~44 rows (aproximadamente)
/*!40000 ALTER TABLE `app_usergrupo` DISABLE KEYS */;
INSERT INTO `app_usergrupo` (`id`, `grupo_id`, `integrante_id`, `lider`) VALUES
	(2, 20, 4, 1),
	(3, 21, 4, 1),
	(4, 22, 4, 1),
	(5, 23, 2, 1),
	(6, 21, 5, 0),
	(7, 24, 11, 1),
	(8, 25, 11, 1),
	(9, 26, 11, 1),
	(10, 27, 11, 1),
	(11, 26, 2, 0),
	(12, 24, 2, 0),
	(13, 27, 6, 0),
	(14, 25, 6, 0),
	(15, 24, 6, 0),
	(16, 26, 8, 0),
	(17, 28, 10, 1),
	(18, 29, 10, 1),
	(19, 30, 10, 1),
	(20, 30, 2, 0),
	(21, 28, 3, 0),
	(22, 29, 3, 0),
	(23, 30, 5, 0),
	(24, 28, 5, 0),
	(25, 29, 9, 0),
	(26, 29, 8, 0),
	(27, 31, 9, 1),
	(28, 32, 9, 1),
	(29, 33, 9, 1),
	(30, 33, 4, 0),
	(31, 32, 5, 0),
	(32, 31, 5, 0),
	(33, 31, 11, 0),
	(34, 32, 10, 0),
	(35, 33, 8, 0),
	(36, 34, 8, 1),
	(37, 35, 8, 1),
	(38, 36, 8, 1),
	(39, 35, 11, 0),
	(40, 36, 9, 0),
	(41, 36, 6, 0),
	(42, 34, 5, 0),
	(43, 34, 4, 0),
	(44, 35, 4, 0),
	(45, 35, 5, 0);
/*!40000 ALTER TABLE `app_usergrupo` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.app_user_groups
CREATE TABLE IF NOT EXISTS `app_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_user_groups_user_id_group_id_73b8e940_uniq` (`user_id`,`group_id`),
  KEY `app_user_groups_group_id_e774d92c_fk_auth_group_id` (`group_id`),
  CONSTRAINT `app_user_groups_group_id_e774d92c_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `app_user_groups_user_id_e6f878f6_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.app_user_groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `app_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_user_groups` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.app_user_user_permissions
CREATE TABLE IF NOT EXISTS `app_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_user_user_permissions_user_id_permission_id_7c8316ce_uniq` (`user_id`,`permission_id`),
  KEY `app_user_user_permis_permission_id_4ef8e133_fk_auth_perm` (`permission_id`),
  CONSTRAINT `app_user_user_permis_permission_id_4ef8e133_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `app_user_user_permissions_user_id_24780b52_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.app_user_user_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `app_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_user_user_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.auth_group: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.auth_group_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.auth_permission: ~76 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add content type', 4, 'add_contenttype'),
	(14, 'Can change content type', 4, 'change_contenttype'),
	(15, 'Can delete content type', 4, 'delete_contenttype'),
	(16, 'Can view content type', 4, 'view_contenttype'),
	(17, 'Can add session', 5, 'add_session'),
	(18, 'Can change session', 5, 'change_session'),
	(19, 'Can delete session', 5, 'delete_session'),
	(20, 'Can view session', 5, 'view_session'),
	(21, 'Can add site', 6, 'add_site'),
	(22, 'Can change site', 6, 'change_site'),
	(23, 'Can delete site', 6, 'delete_site'),
	(24, 'Can view site', 6, 'view_site'),
	(25, 'Can add email address', 7, 'add_emailaddress'),
	(26, 'Can change email address', 7, 'change_emailaddress'),
	(27, 'Can delete email address', 7, 'delete_emailaddress'),
	(28, 'Can view email address', 7, 'view_emailaddress'),
	(29, 'Can add email confirmation', 8, 'add_emailconfirmation'),
	(30, 'Can change email confirmation', 8, 'change_emailconfirmation'),
	(31, 'Can delete email confirmation', 8, 'delete_emailconfirmation'),
	(32, 'Can view email confirmation', 8, 'view_emailconfirmation'),
	(33, 'Can add social account', 9, 'add_socialaccount'),
	(34, 'Can change social account', 9, 'change_socialaccount'),
	(35, 'Can delete social account', 9, 'delete_socialaccount'),
	(36, 'Can view social account', 9, 'view_socialaccount'),
	(37, 'Can add social application', 10, 'add_socialapp'),
	(38, 'Can change social application', 10, 'change_socialapp'),
	(39, 'Can delete social application', 10, 'delete_socialapp'),
	(40, 'Can view social application', 10, 'view_socialapp'),
	(41, 'Can add social application token', 11, 'add_socialtoken'),
	(42, 'Can change social application token', 11, 'change_socialtoken'),
	(43, 'Can delete social application token', 11, 'delete_socialtoken'),
	(44, 'Can view social application token', 11, 'view_socialtoken'),
	(45, 'Can add user', 12, 'add_user'),
	(46, 'Can change user', 12, 'change_user'),
	(47, 'Can delete user', 12, 'delete_user'),
	(48, 'Can view user', 12, 'view_user'),
	(49, 'Can add contacto', 13, 'add_contacto'),
	(50, 'Can change contacto', 13, 'change_contacto'),
	(51, 'Can delete contacto', 13, 'delete_contacto'),
	(52, 'Can view contacto', 13, 'view_contacto'),
	(53, 'Can add post', 14, 'add_post'),
	(54, 'Can change post', 14, 'change_post'),
	(55, 'Can delete post', 14, 'delete_post'),
	(56, 'Can view post', 14, 'view_post'),
	(57, 'Can add post view', 15, 'add_postview'),
	(58, 'Can change post view', 15, 'change_postview'),
	(59, 'Can delete post view', 15, 'delete_postview'),
	(60, 'Can view post view', 15, 'view_postview'),
	(61, 'Can add like', 16, 'add_like'),
	(62, 'Can change like', 16, 'change_like'),
	(63, 'Can delete like', 16, 'delete_like'),
	(64, 'Can view like', 16, 'view_like'),
	(65, 'Can add comment', 17, 'add_comment'),
	(66, 'Can change comment', 17, 'change_comment'),
	(67, 'Can delete comment', 17, 'delete_comment'),
	(68, 'Can view comment', 17, 'view_comment'),
	(69, 'Can add grupo', 18, 'add_grupo'),
	(70, 'Can change grupo', 18, 'change_grupo'),
	(71, 'Can delete grupo', 18, 'delete_grupo'),
	(72, 'Can view grupo', 18, 'view_grupo'),
	(73, 'Can add user grupo', 19, 'add_usergrupo'),
	(74, 'Can change user grupo', 19, 'change_usergrupo'),
	(75, 'Can delete user grupo', 19, 'delete_usergrupo'),
	(76, 'Can view user grupo', 19, 'view_usergrupo');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_app_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.django_admin_log: ~29 rows (aproximadamente)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2021-04-14 20:53:07.372859', '1', 'Hell Satan', 1, '[{"added": {}}]', 18, 1),
	(2, '2021-04-14 20:53:36.871146', '1', 'Foro AWA Admin', 1, '[{"added": {}}]', 14, 1),
	(3, '2021-04-14 20:54:03.107125', '1', 'admin', 1, '[{"added": {}}]', 17, 1),
	(4, '2021-04-14 21:23:00.515761', '3', 'ddd', 3, '', 18, 1),
	(5, '2021-04-15 14:15:30.561502', '1', 'admin', 2, '[{"changed": {"fields": ["First name"]}}]', 12, 1),
	(6, '2021-04-15 15:59:50.820863', '5', 'Blog 3', 3, '', 14, 1),
	(7, '2021-04-15 15:59:50.899856', '4', 'Blog 3', 3, '', 14, 1),
	(8, '2021-04-15 15:59:51.058859', '3', 'Blog 3', 3, '', 14, 1),
	(9, '2021-04-15 16:00:07.144452', '2', 'Blog 1', 3, '', 14, 1),
	(10, '2021-04-22 12:59:43.772879', '18', 'Monolito13', 3, '', 18, 1),
	(11, '2021-04-22 12:59:43.863593', '17', 'Monolito12', 3, '', 18, 1),
	(12, '2021-04-22 12:59:43.947709', '16', 'Monolito11', 3, '', 18, 1),
	(13, '2021-04-22 12:59:44.017088', '15', 'Monolito10', 3, '', 18, 1),
	(14, '2021-04-22 12:59:44.122116', '14', 'Monolito9', 3, '', 18, 1),
	(15, '2021-04-22 12:59:53.431855', '13', 'Monolito8', 3, '', 18, 1),
	(16, '2021-04-22 12:59:53.487874', '12', 'Monolito7', 3, '', 18, 1),
	(17, '2021-04-22 12:59:53.571877', '11', 'Monolito6', 3, '', 18, 1),
	(18, '2021-04-22 12:59:53.622036', '10', 'Monolito4', 3, '', 18, 1),
	(19, '2021-04-22 12:59:53.647036', '9', 'Monolito3', 3, '', 18, 1),
	(20, '2021-04-22 12:59:53.705039', '8', 'Monolito2', 3, '', 18, 1),
	(21, '2021-04-22 12:59:53.748470', '7', 'Monolito1', 3, '', 18, 1),
	(22, '2021-04-22 13:02:26.581348', '19', 'Jose', 3, '', 18, 1),
	(23, '2021-04-30 02:09:24.239994', '6', 'Monolito', 3, '', 18, 1),
	(24, '2021-04-30 02:09:24.299102', '5', 'Grupo de conversacion so0bre informatica', 3, '', 18, 1),
	(25, '2021-04-30 02:09:24.328792', '4', 'Adoradores del Señor Sauron', 3, '', 18, 1),
	(26, '2021-04-30 02:09:24.362876', '2', 'Los Santurrones', 3, '', 18, 1),
	(27, '2021-04-30 02:09:24.395842', '1', 'Hell Satan', 3, '', 18, 1),
	(28, '2021-04-30 04:48:42.524718', '1', 'asase', 1, '[{"added": {}}]', 16, 1),
	(29, '2021-04-30 04:48:54.245805', '1', 'jreddy', 2, '[{"changed": {"fields": ["User"]}}]', 16, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.django_content_type: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(7, 'account', 'emailaddress'),
	(8, 'account', 'emailconfirmation'),
	(1, 'admin', 'logentry'),
	(17, 'app', 'comment'),
	(13, 'app', 'contacto'),
	(18, 'app', 'grupo'),
	(16, 'app', 'like'),
	(14, 'app', 'post'),
	(15, 'app', 'postview'),
	(12, 'app', 'user'),
	(19, 'app', 'usergrupo'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'contenttypes', 'contenttype'),
	(5, 'sessions', 'session'),
	(6, 'sites', 'site'),
	(9, 'socialaccount', 'socialaccount'),
	(10, 'socialaccount', 'socialapp'),
	(11, 'socialaccount', 'socialtoken');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.django_migrations: ~33 rows (aproximadamente)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2021-04-14 20:48:34.604991'),
	(2, 'contenttypes', '0002_remove_content_type_name', '2021-04-14 20:48:35.221370'),
	(3, 'auth', '0001_initial', '2021-04-14 20:48:36.025672'),
	(4, 'auth', '0002_alter_permission_name_max_length', '2021-04-14 20:48:40.562008'),
	(5, 'auth', '0003_alter_user_email_max_length', '2021-04-14 20:48:40.635002'),
	(6, 'auth', '0004_alter_user_username_opts', '2021-04-14 20:48:40.672033'),
	(7, 'auth', '0005_alter_user_last_login_null', '2021-04-14 20:48:40.713000'),
	(8, 'auth', '0006_require_contenttypes_0002', '2021-04-14 20:48:40.845143'),
	(9, 'auth', '0007_alter_validators_add_error_messages', '2021-04-14 20:48:40.904137'),
	(10, 'auth', '0008_alter_user_username_max_length', '2021-04-14 20:48:40.946135'),
	(11, 'auth', '0009_alter_user_last_name_max_length', '2021-04-14 20:48:40.989137'),
	(12, 'auth', '0010_alter_group_name_max_length', '2021-04-14 20:48:41.107133'),
	(13, 'auth', '0011_update_proxy_permissions', '2021-04-14 20:48:41.154199'),
	(14, 'auth', '0012_alter_user_first_name_max_length', '2021-04-14 20:48:41.303328'),
	(15, 'app', '0001_initial', '2021-04-14 20:48:43.414522'),
	(16, 'account', '0001_initial', '2021-04-14 20:48:54.687307'),
	(17, 'account', '0002_email_max_length', '2021-04-14 20:48:56.531437'),
	(18, 'admin', '0001_initial', '2021-04-14 20:48:57.043844'),
	(19, 'admin', '0002_logentry_remove_auto_add', '2021-04-14 20:48:59.517887'),
	(20, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-14 20:48:59.614023'),
	(21, 'sessions', '0001_initial', '2021-04-14 20:48:59.850221'),
	(22, 'sites', '0001_initial', '2021-04-14 20:49:00.356646'),
	(23, 'sites', '0002_alter_domain_unique', '2021-04-14 20:49:00.582638'),
	(24, 'socialaccount', '0001_initial', '2021-04-14 20:49:02.629025'),
	(25, 'socialaccount', '0002_token_max_lengths', '2021-04-14 20:49:08.895517'),
	(26, 'socialaccount', '0003_extra_data_default_dict', '2021-04-14 20:49:09.006579'),
	(27, 'app', '0002_auto_20210414_1649', '2021-04-14 20:49:52.298600'),
	(28, 'app', '0003_delete_usergrupo', '2021-04-21 19:53:21.451121'),
	(29, 'app', '0004_usergrupo', '2021-04-21 19:58:13.168454'),
	(30, 'app', '0005_grupo_integrantes', '2021-04-22 13:39:05.002233'),
	(31, 'app', '0006_remove_grupo_integrantes', '2021-04-22 14:31:48.994433'),
	(32, 'app', '0007_usergrupo_lider', '2021-04-30 04:19:25.984495'),
	(33, 'app', '0008_auto_20210430_0044', '2021-04-30 04:44:50.963956');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.django_session: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.django_site
CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.django_site: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
	(1, 'example.com', 'example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.socialaccount_socialaccount
CREATE TABLE IF NOT EXISTS `socialaccount_socialaccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(30) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  KEY `socialaccount_socialaccount_user_id_8146e70c_fk_app_user_id` (`user_id`),
  CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.socialaccount_socialaccount: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `socialaccount_socialaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialaccount_socialaccount` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.socialaccount_socialapp
CREATE TABLE IF NOT EXISTS `socialaccount_socialapp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.socialaccount_socialapp: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `socialaccount_socialapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialaccount_socialapp` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.socialaccount_socialapp_sites
CREATE TABLE IF NOT EXISTS `socialaccount_socialapp_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`),
  CONSTRAINT `socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`),
  CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.socialaccount_socialapp_sites: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `socialaccount_socialapp_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialaccount_socialapp_sites` ENABLE KEYS */;

-- Volcando estructura para tabla awaforo.socialaccount_socialtoken
CREATE TABLE IF NOT EXISTS `socialaccount_socialtoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`),
  CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla awaforo.socialaccount_socialtoken: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `socialaccount_socialtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialaccount_socialtoken` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
