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
-- Table structure for table `rent_item_detail_master`
--

DROP TABLE IF EXISTS `rent_item_detail_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rent_item_detail_master` (
  `objid` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `rent_number_of_days` int NOT NULL COMMENT 'This field specifies the number of days the rentee wants to rent a particular item for. While on rent, no fields can be edited in this table. ',
  `rent_per_day_price` int NOT NULL,
  `rented_by_user_objid` varchar(245) NOT NULL,
  `rented_to_user_objid` varchar(245) DEFAULT NULL,
  `current_rent_status` int NOT NULL,
  `last_rented_on` datetime DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  `credTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastModifiedTime` datetime DEFAULT NULL,
  `creUserObjid` varchar(45) NOT NULL DEFAULT '81999',
  `lastModifiedUserObjid` varchar(45) DEFAULT NULL,
  `purpose_of_rent` longtext,
  `manual_pickup` char(1) DEFAULT '0',
  `pickup_otp_from_rentee` varchar(45) NOT NULL,
  `delivery_otp_to_renter` varchar(45) NOT NULL,
  `pickup_otp_from_renter` varchar(45) NOT NULL,
  `delivery_otp_to_rentee` varchar(45) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `item_code_idx` (`item_id`),
  KEY `rent_sts_idx` (`current_rent_status`),
  KEY `currency_code_idx` (`currency_id`),
  KEY `user_id_idx` (`creUserObjid`,`lastModifiedUserObjid`,`rented_by_user_objid`),
  KEY `mod_user_idx` (`lastModifiedUserObjid`),
  KEY `rented_by_idx` (`rented_by_user_objid`),
  KEY `rented_to_idx` (`rented_to_user_objid`),
  CONSTRAINT `currency_code` FOREIGN KEY (`currency_id`) REFERENCES `currency_master` (`objid`),
  CONSTRAINT `item_code` FOREIGN KEY (`item_id`) REFERENCES `rent_item_master` (`objid`),
  CONSTRAINT `mod_user` FOREIGN KEY (`lastModifiedUserObjid`) REFERENCES `users` (`objid`),
  CONSTRAINT `rent_sts` FOREIGN KEY (`current_rent_status`) REFERENCES `rent_status` (`objid`),
  CONSTRAINT `rented_by` FOREIGN KEY (`rented_by_user_objid`) REFERENCES `users` (`objid`),
  CONSTRAINT `rented_to` FOREIGN KEY (`rented_to_user_objid`) REFERENCES `users` (`objid`),
  CONSTRAINT `user` FOREIGN KEY (`creUserObjid`) REFERENCES `users` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Once a item is rented it cannot be brought back to the rentee until the rent period is over.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent_item_detail_master`
--

LOCK TABLES `rent_item_detail_master` WRITE;
/*!40000 ALTER TABLE `rent_item_detail_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `rent_item_detail_master` ENABLE KEYS */;
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
