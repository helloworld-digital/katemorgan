
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
DROP TABLE IF EXISTS `km_rg_form_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `km_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `km_rg_form_view` WRITE;
/*!40000 ALTER TABLE `km_rg_form_view` DISABLE KEYS */;
INSERT INTO `km_rg_form_view` VALUES (1,1,'2015-06-24 06:47:37','120.21.46.40',2),(2,1,'2015-06-24 11:25:36','27.32.150.109',1),(3,1,'2015-06-25 08:54:21','27.32.150.109',1),(4,1,'2015-06-29 23:45:46','203.214.69.156',1),(5,2,'2015-07-08 07:56:32','27.32.150.109',1),(6,3,'2015-07-09 00:24:28','203.214.69.156',13),(7,3,'2015-07-09 01:00:00','203.214.69.156',5),(8,3,'2015-07-09 04:03:02','203.214.69.156',1),(9,4,'2015-07-09 04:51:35','203.214.69.156',1),(10,4,'2015-07-09 05:09:15','203.214.69.156',22),(11,3,'2015-07-09 05:15:42','203.214.69.156',1),(12,4,'2015-07-09 06:08:33','203.214.69.156',2),(13,4,'2015-07-09 07:40:16','66.249.82.145',1),(14,4,'2015-07-09 09:51:46','27.32.150.109',2),(15,4,'2015-07-09 10:04:22','27.32.150.109',25),(16,4,'2015-07-09 23:26:03','203.214.69.156',1),(17,3,'2015-07-10 00:57:04','203.214.69.156',1),(18,4,'2015-07-10 00:57:20','203.214.69.156',1),(19,4,'2015-07-10 04:02:30','203.214.69.156',6),(20,3,'2015-07-10 04:55:21','203.214.69.156',1),(21,4,'2015-07-10 05:03:37','203.214.69.156',15),(22,4,'2015-07-10 09:17:23','110.143.108.227',1),(23,4,'2015-07-10 11:19:03','110.143.108.227',3),(24,3,'2015-07-10 11:28:12','110.143.108.227',1);
/*!40000 ALTER TABLE `km_rg_form_view` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
