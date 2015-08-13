
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
DROP TABLE IF EXISTS `km_test_itsec_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `km_test_itsec_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` varchar(20) NOT NULL DEFAULT '',
  `log_function` varchar(255) NOT NULL DEFAULT '',
  `log_priority` int(2) NOT NULL DEFAULT '1',
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_host` varchar(20) DEFAULT NULL,
  `log_username` varchar(20) DEFAULT NULL,
  `log_user` bigint(20) unsigned DEFAULT NULL,
  `log_url` varchar(255) DEFAULT NULL,
  `log_referrer` varchar(255) DEFAULT NULL,
  `log_data` longtext NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `km_test_itsec_log` WRITE;
/*!40000 ALTER TABLE `km_test_itsec_log` DISABLE KEYS */;
INSERT INTO `km_test_itsec_log` VALUES (1,'four_oh_four','404 Error',3,'2015-04-13 04:52:52','2015-04-13 04:52:52','203.214.69.156','',0,'/katemorgan/resources/plugins/ithemes-security-pro/modules/free/salts/js/itsec-salts.js','http://174.121.78.227/~kmxmarketing/wp-admin/admin.php?page=toplevel_page_itsec_advanced','a:1:{s:12:\"query_string\";s:8:\"ver=4036\";}'),(2,'four_oh_four','404 Error',3,'2015-04-13 08:27:38','2015-04-13 08:27:38','64.145.76.129','',0,'/katemorgan/not_found','','a:1:{s:12:\"query_string\";s:0:\"\";}'),(3,'four_oh_four','404 Error',3,'2015-04-13 23:09:20','2015-04-13 23:09:20','203.214.69.156','',0,'/katemorgan/not_found','','a:1:{s:12:\"query_string\";s:0:\"\";}'),(4,'four_oh_four','404 Error',3,'2015-04-20 02:25:26','2015-04-20 02:25:26','203.214.69.156','',0,'/katemorgan/resources/themes/rachelbaker-bootstrapwp-Twitter-Bootstrap-for-WordPress-0c06b68/ico/favicon.png','http://174.121.78.227/~kmxmarketing/','a:1:{s:12:\"query_string\";s:0:\"\";}');
/*!40000 ALTER TABLE `km_test_itsec_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

