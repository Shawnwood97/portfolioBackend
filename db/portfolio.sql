-- MariaDB dump 10.19  Distrib 10.5.10-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: portfolio
-- ------------------------------------------------------
-- Server version	10.5.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `back_end`
--

DROP TABLE IF EXISTS `back_end`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `back_end` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `back_end`
--

LOCK TABLES `back_end` WRITE;
/*!40000 ALTER TABLE `back_end` DISABLE KEYS */;
INSERT INTO `back_end` VALUES (1,'Python','https://storage.googleapis.com/portfolioimages/logos/backend/python.svg'),(2,'Flask','https://storage.googleapis.com/portfolioimages/logos/backend/flask.svg'),(3,'MariaDB','https://storage.googleapis.com/portfolioimages/logos/backend/mariadb.svg'),(4,'MySQL','https://storage.googleapis.com/portfolioimages/logos/backend/mysql.svg');
/*!40000 ALTER TABLE `back_end` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `front_end`
--

DROP TABLE IF EXISTS `front_end`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `front_end` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `front_end`
--

LOCK TABLES `front_end` WRITE;
/*!40000 ALTER TABLE `front_end` DISABLE KEYS */;
INSERT INTO `front_end` VALUES (1,'VueJs','https://storage.googleapis.com/portfolioimages/logos/frontend/vue.svg'),(2,'Javascript','https://storage.googleapis.com/portfolioimages/logos/frontend/javascript.svg'),(3,'HTML','https://storage.googleapis.com/portfolioimages/logos/frontend/html.svg'),(4,'CSS','https://storage.googleapis.com/portfolioimages/logos/frontend/css.svg'),(5,'SASS','https://storage.googleapis.com/portfolioimages/logos/frontend/sass.svg'),(6,'AJAX','https://storage.googleapis.com/portfolioimages/logos/frontend/ajax.svg');
/*!40000 ALTER TABLE `front_end` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email_address` varchar(250) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `messages_email_UN` (`email_address`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `tech` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `link` varchar(250) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `code_link` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Hamptons Pizza','Small project that I used to test my knowledge of HTML, CSS and SASS.','HTML/CSS/SASS','https://hottakes.ml','https://storage.googleapis.com/portfolioimages/projects/hamptonspizza.jpg','https://github.com/Shawnwood97/HamptonsPizza'),(2,'Pokemon Battler','Pokemon Battler is a 1v1 Pokemon battle game.','Javascript/HTML/CSS/Axios','https://pokemonbattler.ml/','https://storage.googleapis.com/portfolioimages/projects/pokemonbattler.jpg','https://github.com/Shawnwood97/PokemonBattle'),(3,'Hot Takes','Hot Takes is a Twitter like social media Web App.','Vue/Python/Flask/MariaDB','https://hottakes.ml/','https://storage.googleapis.com/portfolioimages/projects/hottakes.jpg','https://github.com/Shawnwood97/hotTakesFrontend2'),(4,'KANManager','KANManager is a Kanban style project manager.','Vue/Python/Flask/MariaDB','https://kanmanager.ml/','https://storage.googleapis.com/portfolioimages/projects/kanmanager.jpg','https://github.com/Shawnwood97/ProjectManagerFrontend');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tools`
--

DROP TABLE IF EXISTS `tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tools` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tools`
--

LOCK TABLES `tools` WRITE;
/*!40000 ALTER TABLE `tools` DISABLE KEYS */;
INSERT INTO `tools` VALUES (1,'NPM','https://storage.googleapis.com/portfolioimages/logos/tools/npm.svg'),(2,'Bash/CLI','https://storage.googleapis.com/portfolioimages/logos/tools/bash.svg'),(3,'GitHub','https://storage.googleapis.com/portfolioimages/logos/tools/github.svg'),(4,'G Cloud','https://storage.googleapis.com/portfolioimages/logos/tools/gcloud.svg'),(5,'Figma','https://storage.googleapis.com/portfolioimages/logos/tools/figma.svg'),(6,'JSON','https://storage.googleapis.com/portfolioimages/logos/tools/json.svg'),(7,'DataGrip','https://storage.googleapis.com/portfolioimages/logos/tools/datagrip.svg'),(8,'Vuetify','https://storage.googleapis.com/portfolioimages/logos/tools/vuetify.svg'),(9,'Vs Code','https://storage.googleapis.com/portfolioimages/logos/tools/vscode.svg');
/*!40000 ALTER TABLE `tools` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-03 20:00:45
