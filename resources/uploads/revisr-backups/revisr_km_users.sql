
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
DROP TABLE IF EXISTS `km_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `km_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `km_users` WRITE;
/*!40000 ALTER TABLE `km_users` DISABLE KEYS */;
INSERT INTO `km_users` VALUES (1,'xmarketing','$P$BeFt/6YBIuWIQAdUpD7I.wvnufp.Xl/','xian-yang-wong','yang@xmarketing.com.au','','2015-04-13 04:48:34','',0,'xmarketing'),(2,'katemorgan','$P$BFWGC6WWHTI6VMSJce95CQJ28qsK9c0','kate-morgan','yang2@xmarketing.com.au','','2015-07-01 23:45:12','',0,'Kate Morgan'),(6,'petrog','$P$BBf5E9Ti4zhQI9a9Y7SJ9FXAGQLrmQ1','petrog','pfrogers@bigpond.net.au','','2015-07-24 04:41:43','',0,'petrog'),(8,'lisa','$P$BWQBIysXsS5oRo3KeGn/0Q8fDppMfk0','lisa','lisa@katemorgan.com.au','','2015-07-27 02:13:21','',0,'lisa'),(11,'Peter Rogers','$P$BWZFFKlT8zumL/AAo2jvEQEinWqcJb.','peter-rogers','progers@katemorgan.com.au','','2015-08-02 04:15:30','',0,'Peter Rogers'),(12,'pharmacy_test','$P$BNLHsJ8h9ynwGwTK3G7O5Ej7ev5a970','pharmacy-test-account-x-marketing','yang3@xmarketing.com.au','','2015-08-04 00:22:07','',0,'Pharmacy Test Account X Marketing'),(13,'lisamorgan','$P$BtOooU6CpJKR70om3aaXFB1zHD0mZt0','lisamorgan','admin@katemorgan.com.au','','2015-08-12 04:41:05','',0,'lisamorgan');
/*!40000 ALTER TABLE `km_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

