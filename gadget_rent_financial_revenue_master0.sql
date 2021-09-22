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
-- Table structure for table `financial_revenue_master`
--

DROP TABLE IF EXISTS `financial_revenue_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financial_revenue_master` (
  `objid` int NOT NULL AUTO_INCREMENT,
  `target_revenue_entity_id` int NOT NULL COMMENT 'this column is the target revenue rent_id',
  `revenue_received` bit(1) NOT NULL DEFAULT b'0',
  `total_rev_amount` double NOT NULL,
  `partner_delivery_charge` double DEFAULT NULL,
  `misc_charges` double DEFAULT NULL,
  `currency_id` int NOT NULL,
  `credTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `creUserObjid` varchar(45) NOT NULL,
  `lastModifiedUserObjid` varchar(45) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `rent_id_idx` (`target_revenue_entity_id`),
  KEY `currency_id_idx` (`currency_id`),
  KEY `revenue_cre_user_idx` (`creUserObjid`),
  KEY `revenue_mod_user_idx` (`lastModifiedUserObjid`),
  CONSTRAINT `currency_id` FOREIGN KEY (`currency_id`) REFERENCES `currency_master` (`objid`),
  CONSTRAINT `rent_id` FOREIGN KEY (`target_revenue_entity_id`) REFERENCES `rent_item_detail_master` (`objid`),
  CONSTRAINT `revenue_cre_user` FOREIGN KEY (`creUserObjid`) REFERENCES `users` (`objid`),
  CONSTRAINT `revenue_mod_user` FOREIGN KEY (`lastModifiedUserObjid`) REFERENCES `users` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financial_revenue_master`
--

LOCK TABLES `financial_revenue_master` WRITE;
/*!40000 ALTER TABLE `financial_revenue_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `financial_revenue_master` ENABLE KEYS */;
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
