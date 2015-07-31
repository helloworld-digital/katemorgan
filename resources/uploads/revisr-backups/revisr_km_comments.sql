
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
DROP TABLE IF EXISTS `km_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `km_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `km_comments` WRITE;
/*!40000 ALTER TABLE `km_comments` DISABLE KEYS */;
INSERT INTO `km_comments` VALUES (2,63,'xmarketing','yang@xmarketing.com.au','','','2015-05-07 23:15:09','2015-05-07 23:15:09','Order status changed from Pending Payment to Processing.',0,'post-trashed','WooCommerce','order_note',0,0),(3,63,'xmarketing','yang@xmarketing.com.au','','','2015-05-07 23:15:12','2015-05-07 23:15:12','Order item stock reduced successfully.',0,'post-trashed','WooCommerce','order_note',0,0),(4,64,'xmarketing','yang@xmarketing.com.au','','','2015-05-07 23:17:19','2015-05-07 23:17:19','Order status changed from Pending Payment to Processing.',0,'post-trashed','WooCommerce','order_note',0,0),(5,64,'xmarketing','yang@xmarketing.com.au','','','2015-05-07 23:17:21','2015-05-07 23:17:21','Order item stock reduced successfully.',0,'post-trashed','WooCommerce','order_note',0,0),(6,64,'xmarketing','yang@xmarketing.com.au','','','2015-05-07 23:21:19','2015-05-07 23:21:19','Order status changed from Processing to Completed.',0,'post-trashed','WooCommerce','order_note',0,0),(7,63,'xmarketing','yang@xmarketing.com.au','','','2015-05-07 23:21:25','2015-05-07 23:21:25','Order status changed from Processing to Completed.',0,'post-trashed','WooCommerce','order_note',0,0),(8,64,'xmarketing','yang@xmarketing.com.au','','','2015-05-07 23:22:10','2015-05-07 23:22:10','Order status changed from Completed to Refunded.',0,'post-trashed','WooCommerce','order_note',0,0),(9,63,'xmarketing','yang@xmarketing.com.au','','','2015-05-07 23:23:17','2015-05-07 23:23:17','Order status changed from Completed to Refunded.',0,'post-trashed','WooCommerce','order_note',0,0),(10,67,'xmarketing','yang@xmarketing.com.au','','','2015-05-08 01:09:48','2015-05-08 01:09:48','Order status changed from Pending Payment to Processing.',0,'post-trashed','WooCommerce','order_note',0,0),(11,67,'xmarketing','yang@xmarketing.com.au','','','2015-05-08 01:09:52','2015-05-08 01:09:52','Order item stock reduced successfully.',0,'post-trashed','WooCommerce','order_note',0,0),(12,345,'xmarketing','yang@xmarketing.com.au','','','2015-07-10 14:46:34','2015-07-10 04:46:34','Order status changed from Pending Payment to Processing.',0,'1','WooCommerce','order_note',0,0),(13,345,'xmarketing','yang@xmarketing.com.au','','','2015-07-10 14:46:36','2015-07-10 04:46:36','Order item stock reduced successfully.',0,'1','WooCommerce','order_note',0,0),(14,345,'xmarketing','yang@xmarketing.com.au','','','2015-07-10 14:47:36','2015-07-10 04:47:36','Order status changed from Processing to Completed.',0,'1','WooCommerce','order_note',0,0);
/*!40000 ALTER TABLE `km_comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

