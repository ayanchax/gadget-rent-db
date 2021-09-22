-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: gadget_rent
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `rent_status`
--

DROP TABLE IF EXISTS `rent_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rent_status` (
  `objid` int NOT NULL AUTO_INCREMENT,
  `statusCd` int NOT NULL,
  `statusText` varchar(45) NOT NULL,
  `credTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `creUserObjId` varchar(45) NOT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifiedUserObjid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `cre_user_objid_idx` (`creUserObjId`),
  KEY `mod_user_objid_idx` (`lastModifiedUserObjid`),
  CONSTRAINT `cre_user_objid` FOREIGN KEY (`creUserObjId`) REFERENCES `users` (`objid`),
  CONSTRAINT `mod_user_objid` FOREIGN KEY (`lastModifiedUserObjid`) REFERENCES `users` (`objid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent_status`
--

LOCK TABLES `rent_status` WRITE;
/*!40000 ALTER TABLE `rent_status` DISABLE KEYS */;
INSERT INTO `rent_status` VALUES (3,1,'Available','2021-09-21 16:43:54','1e7af301-93b2-4220-b73b-4c498b21fd31',NULL,NULL),(4,2,'Unavailable','2021-09-21 16:43:54','1e7af301-93b2-4220-b73b-4c498b21fd31',NULL,NULL);
/*!40000 ALTER TABLE `rent_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-22 17:47:48
