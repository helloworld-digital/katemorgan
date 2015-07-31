
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
DROP TABLE IF EXISTS `km_test_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `km_test_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `km_test_usermeta` WRITE;
/*!40000 ALTER TABLE `km_test_usermeta` DISABLE KEYS */;
INSERT INTO `km_test_usermeta` VALUES (1,1,'nickname','xmarketing'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','true'),(10,1,'km_test_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(11,1,'km_test_user_level','10'),(12,1,'dismissed_wp_pointers','wp360_locks,wp390_widgets,aioseop_menu_220,wp410_dfw'),(13,1,'show_welcome_panel','0'),(14,1,'session_tokens','a:3:{s:64:\"a191e0a00880e9fd5b3f99abb00d2138c2a381d86eb4db44574f6f766edd86bc\";a:4:{s:10:\"expiration\";i:1430110123;s:2:\"ip\";s:14:\"203.214.69.156\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36\";s:5:\"login\";i:1428900523;}s:64:\"926182799fc95f885debd494bfef80fb4c48c3603ca84f6af64124e522e47724\";a:4:{s:10:\"expiration\";i:1429919195;s:2:\"ip\";s:14:\"203.214.69.156\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36\";s:5:\"login\";i:1429746395;}s:64:\"b2017a28876d03b810b38985ec43d2f5bf966a0d359908274daacf633666db91\";a:4:{s:10:\"expiration\";i:1429938343;s:2:\"ip\";s:14:\"203.214.69.156\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36\";s:5:\"login\";i:1429765543;}}'),(15,1,'km_test_dashboard_quick_press_last_post_id','3'),(16,1,'_woocommerce_persistent_cart','a:1:{s:4:\"cart\";a:0:{}}'),(17,1,'km_test_user-settings','libraryContent=browse'),(18,1,'km_test_user-settings-time','1429496092'),(19,1,'meta-box-order_product','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:84:\"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:67:\"woocommerce-product-data,postcustom,slugdiv,postexcerpt,commentsdiv\";s:8:\"advanced\";s:5:\"aiosp\";}'),(20,1,'screen_layout_product','2'),(21,1,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),(22,1,'metaboxhidden_nav-menus','a:7:{i:0;s:30:\"woocommerce_endpoints_nav_link\";i:1;s:8:\"add-post\";i:2;s:11:\"add-product\";i:3;s:18:\"add-revisr_commits\";i:4;s:12:\"add-post_tag\";i:5;s:15:\"add-product_cat\";i:6;s:15:\"add-product_tag\";}');
/*!40000 ALTER TABLE `km_test_usermeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

