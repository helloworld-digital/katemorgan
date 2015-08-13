
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
DROP TABLE IF EXISTS `km_revisr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `km_revisr` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message` text,
  `event` varchar(42) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `km_revisr` WRITE;
/*!40000 ALTER TABLE `km_revisr` DISABLE KEYS */;
INSERT INTO `km_revisr` VALUES (1,'2015-07-31 12:51:24','Successfully created a new repository.','init'),(2,'2015-07-31 12:52:31','Committed <a href=\"http://174.121.78.227/~kmxmarketing/wp-admin/post.php?post=692&action=edit\">#bce84ad</a> to the local repository.','commit'),(3,'2015-07-31 12:52:59','Successfully pushed 1 commit to origin/.','push'),(4,'2015-07-31 14:31:24','Reverted to commit <a href=\"http://174.121.78.227/~kmxmarketing/wp-admin/post.php?post=692&action=edit\">#bce84ad</a>.','revert'),(5,'2015-07-31 14:56:22','Committed <a href=\"http://174.121.78.227/~kmxmarketing/wp-admin/post.php?post=696&action=edit\">#d9986e0</a> to the local repository.','commit'),(6,'2015-07-31 14:56:23','Successfully pushed 1 commit to origin/master.','push'),(7,'2015-08-04 15:06:42','Committed <a href=\"http://174.121.78.227/~kmxmarketing/wp-admin/post.php?post=697&action=edit\">#2b81c96</a> to the local repository.','commit'),(8,'2015-08-04 15:06:59','Successfully pushed 1 commit to origin/master.','push'),(9,'2015-08-05 14:30:54','Committed <a href=\"http://174.121.78.227/wp-admin/post.php?post=722&action=edit\">#d7892e4</a> to the local repository.','commit'),(10,'2015-08-05 14:30:57','Successfully pushed 1 commit to origin/master.','push'),(11,'2015-08-10 11:53:37','Committed <a href=\"http://174.121.78.227/wp-admin/post.php?post=857&action=edit\">#49a8410</a> to the local repository.','commit'),(12,'2015-08-10 11:54:17','Successfully pushed 1 commit to origin/master.','push'),(13,'2015-08-10 13:41:54','Committed <a href=\"http://174.121.78.227/wp-admin/post.php?post=869&action=edit\">#eba4a47</a> to the local repository.','commit'),(14,'2015-08-10 13:41:58','Successfully pushed 1 commit to origin/master.','push'),(15,'2015-08-10 17:10:33','Committed <a href=\"http://174.121.78.227/wp-admin/post.php?post=878&action=edit\">#fb96fa0</a> to the local repository.','commit'),(16,'2015-08-10 17:10:34','Successfully pushed 1 commit to origin/master.','push'),(17,'2015-08-11 15:26:56','Committed <a href=\"http://174.121.78.227/wp-admin/post.php?post=879&action=edit\">#df21b85</a> to the local repository.','commit'),(18,'2015-08-11 15:26:58','Successfully pushed 1 commit to origin/master.','push'),(19,'2015-08-11 15:29:51','Reverted to commit <a href=\"http://174.121.78.227/wp-admin/post.php?post=879&action=edit\">#df21b85</a>.','revert'),(20,'2015-08-11 15:30:56','Error pushing changes to the remote repository.','error'),(21,'2015-08-11 15:31:22','Pulled <a href=\"http://174.121.78.227/wp-admin/post.php?post=882&action=edit\">#df21b85</a> from origin/master.','pull'),(22,'2015-08-11 15:31:55','Successfully pushed 2 commits to origin/master.','push'),(23,'2015-08-12 14:03:19','Committed <a href=\"http://174.121.78.227/wp-admin/post.php?post=884&action=edit\">#cd0e82a</a> to the local repository.','commit'),(24,'2015-08-12 14:03:24','Successfully pushed 1 commit to origin/master.','push'),(25,'2015-08-13 11:07:35','Successfully backed up the database.','backup'),(26,'2015-08-13 11:07:40','Successfully pushed 2 commits to origin/master.','push'),(27,'2015-08-13 11:07:40','Committed <a href=\"http://174.121.78.227/wp-admin/post.php?post=950&action=edit\">#9821798</a> to the local repository.','commit'),(28,'2015-08-13 11:07:41','Successfully pushed 0 commits to origin/master.','push'),(29,'2015-08-13 14:10:08','Successfully backed up the database.','backup'),(30,'2015-08-13 14:10:12','Successfully pushed 2 commits to origin/master.','push'),(31,'2015-08-13 14:10:12','Committed <a href=\"http://174.121.78.227/wp-admin/post.php?post=953&action=edit\">#8d02bcb</a> to the local repository.','commit'),(32,'2015-08-13 14:10:12','Successfully pushed 0 commits to origin/master.','push'),(33,'2015-08-13 14:11:28','Successfully backed up the database.','backup'),(34,'2015-08-13 14:11:29','Successfully pushed 2 commits to origin/master.','push'),(35,'2015-08-13 14:11:29','Committed <a href=\"http://174.121.78.227/wp-admin/post.php?post=954&action=edit\">#e8f4652</a> to the local repository.','commit'),(36,'2015-08-13 14:11:30','Successfully pushed 0 commits to origin/master.','push'),(37,'2015-08-13 16:00:11','Committed <a href=\"http://174.121.78.227/wp-admin/post.php?post=963&action=edit\">#f6f6609</a> to the local repository.','commit'),(38,'2015-08-13 16:00:18','Successfully pushed 1 commit to origin/master.','push');
/*!40000 ALTER TABLE `km_revisr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

