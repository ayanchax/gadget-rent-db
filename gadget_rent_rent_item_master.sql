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
-- Table structure for table `rent_item_master`
--

DROP TABLE IF EXISTS `rent_item_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rent_item_master` (
  `objid` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `image` varchar(245) NOT NULL,
  `modelnumber` varchar(45) DEFAULT NULL,
  `operating_system` varchar(45) DEFAULT NULL,
  `processor` varchar(45) DEFAULT NULL,
  `ram_memory` varchar(45) DEFAULT NULL,
  `rom_memory` varchar(45) DEFAULT NULL,
  `screen_size` varchar(45) DEFAULT NULL,
  `camera_type` int DEFAULT NULL,
  `storage_device_type` int DEFAULT NULL,
  `gaming_version_number` varchar(45) DEFAULT NULL,
  `credTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastModifiedTime` datetime DEFAULT NULL,
  `creUserObjid` varchar(45) NOT NULL DEFAULT '81999',
  `lastModifiedUserObjid` varchar(45) DEFAULT NULL,
  `isActive` bit(1) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `product_code_idx` (`product_id`),
  KEY `item_master_cre_user_idx` (`creUserObjid`),
  KEY `item_master_mod_user_idx` (`lastModifiedUserObjid`),
  CONSTRAINT `item_master_cre_user` FOREIGN KEY (`creUserObjid`) REFERENCES `users` (`objid`),
  CONSTRAINT `item_master_mod_user` FOREIGN KEY (`lastModifiedUserObjid`) REFERENCES `users` (`objid`),
  CONSTRAINT `product_code` FOREIGN KEY (`product_id`) REFERENCES `product_master` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent_item_master`
--

LOCK TABLES `rent_item_master` WRITE;
/*!40000 ALTER TABLE `rent_item_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `rent_item_master` ENABLE KEYS */;
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
