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
-- Table structure for table `categories_master`
--

DROP TABLE IF EXISTS `categories_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_master` (
  `objid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `mne` char(3) NOT NULL,
  `credTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastModifiedTime` datetime DEFAULT NULL,
  `creUserObjId` varchar(45) NOT NULL DEFAULT '81999',
  `lastModifiedUserObjid` varchar(45) DEFAULT NULL,
  `isActive` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`objid`),
  UNIQUE KEY `mne_UNIQUE` (`mne`),
  KEY `category_cre_user_idx` (`creUserObjId`),
  KEY `category_mod_user_idx` (`lastModifiedUserObjid`),
  CONSTRAINT `category_cre_user` FOREIGN KEY (`creUserObjId`) REFERENCES `users` (`objid`),
  CONSTRAINT `category_mod_user` FOREIGN KEY (`lastModifiedUserObjid`) REFERENCES `users` (`objid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='No API needed as this is a fixed master table.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_master`
--

LOCK TABLES `categories_master` WRITE;
/*!40000 ALTER TABLE `categories_master` DISABLE KEYS */;
INSERT INTO `categories_master` VALUES (4,'Laptop','','LAP','2021-09-21 16:58:05',NULL,'1e7af301-93b2-4220-b73b-4c498b21fd31',NULL,_binary ''),(5,'Camera',NULL,'CAM','2021-09-21 16:59:14',NULL,'1e7af301-93b2-4220-b73b-4c498b21fd31',NULL,_binary ''),(6,'Tablet',NULL,'TAB','2021-09-21 16:59:14',NULL,'1e7af301-93b2-4220-b73b-4c498b21fd31',NULL,_binary ''),(7,'Gaming',NULL,'GAM','2021-09-21 16:59:14',NULL,'1e7af301-93b2-4220-b73b-4c498b21fd31',NULL,_binary ''),(8,'Storage Device',NULL,'STD','2021-09-21 16:59:14',NULL,'1e7af301-93b2-4220-b73b-4c498b21fd31',NULL,_binary ''),(9,'Entertainment',NULL,'ENT','2021-09-21 16:59:14',NULL,'1e7af301-93b2-4220-b73b-4c498b21fd31',NULL,_binary '');
/*!40000 ALTER TABLE `categories_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-22 17:47:47
