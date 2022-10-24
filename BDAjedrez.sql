CREATE DATABASE `ajedrez` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE ajedrez;

CREATE TABLE `color` (
  `idColor` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idColor`),
  UNIQUE KEY `idColor_UNIQUE` (`idColor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `material` (
  `idMaterial` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMaterial`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `tamanio` (
  `idTamanio` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTamanio`),
  UNIQUE KEY `idTamanio_UNIQUE` (`idTamanio`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `tipopieza` (
  `idTipoPieza` int(11) NOT NULL AUTO_INCREMENT,
  `Descripciondepieza` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipoPieza`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

CREATE TABLE `pieza` (
  `idPieza` int unsigned NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) DEFAULT NULL,
  `idColor` int NOT NULL,
  `idTipoPieza` int NOT NULL,
  `idTamanio` int NOT NULL,
  `idMaterial` int NOT NULL,
  `Posicion` varchar(45) DEFAULT NULL,
  `Capacidad_Desplazamiento` varchar(45) DEFAULT NULL,
  `Conducta` varchar(45) DEFAULT NULL,
  `Velocidad` varchar(45) DEFAULT NULL,
  `Capacidad_Ataque` varchar(45) DEFAULT NULL,
  `Fecha_Creacion` date DEFAULT NULL,
  PRIMARY KEY (`idPieza`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`),
  KEY `fk_Pieza_Color_idx` (`idColor`),
  KEY `fk_Pieza_TipoPieza1_idx` (`idTipoPieza`),
  KEY `fk_Pieza_Tamanio1_idx` (`idTamanio`),
  KEY `fk_Pieza_Material1_idx` (`idMaterial`),
  CONSTRAINT `fk_Pieza_Color` FOREIGN KEY (`idColor`) REFERENCES `color` (`idColor`),
  CONSTRAINT `fk_Pieza_Material1` FOREIGN KEY (`idMaterial`) REFERENCES `material` (`idMaterial`),
  CONSTRAINT `fk_Pieza_Tamanio1` FOREIGN KEY (`idTamanio`) REFERENCES `tamanio` (`idTamanio`),
  CONSTRAINT `fk_Pieza_TipoPieza1` FOREIGN KEY (`idTipoPieza`) REFERENCES `tipopieza` (`idTipoPieza`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;

/*
-- Query: select * from color
LIMIT 0, 1000

-- Date: 2019-10-21 18:50
*/
INSERT INTO `color` (`idColor`,`Descripcion`) VALUES (1,'Blanco');
INSERT INTO `color` (`idColor`,`Descripcion`) VALUES (2,'Negro');


/*
-- Query: select * from material
LIMIT 0, 1000

-- Date: 2019-10-21 18:50
*/
INSERT INTO `material` (`idMaterial`,`Descripcion`) VALUES (1,'Plastico');
INSERT INTO `material` (`idMaterial`,`Descripcion`) VALUES (2,'Madera');


/*
-- Query: select * from tamaño
LIMIT 0, 1000

-- Date: 2019-10-21 18:51
*/
INSERT INTO `tamanio` (`idTamanio`,`Descripcion`) VALUES (1,'Chico');
INSERT INTO `tamanio` (`idTamanio`,`Descripcion`) VALUES (2,'Grande');

/*
-- Query: select * from tipopieza
LIMIT 0, 1000

-- Date: 2019-10-21 18:58
*/
INSERT INTO `tipopieza` (`idTipoPieza`,`Descripciondepieza`) VALUES (1,'Reina');
INSERT INTO `tipopieza` (`idTipoPieza`,`Descripciondepieza`) VALUES (2,'Rey');
INSERT INTO `tipopieza` (`idTipoPieza`,`Descripciondepieza`) VALUES (3,'Torre');
INSERT INTO `tipopieza` (`idTipoPieza`,`Descripciondepieza`) VALUES (4,'Alfil');
INSERT INTO `tipopieza` (`idTipoPieza`,`Descripciondepieza`) VALUES (5,'Caballo');
INSERT INTO `tipopieza` (`idTipoPieza`,`Descripciondepieza`) VALUES (6,'Peon');

/*
-- Query: select * from pieza
LIMIT 0, 1000

-- Date: 2019-10-21 18:53
*/
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (1,'Reina Blanca Chica de Plastico',1,1,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (2,'Reina Negra Chica de Plastico',2,1,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (3,'Rey Blanco Chico de Plastico',1,2,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (4,'Rey Negro Chico de Plástico',2,2,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (5,'Alfil Blanco Chico de Plástico',1,4,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (6,'Alfil Blanco Chico de Plástico',1,4,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (7,'Alfil Negro Chico de Plástico',2,4,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (8,'Alfil Negro Chico de Plástico',2,4,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (9,'Torre Blanca Chica de Plástico',1,3,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (10,'Torre Blanca Chica de Plástico',1,3,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (11,'Torre Negra Chica de Plástico',2,3,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (12,'Torre Negra Chica de Plástico',2,3,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (13,'Caballo Blanco Chico de Plástico',1,5,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (14,'Caballo Blanco Chico de Plástico',1,5,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (15,'Caballo Negro Chico de Plástico',2,5,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (16,'Caballo Negro Chico de Plástico',2,5,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (17,'Peón Blanco de Plástico',1,6,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (18,'Peón Blanco de Plástico',1,6,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (19,'Peón Blanco de Plástico',1,6,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (20,'Peón Blanco de Plástico',1,6,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (21,'Peón Blanco de Plástico',1,6,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (22,'Peón Blanco de Plástico',1,6,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (23,'Peón Blanco de Plástico',1,6,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (24,'Peón Blanco de Plástico',1,6,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`idColor`,`idTipoPieza`,`idTamanio`,`idMaterial`) VALUES (32,'Pieza',2,6,1,1);


