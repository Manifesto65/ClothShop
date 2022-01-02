-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(19) DEFAULT NULL,
  `name` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_contenttype','Can add content type'),(14,4,'change_contenttype','Can change content type'),(15,4,'delete_contenttype','Can delete content type'),(16,4,'view_contenttype','Can view content type'),(17,5,'add_session','Can add session'),(18,5,'change_session','Can change session'),(19,5,'delete_session','Can delete session'),(20,5,'view_session','Can view session'),(21,6,'add_user','Can add user'),(22,6,'change_user','Can change user'),(23,6,'delete_user','Can delete user'),(24,6,'view_user','Can view user'),(25,7,'add_userprofile','Can add user profile'),(26,7,'change_userprofile','Can change user profile'),(27,7,'delete_userprofile','Can delete user profile'),(28,7,'view_userprofile','Can view user profile'),(29,8,'add_category','Can add category'),(30,8,'change_category','Can change category'),(31,8,'delete_category','Can delete category'),(32,8,'view_category','Can view category'),(33,9,'add_product','Can add product'),(34,9,'change_product','Can change product'),(35,9,'delete_product','Can delete product'),(36,9,'view_product','Can view product'),(37,10,'add_productimage','Can add product image'),(38,10,'change_productimage','Can change product image'),(39,10,'delete_productimage','Can delete product image'),(40,10,'view_productimage','Can view product image');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` tinyint(4) DEFAULT NULL,
  `action_time` varchar(10) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `object_repr` varchar(26) DEFAULT NULL,
  `change_message` text,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-07-02',1,'T-shirt','[{\"added\": {}}]',8,1,1),(2,'2021-07-03',1,'T-shirt','[{\"added\": {\"name\": \"product\", \"object\": \"Red Printed T-Shirt\"}}]',8,1,2),(3,'2021-07-03',1,'T-shirt','[{\"added\": {\"name\": \"product\", \"object\": \"Blue T-shirt\"}}, {\"added\": {\"name\": \"product\", \"object\": \"Black Puma T-Shirt\"}}, {\"added\": {\"name\": \"product\", \"object\": \"SAYOLA Water Shoes Mens Quick Dry Sports\"}}]',8,1,2),(4,'2021-07-03',4,'SAYOLA Water Shoe','[{\"changed\": {\"fields\": [\"title\"]}}]',9,1,2),(5,'2021-07-03',1,'T-shirt','[{\"added\": {\"name\": \"product\", \"object\": \"Black Hoodies\"}}]',8,1,2),(6,'2021-07-05',2,'Sari','[{\"added\": {}}, {\"added\": {\"name\": \"product\", \"object\": \"Yellow Casual Printed T-Shirt\"}}]',8,1,1),(7,'2021-07-05',2,'Sari','',8,1,3),(8,'2021-07-05',1,'Boys','[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1,2),(9,'2021-07-05',3,'Girls','[{\"added\": {}}, {\"added\": {\"name\": \"product\", \"object\": \"Sweatshirt T-shirt\"}}]',8,1,1),(10,'2021-07-05',3,'Girls','[{\"added\": {\"name\": \"product\", \"object\": \"Black Full Sleeve Plane Light Weight Sweatshirt\"}}]',8,1,2),(11,'2021-07-05',3,'Girls','[{\"added\": {\"name\": \"product\", \"object\": \"PIAZZAITALIA Var 2 Long Fantasy Dress\"}}]',8,1,2),(12,'2021-07-05',3,'Girls','[{\"added\": {\"name\": \"product\", \"object\": \"J.Fisher Windcheater\"}}]',8,1,2),(13,'2021-07-05',3,'Girls','[{\"added\": {\"name\": \"product\", \"object\": \"Combo Of Two Pcs Light Weight Sweatshirt\"}}]',8,1,2),(14,'2021-07-05',3,'Girls','[{\"deleted\": {\"name\": \"product\", \"object\": \"Combo Of Two Pcs Light Weight Sweatshirt\"}}]',8,1,2),(15,'2021-07-06',3,'Girls','[{\"changed\": {\"name\": \"product\", \"object\": \"Full Sleeve Sweatshirt\", \"fields\": [\"Title\"]}}, {\"changed\": {\"name\": \"product\", \"object\": \"Long Fantasy Dress\", \"fields\": [\"Title\"]}}, {\"changed\": {\"name\": \"product\", \"object\": \"Windcheater\", \"fields\": [\"Title\"]}}]',8,1,2),(16,'2021-07-06',3,'Girls','[{\"changed\": {\"name\": \"product\", \"object\": \"Sleeve Sweatshirt\", \"fields\": [\"Title\"]}}]',8,1,2),(17,'2021-07-06',3,'Girls','[{\"added\": {\"name\": \"product\", \"object\": \"Baby Frock\"}}]',8,1,2),(18,'2021-07-06',12,'Baby Frock','[{\"added\": {\"name\": \"product image\", \"object\": \"Baby Frock\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Baby Frock\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Baby Frock\"}}]',9,1,2),(19,'2021-07-06',13,'Boys 2 Piece Suit - Yellow','[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"Boys 2 Piece Suit - Yellow\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Boys 2 Piece Suit - Yellow\"}}]',9,1,1),(20,'2021-07-06',14,'Girls Mermaid Tutu Dress','[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"Girls Mermaid Tutu Dress\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Girls Mermaid Tutu Dress\"}}]',9,1,1),(21,'2021-07-06',15,'MEN LINEN SET','[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"MEN LINEN SET\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"MEN LINEN SET\"}}]',9,1,1),(22,'2021-07-06',4,'Unisex','[{\"added\": {}}]',8,1,1),(23,'2021-07-06',4,'Unisex','[{\"added\": {\"name\": \"product\", \"object\": \"Unisex Fox Fur Coat\"}}]',8,1,2),(24,'2021-07-06',17,'Unisex Fox Fur Coat','[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"Unisex Fox Fur Coat\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Unisex Fox Fur Coat\"}}]',9,1,1),(25,'2021-07-06',18,'Boho style wedding dress','[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"Boho style wedding dress\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Boho style wedding dress\"}}]',9,1,1),(26,'2021-07-06',19,'100% Hemp Cargo Shorts','[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"100% Hemp Cargo Shorts\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"100% Hemp Cargo Shorts\"}}]',9,1,1),(27,'2021-07-06',4,'Unisex','[{\"deleted\": {\"name\": \"product\", \"object\": \"Unisex Fox Fur Coat\"}}]',8,1,2),(28,'2021-07-06',16,'Unisex Fox Fur Coat','[{\"added\": {\"name\": \"product image\", \"object\": \"Unisex Fox Fur Coat\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Unisex Fox Fur Coat\"}}]',9,1,2),(29,'2021-07-06',15,'MEN LINEN SET','[]',9,1,2),(30,'2021-07-06',1,'Boys','[{\"deleted\": {\"name\": \"product\", \"object\": \"Red Printed T-Shirt\"}}, {\"deleted\": {\"name\": \"product\", \"object\": \"Blue T-shirt\"}}, {\"deleted\": {\"name\": \"product\", \"object\": \"Black Puma T-Shirt\"}}, {\"deleted\": {\"name\": \"product\", \"object\": \"SAYOLA Water Shoe\"}}]',8,1,2),(31,'2021-07-06',1,'Boys','[{\"changed\": {\"name\": \"product\", \"object\": \"MEN LINEN SET\", \"fields\": [\"Image\"]}}]',8,1,2),(32,'2021-07-06',15,'MEN LINEN SET','[{\"changed\": {\"name\": \"product image\", \"object\": \"MEN LINEN SET\", \"fields\": [\"Images\"]}}]',9,1,2),(33,'2021-07-06',1,'Boys','[{\"changed\": {\"name\": \"product\", \"object\": \"Boys 2 Piece Suit\", \"fields\": [\"Title\"]}}]',8,1,2),(34,'2021-07-06',3,'Girls','[{\"changed\": {\"name\": \"product\", \"object\": \"Girls Mermaid Dress\", \"fields\": [\"Title\"]}}, {\"changed\": {\"name\": \"product\", \"object\": \"Boho wedding dress\", \"fields\": [\"Title\"]}}]',8,1,2),(35,'2021-07-06',4,'Unisex','[{\"changed\": {\"name\": \"product\", \"object\": \"Unisex Stylish Fox Fur Coat\", \"fields\": [\"Title\"]}}]',8,1,2),(36,'2021-07-06',3,'Girls','[{\"deleted\": {\"name\": \"product\", \"object\": \"Sweatshirt T-shirt\"}}, {\"deleted\": {\"name\": \"product\", \"object\": \"Sleeve Sweatshirt\"}}, {\"deleted\": {\"name\": \"product\", \"object\": \"Long Fantasy Dress\"}}, {\"deleted\": {\"name\": \"product\", \"object\": \"Windcheater\"}}]',8,1,2),(37,'2021-07-06',3,'Girls','[{\"added\": {\"name\": \"product\", \"object\": \"Muslin Romper Outfit\"}}, {\"added\": {\"name\": \"product\", \"object\": \"long-sleeved pocket coat\"}}, {\"added\": {\"name\": \"product\", \"object\": \"Aesthetic Sweatshirt\"}}, {\"added\": {\"name\": \"product\", \"object\": \"Partywear saree\"}}]',8,1,2),(38,'2021-07-06',3,'Girls','[{\"changed\": {\"name\": \"product\", \"object\": \"Banarasi Partywear saree\", \"fields\": [\"Title\"]}}]',8,1,2),(39,'2021-07-06',23,'Banarasi Partywear saree','[{\"added\": {\"name\": \"product image\", \"object\": \"Banarasi Partywear saree\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Banarasi Partywear saree\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Banarasi Partywear saree\"}}]',9,1,2),(40,'2021-07-06',22,'Aesthetic Sweatshirt','[{\"added\": {\"name\": \"product image\", \"object\": \"Aesthetic Sweatshirt\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Aesthetic Sweatshirt\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Aesthetic Sweatshirt\"}}]',9,1,2),(41,'2021-07-06',21,'long-sleeved pocket coat','[{\"added\": {\"name\": \"product image\", \"object\": \"long-sleeved pocket coat\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"long-sleeved pocket coat\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"long-sleeved pocket coat\"}}]',9,1,2),(42,'2021-07-06',20,'Muslin Romper Outfit','[{\"added\": {\"name\": \"product image\", \"object\": \"Muslin Romper Outfit\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Muslin Romper Outfit\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Muslin Romper Outfit\"}}]',9,1,2),(43,'2021-07-07',2,'test1','[{\"added\": {}}]',6,1,1),(44,'2021-07-07',2,'test1','[]',6,1,2),(45,'2021-07-08',1,'denzong','[{\"changed\": {\"fields\": [\"avatar\"]}}]',6,1,2),(46,'2021-07-08',4,'Haddu','[{\"added\": {}}]',6,1,1),(47,'2021-07-08',1,'denzong','[{\"changed\": {\"fields\": [\"avatar\"]}}]',6,1,2),(48,'2021-07-08',1,'denzong','[{\"changed\": {\"fields\": [\"avatar\"]}}]',6,1,2),(49,'2021-07-08',1,'denzong','[{\"changed\": {\"fields\": [\"avatar\"]}}]',6,1,2),(50,'2021-07-08',1,'denzong','[{\"changed\": {\"fields\": [\"avatar\"]}}]',6,1,2),(51,'2021-07-08',6,'manta','[]',6,1,2),(52,'2021-07-08',6,'manta','[{\"changed\": {\"fields\": [\"avatar\"]}}]',6,1,2),(53,'2021-07-08',6,'manta','[{\"changed\": {\"fields\": [\"avatar\"]}}]',6,1,2),(54,'2021-07-08',5,'Sita','[{\"changed\": {\"fields\": [\"avatar\"]}}]',6,1,2),(55,'2021-07-09',23,'Banarasi Partywear saree','[{\"deleted\": {\"name\": \"product image\", \"object\": \"Banarasi Partywear saree\"}}]',9,1,2),(56,'2021-07-09',22,'Aesthetic Sweatshirt','[{\"deleted\": {\"name\": \"product image\", \"object\": \"Aesthetic Sweatshirt\"}}]',9,1,2),(57,'2021-07-09',21,'long-sleeved pocket coat','[{\"deleted\": {\"name\": \"product image\", \"object\": \"long-sleeved pocket coat\"}}]',9,1,2),(58,'2021-07-09',20,'Muslin Romper Outfit','[{\"deleted\": {\"name\": \"product image\", \"object\": \"Muslin Romper Outfit\"}}]',9,1,2),(59,'2021-07-09',19,'100% Hemp Cargo Shorts','[]',9,1,2),(60,'2021-07-09',12,'Baby Frock','[{\"deleted\": {\"name\": \"product image\", \"object\": \"Baby Frock\"}}]',9,1,2),(61,'2021-07-09',12,'Baby Frock','[{\"added\": {\"name\": \"product image\", \"object\": \"Baby Frock\"}}]',9,1,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(8,'store','category'),(9,'store','product'),(10,'store','productimage'),(6,'store','user'),(7,'store','userprofile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-07-02'),(2,'contenttypes','0002_remove_content_type_name','2021-07-02'),(3,'auth','0001_initial','2021-07-02'),(4,'auth','0002_alter_permission_name_max_length','2021-07-02'),(5,'auth','0003_alter_user_email_max_length','2021-07-02'),(6,'auth','0004_alter_user_username_opts','2021-07-02'),(7,'auth','0005_alter_user_last_login_null','2021-07-02'),(8,'auth','0006_require_contenttypes_0002','2021-07-02'),(9,'auth','0007_alter_validators_add_error_messages','2021-07-02'),(10,'auth','0008_alter_user_username_max_length','2021-07-02'),(11,'auth','0009_alter_user_last_name_max_length','2021-07-02'),(12,'auth','0010_alter_group_name_max_length','2021-07-02'),(13,'auth','0011_update_proxy_permissions','2021-07-02'),(14,'store','0001_initial','2021-07-02'),(15,'admin','0001_initial','2021-07-02'),(16,'admin','0002_logentry_remove_auto_add','2021-07-02'),(17,'admin','0003_logentry_add_action_flag_choices','2021-07-02'),(18,'sessions','0001_initial','2021-07-02'),(19,'store','0002_category_product_userprofile','2021-07-02'),(20,'store','0003_auto_20210703_1834','2021-07-03'),(21,'store','0004_auto_20210706_0826','2021-07-06'),(22,'auth','0012_alter_user_first_name_max_length','2021-07-06'),(23,'store','0005_alter_user_first_name','2021-07-06'),(24,'store','0006_auto_20210707_1228','2021-07-07'),(25,'store','0007_auto_20210708_1325','2021-07-08'),(26,'store','0008_auto_20210708_1327','2021-07-08'),(27,'store','0009_auto_20210708_1434','2021-07-08'),(28,'store','0010_user_address','2021-07-08');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` varchar(121) DEFAULT NULL,
  `expire_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('qzbg6q3v5rxubq8dpxhmofxpdu1s73o8','eyJjYXJ0Ijp7fX0:1mYJw7:XtGvZbRKU01hdEkjKjvOSIuDCtV0y4P38FHUSZxx7PI','2021-10-21'),('kmsrq5enp56r0bp820kfbw48fpoaucsc','eyJjYXJ0Ijp7IjIzIjoiMyJ9fQ:1mYQ1m:4X_o064O37QCtDf-59w9LhTmDvxdJ6sHF5yrDZ9qGz8','2021-10-21'),('cupgeyhgb86lop54kdct0skr8e8xbn4i','eyJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6ImRlbnpvbmciLCJjYXJ0Ijp7IjE0IjoiMiJ9fQ:1mYpLC:IkeQOJQ5twfVx_YZtCCphgeHyWEKi13dAdCdi0GmqXw','2021-10-22'),('qw4byeyghht1g5fj375ua8s83chppyg9','e30:1mgLku:9JkQsasher03aOTdT86O2LZdR0OL43U0G3ztOQoBxTo','2021-11-12'),('6fxbe71448fgtg7d1iprfb3gyn2kt2a2','eyJjYXJ0Ijp7IjE0IjoiMyJ9fQ:1mp8Iv:YQPTZGm3fyzAYspBYp94RLCM4VGRZI9ujBlAoRQpWBU','2021-12-06'),('gyzpxomfullu4aoba0g7tw2qeb0pubif','eyJjYXJ0Ijp7fX0:1mr9wK:JnDunuTHmjASpa6-cLhFKqqryeWFebv0_RIG9wqwgew','2021-12-12');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(19) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',28),('django_content_type',10),('auth_permission',40),('auth_group',0),('django_admin_log',61),('store_category',4),('store_product',23),('store_productimage',30),('store_userprofile',9),('store_user',10);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_category`
--

DROP TABLE IF EXISTS `store_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_category` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_category`
--

LOCK TABLES `store_category` WRITE;
/*!40000 ALTER TABLE `store_category` DISABLE KEYS */;
INSERT INTO `store_category` VALUES (1,'Boys'),(3,'Girls'),(4,'Unisex');
/*!40000 ALTER TABLE `store_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_product`
--

DROP TABLE IF EXISTS `store_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_product` (
  `id` tinyint(4) DEFAULT NULL,
  `title` varchar(27) DEFAULT NULL,
  `price` decimal(5,1) DEFAULT NULL,
  `discount_price` decimal(4,1) DEFAULT NULL,
  `description` text,
  `created` varchar(10) DEFAULT NULL,
  `category_id` tinyint(4) DEFAULT NULL,
  `is_exclusive` tinyint(4) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `is_latest` tinyint(4) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_product`
--

LOCK TABLES `store_product` WRITE;
/*!40000 ALTER TABLE `store_product` DISABLE KEYS */;
INSERT INTO `store_product` VALUES (5,'Black Hoodies',4000.0,50.0,'This pullover hoodie\'s high stitch density fabric is the perfect canvas for screen printing and other customization methods. A great option for anyone that needs a warm and comfortable custom hoodie.','2021-07-03',1,1,0,0,'uploads/products/exclusive.jpg'),(12,'Baby Frock',1400.0,100.0,'Material 65% Polyester, 35%cotton\r\n\r\nSize: 3 - 10 years\r\n\r\nExactly as the picture\r\n\r\nAvailable in different colours.','2021-07-06',3,0,0,1,'uploads/products/purple_Baby_frock.jpg'),(13,'Boys 2 Piece Suit',1500.0,100.0,'Kurta (Shirt) : Yellow Chambray Kurta with Buttons.\r\nShalwar (Trouser) : White Cotton Shalwar\r\nCountry of Origin : Made in PAKISTAN','2021-07-06',1,0,0,1,'uploads/products/yellow_boy_dress.jpg'),(14,'Girls Mermaid Dress',1800.0,150.0,'Your spring princess will never take this off!\r\nFeaturing charming details like a sparkly halter top, flowy tulle skirt, it’s the perfect dress for your little sunshine.','2021-07-06',3,0,0,1,'uploads/products/Girls_Mermaid_Tutu_Dress.jpg'),(15,'MEN LINEN SET',3000.0,200.0,'MEN NAVY GREY LINEN SET: band collar shirt with roll-up sleeves, tapered linen pants\r\nThe set is good for any occasion - beach party, casual meeting, vacation, wedding - you will always look appropriate! For more relaxed casual look just roll-up the sleeves.','2021-07-06',1,0,0,1,'uploads/products/MEN_LINEN_SET.jpg'),(16,'Unisex Stylish Fox Fur Coat',4000.0,300.0,'This gorgeous real red fox fur jacket is made of whole pelts.\r\nFluffy, stylish, beautiful and very warm.\r\nMade of whole pelts, collar, pockets, hooks','2021-07-06',4,0,0,1,'uploads/products/Unisex_Fox_Fur_Coat.jpg'),(18,'Boho wedding dress',5000.0,500.0,'Wedding gown from new 2021 Rafaello Collection. Sparkling corset with a sewn in fitting bra. Detachable boho style sleeves will allow the bride to surprise her guests by changing her outfit in just a moment!','2021-07-06',3,0,0,1,'uploads/products/Boho_style_wedding_dress.jpg'),(19,'100% Hemp Cargo Shorts',1200.0,50.0,'DESIGNER\'S NOTE\r\nThe legend says that people who dressed with these shorts have then released an amazing vibe of confidence and coolness. So far, nothing has proven that wrong. The Cargo Hemp Shorts tick the “ABC box”: Awesome, Bold, Chicago.','2021-07-06',1,0,0,1,'uploads/products/100_Hemp_Cargo_Shorts.jpg'),(20,'Muslin Romper Outfit',1500.0,150.0,'Cotton muslin romper & match headband set. Two buttons in the back for easy size adjustments, grows with the child to allow the romper to be worn longer.','2021-07-06',3,0,1,0,'uploads/products/29a_U8KnU1O.jpg'),(21,'long-sleeved pocket coat',2000.0,200.0,'Features:\r\nFashion design,100% Brand New,high quality!\r\nSeason:Fall\r\nGender: Women','2021-07-06',3,0,1,0,'uploads/products/30a_htSrGj1.jpg'),(22,'Aesthetic Sweatshirt',2000.0,200.0,'This smiley face sweatshirt is not only cute but also very comfy and a great pullover when you\'re in a funk and you need a reminder to stay positive.','2021-07-06',3,0,1,0,'uploads/products/32a_PozqAkT.jpg'),(23,'Banarasi Partywear saree',3500.0,300.0,'Handmade\r\nMaterials: Pure Silk, Kanjivaram Silk, Banarasi Silk, Handloom Silk, SouthIndian, Indian Silk Saree\r\nSPECIAL FOR FUNCTION AND PARTY WEAR AND ALSO RUNNING USED EDITION SAREEE\r\nSIX COLOR SPECIAL EDITION SAREE\r\nALL OVER GOLD ZARI weaving design WITH ROYAL GOLD WEAVING\r\nWith GOLD WEAVING border weaved with zari','2021-07-06',3,0,1,0,'uploads/products/33a_XiTdkFy.jpg');
/*!40000 ALTER TABLE `store_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_productimage`
--

DROP TABLE IF EXISTS `store_productimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_productimage` (
  `id` tinyint(4) DEFAULT NULL,
  `images` varchar(37) DEFAULT NULL,
  `product_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_productimage`
--

LOCK TABLES `store_productimage` WRITE;
/*!40000 ALTER TABLE `store_productimage` DISABLE KEYS */;
INSERT INTO `store_productimage` VALUES (1,'uploads/products/purple1.jpg',12),(2,'uploads/products/purple2.jpg',12),(4,'uploads/products/ybd1.jpg',13),(5,'uploads/products/ybd2.jpg',13),(6,'uploads/products/Gmtd1.jpg',14),(7,'uploads/products/Gmtd2.jpg',14),(8,'uploads/products/Mls1.jpg',15),(9,'uploads/products/Mffc2.jpg',15),(12,'uploads/products/Bswd1.jpg',18),(13,'uploads/products/Bswd2.jpg',18),(14,'uploads/products/Hcs1.jpg',19),(15,'uploads/products/Hcs2.jpg',19),(16,'uploads/products/Uffc1_i6zQH38.jpg',16),(17,'uploads/products/Uffc2_R5L18nZ.jpg',16),(18,'uploads/products/33a1_SKVzmHj.jpg',23),(19,'uploads/products/33a2_zmjSLiH.jpg',23),(21,'uploads/products/32a1_ALoTzWy.jpg',22),(22,'uploads/products/32a2_ObNQst0.jpg',22),(24,'uploads/products/30a1_JgwuzUc.jpg',21),(25,'uploads/products/30a2_ddjnvHU.jpg',21),(27,'uploads/products/29a1_aSt86Jl.jpg',20),(28,'uploads/products/29a2_TELb6UM.jpg',20),(30,'uploads/products/purlple3_f0O8C4U.jpg',12);
/*!40000 ALTER TABLE `store_productimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_user`
--

DROP TABLE IF EXISTS `store_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_user` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(78) DEFAULT NULL,
  `last_login` varchar(10) DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(7) DEFAULT NULL,
  `first_name` varchar(6) DEFAULT NULL,
  `last_name` varchar(8) DEFAULT NULL,
  `email` varchar(16) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` varchar(10) DEFAULT NULL,
  `dob` varchar(0) DEFAULT NULL,
  `avatar` varchar(28) DEFAULT NULL,
  `address` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_user`
--

LOCK TABLES `store_user` WRITE;
/*!40000 ALTER TABLE `store_user` DISABLE KEYS */;
INSERT INTO `store_user` VALUES (1,'pbkdf2_sha256$150000$Zocs7u2SCVEX$jfVDZ0tae/OgL3JyVRqcZdVPM3pyfpxl5CnKdC2jeRk=','2021-09-11',1,'denzong','Bibek','Labh','',1,1,'','','uploads/avatar/profile.jpg','Baneshwor'),(2,'1234','',0,'test1','','','',0,1,'','','',''),(3,'pbkdf2_sha256$150000$2HHIxcyjvVcs$VWHG0AY0HM97UJU3ibF5Mx+UHm1qgGhaukTDmo+LAvk=','',0,'hari','','','h@gmail.com',0,1,'2021-07-07','','',''),(4,'12345','',0,'Haddu','','','',0,1,'','','products/avatar/purlple3.jpg',''),(5,'pbkdf2_sha256$150000$A4LpdNsABaKA$T6ee70HQgSwzWl2+65DciFcxn4eohZSSjlOP3TATXzo=','',0,'Sita','','','s@gmail.com',0,1,'','','',''),(6,'pbkdf2_sha256$150000$7zhMw2mhuHQA$22sMEg0D60bcIMlWtzhfWg2jHGA0d0M1Thgc2/fhrZE=','',0,'manta','Manish','Chaudary','man@gmail.com',0,1,'','','uploads/avatar/user-2.png','Shankhamool'),(7,'pbkdf2_sha256$150000$uQ6vuuqWYgBP$wLV/qqy0sUBjh8o2gZWZU+ftDKEAYHor9rZLXlOEqZ0=','',0,'Bimala','','','bimala@gmail.com',0,1,'2021-07-08','','',''),(8,'pbkdf2_sha256$150000$Eu4jCrIeqhRv$3ijbEAejGy3wb2MOsexwT6fBNEGVvKgfjE1gUIBkf+8=','',0,'shirsti','','','sis@gmail.com',0,1,'2021-07-08','','uploads/avatar/user-1.png',''),(9,'pbkdf2_sha256$150000$3YD41Ez60HXC$p/I1UOFGVWrNqwKam/6KBTMr4mZrEpkHW66vQO1ujFo=','',0,'rama','Rama','Adhikari','rama@gmail.com',0,1,'2021-07-08','','uploads/avatar/user-3.png','Baneshwor'),(10,'pbkdf2_sha256$150000$OCEA8bpJaPjM$qlZME16Qb8vy87qp1o9UXOEnOqcQBGUlke5423bcT2I=','',0,'mamta','','','mamta@gmail.com',0,1,'2021-07-08','','','');
/*!40000 ALTER TABLE `store_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_user_groups`
--

DROP TABLE IF EXISTS `store_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_user_groups` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_user_groups`
--

LOCK TABLES `store_user_groups` WRITE;
/*!40000 ALTER TABLE `store_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_user_user_permissions`
--

DROP TABLE IF EXISTS `store_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_user_user_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_user_user_permissions`
--

LOCK TABLES `store_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `store_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_userprofile`
--

DROP TABLE IF EXISTS `store_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_userprofile` (
  `id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_userprofile`
--

LOCK TABLES `store_userprofile` WRITE;
/*!40000 ALTER TABLE `store_userprofile` DISABLE KEYS */;
INSERT INTO `store_userprofile` VALUES (1,2),(2,3),(3,4),(4,5),(5,6),(6,7),(7,8),(8,9),(9,10);
/*!40000 ALTER TABLE `store_userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:20:28
