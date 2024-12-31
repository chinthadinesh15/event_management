-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: event
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `event_name` varchar(45) NOT NULL,
  `host_id` int NOT NULL,
  `date` date NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'Not Yet Approved',
  `rating` int DEFAULT NULL,
  `feedback` varchar(45) DEFAULT NULL,
  `loc_id` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Wedding Ceremony',1,'2024-09-16','Cancelled',NULL,NULL,1),(2,'Wedding Ceremony',1,'2024-09-17','Not Accepted',NULL,NULL,1),(3,'Birthday Party',1,'2024-09-18','Cancelled',NULL,NULL,1),(4,'India Wedding',1,'2024-09-26','Completed',NULL,NULL,1),(5,'Birthday Party',1,'2024-09-19','Cancelled',NULL,NULL,1),(6,'Night Party',1,'2024-09-20','Cancelled',NULL,NULL,1),(7,'Wedding Ceremony',1,'2024-10-04','Completed',NULL,NULL,1),(8,'Birthday Party',1,'2024-09-18','Cancelled',NULL,NULL,1),(9,'Birthday Party',1,'2024-09-18','Cancelled',NULL,NULL,1),(10,'Night Party',1,'2024-09-25','Not Accepted',NULL,NULL,1),(11,'India Wedding',1,'2024-09-20','Not Accepted',NULL,NULL,1),(12,'Birthday Party',1,'2024-09-20','Completed',NULL,NULL,4),(13,'Birthday Party',1,'2024-09-28','Cancelled',NULL,NULL,3),(14,'Birthday Party',11,'2024-10-03','Completed',NULL,NULL,4),(15,'Birthday Party',1,'2024-10-30','Cancelled',NULL,NULL,4),(16,'Birthday Party',15,'2025-01-09','Accepted',NULL,NULL,3);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-31 14:42:21
