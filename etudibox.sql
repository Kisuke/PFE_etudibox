CREATE DATABASE  IF NOT EXISTS `etudibox` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `etudibox`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: etudibox
-- ------------------------------------------------------
-- Server version	5.6.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `eb_user`
--

DROP TABLE IF EXISTS `eb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eb_user` (
  `id_eb_user` int(11) NOT NULL AUTO_INCREMENT,
  `eb_user_email` varchar(45) DEFAULT NULL,
  `eb_user_password` varchar(32) DEFAULT NULL,
  `eb_firstname` varchar(45) DEFAULT NULL,
  `eb_lastname` varchar(45) DEFAULT NULL,
  `eb_login` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_eb_user`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eb_user`
--

LOCK TABLES `eb_user` WRITE;
/*!40000 ALTER TABLE `eb_user` DISABLE KEYS */;
INSERT INTO `eb_user` VALUES (1,'test','098f6bcd4621d373cade4e832627b4f6',NULL,NULL,NULL),(2,'user','098f6bcd4621d373cade4e832627b4f6','Jules','Dupont',NULL),(4,'a@a','0cc175b9c0f1b6a831c399e269772661','a','a','a');
/*!40000 ALTER TABLE `eb_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-19 13:37:14
