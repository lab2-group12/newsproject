-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: den1.mysql4.gear.host    Database: newsproject
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `categorynews_has_newsinformation`
--

DROP TABLE IF EXISTS `categorynews_has_newsinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorynews_has_newsinformation` (
  `CategoryNews_CategoryNewsID` int(11) NOT NULL,
  `NewsInformation_NewsID` int(11) NOT NULL,
  PRIMARY KEY (`CategoryNews_CategoryNewsID`,`NewsInformation_NewsID`),
  KEY `fk_CategoryNews_has_NewsInformation_NewsInformation1_idx` (`NewsInformation_NewsID`),
  KEY `fk_CategoryNews_has_NewsInformation_CategoryNews1_idx` (`CategoryNews_CategoryNewsID`),
  CONSTRAINT `fk_CategoryNews_has_NewsInformation_CategoryNews1` FOREIGN KEY (`CategoryNews_CategoryNewsID`) REFERENCES `categorynews` (`CategoryNewsID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_CategoryNews_has_NewsInformation_NewsInformation1` FOREIGN KEY (`NewsInformation_NewsID`) REFERENCES `newsinformation` (`NewsID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorynews_has_newsinformation`
--

LOCK TABLES `categorynews_has_newsinformation` WRITE;
/*!40000 ALTER TABLE `categorynews_has_newsinformation` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorynews_has_newsinformation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-04 23:57:19
