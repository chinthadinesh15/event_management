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
-- Table structure for table `events1`
--

DROP TABLE IF EXISTS `events1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events1` (
  `event_id` int unsigned NOT NULL AUTO_INCREMENT,
  `event_image` varchar(16000) NOT NULL,
  `event_name` varchar(45) NOT NULL,
  `event_cost` int unsigned NOT NULL,
  `event_details` varchar(150) NOT NULL,
  `event_categories` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events1`
--

LOCK TABLES `events1` WRITE;
/*!40000 ALTER TABLE `events1` DISABLE KEYS */;
INSERT INTO `events1` VALUES (4,'https://i.pinimg.com/originals/a9/da/67/a9da672561bd0d5142f944d7244d7379.jpg','Wedding Ceremony',200000,'Two hearts, one promise—forever.” A succinct wedding ceremony encapsulating love, commitment, and lifelong union. ???','Wedding Ceremony','2024-09-16 14:09:42',''),(5,'https://th.bing.com/th?id=OIP.7QiYkXVcL9hNP9kpe23zjgHaE8&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2','Birthday Party',20000,'sdfghjkjhg','Cheers to Grownup','2024-09-16 14:31:59',''),(6,'https://e0.pxfuel.com/wallpapers/595/55/desktop-wallpaper-night-club-club-party.jpg','Night Party',50000,'ertuiopkjhb','Night Party','2024-09-16 14:33:53',''),(7,'https://th.bing.com/th/id/OIP.24lXYYge5FKccwgGBx3MMwHaEC?w=331&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7','Sports Event',50000,'oiodfjbuhb nxchjbludi','Sports Event','2024-09-16 14:35:41',''),(8,'https://th.bing.com/th/id/OIP.1v9IvSxsRYr65OzreahYaAHaE1?w=306&h=201&c=7&r=0&o=5&dpr=1.3&pid=1.7','India Wedding',200000,'wufbee iweknkwehibb','Inida Wedding','2024-09-16 14:37:46','');
/*!40000 ALTER TABLE `events1` ENABLE KEYS */;
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
