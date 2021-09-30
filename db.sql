-- MySQL dump 10.19  Distrib 10.3.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: var_one
-- ------------------------------------------------------
-- Server version	10.3.29-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AUTO`
--

DROP TABLE IF EXISTS `AUTO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTO` (
  `ID` int(35) NOT NULL AUTO_INCREMENT,
  `Name` char(50) DEFAULT NULL,
  `Marka` char(55) DEFAULT NULL,
  `Year_Create` date DEFAULT NULL,
  `COLOR` char(20) DEFAULT NULL,
  `Category` char(5) DEFAULT NULL,
  `Price` float(7,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTO`
--

LOCK TABLES `AUTO` WRITE;
/*!40000 ALTER TABLE `AUTO` DISABLE KEYS */;
INSERT INTO `AUTO` VALUES (1,'TaZik','NissaL',NULL,' Brown','B',100.70);
/*!40000 ALTER TABLE `AUTO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMERS`
--

DROP TABLE IF EXISTS `CUSTOMERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMERS` (
  `ID` int(35) NOT NULL AUTO_INCREMENT,
  `FIO` char(50) DEFAULT NULL,
  `Passport_data` char(55) DEFAULT NULL,
  `Address` char(50) DEFAULT NULL,
  `City` char(20) DEFAULT NULL,
  `Age` int(100) DEFAULT NULL,
  `Sex` char(15) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMERS`
--

LOCK TABLES `CUSTOMERS` WRITE;
/*!40000 ALTER TABLE `CUSTOMERS` DISABLE KEYS */;
INSERT INTO `CUSTOMERS` VALUES (1,'Karmanin Juri Bidrosovich','6364 19056','st. Msterskaya','Mstera',99,'Net');
/*!40000 ALTER TABLE `CUSTOMERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MARKA_AUTO`
--

DROP TABLE IF EXISTS `MARKA_AUTO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MARKA_AUTO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Marka` char(50) DEFAULT NULL,
  `Country` char(55) DEFAULT NULL,
  `Zavod` char(35) DEFAULT NULL,
  `Address` char(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MARKA_AUTO`
--

LOCK TABLES `MARKA_AUTO` WRITE;
/*!40000 ALTER TABLE `MARKA_AUTO` DISABLE KEYS */;
INSERT INTO `MARKA_AUTO` VALUES (1,'NissaL','Japon','KirBitch','Chicha street');
/*!40000 ALTER TABLE `MARKA_AUTO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SALE_AUTO`
--

DROP TABLE IF EXISTS `SALE_AUTO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SALE_AUTO` (
  `ID` int(35) NOT NULL AUTO_INCREMENT,
  `Date_sale` date DEFAULT NULL,
  `Worker` char(55) DEFAULT NULL,
  `Auto` char(50) DEFAULT NULL,
  `Customer` char(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SALE_AUTO`
--

LOCK TABLES `SALE_AUTO` WRITE;
/*!40000 ALTER TABLE `SALE_AUTO` DISABLE KEYS */;
INSERT INTO `SALE_AUTO` VALUES (1,NULL,'De Bi Lly','NissaL TaZik','Karmanin Juri Bidrosovich');
/*!40000 ALTER TABLE `SALE_AUTO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WORKER`
--

DROP TABLE IF EXISTS `WORKER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WORKER` (
  `ID` int(35) NOT NULL AUTO_INCREMENT,
  `FIO` char(50) DEFAULT NULL,
  `Stage` int(70) DEFAULT NULL,
  `Money` float(7,2) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WORKER`
--

LOCK TABLES `WORKER` WRITE;
/*!40000 ALTER TABLE `WORKER` DISABLE KEYS */;
INSERT INTO `WORKER` VALUES (1,'De Bi Lly',20,100.00);
/*!40000 ALTER TABLE `WORKER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-30  6:30:50
