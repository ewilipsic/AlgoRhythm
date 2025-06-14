-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: algorhythm
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(70) NOT NULL,
  `upload_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `audiofile` varchar(64) DEFAULT NULL,
  `imagefile` varchar(64) DEFAULT NULL,
  `views` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (12,'Jazz Tunes','2025-05-11 05:50:38','uploads\\audio\\1746942638159.mp3','uploads\\images\\1746942638149.jpg',57),(13,'SuperSurvivor','2025-05-11 05:50:55','uploads\\audio\\1746942655311.mp3','uploads\\images\\1746942655310.jpeg',13),(14,'New Beginnings','2025-05-11 05:51:19','uploads\\audio\\1746942679082.mp3','uploads\\images\\1746942679082.jpg',7),(15,'Walk Around','2025-05-11 05:51:40','uploads\\audio\\1746942700071.mp3','uploads\\images\\1746942700071.jpg',3),(16,'Melody of Nature','2025-05-11 05:52:13','uploads\\audio\\1746942733070.mp3','uploads\\images\\1746942733069.jpg',3),(17,'Bliss','2025-05-11 05:54:41','uploads\\audio\\1746942881734.mp3','uploads\\images\\1746942881731.jpg',31.5),(18,'More Jazz','2025-05-11 06:22:14','uploads\\audio\\1746944534109.mp3','uploads\\images\\1746944534107.jpeg',64),(19,'Some More Jazz','2025-05-11 12:52:21','uploads\\audio\\1746967941567.mp3','uploads\\images\\1746967941560.jpeg',1),(20,'Some More Jazz Music','2025-05-11 13:00:10','uploads\\audio\\1746968410600.mp3','uploads\\images\\1746968410592.jpeg',1);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_song_authorship`
--

DROP TABLE IF EXISTS `user_song_authorship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_song_authorship` (
  `user_id` int NOT NULL,
  `song_id` int NOT NULL,
  KEY `fk_user_id` (`user_id`),
  KEY `fk_song_id` (`song_id`),
  CONSTRAINT `fk_song_id` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_song_authorship`
--

LOCK TABLES `user_song_authorship` WRITE;
/*!40000 ALTER TABLE `user_song_authorship` DISABLE KEYS */;
INSERT INTO `user_song_authorship` VALUES (4,12),(4,13),(4,14),(4,15),(4,16),(4,17),(6,18),(8,19),(9,20);
/*!40000 ALTER TABLE `user_song_authorship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `create_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `username_2` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_2` (`email`),
  UNIQUE KEY `email_3` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'tejas','tejas@example.com','testhash','2025-02-08 09:35:28'),(4,'SuperSurvivor','SuperSurvivor@gmail.com','$2b$10$LsOM7XarAbyyB7qvJesEhueJhjFOCM3AeaYUQaEoK.qUw5XUZQ1em','2025-05-06 09:40:07'),(5,'Someone','someone@gmail.com','$2b$10$eGg.kPi2unnAUZkm8RYeOeCJt7BdSsIsjyxwnpCeR85czo2NNXL/6','2025-05-06 09:51:48'),(6,'user','user@gmail.com','$2b$10$0NJH9x9ttoGrv1jcQs/cAOuV1kD37DOz1HYJ4Sm4ZWfZWtMHEgRoO','2025-05-11 06:21:50'),(7,'NewUser','newuser@gmail.com','$2b$10$HJ3gbyHa9Usv0mBqJA6kh.Nxt0CaP7ycKL3J340u7kB29p74rHzYm','2025-05-11 12:48:00'),(8,'TestUser','test@gmail.com','$2b$10$6Sn2gI02Fo856VZlp.fLo.nIikPB6ViZj2OOydx23xKLcj6f5CMn2','2025-05-11 12:50:23'),(9,'suvrayan','suvrayan@gmail.com','$2b$10$25O6CXxOzR.fCQdtc8hUC.ZfvDUtRTakQ/UUua9x2KTVA5Z6M1qSi','2025-05-11 12:57:33');
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

-- Dump completed on 2025-05-22 19:48:54
