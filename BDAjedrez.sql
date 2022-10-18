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

CREATE TABLE `tamaño` (
  `idTamaño` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTamaño`),
  UNIQUE KEY `idTamaño_UNIQUE` (`idTamaño`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `tipopieza` (
  `idTipoPieza` int(11) NOT NULL AUTO_INCREMENT,
  `Descripciondepieza` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipoPieza`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

CREATE TABLE `pieza` (
  `idPieza` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) DEFAULT NULL,
  `Color_idColor` int(11) NOT NULL,
  `TipoPieza_idTipoPieza` int(11) NOT NULL,
  `Tamaño_idTamaño` int(11) NOT NULL,
  `Material_idMaterial` int(11) NOT NULL,
  PRIMARY KEY (`idPieza`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`),
  KEY `fk_Pieza_Color_idx` (`Color_idColor`),
  KEY `fk_Pieza_TipoPieza1_idx` (`TipoPieza_idTipoPieza`),
  KEY `fk_Pieza_Tamaño1_idx` (`Tamaño_idTamaño`),
  KEY `fk_Pieza_Material1_idx` (`Material_idMaterial`),
  CONSTRAINT `fk_Pieza_Color` FOREIGN KEY (`Color_idColor`) REFERENCES `color` (`idColor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pieza_Material1` FOREIGN KEY (`Material_idMaterial`) REFERENCES `material` (`idMaterial`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pieza_Tamaño1` FOREIGN KEY (`Tamaño_idTamaño`) REFERENCES `tamaño` (`idTamaño`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pieza_TipoPieza1` FOREIGN KEY (`TipoPieza_idTipoPieza`) REFERENCES `tipopieza` (`idTipoPieza`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

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
INSERT INTO `tamaño` (`idTamaño`,`Descripcion`) VALUES (1,'Chico');
INSERT INTO `tamaño` (`idTamaño`,`Descripcion`) VALUES (2,'Grande');

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
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (1,'Reina Blanca Chica de Plastico',1,1,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (2,'Reina Negra Chica de Plastico',2,1,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (3,'Rey Blanco Chico de Plastico',1,2,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (4,'Rey Negro Chico de Plástico',2,2,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (5,'Alfil Blanco Chico de Plástico',1,4,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (6,'Alfil Blanco Chico de Plástico',1,4,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (7,'Alfil Negro Chico de Plástico',2,4,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (8,'Alfil Negro Chico de Plástico',2,4,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (9,'Torre Blanca Chica de Plástico',1,3,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (10,'Torre Blanca Chica de Plástico',1,3,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (11,'Torre Negra Chica de Plástico',2,3,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (12,'Torre Negra Chica de Plástico',2,3,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (13,'Caballo Blanco Chico de Plástico',1,5,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (14,'Caballo Blanco Chico de Plástico',1,5,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (15,'Caballo Negro Chico de Plástico',2,5,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (16,'Caballo Negro Chico de Plástico',2,5,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (17,'Peón Blanco de Plástico',1,6,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (18,'Peón Blanco de Plástico',1,6,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (19,'Peón Blanco de Plástico',1,6,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (20,'Peón Blanco de Plástico',1,6,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (21,'Peón Blanco de Plástico',1,6,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (22,'Peón Blanco de Plástico',1,6,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (23,'Peón Blanco de Plástico',1,6,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (24,'Peón Blanco de Plástico',1,6,1,1);
INSERT INTO `pieza` (`idPieza`,`Descripcion`,`Color_idColor`,`TipoPieza_idTipoPieza`,`Tamaño_idTamaño`,`Material_idMaterial`) VALUES (32,'Pieza',2,6,1,1);


