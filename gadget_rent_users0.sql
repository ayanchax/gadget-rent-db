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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `objid` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL COMMENT 'userid will be a valid email id which will be an uneditable field',
  `password` varchar(500) NOT NULL COMMENT 'password is mandatory. No third party sign up allowed.',
  `thirdPartySignIn` bit(1) NOT NULL DEFAULT b'0',
  `isActive` bit(1) NOT NULL DEFAULT b'1',
  `name` varchar(99) NOT NULL,
  `st_address_ln1` varchar(255) NOT NULL,
  `st_address_ln2` varchar(45) DEFAULT NULL,
  `st_address_ln3` varchar(45) DEFAULT NULL,
  `city` varchar(45) NOT NULL,
  `pincode` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL DEFAULT 'India',
  `mobile_number` varchar(45) NOT NULL,
  `isAccountVerified` bit(1) DEFAULT b'0',
  `accountVerificationLink` varchar(255) DEFAULT NULL,
  `credTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastModifiedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `userid_UNIQUE` (`userid`),
  UNIQUE KEY `objid_UNIQUE` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1e7af301-93b2-4220-b73b-4c498b21fd31','system.user@grent.in','U2FsdGVkX1/FkA7s9ntXD81FNN3R8v3F69Ce1HcRcwc=',_binary '\0',_binary '\0','System User','System St','Not Deleteable','Restricted','Kolkata','000000','West Bengal','INDIA','1234567890',_binary '\0','https://gadget-rent/user/verification/1e7af301-93b2-4220-b73b-4c498b21fd31','2021-09-21 16:01:30','2021-09-22 15:14:25'),('9d65eaf4-22c8-4d1a-8505-8d8154acc3e7','matt@outlook.com','U2FsdGVkX1+J8aKrSpdOmbEatMn4TIr1WLrbD5v0S7Y=',_binary '\0',_binary '','Matt Simpson','Dacres Lane','Park St','Near Wine Shop','Kolkata','700190','West Bengal','INDIA','7890123674',_binary '\0','https://gadget-rent/user/verification/9d65eaf4-22c8-4d1a-8505-8d8154acc3e7','2021-09-22 15:16:40',NULL),('ca912411-c53f-4bbe-8179-067076719048','matty@outlook.com','U2FsdGVkX18rAvZgRhNKCOzOhs9Om5tHklQFIONfLnk=',_binary '\0',_binary '','Matt Simpson','Dacres Lane','Park St','Near Wine Shop','Kolkata','700190','West Bengal','INDIA','7890123674',_binary '\0','https://gadget-rent/user/verification/ca912411-c53f-4bbe-8179-067076719048','2021-09-22 15:17:48','2021-09-22 15:18:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
