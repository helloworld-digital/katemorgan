
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
DROP TABLE IF EXISTS `km_rg_userregistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `km_rg_userregistration` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `meta` longtext,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `km_rg_userregistration` WRITE;
/*!40000 ALTER TABLE `km_rg_userregistration` DISABLE KEYS */;
INSERT INTO `km_rg_userregistration` VALUES (1,2,1,'a:17:{s:9:\"feed_type\";s:6:\"create\";s:8:\"username\";s:1:\"2\";s:9:\"firstname\";s:3:\"1.3\";s:8:\"lastname\";s:3:\"1.6\";s:11:\"displayname\";s:8:\"username\";s:5:\"email\";s:1:\"4\";s:8:\"password\";s:1:\"3\";s:4:\"role\";s:8:\"customer\";s:9:\"user_meta\";a:1:{i:0;a:3:{s:9:\"meta_name\";s:0:\"\";s:10:\"meta_value\";s:0:\"\";s:6:\"custom\";b:0;}}s:21:\"reg_condition_enabled\";s:0:\"\";s:22:\"reg_condition_field_id\";s:1:\"2\";s:22:\"reg_condition_operator\";s:2:\"is\";s:19:\"reg_condition_value\";s:0:\"\";s:12:\"notification\";s:1:\"1\";s:15:\"set_post_author\";s:1:\"1\";s:15:\"user_activation\";s:0:\"\";s:20:\"user_activation_type\";b:0;}'),(2,3,1,'a:17:{s:9:\"feed_type\";s:6:\"create\";s:8:\"username\";s:2:\"17\";s:9:\"firstname\";s:3:\"7.3\";s:8:\"lastname\";s:3:\"7.6\";s:11:\"displayname\";s:8:\"username\";s:5:\"email\";s:2:\"13\";s:8:\"password\";s:2:\"18\";s:4:\"role\";s:8:\"customer\";s:9:\"user_meta\";a:17:{i:0;a:3:{s:9:\"meta_name\";s:15:\"billing_country\";s:10:\"meta_value\";s:4:\"15.6\";s:6:\"custom\";b:0;}i:1;a:3:{s:9:\"meta_name\";s:18:\"billing_first_name\";s:10:\"meta_value\";s:3:\"7.3\";s:6:\"custom\";b:0;}i:2;a:3:{s:9:\"meta_name\";s:17:\"billing_last_name\";s:10:\"meta_value\";s:3:\"7.6\";s:6:\"custom\";b:0;}i:3;a:3:{s:9:\"meta_name\";s:17:\"billing_address_1\";s:10:\"meta_value\";s:4:\"15.1\";s:6:\"custom\";b:0;}i:4;a:3:{s:9:\"meta_name\";s:17:\"billing_address_2\";s:10:\"meta_value\";s:4:\"15.2\";s:6:\"custom\";b:0;}i:5;a:3:{s:9:\"meta_name\";s:12:\"billing_city\";s:10:\"meta_value\";s:4:\"15.3\";s:6:\"custom\";b:0;}i:6;a:3:{s:9:\"meta_name\";s:13:\"billing_state\";s:10:\"meta_value\";s:4:\"15.4\";s:6:\"custom\";b:0;}i:7;a:3:{s:9:\"meta_name\";s:16:\"billing_postcode\";s:10:\"meta_value\";s:4:\"15.5\";s:6:\"custom\";b:0;}i:8;a:3:{s:9:\"meta_name\";s:13:\"billing_email\";s:10:\"meta_value\";s:2:\"13\";s:6:\"custom\";b:0;}i:9;a:3:{s:9:\"meta_name\";s:13:\"billing_phone\";s:10:\"meta_value\";s:2:\"11\";s:6:\"custom\";b:0;}i:10;a:3:{s:9:\"meta_name\";s:14:\"initial_height\";s:10:\"meta_value\";s:1:\"2\";s:6:\"custom\";b:1;}i:11;a:3:{s:9:\"meta_name\";s:14:\"initial_weight\";s:10:\"meta_value\";s:1:\"3\";s:6:\"custom\";b:1;}i:12;a:3:{s:9:\"meta_name\";s:13:\"initial_waist\";s:10:\"meta_value\";s:1:\"4\";s:6:\"custom\";b:1;}i:13;a:3:{s:9:\"meta_name\";s:11:\"initial_bmi\";s:10:\"meta_value\";s:1:\"5\";s:6:\"custom\";b:1;}i:14;a:3:{s:9:\"meta_name\";s:3:\"dob\";s:10:\"meta_value\";s:1:\"8\";s:6:\"custom\";b:1;}i:15;a:3:{s:9:\"meta_name\";s:6:\"gender\";s:10:\"meta_value\";s:1:\"9\";s:6:\"custom\";b:1;}i:16;a:3:{s:9:\"meta_name\";s:14:\"billing_mobile\";s:10:\"meta_value\";s:2:\"12\";s:6:\"custom\";b:1;}}s:21:\"reg_condition_enabled\";s:0:\"\";s:22:\"reg_condition_field_id\";s:1:\"9\";s:22:\"reg_condition_operator\";s:2:\"is\";s:19:\"reg_condition_value\";s:0:\"\";s:12:\"notification\";s:1:\"1\";s:15:\"set_post_author\";s:1:\"1\";s:15:\"user_activation\";s:0:\"\";s:20:\"user_activation_type\";b:0;}');
/*!40000 ALTER TABLE `km_rg_userregistration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

