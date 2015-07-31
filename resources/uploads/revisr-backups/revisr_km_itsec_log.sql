
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
DROP TABLE IF EXISTS `km_itsec_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `km_itsec_log` (
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
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `km_itsec_log` WRITE;
/*!40000 ALTER TABLE `km_itsec_log` DISABLE KEYS */;
INSERT INTO `km_itsec_log` VALUES (1,'four_oh_four','404 Error',3,'2015-04-13 04:52:52','2015-04-13 04:52:52','203.214.69.156','',0,'/katemorgan/resources/plugins/ithemes-security-pro/modules/free/salts/js/itsec-salts.js','http://dev.xmarketing.com.au/katemorgan/wp-admin/admin.php?page=toplevel_page_itsec_advanced','a:1:{s:12:\"query_string\";s:8:\"ver=4036\";}'),(2,'four_oh_four','404 Error',3,'2015-04-13 08:27:38','2015-04-13 08:27:38','64.145.76.129','',0,'/katemorgan/not_found','','a:1:{s:12:\"query_string\";s:0:\"\";}'),(3,'four_oh_four','404 Error',3,'2015-04-13 23:09:20','2015-04-13 23:09:20','203.214.69.156','',0,'/katemorgan/not_found','','a:1:{s:12:\"query_string\";s:0:\"\";}'),(4,'four_oh_four','404 Error',3,'2015-04-20 02:25:26','2015-04-20 02:25:26','203.214.69.156','',0,'/katemorgan/resources/themes/rachelbaker-bootstrapwp-Twitter-Bootstrap-for-WordPress-0c06b68/ico/favicon.png','http://dev.xmarketing.com.au/katemorgan/','a:1:{s:12:\"query_string\";s:0:\"\";}'),(5,'four_oh_four','404 Error',3,'2015-05-13 05:05:18','2015-05-13 05:05:18','203.214.69.156','',0,'/katemorgan/bloginfo(','http://dev.xmarketing.com.au/katemorgan/','a:1:{s:12:\"query_string\";s:28:\"s=wp_specialchars%28%2C+1%29\";}'),(6,'four_oh_four','404 Error',3,'2015-05-13 05:09:31','2015-05-13 05:09:31','203.214.69.156','',0,'/katemorgan/bloginfo(','http://dev.xmarketing.com.au/katemorgan/','a:1:{s:12:\"query_string\";s:11:\"s=chocolate\";}'),(7,'four_oh_four','404 Error',3,'2015-05-13 05:09:40','2015-05-13 05:09:40','203.214.69.156','',0,'/katemorgan/bloginfo(','http://dev.xmarketing.com.au/katemorgan/bloginfo(?s=chocolate','a:1:{s:12:\"query_string\";s:12:\"s=my+account\";}'),(8,'four_oh_four','404 Error',3,'2015-05-13 05:12:35','2015-05-13 05:12:35','203.214.69.156','',0,'/katemorgan/bloginfo(','http://dev.xmarketing.com.au/katemorgan/bloginfo(?s=chocolate','a:1:{s:12:\"query_string\";s:12:\"s=my+account\";}'),(9,'four_oh_four','404 Error',3,'2015-05-13 05:46:29','2015-05-13 05:46:29','203.214.69.156','',0,'/katemorgan/not_found','','a:1:{s:12:\"query_string\";s:0:\"\";}'),(10,'four_oh_four','404 Error',3,'2015-05-13 05:46:38','2015-05-13 05:46:38','203.214.69.156','',0,'/katemorgan/wp-login','','a:1:{s:12:\"query_string\";s:0:\"\";}'),(11,'four_oh_four','404 Error',3,'2015-05-13 05:46:44','2015-05-13 05:46:44','203.214.69.156','',0,'/katemorgan/not_found','','a:1:{s:12:\"query_string\";s:0:\"\";}'),(12,'four_oh_four','404 Error',3,'2015-05-13 05:47:50','2015-05-13 05:47:50','203.214.69.156','',0,'/katemorgan/wp-login','','a:1:{s:12:\"query_string\";s:0:\"\";}'),(13,'four_oh_four','404 Error',3,'2015-05-13 05:47:54','2015-05-13 05:47:54','203.214.69.156','',0,'/katemorgan/not_found','','a:1:{s:12:\"query_string\";s:0:\"\";}'),(14,'four_oh_four','404 Error',3,'2015-05-13 05:53:08','2015-05-13 05:53:08','203.214.69.156','',0,'/katemorgan/resources/plugins/wp-live-chat-support/css/images/ui-bg_flat_75_ffffff_40x100.png','http://dev.xmarketing.com.au/katemorgan/resources/plugins/wp-live-chat-support/css/jquery-ui.css?ver=4.2.2','a:1:{s:12:\"query_string\";s:0:\"\";}'),(15,'four_oh_four','404 Error',3,'2015-05-13 05:53:09','2015-05-13 05:53:09','203.214.69.156','',0,'/katemorgan/resources/plugins/wp-live-chat-support/css/images/ui-bg_highlight-soft_75_cccccc_1x100.png','http://dev.xmarketing.com.au/katemorgan/resources/plugins/wp-live-chat-support/css/jquery-ui.css?ver=4.2.2','a:1:{s:12:\"query_string\";s:0:\"\";}'),(16,'four_oh_four','404 Error',3,'2015-05-13 05:53:10','2015-05-13 05:53:10','203.214.69.156','',0,'/katemorgan/resources/plugins/wp-live-chat-support/css/images/ui-bg_glass_75_e6e6e6_1x400.png','http://dev.xmarketing.com.au/katemorgan/resources/plugins/wp-live-chat-support/css/jquery-ui.css?ver=4.2.2','a:1:{s:12:\"query_string\";s:0:\"\";}'),(17,'four_oh_four','404 Error',3,'2015-05-13 05:53:11','2015-05-13 05:53:11','203.214.69.156','',0,'/katemorgan/resources/plugins/wp-live-chat-support/css/images/ui-bg_glass_65_ffffff_1x400.png','http://dev.xmarketing.com.au/katemorgan/resources/plugins/wp-live-chat-support/css/jquery-ui.css?ver=4.2.2','a:1:{s:12:\"query_string\";s:0:\"\";}'),(18,'four_oh_four','404 Error',3,'2015-05-13 05:53:37','2015-05-13 05:53:37','203.214.69.156','',0,'/katemorgan/resources/plugins/wp-live-chat-support/css/images/ui-bg_glass_75_dadada_1x400.png','http://dev.xmarketing.com.au/katemorgan/resources/plugins/wp-live-chat-support/css/jquery-ui.css?ver=4.2.2','a:1:{s:12:\"query_string\";s:0:\"\";}'),(19,'four_oh_four','404 Error',3,'2015-05-13 05:53:40','2015-05-13 05:53:40','203.214.69.156','',0,'/katemorgan/wp-content/plugins/wp-live-chat-support/images/chrome_16x16.png','http://dev.xmarketing.com.au/katemorgan/wp-admin/admin.php?page=wplivechat-menu','a:1:{s:12:\"query_string\";s:0:\"\";}'),(20,'four_oh_four','404 Error',3,'2015-05-13 05:53:44','2015-05-13 05:53:44','203.214.69.156','',0,'/katemorgan/wp-content/plugins/wp-live-chat-support/images/chrome_16x16.png','http://dev.xmarketing.com.au/katemorgan/wp-admin/admin.php?page=wplivechat-menu','a:1:{s:12:\"query_string\";s:0:\"\";}'),(21,'four_oh_four','404 Error',3,'2015-05-13 05:54:48','2015-05-13 05:54:48','203.214.69.156','',0,'/katemorgan/wp-content/plugins/wp-live-chat-support/images/chrome_16x16.png','http://dev.xmarketing.com.au/katemorgan/wp-admin/admin.php?page=wplivechat-menu&action=ac&cid=1','a:1:{s:12:\"query_string\";s:0:\"\";}'),(22,'four_oh_four','404 Error',3,'2015-05-13 05:55:18','2015-05-13 05:55:18','203.214.69.156','',0,'/katemorgan/resources/plugins/wp-live-chat-support/css/images/ui-bg_glass_65_ffffff_1x400.png','http://dev.xmarketing.com.au/katemorgan/resources/plugins/wp-live-chat-support/css/jquery-ui.css?ver=4.2.2','a:1:{s:12:\"query_string\";s:0:\"\";}'),(23,'four_oh_four','404 Error',3,'2015-05-13 05:55:42','2015-05-13 05:55:42','203.214.69.156','',0,'/katemorgan/resources/plugins/wp-live-chat-support/css/images/ui-bg_flat_75_ffffff_40x100.png','http://dev.xmarketing.com.au/katemorgan/resources/plugins/wp-live-chat-support/css/jquery-ui.css?ver=4.2.2','a:1:{s:12:\"query_string\";s:0:\"\";}'),(24,'four_oh_four','404 Error',3,'2015-05-13 05:55:43','2015-05-13 05:55:43','203.214.69.156','',0,'/katemorgan/resources/plugins/wp-live-chat-support/css/images/ui-bg_glass_75_dadada_1x400.png','http://dev.xmarketing.com.au/katemorgan/resources/plugins/wp-live-chat-support/css/jquery-ui.css?ver=4.2.2','a:1:{s:12:\"query_string\";s:0:\"\";}'),(25,'four_oh_four','404 Error',3,'2015-05-13 05:55:43','2015-05-13 05:55:43','203.214.69.156','',0,'/katemorgan/resources/plugins/wp-live-chat-support/css/images/ui-bg_highlight-soft_75_cccccc_1x100.png','http://dev.xmarketing.com.au/katemorgan/resources/plugins/wp-live-chat-support/css/jquery-ui.css?ver=4.2.2','a:1:{s:12:\"query_string\";s:0:\"\";}'),(26,'four_oh_four','404 Error',3,'2015-05-13 05:55:44','2015-05-13 05:55:44','203.214.69.156','',0,'/katemorgan/resources/plugins/wp-live-chat-support/css/images/ui-bg_glass_75_e6e6e6_1x400.png','http://dev.xmarketing.com.au/katemorgan/resources/plugins/wp-live-chat-support/css/jquery-ui.css?ver=4.2.2','a:1:{s:12:\"query_string\";s:0:\"\";}'),(27,'four_oh_four','404 Error',3,'2015-05-13 05:56:02','2015-05-13 05:56:02','203.214.69.156','',0,'/katemorgan/resources/plugins/wp-live-chat-support/css/images/ui-bg_flat_75_ffffff_40x100.png','http://dev.xmarketing.com.au/katemorgan/resources/plugins/wp-live-chat-support/css/jquery-ui.css?ver=4.2.2','a:1:{s:12:\"query_string\";s:0:\"\";}'),(28,'four_oh_four','404 Error',3,'2015-05-13 05:56:03','2015-05-13 05:56:03','203.214.69.156','',0,'/katemorgan/resources/plugins/wp-live-chat-support/css/images/ui-bg_highlight-soft_75_cccccc_1x100.png','http://dev.xmarketing.com.au/katemorgan/resources/plugins/wp-live-chat-support/css/jquery-ui.css?ver=4.2.2','a:1:{s:12:\"query_string\";s:0:\"\";}'),(29,'four_oh_four','404 Error',3,'2015-05-13 05:56:04','2015-05-13 05:56:04','203.214.69.156','',0,'/katemorgan/resources/plugins/wp-live-chat-support/css/images/ui-bg_glass_75_e6e6e6_1x400.png','http://dev.xmarketing.com.au/katemorgan/resources/plugins/wp-live-chat-support/css/jquery-ui.css?ver=4.2.2','a:1:{s:12:\"query_string\";s:0:\"\";}'),(30,'four_oh_four','404 Error',3,'2015-05-13 05:56:07','2015-05-13 05:56:07','203.214.69.156','',0,'/katemorgan/resources/plugins/wp-live-chat-support/css/images/ui-bg_glass_65_ffffff_1x400.png','http://dev.xmarketing.com.au/katemorgan/resources/plugins/wp-live-chat-support/css/jquery-ui.css?ver=4.2.2','a:1:{s:12:\"query_string\";s:0:\"\";}'),(31,'four_oh_four','404 Error',3,'2015-05-13 05:56:15','2015-05-13 05:56:15','203.214.69.156','',0,'/katemorgan/resources/plugins/wp-live-chat-support/css/images/ui-bg_glass_75_dadada_1x400.png','http://dev.xmarketing.com.au/katemorgan/resources/plugins/wp-live-chat-support/css/jquery-ui.css?ver=4.2.2','a:1:{s:12:\"query_string\";s:0:\"\";}'),(32,'four_oh_four','404 Error',3,'2015-06-23 16:50:35','2015-06-23 06:50:35','203.214.69.156','',0,'/katemorgan/slick/slick-theme.css','http://dev.xmarketing.com.au/katemorgan/','a:1:{s:12:\"query_string\";s:0:\"\";}'),(33,'four_oh_four','404 Error',3,'2015-06-23 16:51:01','2015-06-23 06:51:01','203.214.69.156','',0,'/katemorgan/slick/slick-theme.css','http://dev.xmarketing.com.au/katemorgan/','a:1:{s:12:\"query_string\";s:0:\"\";}'),(34,'four_oh_four','404 Error',3,'2015-06-23 16:51:02','2015-06-23 06:51:02','203.214.69.156','',0,'/katemorgan/slick/slick/slick-theme.css','http://dev.xmarketing.com.au/katemorgan/slick/slick-theme.css','a:1:{s:12:\"query_string\";s:0:\"\";}'),(35,'four_oh_four','404 Error',3,'2015-06-23 16:51:42','2015-06-23 06:51:42','203.214.69.156','',0,'/katemorgan/resources/themes/Dazzling-master/slick/fonts/slick.woff','http://dev.xmarketing.com.au/katemorgan/resources/themes/Dazzling-master/slick/slick-theme.css','a:1:{s:12:\"query_string\";s:0:\"\";}'),(36,'four_oh_four','404 Error',3,'2015-06-23 16:51:42','2015-06-23 06:51:42','203.214.69.156','',0,'/katemorgan/resources/themes/Dazzling-master/slick/fonts/slick.ttf','http://dev.xmarketing.com.au/katemorgan/resources/themes/Dazzling-master/slick/slick-theme.css','a:1:{s:12:\"query_string\";s:0:\"\";}'),(37,'four_oh_four','404 Error',3,'2015-06-23 16:51:43','2015-06-23 06:51:43','203.214.69.156','',0,'/katemorgan/resources/themes/Dazzling-master/slick/ajax-loader.gif','http://dev.xmarketing.com.au/katemorgan/resources/themes/Dazzling-master/slick/slick-theme.css','a:1:{s:12:\"query_string\";s:0:\"\";}'),(38,'four_oh_four','404 Error',3,'2015-06-29 12:18:52','2015-06-29 02:18:52','203.214.69.156','',0,'/katemorgan/not_found','http://dev.xmarketing.com.au/katemorgan/shop/','a:1:{s:12:\"query_string\";s:0:\"\";}'),(39,'four_oh_four','404 Error',3,'2015-07-01 11:09:22','2015-07-01 01:09:22','203.214.69.156','',0,'/katemorgan/program/%3C','http://dev.xmarketing.com.au/katemorgan/program/','a:1:{s:12:\"query_string\";s:31:\"php%20echo%20get_home_url();%20\";}'),(40,'four_oh_four','404 Error',3,'2015-07-08 11:35:04','2015-07-08 01:35:04','203.214.69.156','',0,'/katemorgan/product/','','a:1:{s:12:\"query_string\";s:0:\"\";}'),(41,'four_oh_four','404 Error',3,'2015-07-08 18:20:20','2015-07-08 08:20:20','27.32.150.109','',0,'/katemorgan/x,','','a:1:{s:12:\"query_string\";s:0:\"\";}'),(42,'brute_force','Invalid Login Attempt',5,'2015-07-09 17:40:03','2015-07-09 07:40:03','120.21.38.138','Xianyangwong',4,'','','a:0:{}'),(43,'brute_force','Invalid Login Attempt',5,'2015-07-10 14:07:05','2015-07-10 04:07:05','203.214.69.156','x',0,'','','a:0:{}');
/*!40000 ALTER TABLE `km_itsec_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

