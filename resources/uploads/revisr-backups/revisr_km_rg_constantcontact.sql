
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
DROP TABLE IF EXISTS `km_rg_constantcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `km_rg_constantcontact` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `meta` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `km_rg_constantcontact` WRITE;
/*!40000 ALTER TABLE `km_rg_constantcontact` DISABLE KEYS */;
INSERT INTO `km_rg_constantcontact` VALUES (1,9,1,'a:7:{s:15:\"contact_list_id\";s:79:\"http://api.constantcontact.com/ws/customers/progers%40katemorgan.com.au/lists/4\";s:17:\"contact_list_name\";s:22:\"Australia Mailing List\";s:9:\"field_map\";a:3:{s:13:\"email_address\";s:1:\"3\";s:10:\"first_name\";s:1:\"1\";s:9:\"last_name\";s:1:\"2\";}s:13:\"optin_enabled\";b:0;s:14:\"optin_field_id\";s:0:\"\";s:14:\"optin_operator\";s:0:\"\";s:11:\"optin_value\";s:0:\"\";}'),(2,6,1,'a:7:{s:15:\"contact_list_id\";s:79:\"http://api.constantcontact.com/ws/customers/progers%40katemorgan.com.au/lists/4\";s:17:\"contact_list_name\";s:22:\"Australia Mailing List\";s:9:\"field_map\";a:1:{s:13:\"email_address\";s:1:\"1\";}s:13:\"optin_enabled\";b:0;s:14:\"optin_field_id\";s:0:\"\";s:14:\"optin_operator\";s:0:\"\";s:11:\"optin_value\";s:0:\"\";}');
/*!40000 ALTER TABLE `km_rg_constantcontact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

