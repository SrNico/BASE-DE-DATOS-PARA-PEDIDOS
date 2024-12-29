-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: sisviansa
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `caja`
--

DROP TABLE IF EXISTS `caja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caja` (
  `NroCaja` int NOT NULL,
  `TiempoVencimiento` time NOT NULL,
  PRIMARY KEY (`NroCaja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caja`
--

LOCK TABLES `caja` WRITE;
/*!40000 ALTER TABLE `caja` DISABLE KEYS */;
/*!40000 ALTER TABLE `caja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `NroCliente` int NOT NULL AUTO_INCREMENT,
  `Autorizacion` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Mail` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Telefono` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Direccion` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`NroCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (3,'Si','casrlos@gmail.com','456456','lusidjiasd'),(4,'si','ajsdas@gmail.com','156456456','por ahi'),(5,'No','luciaV@gmail.com','096325685','Juna paullier 2446'),(6,'','tuviaja@gmail.com','098691002','tu mama');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comun`
--

DROP TABLE IF EXISTS `comun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comun` (
  `NroCliente` int NOT NULL AUTO_INCREMENT,
  `Ci` int NOT NULL,
  `Nombre` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Apellido` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`NroCliente`),
  CONSTRAINT `NroCliente2` FOREIGN KEY (`NroCliente`) REFERENCES `cliente` (`NroCliente`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comun`
--

LOCK TABLES `comun` WRITE;
/*!40000 ALTER TABLE `comun` DISABLE KEYS */;
INSERT INTO `comun` VALUES (3,456456,'carlos','carlos'),(5,89566587,'Lucia','Villegas'),(6,5485976,'Putoelquelee','elquelee');
/*!40000 ALTER TABLE `comun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conduce`
--

DROP TABLE IF EXISTS `conduce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conduce` (
  `EstadoEnvio` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Tarifa_Envio_Zona` int NOT NULL,
  `NroVehiculo` int NOT NULL,
  PRIMARY KEY (`EstadoEnvio`),
  KEY `NroVehiculo_idx` (`NroVehiculo`),
  CONSTRAINT `EstadoEnvio` FOREIGN KEY (`EstadoEnvio`) REFERENCES `estados` (`EstadosPedido`),
  CONSTRAINT `NroVehiculo` FOREIGN KEY (`NroVehiculo`) REFERENCES `vehiculos` (`NroVehiculo`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conduce`
--

LOCK TABLES `conduce` WRITE;
/*!40000 ALTER TABLE `conduce` DISABLE KEYS */;
/*!40000 ALTER TABLE `conduce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `NombreDepartamento` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`NombreDepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `divide`
--

DROP TABLE IF EXISTS `divide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `divide` (
  `NroZona` int NOT NULL,
  `NombreDepartamento` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NroSucursal` int NOT NULL,
  `NroCliente` int NOT NULL,
  `NroVehiculo` int NOT NULL,
  `EstadoEnvio` int NOT NULL,
  KEY `NroZona1_idx` (`NroZona`),
  KEY `NombreDepartamento1_idx` (`NombreDepartamento`),
  KEY `NroSucursal_idx` (`NroSucursal`),
  KEY `NroCliente_idx` (`NroCliente`),
  KEY `NroVehiculo1_idx` (`NroVehiculo`),
  KEY `EstadoEnvio_idx` (`EstadoEnvio`),
  CONSTRAINT `NombreDepartamento1` FOREIGN KEY (`NombreDepartamento`) REFERENCES `departamentos` (`NombreDepartamento`),
  CONSTRAINT `NroCliente` FOREIGN KEY (`NroCliente`) REFERENCES `cliente` (`NroCliente`),
  CONSTRAINT `NroSucursal` FOREIGN KEY (`NroSucursal`) REFERENCES `sucursales` (`NroSucursal`),
  CONSTRAINT `NroVehiculo1` FOREIGN KEY (`NroVehiculo`) REFERENCES `vehiculos` (`NroVehiculo`),
  CONSTRAINT `NroZona1` FOREIGN KEY (`NroZona`) REFERENCES `zonas` (`NroZona`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divide`
--

LOCK TABLES `divide` WRITE;
/*!40000 ALTER TABLE `divide` DISABLE KEYS */;
/*!40000 ALTER TABLE `divide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `NroCliente` int NOT NULL AUTO_INCREMENT,
  `RUT` int NOT NULL,
  `NombreEmpresa` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`NroCliente`),
  CONSTRAINT `NroCliente1` FOREIGN KEY (`NroCliente`) REFERENCES `cliente` (`NroCliente`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (4,354156123,'si señoir');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envasado`
--

DROP TABLE IF EXISTS `envasado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `envasado` (
  `Cantidad_Viandas` int NOT NULL,
  `NroCaja` int NOT NULL,
  `InfoMenu` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Nom_Vianda` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Cantidad_Viandas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envasado`
--

LOCK TABLES `envasado` WRITE;
/*!40000 ALTER TABLE `envasado` DISABLE KEYS */;
/*!40000 ALTER TABLE `envasado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estados` (
  `EstadosPedido` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`EstadosPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES ('Desechada'),('Devuelto'),('En Produccion'),('En Stock'),('Entregado'),('Envasado'),('Solicitado');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadosproduccion`
--

DROP TABLE IF EXISTS `estadosproduccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadosproduccion` (
  `IdEstadoProduccion` int NOT NULL,
  `EstadoProduccion` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`IdEstadoProduccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadosproduccion`
--

LOCK TABLES `estadosproduccion` WRITE;
/*!40000 ALTER TABLE `estadosproduccion` DISABLE KEYS */;
INSERT INTO `estadosproduccion` VALUES (1,NULL),(2,NULL),(3,NULL),(4,NULL),(5,NULL),(6,NULL),(7,NULL);
/*!40000 ALTER TABLE `estadosproduccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `Usuario` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Contraseña` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Rol` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Usuario`),
  KEY `RolUsuariosLog_idx` (`Rol`),
  CONSTRAINT `RolUsuariosLog` FOREIGN KEY (`Rol`) REFERENCES `roles_usuarios` (`Roles`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('admin','admin','Administrador'),('carlos','123','Comun'),('hola','123','Comun'),('Lucia','lucia','Comun'),('Silver','auditoredash3','JefeCocina');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `InfoMenu` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `IdMenu` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IdMenu`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES ('Celíaco',1),('Comun',2),('Ovolácteovegetariano',3),('Ovovegetariano',4),('Vegano',5),('Vegetariano',6);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packs`
--

DROP TABLE IF EXISTS `packs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packs` (
  `IdPack` int NOT NULL AUTO_INCREMENT,
  `NombrePack` varchar(45) DEFAULT NULL,
  `InfoMenu` varchar(45) DEFAULT NULL,
  `IdMenu` int DEFAULT NULL,
  `StockReal` int DEFAULT NULL,
  `NroCaja` int DEFAULT NULL,
  `NroPedido` int DEFAULT NULL,
  `IdProduccion` int DEFAULT NULL,
  PRIMARY KEY (`IdPack`),
  KEY `IdMenu_idx` (`IdMenu`),
  KEY `IdEstadoProduccion_idx` (`IdProduccion`),
  KEY `NroPedido_idx` (`NroPedido`),
  KEY `StockReal_idx` (`StockReal`),
  KEY `NroCaja_idx` (`NroCaja`),
  CONSTRAINT `IdEstadoProduccion` FOREIGN KEY (`IdProduccion`) REFERENCES `estadosproduccion` (`IdEstadoProduccion`) ON DELETE CASCADE,
  CONSTRAINT `IdMenu` FOREIGN KEY (`IdMenu`) REFERENCES `menu` (`IdMenu`) ON DELETE CASCADE,
  CONSTRAINT `NroCaja` FOREIGN KEY (`NroCaja`) REFERENCES `caja` (`NroCaja`) ON DELETE CASCADE,
  CONSTRAINT `NroPedido` FOREIGN KEY (`NroPedido`) REFERENCES `pedido` (`NroPedido`) ON DELETE CASCADE,
  CONSTRAINT `StockReal` FOREIGN KEY (`StockReal`) REFERENCES `stock` (`StockReal`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packs`
--

LOCK TABLES `packs` WRITE;
/*!40000 ALTER TABLE `packs` DISABLE KEYS */;
INSERT INTO `packs` VALUES (1,'Pack Mensual','',6,NULL,NULL,NULL,NULL),(2,'Pack Semanal','',6,NULL,NULL,NULL,NULL),(3,'Pack P Vegetariano','',6,NULL,NULL,NULL,NULL),(4,'Pack Mensual','',1,NULL,NULL,NULL,NULL),(5,'Pack Semanal','',1,NULL,NULL,NULL,NULL),(6,'Pack P Celiaco','',1,NULL,NULL,NULL,NULL),(7,'Pack Mensual',NULL,2,NULL,NULL,NULL,NULL),(8,'Pack Semanal',NULL,2,NULL,NULL,NULL,NULL),(9,'Pack P Común',NULL,2,NULL,NULL,NULL,NULL),(10,'Pack Mensual',NULL,3,NULL,NULL,NULL,NULL),(11,'Pack Semanal',NULL,3,NULL,NULL,NULL,NULL),(12,'Pack P Ovolacteovegetariano',NULL,3,NULL,NULL,NULL,NULL),(13,'Pack Mensual',NULL,4,NULL,NULL,NULL,NULL),(14,'Pack Semanal',NULL,4,NULL,NULL,NULL,NULL),(15,'Pack P Ovovegetariano',NULL,4,NULL,NULL,NULL,NULL),(16,'Pack Mensual',NULL,5,NULL,NULL,NULL,NULL),(17,'Pack Semanal',NULL,5,NULL,NULL,NULL,NULL),(18,'Pack P Vegano',NULL,5,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `packs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packvianda`
--

DROP TABLE IF EXISTS `packvianda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packvianda` (
  `IdPack` int NOT NULL,
  `IdVianda` int NOT NULL,
  PRIMARY KEY (`IdPack`,`IdVianda`),
  KEY `IdVianda` (`IdVianda`),
  CONSTRAINT `packvianda_ibfk_1` FOREIGN KEY (`IdPack`) REFERENCES `packs` (`IdPack`),
  CONSTRAINT `packvianda_ibfk_2` FOREIGN KEY (`IdVianda`) REFERENCES `vianda` (`IdVianda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packvianda`
--

LOCK TABLES `packvianda` WRITE;
/*!40000 ALTER TABLE `packvianda` DISABLE KEYS */;
INSERT INTO `packvianda` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(2,12),(1,13),(2,13),(1,14),(2,14),(1,15),(2,15),(1,16),(2,16),(1,17),(2,17),(1,18),(2,18),(1,19),(2,19),(1,20),(2,20),(1,21),(2,21),(1,22),(2,22),(1,23),(2,23),(1,24),(2,24),(1,25),(2,25),(1,26),(2,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(4,53),(4,54),(4,55),(4,56),(4,57),(4,58),(4,59),(4,60),(5,60),(4,61),(5,61),(4,62),(5,62),(4,63),(5,63),(4,64),(5,64),(4,65),(5,65),(4,66),(5,66),(4,67),(5,67),(4,68),(5,68),(4,69),(5,69),(4,70),(5,70),(10,71),(10,72),(10,73),(10,74),(10,75),(11,75),(10,76),(11,76),(10,77),(11,77),(10,78),(11,78),(10,79),(11,79),(10,80),(11,80),(10,81),(11,81),(16,86),(16,87),(16,88),(16,89),(16,90),(16,91),(16,92),(16,93),(17,93),(16,94),(17,94),(16,95),(17,95),(16,96),(17,96),(16,97),(17,97),(16,98),(17,98),(16,99),(17,99),(16,100),(17,100),(16,101),(17,101),(7,102),(7,103),(7,104),(7,105),(7,106),(7,107),(7,108),(7,109),(7,110),(7,111),(8,111),(7,112),(8,112),(7,113),(8,113),(7,114),(8,114),(7,115),(8,115),(7,116),(8,116),(7,117),(8,117),(7,118),(8,118),(7,119),(8,119),(7,120),(8,120),(7,121),(8,121),(7,122),(8,122),(7,123),(8,123),(7,124),(8,124);
/*!40000 ALTER TABLE `packvianda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `NroPedido` int NOT NULL,
  PRIMARY KEY (`NroPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_usuarios`
--

DROP TABLE IF EXISTS `roles_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_usuarios` (
  `Roles` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Roles`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_usuarios`
--

LOCK TABLES `roles_usuarios` WRITE;
/*!40000 ALTER TABLE `roles_usuarios` DISABLE KEYS */;
INSERT INTO `roles_usuarios` VALUES ('Administrador'),('AtencionAlPublico'),('Comun'),('Empresa'),('Gerencia'),('Informatico'),('JefeCocina');
/*!40000 ALTER TABLE `roles_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `StockReal` int NOT NULL,
  `IdMenu` int DEFAULT NULL,
  `IdPack` int DEFAULT NULL,
  `StockMaximo` int NOT NULL DEFAULT '20',
  `StockMinimo` int NOT NULL DEFAULT '5',
  PRIMARY KEY (`StockReal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursales`
--

DROP TABLE IF EXISTS `sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursales` (
  `NroSucursal` int NOT NULL,
  `Direccion` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CantidadVehiculos` int NOT NULL,
  `CantidadCocinas` int NOT NULL,
  PRIMARY KEY (`NroSucursal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursales`
--

LOCK TABLES `sucursales` WRITE;
/*!40000 ALTER TABLE `sucursales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sucursales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporta`
--

DROP TABLE IF EXISTS `transporta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transporta` (
  `NroPedido` int NOT NULL,
  `NroVehiculo` int NOT NULL,
  PRIMARY KEY (`NroPedido`),
  KEY `NroVehiculo0_idx` (`NroVehiculo`),
  CONSTRAINT `NroPedido0` FOREIGN KEY (`NroPedido`) REFERENCES `pedido` (`NroPedido`),
  CONSTRAINT `NroVehiculo0` FOREIGN KEY (`NroVehiculo`) REFERENCES `vehiculos` (`NroVehiculo`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporta`
--

LOCK TABLES `transporta` WRITE;
/*!40000 ALTER TABLE `transporta` DISABLE KEYS */;
/*!40000 ALTER TABLE `transporta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculos`
--

DROP TABLE IF EXISTS `vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculos` (
  `NroVehiculo` int NOT NULL,
  `Capacidad` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `BoletoEnvio` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Zona_Cobertura` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `EstadoEnvio` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`NroVehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculos`
--

LOCK TABLES `vehiculos` WRITE;
/*!40000 ALTER TABLE `vehiculos` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vianda`
--

DROP TABLE IF EXISTS `vianda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vianda` (
  `Nombre_Vianda` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `IdVianda` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IdVianda`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vianda`
--

LOCK TABLES `vianda` WRITE;
/*!40000 ALTER TABLE `vianda` DISABLE KEYS */;
INSERT INTO `vianda` VALUES ('Arroz integral',1),('Pure de papas',2),('Papas Fritas(al horno)',3),('Boniatos al horno(con o sin especias)',4),('Mini Broshet de vegetales',5),('Wok de vegetales',6),('Pure de calabasa',7),('Pure mixto',8),('Creepes de vegetales',9),('Crepes de zanahoria rellenos de espinaca',10),('Milanesas de soja',11),('Hamburgesas de lentejas',12),('Gazpacho light',13),('Ratatouille',14),('Molde De Berenjenas',15),('Arrollado de ricota y espinaca',16),('Lasaña de bernjenas y espinaca',17),('Lasaña de berenjenas y zapallitos',18),('Verduras gratinadas y requeson',19),('Budin de zapallo',20),('Budin de repollo',21),('Budin de ricota y brocoli',22),('Tarta de vegetales',23),('Tarta de zapallo',24),('Tarta capresse',25),('Pizza de salvado',26),('Pizza de calabaza',27),('Pizza de berenjenas',28),('Fugazzeta',29),('Flan',30),('Tiramizu',31),('Crema de vainilla',32),('Chaja',33),('Isla flotante',34),('tzatziki griego',53),('Vasitos de crema de queso manchego',54),('fainá',55),('Salmorejo de aguacate',56),('Guacamole casero',57),('Hummus',58),('Pan de queso minero brasileño',59),('Tortilla vaga',60),('Pan sin gluten casero',61),('Bombones de queso de cabra',62),('Tortos de maíz con revuelto de morcilla',63),('Lentejas estofadas sin grasas',64),('Ensalada de garbanzos tostados con mijo',65),('Yakisoba con carne y verduras',66),('Capuccino de setas y queso',67),('Pastel de maíz o chipa guazu',68),('Flanes de tomates secos',69),('Arroz al horno',70),('Pizza socca con harina de garbanzos',71),('Estofado de lentejas con pimentón',72),('Lasaña de seitán con verduras',73),('Focaccia de ajo',74),('Emparedados de Nopales',75),('Tortitas de Brócoli',76),('Tinga de nopales',77),('Lasaña de verduras',78),('Ensalada fría de garbanzo',79),('Espaguetis de calabacín',80),('Berenjena rellena de verduras',81),('Hamburguesas de Lenteja/Quinoa',82),('Hamburguesas de Garbanzo/Chía',83),('Hamburguesas Primavera/Mijo',84),('Hamburguesas Parrilleras',85),('Mjlanesas de Soja/Orégano',86),('Milanesas de Avena/Ajo y Perejil',87),('Milanesas de Seitán',88),('Empanadas de Carne de soja',89),('Empanadas de Quinoa',90),('Nuggets sabor Queso',91),('Tarta de Carne de soja',92),('Tarta de Vegetales',93),('Falafel de Garbanzo',94),('Falafel de Lenteja',95),('Pamplona',96),('Filetes de Seitán',97),('Leonesa Vegan',98),('Chori Vegan',99),('Galletas de avena',100),('Aros de cebolla',101),('Pollo al horno básico',102),('Calabacines rellenos de pollo y piquillos',103),(' Helado cremoso de plátano',104),('Crema essau de lentejas',105),('Atún a la plancha',106),('asadillo manchego',107),(' Trufas de aguacate',108),('Merluza en salsa verde',109),(' Filete de halibut o fletán rebozado',110),('Guiso',111),('Fideos con tuco y queso',112),('Pastas',113),('Milanesas con arroz/pure',114),('Torta de chocolate',115),('Torta de Jamon y queso',116),('Torta de vainilla',117),('Pastel de carne',118),('Asado',119),('Chorizo a la parrilla',120),('Picada familiar',121),('Sopas',122),('Pollo al curry',123),('Crema de yogur',124);
/*!40000 ALTER TABLE `vianda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zonas`
--

DROP TABLE IF EXISTS `zonas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zonas` (
  `NroZona` int NOT NULL,
  PRIMARY KEY (`NroZona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zonas`
--

LOCK TABLES `zonas` WRITE;
/*!40000 ALTER TABLE `zonas` DISABLE KEYS */;
/*!40000 ALTER TABLE `zonas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-27 20:18:34
