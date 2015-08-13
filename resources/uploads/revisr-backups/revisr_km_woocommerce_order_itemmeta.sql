
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
DROP TABLE IF EXISTS `km_woocommerce_order_itemmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `km_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `km_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `km_woocommerce_order_itemmeta` DISABLE KEYS */;
INSERT INTO `km_woocommerce_order_itemmeta` VALUES (1,1,'_qty','1'),(2,1,'_tax_class',''),(3,1,'_product_id','25'),(4,1,'_variation_id','0'),(5,1,'_line_subtotal','2.6'),(6,1,'_line_total','2.6'),(7,1,'_line_subtotal_tax','0'),(8,1,'_line_tax','0'),(9,1,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(10,2,'method_id','free_shipping'),(11,2,'cost','0'),(12,2,'taxes','a:0:{}'),(13,3,'_qty','1'),(14,3,'_tax_class',''),(15,3,'_product_id','38'),(16,3,'_variation_id','0'),(17,3,'_line_subtotal','211.95'),(18,3,'_line_total','211.95'),(19,3,'_line_subtotal_tax','0'),(20,3,'_line_tax','0'),(21,3,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(22,4,'method_id','free_shipping'),(23,4,'cost','0'),(24,4,'taxes','a:0:{}'),(25,5,'_qty','1'),(26,5,'_tax_class',''),(27,5,'_product_id','33'),(28,5,'_variation_id','0'),(29,5,'_line_subtotal','393.9'),(30,5,'_line_total','393.9'),(31,5,'_line_subtotal_tax','0'),(32,5,'_line_tax','0'),(33,5,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(34,6,'method_id','free_shipping'),(35,6,'cost','0'),(36,6,'taxes','a:0:{}'),(37,7,'_qty','1'),(38,7,'_tax_class',''),(39,7,'_product_id','254'),(40,7,'_variation_id','0'),(41,7,'_line_subtotal','2.6'),(42,7,'_line_total','2.6'),(43,7,'_line_subtotal_tax','0'),(44,7,'_line_tax','0'),(45,7,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(46,8,'method_id','free_shipping'),(47,8,'cost','0'),(48,8,'taxes','a:0:{}'),(49,9,'_qty','5'),(50,9,'_tax_class',''),(51,9,'_product_id','229'),(52,9,'_variation_id','0'),(53,9,'_line_subtotal','13'),(54,9,'_line_total','13'),(55,9,'_line_subtotal_tax','0'),(56,9,'_line_tax','0'),(57,9,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(58,10,'_qty','1'),(59,10,'_tax_class',''),(60,10,'_product_id','31'),(61,10,'_variation_id','0'),(62,10,'_line_subtotal','393.9'),(63,10,'_line_total','393.9'),(64,10,'_line_subtotal_tax','0'),(65,10,'_line_tax','0'),(66,10,'_line_tax_data','a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),(67,11,'method_id','free_shipping'),(68,11,'cost','0'),(69,11,'taxes','a:0:{}');
/*!40000 ALTER TABLE `km_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

