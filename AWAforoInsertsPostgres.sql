
ALTER SEQUENCE mireplica_grupo_id_seq RESTART WITH 37;

INSERT INTO mireplica_grupo (id, nombre, descripcion) VALUES
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


ALTER SEQUENCE mireplica_user_id_seq RESTART WITH 12;

INSERT INTO mireplica_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES
	(1, 'pbkdf2_sha256$216000$ld2rtgggLmji$k6ySxvkpEsJ3paJ+yolvOfy4rXUav86SQovxXyZbitI=', '2021-04-30 12:33:30.919228', true, 'admin', 'Geovanny', '', 'admin@mail.com', true, true, '2021-04-14 20:51:26.000000'),
	(2, 'pbkdf2_sha256$216000$qOWX87S2EJjg$lr5rbA0QUvT635GO1Ok3MXQbHWjYdK+eQG+rvURiiPk=', '2021-04-30 13:54:01.452152', false, 'geovanny2021', 'Geovanny', 'Encinas', 'geoenci@gmail.com', false, true, '2021-04-15 14:18:01.633366'),
	(3, 'pbkdf2_sha256$216000$PSDzzuJkjau0$6jON/peAn7POHjJMaG0lgyeINeMc1bLx3JjbaRYhnzc=', '2021-04-30 13:52:39.345366', false, 'persona1', 'jhon', 'doe', 'jhonDoe@mail.com', false, true, '2021-04-15 16:07:55.464836'),
	(4, 'pbkdf2_sha256$216000$hbE8msTCv52j$P1F/Fhv1C1XImRhRyM5nS/IHUUPiMuqOG4vQiSNQ0lY=', '2021-04-30 13:57:19.164193', false, 'asase', 'Sergio', 'Orgas', 'sergio@mail.com', false, true, '2021-04-21 18:44:38.678653'),
	(5, 'pbkdf2_sha256$216000$kaMPMaNRZc9O$oYYq10IC37uZ1zep8gmCZMaqPJv3UlrGEUYXXPTWJKw=', '2021-04-30 13:58:13.203934', false, 'jreddy', 'freddy', 'delgadillo', 'freddy@mail.com', false, true, '2021-04-21 18:49:02.209891'),
	(6, 'pbkdf2_sha256$216000$1zWDf6L6NCB2$Jx/r6Ohx+BRxHJ+lwuASVewrVwv4TDskyvAqat5pKwE=', '2021-04-30 13:59:33.227252', false, 'chovis', 'Geovanna', 'Ruth', 'geovana@mail.com', false, true, '2021-04-30 12:41:55.568488'),
	(7, 'pbkdf2_sha256$216000$nSeOe1kml9e2$c+AlGQ/SYIgO1XHdRNvAmaX52bzyF3s8EKO7NfP03KM=', '2021-04-30 14:00:11.751095', false, 'Argus', 'Norman', 'Quezada', 'Norman@hotmail.com', false, true, '2021-04-30 12:46:04.159812'),
	(8, 'pbkdf2_sha256$216000$cH8P9SfUw5jb$AF411LUh0DrxAmLa0OtVRdpeytIuNbYeznOA+0lPxvA=', '2021-04-30 14:00:25.002547', false, 'Driller', 'Marcos', 'Jhonson', 'Drill@gmail.com', false, true, '2021-04-30 12:47:04.968808'),
	(9, 'pbkdf2_sha256$216000$yK0tRtVJCXwT$V8SoeODBkXiwpIEufN5RDDvCNYhFmoVWC3QVp7iaeLs=', '2021-04-30 14:01:26.249739', false, 'Stark987', 'Tony', 'Lanister', 'Stark@mail.com', false, true, '2021-04-30 12:48:14.194814'),
	(10, 'pbkdf2_sha256$216000$eQAYf2HwKfwm$0FKee/9SQGZ1/AGZ8elMlOXa7yxjr5O65QIR0T6Yzz0=', '2021-04-30 14:02:23.706263', false, 'Magic1994', 'Dwanje', 'Jhonson', 'Magico@mail.com', false, true, '2021-04-30 12:49:05.857113'),
	(11, 'pbkdf2_sha256$216000$YMnvAE107UGB$ROdR8HNpOSPp5046E+0AJWCEqhIp1aKsqFmLYkt4f6g=', '2021-04-30 14:03:02.538208', false, 'Artemis', 'Chistina', 'Boza', 'Artemis@mail.com', false, true, '2021-04-30 12:50:03.127172');

ALTER SEQUENCE mireplica_post_id_seq RESTART WITH 12;

INSERT INTO mireplica_post (id, title, contenido, category, thumbnail, publish_date, last_update, author_id, gru_id) VALUES
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



ALTER SEQUENCE mireplica_comment_id_seq RESTART WITH 40;

INSERT INTO mireplica_comment (id, timestamp, content, post_id, user_id) VALUES
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

ALTER SEQUENCE mireplica_contacto_id_seq RESTART WITH 3;

INSERT INTO mireplica_contacto (id, nombre, correo, telefono, tipo_consulta, mensaje) VALUES
	(1, 'Jose Callejon', 'jose@mail.com', 7885412, 0, 'Solicito un usuario para ingresar al foro'),
	(2, 'Jose', 'jose@mail.com', 7885412, 2, 'no me deja resgitrarme');

ALTER SEQUENCE mireplica_like_id_seq RESTART WITH 12;

INSERT INTO mireplica_like (id, user_id, comentario_id) VALUES
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


ALTER SEQUENCE mireplica_usergrupo_id_seq RESTART WITH 46;

INSERT INTO mireplica_usergrupo (id, grupo_id, integrante_id, lider) VALUES
	(2, 20, 4, true),
	(3, 21, 4, true),
	(4, 22, 4, true),
	(5, 23, 2, true),
	(6, 21, 5, false),
	(7, 24, 11, true),
	(8, 25, 11, true),
	(9, 26, 11, true),
	(10, 27, 11, true),
	(11, 26, 2, false),
	(12, 24, 2, false),
	(13, 27, 6, false),
	(14, 25, 6, false),
	(15, 24, 6, false),
	(16, 26, 8, false),
	(17, 28, 10, true),
	(18, 29, 10, true),
	(19, 30, 10, true),
	(20, 30, 2, false),
	(21, 28, 3, false),
	(22, 29, 3, false),
	(23, 30, 5, false),
	(24, 28, 5, false),
	(25, 29, 9, false),
	(26, 29, 8, false),
	(27, 31, 9, true),
	(28, 32, 9, true),
	(29, 33, 9, true),
	(30, 33, 4, false),
	(31, 32, 5, false),
	(32, 31, 5, false),
	(33, 31, 11, false),
	(34, 32, 10, false),
	(35, 33, 8, false),
	(36, 34, 8, true),
	(37, 35, 8, true),
	(38, 36, 8, true),
	(39, 35, 11, false),
	(40, 36, 9, false),
	(41, 36, 6, false),
	(42, 34, 5, false),
	(43, 34, 4, false),
	(44, 35, 4, false),
	(45, 35, 5, false);
