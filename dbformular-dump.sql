-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: formular
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `feedback` varchar(1000) DEFAULT NULL,
  `canton` varchar(50) DEFAULT NULL,
  `postalcode` varchar(4) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Beispiel200','Nachname','ein.beispiel@beispiel.ch','2022-02-22','Ein Feedback','Bern','5604','Schweiz'),(2,'Beispiel8','Nachname','ein.beispiel@beispiel.ch','2022-02-22','Ein Feedback','Bern','5604','Schweiz'),(3,'Beispiel9','Nachname','ein.beispiel@beispiel.ch','2022-02-22','Ein Feedback','Bern','5604','Schweiz'),(4,'Beispiel17','Nachname','ein.beispiel@beispiel.ch','2022-02-22','Ein Feedback','Bern','5604','Schweiz'),(5,'Beispiel18','Nachname','ein.beispiel@beispiel.ch','2022-02-22','Ein Feedback','Bern','5604','Schweiz'),(6,'Beispiel19','Nachname','ein.beispiel@beispiel.ch','2022-02-22','Ein Feedback','Bern','5604','Schweiz'),(7,'beispiel1500','keineahnung','kein.ea@hnung.ch','2012-12-12','war gut','keineahnung','5050','keineahnung'),(8,'beispiel1500','keineahnung','kein.ea@hnung.ch','2012-12-12','war gut','keineahnung','5050','keineahnung'),(9,'beispiel1522','keineahnung','kein.ea@hnung.ch','2012-12-12','war gut','keineahnung','5050','keineahnung'),(10,'beispiel1522','keineahnung','kein.ea@hnung.ch','2012-12-12','war gut','keineahnung','5050','keineahnung');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-26  5:24:36
