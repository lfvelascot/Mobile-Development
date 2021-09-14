CREATE DATABASE appausadbmovil;

CREATE TABLE IF NOT EXISTS appausadbmovil.rol  AS (
	SELECT * FROM  appausadb.rol
);
ALTER TABLE appausadbmovil.rol ADD PRIMARY KEY (nombre);

CREATE TABLE IF NOT EXISTS appausadbmovil.tipodoc (
	`nombre` varchar(45) NOT NULL,
	`descrip` varchar(45) NOT NULL,
    primary key (nombre)
);

CREATE TABLE IF NOT EXISTS appausadbmovil.tiporeporte (
	`nombre` varchar(45) NOT NULL,
	`descrip` varchar(45) NOT NULL,
    primary key (nombre)
);

CREATE TABLE IF NOT EXISTS appausadbmovil.estadoreporte (
	`nombre` varchar(45) NOT NULL,
	`descrip` varchar(45) NOT NULL,
    primary key (nombre)
);

CREATE TABLE IF NOT EXISTS appausadbmovil.estadocuenta(
	`nombre` varchar(45) NOT NULL,
	`descrip` varchar(45) NOT NULL,
    primary key (nombre)
);

CREATE TABLE IF NOT EXISTS appausadbmovil.accion (
	SELECT * FROM appausadb.accion
);
ALTER TABLE appausadbmovil.accion ADD PRIMARY KEY (nombre);


CREATE TABLE IF NOT EXISTS appausadbmovil.perfil AS (
	SELECT * FROM appausadb.perfil
);
ALTER TABLE appausadbmovil.perfil ADD PRIMARY KEY (nombre);
ALTER TABLE appausadbmovil.perfil ADD CONSTRAINT `fk_perfil_rol` FOREIGN KEY (rol_asociado) REFERENCES  appausadbmovil.rol (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE IF NOT EXISTS appausadbmovil.usuario AS (
	SELECT * FROM appausadb.usuario
);
ALTER TABLE appausadbmovil.usuario ADD PRIMARY KEY (cc);
ALTER TABLE appausadbmovil.usuario ADD CONSTRAINT `fk_usuario_rol` FOREIGN KEY (rol) REFERENCES  appausadbmovil.rol (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE appausadbmovil.usuario ADD UNIQUE (correo_electronico);
ALTER TABLE appausadbmovil.usuario ADD UNIQUE (telefono);


CREATE TABLE IF NOT EXISTS appausadbmovil.cuenta AS (
	SELECT * FROM appausadb.cuenta
);
ALTER TABLE appausadbmovil.cuenta ADD PRIMARY KEY (username);
ALTER TABLE appausadbmovil.cuenta ADD CONSTRAINT `fk_cuenta_perfil` FOREIGN KEY (perfil) REFERENCES  appausadbmovil.perfil (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE appausadbmovil.cuenta ADD CONSTRAINT `fk_cuenta_usuario` FOREIGN KEY (usuario) REFERENCES  appausadbmovil.usuario (`cc`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE appausadbmovil.comentario (
    `fecha` DATETIME NOT NULL,
    `cuenta` VARCHAR(150) NOT NULL,
    `contenido` TEXT NOT NULL,
    `e` INT(11) NOT NULL,
    primary key (fecha,cuenta)
);
ALTER TABLE appausadbmovil.comentario  ADD CONSTRAINT fk_comentarios_cuentas FOREIGN KEY (cuenta) REFERENCES  appausadbmovil.cuenta (`username`) ON DELETE CASCADE ON UPDATE CASCADE;




CREATE TABLE appausadbmovil.contrasena_restablecida (
  `fecha` date NOT NULL,
  `codigo` varchar(150) NOT NULL,
  `cuenta` varchar(150) NOT NULL,
  primary key(fecha,cuenta),
  CONSTRAINT `fk_contrasena_restablecida_cuenta` FOREIGN KEY (cuenta) REFERENCES  appausadbmovil.cuenta (`correo_electronico`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE appausadbmovil.log (
  `cuenta` varchar(150) NOT NULL,
  `fecha` datetime NOT NULL,
  `accion` varchar(45) NOT NULL,
  `descrip` text NOT NULL,
  `e` int(1) NOT NULL,
  primary key(cuenta,fecha),
  CONSTRAINT `fk_log_cuenta` FOREIGN KEY (cuenta) REFERENCES  appausadbmovil.cuenta (`correo_electronico`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_log_accion` FOREIGN KEY (accion) REFERENCES  appausadbmovil.accion (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE appausadbmovil.reporte (
	id VARCHAR(6) NOT NULL,
    empleado bigint (10) NOT NULL,
    fecha date NOT NULL,
    tipo_reporte VARCHAR(45) NOT NULL,
    estado_reporte VARCHAR(45) NOT NULL,
    descrip TEXT NOT NULL,
	primary key (id),
    CONSTRAINT `fk_reporte_usuario` FOREIGN KEY (empleado) REFERENCES  appausadbmovil.usuario (`cc`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `fk_reporte_tipo_reporte` FOREIGN KEY (tipo_reporte) REFERENCES  appausadbmovil.tipo_reporte (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `fk_reporte_estado_reporte` FOREIGN KEY (estado_reporte) REFERENCES  appausadbmovil.estado_reporte (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE appausamovil.documento(
	id VARCHAR(6) NOT NULL,
    nombre varchar(150) NOT NULL,
    cuenta varchar(150) NOT NULL,
    fecha datetime not null,
    primary key (id),
    CONSTRAINT `fk_documento_cuenta` FOREIGN KEY (cuenta) REFERENCES  appausadbmovil.cuenta (`correo_electronico`) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE appausamovil.reporte_documento(
	id_reporte varchar(6) NOT NULL,
    id_documento varchar(6) NOT NULL,
    primary key (id_reporte,id_documento),
    CONSTRAINT `fk_reporte_documento_reporte` FOREIGN KEY (id_reporte) REFERENCES  appausadbmovil.reporte (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `fk_reporte_documento_documento` FOREIGN KEY (id_documento) REFERENCES  appausadbmovil.documento (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE appausadbmovil.historial_reporte(
	id_reporte VARCHAR(6) NOT NULL,
    fecha date NOT NULL,
    cuenta VARCHAR(150) NOT NULL,
	PRIMARY KEY(id_reporte,fecha),
    CONSTRAINT `fk_historial_reporte_cuenta` FOREIGN KEY (cuenta) REFERENCES  appausadbmovil.cuenta (`correo_electronico`) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT `fk_historial_reporte_reporte` FOREIGN KEY (id_reporte) REFERENCES  appausadbmovil.reporte (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);


-- DROP DATABASE appausadbmovil;

