
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
DROP TABLE IF EXISTS `km_itsec_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `km_itsec_temp` (
  `temp_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `temp_type` varchar(20) NOT NULL,
  `temp_date` datetime NOT NULL,
  `temp_date_gmt` datetime NOT NULL,
  `temp_host` varchar(20) DEFAULT NULL,
  `temp_user` bigint(20) unsigned DEFAULT NULL,
  `temp_username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`temp_id`),
  KEY `temp_date_gmt` (`temp_date_gmt`),
  KEY `temp_host` (`temp_host`),
  KEY `temp_user` (`temp_user`),
  KEY `temp_username` (`temp_username`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `km_itsec_temp` WRITE;
/*!40000 ALTER TABLE `km_itsec_temp` DISABLE KEYS */;
INSERT INTO `km_itsec_temp` VALUES (1,'four_oh_four','2015-04-13 04:52:52','2015-04-13 04:52:52','203.214.69.156',NULL,NULL),(2,'four_oh_four','2015-04-13 08:27:38','2015-04-13 08:27:38','64.145.76.129',NULL,NULL),(3,'four_oh_four','2015-04-13 23:09:20','2015-04-13 23:09:20','203.214.69.156',NULL,NULL),(4,'four_oh_four','2015-05-13 05:05:18','2015-05-13 05:05:18','203.214.69.156',NULL,NULL),(5,'four_oh_four','2015-05-13 05:09:31','2015-05-13 05:09:31','203.214.69.156',NULL,NULL),(6,'four_oh_four','2015-05-13 05:09:40','2015-05-13 05:09:40','203.214.69.156',NULL,NULL),(7,'four_oh_four','2015-05-13 05:12:35','2015-05-13 05:12:35','203.214.69.156',NULL,NULL),(8,'four_oh_four','2015-05-13 05:46:29','2015-05-13 05:46:29','203.214.69.156',NULL,NULL),(9,'four_oh_four','2015-05-13 05:46:38','2015-05-13 05:46:38','203.214.69.156',NULL,NULL),(10,'four_oh_four','2015-05-13 05:46:44','2015-05-13 05:46:44','203.214.69.156',NULL,NULL),(11,'four_oh_four','2015-05-13 05:47:50','2015-05-13 05:47:50','203.214.69.156',NULL,NULL),(12,'four_oh_four','2015-05-13 05:47:54','2015-05-13 05:47:54','203.214.69.156',NULL,NULL),(13,'four_oh_four','2015-06-23 16:51:42','2015-06-23 06:51:42','203.214.69.156',NULL,NULL),(14,'four_oh_four','2015-06-23 16:51:42','2015-06-23 06:51:42','203.214.69.156',NULL,NULL),(15,'four_oh_four','2015-06-29 12:18:52','2015-06-29 02:18:52','203.214.69.156',NULL,NULL),(16,'four_oh_four','2015-07-01 11:09:22','2015-07-01 01:09:22','203.214.69.156',NULL,NULL),(17,'four_oh_four','2015-07-08 11:35:04','2015-07-08 01:35:04','203.214.69.156',NULL,NULL),(18,'four_oh_four','2015-07-08 18:20:20','2015-07-08 08:20:20','27.32.150.109',NULL,NULL),(19,'brute_force','2015-07-09 17:40:03','2015-07-09 07:40:03','120.21.38.138',NULL,NULL),(20,'brute_force','2015-07-09 17:40:03','2015-07-09 07:40:03',NULL,4,'Xianyangwong'),(21,'brute_force','2015-07-10 14:07:05','2015-07-10 04:07:05','203.214.69.156',NULL,NULL),(22,'brute_force','2015-07-10 14:07:05','2015-07-10 04:07:05',NULL,NULL,'x');
/*!40000 ALTER TABLE `km_itsec_temp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

