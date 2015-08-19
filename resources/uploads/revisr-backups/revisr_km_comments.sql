
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
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `km_comments` WRITE;
/*!40000 ALTER TABLE `km_comments` DISABLE KEYS */;
INSERT INTO `km_comments` VALUES (23,977,'WooCommerce','woocommerce@174.121.78.227','','','2015-08-14 14:29:53','2015-08-14 04:29:53','Order status changed from Pending Payment to Processing.',0,'1','WooCommerce','order_note',0,0),(20,969,'WooCommerce','woocommerce@174.121.78.227','','','2015-08-14 11:27:50','2015-08-14 01:27:50','Not a valid eWAY Customer Id Order status changed from Pending Payment to Failed.',0,'1','WooCommerce','order_note',0,0),(21,969,'WooCommerce','woocommerce@174.121.78.227','','','2015-08-14 11:31:32','2015-08-14 01:31:32','Order status changed from Pending Payment to Processing.',0,'1','WooCommerce','order_note',0,0),(22,969,'WooCommerce','woocommerce@174.121.78.227','','','2015-08-14 11:32:21','2015-08-14 01:32:21','Order status changed from Processing to Completed.',0,'1','WooCommerce','order_note',0,0),(18,969,'WooCommerce','woocommerce@174.121.78.227','','','2015-08-14 11:25:02','2015-08-14 01:25:02','Not a valid eWAY Customer Id Order status changed from Pending Payment to Failed.',0,'1','WooCommerce','order_note',0,0),(19,969,'WooCommerce','woocommerce@174.121.78.227','','','2015-08-14 11:26:01','2015-08-14 01:26:01','58,Function Not Permitted to Terminal Order status changed from Pending Payment to Failed.',0,'1','WooCommerce','order_note',0,0),(15,850,'xmarketing','yang@xmarketing.com.au','','','2015-08-10 09:41:28','2015-08-09 23:41:28','Order status changed from Pending Payment to Processing.',0,'1','WooCommerce','order_note',0,0),(16,850,'xmarketing','yang@xmarketing.com.au','','','2015-08-10 09:41:30','2015-08-09 23:41:30','Order item stock reduced successfully.',0,'1','WooCommerce','order_note',0,0),(17,850,'xmarketing','yang@xmarketing.com.au','','','2015-08-10 10:29:38','2015-08-10 00:29:38','Order status changed from Processing to Completed.',0,'1','WooCommerce','order_note',0,0),(12,345,'xmarketing','yang@xmarketing.com.au','','','2015-07-10 14:46:34','2015-07-10 04:46:34','Order status changed from Pending Payment to Processing.',0,'1','WooCommerce','order_note',0,0),(13,345,'xmarketing','yang@xmarketing.com.au','','','2015-07-10 14:46:36','2015-07-10 04:46:36','Order item stock reduced successfully.',0,'1','WooCommerce','order_note',0,0),(14,345,'xmarketing','yang@xmarketing.com.au','','','2015-07-10 14:47:36','2015-07-10 04:47:36','Order status changed from Processing to Completed.',0,'1','WooCommerce','order_note',0,0),(24,977,'WooCommerce','woocommerce@174.121.78.227','','','2015-08-17 16:13:13','2015-08-17 06:13:13','Order status changed from Processing to Completed.',0,'1','WooCommerce','order_note',0,0),(25,984,'WooCommerce','woocommerce@174.121.78.227','','','2015-08-18 10:02:36','2015-08-18 00:02:36','IPN payment completed',0,'1','WooCommerce','order_note',0,0),(26,984,'WooCommerce','woocommerce@174.121.78.227','','','2015-08-18 10:02:36','2015-08-18 00:02:36','Order status changed from Pending Payment to Processing.',0,'1','WooCommerce','order_note',0,0),(27,984,'WooCommerce','woocommerce@174.121.78.227','','','2015-08-18 10:57:36','2015-08-18 00:57:36','Refunded 0.01 - Refund ID: 889266537M748794B',0,'1','WooCommerce','order_note',0,0),(28,984,'WooCommerce','woocommerce@174.121.78.227','','','2015-08-18 10:57:44','2015-08-18 00:57:44','Payment refunded via IPN. Order status changed from Processing to Refunded.',0,'1','WooCommerce','order_note',0,0),(29,988,'WooCommerce','woocommerce@174.121.78.227','','','2015-08-18 13:24:37','2015-08-18 03:24:37','Error: Card type not supported by this merchant. You have not been billed for this transaction. Order status changed from Pending Payment to Failed.',0,'1','WooCommerce','order_note',0,0),(30,988,'WooCommerce','woocommerce@174.121.78.227','','','2015-08-18 13:26:26','2015-08-18 03:26:26','Order status changed from Pending Payment to Processing.',0,'1','WooCommerce','order_note',0,0),(31,988,'xmarketing','yang@xmarketing.com.au','','','2015-08-18 13:30:25','2015-08-18 03:30:25','Dear Peter,\n\nWe have receive your payment on eWay (Testing message from Yang)',0,'1','WooCommerce','order_note',0,0),(32,989,'WooCommerce','woocommerce@174.121.78.227','','','2015-08-18 13:50:35','2015-08-18 03:50:35','Order cancelled by customer. Order status changed from Pending Payment to Cancelled.',0,'1','WooCommerce','order_note',0,0),(33,991,'WooCommerce','woocommerce@174.121.78.227','','','2015-08-18 15:35:12','2015-08-18 05:35:12','IPN payment completed',0,'1','WooCommerce','order_note',0,0),(34,991,'WooCommerce','woocommerce@174.121.78.227','','','2015-08-18 15:35:12','2015-08-18 05:35:12','Order status changed from Pending Payment to Processing.',0,'1','WooCommerce','order_note',0,0),(35,988,'WooCommerce','woocommerce@174.121.78.227','','','2015-08-18 15:56:37','2015-08-18 05:56:37','Order status changed from Processing to Completed.',0,'1','WooCommerce','order_note',0,0),(36,991,'WooCommerce','woocommerce@174.121.78.227','','','2015-08-18 15:56:44','2015-08-18 05:56:44','Order status changed from Processing to Completed.',0,'1','WooCommerce','order_note',0,0),(37,991,'WooCommerce','woocommerce@174.121.78.227','','','2015-08-18 16:05:44','2015-08-18 06:05:44','Refunded 0.01 - Refund ID: 1KL95650LG8682511',0,'1','WooCommerce','order_note',0,0),(38,991,'WooCommerce','woocommerce@174.121.78.227','','','2015-08-18 16:05:49','2015-08-18 06:05:49','Payment refunded via IPN. Order status changed from Completed to Refunded.',0,'1','WooCommerce','order_note',0,0);
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

