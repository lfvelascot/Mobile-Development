--
-- Base de datos: `appausadb`
--
-- --------------------------------------------------------
CREATE DATABASE appausadbmovil;
USE appausadbmovil;
-- DROP database appausadbmovil;
--
-- Estructura de tabla para la tabla `accion`
--

CREATE TABLE `accion` (
  `nombre` varchar(45) NOT NULL,
  `descrip` varchar(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS appausadbmovil.tiporeporte (
	`nombre` varchar(45) NOT NULL,
	`descrip` varchar(45) NOT NULL,
    primary key (nombre)
);


--
-- Volcado de datos para la tabla `accion`
--
INSERT INTO `accion` (`nombre`, `descrip`) VALUES
('Cambio de Contraseña Exitoso', 'Cambio de Contraseña Exitoso'),
('Cambio de Contraseña Fallido', 'Cambio de Contraseña Fallido'),
('Comentario Enviado', 'Comentario Enviado'),
('Comentario No Enviado', 'Comentario NO Enviado'),
('Comentarios Vistos', 'Comentarios Vistos'),
('Comenatario Buscado', 'Comentario Buscado'),
('Comentario eliminado Exitoso', 'Comentario eliminado Exitoso'),
('Comentario modificado Exitoso', 'Comentario modificado Exitoso'),
('Comentario eliminado Fallido', 'Comentario eliminado Fallido'),
('Comentario modificado Fallido', 'Comentario modificado Fallido'),
('Contratos Vistos', 'Contratos Vistos'),
('Cuenta Añadido Exitoso', 'Cuenta Añadido Exitoso'),
('Cuenta Añadido Fallido', 'Cuenta Añadido Fallido'),
('Cuenta Buscado', 'Cuenta Buscado'),
('Cuenta Eliminado Exitoso', 'Cuenta Eliminado Exitoso'),
('Cuenta Eliminado Fallido', 'Cuenta Eliminado Fallido'),
('Cuenta Modificado Exitoso', 'Cuenta Modificado Exitoso'),
('Cuenta Modificado Fallido', 'Cuenta Modificado Fallido'),
('Cuentas Vistas', 'Cuentas Vistas'),
('Empleado Buscado', 'Empleado Buscado'),
('Empleado Eliminado Exitoso', 'Empleado Eliminado Exitoso'),
('Empleado Eliminado Fallido', 'Empleado Eliminado Fallido'),
('Empleado Modificado Exitoso', 'Empleado Modificado Exitoso'),
('Empleado Modificado Fallido', 'Empleado Modificado Fallido'),
('Empleados Vistos', 'Empleados Vistos'),
('Estado Cuenta Cambiado', 'Estado Cuenta Cambiado'),
('Estado Cuenta NO Cambiado', 'Estado Cuenta NO Cambiado'),
('Fin Sesión', 'Fin Sesión'),
('Ingreso a la Aplicación', 'Ingreso a la Aplicación'),
('Ingreso Fallido', 'Ingreso Fallido'),
('Registro de Actividad Visto', 'Log del usuario visto'),
('Reporte enviado exitoso', 'Reporte enviado exitoso'),
('Reporte enviado fallido', 'Reporte enviado exitosamente'),
('Reporte eliminado exitoso', 'Reporte eliminado exitoso'),
('Reporte eliminado fallido', 'Reporte eliminado exitosamente'),
('Reporte modificado exitoso', 'Reporte modificado exitoso'),
('Reporte modificado fallido', 'Reporte modificado exitosamente'),
('Reporte Buscado', 'Reporte Buscado'),
('Reportes Vistos', 'Reportes Vistas'),
('Reportes recibidos vistos', 'Reportes recibidos vistos'),
('Reportes enviados vistos', 'Reportes enviados vistos');

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `fecha` datetime NOT NULL,
  `cuenta` varchar(150) NOT NULL,
  `contenido` text NOT NULL,
  `e` int(11) NOT NULL
);

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`fecha`, `cuenta`, `contenido`, `e`) VALUES
('2020-11-06 23:49:37', 'usuario1', 'dfgyhujik,mjnbhvgfrdftgyhuikolkmjnhbgvfrty7uiko,mjnbgvfrtyuikomn bgvfrty7ujikmnbgvfty7uikjhgvfr', 1),
('2020-11-10 12:53:37', 'usuario1', 'xghjklokjhgfdefghjklkjhgfdsdfghjkll.kjhgfdsdjklkjhgfdsñlgvfdtyi474f65dfs454df65gds654g65 65df6dg4654d65g4d5ds45g465dg485dg564d54g5d45g46fds', 1),
('2020-11-10 12:54:11', 'usuario2', 'kfdokdfskodfsosdfkdsofosfoisofosojdsh jndjodjf ofpodgk   jfgoikgodfopfop dfjod ifds opdfod', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrasena_restablecida`
--

CREATE TABLE `contrasena_restablecida` (
  `fecha` date NOT NULL,
  `codigo` varchar(150) NOT NULL,
  `cuenta` varchar(150) NOT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato`
--

CREATE TABLE `contrato` (
  `num_contrato` bigint(20) NOT NULL,
  `empleado` bigint(10) NOT NULL,
  `empresa` bigint(17) NOT NULL,
  `cargo` varchar(45) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `sueldo` bigint(10) NOT NULL,
  `funciones` text NOT NULL,
  `arl` bigint(17) DEFAULT NULL,
  `caja_compensación` bigint(17) DEFAULT NULL,
  `fondo_pensiones` bigint(17) DEFAULT NULL,
  `eps` bigint(17) DEFAULT NULL,
  `tipo_contrato` varchar(45) DEFAULT NULL,
  `e` int(1) NOT NULL
);

--
-- Volcado de datos para la tabla `contrato`
--

INSERT INTO `contrato` (`num_contrato`, `empleado`, `empresa`, `cargo`, `fecha_inicio`, `fecha_fin`, `sueldo`, `funciones`, `arl`, `caja_compensación`, `fondo_pensiones`, `eps`, `tipo_contrato`, `e`) VALUES
(1, 1000373689, 124578964, 'Profesor TC', '2020-05-13', '2021-03-18', 1200000, 'tgfrfggggfgdfdf', 1010254335, 1010297314, 1010254399, 1010254314, 'Definido', 1),
(2, 365145, 1, 'TH', '2020-10-10', '2020-10-31', 1200000, 'xrtfgdgffgf', 1010254399, 1010254314, 1010254314, 1010297314, 'Definido', 1),
(3, 54, 1, 'Asistente', '2020-10-11', '2021-10-11', 132000, 'yhhfgfggfgggf', 1010254335, 1010297314, 1010254399, 1010254314, 'Definido', 1),
(5, 36, 1, 'Talento Humano', '2020-10-12', '2021-10-12', 1200000, 'xxxxxxxxxxxxxyyyyyyyyyyyyyyyyyyyyyyyyy', 1010254335, 1010297314, 1010254399, 1010254314, 'Definido', 1),
(125478, 30247896, 145211004256, 'Talento Humano', '2020-11-16', '2021-11-16', 950120, 'Aqui van las funciones del empleado de talento humano', 1010254335, 1010297314, 1010254399, 1010254314, 'Definido', 1),
(145278, 30254690, 145211004256, 'Talento Humano', '2020-11-19', '2021-11-19', 985470, 'aqui van las funciones del empleado en la empresa para poder conocerlas', 1010254335, 1010297314, 1010254399, 25478110455, 'Definido', 1);

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `username` varchar(150) NOT NULL,
  `contrasena` varchar(150) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `perfil` varchar(45) NOT NULL,
  `usuario` bigint(10) NOT NULL,
  `e` int(1) NOT NULL,
  `intentos_fallidos` int(1) NOT NULL DEFAULT '0'
);

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`username`, `contrasena`, `estado`, `perfil`, `usuario`, `e`, `intentos_fallidos`) VALUES
('usuario4', '123456', 'ACTIVA', 'TALENTO HUMANO GENERAL', 30254690, 1, 0),
('usuario3', '123456', 'ACTIVA', 'ADMINISTRADOR', 18, 1, 0),
('usuario1', '123456', 'ACTIVA', 'ADMINISTRADOR', 1000689373, 1, 0),
('usuario2', '123456', 'ACTIVA', 'TALENTO HUMANO GENERAL', 365145, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `nit` bigint(17) NOT NULL,
  `nombre_empresa` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `descripción_empresa` text,
  `num_empleados` int(4) NOT NULL,
  `tipo_empresa` varchar(45) DEFAULT NULL,
  `inicio_actividad` int(2) NOT NULL,
  `fin_actividad` int(2) NOT NULL,
  `e` int(1) NOT NULL
);

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`nit`, `nombre_empresa`, `direccion`, `email`, `telefono`, `descripción_empresa`, `num_empleados`, `tipo_empresa`, `inicio_actividad`, `fin_actividad`, `e`) VALUES
(1, 'PRUEBA SA', 'prueba', '9Pb7B+fNgorbXoXKGgO043UWJvIhWYBLas+1Og4FaHM=', '3144432469', 'empresa1@gmail.com', 25, 'Educación', 8, 16, 1),
(124578964, 'Universidad San Buenaventura', 'Calle 172b#75-89', 'empresa2@gmail.com', '7478523', 'Institución de educación superior ubicada en la ciudad de Bogotá', 5, 'Educación', 7, 17, 1),
(145211004256, 'Empresa 3', 'Calle 100 - 30', 'empresa3@gmail.com', '0030210012', 'Aquí va a la descripción de la empresa', 2, 'Construcción', 8, 17, 1),
(1154646321251, 'prueba 2', 'fddg', 'empresa4@gmail.com', '5030241025', 'fdfjkdjhdkjfjhskfjkdksjjlkdfkdfgd', 0, 'Educación', 8, 16, 1);

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE `log` (
  `cuenta` varchar(150) NOT NULL,
  `fecha` datetime NOT NULL,
  `accion` varchar(45) NOT NULL,
  `descrip` text NOT NULL,
  `e` int(1) NOT NULL
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `nombre` varchar(45) NOT NULL,
  `descrpción` varchar(45) NOT NULL,
  `rol_asociado` varchar(45) NOT NULL,
  `e` int(1) NOT NULL
);

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`nombre`, `descrpción`, `rol_asociado`, `e`) VALUES
('ADMINISTRADOR', 'Rol para los Admon de la aplicación web', 'ADMINISTRADOR', 1),
('SUPER', 'Rol para Super de la aplicación web', 'SUPER', 1),
('TALENTO HUMANO GENERAL', 'Rol para los TH de las empresas', 'TALENTO HUMANO', 1),
('TH CONTRATOS', 'Encargado de los contratos', 'TALENTO HUMANO', 1),
('TH EMPLEADO', 'Encargado de los Empleado', 'TALENTO HUMANO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `nombre` varchar(45) NOT NULL,
  `descrpción` varchar(45) NOT NULL
);

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`nombre`, `descrpción`) VALUES
('ADMINISTRADOR', 'Rol para los Admon de la aplicación web'),
('EMPLEADO', 'Rol designado a los empleados de las empresas'),
('SUPER', 'Rol para Super de la aplicación web'),
('TALENTO HUMANO', 'Rol para los TH de las empresas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_contrato`
--

CREATE TABLE `tipo_contrato` (
  `nombre` varchar(45) NOT NULL,
  `descrip` varchar(45) NOT NULL,
  `duracion` varchar(45) NOT NULL
);

--
-- Volcado de datos para la tabla `tipo_contrato`
--

INSERT INTO `tipo_contrato` (`nombre`, `descrip`, `duracion`) VALUES
('Definido', 'Contrato por cierto Tiempo', 'Definido por la empresa'),
('Indefinido', 'Sin tiempo definido', 'A decisión de la Empresa'),
('Obra Labor', 'Contrato a corto tiempo', 'Definido por la empresa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_empresa`
--

CREATE TABLE `tipo_empresa` (
  `nombre_tipo` varchar(45) NOT NULL,
  `actividad` varchar(45) NOT NULL,
  `descripción` varchar(45) DEFAULT NULL
);

--
-- Volcado de datos para la tabla `tipo_empresa`
--

INSERT INTO `tipo_empresa` (`nombre_tipo`, `actividad`, `descripción`) VALUES
('Aseo', 'Asear', 'Empresas de Aseo'),
('Construcción', 'Contruir', 'Empresa de Construcción'),
('Educación', 'Educar', 'Instituciones de educación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `cc` bigint(10) NOT NULL,
  `tipo_doc` varchar(45) NOT NULL,
  `pnombre` varchar(45) NOT NULL,
  `snombre` varchar(45) DEFAULT NULL,
  `papellido` varchar(45) NOT NULL,
  `sapellido` varchar(45) NOT NULL,
  `fecha_nam` date NOT NULL,
  `edad` int(2) NOT NULL,
  `correo_electronico` varchar(150) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `rol` varchar(45) DEFAULT NULL,
  `e` int(1) NOT NULL
);


alter table contrasena_restablecida ADD CONSTRAINT `fk_contrasena_restablecida_cuenta` FOREIGN KEY (cuenta) REFERENCES  appausadbmovil.cuenta (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE IF NOT EXISTS appausadbmovil.estado_reporte (
	`nombre` varchar(45) NOT NULL,
	`descrip` varchar(45) NOT NULL,
    primary key (nombre)
);

CREATE TABLE reporte (
	id VARCHAR(6) NOT NULL,
    empleado bigint (10) NOT NULL,
    fecha date NOT NULL,
    tipo_reporte VARCHAR(45) NOT NULL,
    estado_reporte VARCHAR(45) NOT NULL,
    descrip TEXT NOT NULL,
	primary key (id)
);

ALTER TABLE reporte ADD CONSTRAINT `fk_reporte_usuario` FOREIGN KEY (empleado) REFERENCES  appausadbmovil.usuario (`cc`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE reporte ADD CONSTRAINT `fk_reporte_tipo_reporte` FOREIGN KEY (tipo_reporte) REFERENCES  appausadbmovil.tipo_reporte (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE reporte ADD CONSTRAINT `fk_reporte_estado_reporte` FOREIGN KEY (estado_reporte) REFERENCES  appausadbmovil.estado_reporte (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE documento(
	id VARCHAR(6) NOT NULL,
    nombre varchar(150) NOT NULL,
    cuenta varchar(150) NOT NULL,
    fecha datetime not null,
    primary key (id)
);

ALTER TABLE documento ADD CONSTRAINT `fk_documento_cuenta` FOREIGN KEY (cuenta) REFERENCES  appausadbmovil.cuenta (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE reporte_documento(
	id_reporte varchar(6) NOT NULL,
    id_documento varchar(6) NOT NULL,
    primary key (id_reporte,id_documento)
);

ALTER TABLE reporte_documento ADD CONSTRAINT `fk_reporte_documento_reporte` FOREIGN KEY (id_reporte) REFERENCES  appausadbmovil.reporte (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE reporte_documento ADD CONSTRAINT `fk_reporte_documento_documento` FOREIGN KEY (id_documento) REFERENCES  appausadbmovil.documento (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE historial_reporte(
	id_reporte VARCHAR(6) NOT NULL,
    fecha date NOT NULL,
    cuenta VARCHAR(150) NOT NULL,
    estado_previo varchar (45) not null,
    estado_actual varchar (45) not null,
	PRIMARY KEY(id_reporte,fecha)
);

drop table historial_reporte;

ALTER TABLE historial_reporte ADD CONSTRAINT `fk_historial_reporte_cuenta` FOREIGN KEY (cuenta) REFERENCES  appausadbmovil.cuenta (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE historial_reporte ADD CONSTRAINT `fk_historial_reporte_reporte` FOREIGN KEY (id_reporte) REFERENCES  appausadbmovil.reporte (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE historial_reporte ADD CONSTRAINT `fk_historial_reporte_estado_previo` FOREIGN KEY (estado_previo) REFERENCES  appausadbmovil.estado_reporte (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE historial_reporte ADD CONSTRAINT `fk_historial_reporte_estado_actual` FOREIGN KEY (estado_actual) REFERENCES  appausadbmovil.estado_reporte (`nombre`)ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`cc`, `tipo_doc`, `pnombre`, `snombre`, `papellido`, `sapellido`, `fecha_nam`, `edad`, `correo_electronico`, `telefono`, `rol`, `e`) VALUES
(18, 'Cedula Ciudadania', 'Andrea', 'Catalina', 'Lopes', 'Torrez', '1998-02-18', 22, 'correo1@gmail.com', '3214567', 'ADMINISTRADOR', 1),
(35, 'Cedula Ciudadania', 'MARIA', 'ANDREA', 'PEREZ', 'GONZALEZ', '2018-11-01', 14, 'correo2@gmail.com', '3125555', 'EMPLEADO', 1),
(36, 'Cedula Ciudadania', 'Karol', 'Andrea', 'Marquez', 'Paez', '2000-06-18', 20, 'correo3@gmail.com', '3147894512', 'EMPLEADO', 1),
(54, 'Cedula Extranjeria', 'ANDREA', NULL, 'PEREZ', 'RODRIGUEZ', '1981-07-16', 49, 'correo4@gmail.com', '3214569', 'EMPLEADO', 1),
(99, 'Cedula Ciudadania', 'Felipe', 'Felipe   ', 'Torres', 'Torres', '2000-12-16', 19, 'correo5@gmail.com', '3140005423', 'ADMINISTRADOR', 1),
(24571, 'Cedula Ciudadania', 'MARIA', 'JOSE', 'PEREZ', 'TORRES', '2000-02-01', 20, 'correo6@gmail.com', '3540014', 'EMPLEADO', 1),
(365145, 'Cedula Ciudadania', 'JOSE', NULL, 'CASTRO', 'GONZALEZ', '2012-06-01', 8, 'usuario2@gmail.com', '7415200', 'TALENTO HUMANO', 1),
(30247896, 'Cedula Ciudadania', 'Carmen', 'Lorena', 'Lopez', 'Gonzales', '2000-11-28', 19, 'correo7@gmail.com', '1031200046', 'EMPLEADO', 1),
(30254690, 'Cedula Ciudadania', 'Jorge', 'Esteban', 'Perez', 'Pedraza', '1999-12-28', 20, 'correo8@gmail.com', '0431004052', 'TALENTO HUMANO', 1),
(36985214, 'Cedula Ciudadania', 'MARIA', 'DEL CARMEN', 'TAO', 'ROJAS', '1981-07-16', 49, 'correo9@gmail.com', '3052418930', 'EMPLEADO', 1),
(1000373689, 'Cedula Ciudadania', 'LUIS', 'ANDRES', 'PEREZ', 'GONZALEZ', '2020-10-02', 33, 'correo10@gmail.com', '3140005429', 'EMPLEADO', 1),
(1000689373, 'Cedula Ciudadania', 'LUIS', 'FELIPE', 'VELASCO', 'TAO', '2000-12-28', 19, 'usuario1@gmail.com', '3144432469', 'ADMINISTRADOR', 1);

--
-- Indices de la tabla `accion`
--
ALTER TABLE `accion`
  ADD PRIMARY KEY (`nombre`);
--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`fecha`,`cuenta`),
  ADD KEY `fk_comentario_cuenta1` (`cuenta`) USING BTREE;

--
-- Indices de la tabla `contrasena_restablecida`
--
ALTER TABLE `contrasena_restablecida`
  ADD PRIMARY KEY (`fecha`,`cuenta`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD KEY `fk_contrasena_restablecida_cuenta1_idx` (`cuenta`);

--
-- Indices de la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`num_contrato`,`empresa`),
  ADD KEY `fk_contrato_empleado1_idx` (`empleado`),
  ADD KEY `fk_contrato_entidad3_idx` (`eps`),
  ADD KEY `fk_contrato_empresa1_idx` (`empresa`),
  ADD KEY `fk_contrato_tipo_contrato1_idx` (`tipo_contrato`),
  ADD KEY `fk_contrato_entidad` (`arl`),
  ADD KEY `fk_contrato_entidad1` (`caja_compensación`),
  ADD KEY `fk_contrato_entidad2` (`fondo_pensiones`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD KEY `fk_cuentaapp_usuario_idx` (`usuario`),
  ADD KEY `fk_cuenta_perfil` (`perfil`);


--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`nit`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD UNIQUE KEY `nombre_empresa` (`nombre_empresa`),
  ADD KEY `fk_empresa_tipo_idx` (`tipo_empresa`);

--
-- Indices de la tabla `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`cuenta`,`fecha`),
  ADD KEY `fk_log_accion_idx` (`accion`),
  ADD KEY `fk_log_cuenta_idx` (`cuenta`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`nombre`),
  ADD KEY `fk_perfil_rol` (`rol_asociado`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `tipo_contrato`
--
ALTER TABLE `tipo_contrato`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `tipo_empresa`
--
ALTER TABLE `tipo_empresa`
  ADD PRIMARY KEY (`nombre_tipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cc`),
  ADD UNIQUE KEY `correo_electronico` (`correo_electronico`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD KEY `fk_usuario_rol_idx` (`rol`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `fk_comentario_cuenta` FOREIGN KEY (`cuenta`) REFERENCES `cuenta` (`username`);

--
-- Filtros para la tabla `contrasena_restablecida`
--
ALTER TABLE `contrasena_restablecida`
  ADD CONSTRAINT `fk_contrasena_restablecida_cuenta1` FOREIGN KEY (`cuenta`) REFERENCES `cuenta` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `contrato`
--
ALTER TABLE `contrato` ADD CONSTRAINT `fk_contrato_empleado` FOREIGN KEY (`empleado`) REFERENCES `usuario` (`cc`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `contrato` ADD CONSTRAINT `fk_contrato_empresa1` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`nit`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `contrato` ADD CONSTRAINT `fk_contrato_entidadd` FOREIGN KEY (`arl`) REFERENCES `entidad` (`nit`) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE `contrato` ADD CONSTRAINT `fk_contrato_entidad1` FOREIGN KEY (`caja_compensación`) REFERENCES `entidad` (`nit`) ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE `contrato` ADD CONSTRAINT `fk_contrato_entidad2` FOREIGN KEY (`fondo_pensiones`) REFERENCES `entidad` (`nit`) ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE `contrato` ADD CONSTRAINT `fk_contrato_entidad3` FOREIGN KEY (`eps`) REFERENCES `entidad` (`nit`) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE `contrato` ADD CONSTRAINT `fk_contrato_tipo_contrato1` FOREIGN KEY (`tipo_contrato`) REFERENCES `tipo_contrato` (`nombre`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD CONSTRAINT `fk_cuenta_perfil` FOREIGN KEY (`perfil`) REFERENCES `perfil` (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cuenta_usuario` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`cc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `fk_empresa_tipo_empresa` FOREIGN KEY (`tipo_empresa`) REFERENCES `tipo_empresa` (`nombre_tipo`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `log`
--
ALTER TABLE `log` ADD CONSTRAINT `fk_log_accion1` FOREIGN KEY (`accion`) REFERENCES `accion` (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `log`  ADD CONSTRAINT `fk_log_cuenta1` FOREIGN KEY (`cuenta`) REFERENCES `cuenta` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD CONSTRAINT `fk_perfil_rol` FOREIGN KEY (`rol_asociado`) REFERENCES `rol` (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_rol` FOREIGN KEY (`rol`) REFERENCES `rol` (`nombre`) ON DELETE SET NULL ON UPDATE CASCADE;
