/*
MySQL Backup
Source Server Version: 5.1.51
Source Database: nomina
Date: 13-05-2016 01:55:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `cargo`
-- ----------------------------
DROP TABLE IF EXISTS `cargo`;
CREATE TABLE `cargo` (
  `idcargo` int(10) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) DEFAULT NULL,
  `Descripcion` varchar(250) DEFAULT NULL,
  `conceptos` varchar(100) DEFAULT NULL,
  `Iddepartamentos` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcargo`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `Nombre` varchar(100) DEFAULT NULL,
  `Rif` varchar(10) DEFAULT NULL,
  `Direccion` varchar(250) DEFAULT NULL,
  `Telefono1` varchar(20) DEFAULT NULL,
  `Telefono2` varchar(20) DEFAULT NULL,
  `Telefono3` varchar(20) DEFAULT NULL,
  `Representante` varchar(50) DEFAULT NULL,
  `Logo` varchar(50) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `conceptos`
-- ----------------------------
DROP TABLE IF EXISTS `conceptos`;
CREATE TABLE `conceptos` (
  `idconcepto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `variante` varchar(50) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `tipo` int(1) DEFAULT NULL,
  `Valor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idconcepto`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `departamentos`
-- ----------------------------
DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE `departamentos` (
  `iddepartamentos` int(10) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`iddepartamentos`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `empresa`
-- ----------------------------
DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa` (
  `RazonSocial` varchar(50) DEFAULT NULL,
  `Rif` varchar(11) DEFAULT NULL,
  `Direccion` varchar(200) DEFAULT NULL,
  `Telefonos` varchar(11) DEFAULT NULL,
  `TipodeLicencia` varchar(50) DEFAULT NULL,
  `NumerodeLicencia` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Contacto` varchar(50) DEFAULT NULL,
  `Logo` varchar(100) DEFAULT NULL,
  `Detallelogo` varchar(100) DEFAULT NULL,
  `Idempresa` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `estatus`
-- ----------------------------
DROP TABLE IF EXISTS `estatus`;
CREATE TABLE `estatus` (
  `idestatus` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idestatus`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `gradointruc`
-- ----------------------------
DROP TABLE IF EXISTS `gradointruc`;
CREATE TABLE `gradointruc` (
  `idgrado` int(11) NOT NULL,
  `grado` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idgrado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `jornada`
-- ----------------------------
DROP TABLE IF EXISTS `jornada`;
CREATE TABLE `jornada` (
  `idjornada` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Lunes` int(11) DEFAULT NULL,
  `Martes` int(11) DEFAULT NULL,
  `Miercoles` int(11) DEFAULT NULL,
  `Jueves` int(11) DEFAULT NULL,
  `Viernes` int(11) DEFAULT NULL,
  `Sabado` int(11) DEFAULT NULL,
  `Domingo` int(11) DEFAULT NULL,
  `Horariodesde` varchar(10) DEFAULT NULL,
  `Horariohasta` varchar(10) DEFAULT NULL,
  `Descansodesde` varchar(10) DEFAULT NULL,
  `Descansohasta` varchar(10) DEFAULT NULL,
  `descanso` int(1) DEFAULT NULL,
  PRIMARY KEY (`idjornada`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` char(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Nombre` char(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Tipo` int(1) DEFAULT NULL,
  `Pariente` char(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Accion` char(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Parameters` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Seleccionado` int(1) DEFAULT NULL,
  `hijos` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
--  Table structure for `menulimited`
-- ----------------------------
DROP TABLE IF EXISTS `menulimited`;
CREATE TABLE `menulimited` (
  `id` char(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Nombre` char(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Tipo` int(1) DEFAULT NULL,
  `Pariente` char(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Accion` char(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Seleccionado` int(1) DEFAULT NULL,
  `hijos` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
--  Table structure for `nacionalidad`
-- ----------------------------
DROP TABLE IF EXISTS `nacionalidad`;
CREATE TABLE `nacionalidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `nominagen`
-- ----------------------------
DROP TABLE IF EXISTS `nominagen`;
CREATE TABLE `nominagen` (
  `id` int(10) DEFAULT NULL,
  `idtype` int(10) DEFAULT NULL,
  `idtrabajador` int(11) DEFAULT NULL,
  `cedula` varchar(12) DEFAULT NULL,
  `conceptos` varchar(50) DEFAULT NULL,
  `montos` varchar(50) DEFAULT NULL,
  `basico` decimal(10,2) DEFAULT NULL,
  `totalded` decimal(10,2) DEFAULT NULL,
  `totalasig` decimal(10,2) DEFAULT NULL,
  `neto` decimal(10,2) DEFAULT NULL,
  `varvacaciones` decimal(10,2) DEFAULT NULL,
  `varutilidades` decimal(10,2) DEFAULT NULL,
  `otrasasig` decimal(10,2) DEFAULT NULL,
  `desde` date DEFAULT NULL,
  `hasta` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `nominaini`
-- ----------------------------
DROP TABLE IF EXISTS `nominaini`;
CREATE TABLE `nominaini` (
  `id` int(10) NOT NULL DEFAULT '0',
  `desde` date DEFAULT NULL,
  `hasta` date DEFAULT NULL,
  `estatus` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `nominatype`
-- ----------------------------
DROP TABLE IF EXISTS `nominatype`;
CREATE TABLE `nominatype` (
  `idnomina` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  `intervalo` int(10) NOT NULL,
  `conceptos` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idnomina`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `nominauni`
-- ----------------------------
DROP TABLE IF EXISTS `nominauni`;
CREATE TABLE `nominauni` (
  `idnomina` int(11) NOT NULL AUTO_INCREMENT,
  `nominatype` int(11) DEFAULT NULL,
  `desde` date DEFAULT NULL,
  `hasta` date DEFAULT NULL,
  `totalnomina` decimal(10,2) DEFAULT NULL,
  `totalasignaciones` decimal(10,2) DEFAULT NULL,
  `totaldeducciones` decimal(10,2) DEFAULT NULL,
  `estatus` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `cantidadt` int(11) DEFAULT NULL,
  PRIMARY KEY (`idnomina`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `prenomina`
-- ----------------------------
DROP TABLE IF EXISTS `prenomina`;
CREATE TABLE `prenomina` (
  `idprenomina` int(11) NOT NULL AUTO_INCREMENT,
  `idnominatype` int(11) NOT NULL,
  `idtrabajador` int(11) DEFAULT NULL,
  `idconcepto` int(11) DEFAULT NULL,
  `nombrecon` varchar(50) DEFAULT NULL,
  `valorconcepto` decimal(10,0) DEFAULT NULL,
  `valorvar` decimal(10,0) DEFAULT NULL,
  `tipoconcepto` int(11) DEFAULT NULL,
  PRIMARY KEY (`idprenomina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `presmanual`
-- ----------------------------
DROP TABLE IF EXISTS `presmanual`;
CREATE TABLE `presmanual` (
  `idpres` int(11) DEFAULT NULL,
  `idtrabajador` int(11) DEFAULT NULL,
  `idmes` int(11) DEFAULT NULL,
  `mes` date DEFAULT NULL,
  `Salbase` decimal(10,2) DEFAULT NULL,
  `otrasasig` decimal(10,2) DEFAULT NULL,
  `Salmen` decimal(10,2) DEFAULT NULL,
  `Saldia` decimal(10,2) DEFAULT NULL,
  `diasdev` int(4) DEFAULT NULL,
  `AlicuotaV` decimal(10,2) DEFAULT NULL,
  `diasdeu` int(4) DEFAULT NULL,
  `AlicuotaU` decimal(10,2) DEFAULT NULL,
  `Salarioint` decimal(10,2) DEFAULT NULL,
  `Dias` int(11) DEFAULT NULL,
  `TotalMes` decimal(10,2) DEFAULT NULL,
  `Tasa` decimal(10,2) DEFAULT NULL,
  `Interes` decimal(10,2) DEFAULT NULL,
  `Anticipo` decimal(10,2) DEFAULT NULL,
  `Acumulado` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `procedures`
-- ----------------------------
DROP TABLE IF EXISTS `procedures`;
CREATE TABLE `procedures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
--  Table structure for `sueldos`
-- ----------------------------
DROP TABLE IF EXISTS `sueldos`;
CREATE TABLE `sueldos` (
  `fecha` date DEFAULT NULL,
  `monto` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `tasas`
-- ----------------------------
DROP TABLE IF EXISTS `tasas`;
CREATE TABLE `tasas` (
  `fecha` date DEFAULT NULL,
  `tasa` decimal(4,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `trabajador`
-- ----------------------------
DROP TABLE IF EXISTS `trabajador`;
CREATE TABLE `trabajador` (
  `idtrabajador` int(10) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(10) NOT NULL DEFAULT '',
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `idcargo` int(10) DEFAULT NULL,
  `iddepartamentos` int(10) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `telefonocel` varchar(12) DEFAULT NULL,
  `telefonolocal` varchar(12) DEFAULT NULL,
  `telefonocontacto` varchar(12) DEFAULT NULL,
  `nombrecontacto` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `Sueldo` double(10,2) DEFAULT NULL,
  `idstatus` int(10) DEFAULT NULL,
  `conceptos` varchar(250) DEFAULT NULL,
  `Sexo` int(1) DEFAULT NULL,
  `Fechaing` datetime DEFAULT NULL,
  `fechanac` datetime DEFAULT NULL,
  `edocivil` int(10) DEFAULT NULL,
  `Nhijos` int(11) DEFAULT NULL,
  `nacionalidad` varchar(1) DEFAULT NULL,
  `idgrado` int(11) DEFAULT NULL,
  `lugarnac` varchar(50) DEFAULT NULL,
  `dirfoto` varchar(100) DEFAULT NULL,
  `Idnomina` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtrabajador`),
  UNIQUE KEY `cedula` (`cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `usermenu`
-- ----------------------------
DROP TABLE IF EXISTS `usermenu`;
CREATE TABLE `usermenu` (
  `id` char(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Nombre` char(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Tipo` int(1) DEFAULT NULL,
  `Pariente` char(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Accion` char(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Parametros` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Seleccionado` int(1) DEFAULT NULL,
  `hijos` int(1) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `Guardar` int(1) DEFAULT '0',
  `Editar` int(1) DEFAULT '0',
  `Eliminar` int(1) DEFAULT '0',
  `Idmenu` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Idmenu`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `idusuario` int(4) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(20) NOT NULL,
  `tipoid` int(11) NOT NULL,
  `keyCi` varchar(12) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Cedula` varchar(10) DEFAULT NULL,
  `FechaNac` date DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Desactivar` int(1) DEFAULT NULL,
  `Vigenciadesde` date DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `usertype`
-- ----------------------------
DROP TABLE IF EXISTS `usertype`;
CREATE TABLE `usertype` (
  `usertypeid` int(3) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`usertypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `variables`
-- ----------------------------
DROP TABLE IF EXISTS `variables`;
CREATE TABLE `variables` (
  `nombre` varchar(20) NOT NULL DEFAULT '',
  `tipo` varchar(20) NOT NULL,
  `tamaño` int(11) NOT NULL,
  `valorinicial` varchar(50) DEFAULT NULL,
  `constante` int(11) DEFAULT '0',
  PRIMARY KEY (`nombre`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `varsys`
-- ----------------------------
DROP TABLE IF EXISTS `varsys`;
CREATE TABLE `varsys` (
  `idtrabajador` int(11) DEFAULT NULL,
  `cedula` varchar(11) NOT NULL DEFAULT '',
  `vDIASDES` int(11) DEFAULT NULL,
  `vDLAB` decimal(11,2) DEFAULT NULL,
  `vVHIJOS` decimal(11,2) DEFAULT NULL,
  `vDF` decimal(11,2) DEFAULT NULL,
  `vHR` decimal(11,2) DEFAULT NULL,
  `vDFI` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `cargo` VALUES ('1','VICEPRESIDENTE                ','',NULL,'3'), ('2','PRESIDENTE                    ','PRESIDENTE EJECUTIVO                                                                                                                                                                                                                                      ',NULL,'3'), ('3','CARNICERO                     ','CARNICERO                                                                                                                                                                                                                                                 ',NULL,'3'), ('4','N/D                           ','ND                                                                                                                                                                                                                                                        ',NULL,'4'), ('5','DOCENTE PRESCOLAR             ','                                                                                                                                                                                                                                                          ',NULL,'1'), ('6','DOCENTE 1ER GRADO             ','                                                                                                                                                                                                                                                          ',NULL,'1'), ('7','DOCENTE 2DO GRADO             ','',NULL,'1'), ('8','DOCENTE 3ER GRADO             ','',NULL,'1'), ('9','DOCENTE 4TO GRADO             ','                                                                                                                                                                                                                                                          ',NULL,'1'), ('10','DOCENTE 5TO GRADO             ','                                                                                                                                                                                                                                                          ',NULL,'1'), ('11','DOCENTE 6T0 GRADO             ','                                                                                                                                                                                                                                                          ',NULL,'1'), ('12','PSICOPEDAGOGA                 ','                                                                                                                                                                                                                                                          ',NULL,'1'), ('13','AUX. PSICOPEDAGOGIA           ','',NULL,'1'), ('14','AUX. PREESCOLAR               ','                                                                                                                                                                                                                                                          ',NULL,'1'), ('15','ADMINISTRADOR(A)              ','                                                                                                                                                                                                                                                          ',NULL,'2'), ('16','SECRETARIA                    ','                                                                                                                                                                                                                                                          ',NULL,'2'), ('17','DIRECTOR                      ','                                                                                                                                                                                                                                                          ',NULL,'2'), ('18','PROPIETARIA                   ','',NULL,'2'), ('19','MANTENIMIENTO                 ','',NULL,'3');
INSERT INTO `conceptos` VALUES ('10','DIAS LABORADOS                                    ','VDLAB                                             ','CALCULA TOTAL DE LOS DIAS LABORADOS                                                                 ','1','VDLAB*(SUELDOACTUAL()/30)                                                                           '), ('12','S.S.O.                                            ','                                                  ','DEDUCCION SEGURO SOCIAL OBLIGATORIO                                                                 ','2','(((SUELDOACTUAL()*12)/52)*0.04)*LUNESDELINTERVALO()                                                 '), ('13','P.I.E.                                            ','                                                  ','DEDUCCION P.I.E                                                                                     ','2','(((SUELDOACTUAL()*12)/52)*0.005)*LUNESDELINTERVALO()                                                '), ('14','F.A.O.V.                                          ','                                                  ','FAOV                                                                                                ','2','Sueldo_integral()*0.01                                                                              '), ('17','DIAS FERIADOS                                     ','vDF                                               ','DIAS FERIADOS TRABAJADOS                                                                            ','1','SUELDO_INTEGRAL()*0.05*vDF                                                                          '), ('19','DIA DE FALTA INJUSTIFICADA                        ','VDFI                                              ','                                                                                                    ','2','SUELDOACTUAL()/30*VDFI                                                                              ');
INSERT INTO `departamentos` VALUES ('1','DOCENCENTES                                       '), ('2','ADMINISTRATIVO                                    '), ('3','PERSONAL DE MANTENIMIENTO                         ');
INSERT INTO `empresa` VALUES ('Asociación Civil Unidad Educativa \"Teresa Carreño\"','J29445762  ','Segunda A. N° 01, Ubanizacion La Esperanza                                                                                                                                                              ','(0243)246.8','DEMO                                              ','000000000000000                                   ','                                                  ','                                                  ','C:\\COLEGIO\\COLEGIO.BMP','Asociación Civil Unidad Educativa \"Teresa Carreño\"      Segunda A. N° 01, Ubanizacion La Esperanza  ','1');
INSERT INTO `estatus` VALUES ('1','ACTIVO'), ('2','VACACIONES'), ('3','EGRESADO');
INSERT INTO `gradointruc` VALUES ('1','PRIMARIA'), ('2','PRIMARIA INCOMPLETA'), ('3','SECUNDARIA'), ('4','SECUNDARIA INCOMPLETA'), ('5','TECNICA'), ('6','UNIVERSITARIA');
INSERT INTO `jornada` VALUES ('1','','1','1','1','1','1','2','2',NULL,NULL,NULL,NULL,NULL), ('2','SEMANAL1                                                                                            ','1','1','1','1','1','2','2','12:00:PM  ','12:00:PM  ','12:00:PM  ','12:00:PM  ','1'), ('3','TURNO DIURNO                                                                                        ','1','1','1','1','1','2','2','08:00:AM','12:00:PM','12:00:PM','02:00:PM','1');
INSERT INTO `menu` VALUES ('A1','Inicio','0','','',NULL,'1','1'), ('A117','Conceptos','4','A11','abrirform(\'frmconceptos\')',NULL,'1',NULL), ('A118','Variables','4','A11','abrirform(\'frmvarsys\')',NULL,'1',NULL), ('A119','Procedimientos','4','A11','abrirform(\'frmprocedures\')',NULL,'1',NULL), ('A12','Configuracion','4','A1','',NULL,'1','1'), ('A13','Salir','4','A1','QUIT',NULL,'1',NULL), ('A31','Usuarios','4','A12','abrirform(\'frmuser\')',NULL,'1',NULL), ('A32','Empresa','4','A12','abrirform(\'frmempresa\')',NULL,'1',NULL), ('B1','Proceso','0','','',NULL,'1','1'), ('A114','Nomina','4','A11','abrirform(\'frmnomina\')',NULL,'1',NULL), ('B11','Generar Nomina','4','B1','Abrirform(\'nominagen\')',NULL,'1',NULL), ('C1','Utilidades','0','','',NULL,'1','1'), ('D1','Ayuda','0','','',NULL,'1','1'), ('A111','Trabajador','4','A11','abrirform(\'frmtrabajador\')',NULL,'1',NULL), ('A112','Cargo','4','A11','abrirform(\'frmcargo\')',NULL,'1',NULL), ('A115','Jornada','4','A11','abrirform(\'frmjornada\')',NULL,'1',NULL), ('A116','\\-','4','A11','',NULL,'2',NULL), ('A113','Departamento','4','A11','abrirform(\'frmdepartamento\')',NULL,'1',NULL), ('C11','Modulo Prestaciones Sociales','4','C1','abrirform(\'frmpresfinal\')',NULL,'1',NULL), ('A11','Nuevo','4','A1','',NULL,'1','1'), ('C12','Control de Asistencia','4','C1','abrirform(\'frmctrlasistencia\')',NULL,'1',NULL);
INSERT INTO `menulimited` VALUES ('A1','Inicio','0','','','1','1'), ('A117','Conceptos','4','A11','abrirform(\'frmconceptos\')','1',NULL), ('A118','Variables','4','A11','abrirform(\'frmvarsys\')','0',NULL), ('A119','Procedimientos','4','A11','abrirform(\'frmprocedures\')','0',NULL), ('A12','Configuracion','4','A1','','0','1'), ('A13','Salir','4','A1','QUIT','1',NULL), ('A31','Usuarios','4','A12','abrirform(\'frmuser\')','1',NULL), ('A32','Empresa','4','A12','abrirform(\'frmempresa\')','0',NULL), ('B1','Proceso','0','','','0','1'), ('A114','Nomina','4','A11','abrirform(\'frmnomina\')','0',NULL), ('B11','Generar Nomina','4','B1','Abrirform(\'nominagen\')','1',NULL), ('C1','Utilidades','0','','','1','1'), ('D1','Ayuda','0','','','1','1'), ('A111','Trabajador','4','A11','abrirform(\'frmtrabajador\')','1',NULL), ('A112','Cargo','4','A11','abrirform(\'frmcargo\')','1',NULL), ('A115','Jornada','4','A11','abrirform(\'frmjornada\')','1',NULL), ('A116','\\-','4','A11','','2',NULL), ('A113','Departamento','4','A11','abrirform(\'frmdepartamento\')','1',NULL), ('C11','Modulo Prestaciones Sociales','4','C1','abrirform(\'frmpresfinal\')','0',NULL), ('C12','Control de Asistencia','4','C1','abrirform(\'frmctrlasistencia\')','1',NULL), ('A11','Nuevo','4','A1','','1','1');
INSERT INTO `nacionalidad` VALUES ('1','V'), ('2','E'), ('3','R');
INSERT INTO `nominatype` VALUES ('1','NOMINA MENSUAL                                    ','2','10,12,14,13');
INSERT INTO `nominauni` VALUES ('1','1','2015-05-01','2015-06-30','13000.00','13000.00','0.00','1','2016-01-21 13:09:16','4','2'), ('2','1','2016-04-01','2016-04-15','5490.00','5789.00','299.00','1','2016-04-14 21:26:54','4','1');
INSERT INTO `procedures` VALUES ('1','SUELDOACTUAL()','Obtiene el sueldo Actual del Trabajador'), ('2','LUNESDELINTERVALO()','Obtiene los lunes del Intervalo de nomina '), ('3','SUELDO_INTEGRAL()','Obtiene el monto Total de todo lo devengando por el trabajador en el intervalo de la nomina');
INSERT INTO `sueldos` VALUES ('1997-03-01','75'), ('1997-04-01','75'), ('1997-05-01','75'), ('1997-06-01','75'), ('1997-07-01','75'), ('1997-08-01','75'), ('1997-09-01','75'), ('1997-10-01','75'), ('1997-11-01','75'), ('1997-12-01','75'), ('1998-01-01','100'), ('1998-02-01','100'), ('1998-03-01','100'), ('1998-04-01','100'), ('1998-05-01','100'), ('1998-06-01','100'), ('1998-07-01','100'), ('1998-08-01','100'), ('1998-09-01','100'), ('1998-10-01','100'), ('1998-11-01','100'), ('1998-12-01','100'), ('1999-01-01','120'), ('1999-02-01','120'), ('1999-03-01','120'), ('1999-04-01','120'), ('1999-05-01','120'), ('1999-06-01','120'), ('1999-07-01','120'), ('1999-08-01','120'), ('1999-09-01','120'), ('1999-10-01','120'), ('1999-11-01','120'), ('1999-12-01','120'), ('2000-01-01','144'), ('2000-02-01','144'), ('2000-03-01','144'), ('2000-04-01','144'), ('2000-05-01','144'), ('2000-06-01','144'), ('2000-07-01','144'), ('2000-08-01','144'), ('2000-09-01','144'), ('2000-10-01','144'), ('2000-11-01','144'), ('2000-12-01','144'), ('2001-01-01','158'), ('2001-02-01','158'), ('2001-03-01','158'), ('2001-04-01','158'), ('2001-05-01','158'), ('2001-06-01','158'), ('2001-07-01','158'), ('2001-08-01','158'), ('2001-09-01','158'), ('2001-10-01','158'), ('2001-11-01','158'), ('2001-12-01','158'), ('2002-01-01','158'), ('2002-02-01','158'), ('2002-03-01','158'), ('2002-04-01','158'), ('2002-05-01','190'), ('2002-06-01','190'), ('2002-07-01','190'), ('2002-08-01','190'), ('2002-09-01','190'), ('2002-10-01','190'), ('2002-11-01','190'), ('2002-12-01','190'), ('2003-01-01','190'), ('2003-02-01','190'), ('2003-03-01','190'), ('2003-04-01','190'), ('2003-05-01','190'), ('2003-06-01','190'), ('2003-07-01','209'), ('2003-08-01','209'), ('2003-09-01','209'), ('2003-10-01','247'), ('2003-11-01','247'), ('2003-12-01','247'), ('2004-01-01','247'), ('2004-02-01','247'), ('2004-03-01','247'), ('2004-04-01','247'), ('2004-05-01','297'), ('2004-06-01','297'), ('2004-07-01','297'), ('2004-08-01','321'), ('2004-09-01','321'), ('2004-10-01','321'), ('2004-11-01','321'), ('2004-12-01','321'), ('2005-01-01','321'), ('2005-02-01','321'), ('2005-03-01','321'), ('2005-04-01','321'), ('2005-05-01','405'), ('2005-06-01','405');
INSERT INTO `sueldos` VALUES ('2005-07-01','405'), ('2005-08-01','405'), ('2005-09-01','405'), ('2005-10-01','405'), ('2005-11-01','405'), ('2005-12-01','405'), ('2006-01-01','405'), ('2006-02-01','405'), ('2006-03-01','405'), ('2006-04-01','405'), ('2006-05-01','466'), ('2006-06-01','466'), ('2006-07-01','466'), ('2006-08-01','466'), ('2006-09-01','512'), ('2006-10-01','512'), ('2006-11-01','512'), ('2006-12-01','512'), ('2007-01-01','512'), ('2007-02-01','512'), ('2007-03-01','512'), ('2007-04-01','512'), ('2007-05-01','615'), ('2007-06-01','615'), ('2007-07-01','615'), ('2007-08-01','615'), ('2007-09-01','615'), ('2007-10-01','615'), ('2007-11-01','615'), ('2007-12-01','615'), ('2008-01-01','615'), ('2008-02-01','615'), ('2008-03-01','615'), ('2008-04-01','615'), ('2008-05-01','799'), ('2008-06-01','799'), ('2008-07-01','799'), ('2008-08-01','799'), ('2008-09-01','799'), ('2008-10-01','799'), ('2008-11-01','799'), ('2008-12-01','799'), ('2009-01-01','799'), ('2009-02-01','799'), ('2009-03-01','799'), ('2009-04-01','799'), ('2009-05-01','879'), ('2009-06-01','879'), ('2009-07-01','879'), ('2009-08-01','879'), ('2009-09-01','959'), ('2009-10-01','959'), ('2009-11-01','959'), ('2009-12-01','959'), ('2010-01-01','959'), ('2010-02-01','959'), ('2010-03-01','1064'), ('2010-04-01','1064'), ('2010-05-01','1064'), ('2010-06-01','1064'), ('2010-07-01','1064'), ('2010-08-01','1064'), ('2010-09-01','1224'), ('2010-10-01','1224'), ('2010-11-01','1224'), ('2010-12-01','1224'), ('2011-01-01','1224'), ('2011-02-01','1224'), ('2011-03-01','1224'), ('2011-04-01','1224'), ('2011-05-01','1548'), ('2011-06-01','1548'), ('2011-07-01','1548'), ('2011-08-01','1548'), ('2011-09-01','1548'), ('2011-10-01','1548'), ('2011-11-01','1548'), ('2011-12-01','1548'), ('2012-01-01','1548'), ('2012-02-01','1548'), ('2012-03-01','1548'), ('2012-04-01','1548'), ('2012-05-01','1780'), ('2012-06-01','1780'), ('2012-07-01','1780'), ('2012-08-01','1780'), ('2012-09-01','2048'), ('2012-10-01','2048'), ('2012-11-01','2048'), ('2012-12-01','2048'), ('2013-01-01','2048'), ('2013-02-01','2048'), ('2013-03-01','2048'), ('2013-04-01','2048'), ('2013-05-01','2457'), ('2013-06-01','2457'), ('2013-07-01','2457'), ('2013-08-01','2457'), ('2013-09-01','2703'), ('2013-10-01','2703');
INSERT INTO `sueldos` VALUES ('2013-11-01','2973'), ('2013-12-01','2973'), ('2014-01-01','3270'), ('2014-02-01','3270'), ('2014-03-01','3270'), ('2014-04-01','3270'), ('2014-05-01','4251'), ('2014-06-01','4251'), ('2014-07-01','4251'), ('2014-08-01','4251'), ('2014-09-01','4251'), ('2014-10-01','4251'), ('2014-11-01','4251'), ('2014-12-01','4889'), ('2015-01-01','4889'), ('2015-02-01','5622'), ('2015-03-01','5622');
INSERT INTO `tasas` VALUES ('0000-00-00','17.86'), ('0000-00-00','17.38'), ('2015-10-07','17.10'), ('2015-09-06','16.99'), ('0000-00-00','17.22'), ('2015-09-04','16.71'), ('2015-10-03','16.65'), ('2015-12-02','16.76'), ('0000-00-00','16.85'), ('0000-00-00','16.96'), ('0000-00-00','16.65'), ('2014-10-10','16.16'), ('2014-11-09','16.23'), ('2014-07-08','15.86'), ('2014-09-07','15.56'), ('2014-11-06','15.54'), ('0000-00-00','15.44'), ('2014-08-04','15.05'), ('0000-00-00','15.54'), ('2014-11-02','15.12'), ('0000-00-00','15.15'), ('2013-10-12','14.93'), ('2013-12-11','14.99'), ('2013-08-10','15.13'), ('2013-10-09','15.53'), ('2013-08-08','14.97'), ('2013-09-07','14.88'), ('2013-12-06','15.07'), ('2013-09-05','15.09'), ('2013-09-04','14.89'), ('2013-12-03','15.47'), ('2013-08-02','14.66'), ('2013-11-01','15.06'), ('2012-11-12','15.29'), ('2012-09-11','15.50'), ('2012-09-10','15.65'), ('2012-11-09','15.57'), ('2012-07-08','15.35'), ('2012-10-07','15.38'), ('0000-00-00','15.63'), ('2012-03-05','15.41'), ('0000-00-00','14.97'), ('2012-08-03','15.18'), ('0000-00-00','15.70'), ('2012-10-01','15.03'), ('2011-09-12','15.43'), ('2011-10-11','16.39'), ('2011-11-10','16.00'), ('2011-08-09','15.94'), ('2011-09-08','16.52'), ('2011-12-07','16.09'), ('2011-09-06','16.64'), ('2011-10-05','16.37'), ('2011-07-04','16.00'), ('2011-10-03','16.37'), ('2011-08-02','16.29'), ('2011-11-01','16.45'), ('2010-09-12','16.25'), ('2010-09-11','16.38'), ('2010-07-10','16.10'), ('2010-07-09','16.28'), ('2010-10-08','16.34'), ('2010-08-07','16.10'), ('2010-08-06','16.40'), ('2010-10-05','16.23'), ('0000-00-00','16.44'), ('2010-05-03','16.65'), ('2010-05-02','16.74'), ('2010-12-01','16.97'), ('2009-08-12','17.05'), ('2009-05-11','17.62'), ('2009-08-10','16.58'), ('2009-08-09','17.04'), ('2009-11-08','17.26'), ('2009-09-07','17.56'), ('2009-04-06','18.77'), ('2009-08-05','18.77'), ('2009-07-04','19.74'), ('2009-10-03','19.98'), ('2009-05-02','19.76'), ('0000-00-00','19.65'), ('2008-04-12','20.24'), ('2008-06-11','19.82'), ('2008-09-10','19.68'), ('2008-04-09','20.09'), ('2008-07-08','20.30'), ('2008-08-07','20.09'), ('2008-05-06','20.85'), ('2008-08-05','18.35'), ('2008-08-04','18.17'), ('2008-06-03','17.56'), ('0000-00-00','18.53'), ('2008-10-01','16.44'), ('2007-06-12','15.75'), ('2007-08-11','14.00'), ('2007-04-10','13.79'), ('2007-11-09','13.86'), ('2007-09-08','13.51'), ('2007-10-07','12.53'), ('2007-07-06','13.03');
INSERT INTO `tasas` VALUES ('2007-10-05','13.05'), ('2007-10-04','12.53'), ('2007-08-03','12.82'), ('2007-08-02','12.92'), ('2007-09-01','12.64'), ('2006-08-12','12.63'), ('2006-09-11','12.46'), ('2006-05-10','12.32'), ('2006-07-09','12.43'), ('2006-08-08','12.29'), ('2006-11-07','11.94'), ('2006-06-06','12.15'), ('2006-04-05','12.11'), ('2006-06-04','12.31'), ('2006-09-03','12.76'), ('2006-09-02','12.71'), ('2006-10-01','12.79'), ('2005-09-12','12.95'), ('2005-08-11','13.18'), ('2005-11-10','12.71'), ('2005-08-09','13.33'), ('2005-10-08','13.53'), ('2005-12-07','13.47'), ('2005-09-06','14.02'), ('2005-10-05','13.96'), ('2005-12-04','14.44'), ('2005-09-03','14.21'), ('2005-10-02','14.93'), ('2005-11-01','15.25'), ('2004-09-12','14.51'), ('2004-09-11','15.02'), ('2004-07-10','15.20'), ('2004-07-09','15.01'), ('2004-10-08','14.45'), ('2004-08-07','14.92'), ('2004-08-06','15.40'), ('2004-11-05','15.22'), ('0000-00-00','15.20'), ('2004-10-03','14.46'), ('2004-10-02','15.09'), ('0000-00-00','16.83'), ('2003-09-12','17.67'), ('2003-11-11','16.87'), ('2003-09-10','19.99'), ('2003-09-09','18.74'), ('2003-07-08','18.49'), ('2003-09-07','18.33'), ('2003-11-06','20.12'), ('2003-08-05','24.52'), ('2003-08-04','25.05'), ('2003-11-03','29.12'), ('2003-12-02','31.63'), ('2003-10-01','29.99'), ('2002-11-12','30.47'), ('2005-07-03','29.44'), ('2002-11-10','26.92'), ('0000-00-00','26.92'), ('0000-00-00','29.90'), ('2002-10-07','31.64'), ('2002-12-06','36.20'), ('2002-10-05','43.59'), ('2002-10-04','50.10'), ('0000-00-00','39.10'), ('0000-00-00','28.91'), ('0000-00-00','23.57'), ('0000-00-00','21.51'), ('0000-00-00','25.59'), ('0000-00-00','27.62'), ('0000-00-00','19.69'), ('0000-00-00','18.54'), ('0000-00-00','18.50'), ('0000-00-00','16.56'), ('0000-00-00','16.05'), ('0000-00-00','16.17'), ('0000-00-00','16.17'), ('0000-00-00','17.34'), ('0000-00-00','17.76'), ('2001-08-01','17.70'), ('0000-00-00','17.43'), ('0000-00-00','18.84'), ('0000-00-00','19.28'), ('0000-00-00','18.81'), ('0000-00-00','21.31'), ('0000-00-00','19.04'), ('0000-00-00','20.49'), ('0000-00-00','19.78'), ('0000-00-00','22.10'), ('0000-00-00','23.76'), ('0000-00-00','22.69'), ('0000-00-00','22.95'), ('0000-00-00','21.74'), ('0000-00-00','21.12'), ('0000-00-00','21.03'), ('0000-00-00','23.00'), ('0000-00-00','24.84'), ('0000-00-00','24.80'), ('0000-00-00','27.26'), ('0000-00-00','30.55'), ('0000-00-00','35.07'), ('1999-02-03','36.73');
INSERT INTO `tasas` VALUES ('0000-00-00','39.72'), ('1999-05-01','42.71'), ('0000-00-00','47.07'), ('0000-00-00','63.84'), ('0000-00-00','51.28'), ('0000-00-00','53.25'), ('0000-00-00','38.79'), ('0000-00-00','38.18'), ('0000-00-00','32.27'), ('0000-00-00','30.84'), ('0000-00-00','29.46'), ('0000-00-00','21.51'), ('0000-00-00','21.14'), ('0000-00-00','18.72'), ('0000-00-00','18.34'), ('0000-00-00','18.73'), ('0000-00-00','19.86'), ('0000-00-00','19.43'), ('0000-00-00','20.53');
INSERT INTO `trabajador` VALUES ('1','16686671  ','Sorangel Adriana                                                                                    ','Cardoza Parra                                                                                       ','1','1','                                                                                                                                                                                                                                                          ','            ','            ','            ','                                                  ','                                                  ','15051.15','1','10,11,12,13,14                                                                                                                                                                                                                                            ','2','2012-11-01 00:00:00','2016-05-11 00:00:00','2','0','V','6','MARACAY                                           ','                                                                                                    ','1'), ('2','15737581  ','Yuneyla Yulitza                                                                                     ','Rojas Acosta                                                                                        ','1','1','                                                                                                                                                                                                                                                          ','            ','            ','            ','                                                  ','                                                  ','15051.15','1','10,11,12,13,14                                                                                                                                                                                                                                            ','2','2014-09-16 00:00:00','2016-05-11 00:00:00','2','0','V','6','MARACAY                                           ','                                                                                                    ','1'), ('3','12168411  ','Jenny Antonieta                                       ','Mora Parra                                  ','2','1','','','','','','','15051.15','1','10,11,12,13,14                                                                                                                                                                                                                                            ','2','2004-10-15 00:00:00','2016-05-11 00:00:00','2','0','V','6','MARACAY   ','','1'), ('4','12567671  ','Glenda Yubiry                                                                                       ','Maldonado Herrera                                                                                   ','3','1','                                                                                                                                                                                                                                                          ','            ','            ','            ','                                                  ','                                                  ','15051.15','1','10,11,12,13,14                                                                                                                                                                                                                                            ','2','2014-09-16 00:00:00','2016-05-11 00:00:00','2','0','V','6','MARACAY                                           ','                                                                                                    ','1'), ('5','16596837  ','Lugbel Evelyn                                                                                       ','Monasterios Torrevilla                                                                              ','4','1','                                                                                                                                                                                                                                                          ','            ','            ','            ','                                                  ','                                                  ','15051.15','1','10,11,12,13,14                                                                                                                                                                                                                                            ','2','2015-09-16 00:00:00','2016-05-11 00:00:00','2','0','V','6','MARACAY                                           ','                                                                                                    ','1'), ('6','16434922  ','Angela Maria                                                                                        ','Albarran Acosta                                                                                     ','5','1','                                                                                                                                                                                                                                                          ','            ','            ','            ','                                                  ','                                                  ','15051.15','1','10,11,12,13,14                                                                                                                                                                                                                                            ','2','2010-10-01 00:00:00','2016-05-11 00:00:00','2','0','V','6','MARACAY                                           ','                                                                                                    ','1'), ('7','12309756  ','Karina Elena                                          ','Ramirez                                     ','7','1','                                                                                                                                                                                                                                                          ','','','','','','15051.15','1','10,11,12,13,14                                                                                                                                                                                                                                            ','2','2010-10-01 00:00:00','2016-05-11 00:00:00','2','0','V','6','MARACAY   ','','1'), ('8','12572101  ','Zilahi Del Valle                                      ','Salinas Liendo                              ','8','1','','','','','','','15051.15','1','10,11,12,13,14                                                                                                                                                                                                                                            ','2','2010-10-01 00:00:00','2016-05-11 00:00:00','2','0','V','6','MARACAY   ','','1'), ('9','7194968   ','Yudith Josefina                                       ','Barreto Salas                               ','9','2','                                                                                                                                                                                                                                                          ','','','','','','15051.15','1','10,11,12,13,14                                                                                                                                                                                                                                            ','1','1995-09-15 00:00:00','2016-05-11 00:00:00','1','0','V','6','MARACAY   ','','1'), ('10','16686689  ','Neysis Carina                                         ','Guerra Nava                                 ','10','2','                                                                                                                                                                                                                                                          ','','','','','','15051.15','1','10,11,12,13,14                                                                                                                                                                                                                                            ','2','2010-10-01 00:00:00','2016-05-11 00:00:00','2','0','V','6','MARACAY   ','','1'), ('11','13721823  ','Francis Yolenny                                       ','Manama Medina                               ','11','3','','','','','','','15051.15','1','10,11,12,13,14                                                                                                                                                                                                                                            ','2','2007-09-15 00:00:00','2016-05-11 00:00:00','2','0','V','6','MARACAY   ','','1'), ('12','16207606  ','Reinaldo Jose                                         ','Vasquez Oropeza                             ','12','1','                                                                                                                                                                                                                                                          ','','','','','','15051.15','1','10,11,12,13,14                                                                                                                                                                                                                                            ','1','2016-05-11 00:00:00','2013-10-15 00:00:00','2','0','V','6','MARACAY   ','','1'), ('13','5602563   ','Maria Cristina                                        ','Gonzalez Moreno                             ','13','2','','','','','','','15051.15','1','10,11,12,13,14                                                                                                                                                                                                                                            ','1','1988-10-15 00:00:00','1988-10-15 00:00:00','1','0','V','6','MARACAY   ','','1'), ('14','3848150   ','Orfelia Del Carmen                                    ','Bolívar Barat                               ','13','2','','','','','','','15051.15','1','10,11,12,13,14                                                                                                                                                                                                                                            ','2','1988-10-15 00:00:00','1988-10-15 00:00:00','2','0','V','6','MARACAY   ','','1'), ('15','6374071   ','Antonio Jose                                          ','Pimentel                                    ','14','2','','','','','','','15051.15','3','10,11,12,13,14                                                                                                                                                                                                                                            ','1','2010-10-15 00:00:00','2010-10-15 00:00:00','2','0','V','1','MARACAY   ','','1');
INSERT INTO `usermenu` VALUES ('A1','Inicio','0',NULL,NULL,NULL,'1','1','4','0','0','0','1'), ('A11','Nuevo','4','A1',NULL,NULL,'1','1','4','0','0','0','2'), ('A1','Inicio','0',NULL,'',NULL,'1','1','5','1','0','0','3'), ('A11','Nuevo','4','A1','',NULL,'1','1','5','1','0','0','4'), ('A111','Trabajador','4','A11','AbrirWindow','WinTrabajador','1',NULL,'5','1','0','0','5'), ('A112','Cargo','4','A11','abrirform(\'frmcargo\')','WinCargo','1',NULL,'5','1','0','0','6'), ('A113','Departamento','4','A11','abrirform(\'frmdepartamento\')','WinDepartamento','1',NULL,'5','1','0','0','7'), ('A117','Conceptos','4','A11','AbrirWindow','WinConceptos,1','1',NULL,'4','1','1','1','8'), ('A118','Variables','4','A11','AbrirWindow','WinVarsys,1','1',NULL,'4','1','1','1','9'), ('A119','Procedimientos','4','A11','AbrirWindow','WinProcedures,1','1',NULL,'4','1','1','1','10'), ('A12','Configuracion','4','A1',NULL,NULL,'1','1','4','0','0','0','11'), ('A13','Salir','4','A1','Cerrarapi',NULL,'1',NULL,'4','0','0','0','12'), ('A31','Usuarios','4','A12','AbrirWindow','WinUser,1','1',NULL,'4','1','1','1','13'), ('A32','Empresa','4','A12','AbrirWindow','WinEmpresa,1','1',NULL,'4','1','1','1','14'), ('B1','Proceso','0',NULL,NULL,NULL,'1','1','4','0','0','0','15'), ('A114','Nomina','4','A11','AbrirWindow','WinNomina,1','1',NULL,'4','1','1','1','16'), ('B11','Generar Nomina','4','B1','AbrirWindow','WinNominagen,1','1',NULL,'4','1','1','1','17'), ('C1','Utilidades','0',NULL,NULL,NULL,'1','1','4','0','0','0','18'), ('D1','Ayuda','0',NULL,NULL,NULL,'1','1','4','0','0','0','19'), ('A114','Nomina','4','A11','abrirform(\'frmnomina\')',NULL,'1',NULL,'5','1','0','0','20'), ('A115','Jornada','4','A11','abrirform(\'frmjornada\')',NULL,'1',NULL,'5','1','0','0','21'), ('A116','\\-','4','A11','',NULL,'2',NULL,'5','1','0','0','22'), ('A117','Conceptos','4','A11','abrirform(\'frmconceptos\')',NULL,'1',NULL,'5','1','0','0','23'), ('A118','Variables','4','A11','abrirform(\'frmvarsys\')',NULL,'1',NULL,'5','1','0','0','24'), ('A119','Procedimientos','4','A11','abrirform(\'frmprocedures\')',NULL,'1',NULL,'5','1','0','0','25'), ('A12','Configuracion','4','A1','',NULL,'1','1','5','1','0','0','26'), ('A13','Salir','4','A1','QUIT',NULL,'1',NULL,'5','1','0','0','27'), ('A111','Trabajador','4','A11','AbrirWindow','WinTrabajador,0','1',NULL,'4','1','1','1','28'), ('A112','Cargo','4','A11','AbrirWindow','WinCargo,1','1',NULL,'4','1','1','1','29'), ('A31','Usuarios','4','A12','abrirform(\'frmuser\')',NULL,'1',NULL,'5','1','0','0','30'), ('A115','Jornada','4','A11','AbrirWindow','WinJornada,1','1',NULL,'4','1','1','1','31'), ('A116','\\-','4','A11',NULL,NULL,'2',NULL,'4','0','0','0','32'), ('A32','Empresa','4','A12','abrirform(\'frmempresa\')',NULL,'1',NULL,'5','1','0','0','33'), ('B1','Proceso','0','','',NULL,'1','1','5','1','0','0','34'), ('B11','Generar Nomina','4','B1','Abrirform(\'nominagen\')',NULL,'1',NULL,'5','1','1','1','35'), ('A113','Departamento','4','A11','AbrirWindow','WinDepartamento,1','1',NULL,'4','1','1','1','36'), ('C1','Utilidades','0','','',NULL,'1','1','5','1','0','0','37'), ('C11','Modulo Prestaciones Sociales','4','C1','AbrirWindow','WinPres,1','1',NULL,'4','0','0','0','38'), ('C11','Modulo Prestaciones Sociales','4','C1','abrirform(\'frmpresfinal\')',NULL,'1',NULL,'5','1','0','0','39'), ('C12','Control de Asistencia','4','C1','abrirform(\'frmctrlasistencia\')',NULL,'1',NULL,'5','1','0','0','40'), ('C12','Control de Asistencia','4','C1','AbrirWindow','WinCtrlAsis,1','1',NULL,'4','0','0','0','41'), ('D1','Ayuda','0','','',NULL,'1','1','5','1','0','0','42');
INSERT INTO `users` VALUES ('3','KELLY LEAL          ','2','1234        ','KELLY LEAL                                        ','17199074  ','1985-09-04','23 DE ENERO                                                                                         ','04123469881         ','1','2015-10-12'), ('4','MASTER              ','1','master      ','RICHARD AGUIRRE                                   ','17273874  ','1983-08-31','23 DE ENERO                                                                                         ','04267319135         ','1','2015-10-12');
INSERT INTO `usertype` VALUES ('1','Adminitradores'), ('2','Limitado');
INSERT INTO `variables` VALUES ('vDF                 ','Decimal','11','0                                                 ','0'), ('vDFI                ','Decimal','11','','0'), ('vDIASDES            ','Int                 ','11','0                                                 ','0'), ('vDLAB               ','Decimal','11','0                                                 ','0'), ('vHR                 ','Decimal','11','0                                                 ','0'), ('vVHIJOS             ','Decimal','11','0                                                 ','1');
INSERT INTO `varsys` VALUES ('1','12168411   ',NULL,'15.00',NULL,NULL,NULL,NULL);
