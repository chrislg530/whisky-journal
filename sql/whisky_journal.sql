CREATE DATABASE  IF NOT EXISTS `whisky_journal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `whisky_journal`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: whisky_journal
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `whisky_entry`
--

DROP TABLE IF EXISTS `whisky_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `whisky_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `whisky_name` varchar(45) DEFAULT NULL,
  `whisky_age` int(11) DEFAULT NULL,
  `whisky_distiller` varchar(45) DEFAULT NULL,
  `whisky_origin` varchar(45) DEFAULT NULL,
  `whisky_rating` int(11) DEFAULT NULL,
  `whisky_buy` tinyint(1) DEFAULT NULL,
  `whisky_gift` tinyint(1) DEFAULT NULL,
  `whisky_bin` tinyint(1) DEFAULT NULL,
  `whisky_color` varchar(45) DEFAULT NULL,
  `whisky_notes` mediumtext,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `whisky_detail_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `whisky_entry_detail`
--

DROP TABLE IF EXISTS `whisky_entry_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `whisky_entry_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `balance` int(11) DEFAULT '0',
  `linger` int(11) DEFAULT '0',
  `heat` int(11) DEFAULT '0',
  `dark_fruit` int(11) DEFAULT '0',
  `citrus` int(11) DEFAULT '0',
  `floral` int(11) DEFAULT '0',
  `spicy` int(11) DEFAULT '0',
  `herbal` int(11) DEFAULT '0',
  `malty` int(11) DEFAULT '0',
  `toffee` int(11) DEFAULT '0',
  `woody` int(11) DEFAULT '0',
  `tannic` int(11) DEFAULT '0',
  `char_lvl` int(11) DEFAULT '0',
  `sweet` int(11) DEFAULT '0',
  `body` int(11) DEFAULT '0',
  `legs` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-15  1:12:58
