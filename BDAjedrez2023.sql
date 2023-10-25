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
  `Comportamiento` varchar(45) DEFAULT NULL,
  `Movimiento` varchar(45) DEFAULT NULL,  
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

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'Blanco'),(2,'Negro');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (1,'Plastico'),(2,'Madera');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pieza`
--

LOCK TABLES `pieza` WRITE;
/*!40000 ALTER TABLE `pieza` DISABLE KEYS */;
INSERT INTO `pieza` VALUES (33,'Rey Tenue y Postrero',2,2,1,1,'E1',NULL,NULL,NULL),(34,'Rey Tenue y Postrero',2,2,1,1,'E1',NULL,NULL,NULL),(35,'Rey Tenue y Postrero',1,2,1,1,'E8',NULL,NULL,NULL),(36,'Reina Armada y Encarnizada',2,1,1,1,'D1',NULL,NULL,NULL),(37,'Reina Armada y Encarnizada',1,1,1,1,'D8',NULL,NULL,NULL),(38,'Alfil Oblicuo y ',2,4,1,1,'C1',NULL,NULL,NULL),(39,'Alfil Oblicuo y ',2,4,1,1,'F1',NULL,NULL,NULL),(40,'Alfil Oblicuo y ',1,4,1,1,'C8',NULL,NULL,NULL),(41,'Alfil Oblicuo y ',1,4,1,1,'F8',NULL,NULL,NULL),(42,'Caballo Ligero y ',2,5,1,1,'B1',NULL,NULL,NULL),(43,'Caballo Ligero y ',2,5,1,1,'G1',NULL,NULL,NULL),(44,'Caballo Ligero y ',1,5,1,1,'B8',NULL,NULL,NULL),(45,'Caballo Ligero y ',1,5,1,1,'G8',NULL,NULL,NULL),(46,'Torre Directa y Homerica',2,3,1,1,'A1',NULL,NULL,NULL),(47,'Torre Directa y Homerica',2,3,1,1,'H1',NULL,NULL,NULL),(48,'Torre Directa y Homerica',1,3,1,1,'A8',NULL,NULL,NULL),(49,'Torre Directa y Homerica',1,3,1,1,'H8',NULL,NULL,NULL),(50,'Peon Ladinos y Agresores',2,6,1,1,'A2',NULL,NULL,NULL),(51,'Peon Ladinos y Agresores',2,6,1,1,'B2',NULL,NULL,NULL),(52,'Peon Ladinos y Agresores',2,6,1,1,'C2',NULL,NULL,NULL),(53,'Peon Ladinos y Agresores',2,6,1,1,'D2',NULL,NULL,NULL),(54,'Peon Ladinos y Agresores',2,6,1,1,'E2',NULL,NULL,NULL),(55,'Peon Ladinos y Agresores',2,6,1,1,'F2',NULL,NULL,NULL),(56,'Peon Ladinos y Agresores',2,6,1,1,'G2',NULL,NULL,NULL),(57,'Peon Ladinos y Agresores',2,6,1,1,'H2',NULL,NULL,NULL),(58,'Peon Ladinos y Agresores',2,6,1,1,'A2',NULL,NULL,NULL),(59,'Peon Ladinos y Agresores',2,6,1,1,'B2',NULL,NULL,NULL),(60,'Peon Ladinos y Agresores',2,6,1,1,'C2',NULL,NULL,NULL),(61,'Peon Ladinos y Agresores',2,6,1,1,'D2',NULL,NULL,NULL),(62,'Peon Ladinos y Agresores',2,6,1,1,'E2',NULL,NULL,NULL),(63,'Peon Ladinos y Agresores',2,6,1,1,'F2',NULL,NULL,NULL),(64,'Peon Ladinos y Agresores',2,6,1,1,'G2',NULL,NULL,NULL),(65,'Peon Ladinos y Agresores',2,6,1,1,'H2',NULL,NULL,NULL),(66,'Peon Ladinos y Agresores',2,6,1,1,'A2',NULL,NULL,NULL),(67,'Peon Ladinos y Agresores',2,6,1,1,'B2',NULL,NULL,NULL),(68,'Peon Ladinos y Agresores',2,6,1,1,'C2',NULL,NULL,NULL),(69,'Peon Ladinos y Agresores',2,6,1,1,'D2',NULL,NULL,NULL),(70,'Peon Ladinos y Agresores',2,6,1,1,'E2',NULL,NULL,NULL),(71,'Peon Ladinos y Agresores',2,6,1,1,'F2',NULL,NULL,NULL),(72,'Peon Ladinos y Agresores',2,6,1,1,'G2',NULL,NULL,NULL),(73,'Peon Ladinos y Agresores',2,6,1,1,'H2',NULL,NULL,NULL),(74,'Peon Ladinos y Agresores',2,6,1,1,'A2',NULL,NULL,NULL),(75,'Peon Ladinos y Agresores',2,6,1,1,'B2',NULL,NULL,NULL),(76,'Peon Ladinos y Agresores',2,6,1,1,'C2',NULL,NULL,NULL),(77,'Peon Ladinos y Agresores',2,6,1,1,'D2',NULL,NULL,NULL),(78,'Peon Ladinos y Agresores',2,6,1,1,'E2',NULL,NULL,NULL),(79,'Peon Ladinos y Agresores',2,6,1,1,'F2',NULL,NULL,NULL),(80,'Peon Ladinos y Agresores',2,6,1,1,'G2',NULL,NULL,NULL),(81,'Peon Ladinos y Agresores',2,6,1,1,'H2',NULL,NULL,NULL),(82,'Peon Ladinos y Agresores',2,6,1,1,'A2',NULL,NULL,NULL),(83,'Peon Ladinos y Agresores',2,6,1,1,'B2',NULL,NULL,NULL),(84,'Peon Ladinos y Agresores',2,6,1,1,'C2',NULL,NULL,NULL),(85,'Peon Ladinos y Agresores',2,6,1,1,'D2',NULL,NULL,NULL),(86,'Peon Ladinos y Agresores',2,6,1,1,'E2',NULL,NULL,NULL),(87,'Peon Ladinos y Agresores',2,6,1,1,'F2',NULL,NULL,NULL),(88,'Peon Ladinos y Agresores',2,6,1,1,'G2',NULL,NULL,NULL),(89,'Peon Ladinos y Agresores',2,6,1,1,'H2',NULL,NULL,NULL),(90,'Peon Ladinos y Agresores',2,6,1,1,'A2',NULL,NULL,NULL),(91,'Peon Ladinos y Agresores',2,6,1,1,'B2',NULL,NULL,NULL),(92,'Peon Ladinos y Agresores',2,6,1,1,'C2',NULL,NULL,NULL),(93,'Peon Ladinos y Agresores',2,6,1,1,'D2',NULL,NULL,NULL),(94,'Peon Ladinos y Agresores',2,6,1,1,'E2',NULL,NULL,NULL),(95,'Peon Ladinos y Agresores',2,6,1,1,'F2',NULL,NULL,NULL),(96,'Peon Ladinos y Agresores',2,6,1,1,'G2',NULL,NULL,NULL),(97,'Peon Ladinos y Agresores',2,6,1,1,'H2',NULL,NULL,NULL),(98,'Peon Ladinos y Agresores',2,6,1,1,'A2',NULL,NULL,NULL),(99,'Peon Ladinos y Agresores',2,6,1,1,'B2',NULL,NULL,NULL),(100,'Peon Ladinos y Agresores',2,6,1,1,'C2',NULL,NULL,NULL),(101,'Peon Ladinos y Agresores',2,6,1,1,'D2',NULL,NULL,NULL),(102,'Peon Ladinos y Agresores',2,6,1,1,'E2',NULL,NULL,NULL),(103,'Peon Ladinos y Agresores',2,6,1,1,'F2',NULL,NULL,NULL),(104,'Peon Ladinos y Agresores',2,6,1,1,'G2',NULL,NULL,NULL),(105,'Peon Ladinos y Agresores',2,6,1,1,'H2',NULL,NULL,NULL),(106,'Peon Ladinos y Agresores',2,6,1,1,'A2',NULL,NULL,NULL),(107,'Peon Ladinos y Agresores',2,6,1,1,'B2',NULL,NULL,NULL),(108,'Peon Ladinos y Agresores',2,6,1,1,'C2',NULL,NULL,NULL),(109,'Peon Ladinos y Agresores',2,6,1,1,'D2',NULL,NULL,NULL),(110,'Peon Ladinos y Agresores',2,6,1,1,'E2',NULL,NULL,NULL),(111,'Peon Ladinos y Agresores',2,6,1,1,'F2',NULL,NULL,NULL),(112,'Peon Ladinos y Agresores',2,6,1,1,'G2',NULL,NULL,NULL),(113,'Peon Ladinos y Agresores',2,6,1,1,'H2',NULL,NULL,NULL),(114,'Peon Ladinos y Agresores',1,6,1,1,'A7',NULL,NULL,NULL),(115,'Peon Ladinos y Agresores',1,6,1,1,'B7',NULL,NULL,NULL),(116,'Peon Ladinos y Agresores',1,6,1,1,'C7',NULL,NULL,NULL),(117,'Peon Ladinos y Agresores',1,6,1,1,'D7',NULL,NULL,NULL),(118,'Peon Ladinos y Agresores',1,6,1,1,'E7',NULL,NULL,NULL),(119,'Peon Ladinos y Agresores',1,6,1,1,'F7',NULL,NULL,NULL),(120,'Peon Ladinos y Agresores',1,6,1,1,'G7',NULL,NULL,NULL),(121,'Peon Ladinos y Agresores',1,6,1,1,'H7',NULL,NULL,NULL),(122,'Peon Ladinos y Agresores',1,6,1,1,'A7',NULL,NULL,NULL),(123,'Peon Ladinos y Agresores',1,6,1,1,'B7',NULL,NULL,NULL),(124,'Peon Ladinos y Agresores',1,6,1,1,'C7',NULL,NULL,NULL),(125,'Peon Ladinos y Agresores',1,6,1,1,'D7',NULL,NULL,NULL),(126,'Peon Ladinos y Agresores',1,6,1,1,'E7',NULL,NULL,NULL),(127,'Peon Ladinos y Agresores',1,6,1,1,'F7',NULL,NULL,NULL),(128,'Peon Ladinos y Agresores',1,6,1,1,'G7',NULL,NULL,NULL),(129,'Peon Ladinos y Agresores',1,6,1,1,'H7',NULL,NULL,NULL),(130,'Peon Ladinos y Agresores',1,6,1,1,'A7',NULL,NULL,NULL),(131,'Peon Ladinos y Agresores',1,6,1,1,'B7',NULL,NULL,NULL),(132,'Peon Ladinos y Agresores',1,6,1,1,'C7',NULL,NULL,NULL),(133,'Peon Ladinos y Agresores',1,6,1,1,'D7',NULL,NULL,NULL),(134,'Peon Ladinos y Agresores',1,6,1,1,'E7',NULL,NULL,NULL),(135,'Peon Ladinos y Agresores',1,6,1,1,'F7',NULL,NULL,NULL),(136,'Peon Ladinos y Agresores',1,6,1,1,'G7',NULL,NULL,NULL),(137,'Peon Ladinos y Agresores',1,6,1,1,'H7',NULL,NULL,NULL),(138,'Peon Ladinos y Agresores',1,6,1,1,'A7',NULL,NULL,NULL),(139,'Peon Ladinos y Agresores',1,6,1,1,'B7',NULL,NULL,NULL),(140,'Peon Ladinos y Agresores',1,6,1,1,'C7',NULL,NULL,NULL),(141,'Peon Ladinos y Agresores',1,6,1,1,'D7',NULL,NULL,NULL),(142,'Peon Ladinos y Agresores',1,6,1,1,'E7',NULL,NULL,NULL),(143,'Peon Ladinos y Agresores',1,6,1,1,'F7',NULL,NULL,NULL),(144,'Peon Ladinos y Agresores',1,6,1,1,'G7',NULL,NULL,NULL),(145,'Peon Ladinos y Agresores',1,6,1,1,'H7',NULL,NULL,NULL),(146,'Peon Ladinos y Agresores',1,6,1,1,'A7',NULL,NULL,NULL),(147,'Peon Ladinos y Agresores',1,6,1,1,'B7',NULL,NULL,NULL),(148,'Peon Ladinos y Agresores',1,6,1,1,'C7',NULL,NULL,NULL),(149,'Peon Ladinos y Agresores',1,6,1,1,'D7',NULL,NULL,NULL),(150,'Peon Ladinos y Agresores',1,6,1,1,'E7',NULL,NULL,NULL),(151,'Peon Ladinos y Agresores',1,6,1,1,'F7',NULL,NULL,NULL),(152,'Peon Ladinos y Agresores',1,6,1,1,'G7',NULL,NULL,NULL),(153,'Peon Ladinos y Agresores',1,6,1,1,'H7',NULL,NULL,NULL),(154,'Peon Ladinos y Agresores',1,6,1,1,'A7',NULL,NULL,NULL),(155,'Peon Ladinos y Agresores',1,6,1,1,'B7',NULL,NULL,NULL),(156,'Peon Ladinos y Agresores',1,6,1,1,'C7',NULL,NULL,NULL),(157,'Peon Ladinos y Agresores',1,6,1,1,'D7',NULL,NULL,NULL),(158,'Peon Ladinos y Agresores',1,6,1,1,'E7',NULL,NULL,NULL),(159,'Peon Ladinos y Agresores',1,6,1,1,'F7',NULL,NULL,NULL),(160,'Peon Ladinos y Agresores',1,6,1,1,'G7',NULL,NULL,NULL),(161,'Peon Ladinos y Agresores',1,6,1,1,'H7',NULL,NULL,NULL),(162,'Peon Ladinos y Agresores',1,6,1,1,'A7',NULL,NULL,NULL),(163,'Peon Ladinos y Agresores',1,6,1,1,'B7',NULL,NULL,NULL),(164,'Peon Ladinos y Agresores',1,6,1,1,'C7',NULL,NULL,NULL),(165,'Peon Ladinos y Agresores',1,6,1,1,'D7',NULL,NULL,NULL),(166,'Peon Ladinos y Agresores',1,6,1,1,'E7',NULL,NULL,NULL),(167,'Peon Ladinos y Agresores',1,6,1,1,'F7',NULL,NULL,NULL),(168,'Peon Ladinos y Agresores',1,6,1,1,'G7',NULL,NULL,NULL),(169,'Peon Ladinos y Agresores',1,6,1,1,'H7',NULL,NULL,NULL),(170,'Peon Ladinos y Agresores',1,6,1,1,'A7',NULL,NULL,NULL),(171,'Peon Ladinos y Agresores',1,6,1,1,'B7',NULL,NULL,NULL),(172,'Peon Ladinos y Agresores',1,6,1,1,'C7',NULL,NULL,NULL),(173,'Peon Ladinos y Agresores',1,6,1,1,'D7',NULL,NULL,NULL),(174,'Peon Ladinos y Agresores',1,6,1,1,'E7',NULL,NULL,NULL),(175,'Peon Ladinos y Agresores',1,6,1,1,'F7',NULL,NULL,NULL),(176,'Peon Ladinos y Agresores',1,6,1,1,'G7',NULL,NULL,NULL),(177,'Peon Ladinos y Agresores',1,6,1,1,'H7',NULL,NULL,NULL);
/*!40000 ALTER TABLE `pieza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tamanio`
--

LOCK TABLES `tamanio` WRITE;
/*!40000 ALTER TABLE `tamanio` DISABLE KEYS */;
INSERT INTO `tamanio` VALUES (1,'Chico'),(2,'Grande');
/*!40000 ALTER TABLE `tamanio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tipopieza`
--

LOCK TABLES `tipopieza` WRITE;
/*!40000 ALTER TABLE `tipopieza` DISABLE KEYS */;
INSERT INTO `tipopieza` VALUES (1,'Reina'),(2,'Rey'),(3,'Torre'),(4,'Alfil'),(5,'Caballo'),(6,'Peon');
/*!40000 ALTER TABLE `tipopieza` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-25  0:11:46
