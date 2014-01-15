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
-- Table structure for table `eb_bon_plan`
--

DROP TABLE IF EXISTS `eb_bon_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eb_bon_plan` (
  `id_eb_bon_plan` int(11) NOT NULL AUTO_INCREMENT,
  `eb_bon_plan_title` varchar(45) NOT NULL,
  `eb_bon_plan_link` varchar(255) DEFAULT NULL,
  `eb_bon_plan_body` varchar(2000) DEFAULT NULL,
  `eb_bon_plan_date` datetime NOT NULL,
  `eb_bon_plan_image_path` varchar(255) DEFAULT NULL,
  `eb_user_id` int(11) DEFAULT NULL,
  `eb_bon_plan_category_id` int(11) NOT NULL,
  `eb_bon_plan_sub_category_id` int(11) NOT NULL,
  PRIMARY KEY (`id_eb_bon_plan`),
  UNIQUE KEY `id_eb_bon_plan_UNIQUE` (`id_eb_bon_plan`),
  KEY `eb_user_id_idx` (`eb_user_id`),
  KEY `fk_category_id_idx` (`eb_bon_plan_category_id`),
  KEY `fk_sub_category_id_idx` (`eb_bon_plan_sub_category_id`),
  CONSTRAINT `eb_user_id` FOREIGN KEY (`eb_user_id`) REFERENCES `eb_user` (`eb_user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_category_id` FOREIGN KEY (`eb_bon_plan_category_id`) REFERENCES `eb_category_bon_plan` (`eb_category_bon_plan_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sub_category_id` FOREIGN KEY (`eb_bon_plan_sub_category_id`) REFERENCES `eb_sub_category_bon_plan` (`eb_sub_category_bon_plan_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eb_bon_plan`
--

LOCK TABLES `eb_bon_plan` WRITE;
/*!40000 ALTER TABLE `eb_bon_plan` DISABLE KEYS */;
INSERT INTO `eb_bon_plan` VALUES (1,'Centre Georges Pompidou','http://billetterie.centrepompidou.fr/Accueil.aspx',' Musée gratuit pour tous les premiers dimanches du mois. <br/> Pour les moins de 26 ans : accès gratuit uniquement au Musée, après retrait d\\\'\'un billet exonéré aux caisses.','2013-12-12 08:09:00','.\\BDDFile\\beaubourg.gif',1,1,2),(2,'Réduction Futuroscope','http://www.isic.fr/isic-avantages/futuroscope/','Votre billet à 29 € au lieu de 39 €. ','2014-01-05 13:47:00','.\\BDDFile\\Futuroscope.jpg',1,3,7),(3,'Réduction Sony','http://www.isic.fr/isic-avantages/sony/','Jusqu’à 18% de réduction  sur de nombreux produits Sony ! <br/> Profitez de 8% de réduction sur les produits informatiques (ordinateurs portables, tablettes, eReader) et 18% de réductions sur les produits audio et vidéo  (casques, enceintes sans fil, appareils photo…).','2014-01-13 14:21:00','.\\BDDFile\\Sony.jpg',1,3,7),(4,'Ta place de ciné à prix réduit !','http://www.imagine-r.com/les-bons-plans/109568/Ta-place-de-cine-a-prix-reduit.aspx','Quoi de mieux qu’un Bon Plan valable toute l’année dans les cinémas Gaumont et Pathé d’Île-de-France ? <br/> Pour toi, abonné(e) imagine R, la place est à 6,40 €* du lundi au jeudi et à 7,40 €* du vendredi au dimanche inclus.','2014-01-13 14:26:00','.\\BDDFile\\Gaumont_Pathe.jpg',1,3,5);
/*!40000 ALTER TABLE `eb_bon_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eb_category_bon_plan`
--

DROP TABLE IF EXISTS `eb_category_bon_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eb_category_bon_plan` (
  `eb_category_bon_plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `eb_category_bon_plan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`eb_category_bon_plan_id`),
  UNIQUE KEY `eb_category_bon_plan_id_UNIQUE` (`eb_category_bon_plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eb_category_bon_plan`
--

LOCK TABLES `eb_category_bon_plan` WRITE;
/*!40000 ALTER TABLE `eb_category_bon_plan` DISABLE KEYS */;
INSERT INTO `eb_category_bon_plan` VALUES (1,'Culture'),(2,'Restaurant'),(3,'Carte');
/*!40000 ALTER TABLE `eb_category_bon_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eb_sub_category_bon_plan`
--

DROP TABLE IF EXISTS `eb_sub_category_bon_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eb_sub_category_bon_plan` (
  `eb_sub_category_bon_plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `eb_category_bon_plan_id` int(11) DEFAULT NULL,
  `eb_sub_category_bon_plan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`eb_sub_category_bon_plan_id`),
  KEY `fk_category_bon_plan_id_idx` (`eb_category_bon_plan_id`),
  CONSTRAINT `fk_category_bon_plan_id` FOREIGN KEY (`eb_category_bon_plan_id`) REFERENCES `eb_category_bon_plan` (`eb_category_bon_plan_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eb_sub_category_bon_plan`
--

LOCK TABLES `eb_sub_category_bon_plan` WRITE;
/*!40000 ALTER TABLE `eb_sub_category_bon_plan` DISABLE KEYS */;
INSERT INTO `eb_sub_category_bon_plan` VALUES (1,1,'Cinéma'),(2,1,'Musée'),(3,1,'Opéra'),(4,1,'Théâtre'),(5,3,'Imagine R'),(6,3,'Forest Hill'),(7,3,'ISIC');
/*!40000 ALTER TABLE `eb_sub_category_bon_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eb_user`
--

DROP TABLE IF EXISTS `eb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eb_user` (
  `eb_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `eb_user_email` varchar(45) DEFAULT NULL,
  `eb_user_password` varchar(32) DEFAULT NULL,
  `eb_user_firstname` varchar(45) DEFAULT NULL,
  `eb_user_lastname` varchar(45) DEFAULT NULL,
  `eb_user_login` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`eb_user_id`),
  UNIQUE KEY `id_eb_user_UNIQUE` (`eb_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eb_user`
--

LOCK TABLES `eb_user` WRITE;
/*!40000 ALTER TABLE `eb_user` DISABLE KEYS */;
INSERT INTO `eb_user` VALUES (1,'test@test','098f6bcd4621d373cade4e832627b4f6','Laura','Perronny',NULL),(2,'user@user','098f6bcd4621d373cade4e832627b4f6','Jules','Dupont',NULL),(4,'a@a','0cc175b9c0f1b6a831c399e269772661','a','a','a');
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

-- Dump completed on 2014-01-15 13:13:52
